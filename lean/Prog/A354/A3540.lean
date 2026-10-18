import SequenceMachineLib
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
import Seq.B000.C035
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
import Seq.B003.C004
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
import Seq.Opaque.C025

/-!
# A354000: Expansion of e.g.f. exp(x^2/2 * (exp(x) - 1)).

The programs for A354000, there is no canonical definition to state claims against.
-/

/-! ## A354000.P4028572678553538789

`A355650(∑[n+3])`
-/

namespace A354000.P4028572678553538789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355650 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354000.P4028572678553538789

/-! ## A354000.P12666605435967442951

`A368173(n)+A010894(A000217(n))`
-/

namespace A354000.P12666605435967442951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368173 n + A010894 ((A000217 n).toNat + 21)

end

end A354000.P12666605435967442951

/-! ## A354000.P14747195214921700409

`A368173(n)+A100060(A143823(n))`
-/

namespace A354000.P14747195214921700409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368173 n + A100060 (A143823 n).toNat

end

end A354000.P14747195214921700409

/-! ## A354000.P3695887764539408848

`A368173(n)+A271102(A013989(n))`
-/

namespace A354000.P3695887764539408848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368173 n + A271102 (A013989 n).toNat

end

end A354000.P3695887764539408848

/-! ## A354000.P9079919703307522297

`A368173(n)+A000007(A363434(n))`
-/

namespace A354000.P9079919703307522297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368173 n + A000007 (A363434 n).toNat

end

end A354000.P9079919703307522297

/-!
# A354001: Expansion of e.g.f. exp(x^3/6 * (exp(x) - 1)).

The programs for A354001, there is no canonical definition to state claims against.
-/

/-! ## A354001.P13206816232968962285

`A368174(n)+A010052(A259713(n))`
-/

namespace A354001.P13206816232968962285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368174 n + A010052 (A259713 n).toNat

end

end A354001.P13206816232968962285

/-! ## A354001.P14012588869401388015

`A385343(A000217(n))+A368174(n)`
-/

namespace A354001.P14012588869401388015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385343 (A000217 n).toNat + A368174 n

end

end A354001.P14012588869401388015

/-! ## A354001.P7573528372225825987

`A368174(n)+A000007(A230977(n+1))`
-/

namespace A354001.P7573528372225825987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368174 n + A000007 (A230977 (n + 1)).toNat

end

end A354001.P7573528372225825987

/-! ## A354001.P3303524914409997410

`A368174(n)+A353633(A002387(n+1))`
-/

namespace A354001.P3303524914409997410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368174 n + A353633 (A002387 (n + 1)).toNat

end

end A354001.P3303524914409997410

/-! ## A354001.P10024627087919660479

`A368174(n)+A353633(A000032(2*n))`
-/

namespace A354001.P10024627087919660479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368174 n + A353633 (A000032 (2 * n)).toNat

end

end A354001.P10024627087919660479

/-!
# A354003: Inverse Stirling transform of A008578 (1 together with the primes).

The programs for A354003, there is no canonical definition to state claims against.
-/

/-! ## A354003.P3730250430756154483

`A307772(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A354003.P3730250430756154483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307772 n - (n : ℤ) * a (n - 1)

end

end A354003.P3730250430756154483

/-!
# A354005: Lexicographically earliest sequence of distinct positive integers with no finite subset summing to a positive Pell number (A000129).

The programs for A354005, there is no canonical definition to state claims against.
-/

/-! ## A354005.P3143047522815757320

`A265755(2*n)+A070939(A031142(3*n+2))`
-/

namespace A354005.P3143047522815757320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * n) + A070939 (A031142 (3 * n + 2)).toNat

end

end A354005.P3143047522815757320

/-! ## A354005.P7604668343450714636

`A187065(Δ[n²])+A070939(A031142(3*n+2))`
-/

namespace A354005.P7604668343450714636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A070939 (A031142 (3 * n + 2)).toNat

end

end A354005.P7604668343450714636

/-!
# A354006: a(n) is the number of ways to write n as a sum of distinct terms of A354005.

The programs for A354006, there is no canonical definition to state claims against.
-/

/-! ## A354006.P4830548984634685527

`A106316(4^A281459(2*n+1))`
-/

namespace A354006.P4830548984634685527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106316 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A281459 (2 * n + 1) : ℤ))).toNat

end

end A354006.P4830548984634685527

/-! ## A354006.P7279157973670411159

`A001222(13^A281459(2*n+1))`
-/

namespace A354006.P7279157973670411159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A281459 (2 * n + 1) : ℤ))).toNat

end

end A354006.P7279157973670411159

/-! ## A354006.P14520562013405017549

`A281459(2*n+1)^exp(A281462(n+2))`
-/

namespace A354006.P14520562013405017549
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A281459 (2 * n + 1) : ℝ) ^ (Real.exp (A281462 (n + 2) : ℝ))

end

end A354006.P14520562013405017549

/-! ## A354006.P6303405231253549488

`and(A029259(n), A173721(A000051(n)))`
-/

namespace A354006.P6303405231253549488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029259 n) (A173721 (A000051 n).toNat)

end

end A354006.P6303405231253549488

/-! ## A354006.P5604861224175640730

`A009194(A000079(n))*A281459(2*n+1)`
-/

namespace A354006.P5604861224175640730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A000079 n).toNat * A281459 (2 * n + 1)

end

end A354006.P5604861224175640730

/-!
# A354007: Numbers that are not the sum of distinct terms of A354005.

The programs for A354007, there is no canonical definition to state claims against.
-/

/-! ## A354007.P8498407960753723220

`eq[0, A354006(n)]`
-/

namespace A354007.P8498407960753723220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354007.P8498407960753723220

/-! ## A354007.P12877241012644070130

`A028310(lt[A354006(n), 1])`
-/

namespace A354007.P12877241012644070130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354006 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A354007.P12877241012644070130

/-! ## A354007.P916134678453034351

`lt[A354006(n), abs(A033999(n))]`
-/

namespace A354007.P916134678453034351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354007.P916134678453034351

/-! ## A354007.P7799141823540192696

`record[gcd(A028310(n), A354006(n))]`
-/

namespace A354007.P7799141823540192696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A354006 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354007.P7799141823540192696

/-! ## A354007.P10659741353128424437

`lt[A354006(n), A007318(A307597(n))]`
-/

namespace A354007.P10659741353128424437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A307597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354007.P10659741353128424437

/-!
# A354008: Numerators of Cesàro means sequence of A114112.

The programs for A354008, the canonical program `A354008.P10349841420698159595` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354008 has offset 1).

The definition of A354008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354008.P3865516563508625124

`lcm(n+1, ceil(sinh(log(n+1))))+1`
-/

namespace A354008.P3865516563508625124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ⌈Real.sinh (Real.log (n + 1 : ℝ))⌉ + 1

end

end A354008.P3865516563508625124

namespace A354008

/-- `lcm(n+1, ceil(sinh(log(n+1))))+1` -/
def P3865516563508625124.Spec : Prop :=
  ∀ n, (P3865516563508625124.a n : ℤ) = A354008 (n + 1)

end A354008

/-! ## A354008.P10349841420698159595

`C(gcd(a(n-1), ∑[n]), 2)+n+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A354008

/-- `C(gcd(a(n-1), ∑[n]), 2)+n+2` -/
def P10349841420698159595.Spec : Prop :=
  ∀ n, (P10349841420698159595.a n : ℤ) = A354008 (n + 1)

theorem P10349841420698159595.correct : P10349841420698159595.Spec := by
  intro n
  simp only [A354008, Nat.add_sub_cancel]

end A354008

/-! ## A354008.P5627514343409511959

`∑[n]%n*a(n-1)+2+n` with `a(0)=1`
-/

namespace A354008.P5627514343409511959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % n * a (n - 1) + 2 + n

end

end A354008.P5627514343409511959

namespace A354008

/-- `∑[n]%n*a(n-1)+2+n` -/
def P5627514343409511959.Spec : Prop :=
  ∀ n, (P5627514343409511959.a n : ℤ) = A354008 (n + 1)

end A354008

/-! ## A354008.P11497211253674791305

`C(a(gcd(n, and(1, n))-1), 2)+n+2` with `a(0)=1`
-/

namespace A354008.P11497211253674791305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (Nat.gcd n (Nat.land 1 n) - 1)) 2 + (n + 2)

end

end A354008.P11497211253674791305

namespace A354008

/-- `C(a(gcd(n, and(1, n))-1), 2)+n+2` -/
def P11497211253674791305.Spec : Prop :=
  ∀ n, (P11497211253674791305.a n : ℤ) = A354008 (n + 1)

end A354008

/-! ## A354008.P11052511333762299122

`(n+1)*ceil(n²/2)%(n+1)+1`
-/

namespace A354008.P11052511333762299122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod ⌈(n ^ 2 : ℚ) / 2⌉ (n + 1 : ℤ) + 1

end

end A354008.P11052511333762299122

namespace A354008

/-- `(n+1)*ceil(n²/2)%(n+1)+1` -/
def P11052511333762299122.Spec : Prop :=
  ∀ n, P11052511333762299122.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P18096460954078128565

`C((n-1)%2*a(n-1), 2)+n+2` with `a(0)=1`
-/

namespace A354008.P18096460954078128565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (Int.tmod ((n : ℤ) - 1) 2 * (a (n - 1) : ℤ)).toNat 2 + (n + 2)

end

end A354008.P18096460954078128565

namespace A354008

/-- `C((n-1)%2*a(n-1), 2)+n+2` -/
def P18096460954078128565.Spec : Prop :=
  ∀ n, (P18096460954078128565.a n : ℤ) = A354008 (n + 1)

end A354008

/-! ## A354008.P14936464768993471062

`(n+1)*ceil(C(or(1, n), n)/2)-(C(2, n+2)-1)`
-/

namespace A354008.P14936464768993471062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ - ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A354008.P14936464768993471062

namespace A354008

/-- `(n+1)*ceil(C(or(1, n), n)/2)-(C(2, n+2)-1)` -/
def P14936464768993471062.Spec : Prop :=
  ∀ n, P14936464768993471062.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P10362614784393356597

`(n+1)*A319702(n+1)-n`
-/

namespace A354008.P10362614784393356597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319702 (n + 1) - (n : ℤ)

end

end A354008.P10362614784393356597

namespace A354008

/-- `(n+1)*A319702(n+1)-n` -/
def P10362614784393356597.Spec : Prop :=
  ∀ n, P10362614784393356597.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P3503628473116404841

`A114113(n+1)/A152271(n)`
-/

namespace A354008.P3503628473116404841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114113 (n + 1) : ℚ) / (A152271 n : ℚ)

end

end A354008.P3503628473116404841

namespace A354008

/-- `A114113(n+1)/A152271(n)` -/
def P3503628473116404841.Spec : Prop :=
  ∀ n, P3503628473116404841.a n = (A354008 (n + 1) : ℚ)

end A354008

/-! ## A354008.P1738853132065264920

`A319702(n+1)+A240134(n+1)`
-/

namespace A354008.P1738853132065264920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1) + A240134 (n + 1)

end

end A354008.P1738853132065264920

namespace A354008

/-- `A319702(n+1)+A240134(n+1)` -/
def P1738853132065264920.Spec : Prop :=
  ∀ n, P1738853132065264920.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P12440577259925144535

`A266663(n+1)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A354008.P12440577259925144535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A266663 (n + 1) - a (n - 1)

end

end A354008.P12440577259925144535

namespace A354008

/-- `A266663(n+1)-a(n-1)` -/
def P12440577259925144535.Spec : Prop :=
  ∀ n, P12440577259925144535.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P4675843969483404772

`A019427(2*n)+(n+1)*A152271(n+1)`
-/

namespace A354008.P4675843969483404772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n) + (n + 1 : ℤ) * A152271 (n + 1)

end

end A354008.P4675843969483404772

namespace A354008

/-- `A019427(2*n)+(n+1)*A152271(n+1)` -/
def P4675843969483404772.Spec : Prop :=
  ∀ n, P4675843969483404772.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P12352473851041714532

`A267810(2*n+1)+A152271(2*n+1)*A152271(n+1)`
-/

namespace A354008.P12352473851041714532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 (2 * n + 1) + A152271 (2 * n + 1) * A152271 (n + 1)

end

end A354008.P12352473851041714532

namespace A354008

/-- `A267810(2*n+1)+A152271(2*n+1)*A152271(n+1)` -/
def P12352473851041714532.Spec : Prop :=
  ∀ n, P12352473851041714532.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P3701725233076958552

`A065475(C(or(1, n)+1, n))`
-/

namespace A354008.P3701725233076958552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (Nat.choose (Nat.lor 1 n + 1) n)

end

end A354008.P3701725233076958552

namespace A354008

/-- `A065475(C(or(1, n)+1, n))` -/
def P3701725233076958552.Spec : Prop :=
  ∀ n, P3701725233076958552.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P7096236816951237768

`A132071(A265724(n))`
-/

namespace A354008.P7096236816951237768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132071 (A265724 n).toNat

end

end A354008.P7096236816951237768

namespace A354008

/-- `A132071(A265724(n))` -/
def P7096236816951237768.Spec : Prop :=
  ∀ n, P7096236816951237768.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P11358815720484346638

`A008949(A236453(n+1))`
-/

namespace A354008.P11358815720484346638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A236453 (n + 1)).toNat

end

end A354008.P11358815720484346638

namespace A354008

/-- `A008949(A236453(n+1))` -/
def P11358815720484346638.Spec : Prop :=
  ∀ n, P11358815720484346638.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P3309121653569361211

`A104711(A365892(n+1))`
-/

namespace A354008.P3309121653569361211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (A365892 (n + 1)).toNat

end

end A354008.P3309121653569361211

namespace A354008

/-- `A104711(A365892(n+1))` -/
def P3309121653569361211.Spec : Prop :=
  ∀ n, P3309121653569361211.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P9567221005091168411

`A104795(A316671(n+2))`
-/

namespace A354008.P9567221005091168411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104795 (A316671 (n + 2)).toNat

end

end A354008.P9567221005091168411

namespace A354008

/-- `A104795(A316671(n+2))` -/
def P9567221005091168411.Spec : Prop :=
  ∀ n, P9567221005091168411.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P17729615632947596593

`A210796(A114113(n+1)+1)`
-/

namespace A354008.P17729615632947596593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210796 (A114113 (n + 1) + 1).toNat

end

end A354008.P17729615632947596593

namespace A354008

/-- `A210796(A114113(n+1)+1)` -/
def P17729615632947596593.Spec : Prop :=
  ∀ n, P17729615632947596593.a n = A354008 (n + 1)

end A354008

/-! ## A354008.P15969878279316591981

`A065475((n+1)*A152271(n+1))`
-/

namespace A354008.P15969878279316591981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 ((n + 1 : ℤ) * A152271 (n + 1)).toNat

end

end A354008.P15969878279316591981

namespace A354008

/-- `A065475((n+1)*A152271(n+1))` -/
def P15969878279316591981.Spec : Prop :=
  ∀ n, P15969878279316591981.a n = A354008 (n + 1)

end A354008

/-!
# A354011: Number of tilings of a 3 X n rectangle using 2 X 2 tiles, right trominoes and dominoes.

The programs for A354011, there is no canonical definition to state claims against.
-/

/-! ## A354011.P4193660561804381954

`Δ[C(2*(n+1), 4)]%A141214(A293362(n))`
-/

namespace A354011.P4193660561804381954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A141214 (A293362 n).toNat)

end

end A354011.P4193660561804381954

/-! ## A354011.P15656842052542181857

`and(A041473(n), A257143(A041472(n)))`
-/

namespace A354011.P15656842052542181857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041473 n) (A257143 (A041472 n).toNat)

end

end A354011.P15656842052542181857

/-!
# A354012: Number of tilings of a 4 X n rectangle using 2 X 2 tiles, right trominoes and dominoes.

The programs for A354012, there is no canonical definition to state claims against.
-/

/-! ## A354012.P5517881745293473996

`A354010((n+10)^∑[char[∑[n+2]]])`
-/

namespace A354012.P5517881745293473996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354010 ((n + 10) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A354012.P5517881745293473996

/-!
# A354013: Expansion of e.g.f. 1/(1 + log(1-x) * (1 - log(1-x))).

The programs for A354013, there is no canonical definition to state claims against.
-/

/-! ## A354013.P6576023801086261080

`A358031(n)-A354018(n)`
-/

namespace A354013.P6576023801086261080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358031 n - A354018 n

end

end A354013.P6576023801086261080

/-! ## A354013.P790949131426004262

`A217694(n)+A013939(A025164(n))`
-/

namespace A354013.P790949131426004262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217694 n + A013939 (A025164 n).toNat

end

end A354013.P790949131426004262

/-!
# A354015: Expansion of e.g.f. 1/(1 - x)^(1 - log(1-x)).

The programs for A354015, there is no canonical definition to state claims against.
-/

/-! ## A354015.P4391983796178061191

`A300306(n!)`
-/

namespace A354015.P4391983796178061191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300306 (Nat.factorial n)

end

end A354015.P4391983796178061191

/-!
# A354016: Product_{n>=1} (1 + x^n/n!)^a(n) = exp(x).

The programs for A354016, there is no canonical definition to state claims against.
-/

/-! ## A354016.P11595192161485115756

`A137852(n+1)-A241470(A007318(3*n+2))`
-/

namespace A354016.P11595192161485115756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137852 (n + 1) - A241470 (A007318 (3 * n + 2)).toNat

end

end A354016.P11595192161485115756

/-!
# A354017: Number of subtrees of all distinct free trees with n nodes.

The programs for A354017, there is no canonical definition to state claims against.
-/

/-! ## A354017.P17660450045660839815

`or(Δ[A245900(n+1)], A087180(2*(n+1)))`
-/

namespace A354017.P17660450045660839815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A087180 (2 * (n + 1)))

end

end A354017.P17660450045660839815

/-! ## A354017.P8509937490247759115

`A085856(A027035(n+3)-A165013(n))`
-/

namespace A354017.P8509937490247759115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (A027035 (n + 3) - A165013 n).toNat

end

end A354017.P8509937490247759115

/-!
# A354018: Expansion of e.g.f. -log(1-x)/(1 + log(1-x) - log(1-x)^2).

The programs for A354018, there is no canonical definition to state claims against.
-/

/-! ## A354018.P5056621920507833515

`A358031(n)-A354013(n)`
-/

namespace A354018.P5056621920507833515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358031 n - A354013 n

end

end A354018.P5056621920507833515

/-! ## A354018.P7523995218269831739

`A132270(A001831(n))+A054765(n)`
-/

namespace A354018.P7523995218269831739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A001831 n).toNat + A054765 n

end

end A354018.P7523995218269831739

/-!
# A354020: E.g.f.: Integral exp(-x*tanh(x)) / cosh(x) dx.

The programs for A354020, there is no canonical definition to state claims against.
-/

/-! ## A354020.P2087940442648860657

`A216409(n+1)/A157142(n)`
-/

namespace A354020.P2087940442648860657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216409 (n + 1) : ℚ) / (A157142 n : ℚ)

end

end A354020.P2087940442648860657

/-!
# A354021: a(n) = Sum_{1 <= i < j < k < m <= n} (m*k*j*i)^2.

The programs for A354021, there is no canonical definition to state claims against.
-/

/-! ## A354021.P7715059879219090453

`A269944(∑[comp[A036291(n)]])`
-/

namespace A354021.P7715059879219090453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354021.P7715059879219090453

/-! ## A354021.P11702778031302368532

`A269944(∑[comp[A122045(n+3)]])`
-/

namespace A354021.P11702778031302368532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354021.P11702778031302368532

/-! ## A354021.P15436202663455702437

`A269944(A000217(n)+comp[2*(n+2)]+1)`
-/

namespace A354021.P15436202663455702437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A000217 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ)).toNat

end

end A354021.P15436202663455702437

/-!
# A354022: a(n) = n! * Sum_{d|n} mu(n/d) / d!.

The programs for A354022, there is no canonical definition to state claims against.
-/

/-! ## A354022.P17471203741942858247

`or(1, A339792(A277391(n)))`
-/

namespace A354022.P17471203741942858247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339792 (A277391 n).toNat)

end

end A354022.P17471203741942858247

/-!
# A354024: Terms m > 1 of A351467 such that A005245(m) == 1 (mod 3).

The programs for A354024, there is no canonical definition to state claims against.
-/

/-! ## A354024.P7253098039433806356

`record[A142150(A354023(n+3))]`
-/

namespace A354024.P7253098039433806356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A354023 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354024.P7253098039433806356

/-!
# A354025: Terms m of A351467 such that A005245(m) == 2 (mod 3).

The programs for A354025, there is no canonical definition to state claims against.
-/

/-! ## A354025.P9975314993640576781

`eq[A008742(A101776(n)), A166597(n)]`
-/

namespace A354025.P9975314993640576781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A101776 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354025.P9975314993640576781

/-! ## A354025.P14213075381332766216

`A074816(A068156(n))+A004709(n+1)`
-/

namespace A354025.P14213075381332766216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A068156 n).toNat + A004709 (n + 1)

end

end A354025.P14213075381332766216

/-! ## A354025.P5111480901634052534

`A127307(n+1)-A010058(A024175(n))`
-/

namespace A354025.P5111480901634052534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127307 (n + 1) - A010058 (A024175 n).toNat

end

end A354025.P5111480901634052534

/-! ## A354025.P16972030510542143367

`A127307(n+1)-A010058(A054393(n))`
-/

namespace A354025.P16972030510542143367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127307 (n + 1) - A010058 (A054393 n).toNat

end

end A354025.P16972030510542143367

/-!
# A354028: a(n) = 1 if n is a prime power of the form 4m+3, otherwise 0.

The programs for A354028, the canonical program `A354028.P1581446969738765077` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354028 has offset 1).

The definition of A354028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354028.P8688342783264847546

`A354029(2*(n+1))`
-/

namespace A354028.P8688342783264847546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354029 (2 * (n + 1))

end

end A354028.P8688342783264847546

namespace A354028

/-- `A354029(2*(n+1))` -/
def P8688342783264847546.Spec : Prop :=
  ∀ n, P8688342783264847546.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P1581446969738765077

`and(∑[n], A174275(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A354028

/-- `and(∑[n], A174275(n+1))` -/
def P1581446969738765077.Spec : Prop :=
  ∀ n, P1581446969738765077.a n = A354028 (n + 1)

theorem P1581446969738765077.correct : P1581446969738765077.Spec := by
  intro n
  simp only [A354028, Nat.add_sub_cancel]

end A354028

/-! ## A354028.P778043983692483058

`and(∑[n], A354033(n+1))`
-/

namespace A354028.P778043983692483058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A354033 (n + 1))

end

end A354028.P778043983692483058

namespace A354028

/-- `and(∑[n], A354033(n+1))` -/
def P778043983692483058.Spec : Prop :=
  ∀ n, P778043983692483058.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P17257548072816229497

`and(n+1, A354029(n+1))`
-/

namespace A354028.P17257548072816229497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A354029 (n + 1))

end

end A354028.P17257548072816229497

namespace A354028

/-- `and(n+1, A354029(n+1))` -/
def P17257548072816229497.Spec : Prop :=
  ∀ n, P17257548072816229497.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P9862926126663782717

`char[record[A345444(2*n+1)]]`
-/

namespace A354028.P9862926126663782717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345444 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354028.P9862926126663782717

namespace A354028

/-- `char[record[A345444(2*n+1)]]` -/
def P9862926126663782717.Spec : Prop :=
  ∀ n, (P9862926126663782717.a n : ℤ) = A354028 (n + 1)

end A354028

/-! ## A354028.P9315706986411714049

`char[eq[n%4, A332476(n+1)]]`
-/

namespace A354028.P9315706986411714049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332476 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354028.P9315706986411714049

namespace A354028

/-- `char[eq[n%4, A332476(n+1)]]` -/
def P9315706986411714049.Spec : Prop :=
  ∀ n, (P9315706986411714049.a n : ℤ) = A354028 (n + 1)

end A354028

/-! ## A354028.P13387842719933787943

`and(floor((n/2)²), A069513(n+1))`
-/

namespace A354028.P13387842719933787943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊((n : ℚ) / 2) ^ 2⌋ (A069513 (n + 1))

end

end A354028.P13387842719933787943

namespace A354028

/-- `and(floor((n/2)²), A069513(n+1))` -/
def P13387842719933787943.Spec : Prop :=
  ∀ n, P13387842719933787943.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P853761864575416694

`and(2*n/gcd(2, n)², A010055(n+1))`
-/

namespace A354028.P853761864575416694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 * n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))) (A010055 (n + 1))

end

end A354028.P853761864575416694

namespace A354028

/-- `and(2*n/gcd(2, n)², A010055(n+1))` -/
def P853761864575416694.Spec : Prop :=
  ∀ n, P853761864575416694.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P12614154926273168968

`A038189(A100994(n+1))`
-/

namespace A354028.P12614154926273168968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A100994 (n + 1)).toNat

end

end A354028.P12614154926273168968

namespace A354028

/-- `A038189(A100994(n+1))` -/
def P12614154926273168968.Spec : Prop :=
  ∀ n, P12614154926273168968.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P8704779154113472075

`A079261(A066990(n+1))`
-/

namespace A354028.P8704779154113472075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (A066990 (n + 1)).toNat

end

end A354028.P8704779154113472075

namespace A354028

/-- `A079261(A066990(n+1))` -/
def P8704779154113472075.Spec : Prop :=
  ∀ n, P8704779154113472075.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P2091686045979476019

`A121262(A160377(n+1)+2)`
-/

namespace A354028.P2091686045979476019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A160377 (n + 1) + 2).toNat

end

end A354028.P2091686045979476019

namespace A354028

/-- `A121262(A160377(n+1)+2)` -/
def P2091686045979476019.Spec : Prop :=
  ∀ n, P2091686045979476019.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P10473420645986728443

`A010055(n+1)*A014707(n)`
-/

namespace A354028.P10473420645986728443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A014707 n

end

end A354028.P10473420645986728443

namespace A354028

/-- `A010055(n+1)*A014707(n)` -/
def P10473420645986728443.Spec : Prop :=
  ∀ n, P10473420645986728443.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P15762832035153651355

`A014707(n*A069513(n+1))`
-/

namespace A354028.P15762832035153651355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 ((n : ℤ) * A069513 (n + 1)).toNat

end

end A354028.P15762832035153651355

namespace A354028

/-- `A014707(n*A069513(n+1))` -/
def P15762832035153651355.Spec : Prop :=
  ∀ n, P15762832035153651355.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P9969773244871959718

`A014707(n*A174275(n+1))`
-/

namespace A354028.P9969773244871959718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 ((n : ℤ) * A174275 (n + 1)).toNat

end

end A354028.P9969773244871959718

namespace A354028

/-- `A014707(n*A174275(n+1))` -/
def P9969773244871959718.Spec : Prop :=
  ∀ n, P9969773244871959718.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P6735901703744867704

`A021913(n*A174275(n+1))`
-/

namespace A354028.P6735901703744867704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 ((n : ℤ) * A174275 (n + 1)).toNat

end

end A354028.P6735901703744867704

namespace A354028

/-- `A021913(n*A174275(n+1))` -/
def P6735901703744867704.Spec : Prop :=
  ∀ n, P6735901703744867704.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P13946550563224465677

`A059125(n*A174275(n+1))`
-/

namespace A354028.P13946550563224465677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 ((n : ℤ) * A174275 (n + 1)).toNat

end

end A354028.P13946550563224465677

namespace A354028

/-- `A059125(n*A174275(n+1))` -/
def P13946550563224465677.Spec : Prop :=
  ∀ n, P13946550563224465677.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P12998388621587410613

`A140081(n*A174275(n+1))`
-/

namespace A354028.P12998388621587410613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 ((n : ℤ) * A174275 (n + 1)).toNat

end

end A354028.P12998388621587410613

namespace A354028

/-- `A140081(n*A174275(n+1))` -/
def P12998388621587410613.Spec : Prop :=
  ∀ n, P12998388621587410613.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P4034305627648104092

`A165560(n*A174275(n+1))`
-/

namespace A354028.P4034305627648104092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 ((n : ℤ) * A174275 (n + 1)).toNat

end

end A354028.P4034305627648104092

namespace A354028

/-- `A165560(n*A174275(n+1))` -/
def P4034305627648104092.Spec : Prop :=
  ∀ n, P4034305627648104092.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P5628092812744065704

`A166486(n)*A174275(n+1)`
-/

namespace A354028.P5628092812744065704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A174275 (n + 1)

end

end A354028.P5628092812744065704

namespace A354028

/-- `A166486(n)*A174275(n+1)` -/
def P5628092812744065704.Spec : Prop :=
  ∀ n, P5628092812744065704.a n = A354028 (n + 1)

end A354028

/-! ## A354028.P6774527823897443471

`A014707(n)*A345950(n+1)`
-/

namespace A354028.P6774527823897443471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n * A345950 (n + 1)

end

end A354028.P6774527823897443471

namespace A354028

/-- `A014707(n)*A345950(n+1)` -/
def P6774527823897443471.Spec : Prop :=
  ∀ n, P6774527823897443471.a n = A354028 (n + 1)

end A354028

/-!
# A354029: a(n) = 1 if either n or n/2 is a prime power of the form 4m+3, otherwise 0.

The programs for A354029, the canonical program `A354029.P17065459981466861279` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354029 has offset 1).

The definition of A354029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354029.P9070597210152092072

`char[A292762(n+1)-1]`
-/

namespace A354029.P9070597210152092072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354029.P9070597210152092072

namespace A354029

/-- `char[A292762(n+1)-1]` -/
def P9070597210152092072.Spec : Prop :=
  ∀ n, (P9070597210152092072.a n : ℤ) = A354029 (n + 1)

end A354029

/-! ## A354029.P1011463835483384786

`A014707(A160377(n+1))`
-/

namespace A354029.P1011463835483384786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A160377 (n + 1)).toNat

end

end A354029.P1011463835483384786

namespace A354029

/-- `A014707(A160377(n+1))` -/
def P1011463835483384786.Spec : Prop :=
  ∀ n, P1011463835483384786.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P17065459981466861279

`A354028(A026741(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A354029

/-- `A354028(A026741(n+1))` -/
def P17065459981466861279.Spec : Prop :=
  ∀ n, P17065459981466861279.a n = A354029 (n + 1)

theorem P17065459981466861279.correct : P17065459981466861279.Spec := by
  intro n
  simp only [A354029, Nat.add_sub_cancel]

end A354029

/-! ## A354029.P14120388428901086215

`A354028(A214682(n+1))`
-/

namespace A354029.P14120388428901086215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354028 (A214682 (n + 1)).toNat

end

end A354029.P14120388428901086215

namespace A354029

/-- `A354028(A214682(n+1))` -/
def P14120388428901086215.Spec : Prop :=
  ∀ n, P14120388428901086215.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P11935438088722555456

`A014707(n*A211487(n+1))`
-/

namespace A354029.P11935438088722555456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 ((n : ℤ) * A211487 (n + 1)).toNat

end

end A354029.P11935438088722555456

namespace A354029

/-- `A014707(n*A211487(n+1))` -/
def P11935438088722555456.Spec : Prop :=
  ∀ n, P11935438088722555456.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P6267644048349935358

`A059125(n*A211487(n+1))`
-/

namespace A354029.P6267644048349935358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 ((n : ℤ) * A211487 (n + 1)).toNat

end

end A354029.P6267644048349935358

namespace A354029

/-- `A059125(n*A211487(n+1))` -/
def P6267644048349935358.Spec : Prop :=
  ∀ n, P6267644048349935358.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P14278692022925482590

`A014707(n*A354032(n+1))`
-/

namespace A354029.P14278692022925482590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 ((n : ℤ) * A354032 (n + 1)).toNat

end

end A354029.P14278692022925482590

namespace A354029

/-- `A014707(n*A354032(n+1))` -/
def P14278692022925482590.Spec : Prop :=
  ∀ n, P14278692022925482590.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P10639911742860086430

`A014707(n*A354924(n+1))`
-/

namespace A354029.P10639911742860086430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 ((n : ℤ) * A354924 (n + 1)).toNat

end

end A354029.P10639911742860086430

namespace A354029

/-- `A014707(n*A354924(n+1))` -/
def P10639911742860086430.Spec : Prop :=
  ∀ n, P10639911742860086430.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P14951318987958875370

`A000741(n+1)%A014709(n)`
-/

namespace A354029.P14951318987958875370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000741 (n + 1)) (A014709 n)

end

end A354029.P14951318987958875370

namespace A354029

/-- `A000741(n+1)%A014709(n)` -/
def P14951318987958875370.Spec : Prop :=
  ∀ n, P14951318987958875370.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P11989066636867652755

`A007438(n+1)%A014709(n)`
-/

namespace A354029.P11989066636867652755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007438 (n + 1)) (A014709 n)

end

end A354029.P11989066636867652755

namespace A354029

/-- `A007438(n+1)%A014709(n)` -/
def P11989066636867652755.Spec : Prop :=
  ∀ n, P11989066636867652755.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P16970000944229062645

`A034380(n+1)%A014709(n)`
-/

namespace A354029.P16970000944229062645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034380 (n + 1)) (A014709 n)

end

end A354029.P16970000944229062645

namespace A354029

/-- `A034380(n+1)%A014709(n)` -/
def P16970000944229062645.Spec : Prop :=
  ∀ n, P16970000944229062645.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P1839462960156300946

`A086669(n+1)%A014709(n)`
-/

namespace A354029.P1839462960156300946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086669 (n + 1)) (A014709 n)

end

end A354029.P1839462960156300946

namespace A354029

/-- `A086669(n+1)%A014709(n)` -/
def P1839462960156300946.Spec : Prop :=
  ∀ n, P1839462960156300946.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P15576261105341673429

`A092502(n+1)%A014709(n)`
-/

namespace A354029.P15576261105341673429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092502 (n + 1)) (A014709 n)

end

end A354029.P15576261105341673429

namespace A354029

/-- `A092502(n+1)%A014709(n)` -/
def P15576261105341673429.Spec : Prop :=
  ∀ n, P15576261105341673429.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P12293202546240420802

`A099310(n+1)%A014709(n)`
-/

namespace A354029.P12293202546240420802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099310 (n + 1)) (A014709 n)

end

end A354029.P12293202546240420802

namespace A354029

/-- `A099310(n+1)%A014709(n)` -/
def P12293202546240420802.Spec : Prop :=
  ∀ n, P12293202546240420802.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P16094047534892906392

`A116512(n+1)%A014709(n)`
-/

namespace A354029.P16094047534892906392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116512 (n + 1)) (A014709 n)

end

end A354029.P16094047534892906392

namespace A354029

/-- `A116512(n+1)%A014709(n)` -/
def P16094047534892906392.Spec : Prop :=
  ∀ n, P16094047534892906392.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P7970504093573439366

`A117108(n+1)%A014709(n)`
-/

namespace A354029.P7970504093573439366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117108 (n + 1)) (A014709 n)

end

end A354029.P7970504093573439366

namespace A354029

/-- `A117108(n+1)%A014709(n)` -/
def P7970504093573439366.Spec : Prop :=
  ∀ n, P7970504093573439366.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P9279202678122232186

`A122410(n+1)%A014709(n)`
-/

namespace A354029.P9279202678122232186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122410 (n + 1)) (A014709 n)

end

end A354029.P9279202678122232186

namespace A354029

/-- `A122410(n+1)%A014709(n)` -/
def P9279202678122232186.Spec : Prop :=
  ∀ n, P9279202678122232186.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P2669423055904518742

`A122411(n+1)%A014709(n)`
-/

namespace A354029.P2669423055904518742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122411 (n + 1)) (A014709 n)

end

end A354029.P2669423055904518742

namespace A354029

/-- `A122411(n+1)%A014709(n)` -/
def P2669423055904518742.Spec : Prop :=
  ∀ n, P2669423055904518742.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P14094023727384283196

`A123323(n+1)%A014709(n)`
-/

namespace A354029.P14094023727384283196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123323 (n + 1)) (A014709 n)

end

end A354029.P14094023727384283196

namespace A354029

/-- `A123323(n+1)%A014709(n)` -/
def P14094023727384283196.Spec : Prop :=
  ∀ n, P14094023727384283196.a n = A354029 (n + 1)

end A354029

/-! ## A354029.P5029743868560239726

`A124446(n+1)%A014709(n)`
-/

namespace A354029.P5029743868560239726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124446 (n + 1)) (A014709 n)

end

end A354029.P5029743868560239726

namespace A354029

/-- `A124446(n+1)%A014709(n)` -/
def P5029743868560239726.Spec : Prop :=
  ∀ n, P5029743868560239726.a n = A354029 (n + 1)

end A354029

/-!
# A354030: a(n) = 1 if n is either 1 or a prime power of the form 4m+1, otherwise 0.

The programs for A354030, the canonical program `A354030.P11955667333585020957` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354030 has offset 1).

The definition of A354030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354030.P5339035930101694750

`char[A085759(n+1)-1]`
-/

namespace A354030.P5339035930101694750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354030.P5339035930101694750

namespace A354030

/-- `char[A085759(n+1)-1]` -/
def P5339035930101694750.Spec : Prop :=
  ∀ n, (P5339035930101694750.a n : ℤ) = A354030 (n + 1)

end A354030

/-! ## A354030.P12588767266261698201

`char[4*n]*A010055(n+1)`
-/

namespace A354030.P12588767266261698201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A010055 (n + 1)

end

end A354030.P12588767266261698201

namespace A354030

/-- `char[4*n]*A010055(n+1)` -/
def P12588767266261698201.Spec : Prop :=
  ∀ n, P12588767266261698201.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P8632861230214737472

`floor(char[4*n]/A285572(n+1))`
-/

namespace A354030.P8632861230214737472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (A285572 (n + 1) : ℚ)⌋

end

end A354030.P8632861230214737472

namespace A354030

/-- `floor(char[4*n]/A285572(n+1))` -/
def P8632861230214737472.Spec : Prop :=
  ∀ n, P8632861230214737472.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P17704551913342642428

`and(A001221(n+1)!, char[4*n])`
-/

namespace A354030.P17704551913342642428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.factorial (A001221 (n + 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A354030.P17704551913342642428

namespace A354030

/-- `and(A001221(n+1)!, char[4*n])` -/
def P17704551913342642428.Spec : Prop :=
  ∀ n, (P17704551913342642428.a n : ℤ) = A354030 (n + 1)

end A354030

/-! ## A354030.P8165314112242160612

`C(A160377(4*floor(n/4)+1), n)`
-/

namespace A354030.P8165314112242160612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A160377 (4 * ⌊(n : ℚ) / 4⌋ + 1).toNat).toNat n

end

end A354030.P8165314112242160612

namespace A354030

/-- `C(A160377(4*floor(n/4)+1), n)` -/
def P8165314112242160612.Spec : Prop :=
  ∀ n, (P8165314112242160612.a n : ℤ) = A354030 (n + 1)

end A354030

/-! ## A354030.P15243427303099695004

`C(A354933(n*char[4*n]+1), n+1)`
-/

namespace A354030.P15243427303099695004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354933 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)).toNat (n + 1)

end

end A354030.P15243427303099695004

namespace A354030

/-- `C(A354933(n*char[4*n]+1), n+1)` -/
def P15243427303099695004.Spec : Prop :=
  ∀ n, (P15243427303099695004.a n : ℤ) = A354030 (n + 1)

end A354030

/-! ## A354030.P10346226745888460067

`A121262(A160377(n+1))`
-/

namespace A354030.P10346226745888460067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A160377 (n + 1)).toNat

end

end A354030.P10346226745888460067

namespace A354030

/-- `A121262(A160377(n+1))` -/
def P10346226745888460067.Spec : Prop :=
  ∀ n, P10346226745888460067.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P11955667333585020957

`A010055(n+1)*A121262(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354030

/-- `A010055(n+1)*A121262(n)` -/
def P11955667333585020957.Spec : Prop :=
  ∀ n, P11955667333585020957.a n = A354030 (n + 1)

theorem P11955667333585020957.correct : P11955667333585020957.Spec := by
  intro n
  simp only [A354030, Nat.add_sub_cancel]

end A354030

/-! ## A354030.P17184149095949832530

`A121262(n)*A340363(n+1)`
-/

namespace A354030.P17184149095949832530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n * A340363 (n + 1)

end

end A354030.P17184149095949832530

namespace A354030

/-- `A121262(n)*A340363(n+1)` -/
def P17184149095949832530.Spec : Prop :=
  ∀ n, P17184149095949832530.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P6705702103625868503

`A121262(n)*A354923(n+1)`
-/

namespace A354030.P6705702103625868503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n * A354923 (n + 1)

end

end A354030.P6705702103625868503

namespace A354030

/-- `A121262(n)*A354923(n+1)` -/
def P6705702103625868503.Spec : Prop :=
  ∀ n, P6705702103625868503.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P2607407910495083861

`A121262(n)*A354924(n+1)`
-/

namespace A354030.P2607407910495083861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n * A354924 (n + 1)

end

end A354030.P2607407910495083861

namespace A354030

/-- `A121262(n)*A354924(n+1)` -/
def P2607407910495083861.Spec : Prop :=
  ∀ n, P2607407910495083861.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P5704964214312854891

`A229347(n+1)%A014710(n)`
-/

namespace A354030.P5704964214312854891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229347 (n + 1)) (A014710 n)

end

end A354030.P5704964214312854891

namespace A354030

/-- `A229347(n+1)%A014710(n)` -/
def P5704964214312854891.Spec : Prop :=
  ∀ n, P5704964214312854891.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P2646097415851302909

`A385199(n+1)%A010121(n)`
-/

namespace A354030.P2646097415851302909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385199 (n + 1)) (A010121 n)

end

end A354030.P2646097415851302909

namespace A354030

/-- `A385199(n+1)%A010121(n)` -/
def P2646097415851302909.Spec : Prop :=
  ∀ n, P2646097415851302909.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P12517161611150586492

`and(A000125(n), A010055(n+1))`
-/

namespace A354030.P12517161611150586492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000125 n) (A010055 (n + 1))

end

end A354030.P12517161611150586492

namespace A354030

/-- `and(A000125(n), A010055(n+1))` -/
def P12517161611150586492.Spec : Prop :=
  ∀ n, P12517161611150586492.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P13778193175667446675

`and(A001249(n), A010055(n+1))`
-/

namespace A354030.P13778193175667446675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001249 n) (A010055 (n + 1))

end

end A354030.P13778193175667446675

namespace A354030

/-- `and(A001249(n), A010055(n+1))` -/
def P13778193175667446675.Spec : Prop :=
  ∀ n, P13778193175667446675.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P13281376694683907360

`and(A001496(n), A010055(n+1))`
-/

namespace A354030.P13281376694683907360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001496 n) (A010055 (n + 1))

end

end A354030.P13281376694683907360

namespace A354030

/-- `and(A001496(n), A010055(n+1))` -/
def P13281376694683907360.Spec : Prop :=
  ∀ n, P13281376694683907360.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P5978149889894676432

`and(A003485(n), A010055(n+1))`
-/

namespace A354030.P5978149889894676432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003485 n) (A010055 (n + 1))

end

end A354030.P5978149889894676432

namespace A354030

/-- `and(A003485(n), A010055(n+1))` -/
def P5978149889894676432.Spec : Prop :=
  ∀ n, P5978149889894676432.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P12814684117588478597

`and(A005701(n), A010055(n+1))`
-/

namespace A354030.P12814684117588478597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005701 n) (A010055 (n + 1))

end

end A354030.P12814684117588478597

namespace A354030

/-- `and(A005701(n), A010055(n+1))` -/
def P12814684117588478597.Spec : Prop :=
  ∀ n, P12814684117588478597.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P1350641703867357701

`and(A005906(n), A010055(n+1))`
-/

namespace A354030.P1350641703867357701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005906 n) (A010055 (n + 1))

end

end A354030.P1350641703867357701

namespace A354030

/-- `and(A005906(n), A010055(n+1))` -/
def P1350641703867357701.Spec : Prop :=
  ∀ n, P1350641703867357701.a n = A354030 (n + 1)

end A354030

/-! ## A354030.P6333709859401387240

`and(A010055(n+1), A244877(n))`
-/

namespace A354030.P6333709859401387240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010055 (n + 1)) (A244877 n)

end

end A354030.P6333709859401387240

namespace A354030

/-- `and(A010055(n+1), A244877(n))` -/
def P6333709859401387240.Spec : Prop :=
  ∀ n, P6333709859401387240.a n = A354030 (n + 1)

end A354030

/-!
# A354031: a(n) = 1 if n > 1 and n is a power of a Pythagorean prime (prime of the form 4m+1), otherwise 0.

The programs for A354031, the canonical program `A354031.P5992259175605925891` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354031 has offset 1).

The definition of A354031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354031.P125477902450548711

`A174275(n+1)-A354033(n+1)`
-/

namespace A354031.P125477902450548711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (n + 1) - A354033 (n + 1)

end

end A354031.P125477902450548711

namespace A354031

/-- `A174275(n+1)-A354033(n+1)` -/
def P125477902450548711.Spec : Prop :=
  ∀ n, P125477902450548711.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P5992259175605925891

`A024362(n+1)%2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A354031

/-- `A024362(n+1)%2` -/
def P5992259175605925891.Spec : Prop :=
  ∀ n, P5992259175605925891.a n = A354031 (n + 1)

theorem P5992259175605925891.correct : P5992259175605925891.Spec := by
  intro n
  simp only [A354031, Nat.add_sub_cancel]

end A354031

/-! ## A354031.P5019916455965794807

`A075443(n+1)%2`
-/

namespace A354031.P5019916455965794807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075443 (n + 1)) 2

end

end A354031.P5019916455965794807

namespace A354031

/-- `A075443(n+1)%2` -/
def P5019916455965794807.Spec : Prop :=
  ∀ n, P5019916455965794807.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P6385979457052416201

`A075444(n+1)%2`
-/

namespace A354031.P6385979457052416201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075444 (n + 1)) 2

end

end A354031.P6385979457052416201

namespace A354031

/-- `A075444(n+1)%2` -/
def P6385979457052416201.Spec : Prop :=
  ∀ n, P6385979457052416201.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P3929841814511512445

`A079260(∏{p}[n+1, #])`
-/

namespace A354031.P3929841814511512445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A354031.P3929841814511512445

namespace A354031

/-- `A079260(∏{p}[n+1, #])` -/
def P3929841814511512445.Spec : Prop :=
  ∀ n, P3929841814511512445.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P163522052246700660

`A358678(∏{p}[n+1, #])`
-/

namespace A354031.P163522052246700660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358678 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A354031.P163522052246700660

namespace A354031

/-- `A358678(∏{p}[n+1, #])` -/
def P163522052246700660.Spec : Prop :=
  ∀ n, P163522052246700660.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P9023191759573436169

`char[A120960(n+1)-1]`
-/

namespace A354031.P9023191759573436169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354031.P9023191759573436169

namespace A354031

/-- `char[A120960(n+1)-1]` -/
def P9023191759573436169.Spec : Prop :=
  ∀ n, (P9023191759573436169.a n : ℤ) = A354031 (n + 1)

end A354031

/-! ## A354031.P10560326623905984838

`and(2, A229179(n+1))/2`
-/

namespace A354031.P10560326623905984838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A229179 (n + 1)) : ℚ) / 2

end

end A354031.P10560326623905984838

namespace A354031

/-- `and(2, A229179(n+1))/2` -/
def P10560326623905984838.Spec : Prop :=
  ∀ n, P10560326623905984838.a n = (A354031 (n + 1) : ℚ)

end A354031

/-! ## A354031.P5092763706540327791

`A005089(A014963(n+1))`
-/

namespace A354031.P5092763706540327791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A014963 (n + 1)).toNat

end

end A354031.P5092763706540327791

namespace A354031

/-- `A005089(A014963(n+1))` -/
def P5092763706540327791.Spec : Prop :=
  ∀ n, P5092763706540327791.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P13932235504382539817

`A025441(A020500(n+1))`
-/

namespace A354031.P13932235504382539817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A020500 (n + 1)).toNat

end

end A354031.P13932235504382539817

namespace A354031

/-- `A025441(A020500(n+1))` -/
def P13932235504382539817.Spec : Prop :=
  ∀ n, P13932235504382539817.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P16958942410791833467

`A000035(A075444(n+1))`
-/

namespace A354031.P16958942410791833467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A075444 (n + 1)).toNat

end

end A354031.P16958942410791833467

namespace A354031

/-- `A000035(A075444(n+1))` -/
def P16958942410791833467.Spec : Prop :=
  ∀ n, P16958942410791833467.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P10234011631789739076

`A079260(A007947(n+1))`
-/

namespace A354031.P10234011631789739076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A007947 (n + 1)).toNat

end

end A354031.P10234011631789739076

namespace A354031

/-- `A079260(A007947(n+1))` -/
def P10234011631789739076.Spec : Prop :=
  ∀ n, P10234011631789739076.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P17083889148500599067

`A079260(A015052(n+1))`
-/

namespace A354031.P17083889148500599067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A015052 (n + 1)).toNat

end

end A354031.P17083889148500599067

namespace A354031

/-- `A079260(A015052(n+1))` -/
def P17083889148500599067.Spec : Prop :=
  ∀ n, P17083889148500599067.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P3323629304232852236

`A079260(A015053(n+1))`
-/

namespace A354031.P3323629304232852236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A015053 (n + 1)).toNat

end

end A354031.P3323629304232852236

namespace A354031

/-- `A079260(A015053(n+1))` -/
def P3323629304232852236.Spec : Prop :=
  ∀ n, P3323629304232852236.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P12015858905912896829

`A005089(A100994(n+1))`
-/

namespace A354031.P12015858905912896829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A100994 (n + 1)).toNat

end

end A354031.P12015858905912896829

namespace A354031

/-- `A005089(A100994(n+1))` -/
def P12015858905912896829.Spec : Prop :=
  ∀ n, P12015858905912896829.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P3857005111567919500

`A079260(A052410(n+1))`
-/

namespace A354031.P3857005111567919500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A052410 (n + 1)).toNat

end

end A354031.P3857005111567919500

namespace A354031

/-- `A079260(A052410(n+1))` -/
def P3857005111567919500.Spec : Prop :=
  ∀ n, P3857005111567919500.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P13859719094481442028

`A025435(A120007(n+1))`
-/

namespace A354031.P13859719094481442028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A120007 (n + 1)).toNat

end

end A354031.P13859719094481442028

namespace A354031

/-- `A025435(A120007(n+1))` -/
def P13859719094481442028.Spec : Prop :=
  ∀ n, P13859719094481442028.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P3701367569541418195

`and(A017406(n), A157228(n+1))`
-/

namespace A354031.P3701367569541418195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017406 n) (A157228 (n + 1))

end

end A354031.P3701367569541418195

namespace A354031

/-- `and(A017406(n), A157228(n+1))` -/
def P3701367569541418195.Spec : Prop :=
  ∀ n, P3701367569541418195.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P4519769547551964667

`and(A017430(n), A157228(n+1))`
-/

namespace A354031.P4519769547551964667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017430 n) (A157228 (n + 1))

end

end A354031.P4519769547551964667

namespace A354031

/-- `and(A017430(n), A157228(n+1))` -/
def P4519769547551964667.Spec : Prop :=
  ∀ n, P4519769547551964667.a n = A354031 (n + 1)

end A354031

/-! ## A354031.P14055723859661813020

`and(A017454(n), A157228(n+1))`
-/

namespace A354031.P14055723859661813020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017454 n) (A157228 (n + 1))

end

end A354031.P14055723859661813020

namespace A354031

/-- `and(A017454(n), A157228(n+1))` -/
def P14055723859661813020.Spec : Prop :=
  ∀ n, P14055723859661813020.a n = A354031 (n + 1)

end A354031

/-!
# A354032: a(n) = 1 if phi(n)+sigma(n) == 2 (mod 4), otherwise 0.

The programs for A354032, the canonical program `A354032.P602465853701711207` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354032 has offset 1).

The definition of A354032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354032.P10008039519618751001

`char[A292763(n+1)-1]`
-/

namespace A354032.P10008039519618751001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292763 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354032.P10008039519618751001

namespace A354032

/-- `char[A292763(n+1)-1]` -/
def P10008039519618751001.Spec : Prop :=
  ∀ n, (P10008039519618751001.a n : ℤ) = A354032 (n + 1)

end A354032

/-! ## A354032.P17909938144424853837

`char[A023443(A292763(n+1))]`
-/

namespace A354032.P17909938144424853837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A292763 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354032.P17909938144424853837

namespace A354032

/-- `char[A023443(A292763(n+1))]` -/
def P17909938144424853837.Spec : Prop :=
  ∀ n, (P17909938144424853837.a n : ℤ) = A354032 (n + 1)

end A354032

/-! ## A354032.P602465853701711207

`A121262(A065387(n+1)+2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A354032

/-- `A121262(A065387(n+1)+2)` -/
def P602465853701711207.Spec : Prop :=
  ∀ n, P602465853701711207.a n = A354032 (n + 1)

theorem P602465853701711207.correct : P602465853701711207.Spec := by
  intro n
  simp only [A354032, Nat.add_sub_cancel]

end A354032

/-! ## A354032.P15200591875703433280

`A320106(lcm(3, A065387(n+1)))`
-/

namespace A354032.P15200591875703433280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (Int.lcm 3 (A065387 (n + 1)))

end

end A354032.P15200591875703433280

namespace A354032

/-- `A320106(lcm(3, A065387(n+1)))` -/
def P15200591875703433280.Spec : Prop :=
  ∀ n, P15200591875703433280.a n = A354032 (n + 1)

end A354032

/-! ## A354032.P16167909042627024625

`A320106(3*A065387(n+1))`
-/

namespace A354032.P16167909042627024625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (3 * A065387 (n + 1)).toNat

end

end A354032.P16167909042627024625

namespace A354032

/-- `A320106(3*A065387(n+1))` -/
def P16167909042627024625.Spec : Prop :=
  ∀ n, P16167909042627024625.a n = A354032 (n + 1)

end A354032

/-! ## A354032.P18224057008042041967

`A064680(∑{d}[n+1, #]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%2`
-/

namespace A354032.P18224057008042041967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat) 2

end

end A354032.P18224057008042041967

namespace A354032

/-- `A064680(∑{d}[n+1, #]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%2` -/
def P18224057008042041967.Spec : Prop :=
  ∀ n, P18224057008042041967.a n = A354032 (n + 1)

end A354032

/-! ## A354032.P3211585888979244951

`A177704(∑{d}[n+1, #]+A000010(n+1)+1)-1`
-/

namespace A354032.P3211585888979244951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (A000010 (n + 1) + 1)).toNat - 1

end

end A354032.P3211585888979244951

namespace A354032

/-- `A177704(∑{d}[n+1, #]+A000010(n+1)+1)-1` -/
def P3211585888979244951.Spec : Prop :=
  ∀ n, P3211585888979244951.a n = A354032 (n + 1)

end A354032

/-! ## A354032.P1187057056142370687

`and(3, A177499(A000203(n+1)+A000010(n+1)+2))`
-/

namespace A354032.P1187057056142370687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A177499 (A000203 (n + 1) + (A000010 (n + 1) + 2)).toNat)

end

end A354032.P1187057056142370687

namespace A354032

/-- `and(3, A177499(A000203(n+1)+A000010(n+1)+2))` -/
def P1187057056142370687.Spec : Prop :=
  ∀ n, P1187057056142370687.a n = A354032 (n + 1)

end A354032

/-! ## A354032.P5150966993440466672

`A277142(14*A065387(n+1))`
-/

namespace A354032.P5150966993440466672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277142 (14 * A065387 (n + 1)).toNat

end

end A354032.P5150966993440466672

namespace A354032

/-- `A277142(14*A065387(n+1))` -/
def P5150966993440466672.Spec : Prop :=
  ∀ n, P5150966993440466672.a n = A354032 (n + 1)

end A354032

/-! ## A354032.P13354303444625403643

`A123550(A009223(n+1))^n`
-/

namespace A354032.P13354303444625403643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123550 (A009223 (n + 1)).toNat ^ n

end

end A354032.P13354303444625403643

namespace A354032

/-- `A123550(A009223(n+1))^n` -/
def P13354303444625403643.Spec : Prop :=
  ∀ n, P13354303444625403643.a n = A354032 (n + 1)

end A354032

/-!
# A354033: a(n) = 1 if n > 1 and n is a power of a prime of the form 4m+3, otherwise 0.

The programs for A354033, the canonical program `A354033.P2787181633188764854` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354033 has offset 1).

The definition of A354033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174275, A354031, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354033.P2787181633188764854

`A174275(n+1)-A354031(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A354033

/-- `A174275(n+1)-A354031(n+1)` -/
def P2787181633188764854.Spec : Prop :=
  ∀ n, P2787181633188764854.a n = A354033 (n + 1)

theorem P2787181633188764854.correct : P2787181633188764854.Spec := by
  intro n
  simp only [A354033, Nat.add_sub_cancel]

end A354033

/-! ## A354033.P1445490938206525647

`A340714(n+1)%2`
-/

namespace A354033.P1445490938206525647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340714 (n + 1)) 2

end

end A354033.P1445490938206525647

namespace A354033

/-- `A340714(n+1)%2` -/
def P1445490938206525647.Spec : Prop :=
  ∀ n, P1445490938206525647.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P6114630838528087751

`A079261(∏{p}[n+1, #])`
-/

namespace A354033.P6114630838528087751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A354033.P6114630838528087751

namespace A354033

/-- `A079261(∏{p}[n+1, #])` -/
def P6114630838528087751.Spec : Prop :=
  ∀ n, P6114630838528087751.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P11044239228280931732

`A354028(∏{p}[n+1, #])`
-/

namespace A354033.P11044239228280931732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354028 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A354033.P11044239228280931732

namespace A354033

/-- `A354028(∏{p}[n+1, #])` -/
def P11044239228280931732.Spec : Prop :=
  ∀ n, P11044239228280931732.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P12200088592649378012

`char[A197504(n+2)-1]`
-/

namespace A354033.P12200088592649378012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354033.P12200088592649378012

namespace A354033

/-- `char[A197504(n+2)-1]` -/
def P12200088592649378012.Spec : Prop :=
  ∀ n, (P12200088592649378012.a n : ℤ) = A354033 (n + 1)

end A354033

/-! ## A354033.P617220428063248051

`and(2, A053191(n+1))/2`
-/

namespace A354033.P617220428063248051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A053191 (n + 1)) : ℚ) / 2

end

end A354033.P617220428063248051

namespace A354033

/-- `and(2, A053191(n+1))/2` -/
def P617220428063248051.Spec : Prop :=
  ∀ n, P617220428063248051.a n = (A354033 (n + 1) : ℚ)

end A354033

/-! ## A354033.P15470388843604632141

`and(2, A238533(n+1))/2`
-/

namespace A354033.P15470388843604632141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A238533 (n + 1)) : ℚ) / 2

end

end A354033.P15470388843604632141

namespace A354033

/-- `and(2, A238533(n+1))/2` -/
def P15470388843604632141.Spec : Prop :=
  ∀ n, P15470388843604632141.a n = (A354033 (n + 1) : ℚ)

end A354033

/-! ## A354033.P6155730712882832184

`4%(A014963(n+1)%4)`
-/

namespace A354033.P6155730712882832184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (Int.tmod (A014963 (n + 1)) 4)

end

end A354033.P6155730712882832184

namespace A354033

/-- `4%(A014963(n+1)%4)` -/
def P6155730712882832184.Spec : Prop :=
  ∀ n, P6155730712882832184.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P12760297139197656220

`and(2, A325887(2*(n+1)))/2`
-/

namespace A354033.P12760297139197656220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A325887 (2 * (n + 1))) : ℚ) / 2

end

end A354033.P12760297139197656220

namespace A354033

/-- `and(2, A325887(2*(n+1)))/2` -/
def P12760297139197656220.Spec : Prop :=
  ∀ n, P12760297139197656220.a n = (A354033 (n + 1) : ℚ)

end A354033

/-! ## A354033.P14665213637497231225

`C(A000010(n+1), 2)%gcd(2, n)`
-/

namespace A354033.P14665213637497231225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat 2 % Nat.gcd 2 n

end

end A354033.P14665213637497231225

namespace A354033

/-- `C(A000010(n+1), 2)%gcd(2, n)` -/
def P14665213637497231225.Spec : Prop :=
  ∀ n, (P14665213637497231225.a n : ℤ) = A354033 (n + 1)

end A354033

/-! ## A354033.P1560032567018748898

`A354097(A341522(n))`
-/

namespace A354033.P1560032567018748898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (A341522 n).toNat

end

end A354033.P1560032567018748898

namespace A354033

/-- `A354097(A341522(n))` -/
def P1560032567018748898.Spec : Prop :=
  ∀ n, P1560032567018748898.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P106611199424403438

`A001842(A014963(n+1))`
-/

namespace A354033.P106611199424403438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A014963 (n + 1)).toNat

end

end A354033.P106611199424403438

namespace A354033

/-- `A001842(A014963(n+1))` -/
def P106611199424403438.Spec : Prop :=
  ∀ n, P106611199424403438.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P9893223921727555735

`A001842(A020500(n+1))`
-/

namespace A354033.P9893223921727555735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A020500 (n + 1)).toNat

end

end A354033.P9893223921727555735

namespace A354033

/-- `A001842(A020500(n+1))` -/
def P9893223921727555735.Spec : Prop :=
  ∀ n, P9893223921727555735.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P9232231096107327010

`A079261(A007947(n+1))`
-/

namespace A354033.P9232231096107327010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (A007947 (n + 1)).toNat

end

end A354033.P9232231096107327010

namespace A354033

/-- `A079261(A007947(n+1))` -/
def P9232231096107327010.Spec : Prop :=
  ∀ n, P9232231096107327010.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P12344594828331344345

`A005091(A100994(n+1))`
-/

namespace A354033.P12344594828331344345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A100994 (n + 1)).toNat

end

end A354033.P12344594828331344345

namespace A354033

/-- `A005091(A100994(n+1))` -/
def P12344594828331344345.Spec : Prop :=
  ∀ n, P12344594828331344345.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P4936515683965240740

`A001842(A120007(n+1))`
-/

namespace A354033.P4936515683965240740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A120007 (n + 1)).toNat

end

end A354033.P4936515683965240740

namespace A354033

/-- `A001842(A120007(n+1))` -/
def P4936515683965240740.Spec : Prop :=
  ∀ n, P4936515683965240740.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P7908983568826834879

`A079261(A052410(n+1))`
-/

namespace A354033.P7908983568826834879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (A052410 (n + 1)).toNat

end

end A354033.P7908983568826834879

namespace A354033

/-- `A079261(A052410(n+1))` -/
def P7908983568826834879.Spec : Prop :=
  ∀ n, P7908983568826834879.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P1234905943070161818

`A121262(A014963(n+1)+1)`
-/

namespace A354033.P1234905943070161818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A014963 (n + 1) + 1).toNat

end

end A354033.P1234905943070161818

namespace A354033

/-- `A121262(A014963(n+1)+1)` -/
def P1234905943070161818.Spec : Prop :=
  ∀ n, P1234905943070161818.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P10365364823593325006

`A021913(A014963(n+1)-1)`
-/

namespace A354033.P10365364823593325006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A014963 (n + 1) - 1).toNat

end

end A354033.P10365364823593325006

namespace A354033

/-- `A021913(A014963(n+1)-1)` -/
def P10365364823593325006.Spec : Prop :=
  ∀ n, P10365364823593325006.a n = A354033 (n + 1)

end A354033

/-! ## A354033.P4289033622930190225

`A000741(n+1)%A010693(n)`
-/

namespace A354033.P4289033622930190225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000741 (n + 1)) (A010693 n)

end

end A354033.P4289033622930190225

namespace A354033

/-- `A000741(n+1)%A010693(n)` -/
def P4289033622930190225.Spec : Prop :=
  ∀ n, P4289033622930190225.a n = A354033 (n + 1)

end A354033

/-!
# A354034: a(n) = 1 if n is an even number or a square, otherwise 0.

The programs for A354034, the canonical program `A354034.P58261609399976325` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354034 has offset 0).

The definition of A354034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098108, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354034.P58261609399976325

`A059841(n)+A098108(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A354034

/-- `A059841(n)+A098108(n)` -/
def P58261609399976325.Spec : Prop :=
  ∀ n, P58261609399976325.a n = A354034 n

theorem P58261609399976325.correct : P58261609399976325.Spec := by
  intro n
  simp only [A354034]

end A354034

/-! ## A354034.P5389378441977200236

`char[∪[2*n, n²]]`
-/

namespace A354034.P5389378441977200236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354034.P5389378441977200236

namespace A354034

/-- `char[∪[2*n, n²]]` -/
def P5389378441977200236.Spec : Prop :=
  ∀ n, (P5389378441977200236.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P16728018251574706119

`char[n^(n%2+1)]`
-/

namespace A354034.P16728018251574706119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2 + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354034.P16728018251574706119

namespace A354034

/-- `char[n^(n%2+1)]` -/
def P16728018251574706119.Spec : Prop :=
  ∀ n, (P16728018251574706119.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P9159960780277855201

`char[n^gcd(2, n+1)]`
-/

namespace A354034.P9159960780277855201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354034.P9159960780277855201

namespace A354034

/-- `char[n^gcd(2, n+1)]` -/
def P9159960780277855201.Spec : Prop :=
  ∀ n, (P9159960780277855201.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P8089937078516413984

`char[n^(and(1, n)+1)]`
-/

namespace A354034.P8089937078516413984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (Nat.land 1 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354034.P8089937078516413984

namespace A354034

/-- `char[n^(and(1, n)+1)]` -/
def P8089937078516413984.Spec : Prop :=
  ∀ n, (P8089937078516413984.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P6220255423959747515

`char[n^2^and(1, n)]`
-/

namespace A354034.P6220255423959747515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 ^ Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354034.P6220255423959747515

namespace A354034

/-- `char[n^2^and(1, n)]` -/
def P6220255423959747515.Spec : Prop :=
  ∀ n, (P6220255423959747515.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P10728597621864566252

`char[lcm(n, 2-char[n²])]`
-/

namespace A354034.P10728597621864566252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354034.P10728597621864566252

namespace A354034

/-- `char[lcm(n, 2-char[n²])]` -/
def P10728597621864566252.Spec : Prop :=
  ∀ n, (P10728597621864566252.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P18077690191180794055

`char[and(n, char[n²]-2)]`
-/

namespace A354034.P18077690191180794055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354034.P18077690191180794055

namespace A354034

/-- `char[and(n, char[n²]-2)]` -/
def P18077690191180794055.Spec : Prop :=
  ∀ n, (P18077690191180794055.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P168242988786427346

`or(char[2*n], char[n²])`
-/

namespace A354034.P168242988786427346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = n then 1 else 0)

end

end A354034.P168242988786427346

namespace A354034

/-- `or(char[2*n], char[n²])` -/
def P168242988786427346.Spec : Prop :=
  ∀ n, (P168242988786427346.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P13680388611844098292

`∏{e}[n, n*#+1]%2`
-/

namespace A354034.P13680388611844098292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)) % 2

end

end A354034.P13680388611844098292

namespace A354034

/-- `∏{e}[n, n*#+1]%2` -/
def P13680388611844098292.Spec : Prop :=
  ∀ n, (P13680388611844098292.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P9957104707490998179

`and(1, ∏{e}[n, n*#+1])`
-/

namespace A354034.P9957104707490998179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1))

end

end A354034.P9957104707490998179

namespace A354034

/-- `and(1, ∏{e}[n, n*#+1])` -/
def P9957104707490998179.Spec : Prop :=
  ∀ n, (P9957104707490998179.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P12340247586678029459

`gcd(n-1, ∑{d}[n, #])%2`
-/

namespace A354034.P12340247586678029459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) % 2

end

end A354034.P12340247586678029459

namespace A354034

/-- `gcd(n-1, ∑{d}[n, #])%2` -/
def P12340247586678029459.Spec : Prop :=
  ∀ n, (P12340247586678029459.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P161741733254409212

`or(n+1, ∑{d}[n, #])%2`
-/

namespace A354034.P161741733254409212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) % 2

end

end A354034.P161741733254409212

namespace A354034

/-- `or(n+1, ∑{d}[n, #])%2` -/
def P161741733254409212.Spec : Prop :=
  ∀ n, (P161741733254409212.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P18392716475301676075

`(n+1)²%(char[n²]+2)`
-/

namespace A354034.P18392716475301676075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A354034.P18392716475301676075

namespace A354034

/-- `(n+1)²%(char[n²]+2)` -/
def P18392716475301676075.Spec : Prop :=
  ∀ n, (P18392716475301676075.a n : ℤ) = A354034 n

end A354034

/-! ## A354034.P5260584909373516054

`and(1, A062319(n))`
-/

namespace A354034.P5260584909373516054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A062319 n)

end

end A354034.P5260584909373516054

namespace A354034

/-- `and(1, A062319(n))` -/
def P5260584909373516054.Spec : Prop :=
  ∀ n, P5260584909373516054.a n = A354034 n

end A354034

/-! ## A354034.P12332373944667228096

`gcd(2, A038760(n))-1`
-/

namespace A354034.P12332373944667228096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A038760 n) : ℤ) - 1

end

end A354034.P12332373944667228096

namespace A354034

/-- `gcd(2, A038760(n))-1` -/
def P12332373944667228096.Spec : Prop :=
  ∀ n, P12332373944667228096.a n = A354034 n

end A354034

/-! ## A354034.P16730386006306789519

`A010052(lcm(2, n)-n)`
-/

namespace A354034.P16730386006306789519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.lcm 2 n - n)

end

end A354034.P16730386006306789519

namespace A354034

/-- `A010052(lcm(2, n)-n)` -/
def P16730386006306789519.Spec : Prop :=
  ∀ n, P16730386006306789519.a n = A354034 n

end A354034

/-! ## A354034.P6626671069784563057

`1-and(n, A267635(n))`
-/

namespace A354034.P6626671069784563057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (A267635 n)

end

end A354034.P6626671069784563057

namespace A354034

/-- `1-and(n, A267635(n))` -/
def P6626671069784563057.Spec : Prop :=
  ∀ n, P6626671069784563057.a n = A354034 n

end A354034

/-! ## A354034.P6051626701543574307

`A266178(n*a(n-1))` with `a(0)=1`
-/

namespace A354034.P6051626701543574307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266178 ((n : ℤ) * a (n - 1)).toNat

end

end A354034.P6051626701543574307

namespace A354034

/-- `A266178(n*a(n-1))` -/
def P6051626701543574307.Spec : Prop :=
  ∀ n, P6051626701543574307.a n = A354034 n

end A354034

/-!
# A354035: a(n) = 1 if n is odd and sigma(n^2) == 3 (mod 4), otherwise 0.

The programs for A354035, the canonical program `A354035.P17145571393381424907` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354035 has offset 1).

The definition of A354035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354035.P6318012506871211328

`A000035(n+1)-A354036(n+1)`
-/

namespace A354035.P6318012506871211328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A354036 (n + 1)

end

end A354035.P6318012506871211328

namespace A354035

/-- `A000035(n+1)-A354036(n+1)` -/
def P6318012506871211328.Spec : Prop :=
  ∀ n, P6318012506871211328.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P4403763903761298077

`A358773(2*(n+1))`
-/

namespace A354035.P4403763903761298077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (2 * (n + 1))

end

end A354035.P4403763903761298077

namespace A354035

/-- `A358773(2*(n+1))` -/
def P4403763903761298077.Spec : Prop :=
  ∀ n, P4403763903761298077.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P6911623555169634405

`A354036(5*(n+1))`
-/

namespace A354035.P6911623555169634405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354036 (5 * (n + 1))

end

end A354035.P6911623555169634405

namespace A354035

/-- `A354036(5*(n+1))` -/
def P6911623555169634405.Spec : Prop :=
  ∀ n, P6911623555169634405.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P3834240942276626925

`A358771(10*(n+1))`
-/

namespace A354035.P3834240942276626925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (10 * (n + 1))

end

end A354035.P3834240942276626925

namespace A354035

/-- `A358771(10*(n+1))` -/
def P3834240942276626925.Spec : Prop :=
  ∀ n, P3834240942276626925.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P2737812557545346112

`char[A324909(n+1)-1]`
-/

namespace A354035.P2737812557545346112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354035.P2737812557545346112

namespace A354035

/-- `char[A324909(n+1)-1]` -/
def P2737812557545346112.Spec : Prop :=
  ∀ n, (P2737812557545346112.a n : ℤ) = A354035 (n + 1)

end A354035

/-! ## A354035.P18032983469173176930

`and(2, A068719(n+1))/2`
-/

namespace A354035.P18032983469173176930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A068719 (n + 1)) : ℚ) / 2

end

end A354035.P18032983469173176930

namespace A354035

/-- `and(2, A068719(n+1))/2` -/
def P18032983469173176930.Spec : Prop :=
  ∀ n, P18032983469173176930.a n = (A354035 (n + 1) : ℚ)

end A354035

/-! ## A354035.P8610224943813465115

`and(2, A166586(n+1))/2`
-/

namespace A354035.P8610224943813465115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A166586 (n + 1)) : ℚ) / 2

end

end A354035.P8610224943813465115

namespace A354035

/-- `and(2, A166586(n+1))/2` -/
def P8610224943813465115.Spec : Prop :=
  ∀ n, P8610224943813465115.a n = (A354035 (n + 1) : ℚ)

end A354035

/-! ## A354035.P15369138299478523565

`and(2, A166590(n+1))/2`
-/

namespace A354035.P15369138299478523565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A166590 (n + 1)) : ℚ) / 2

end

end A354035.P15369138299478523565

namespace A354035

/-- `and(2, A166590(n+1))/2` -/
def P15369138299478523565.Spec : Prop :=
  ∀ n, P15369138299478523565.a n = (A354035 (n + 1) : ℚ)

end A354035

/-! ## A354035.P16230448649372554311

`and(2, A166676(n+1))/2`
-/

namespace A354035.P16230448649372554311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A166676 (n + 1)) : ℚ) / 2

end

end A354035.P16230448649372554311

namespace A354035

/-- `and(2, A166676(n+1))/2` -/
def P16230448649372554311.Spec : Prop :=
  ∀ n, P16230448649372554311.a n = (A354035 (n + 1) : ℚ)

end A354035

/-! ## A354035.P9927310378621053404

`and(1, A338939(n+1)+n)`
-/

namespace A354035.P9927310378621053404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338939 (n + 1) + (n : ℤ))

end

end A354035.P9927310378621053404

namespace A354035

/-- `and(1, A338939(n+1)+n)` -/
def P9927310378621053404.Spec : Prop :=
  ∀ n, P9927310378621053404.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P6585705076689177786

`and(Δ[A003415(n)²], char[2*n])`
-/

namespace A354035.P6585705076689177786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A354035.P6585705076689177786

namespace A354035

/-- `and(Δ[A003415(n)²], char[2*n])` -/
def P6585705076689177786.Spec : Prop :=
  ∀ n, P6585705076689177786.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P8156041052533688015

`and(1, (n+1)*(∑[n]+A001222(n+1)))`
-/

namespace A354035.P8156041052533688015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A001222 (n + 1)))

end

end A354035.P8156041052533688015

namespace A354035

/-- `and(1, (n+1)*(∑[n]+A001222(n+1)))` -/
def P8156041052533688015.Spec : Prop :=
  ∀ n, P8156041052533688015.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P1346336640958446199

`(A343226(n+1)+∑[abs(1-n)])%gcd(2, n)`
-/

namespace A354035.P1346336640958446199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343226 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) (Nat.gcd 2 n : ℤ)

end

end A354035.P1346336640958446199

namespace A354035

/-- `(A343226(n+1)+∑[abs(1-n)])%gcd(2, n)` -/
def P1346336640958446199.Spec : Prop :=
  ∀ n, P1346336640958446199.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P16239955542120968718

`A021913(A092147(n+1))`
-/

namespace A354035.P16239955542120968718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A092147 (n + 1)).toNat

end

end A354035.P16239955542120968718

namespace A354035

/-- `A021913(A092147(n+1))` -/
def P16239955542120968718.Spec : Prop :=
  ∀ n, P16239955542120968718.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P14363656459529964296

`A021913(A166586(n+1))`
-/

namespace A354035.P14363656459529964296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A166586 (n + 1)).toNat

end

end A354035.P14363656459529964296

namespace A354035

/-- `A021913(A166586(n+1))` -/
def P14363656459529964296.Spec : Prop :=
  ∀ n, P14363656459529964296.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P2355545516945228562

`and(A059841(n), A258057(n))`
-/

namespace A354035.P2355545516945228562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 n) (A258057 n)

end

end A354035.P2355545516945228562

namespace A354035

/-- `and(A059841(n), A258057(n))` -/
def P2355545516945228562.Spec : Prop :=
  ∀ n, P2355545516945228562.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P1219162616718272989

`and(A258057(n), A267043(n))`
-/

namespace A354035.P1219162616718272989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258057 n) (A267043 n)

end

end A354035.P1219162616718272989

namespace A354035

/-- `and(A258057(n), A267043(n))` -/
def P1219162616718272989.Spec : Prop :=
  ∀ n, P1219162616718272989.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P10819150448573652436

`A059841(A354036(n+1)+n)`
-/

namespace A354035.P10819150448573652436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A354036 (n + 1) + (n : ℤ)).toNat

end

end A354035.P10819150448573652436

namespace A354035

/-- `A059841(A354036(n+1)+n)` -/
def P10819150448573652436.Spec : Prop :=
  ∀ n, P10819150448573652436.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P2638233534734171322

`A046080(n+1)%A040001(n)`
-/

namespace A354035.P2638233534734171322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046080 (n + 1)) (A040001 n)

end

end A354035.P2638233534734171322

namespace A354035

/-- `A046080(n+1)%A040001(n)` -/
def P2638233534734171322.Spec : Prop :=
  ∀ n, P2638233534734171322.a n = A354035 (n + 1)

end A354035

/-! ## A354035.P17145571393381424907

`A010684(n)%A081325(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A354035

/-- `A010684(n)%A081325(n+1)` -/
def P17145571393381424907.Spec : Prop :=
  ∀ n, P17145571393381424907.a n = A354035 (n + 1)

theorem P17145571393381424907.correct : P17145571393381424907.Spec := by
  intro n
  simp only [A354035, Nat.add_sub_cancel]

end A354035

/-!
# A354036: a(n) = 1 if n is odd and sigma(n^2) == 1 (mod 4), otherwise 0.

The programs for A354036, the canonical program `A354036.P7262506403534622663` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354036 has offset 1).

The definition of A354036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354035, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354036.P7262506403534622663

`A000035(n+1)-A354035(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A354036

/-- `A000035(n+1)-A354035(n+1)` -/
def P7262506403534622663.Spec : Prop :=
  ∀ n, P7262506403534622663.a n = A354036 (n + 1)

theorem P7262506403534622663.correct : P7262506403534622663.Spec := by
  intro n
  simp only [A354036, Nat.add_sub_cancel]

end A354036

/-! ## A354036.P2318774090650721004

`A358771(2*(n+1))`
-/

namespace A354036.P2318774090650721004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (2 * (n + 1))

end

end A354036.P2318774090650721004

namespace A354036

/-- `A358771(2*(n+1))` -/
def P2318774090650721004.Spec : Prop :=
  ∀ n, P2318774090650721004.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P3114890599913054156

`A354035(5*(n+1))`
-/

namespace A354036.P3114890599913054156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354035 (5 * (n + 1))

end

end A354036.P3114890599913054156

namespace A354036

/-- `A354035(5*(n+1))` -/
def P3114890599913054156.Spec : Prop :=
  ∀ n, P3114890599913054156.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P1374560984144607477

`A358773(10*(n+1))`
-/

namespace A354036.P1374560984144607477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (10 * (n + 1))

end

end A354036.P1374560984144607477

namespace A354036

/-- `A358773(10*(n+1))` -/
def P1374560984144607477.Spec : Prop :=
  ∀ n, P1374560984144607477.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P4082717081534843757

`and(1, A338939(n+1)+1)`
-/

namespace A354036.P4082717081534843757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338939 (n + 1) + 1)

end

end A354036.P4082717081534843757

namespace A354036

/-- `and(1, A338939(n+1)+1)` -/
def P4082717081534843757.Spec : Prop :=
  ∀ n, P4082717081534843757.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P9321868089581218766

`(A343226(n+1)+∑[n])%gcd(2, n)`
-/

namespace A354036.P9321868089581218766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343226 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (Nat.gcd 2 n : ℤ)

end

end A354036.P9321868089581218766

namespace A354036

/-- `(A343226(n+1)+∑[n])%gcd(2, n)` -/
def P9321868089581218766.Spec : Prop :=
  ∀ n, P9321868089581218766.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P2705526111862714281

`and(A016003(n+1)+∑[n], -(n+1))%2`
-/

namespace A354036.P2705526111862714281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A016003 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (-(n + 1 : ℤ))) 2

end

end A354036.P2705526111862714281

namespace A354036

/-- `and(A016003(n+1)+∑[n], -(n+1))%2` -/
def P2705526111862714281.Spec : Prop :=
  ∀ n, P2705526111862714281.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P7926084439060158875

`and(1, (n+1)*(∑[n+1]+A001222(n+1)))`
-/

namespace A354036.P7926084439060158875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A001222 (n + 1)))

end

end A354036.P7926084439060158875

namespace A354036

/-- `and(1, (n+1)*(∑[n+1]+A001222(n+1)))` -/
def P7926084439060158875.Spec : Prop :=
  ∀ n, P7926084439060158875.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P4556549629779869324

`A003815(A166586(n+1))`
-/

namespace A354036.P4556549629779869324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A166586 (n + 1)).toNat

end

end A354036.P4556549629779869324

namespace A354036

/-- `A003815(A166586(n+1))` -/
def P4556549629779869324.Spec : Prop :=
  ∀ n, P4556549629779869324.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P2810988248195189170

`A021913(A166586(n+1)+1)`
-/

namespace A354036.P2810988248195189170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A166586 (n + 1) + 1).toNat

end

end A354036.P2810988248195189170

namespace A354036

/-- `A021913(A166586(n+1)+1)` -/
def P2810988248195189170.Spec : Prop :=
  ∀ n, P2810988248195189170.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P6104303783883481598

`A059841(A354035(n+1)+n)`
-/

namespace A354036.P6104303783883481598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A354035 (n + 1) + (n : ℤ)).toNat

end

end A354036.P6104303783883481598

namespace A354036

/-- `A059841(A354035(n+1)+n)` -/
def P6104303783883481598.Spec : Prop :=
  ∀ n, P6104303783883481598.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P16207247745336079195

`A010684(n)%A081334(n+1)`
-/

namespace A354036.P16207247745336079195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010684 n) (A081334 (n + 1))

end

end A354036.P16207247745336079195

namespace A354036

/-- `A010684(n)%A081334(n+1)` -/
def P16207247745336079195.Spec : Prop :=
  ∀ n, P16207247745336079195.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P4789793429757695071

`A010687(n)%A081334(n+1)`
-/

namespace A354036.P4789793429757695071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010687 n) (A081334 (n + 1))

end

end A354036.P4789793429757695071

namespace A354036

/-- `A010687(n)%A081334(n+1)` -/
def P4789793429757695071.Spec : Prop :=
  ∀ n, P4789793429757695071.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P15740614244519408882

`A010690(n)%A081334(n+1)`
-/

namespace A354036.P15740614244519408882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010690 n) (A081334 (n + 1))

end

end A354036.P15740614244519408882

namespace A354036

/-- `A010690(n)%A081334(n+1)` -/
def P15740614244519408882.Spec : Prop :=
  ∀ n, P15740614244519408882.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P7603937941268761551

`A010711(n)%A081334(n+1)`
-/

namespace A354036.P7603937941268761551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010711 n) (A081334 (n + 1))

end

end A354036.P7603937941268761551

namespace A354036

/-- `A010711(n)%A081334(n+1)` -/
def P7603937941268761551.Spec : Prop :=
  ∀ n, P7603937941268761551.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P5573573875069573684

`A010714(n)%A081334(n+1)`
-/

namespace A354036.P5573573875069573684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010714 n) (A081334 (n + 1))

end

end A354036.P5573573875069573684

namespace A354036

/-- `A010714(n)%A081334(n+1)` -/
def P5573573875069573684.Spec : Prop :=
  ∀ n, P5573573875069573684.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P12315920427536015566

`A010729(n)%A081334(n+1)`
-/

namespace A354036.P12315920427536015566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010729 n) (A081334 (n + 1))

end

end A354036.P12315920427536015566

namespace A354036

/-- `A010729(n)%A081334(n+1)` -/
def P12315920427536015566.Spec : Prop :=
  ∀ n, P12315920427536015566.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P12552817002271911558

`A072988(n)%A081334(n+1)`
-/

namespace A354036.P12552817002271911558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072988 n) (A081334 (n + 1))

end

end A354036.P12552817002271911558

namespace A354036

/-- `A072988(n)%A081334(n+1)` -/
def P12552817002271911558.Spec : Prop :=
  ∀ n, P12552817002271911558.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P13615307864873855390

`A078070(n)%A081334(n+1)`
-/

namespace A354036.P13615307864873855390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078070 n) (A081334 (n + 1))

end

end A354036.P13615307864873855390

namespace A354036

/-- `A078070(n)%A081334(n+1)` -/
def P13615307864873855390.Spec : Prop :=
  ∀ n, P13615307864873855390.a n = A354036 (n + 1)

end A354036

/-! ## A354036.P10739335280345792683

`A082694(n)%A081334(n+1)`
-/

namespace A354036.P10739335280345792683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082694 n) (A081334 (n + 1))

end

end A354036.P10739335280345792683

namespace A354036

/-- `A082694(n)%A081334(n+1)` -/
def P10739335280345792683.Spec : Prop :=
  ∀ n, P10739335280345792683.a n = A354036 (n + 1)

end A354036

/-!
# A354037: a(n) = 1 if sigma(n)-n is a multiple of 4, otherwise 0.

The programs for A354037, the canonical program `A354037.P7194895652706141721` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354037 has offset 1).

The definition of A354037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354037.P4958314769297818345

`C(2, and(3, A058344(n+1))+2)`
-/

namespace A354037.P4958314769297818345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land 3 (A058344 (n + 1)) + 2).toNat

end

end A354037.P4958314769297818345

namespace A354037

/-- `C(2, and(3, A058344(n+1))+2)` -/
def P4958314769297818345.Spec : Prop :=
  ∀ n, (P4958314769297818345.a n : ℤ) = A354037 (n + 1)

end A354037

/-! ## A354037.P7194895652706141721

`A029430(and(3, ∑{d}[n+1, #]-(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A354037

/-- `A029430(and(3, ∑{d}[n+1, #]-(n+1)))` -/
def P7194895652706141721.Spec : Prop :=
  ∀ n, P7194895652706141721.a n = A354037 (n + 1)

theorem P7194895652706141721.correct : P7194895652706141721.Spec := by
  intro n
  simp only [A354037, Nat.add_sub_cancel]

end A354037

/-! ## A354037.P7911144074488300580

`A035444(and(3, ∑{d}[n+1, #]-(n+1)))`
-/

namespace A354037.P7911144074488300580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (Int.land 3 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))).toNat

end

end A354037.P7911144074488300580

namespace A354037

/-- `A035444(and(3, ∑{d}[n+1, #]-(n+1)))` -/
def P7911144074488300580.Spec : Prop :=
  ∀ n, P7911144074488300580.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P6565201450149346345

`A114324(and(3, ∑{d}[n+1, #]-(n+1)))`
-/

namespace A354037.P6565201450149346345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114324 (Int.land 3 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))).toNat

end

end A354037.P6565201450149346345

namespace A354037

/-- `A114324(and(3, ∑{d}[n+1, #]-(n+1)))` -/
def P6565201450149346345.Spec : Prop :=
  ∀ n, P6565201450149346345.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P13959078122283790946

`A256012(and(3, ∑{d}[n+1, #]-(n+1)))`
-/

namespace A354037.P13959078122283790946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256012 (Int.land 3 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))).toNat

end

end A354037.P13959078122283790946

namespace A354037

/-- `A256012(and(3, ∑{d}[n+1, #]-(n+1)))` -/
def P13959078122283790946.Spec : Prop :=
  ∀ n, P13959078122283790946.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P6958014670359142325

`A121262(A001065(n+1))`
-/

namespace A354037.P6958014670359142325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A001065 (n + 1)).toNat

end

end A354037.P6958014670359142325

namespace A354037

/-- `A121262(A001065(n+1))` -/
def P6958014670359142325.Spec : Prop :=
  ∀ n, P6958014670359142325.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P15658273364145053351

`A121262(A169813(n+1))`
-/

namespace A354037.P15658273364145053351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A169813 (n + 1)).toNat

end

end A354037.P15658273364145053351

namespace A354037

/-- `A121262(A169813(n+1))` -/
def P15658273364145053351.Spec : Prop :=
  ∀ n, P15658273364145053351.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P9907064931401788517

`A058342(and(3, A058344(n+1)))`
-/

namespace A354037.P9907064931401788517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058342 (Int.land 3 (A058344 (n + 1))).toNat

end

end A354037.P9907064931401788517

namespace A354037

/-- `A058342(and(3, A058344(n+1)))` -/
def P9907064931401788517.Spec : Prop :=
  ∀ n, P9907064931401788517.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P15350556293943058588

`A058343(and(3, A058344(n+1)))`
-/

namespace A354037.P15350556293943058588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (Int.land 3 (A058344 (n + 1))).toNat

end

end A354037.P15350556293943058588

namespace A354037

/-- `A058343(and(3, A058344(n+1)))` -/
def P15350556293943058588.Spec : Prop :=
  ∀ n, P15350556293943058588.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P11375239501670380222

`A058348(and(3, A058344(n+1)))`
-/

namespace A354037.P11375239501670380222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (Int.land 3 (A058344 (n + 1))).toNat

end

end A354037.P11375239501670380222

namespace A354037

/-- `A058348(and(3, A058344(n+1)))` -/
def P11375239501670380222.Spec : Prop :=
  ∀ n, P11375239501670380222.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P5293079866218466259

`A121262(A000203(n+1)-(n+1))`
-/

namespace A354037.P5293079866218466259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

end

end A354037.P5293079866218466259

namespace A354037

/-- `A121262(A000203(n+1)-(n+1))` -/
def P5293079866218466259.Spec : Prop :=
  ∀ n, P5293079866218466259.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P15841544671985415843

`A121262(1-A002654(n+1)+n)`
-/

namespace A354037.P15841544671985415843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (1 - A002654 (n + 1) + (n : ℤ)).toNat

end

end A354037.P15841544671985415843

namespace A354037

/-- `A121262(1-A002654(n+1)+n)` -/
def P15841544671985415843.Spec : Prop :=
  ∀ n, P15841544671985415843.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P835838784153873790

`val(A000040(and(3, A058344(n+1))+1), 2)`
-/

namespace A354037.P835838784153873790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (Int.land 3 (A058344 (n + 1)) + 1).toNat).toNat 2

end

end A354037.P835838784153873790

namespace A354037

/-- `val(A000040(and(3, A058344(n+1))+1), 2)` -/
def P835838784153873790.Spec : Prop :=
  ∀ n, (P835838784153873790.a n : ℤ) = A354037 (n + 1)

end A354037

/-! ## A354037.P2474448551284971092

`val(A327526(and(3, -(A058344(n+1)+1))+1), 4)`
-/

namespace A354037.P2474448551284971092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327526 (Int.land 3 (-(A058344 (n + 1) + 1)) + 1).toNat).toNat 4

end

end A354037.P2474448551284971092

namespace A354037

/-- `val(A327526(and(3, -(A058344(n+1)+1))+1), 4)` -/
def P2474448551284971092.Spec : Prop :=
  ∀ n, (P2474448551284971092.a n : ℤ) = A354037 (n + 1)

end A354037

/-! ## A354037.P4817668149756882841

`A014017(A000203(n+1)-(n+1))²`
-/

namespace A354037.P4817668149756882841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A000203 (n + 1) - (n + 1 : ℤ)).toNat ^ 2

end

end A354037.P4817668149756882841

namespace A354037

/-- `A014017(A000203(n+1)-(n+1))²` -/
def P4817668149756882841.Spec : Prop :=
  ∀ n, P4817668149756882841.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P10029442000032937670

`A253513(A091818(n+1))`
-/

namespace A354037.P10029442000032937670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A091818 (n + 1)).toNat

end

end A354037.P10029442000032937670

namespace A354037

/-- `A253513(A091818(n+1))` -/
def P10029442000032937670.Spec : Prop :=
  ∀ n, P10029442000032937670.a n = A354037 (n + 1)

end A354037

/-! ## A354037.P9318885132710451774

`A132151(A294015(n+1))`
-/

namespace A354037.P9318885132710451774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132151 (A294015 (n + 1)).toNat

end

end A354037.P9318885132710451774

namespace A354037

/-- `A132151(A294015(n+1))` -/
def P9318885132710451774.Spec : Prop :=
  ∀ n, P9318885132710451774.a n = A354037 (n + 1)

end A354037

/-!
# A354038: Numbers k such that sum of the proper divisors of k is a multiple of 4.

The programs for A354038, there is no canonical definition to state claims against.
-/

/-! ## A354038.P7632812115337165562

`filter[n+1, A354037(#)]`
-/

namespace A354038.P7632812115337165562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354037 (f1 j) = 1) n)

end

end A354038.P7632812115337165562

/-! ## A354038.P758983584770723081

`lt[0, A354037(n+1)]+1`
-/

namespace A354038.P758983584770723081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354038.P758983584770723081

/-! ## A354038.P16596655382344571848

`eq[0, A001065(n+1)%4]+1`
-/

namespace A354038.P16596655382344571848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354038.P16596655382344571848

/-! ## A354038.P11997701585262539324

`eq[0, and(3, A058344(n+1))]+1`
-/

namespace A354038.P11997701585262539324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A058344 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354038.P11997701585262539324

/-! ## A354038.P8448049255253926468

`eq[6, and(6, A062967(n+1))]+1`
-/

namespace A354038.P8448049255253926468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A062967 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354038.P8448049255253926468

/-! ## A354038.P9709511256651546975

`eq[n%4, A105824(round(sqrt(n²+1)))]`
-/

namespace A354038.P9709511256651546975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354038.P9709511256651546975

/-! ## A354038.P16421143990115103295

`eq[1, (A000203(n+1)-n)%4]+1`
-/

namespace A354038.P16421143990115103295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - (n : ℤ)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354038.P16421143990115103295

/-! ## A354038.P16765176333119278789

`eq[1, A056594(A001065(n+1))]+1`
-/

namespace A354038.P16765176333119278789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354038.P16765176333119278789

/-! ## A354038.P5220482273979512869

`eq[0, (A000203(A028310(n))-n)%4]`
-/

namespace A354038.P5220482273979512869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A028310 n).toNat - (n : ℤ)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354038.P5220482273979512869

/-! ## A354038.P6454131531334425697

`record[(n+1)*A121262(A169813(n+1))]`
-/

namespace A354038.P6454131531334425697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121262 (A169813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354038.P6454131531334425697

/-!
# A354039: Odd numbers k for which sigma(k^2) == 1 (mod 4).

The programs for A354039, the canonical program `A354039.P14555955065410119290` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354039 has offset 1).

The definition of A354039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354039.P16745933179063892465

`lt[0, A358771(2*n)]`
-/

namespace A354039.P16745933179063892465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354039.P16745933179063892465

namespace A354039

/-- `lt[0, A358771(2*n)]` -/
def P16745933179063892465.Spec : Prop :=
  ∀ n, (P16745933179063892465.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P14555955065410119290

`lt[0, A354036(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A354039

/-- `lt[0, A354036(n+1)]+1` -/
def P14555955065410119290.Spec : Prop :=
  ∀ n, (P14555955065410119290.a n : ℤ) = A354039 (n + 1)

theorem P14555955065410119290.correct : P14555955065410119290.Spec := by
  intro n
  simp only [A354039, Nat.add_sub_cancel]

end A354039

/-! ## A354039.P16229223303494595302

`eq[1, A353493(2*n)]`
-/

namespace A354039.P16229223303494595302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354039.P16229223303494595302

namespace A354039

/-- `eq[1, A353493(2*n)]` -/
def P16229223303494595302.Spec : Prop :=
  ∀ n, (P16229223303494595302.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P4485631667759605373

`filter[A081339(n+1), A354036(#)]`
-/

namespace A354039.P4485631667759605373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P4485631667759605373

namespace A354039

/-- `filter[A081339(n+1), A354036(#)]` -/
def P4485631667759605373.Spec : Prop :=
  ∀ n, P4485631667759605373.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P17907056927649791696

`filter[A081339(n+1), A379952(#)]`
-/

namespace A354039.P17907056927649791696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A354039.P17907056927649791696

namespace A354039

/-- `filter[A081339(n+1), A379952(#)]` -/
def P17907056927649791696.Spec : Prop :=
  ∀ n, P17907056927649791696.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P3234729461246419414

`filter[A004281(n), A354036(#)]`
-/

namespace A354039.P3234729461246419414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P3234729461246419414

namespace A354039

/-- `filter[A004281(n), A354036(#)]` -/
def P3234729461246419414.Spec : Prop :=
  ∀ n, P3234729461246419414.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P15924461345509040491

`filter[A004273(n+1), A354036(#)]`
-/

namespace A354039.P15924461345509040491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P15924461345509040491

namespace A354039

/-- `filter[A004273(n+1), A354036(#)]` -/
def P15924461345509040491.Spec : Prop :=
  ∀ n, P15924461345509040491.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P606079205941412010

`filter[A004274(n+1), A354036(#)]`
-/

namespace A354039.P606079205941412010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P606079205941412010

namespace A354039

/-- `filter[A004274(n+1), A354036(#)]` -/
def P606079205941412010.Spec : Prop :=
  ∀ n, P606079205941412010.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P4521416218473344037

`filter[A004276(n+1), A354036(#)]`
-/

namespace A354039.P4521416218473344037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P4521416218473344037

namespace A354039

/-- `filter[A004276(n+1), A354036(#)]` -/
def P4521416218473344037.Spec : Prop :=
  ∀ n, P4521416218473344037.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P11425996211395285486

`filter[A004280(n+1), A354036(#)]`
-/

namespace A354039.P11425996211395285486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P11425996211395285486

namespace A354039

/-- `filter[A004280(n+1), A354036(#)]` -/
def P11425996211395285486.Spec : Prop :=
  ∀ n, P11425996211395285486.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P10081006372482058406

`filter[A060747(n+1), A354036(#)]`
-/

namespace A354039.P10081006372482058406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P10081006372482058406

namespace A354039

/-- `filter[A060747(n+1), A354036(#)]` -/
def P10081006372482058406.Spec : Prop :=
  ∀ n, P10081006372482058406.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P751339684067693042

`∩[A081339(n+1), A004273(n)]`
-/

namespace A354039.P751339684067693042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354039.P751339684067693042

namespace A354039

/-- `∩[A081339(n+1), A004273(n)]` -/
def P751339684067693042.Spec : Prop :=
  ∀ n, (P751339684067693042.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P9801077076986443796

`∩[A081339(n+1), A004274(n)]`
-/

namespace A354039.P9801077076986443796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354039.P9801077076986443796

namespace A354039

/-- `∩[A081339(n+1), A004274(n)]` -/
def P9801077076986443796.Spec : Prop :=
  ∀ n, (P9801077076986443796.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P12534363672110317615

`∩[A081339(n+1), A004276(n)]`
-/

namespace A354039.P12534363672110317615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354039.P12534363672110317615

namespace A354039

/-- `∩[A081339(n+1), A004276(n)]` -/
def P12534363672110317615.Spec : Prop :=
  ∀ n, (P12534363672110317615.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P3639134865029057204

`∩[A081339(n+1), A004281(n)]`
-/

namespace A354039.P3639134865029057204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354039.P3639134865029057204

namespace A354039

/-- `∩[A081339(n+1), A004281(n)]` -/
def P3639134865029057204.Spec : Prop :=
  ∀ n, (P3639134865029057204.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P9293478925388749938

`∩[A081339(n+1), A060747(n)]`
-/

namespace A354039.P9293478925388749938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354039.P9293478925388749938

namespace A354039

/-- `∩[A081339(n+1), A060747(n)]` -/
def P9293478925388749938.Spec : Prop :=
  ∀ n, (P9293478925388749938.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P9498023138280029790

`∩[A004280(n+1), A081339(n+1)]`
-/

namespace A354039.P9498023138280029790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354039.P9498023138280029790

namespace A354039

/-- `∩[A004280(n+1), A081339(n+1)]` -/
def P9498023138280029790.Spec : Prop :=
  ∀ n, (P9498023138280029790.a n : ℤ) = A354039 (n + 1)

end A354039

/-! ## A354039.P12816761300835081452

`filter[A053460(n+1), A354036(#)]`
-/

namespace A354039.P12816761300835081452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P12816761300835081452

namespace A354039

/-- `filter[A053460(n+1), A354036(#)]` -/
def P12816761300835081452.Spec : Prop :=
  ∀ n, P12816761300835081452.a n = A354039 (n + 1)

end A354039

/-! ## A354039.P3436740875927984939

`filter[A128201(n+1), A354036(#)]`
-/

namespace A354039.P3436740875927984939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A354039.P3436740875927984939

namespace A354039

/-- `filter[A128201(n+1), A354036(#)]` -/
def P3436740875927984939.Spec : Prop :=
  ∀ n, P3436740875927984939.a n = A354039 (n + 1)

end A354039

/-!
# A354040: a(n) is the least k such that A353709(k) has Hamming weight n.

The programs for A354040, there is no canonical definition to state claims against.
-/

/-! ## A354040.P8814266273447399025

`A353717(A354041(n))`
-/

namespace A354040.P8814266273447399025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A354041 n).toNat

end

end A354040.P8814266273447399025

/-! ## A354040.P16655127575172635638

`A353717((2^n-1)*A194884(ceil(2^(n-1))))`
-/

namespace A354040.P16655127575172635638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (((2 ^ n : ℤ) - 1) * A194884 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A354040.P16655127575172635638

/-!
# A354041: a(n) is the earliest term of A353709 with Hamming weight n.

The programs for A354041, there is no canonical definition to state claims against.
-/

/-! ## A354041.P16774310223912787055

`A353709(A354040(n))`
-/

namespace A354041.P16774310223912787055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 (A354040 n).toNat

end

end A354041.P16774310223912787055

/-! ## A354041.P2247048518721199383

`A000120(A119828(n))*A000225(n)`
-/

namespace A354041.P2247048518721199383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A119828 n).toNat * A000225 n

end

end A354041.P2247048518721199383

/-! ## A354041.P13802567328230746409

`A000225(n)*A072660(A117262(n))`
-/

namespace A354041.P13802567328230746409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A072660 (A117262 n).toNat

end

end A354041.P13802567328230746409

/-! ## A354041.P10830734017436606371

`lcm(2^n-1, A001222(A026639(n+1)))`
-/

namespace A354041.P10830734017436606371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 1) (A001222 (A026639 (n + 1)).toNat)

end

end A354041.P10830734017436606371

/-!
# A354043: Table read by rows: T(n, k) = (-1)^(n-k)*F(n, k)/k!, where F are the Faulhaber numbers A354042.

The programs for A354043, there is no canonical definition to state claims against.
-/

/-! ## A354043.P3371762435526722986

`A100196(A132062(n)²)`
-/

namespace A354043.P3371762435526722986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A132062 n ^ 2).toNat

end

end A354043.P3371762435526722986

/-! ## A354043.P13805807979275808623

`A100196(A132062(n)^2)`
-/

namespace A354043.P13805807979275808623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A132062 n ^ 2).toNat

end

end A354043.P13805807979275808623

/-! ## A354043.P13845468700483805405

`A118250(A132062(n)%A237639(n+1))`
-/

namespace A354043.P13845468700483805405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 (Int.tmod (A132062 n) (A237639 (n + 1))).toNat

end

end A354043.P13845468700483805405

/-! ## A354043.P17130674850181554269

`A145132(A106566(n)%A362709(n+3))`
-/

namespace A354043.P17130674850181554269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145132 (Int.tmod (A106566 n) (A362709 (n + 3))).toNat

end

end A354043.P17130674850181554269

/-! ## A354043.P3604965234381624586

`A145132(A106566(n))%A241210(2*n+5)`
-/

namespace A354043.P3604965234381624586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145132 (A106566 n).toNat) (A241210 (2 * n + 5))

end

end A354043.P3604965234381624586

/-!
# A354044: a(n) = 2*(-i)^n*(n*sin(c*(n+1)) - i*sin(-c*n))/sqrt(5) where c = arccos(i/2).

The programs for A354044, the canonical program `A354044.P16638237724689839295` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354044 has offset 0).

The definition of A354044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354044.P16638237724689839295

`a(n-1)+a(n-2)+A000032(n)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354044

/-- `a(n-1)+a(n-2)+A000032(n)` -/
def P16638237724689839295.Spec : Prop :=
  ∀ n, P16638237724689839295.a n = A354044 n

theorem P16638237724689839295.correct : P16638237724689839295.Spec := by
  intro n
  simp only [A354044]

end A354044

/-! ## A354044.P4285367662820530487

`A023607(n)+A000045(n)`
-/

namespace A354044.P4285367662820530487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + A000045 n

end

end A354044.P4285367662820530487

namespace A354044

/-- `A023607(n)+A000045(n)` -/
def P4285367662820530487.Spec : Prop :=
  ∀ n, P4285367662820530487.a n = A354044 n

end A354044

/-! ## A354044.P8478839712775367531

`A094588(n)+A045925(n)`
-/

namespace A354044.P8478839712775367531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n + A045925 n

end

end A354044.P8478839712775367531

namespace A354044

/-- `A094588(n)+A045925(n)` -/
def P8478839712775367531.Spec : Prop :=
  ∀ n, P8478839712775367531.a n = A354044 n

end A354044

/-! ## A354044.P7554295979263118112

`A023610(n)-A208354(n)`
-/

namespace A354044.P7554295979263118112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - A208354 n

end

end A354044.P7554295979263118112

namespace A354044

/-- `A023610(n)-A208354(n)` -/
def P7554295979263118112.Spec : Prop :=
  ∀ n, P7554295979263118112.a n = A354044 n

end A354044

/-! ## A354044.P384334327707469934

`A029907(n)+∑[A029907(n)]`
-/

namespace A354044.P384334327707469934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354044.P384334327707469934

namespace A354044

/-- `A029907(n)+∑[A029907(n)]` -/
def P384334327707469934.Spec : Prop :=
  ∀ n, P384334327707469934.a n = A354044 n

end A354044

/-! ## A354044.P7093511684922663264

`A000045(n)+∑[A094588(n)]`
-/

namespace A354044.P7093511684922663264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354044.P7093511684922663264

namespace A354044

/-- `A000045(n)+∑[A094588(n)]` -/
def P7093511684922663264.Spec : Prop :=
  ∀ n, P7093511684922663264.a n = A354044 n

end A354044

/-! ## A354044.P14873494552146927838

`A023610(n)-Δ[A029907(n)]`
-/

namespace A354044.P14873494552146927838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - (f1 (n + 1) - f1 n)

end

end A354044.P14873494552146927838

namespace A354044

/-- `A023610(n)-Δ[A029907(n)]` -/
def P14873494552146927838.Spec : Prop :=
  ∀ n, P14873494552146927838.a n = A354044 n

end A354044

/-! ## A354044.P4150070830167673348

`A061705(n+1)-A020695(n)`
-/

namespace A354044.P4150070830167673348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 (n + 1) - A020695 n

end

end A354044.P4150070830167673348

namespace A354044

/-- `A061705(n+1)-A020695(n)` -/
def P4150070830167673348.Spec : Prop :=
  ∀ n, P4150070830167673348.a n = A354044 n

end A354044

/-! ## A354044.P17254380904236162379

`A088209(n)-A000045(n+1)`
-/

namespace A354044.P17254380904236162379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n - A000045 (n + 1)

end

end A354044.P17254380904236162379

namespace A354044

/-- `A088209(n)-A000045(n+1)` -/
def P17254380904236162379.Spec : Prop :=
  ∀ n, P17254380904236162379.a n = A354044 n

end A354044

/-! ## A354044.P1013962336815057814

`A099920(n+1)-A000032(n)`
-/

namespace A354044.P1013962336815057814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) - A000032 n

end

end A354044.P1013962336815057814

namespace A354044

/-- `A099920(n+1)-A000032(n)` -/
def P1013962336815057814.Spec : Prop :=
  ∀ n, P1013962336815057814.a n = A354044 n

end A354044

/-! ## A354044.P18427755370761723339

`A045925(n+1)-A212804(n)`
-/

namespace A354044.P18427755370761723339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) - A212804 n

end

end A354044.P18427755370761723339

namespace A354044

/-- `A045925(n+1)-A212804(n)` -/
def P18427755370761723339.Spec : Prop :=
  ∀ n, P18427755370761723339.a n = A354044 n

end A354044

/-! ## A354044.P7868569482826957669

`A131412(n+1)-A192967(n)`
-/

namespace A354044.P7868569482826957669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131412 (n + 1) - A192967 n

end

end A354044.P7868569482826957669

namespace A354044

/-- `A131412(n+1)-A192967(n)` -/
def P7868569482826957669.Spec : Prop :=
  ∀ n, P7868569482826957669.a n = A354044 n

end A354044

/-! ## A354044.P12448747688026729487

`A088209(n)-A212804(n+2)`
-/

namespace A354044.P12448747688026729487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n - A212804 (n + 2)

end

end A354044.P12448747688026729487

namespace A354044

/-- `A088209(n)-A212804(n+2)` -/
def P12448747688026729487.Spec : Prop :=
  ∀ n, P12448747688026729487.a n = A354044 n

end A354044

/-! ## A354044.P1375026098096905345

`A178521(n)+2*A000045(n)`
-/

namespace A354044.P1375026098096905345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 n + 2 * A000045 n

end

end A354044.P1375026098096905345

namespace A354044

/-- `A178521(n)+2*A000045(n)` -/
def P1375026098096905345.Spec : Prop :=
  ∀ n, P1375026098096905345.a n = A354044 n

end A354044

/-! ## A354044.P13452867126241673778

`A099920(n)+n*A212804(n)`
-/

namespace A354044.P13452867126241673778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n + (n : ℤ) * A212804 n

end

end A354044.P13452867126241673778

namespace A354044

/-- `A099920(n)+n*A212804(n)` -/
def P13452867126241673778.Spec : Prop :=
  ∀ n, P13452867126241673778.a n = A354044 n

end A354044

/-! ## A354044.P9628202657289362352

`A045925(n+1)-Δ[A000045(n)]`
-/

namespace A354044.P9628202657289362352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) - (f1 (n + 1) - f1 n)

end

end A354044.P9628202657289362352

namespace A354044

/-- `A045925(n+1)-Δ[A000045(n)]` -/
def P9628202657289362352.Spec : Prop :=
  ∀ n, P9628202657289362352.a n = A354044 n

end A354044

/-! ## A354044.P8349290010221020102

`A000045(n)+n*∑[A212804(n)]`
-/

namespace A354044.P8349290010221020102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354044.P8349290010221020102

namespace A354044

/-- `A000045(n)+n*∑[A212804(n)]` -/
def P8349290010221020102.Spec : Prop :=
  ∀ n, P8349290010221020102.a n = A354044 n

end A354044

/-! ## A354044.P13315350842024685002

`A264147(n+1)+A136391(n+1)`
-/

namespace A354044.P13315350842024685002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 1) + A136391 (n + 1)

end

end A354044.P13315350842024685002

namespace A354044

/-- `A264147(n+1)+A136391(n+1)` -/
def P13315350842024685002.Spec : Prop :=
  ∀ n, P13315350842024685002.a n = A354044 n

end A354044

/-!
# A354045: Row sums of A354043.

The programs for A354045, there is no canonical definition to state claims against.
-/

/-! ## A354045.P10973868042965654108

`A005100(∏{d}[floor(2^(n-1)), #])+and(44, n^4)`
-/

namespace A354045.P10973868042965654108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (∏ d ∈ Nat.divisors (f1 n).natAbs, d) + (Nat.land 44 (n ^ 4) : ℤ)

end

end A354045.P10973868042965654108

/-! ## A354045.P10211926354594034655

`∑{d}[A007696(n), A126207(#)]`
-/

namespace A354045.P10211926354594034655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A126207 d

end

end A354045.P10211926354594034655

/-!
# A354047: A169683 read as ternary numbers.

The programs for A354047, there is no canonical definition to state claims against.
-/

/-! ## A354047.P10698184099490494329

`lt[A309890(n+1), 3]`
-/

namespace A354047.P10698184099490494329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354047.P10698184099490494329

/-! ## A354047.P1486145522666531979

`eq[A309890(A309890(n+1)+1), A309890(n+1)]`
-/

namespace A354047.P1486145522666531979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (A309890 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P1486145522666531979

/-! ## A354047.P7766617333217248409

`lt[A006997(n), 2]`
-/

namespace A354047.P7766617333217248409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354047.P7766617333217248409

/-! ## A354047.P14149582176369790486

`lt[A100480(n+1)-1, 2]`
-/

namespace A354047.P14149582176369790486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354047.P14149582176369790486

/-! ## A354047.P7917499842144185896

`eq[A006997(n), A064990(n)]`
-/

namespace A354047.P7917499842144185896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P7917499842144185896

/-! ## A354047.P4020353063758698773

`eq[A006997(n), A189632(n+1)]`
-/

namespace A354047.P4020353063758698773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P4020353063758698773

/-! ## A354047.P18266473128717954897

`eq[A006997(n), A189640(n+1)]`
-/

namespace A354047.P18266473128717954897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P18266473128717954897

/-! ## A354047.P14167540372070840094

`eq[A006997(n), A189820(n+1)]`
-/

namespace A354047.P14167540372070840094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P14167540372070840094

/-! ## A354047.P10808946976976162455

`eq[A081603(n), A189632(n+1)]`
-/

namespace A354047.P10808946976976162455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P10808946976976162455

/-! ## A354047.P12993567567114852028

`eq[A081603(n), A189640(n+1)]`
-/

namespace A354047.P12993567567114852028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P12993567567114852028

/-! ## A354047.P17282968010702451092

`eq[A189632(n+1), A273513(n)]`
-/

namespace A354047.P17282968010702451092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P17282968010702451092

/-! ## A354047.P17054724825797269816

`eq[A189640(n+1), A273513(n)]`
-/

namespace A354047.P17054724825797269816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P17054724825797269816

/-! ## A354047.P18180320383855179847

`eq[A006997(n), A007089(A006997(n)²)]`
-/

namespace A354047.P18180320383855179847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A006997 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P18180320383855179847

/-! ## A354047.P16837901858246287805

`eq[A006997(A006997(n)+1), A006997(n)]`
-/

namespace A354047.P16837901858246287805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (A006997 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P16837901858246287805

/-! ## A354047.P4330440599446746525

`eq[A006997(2*A006997(n)), A006997(n)]`
-/

namespace A354047.P4330440599446746525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (2 * A006997 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P4330440599446746525

/-! ## A354047.P17184382426153453511

`eq[A100480(A100480(n+1)+1), A100480(n+1)]`
-/

namespace A354047.P17184382426153453511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (A100480 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P17184382426153453511

/-! ## A354047.P6103828138281976861

`eq[A268811(A268811(n+1)+1), A268811(n+1)]`
-/

namespace A354047.P6103828138281976861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (A268811 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354047.P6103828138281976861

/-! ## A354047.P2992955020867932556

`record[A360413(n)]`
-/

namespace A354047.P2992955020867932556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354047.P2992955020867932556

/-! ## A354047.P4029717205252190163

`eq[n, A353824(n)]`
-/

namespace A354047.P4029717205252190163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354047.P4029717205252190163

/-! ## A354047.P6697769325436173181

`eq[n, A353825(n)]`
-/

namespace A354047.P6697769325436173181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354047.P6697769325436173181

/-!
# A354049: The smallest number that includes all the digits of n but does not equal n.

The programs for A354049, there is no canonical definition to state claims against.
-/

/-! ## A354049.P17857249361583822167

`A354113(n)^A036600(n)!`
-/

namespace A354049.P17857249361583822167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354113 n ^ Nat.factorial (A036600 n).toNat

end

end A354049.P17857249361583822167

/-! ## A354049.P8128910054386026896

`A354113(n)^A108782(n)!`
-/

namespace A354049.P8128910054386026896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354113 n ^ Nat.factorial (A108782 n).toNat

end

end A354049.P8128910054386026896

/-! ## A354049.P15985207156337844657

`A354113(n)^A267479(n)!`
-/

namespace A354049.P15985207156337844657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354113 n ^ Nat.factorial (A267479 n).toNat

end

end A354049.P15985207156337844657

/-!
# A354050: a(n) is the number of distinct numbers of intercalates that an orthogonal diagonal Latin square of order n can have.

The programs for A354050, there is no canonical definition to state claims against.
-/

/-! ## A354050.P13091675065671944164

`A202034(A168317(n))`
-/

namespace A354050.P13091675065671944164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202034 (A168317 n).toNat

end

end A354050.P13091675065671944164

/-! ## A354050.P549682120211114038

`A054170(A130152(n+2))`
-/

namespace A354050.P549682120211114038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054170 (A130152 (n + 2)).toNat

end

end A354050.P549682120211114038

/-! ## A354050.P12615627850806415974

`A284421(n)%A036613(n)`
-/

namespace A354050.P12615627850806415974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284421 n) (A036613 n)

end

end A354050.P12615627850806415974

/-! ## A354050.P11030204168147176220

`A148393(n)%A250260(n)`
-/

namespace A354050.P11030204168147176220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148393 n) (A250260 n)

end

end A354050.P11030204168147176220

/-! ## A354050.P13209261470660611323

`A338996(n)%A238426(n)`
-/

namespace A354050.P13209261470660611323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338996 n) (A238426 n)

end

end A354050.P13209261470660611323

/-!
# A354054: a(n) = Product_{k=0..n} (k^6 + 1).

The programs for A354054, there is no canonical definition to state claims against.
-/

/-! ## A354054.P9952573477939169659

`∏[n^6+1]`
-/

namespace A354054.P9952573477939169659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A354054.P9952573477939169659

/-! ## A354054.P1885421370331058225

`(n^6+1)*a(n-1)` with `a(0)=1`
-/

namespace A354054.P1885421370331058225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 6 + 1) * a (n - 1)

end

end A354054.P1885421370331058225

/-! ## A354054.P11631498970779721200

`ceil((A001014(n)+1)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A354054.P11631498970779721200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A001014 n + 1) * a (n - 1)

end

end A354054.P11631498970779721200

/-! ## A354054.P16835794702287696935

`ceil((A000578(n²)+1)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A354054.P16835794702287696935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000578 (n ^ 2) + 1) * a (n - 1)

end

end A354054.P16835794702287696935

/-! ## A354054.P741233254544361500

`sqrt(∏[A002604(n)²])`
-/

namespace A354054.P741233254544361500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A354054.P741233254544361500

/-!
# A354056: Product_{n>=1} 1 / (1 - x^n)^(a(n)/n!) = 1 + sinh(x).

The programs for A354056, there is no canonical definition to state claims against.
-/

/-! ## A354056.P10826432741743145094

`xor(A137375(n+2), A204455(A364324(n)))`
-/

namespace A354056.P10826432741743145094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A137375 (n + 2)) (A204455 (A364324 n).toNat)

end

end A354056.P10826432741743145094

/-!
# A354057: Square array read by ascending antidiagonals: T(n,k) is the number of solutions to x^k == 1 (mod n).

The programs for A354057, there is no canonical definition to state claims against.
-/

/-! ## A354057.P16275741764913665462

`A006519(or(A116700(n+1), A141412(n)))`
-/

namespace A354057.P16275741764913665462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.lor (A116700 (n + 1)) (A141412 n)).toNat

end

end A354057.P16275741764913665462

/-! ## A354057.P8417995209448134237

`A082855(A327924(n+1)%A304756(n+5))`
-/

namespace A354057.P8417995209448134237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082855 (Int.tmod (A327924 (n + 1)) (A304756 (n + 5))).toNat

end

end A354057.P8417995209448134237

/-! ## A354057.P7473781074763573085

`A139251(A327924(n+1))%A200165(3*n+2)`
-/

namespace A354057.P7473781074763573085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139251 (A327924 (n + 1)).toNat) (A200165 (3 * n + 2))

end

end A354057.P7473781074763573085

/-! ## A354057.P10438769367576626291

`A163374(A327924(n+1)^7)`
-/

namespace A354057.P10438769367576626291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163374 (A327924 (n + 1) ^ 7).toNat

end

end A354057.P10438769367576626291

/-! ## A354057.P6351719111349160394

`A033151(A327924(n+1)²²)`
-/

namespace A354057.P6351719111349160394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033151 ((A327924 (n + 1) ^ 2) ^ 2).toNat

end

end A354057.P6351719111349160394

/-!
# A354058: Square array read by ascending antidiagonals: T(n,k) is the number of degree-k primitive Dirichlet characters modulo n.

The programs for A354058, there is no canonical definition to state claims against.
-/

/-! ## A354058.P9442778723835807092

`A293449(A341738(n+1))`
-/

namespace A354058.P9442778723835807092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293449 (A341738 (n + 1)).toNat

end

end A354058.P9442778723835807092

/-! ## A354058.P13060714743715150415

`A243148(lcm(n, ∏{p}[A327751(n), #]))`
-/

namespace A354058.P13060714743715150415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (Nat.lcm n (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p))

end

end A354058.P13060714743715150415

/-! ## A354058.P13181252308122535844

`A007088(∑[A047874(n+1)])%2`
-/

namespace A354058.P13181252308122535844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A354058.P13181252308122535844

/-! ## A354058.P7632736114386978899

`A106108(∑[A047874(n+1)])%2`
-/

namespace A354058.P7632736114386978899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A354058.P7632736114386978899

/-! ## A354058.P13085452599080255884

`A098725(A163672(n+1)*A326476(n))`
-/

namespace A354058.P13085452599080255884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A163672 (n + 1) * A326476 n).toNat

end

end A354058.P13085452599080255884

/-!
# A354059: Square array read by ascending antidiagonals: T(n,k) is the number of elements in the multiplicative group of integers modulo n that have order k.

The programs for A354059, there is no canonical definition to state claims against.
-/

/-! ## A354059.P433521232820602619

`and(A157399(n+1), A380959(n))`
-/

namespace A354059.P433521232820602619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157399 (n + 1)) (A380959 n)

end

end A354059.P433521232820602619

/-! ## A354059.P12388841730143116616

`and(A318259(n), A380959(n))`
-/

namespace A354059.P12388841730143116616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318259 n) (A380959 n)

end

end A354059.P12388841730143116616

/-! ## A354059.P7262744487847736593

`and(A144107(n+1), A380959(n))`
-/

namespace A354059.P7262744487847736593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144107 (n + 1)) (A380959 n)

end

end A354059.P7262744487847736593

/-! ## A354059.P16299901081480693490

`and(A290307(A060126(n)), A318259(n))`
-/

namespace A354059.P16299901081480693490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290307 (A060126 n).toNat) (A318259 n)

end

end A354059.P16299901081480693490

/-! ## A354059.P1012165377867828176

`and(A157397(n+1), A380959(n))`
-/

namespace A354059.P1012165377867828176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157397 (n + 1)) (A380959 n)

end

end A354059.P1012165377867828176

/-!
# A354060: Irregular table read by rows: T(n,k) is the number of solutions to x^k == 1 (mod n), 1 <= k <= psi(n), psi = A002322.

The programs for A354060, there is no canonical definition to state claims against.
-/

/-! ## A354060.P6477224981197915453

`gcd(∑[A125876(2*(n+1))], A163822(n+1))`
-/

namespace A354060.P6477224981197915453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125876 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A163822 (n + 1))

end

end A354060.P6477224981197915453

/-! ## A354060.P14915713539641631040

`A005811(A048671(n+1)^A178697(n))`
-/

namespace A354060.P14915713539641631040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A048671 (n + 1) : ℚ) ^ (A178697 n : ℤ))).toNat

end

end A354060.P14915713539641631040

/-! ## A354060.P7950754297570868036

`A051700(A281145(n+1)+n)`
-/

namespace A354060.P7950754297570868036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A281145 (n + 1) + (n : ℤ)).toNat

end

end A354060.P7950754297570868036

/-! ## A354060.P6382184519821414638

`gcd(A312561(A023551(n+1)), A322820(n+1))`
-/

namespace A354060.P6382184519821414638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A312561 (A023551 (n + 1)).toNat) (A322820 (n + 1))

end

end A354060.P6382184519821414638

/-! ## A354060.P8340713844828912275

`gcd(A000010(A242554(n+1)), A242557(3*n+4))`
-/

namespace A354060.P8340713844828912275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A242554 (n + 1)).toNat) (A242557 (3 * n + 4))

end

end A354060.P8340713844828912275

/-!
# A354061: Irregular table read by rows: T(n,k) is the number of degree-k primitive Dirichlet characters modulo n, 1 <= k <= psi(n), psi = A002322.

The programs for A354061, there is no canonical definition to state claims against.
-/

/-! ## A354061.P18269184906132205098

`and(A000325(n), A350957(A284342(n+1)))`
-/

namespace A354061.P18269184906132205098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000325 n) (A350957 (A284342 (n + 1)).toNat)

end

end A354061.P18269184906132205098

/-! ## A354061.P8161923369467042858

`A332817(n)%A195110(A297112(2*(n+2)))`
-/

namespace A354061.P8161923369467042858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332817 n) (A195110 (A297112 (2 * (n + 2))).toNat)

end

end A354061.P8161923369467042858

/-! ## A354061.P5766854256980811629

`(2^n-n)%A030496(abs((-2)^n+1))`
-/

namespace A354061.P5766854256980811629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n : ℤ) - (n : ℤ)) (A030496 |(-2) ^ n + 1|.toNat)

end

end A354061.P5766854256980811629

/-! ## A354061.P2115503478708453459

`A051828(n+1)%(A004739(n+1)+1)`
-/

namespace A354061.P2115503478708453459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051828 (n + 1)) (A004739 (n + 1) + 1)

end

end A354061.P2115503478708453459

/-! ## A354061.P1279827110198136153

`and(A088205(A108962(n)), A163511(n))`
-/

namespace A354061.P1279827110198136153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088205 (A108962 n).toNat) (A163511 n)

end

end A354061.P1279827110198136153

/-!
# A354066: Product_{n>=1} 1 / (1 - x^n)^(a(n)/n!) = 1 + tanh(x).

The programs for A354066, there is no canonical definition to state claims against.
-/

/-! ## A354066.P10763408649666674654

`∏{e}[n+1, 2*(-1)^#]*A359675(A000111(n))`
-/

namespace A354066.P10763408649666674654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p) * A359675 (A000111 n).toNat

end

end A354066.P10763408649666674654

/-!
# A354067: Number of tilings of an n X n square using right trominoes, monominoes and 2 X 2 tiles.

The programs for A354067, there is no canonical definition to state claims against.
-/

/-! ## A354067.P14159659349192244619

`A353963(∑[n]+n)`
-/

namespace A354067.P14159659349192244619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353963 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A354067.P14159659349192244619

/-! ## A354067.P12620780342406241188

`and(-1, A353963(A000096(n)))`
-/

namespace A354067.P12620780342406241188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A353963 (A000096 n).toNat)

end

end A354067.P12620780342406241188

/-! ## A354067.P8205674129882019621

`A353963(A000096(n))+A185246(n)`
-/

namespace A354067.P8205674129882019621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353963 (A000096 n).toNat + A185246 n

end

end A354067.P8205674129882019621

/-! ## A354067.P14145493151876933557

`and(-1, A353963(A134189(n+1)))`
-/

namespace A354067.P14145493151876933557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A353963 (A134189 (n + 1)).toNat)

end

end A354067.P14145493151876933557

/-!
# A354069: Number of vertices in the iterated clique graphs of the 1-skeleton of the snub disphenoid.

The programs for A354069, there is no canonical definition to state claims against.
-/

/-! ## A354069.P15852117665580800147

`4*A078843(A007097(n))`
-/

namespace A354069.P15852117665580800147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A078843 (A007097 n).toNat

end

end A354069.P15852117665580800147

/-!
# A354072: Perfect numbers that are the sum of the divisors of some number.

The programs for A354072, there is no canonical definition to state claims against.
-/

/-! ## A354072.P18189298378294939244

`A000396(comp[(2*n)²])`
-/

namespace A354072.P18189298378294939244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A354072.P18189298378294939244

/-! ## A354072.P2526241713414477612

`∩[A074247(n+1), A354073(n+1)]`
-/

namespace A354072.P2526241713414477612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354072.P2526241713414477612

/-!
# A354073: Multiply-perfect numbers that are the sum of the divisors of some number.

The programs for A354073, there is no canonical definition to state claims against.
-/

/-! ## A354073.P1171394117300813035

`A007691(A055642(n+4)+n)`
-/

namespace A354073.P1171394117300813035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (A055642 (n + 4) + (n : ℤ)).toNat

end

end A354073.P1171394117300813035

/-! ## A354073.P5860848138688961102

`A007691(A185119(n+3)+n+1)`
-/

namespace A354073.P5860848138688961102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (A185119 (n + 3) + (n + 1 : ℤ)).toNat

end

end A354073.P5860848138688961102

/-! ## A354073.P14993810190737749362

`A007691(∑[A138904(n²)])`
-/

namespace A354073.P14993810190737749362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354073.P14993810190737749362

/-! ## A354073.P15773635385510498326

`∩[A055711(n+1), A316225(n+1)]`
-/

namespace A354073.P15773635385510498326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354073.P15773635385510498326

/-! ## A354073.P15423327845474369904

`∩[A055717(n+1), A348868(n+1)]`
-/

namespace A354073.P15423327845474369904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354073.P15423327845474369904

/-!
# A354074: Factorials that are the sum of the divisors of some m.

The programs for A354074, there is no canonical definition to state claims against.
-/

/-! ## A354074.P17626774513591938160

`(2%(n+2)+n)!`
-/

namespace A354074.P17626774513591938160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (n + 2) + n)

end

end A354074.P17626774513591938160

/-! ## A354074.P15804818394661229113

`record[(C(2, n²)+n)!]`
-/

namespace A354074.P15804818394661229113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (n ^ 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354074.P15804818394661229113

/-! ## A354074.P5148967072012783203

`record[n!/C(3, n)!]`
-/

namespace A354074.P5148967072012783203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.factorial (Nat.choose 3 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354074.P5148967072012783203

/-! ## A354074.P11304627496178144312

`(n+2)!-floor(acot(n))`
-/

namespace A354074.P11304627496178144312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A354074.P11304627496178144312

/-! ## A354074.P13118210276850726395

`C((n+2)!, ceil(tanh(n)))`
-/

namespace A354074.P13118210276850726395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 2)) ⌈Real.tanh (n : ℝ)⌉.toNat

end

end A354074.P13118210276850726395

/-! ## A354074.P3296513817545912901

`C((n+2)!, round(tanh(n)))`
-/

namespace A354074.P3296513817545912901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 2)) (SequenceMachineLib.roundAway (Real.tanh (n : ℝ))).toNat

end

end A354074.P3296513817545912901

/-! ## A354074.P3067993471968402274

`C((n+2)!, ceil(acot(n)))`
-/

namespace A354074.P3067993471968402274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 2)) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A354074.P3067993471968402274

/-! ## A354074.P16160719402335242957

`C(∏[n+2], ceil(tanh(n)))`
-/

namespace A354074.P16160719402335242957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j) ⌈Real.tanh (n : ℝ)⌉.toNat

end

end A354074.P16160719402335242957

/-! ## A354074.P14830961379490447486

`C(∏[n+2], round(tanh(n)))`
-/

namespace A354074.P14830961379490447486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (Real.tanh (n : ℝ))).toNat

end

end A354074.P14830961379490447486

/-! ## A354074.P8286117763193813584

`C(∏[n+2], ceil(acot(n)))`
-/

namespace A354074.P8286117763193813584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A354074.P8286117763193813584

/-!
# A354076: Number of (unordered) plane trees with n leaves, such that for every node the number of "children of children" has no common divisor > 1.

The programs for A354076, there is no canonical definition to state claims against.
-/

/-! ## A354076.P5314143283558598147

`A350969(A333865(n+2))`
-/

namespace A354076.P5314143283558598147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A333865 (n + 2)).toNat

end

end A354076.P5314143283558598147

/-! ## A354076.P9340063968584731510

`A112765(A027044(n))+A027071(n)`
-/

namespace A354076.P9340063968584731510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A027044 n).toNat + A027071 n

end

end A354076.P9340063968584731510

/-! ## A354076.P12559997821955686407

`A151256(n)-A079978(A151275(n))`
-/

namespace A354076.P12559997821955686407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151256 n - A079978 (A151275 n).toNat

end

end A354076.P12559997821955686407

/-! ## A354076.P2629170281566962343

`A151256(n)-A079978(A151296(n))`
-/

namespace A354076.P2629170281566962343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151256 n - A079978 (A151296 n).toNat

end

end A354076.P2629170281566962343

/-!
# A354078: Squares k that are not divisible by 10, and whose reverse and digit sum are also squares, such that the digit sum divides both k and its reverse.

The programs for A354078, there is no canonical definition to state claims against.
-/

/-! ## A354078.P1101586552476206044

`(lt[A007953(n), A064353(A342727(n+1))]+1)²`
-/

namespace A354078.P1101586552476206044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A342727 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2

end

end A354078.P1101586552476206044

/-! ## A354078.P7195879312050339732

`∑[A082511(A141713(n))]²`
-/

namespace A354078.P7195879312050339732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082511 (A141713 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A354078.P7195879312050339732

/-! ## A354078.P7796904719630771197

`∑[A002852(A054726(n))²]²`
-/

namespace A354078.P7796904719630771197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A054726 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A354078.P7796904719630771197

/-!
# A354080: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0)=1, a(1)=4, a(2)=5.

The programs for A354080, the canonical program `A354080.P15343182891076839286` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354080 has offset 0).

The definition of A354080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A354080.P15343182891076839286`, by `A354080.P15343182891076839286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A354080.P15343182891076839286

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A354080

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P15343182891076839286.Spec : Prop :=
  ∀ n, (P15343182891076839286.a n : ℤ) = A354080 n

theorem P15343182891076839286.correct : P15343182891076839286.Spec := by
  intro n
  simp only [A354080]

end A354080

/-! ## A354080.P6528787370724427443

`∑[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=5`
-/

namespace A354080.P6528787370724427443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354080.P6528787370724427443

namespace A354080

/-- `∑[2*a(n-1)-a(n-4)]` -/
def P6528787370724427443.Spec : Prop :=
  ∀ n, P6528787370724427443.a n = A354080 n

end A354080

/-! ## A354080.P9757028232531136314

`∑[a(n-1)-(a(n-4)-a(n-1))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=5`
-/

namespace A354080.P9757028232531136314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1, 5] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354080.P9757028232531136314

namespace A354080

/-- `∑[a(n-1)-(a(n-4)-a(n-1))]` -/
def P9757028232531136314.Spec : Prop :=
  ∀ n, P9757028232531136314.a n = A354080 n

end A354080

/-! ## A354080.P16842584231274802756

`A214826(n)+A000073(n)`
-/

namespace A354080.P16842584231274802756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + A000073 n

end

end A354080.P16842584231274802756

namespace A354080

/-- `A214826(n)+A000073(n)` -/
def P16842584231274802756.Spec : Prop :=
  ∀ n, P16842584231274802756.a n = A354080 n

end A354080

/-! ## A354080.P13436709052014751146

`A100683(n+1)+A100683(n)`
-/

namespace A354080.P13436709052014751146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1) + A100683 n

end

end A354080.P13436709052014751146

namespace A354080

/-- `A100683(n+1)+A100683(n)` -/
def P13436709052014751146.Spec : Prop :=
  ∀ n, P13436709052014751146.a n = A354080 n

end A354080

/-! ## A354080.P1278800449135537871

`A001590(n)+A000213(n+2)`
-/

namespace A354080.P1278800449135537871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A000213 (n + 2)

end

end A354080.P1278800449135537871

namespace A354080

/-- `A001590(n)+A000213(n+2)` -/
def P1278800449135537871.Spec : Prop :=
  ∀ n, P1278800449135537871.a n = A354080 n

end A354080

/-! ## A354080.P5430266173431077671

`A214825(n)+A001590(n+2)`
-/

namespace A354080.P5430266173431077671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + A001590 (n + 2)

end

end A354080.P5430266173431077671

namespace A354080

/-- `A214825(n)+A001590(n+2)` -/
def P5430266173431077671.Spec : Prop :=
  ∀ n, P5430266173431077671.a n = A354080 n

end A354080

/-! ## A354080.P7245891327858860541

`A214727(n)+A081172(n+2)`
-/

namespace A354080.P7245891327858860541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + A081172 (n + 2)

end

end A354080.P7245891327858860541

namespace A354080

/-- `A214727(n)+A081172(n+2)` -/
def P7245891327858860541.Spec : Prop :=
  ∀ n, P7245891327858860541.a n = A354080 n

end A354080

/-! ## A354080.P8717361801341472222

`A276658(n+2)+A081172(n)`
-/

namespace A354080.P8717361801341472222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 2) + A081172 n

end

end A354080.P8717361801341472222

namespace A354080

/-- `A276658(n+2)+A081172(n)` -/
def P8717361801341472222.Spec : Prop :=
  ∀ n, P8717361801341472222.a n = A354080 n

end A354080

/-! ## A354080.P8748541130356485081

`A007486(n+1)+A000073(n+1)`
-/

namespace A354080.P8748541130356485081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 1) + A000073 (n + 1)

end

end A354080.P8748541130356485081

namespace A354080

/-- `A007486(n+1)+A000073(n+1)` -/
def P8748541130356485081.Spec : Prop :=
  ∀ n, P8748541130356485081.a n = A354080 n

end A354080

/-! ## A354080.P12474778400443704195

`A000213(n)+A214826(n)-A081172(n)`
-/

namespace A354080.P12474778400443704195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A214826 n - A081172 n)

end

end A354080.P12474778400443704195

namespace A354080

/-- `A000213(n)+A214826(n)-A081172(n)` -/
def P12474778400443704195.Spec : Prop :=
  ∀ n, P12474778400443704195.a n = A354080 n

end A354080

/-! ## A354080.P17120879190653846927

`A214826(n)+A275778(n)-A276658(n)`
-/

namespace A354080.P17120879190653846927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A275778 n - A276658 n)

end

end A354080.P17120879190653846927

namespace A354080

/-- `A214826(n)+A275778(n)-A276658(n)` -/
def P17120879190653846927.Spec : Prop :=
  ∀ n, P17120879190653846927.a n = A354080 n

end A354080

/-! ## A354080.P16333282148522200102

`∑[A000213(n)]+A214825(n)-A000213(n)`
-/

namespace A354080.P16333282148522200102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A214825 n - A000213 n)

end

end A354080.P16333282148522200102

namespace A354080

/-- `∑[A000213(n)]+A214825(n)-A000213(n)` -/
def P16333282148522200102.Spec : Prop :=
  ∀ n, P16333282148522200102.a n = A354080 n

end A354080

/-! ## A354080.P15058702887898755056

`A000073(n+1)+A214825(n)+A000073(n)`
-/

namespace A354080.P15058702887898755056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A214825 n + A000073 n)

end

end A354080.P15058702887898755056

namespace A354080

/-- `A000073(n+1)+A214825(n)+A000073(n)` -/
def P15058702887898755056.Spec : Prop :=
  ∀ n, P15058702887898755056.a n = A354080 n

end A354080

/-! ## A354080.P10320327567064064458

`A001590(n)+A214899(n+1)+A001590(n)`
-/

namespace A354080.P10320327567064064458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + (A214899 (n + 1) + A001590 n)

end

end A354080.P10320327567064064458

namespace A354080

/-- `A001590(n)+A214899(n+1)+A001590(n)` -/
def P10320327567064064458.Spec : Prop :=
  ∀ n, P10320327567064064458.a n = A354080 n

end A354080

/-! ## A354080.P17392692369647462201

`A047081(n)+A047081(n)-A001590(n+1)`
-/

namespace A354080.P17392692369647462201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n + (A047081 n - A001590 (n + 1))

end

end A354080.P17392692369647462201

namespace A354080

/-- `A047081(n)+A047081(n)-A001590(n+1)` -/
def P17392692369647462201.Spec : Prop :=
  ∀ n, P17392692369647462201.a n = A354080 n

end A354080

/-! ## A354080.P11814628613939723787

`A145027(n+1)+A020992(n)-A081172(n)`
-/

namespace A354080.P11814628613939723787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 1) + (A020992 n - A081172 n)

end

end A354080.P11814628613939723787

namespace A354080

/-- `A145027(n+1)+A020992(n)-A081172(n)` -/
def P11814628613939723787.Spec : Prop :=
  ∀ n, P11814628613939723787.a n = A354080 n

end A354080

/-! ## A354080.P4146806813473593247

`A214727(n+1)+A020992(n)-A001590(n+1)`
-/

namespace A354080.P4146806813473593247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1) + (A020992 n - A001590 (n + 1))

end

end A354080.P4146806813473593247

namespace A354080

/-- `A214727(n+1)+A020992(n)-A001590(n+1)` -/
def P4146806813473593247.Spec : Prop :=
  ∀ n, P4146806813473593247.a n = A354080 n

end A354080

/-! ## A354080.P17561217384582523535

`A081172(n+1)+A214826(n)-A001590(n+1)`
-/

namespace A354080.P17561217384582523535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1) + (A214826 n - A001590 (n + 1))

end

end A354080.P17561217384582523535

namespace A354080

/-- `A081172(n+1)+A214826(n)-A001590(n+1)` -/
def P17561217384582523535.Spec : Prop :=
  ∀ n, P17561217384582523535.a n = A354080 n

end A354080

/-!
# A354082: The independence polynomial of the n-hypercube graph evaluated at -1.

The programs for A354082, there is no canonical definition to state claims against.
-/

/-! ## A354082.P11427691947460427298

`A309064(A371139(n))-1`
-/

namespace A354082.P11427691947460427298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309064 (A371139 n).toNat - 1

end

end A354082.P11427691947460427298

/-! ## A354082.P2495054062129594030

`A056239(A181998(n))-A303769(n)`
-/

namespace A354082.P2495054062129594030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181998 n).toNat - A303769 n

end

end A354082.P2495054062129594030

/-!
# A354084: Primes p such that p mod 6 = p mod 8.

The programs for A354084, the canonical program `A354084.P4783309333859556562` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354084 has offset 1).

The definition of A354084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354084.P4783309333859556562

`p?[a(n-2)+24]` with `a(0)=2, a(1)=3, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A354084

/-- `p?[a(n-2)+24]` -/
def P4783309333859556562.Spec : Prop :=
  ∀ n, (P4783309333859556562.a n : ℤ) = A354084 (n + 1)

theorem P4783309333859556562.correct : P4783309333859556562.Spec := by
  intro n
  simp only [A354084, Nat.add_sub_cancel]

end A354084

/-! ## A354084.P13114308804940379151

`∩[A038876(n+1), A296924(n+1)]`
-/

namespace A354084.P13114308804940379151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P13114308804940379151

namespace A354084

/-- `∩[A038876(n+1), A296924(n+1)]` -/
def P13114308804940379151.Spec : Prop :=
  ∀ n, (P13114308804940379151.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P7866332033367278401

`∩[A296924(n+1), A391371(n+1)]`
-/

namespace A354084.P7866332033367278401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P7866332033367278401

namespace A354084

/-- `∩[A296924(n+1), A391371(n+1)]` -/
def P7866332033367278401.Spec : Prop :=
  ∀ n, (P7866332033367278401.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P14735819562329037813

`∩[A038876(n+1), A391366(n+1)]`
-/

namespace A354084.P14735819562329037813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P14735819562329037813

namespace A354084

/-- `∩[A038876(n+1), A391366(n+1)]` -/
def P14735819562329037813.Spec : Prop :=
  ∀ n, (P14735819562329037813.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P6184972822185323117

`∩[A262931(n+1), A296924(n+1)]`
-/

namespace A354084.P6184972822185323117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P6184972822185323117

namespace A354084

/-- `∩[A262931(n+1), A296924(n+1)]` -/
def P6184972822185323117.Spec : Prop :=
  ∀ n, (P6184972822185323117.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P2935762422879260138

`∩[A005792(n+1), A038876(n+1)]`
-/

namespace A354084.P2935762422879260138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P2935762422879260138

namespace A354084

/-- `∩[A005792(n+1), A038876(n+1)]` -/
def P2935762422879260138.Spec : Prop :=
  ∀ n, (P2935762422879260138.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P17370599524121204769

`∩[A005792(n+1), A296924(n+1)]`
-/

namespace A354084.P17370599524121204769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P17370599524121204769

namespace A354084

/-- `∩[A005792(n+1), A296924(n+1)]` -/
def P17370599524121204769.Spec : Prop :=
  ∀ n, (P17370599524121204769.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P8411858404458475130

`p?[∑[and(4, n)]+n+2]`
-/

namespace A354084.P8411858404458475130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A354084.P8411858404458475130

namespace A354084

/-- `p?[∑[and(4, n)]+n+2]` -/
def P8411858404458475130.Spec : Prop :=
  ∀ n, (P8411858404458475130.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P1544195074349887337

`p?[∑[and(2*n-1, A010690(n))]]`
-/

namespace A354084.P1544195074349887337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n : ℤ) - 1) (A010690 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354084.P1544195074349887337

namespace A354084

/-- `p?[∑[and(2*n-1, A010690(n))]]` -/
def P1544195074349887337.Spec : Prop :=
  ∀ n, P1544195074349887337.a n = A354084 (n + 1)

end A354084

/-! ## A354084.P5785719328497159431

`p?[2*n-A203572(n)]`
-/

namespace A354084.P5785719328497159431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A203572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354084.P5785719328497159431

namespace A354084

/-- `p?[2*n-A203572(n)]` -/
def P5785719328497159431.Spec : Prop :=
  ∀ n, P5785719328497159431.a n = A354084 (n + 1)

end A354084

/-! ## A354084.P7549074044103333201

`∩[A038876(n+1), A225857(n+1)]`
-/

namespace A354084.P7549074044103333201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P7549074044103333201

namespace A354084

/-- `∩[A038876(n+1), A225857(n+1)]` -/
def P7549074044103333201.Spec : Prop :=
  ∀ n, (P7549074044103333201.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P6764266104402852757

`∩[A225857(n+1), A296924(n+1)]`
-/

namespace A354084.P6764266104402852757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354084.P6764266104402852757

namespace A354084

/-- `∩[A225857(n+1), A296924(n+1)]` -/
def P6764266104402852757.Spec : Prop :=
  ∀ n, (P6764266104402852757.a n : ℤ) = A354084 (n + 1)

end A354084

/-! ## A354084.P15800071451417273146

`record[A020639(A082977(2*(n+4)))]`
-/

namespace A354084.P15800071451417273146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082977 (2 * (n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354084.P15800071451417273146

namespace A354084

/-- `record[A020639(A082977(2*(n+4)))]` -/
def P15800071451417273146.Spec : Prop :=
  ∀ n, P15800071451417273146.a n = A354084 (n + 1)

end A354084

/-! ## A354084.P15330300521338585239

`p?[A336627(n)+ceil(abs((n+3)/5-n))]`
-/

namespace A354084.P15330300521338585239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336627 n + ⌈|(n + 3 : ℚ) / 5 - (n : ℚ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354084.P15330300521338585239

namespace A354084

/-- `p?[A336627(n)+ceil(abs((n+3)/5-n))]` -/
def P15330300521338585239.Spec : Prop :=
  ∀ n, P15330300521338585239.a n = A354084 (n + 1)

end A354084

/-!
# A354088: Sum of divisors function conjugated by Pythagorean prime shift: a(n) = A348747(sigma(A348746(n))).

The programs for A354088, there is no canonical definition to state claims against.
-/

/-! ## A354088.P491290422529057582

`A348747(A354089(n+1))`
-/

namespace A354088.P491290422529057582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A354089 (n + 1)).toNat

end

end A354088.P491290422529057582

/-! ## A354088.P9956839007106605447

`A348747(A000203(A348746(n+1)))`
-/

namespace A354088.P9956839007106605447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A000203 (A348746 (n + 1)).toNat).toNat

end

end A354088.P9956839007106605447

/-! ## A354088.P13328417186911507308

`A348747(∑{d}[n+1, A348746(#)])`
-/

namespace A354088.P13328417186911507308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (∑ d ∈ Nat.divisors (f1 n), A348746 d).toNat

end

end A354088.P13328417186911507308

/-! ## A354088.P9874886828360851704

`∏{e}[A181821(A354089(n+1)), A348745(#)]`
-/

namespace A354088.P9874886828360851704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A354089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348745 (Nat.factorization (f1 n).natAbs p)

end

end A354088.P9874886828360851704

/-! ## A354088.P17947243564777084786

`A291756(n+1)%A019554(A342456(2*n+3))`
-/

namespace A354088.P17947243564777084786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291756 (n + 1)) (A019554 (A342456 (2 * n + 3)).toNat)

end

end A354088.P17947243564777084786

/-!
# A354089: Sum of divisors function applied to Pythagorean prime shift: a(n) = sigma(A348746(n)).

The programs for A354089, there is no canonical definition to state claims against.
-/

/-! ## A354089.P17834544461187262742

`A000203(A348746(n+1))`
-/

namespace A354089.P17834544461187262742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A348746 (n + 1)).toNat

end

end A354089.P17834544461187262742

/-! ## A354089.P11157216086872247211

`∑{d}[n+1, A348746(#)]`
-/

namespace A354089.P11157216086872247211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348746 d

end

end A354089.P11157216086872247211

/-! ## A354089.P10193844559651954782

`A000593(or(1, A348746(n+1)))`
-/

namespace A354089.P10193844559651954782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (Int.lor 1 (A348746 (n + 1))).toNat

end

end A354089.P10193844559651954782

/-! ## A354089.P10817235272743716570

`A113184(or(1, A348746(n+1)))`
-/

namespace A354089.P10817235272743716570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (Int.lor 1 (A348746 (n + 1))).toNat

end

end A354089.P10817235272743716570

/-! ## A354089.P10975390891357927044

`A326065(2*A348746(n+1))`
-/

namespace A354089.P10975390891357927044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * A348746 (n + 1)).toNat

end

end A354089.P10975390891357927044

/-! ## A354089.P655064402838719695

`A326135(2*A348746(n+1))`
-/

namespace A354089.P655064402838719695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (2 * A348746 (n + 1)).toNat

end

end A354089.P655064402838719695

/-! ## A354089.P3725836011619461509

`A000593(2*A348746(n+1))`
-/

namespace A354089.P3725836011619461509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A348746 (n + 1)).toNat

end

end A354089.P3725836011619461509

/-! ## A354089.P13457510571290707586

`A113184(2*A348746(n+1))`
-/

namespace A354089.P13457510571290707586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (2 * A348746 (n + 1)).toNat

end

end A354089.P13457510571290707586

/-! ## A354089.P14834093709696257339

`A325940(2*A348746(n+1))`
-/

namespace A354089.P14834093709696257339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (2 * A348746 (n + 1)).toNat

end

end A354089.P14834093709696257339

/-! ## A354089.P4171811091862738044

`A000593(lcm(2, A348746(n+1)))`
-/

namespace A354089.P4171811091862738044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (Int.lcm 2 (A348746 (n + 1)))

end

end A354089.P4171811091862738044

/-!
# A354090: a(n) = A007947(n)^(A051904(n) - 1), where A007947 is squarefree kernel and A051904 is minimum prime exponent.

The programs for A354090, the canonical program `A354090.P18153127968080569888` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354090 has offset 1).

The definition of A354090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304776, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354090.P18153127968080569888

`(n+1)/A304776(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A354090

/-- `(n+1)/A304776(n+1)` -/
def P18153127968080569888.Spec : Prop :=
  ∀ n, P18153127968080569888.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P10281638725623457118

`A007947(n+1)^(A051904(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354090.P10281638725623457118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051904 (n + 1) - 1 : ℤ)

end

end A354090.P10281638725623457118

namespace A354090

/-- `A007947(n+1)^(A051904(n+1)-1)` -/
def P10281638725623457118.Spec : Prop :=
  ∀ n, P10281638725623457118.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P15216976666916102595

`A003557(A062759(n+1))`
-/

namespace A354090.P15216976666916102595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A062759 (n + 1)).toNat

end

end A354090.P15216976666916102595

namespace A354090

/-- `A003557(A062759(n+1))` -/
def P15216976666916102595.Spec : Prop :=
  ∀ n, P15216976666916102595.a n = A354090 (n + 1)

end A354090

/-! ## A354090.P2067442160141589408

`A003557((n+1)/A062760(n+1))`
-/

namespace A354090.P2067442160141589408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062760 (n + 1) : ℚ))).toNat

end

end A354090.P2067442160141589408

namespace A354090

/-- `A003557((n+1)/A062760(n+1))` -/
def P2067442160141589408.Spec : Prop :=
  ∀ n, P2067442160141589408.a n = A354090 (n + 1)

end A354090

/-! ## A354090.P6666727559569636120

`A062759(n+1)/A007947(n+1)`
-/

namespace A354090.P6666727559569636120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062759 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A354090.P6666727559569636120

namespace A354090

/-- `A062759(n+1)/A007947(n+1)` -/
def P6666727559569636120.Spec : Prop :=
  ∀ n, P6666727559569636120.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P15695337039143511458

`A295417(n+1)/A304768(n+1)`
-/

namespace A354090.P15695337039143511458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295417 (n + 1) : ℚ) / (A304768 (n + 1) : ℚ)

end

end A354090.P15695337039143511458

namespace A354090

/-- `A295417(n+1)/A304768(n+1)` -/
def P15695337039143511458.Spec : Prop :=
  ∀ n, P15695337039143511458.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P7918520182183680413

`∏{p}[n+1, #]^(A071178(A046523(n+1))-1)`
-/

namespace A354090.P7918520182183680413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A071178 (A046523 (n + 1)).toNat - 1 : ℤ)

end

end A354090.P7918520182183680413

namespace A354090

/-- `∏{p}[n+1, #]^(A071178(A046523(n+1))-1)` -/
def P7918520182183680413.Spec : Prop :=
  ∀ n, P7918520182183680413.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P6945692425187213211

`A062759(n+1)/A015052(A015052(n+1))`
-/

namespace A354090.P6945692425187213211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062759 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A354090.P6945692425187213211

namespace A354090

/-- `A062759(n+1)/A015052(A015052(n+1))` -/
def P6945692425187213211.Spec : Prop :=
  ∀ n, P6945692425187213211.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P2622288748842689772

`A062759(n+1)/A015053(A015053(n+1))`
-/

namespace A354090.P2622288748842689772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062759 (n + 1) : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A354090.P2622288748842689772

namespace A354090

/-- `A062759(n+1)/A015053(A015053(n+1))` -/
def P2622288748842689772.Spec : Prop :=
  ∀ n, P2622288748842689772.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P2839171553279275934

`A062759(n+1)/A062759(A304768(n+1))`
-/

namespace A354090.P2839171553279275934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062759 (n + 1) : ℚ) / (A062759 (A304768 (n + 1)).toNat : ℚ)

end

end A354090.P2839171553279275934

namespace A354090

/-- `A062759(n+1)/A062759(A304768(n+1))` -/
def P2839171553279275934.Spec : Prop :=
  ∀ n, P2839171553279275934.a n = (A354090 (n + 1) : ℚ)

end A354090

/-! ## A354090.P17583473329438750163

`A066638(n+1)/A066638(A304768(n+1))`
-/

namespace A354090.P17583473329438750163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A066638 (A304768 (n + 1)).toNat : ℚ)

end

end A354090.P17583473329438750163

namespace A354090

/-- `A066638(n+1)/A066638(A304768(n+1))` -/
def P17583473329438750163.Spec : Prop :=
  ∀ n, P17583473329438750163.a n = (A354090 (n + 1) : ℚ)

end A354090

/-!
# A354091: Fully multiplicative prime shift where the primes of the form 3k+2 are replaced by the next larger such prime, and primes of the form 3k and 3k+1 stay as they are.

The programs for A354091, there is no canonical definition to state claims against.
-/

/-! ## A354091.P13520237517277011290

`∑{d}[n+1, A354094(#)]`
-/

namespace A354091.P13520237517277011290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354094 d

end

end A354091.P13520237517277011290

/-! ## A354091.P9622162496233242757

`∑{d}[n+1, A008683(#)*A354093((n+1)/#)]`
-/

namespace A354091.P9622162496233242757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A354093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354091.P9622162496233242757

/-! ## A354091.P6915155891841859218

`A354094((n+1)²)/A354094(n+1)`
-/

namespace A354091.P6915155891841859218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354094 ((n + 1) ^ 2) : ℚ) / (A354094 (n + 1) : ℚ)

end

end A354091.P6915155891841859218

/-! ## A354091.P8352434160740002887

`A003961(A072027(n+1)%A055692(n+5))`
-/

namespace A354091.P8352434160740002887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A072027 (n + 1)) (A055692 (n + 5))).toNat

end

end A354091.P8352434160740002887

/-! ## A354091.P9047073852364745016

`A003961(A072027(n+1)%A087833(n))`
-/

namespace A354091.P9047073852364745016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A072027 (n + 1)) (A087833 n)).toNat

end

end A354091.P9047073852364745016

/-!
# A354092: Fully multiplicative prime shift where the primes of the form 3k+2 are replaced by the previous such prime (with 2 -> 1), and primes of the form 3k and 3k+1 stay as they are.

The programs for A354092, there is no canonical definition to state claims against.
-/

/-! ## A354092.P8304280014986619770

`A354095(A038699(n+1))`
-/

namespace A354092.P8304280014986619770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354095 (A038699 (n + 1)).toNat

end

end A354092.P8304280014986619770

/-! ## A354092.P5805822156075640078

`A061898(A064989(n+1)%A183073(n+1))`
-/

namespace A354092.P5805822156075640078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (Int.tmod (A064989 (n + 1)) (A183073 (n + 1))).toNat

end

end A354092.P5805822156075640078

/-! ## A354092.P3159882341846091915

`A061898(A064989(n+1))%A133974(n+1)`
-/

namespace A354092.P3159882341846091915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061898 (A064989 (n + 1)).toNat) (A133974 (n + 1))

end

end A354092.P3159882341846091915

/-!
# A354093: a(n) = sigma(A354091(n)), where A354091 is fully multiplicative prime shift which replaces the primes of the form 3k+2 by the next larger such prime, while other primes stay as they are, and sigma is the sum of divisors function.

The programs for A354093, there is no canonical definition to state claims against.
-/

/-! ## A354093.P14720086661344030050

`∑{d}[n+1, A354091(#)]`
-/

namespace A354093.P14720086661344030050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354091 d

end

end A354093.P14720086661344030050

/-! ## A354093.P17552494409759775817

`∑{d}[n+1, A000005(#)*A354094((n+1)/#)]`
-/

namespace A354093.P17552494409759775817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A354094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354093.P17552494409759775817

/-! ## A354093.P17928986308428627573

`∑{d}[A354091(A008619(2*n)), #]`
-/

namespace A354093.P17928986308428627573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (A008619 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A354093.P17928986308428627573

/-! ## A354093.P8969004505356904581

`A000203(A354091(n+1))`
-/

namespace A354093.P8969004505356904581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A354091 (n + 1)).toNat

end

end A354093.P8969004505356904581

/-! ## A354093.P12346254781668154247

`A000203(∑{d}[n+1, A354094(#)])`
-/

namespace A354093.P12346254781668154247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), A354094 d).toNat

end

end A354093.P12346254781668154247

/-! ## A354093.P16657058878307529892

`A115607(or(1, A354091(n+1)))`
-/

namespace A354093.P16657058878307529892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (Int.lor 1 (A354091 (n + 1))).toNat

end

end A354093.P16657058878307529892

/-! ## A354093.P17818227273719776963

`A115607(∑{d}[n+1, A354094(#)])`
-/

namespace A354093.P17818227273719776963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (∑ d ∈ Nat.divisors (f1 n), A354094 d).toNat

end

end A354093.P17818227273719776963

/-! ## A354093.P11656726397040949480

`A115607(2*A354091(n+1)-A354091(n+1))`
-/

namespace A354093.P11656726397040949480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (2 * A354091 (n + 1) - A354091 (n + 1)).toNat

end

end A354093.P11656726397040949480

/-! ## A354093.P5303218272079204924

`A000593(2*A354091(n+1))`
-/

namespace A354093.P5303218272079204924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A354091 (n + 1)).toNat

end

end A354093.P5303218272079204924

/-! ## A354093.P11326525703382662937

`A091570(2*A354091(n+1))`
-/

namespace A354093.P11326525703382662937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * A354091 (n + 1)).toNat

end

end A354093.P11326525703382662937

/-!
# A354094: a(n) = phi(A354091(n)), where A354091 is fully multiplicative prime shift which replaces the primes of the form 3k+2 by the next larger such prime, while other primes stay as they are, and phi is Euler totient function.

The programs for A354094, there is no canonical definition to state claims against.
-/

/-! ## A354094.P4079812912098852370

`A000010(A354091(n+1))`
-/

namespace A354094.P4079812912098852370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A354091 (n + 1)).toNat

end

end A354094.P4079812912098852370

/-! ## A354094.P2518970835557346674

`∑{d}[n+1, A007427(#)*A354093((n+1)/#)]`
-/

namespace A354094.P2518970835557346674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A354093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354094.P2518970835557346674

/-! ## A354094.P2133312005936006374

`∑{d}[n+1, A008683(#)*A354091((n+1)/#)]`
-/

namespace A354094.P2133312005936006374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A354091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354094.P2133312005936006374

/-! ## A354094.P11934739246303119410

`A300236(4*A354091(n+1))`
-/

namespace A354094.P11934739246303119410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (4 * A354091 (n + 1)).toNat

end

end A354094.P11934739246303119410

/-! ## A354094.P1398783209929252185

`A300721(4*A354091(n+1))`
-/

namespace A354094.P1398783209929252185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (4 * A354091 (n + 1)).toNat

end

end A354094.P1398783209929252185

/-! ## A354094.P1142552992057020792

`A305804(4*A354091(n+1))`
-/

namespace A354094.P1142552992057020792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305804 (4 * A354091 (n + 1)).toNat

end

end A354094.P1142552992057020792

/-! ## A354094.P10943686105621856818

`A305804(lcm(4, A354091(n+1)))`
-/

namespace A354094.P10943686105621856818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305804 (Int.lcm 4 (A354091 (n + 1)))

end

end A354094.P10943686105621856818

/-! ## A354094.P14388069284381847994

`A319997(or(1, A354091(n+1)))`
-/

namespace A354094.P14388069284381847994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (Int.lor 1 (A354091 (n + 1))).toNat

end

end A354094.P14388069284381847994

/-! ## A354094.P14407778565597415395

`gcd(A000038(n), A319997(A354091(n+1)))`
-/

namespace A354094.P14407778565597415395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319997 (A354091 (n + 1)).toNat)

end

end A354094.P14407778565597415395

/-! ## A354094.P4959315854170632906

`A317841(2*A354091(n+1))`
-/

namespace A354094.P4959315854170632906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317841 (2 * A354091 (n + 1)).toNat

end

end A354094.P4959315854170632906

/-!
# A354095: a(n) = A354092(sigma(n)).

The programs for A354095, there is no canonical definition to state claims against.
-/

/-! ## A354095.P8288432133908257715

`A354092(A000203(n+1))`
-/

namespace A354095.P8288432133908257715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (A000203 (n + 1)).toNat

end

end A354095.P8288432133908257715

/-! ## A354095.P16029006824349985366

`A354092(A161942(n+1))`
-/

namespace A354095.P16029006824349985366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (A161942 (n + 1)).toNat

end

end A354095.P16029006824349985366

/-! ## A354095.P2190597275346278779

`A354092(∑{d}[n+1, #])`
-/

namespace A354095.P2190597275346278779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A354095.P2190597275346278779

/-! ## A354095.P16204424036055658667

`A354092(Δ[A160664(n)])`
-/

namespace A354095.P16204424036055658667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (f1 (n + 1) - f1 n).toNat

end

end A354095.P16204424036055658667

/-! ## A354095.P150620017923551853

`A354092(A074400(n+1))`
-/

namespace A354095.P150620017923551853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (A074400 (n + 1)).toNat

end

end A354095.P150620017923551853

/-! ## A354095.P5844949143008575356

`A354092(A239050(n+1))`
-/

namespace A354095.P5844949143008575356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (A239050 (n + 1)).toNat

end

end A354095.P5844949143008575356

/-! ## A354095.P10428133868455854141

`A354092(A319528(n+1))`
-/

namespace A354095.P10428133868455854141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (A319528 (n + 1)).toNat

end

end A354095.P10428133868455854141

/-! ## A354095.P10833745720627792022

`A072027(A350073(n+1)²)^(1/2)`
-/

namespace A354095.P10833745720627792022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072027 (A350073 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A354095.P10833745720627792022

/-! ## A354095.P2959486553167096276

`A072027(A064989(∑{d}[n+1, #])%A000043(n+1))`
-/

namespace A354095.P2959486553167096276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072027 (Int.tmod (A064989 (∑ d ∈ Nat.divisors (f1 n), d)) (A000043 (n + 1))).toNat

end

end A354095.P2959486553167096276

/-! ## A354095.P7465853075973346855

`A072027((A353750(n+1)/A062401(n+1))%A000043(n+1))`
-/

namespace A354095.P7465853075973346855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072027 (Int.tmod (SequenceMachineLib.roundAway ((A353750 (n + 1) : ℚ) / (A062401 (n + 1) : ℚ))) (A000043 (n + 1))).toNat

end

end A354095.P7465853075973346855

/-!
# A354096: a(n) = A354092(sigma(A354091(n))).

The programs for A354096, there is no canonical definition to state claims against.
-/

/-! ## A354096.P9547544661017325014

`A354095(A354091(n+1))`
-/

namespace A354096.P9547544661017325014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354095 (A354091 (n + 1)).toNat

end

end A354096.P9547544661017325014

/-! ## A354096.P5142452532769182906

`A354092(A354093(n+1))`
-/

namespace A354096.P5142452532769182906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (A354093 (n + 1)).toNat

end

end A354096.P5142452532769182906

/-!
# A354097: a(n) = 1 if n-phi(n) is a multiple of 4, otherwise 0.

The programs for A354097, the canonical program `A354097.P8074580162745031331` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354097 has offset 1).

The definition of A354097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354097.P8074580162745031331

`A000007(and(3, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354097

/-- `A000007(and(3, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))` -/
def P8074580162745031331.Spec : Prop :=
  ∀ n, P8074580162745031331.a n = A354097 (n + 1)

theorem P8074580162745031331.correct : P8074580162745031331.Spec := by
  intro n
  simp only [A354097, Nat.add_sub_cancel]

end A354097

/-! ## A354097.P1292224341845293224

`A229198(and(3, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A354097.P1292224341845293224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229198 (Int.land 3 (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)))).toNat

end

end A354097.P1292224341845293224

namespace A354097

/-- `A229198(and(3, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))` -/
def P1292224341845293224.Spec : Prop :=
  ∀ n, P1292224341845293224.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P17117314635888337060

`A121262(A051953(n+1))`
-/

namespace A354097.P17117314635888337060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A051953 (n + 1)).toNat

end

end A354097.P17117314635888337060

namespace A354097

/-- `A121262(A051953(n+1))` -/
def P17117314635888337060.Spec : Prop :=
  ∀ n, P17117314635888337060.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P11635219798799166520

`A121262(A169814(n+1))`
-/

namespace A354097.P11635219798799166520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A169814 (n + 1)).toNat

end

end A354097.P11635219798799166520

namespace A354097

/-- `A121262(A169814(n+1))` -/
def P11635219798799166520.Spec : Prop :=
  ∀ n, P11635219798799166520.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P6693150797792361633

`A121262(A296207(n+1))`
-/

namespace A354097.P6693150797792361633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A296207 (n + 1)).toNat

end

end A354097.P6693150797792361633

namespace A354097

/-- `A121262(A296207(n+1))` -/
def P6693150797792361633.Spec : Prop :=
  ∀ n, P6693150797792361633.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P5393260624337531282

`A121262(1-A000010(n+1)+n)`
-/

namespace A354097.P5393260624337531282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (1 - A000010 (n + 1) + (n : ℤ)).toNat

end

end A354097.P5393260624337531282

namespace A354097

/-- `A121262(1-A000010(n+1)+n)` -/
def P5393260624337531282.Spec : Prop :=
  ∀ n, P5393260624337531282.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P11082178007756568380

`A014017(n+1-A000010(n+1))²`
-/

namespace A354097.P11082178007756568380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 ((n + 1 : ℤ) - A000010 (n + 1)).toNat ^ 2

end

end A354097.P11082178007756568380

namespace A354097

/-- `A014017(n+1-A000010(n+1))²` -/
def P11082178007756568380.Spec : Prop :=
  ∀ n, P11082178007756568380.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P11164944036563728690

`and(3, A177499(n+1-A000010(n+1)))`
-/

namespace A354097.P11164944036563728690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A177499 ((n + 1 : ℤ) - A000010 (n + 1)).toNat)

end

end A354097.P11164944036563728690

namespace A354097

/-- `and(3, A177499(n+1-A000010(n+1)))` -/
def P11164944036563728690.Spec : Prop :=
  ∀ n, P11164944036563728690.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P2452832189395041247

`A000045(and(A000034(n), A219428(n+1)))`
-/

namespace A354097.P2452832189395041247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A000034 n) (A219428 (n + 1))).toNat

end

end A354097.P2452832189395041247

namespace A354097

/-- `A000045(and(A000034(n), A219428(n+1)))` -/
def P2452832189395041247.Spec : Prop :=
  ∀ n, P2452832189395041247.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P6404348663648020741

`A057427(and(A000034(n), A219428(n+1)))`
-/

namespace A354097.P6404348663648020741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.land (A000034 n) (A219428 (n + 1))).toNat

end

end A354097.P6404348663648020741

namespace A354097

/-- `A057427(and(A000034(n), A219428(n+1)))` -/
def P6404348663648020741.Spec : Prop :=
  ∀ n, P6404348663648020741.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P14301908666543301300

`A014577(lcm(2, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A354097.P14301908666543301300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (Int.lcm 2 (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))))

end

end A354097.P14301908666543301300

namespace A354097

/-- `A014577(lcm(2, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))` -/
def P14301908666543301300.Spec : Prop :=
  ∀ n, P14301908666543301300.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P9182312669610062423

`A253513((n+1-A000010(n+1))²)`
-/

namespace A354097.P9182312669610062423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (((n + 1 : ℤ) - A000010 (n + 1)) ^ 2).toNat

end

end A354097.P9182312669610062423

namespace A354097

/-- `A253513((n+1-A000010(n+1))²)` -/
def P9182312669610062423.Spec : Prop :=
  ∀ n, P9182312669610062423.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P15968395898528016518

`A014025((n+1-A000010(n+1))²)`
-/

namespace A354097.P15968395898528016518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (((n + 1 : ℤ) - A000010 (n + 1)) ^ 2).toNat

end

end A354097.P15968395898528016518

namespace A354097

/-- `A014025((n+1-A000010(n+1))²)` -/
def P15968395898528016518.Spec : Prop :=
  ∀ n, P15968395898528016518.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P6782929070827920940

`A080679((A000010(n+1)-(n-1))²)`
-/

namespace A354097.P6782929070827920940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080679 ((A000010 (n + 1) - ((n : ℤ) - 1)) ^ 2).toNat

end

end A354097.P6782929070827920940

namespace A354097

/-- `A080679((A000010(n+1)-(n-1))²)` -/
def P6782929070827920940.Spec : Prop :=
  ∀ n, P6782929070827920940.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P3095653495887597955

`A177824((A000010(n+1)-(n-1))²)`
-/

namespace A354097.P3095653495887597955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177824 ((A000010 (n + 1) - ((n : ℤ) - 1)) ^ 2).toNat

end

end A354097.P3095653495887597955

namespace A354097

/-- `A177824((A000010(n+1)-(n-1))²)` -/
def P3095653495887597955.Spec : Prop :=
  ∀ n, P3095653495887597955.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P3456880108143182811

`A227835((A000010(n+1)-(n-1))²)`
-/

namespace A354097.P3456880108143182811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227835 ((A000010 (n + 1) - ((n : ℤ) - 1)) ^ 2).toNat

end

end A354097.P3456880108143182811

namespace A354097

/-- `A227835((A000010(n+1)-(n-1))²)` -/
def P3456880108143182811.Spec : Prop :=
  ∀ n, P3456880108143182811.a n = A354097 (n + 1)

end A354097

/-! ## A354097.P1181893304332677102

`A173858((A000010(n+1)-(n+3))²)`
-/

namespace A354097.P1181893304332677102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173858 ((A000010 (n + 1) - (n + 3 : ℤ)) ^ 2).toNat

end

end A354097.P1181893304332677102

namespace A354097

/-- `A173858((A000010(n+1)-(n+3))²)` -/
def P1181893304332677102.Spec : Prop :=
  ∀ n, P1181893304332677102.a n = A354097 (n + 1)

end A354097

/-!
# A354098: Numbers k such that the cototient of k (= k-phi(k)) is a multiple of 4.

The programs for A354098, the canonical program `A354098.P8617954858712711501` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354098 has offset 1).

The definition of A354098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354098.P8617954858712711501

`lt[0, A354097(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A354098

/-- `lt[0, A354097(n+1)]+1` -/
def P8617954858712711501.Spec : Prop :=
  ∀ n, (P8617954858712711501.a n : ℤ) = A354098 (n + 1)

theorem P8617954858712711501.correct : P8617954858712711501.Spec := by
  intro n
  simp only [A354098, Nat.add_sub_cancel]

end A354098

/-! ## A354098.P8358406016213790670

`eq[n%4, A353768(round(sqrt(n²+1)))]`
-/

namespace A354098.P8358406016213790670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353768 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354098.P8358406016213790670

namespace A354098

/-- `eq[n%4, A353768(round(sqrt(n²+1)))]` -/
def P8358406016213790670.Spec : Prop :=
  ∀ n, (P8358406016213790670.a n : ℤ) = A354098 (n + 1)

end A354098

/-! ## A354098.P628172031756681898

`eq[1, and(3, A000010(n+1)-n)]+1`
-/

namespace A354098.P628172031756681898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000010 (n + 1) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354098.P628172031756681898

namespace A354098

/-- `eq[1, and(3, A000010(n+1)-n)]+1` -/
def P628172031756681898.Spec : Prop :=
  ∀ n, (P628172031756681898.a n : ℤ) = A354098 (n + 1)

end A354098

/-! ## A354098.P17864815219236582749

`lt[abs(A000010(abs(1-n)+1)-n)%4, 1]`
-/

namespace A354098.P17864815219236582749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |(A000010 (|1 - (n : ℤ)| + 1).toNat - (n : ℤ))| 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354098.P17864815219236582749

namespace A354098

/-- `lt[abs(A000010(abs(1-n)+1)-n)%4, 1]` -/
def P17864815219236582749.Spec : Prop :=
  ∀ n, (P17864815219236582749.a n : ℤ) = A354098 (n + 1)

end A354098

/-! ## A354098.P391312657504590091

`record[A000027(n+1)*A354097(n+1)]`
-/

namespace A354098.P391312657504590091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A354097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354098.P391312657504590091

namespace A354098

/-- `record[A000027(n+1)*A354097(n+1)]` -/
def P391312657504590091.Spec : Prop :=
  ∀ n, P391312657504590091.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P6974703013891290456

`filter[A103517(n), A354097(#)]`
-/

namespace A354098.P6974703013891290456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P6974703013891290456

namespace A354098

/-- `filter[A103517(n), A354097(#)]` -/
def P6974703013891290456.Spec : Prop :=
  ∀ n, P6974703013891290456.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P12185462947232431696

`filter[A004277(n), A354097(#)]`
-/

namespace A354098.P12185462947232431696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P12185462947232431696

namespace A354098

/-- `filter[A004277(n), A354097(#)]` -/
def P12185462947232431696.Spec : Prop :=
  ∀ n, P12185462947232431696.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P7731741736182980003

`filter[A004275(n+1), A354097(#)]`
-/

namespace A354098.P7731741736182980003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P7731741736182980003

namespace A354098

/-- `filter[A004275(n+1), A354097(#)]` -/
def P7731741736182980003.Spec : Prop :=
  ∀ n, P7731741736182980003.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P5359026930435147097

`filter[A004278(n+1), A354097(#)]`
-/

namespace A354098.P5359026930435147097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P5359026930435147097

namespace A354098

/-- `filter[A004278(n+1), A354097(#)]` -/
def P5359026930435147097.Spec : Prop :=
  ∀ n, P5359026930435147097.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P15841538869086480340

`filter[A092535(n+1), A354097(#)]`
-/

namespace A354098.P15841538869086480340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P15841538869086480340

namespace A354098

/-- `filter[A092535(n+1), A354097(#)]` -/
def P15841538869086480340.Spec : Prop :=
  ∀ n, P15841538869086480340.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P16354707383323057497

`filter[A300576(n+1), A354097(#)]`
-/

namespace A354098.P16354707383323057497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P16354707383323057497

namespace A354098

/-- `filter[A300576(n+1), A354097(#)]` -/
def P16354707383323057497.Spec : Prop :=
  ∀ n, P16354707383323057497.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P13383521132943072363

`filter[A316571(n+1), A354097(#)]`
-/

namespace A354098.P13383521132943072363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P13383521132943072363

namespace A354098

/-- `filter[A316571(n+1), A354097(#)]` -/
def P13383521132943072363.Spec : Prop :=
  ∀ n, P13383521132943072363.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P5413864122035426826

`filter[A058992(n+2), A354097(#)]`
-/

namespace A354098.P5413864122035426826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P5413864122035426826

namespace A354098

/-- `filter[A058992(n+2), A354097(#)]` -/
def P5413864122035426826.Spec : Prop :=
  ∀ n, P5413864122035426826.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P2968063013492791839

`filter[A185048(2*n+1), A354097(#)]`
-/

namespace A354098.P2968063013492791839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P2968063013492791839

namespace A354098

/-- `filter[A185048(2*n+1), A354097(#)]` -/
def P2968063013492791839.Spec : Prop :=
  ∀ n, P2968063013492791839.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P11672577857186003640

`filter[A004279(n), A354097(#)]`
-/

namespace A354098.P11672577857186003640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P11672577857186003640

namespace A354098

/-- `filter[A004279(n), A354097(#)]` -/
def P11672577857186003640.Spec : Prop :=
  ∀ n, P11672577857186003640.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P2904707943956267239

`filter[A004271(n+1), A354097(#)]`
-/

namespace A354098.P2904707943956267239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P2904707943956267239

namespace A354098

/-- `filter[A004271(n+1), A354097(#)]` -/
def P2904707943956267239.Spec : Prop :=
  ∀ n, P2904707943956267239.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P14405546953626091319

`filter[A004272(n+1), A354097(#)]`
-/

namespace A354098.P14405546953626091319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P14405546953626091319

namespace A354098

/-- `filter[A004272(n+1), A354097(#)]` -/
def P14405546953626091319.Spec : Prop :=
  ∀ n, P14405546953626091319.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P3308194279716007328

`filter[A257282(n+2), A354097(#)]`
-/

namespace A354098.P3308194279716007328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P3308194279716007328

namespace A354098

/-- `filter[A257282(n+2), A354097(#)]` -/
def P3308194279716007328.Spec : Prop :=
  ∀ n, P3308194279716007328.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P1633619034433446469

`filter[A176693(n+2), A354097(#)]`
-/

namespace A354098.P1633619034433446469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P1633619034433446469

namespace A354098

/-- `filter[A176693(n+2), A354097(#)]` -/
def P1633619034433446469.Spec : Prop :=
  ∀ n, P1633619034433446469.a n = A354098 (n + 1)

end A354098

/-! ## A354098.P4540869101725359462

`filter[A064745(n+1), A354097(#)]`
-/

namespace A354098.P4540869101725359462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A354098.P4540869101725359462

namespace A354098

/-- `filter[A064745(n+1), A354097(#)]` -/
def P4540869101725359462.Spec : Prop :=
  ∀ n, P4540869101725359462.a n = A354098 (n + 1)

end A354098

/-!
# A354099: The 3-adic valuation of Euler totient function phi.

The programs for A354099, the canonical program `A354099.P1471750204109004553` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354099 has offset 1).

The definition of A354099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354099.P1471750204109004553

`A007949(A000010(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A354099

/-- `A007949(A000010(n+1))` -/
def P1471750204109004553.Spec : Prop :=
  ∀ n, P1471750204109004553.a n = A354099 (n + 1)

theorem P1471750204109004553.correct : P1471750204109004553.Spec := by
  intro n
  simp only [A354099, Nat.add_sub_cancel]

end A354099

/-! ## A354099.P8888572725130679411

`val((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], 3)`
-/

namespace A354099.P8888572725130679411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat 3

end

end A354099.P8888572725130679411

namespace A354099

/-- `val((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], 3)` -/
def P8888572725130679411.Spec : Prop :=
  ∀ n, (P8888572725130679411.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P16195487108458138653

`val(Δ[A002088(n)], 3)`
-/

namespace A354099.P16195487108458138653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A354099.P16195487108458138653

namespace A354099

/-- `val(Δ[A002088(n)], 3)` -/
def P16195487108458138653.Spec : Prop :=
  ∀ n, (P16195487108458138653.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P14193811273169219144

`val(Δ[A005728(n)], 3)`
-/

namespace A354099.P14193811273169219144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A354099.P14193811273169219144

namespace A354099

/-- `val(Δ[A005728(n)], 3)` -/
def P14193811273169219144.Spec : Prop :=
  ∀ n, (P14193811273169219144.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P14258776253567001725

`val(A046073(n+1), 3)`
-/

namespace A354099.P14258776253567001725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046073 (n + 1)).toNat 3

end

end A354099.P14258776253567001725

namespace A354099

/-- `val(A046073(n+1), 3)` -/
def P14258776253567001725.Spec : Prop :=
  ∀ n, (P14258776253567001725.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P4870195397896820719

`val(A053575(n+1), 3)`
-/

namespace A354099.P4870195397896820719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053575 (n + 1)).toNat 3

end

end A354099.P4870195397896820719

namespace A354099

/-- `val(A053575(n+1), 3)` -/
def P4870195397896820719.Spec : Prop :=
  ∀ n, (P4870195397896820719.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P11858334837482495316

`val(A055034(n+1), 3)`
-/

namespace A354099.P11858334837482495316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055034 (n + 1)).toNat 3

end

end A354099.P11858334837482495316

namespace A354099

/-- `val(A055034(n+1), 3)` -/
def P11858334837482495316.Spec : Prop :=
  ∀ n, (P11858334837482495316.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P1749113241015767647

`val(A055035(n+1), 3)`
-/

namespace A354099.P1749113241015767647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055035 (n + 1)).toNat 3

end

end A354099.P1749113241015767647

namespace A354099

/-- `val(A055035(n+1), 3)` -/
def P1749113241015767647.Spec : Prop :=
  ∀ n, (P1749113241015767647.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P17421299689917318016

`val(A062570(n+1), 3)`
-/

namespace A354099.P17421299689917318016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062570 (n + 1)).toNat 3

end

end A354099.P17421299689917318016

namespace A354099

/-- `val(A062570(n+1), 3)` -/
def P17421299689917318016.Spec : Prop :=
  ∀ n, (P17421299689917318016.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P7951162641210924355

`val(A070306(n+1), 3)`
-/

namespace A354099.P7951162641210924355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A070306 (n + 1)).toNat 3

end

end A354099.P7951162641210924355

namespace A354099

/-- `val(A070306(n+1), 3)` -/
def P7951162641210924355.Spec : Prop :=
  ∀ n, (P7951162641210924355.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P332369566118435607

`val(A089692(n+1), 3)`
-/

namespace A354099.P332369566118435607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089692 (n + 1)).toNat 3

end

end A354099.P332369566118435607

namespace A354099

/-- `val(A089692(n+1), 3)` -/
def P332369566118435607.Spec : Prop :=
  ∀ n, (P332369566118435607.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P7625001792067322070

`val(A133725(n+1), 3)`
-/

namespace A354099.P7625001792067322070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133725 (n + 1)).toNat 3

end

end A354099.P7625001792067322070

namespace A354099

/-- `val(A133725(n+1), 3)` -/
def P7625001792067322070.Spec : Prop :=
  ∀ n, (P7625001792067322070.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P7458280354849435997

`val(A140434(n+1), 3)`
-/

namespace A354099.P7458280354849435997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140434 (n + 1)).toNat 3

end

end A354099.P7458280354849435997

namespace A354099

/-- `val(A140434(n+1), 3)` -/
def P7458280354849435997.Spec : Prop :=
  ∀ n, (P7458280354849435997.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P9697577364582134007

`val(A232626(n+1), 3)`
-/

namespace A354099.P9697577364582134007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A232626 (n + 1)).toNat 3

end

end A354099.P9697577364582134007

namespace A354099

/-- `val(A232626(n+1), 3)` -/
def P9697577364582134007.Spec : Prop :=
  ∀ n, (P9697577364582134007.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P9225631344227272891

`val(A250207(n+1), 3)`
-/

namespace A354099.P9225631344227272891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A250207 (n + 1)).toNat 3

end

end A354099.P9225631344227272891

namespace A354099

/-- `val(A250207(n+1), 3)` -/
def P9225631344227272891.Spec : Prop :=
  ∀ n, (P9225631344227272891.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P172052728264284948

`val(A293482(n+1), 3)`
-/

namespace A354099.P172052728264284948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293482 (n + 1)).toNat 3

end

end A354099.P172052728264284948

namespace A354099

/-- `val(A293482(n+1), 3)` -/
def P172052728264284948.Spec : Prop :=
  ∀ n, (P172052728264284948.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P13104133812223125616

`val(sqrt(A127473(n+1)), 3)`
-/

namespace A354099.P13104133812223125616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat 3

end

end A354099.P13104133812223125616

namespace A354099

/-- `val(sqrt(A127473(n+1)), 3)` -/
def P13104133812223125616.Spec : Prop :=
  ∀ n, (P13104133812223125616.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P564681907713233946

`val(A109606(n+1)+1, 3)`
-/

namespace A354099.P564681907713233946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A109606 (n + 1) + 1).toNat 3

end

end A354099.P564681907713233946

namespace A354099

/-- `val(A109606(n+1)+1, 3)` -/
def P564681907713233946.Spec : Prop :=
  ∀ n, (P564681907713233946.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P17951465246368712127

`val(A039649(n+1)-1, 3)`
-/

namespace A354099.P17951465246368712127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039649 (n + 1) - 1).toNat 3

end

end A354099.P17951465246368712127

namespace A354099

/-- `val(A039649(n+1)-1, 3)` -/
def P17951465246368712127.Spec : Prop :=
  ∀ n, (P17951465246368712127.a n : ℤ) = A354099 (n + 1)

end A354099

/-! ## A354099.P3613411580833913546

`val(A000010(2*n-(n-1))², 9)`
-/

namespace A354099.P3613411580833913546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2).toNat 9

end

end A354099.P3613411580833913546

namespace A354099

/-- `val(A000010(2*n-(n-1))², 9)` -/
def P3613411580833913546.Spec : Prop :=
  ∀ n, (P3613411580833913546.a n : ℤ) = A354099 (n + 1)

end A354099

