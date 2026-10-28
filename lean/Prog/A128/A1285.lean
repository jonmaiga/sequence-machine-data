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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C013
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A128501: a(n) = lcm{1 <= k <= n, gcd(k, 3) = 1}.

The programs for A128501, there is no canonical definition to state claims against.
-/

/-! ## A128501.P16578404259515674367

`lcm(n, 27*a(n-1))/27` with `a(0)=1`
-/

namespace A128501.P16578404259515674367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (27 * a (n - 1))) : ℚ) / 27

end

end A128501.P16578404259515674367

/-! ## A128501.P10748512467133070822

`lcm(n^(n²%3), a(n-1))` with `a(0)=1`
-/

namespace A128501.P10748512467133070822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n ^ (n ^ 2 % 3)) (a (n - 1))

end

end A128501.P10748512467133070822

/-! ## A128501.P16734890848647276969

`lcm(char[3*n]-n, -a(n-1))` with `a(0)=1`
-/

namespace A128501.P16734890848647276969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)) (-(a (n - 1) : ℤ))

end

end A128501.P16734890848647276969

/-! ## A128501.P13706010194611888997

`lcm(81, A003418(n))/81`
-/

namespace A128501.P13706010194611888997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 81 (A003418 n) : ℚ) / 81

end

end A128501.P13706010194611888997

/-! ## A128501.P9859293987685173802

`lcm(a(n-1), A038502(n))` with `a(0)=1`
-/

namespace A128501.P9859293987685173802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A038502 n)

end

end A128501.P9859293987685173802

/-!
# A128502: Convolution array for Chebyshev's S(n,x)=U(n,x/2) polynomials.

The programs for A128502, there is no canonical definition to state claims against.
-/

/-! ## A128502.P6582870843347831839

`A115139(n+1)*A199474(n+1)`
-/

namespace A128502.P6582870843347831839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (n + 1) * A199474 (n + 1)

end

end A128502.P6582870843347831839

/-! ## A128502.P3175447793100468756

`A002024(A056536(n+1))*A115139(n+1)`
-/

namespace A128502.P3175447793100468756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A056536 (n + 1)).toNat * A115139 (n + 1)

end

end A128502.P3175447793100468756

/-! ## A128502.P18086895972248258026

`A004736(A274427(n+1))*A115139(n+1)`
-/

namespace A128502.P18086895972248258026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A274427 (n + 1)).toNat * A115139 (n + 1)

end

end A128502.P18086895972248258026

/-! ## A128502.P5517181236267134726

`A053119(lt[0, A053125(n)])*A199474(n+1)`
-/

namespace A128502.P5517181236267134726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A199474 (n + 1)

end

end A128502.P5517181236267134726

/-! ## A128502.P14180588678902431109

`A053119(A028391(n)+n)*A199474(n+1)`
-/

namespace A128502.P14180588678902431109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A028391 n + (n : ℤ)).toNat * A199474 (n + 1)

end

end A128502.P14180588678902431109

/-! ## A128502.P12683153702764424605

`(A000267(n)-A055087(n))*A115139(n+1)`
-/

namespace A128502.P12683153702764424605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000267 n - A055087 n) * A115139 (n + 1)

end

end A128502.P12683153702764424605

/-! ## A128502.P7027445529204422173

`A053119(record[1-A053119(n)²+n])*A199474(n+1)`
-/

namespace A128502.P7027445529204422173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053119 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A199474 (n + 1)

end

end A128502.P7027445529204422173

/-!
# A128503: Array for second (k=2) convolution of Chebyshev's S(n,x)=U(n,x/2) polynomials.

The programs for A128503, the canonical program `A128503.P12746063589524397310` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128503 has offset 0).

The definition of A128503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128503.P12746063589524397310

`A115139(n+1)*A127739(A056536(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128503

/-- `A115139(n+1)*A127739(A056536(n+1))` -/
def P12746063589524397310.Spec : Prop :=
  ∀ n, P12746063589524397310.a n = A128503 n

theorem P12746063589524397310.correct : P12746063589524397310.Spec := by
  intro n
  simp only [A128503]

end A128503

/-! ## A128503.P2343928063531990850

`A108299(A028391(n)+n)*A127739(A056536(n+1))`
-/

namespace A128503.P2343928063531990850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A028391 n + (n : ℤ)).toNat * A127739 (A056536 (n + 1)).toNat

end

end A128503.P2343928063531990850

namespace A128503

/-- `A108299(A028391(n)+n)*A127739(A056536(n+1))` -/
def P2343928063531990850.Spec : Prop :=
  ∀ n, P2343928063531990850.a n = A128503 n

end A128503

/-! ## A128503.P16443712332832429232

`A053119(A028391(n)+n)*A127739(A056536(n+1))`
-/

namespace A128503.P16443712332832429232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A028391 n + (n : ℤ)).toNat * A127739 (A056536 (n + 1)).toNat

end

end A128503.P16443712332832429232

namespace A128503

/-- `A053119(A028391(n)+n)*A127739(A056536(n+1))` -/
def P16443712332832429232.Spec : Prop :=
  ∀ n, P16443712332832429232.a n = A128503 n

end A128503

/-! ## A128503.P11047823490055956724

`A000217(A199474(n+1))*A115139(n+1)`
-/

namespace A128503.P11047823490055956724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A199474 (n + 1)).toNat * A115139 (n + 1)

end

end A128503.P11047823490055956724

namespace A128503

/-- `A000217(A199474(n+1))*A115139(n+1)` -/
def P11047823490055956724.Spec : Prop :=
  ∀ n, P11047823490055956724.a n = A128503 n

end A128503

/-! ## A128503.P3087780683685838556

`A000217(A199474(n+1))*A053119(A028391(n)+n)`
-/

namespace A128503.P3087780683685838556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A199474 (n + 1)).toNat * A053119 (A028391 n + (n : ℤ)).toNat

end

end A128503.P3087780683685838556

namespace A128503

/-- `A000217(A199474(n+1))*A053119(A028391(n)+n)` -/
def P3087780683685838556.Spec : Prop :=
  ∀ n, P3087780683685838556.a n = A128503 n

end A128503

/-! ## A128503.P11857416942301240493

`A000217(A199474(n+1))*A108299(A028391(n)+n)`
-/

namespace A128503.P11857416942301240493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A199474 (n + 1)).toNat * A108299 (A028391 n + (n : ℤ)).toNat

end

end A128503.P11857416942301240493

namespace A128503

/-- `A000217(A199474(n+1))*A108299(A028391(n)+n)` -/
def P11857416942301240493.Spec : Prop :=
  ∀ n, P11857416942301240493.a n = A128503 n

end A128503

/-! ## A128503.P12622396698791513717

`A128502(n)/A199474(n+1)*A127739(A056536(n+1))`
-/

namespace A128503.P12622396698791513717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128502 n : ℚ) / (A199474 (n + 1) : ℚ) * (A127739 (A056536 (n + 1)).toNat : ℚ)

end

end A128503.P12622396698791513717

namespace A128503

/-- `A128502(n)/A199474(n+1)*A127739(A056536(n+1))` -/
def P12622396698791513717.Spec : Prop :=
  ∀ n, P12622396698791513717.a n = (A128503 n : ℚ)

end A128503

/-!
# A128504: Row sums of array A128503 (second convolution of Chebyshev's S(n,x) = U(n,x/2) polynomials).

The programs for A128504, the canonical program `A128504.P11162998662374346372` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128504 has offset 0).

The definition of A128504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128504.P11162998662374346372

`ogf(1/(1-3x+6x^2-7x^3+6x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128504

/-- `ogf(1/(1-3x+6x^2-7x^3+6x^4-3x^5+x^6))` -/
def P11162998662374346372.Spec : Prop :=
  ∀ n, P11162998662374346372.a n = A128504 n

theorem P11162998662374346372.correct : P11162998662374346372.Spec := by
  intro n
  simp only [A128504]

end A128504

/-! ## A128504.P3896867054553103699

`A165202(n)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A128504.P3896867054553103699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  A165202 n - a (n - 3)

end

end A128504.P3896867054553103699

namespace A128504

/-- `A165202(n)-a(n-3)` -/
def P3896867054553103699.Spec : Prop :=
  ∀ n, P3896867054553103699.a n = A128504 n

end A128504

/-! ## A128504.P1214978783971774773

`A104555(n)+A099254(n)`
-/

namespace A128504.P1214978783971774773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 n + A099254 n

end

end A128504.P1214978783971774773

namespace A128504

/-- `A104555(n)+A099254(n)` -/
def P1214978783971774773.Spec : Prop :=
  ∀ n, P1214978783971774773.a n = A128504 n

end A128504

/-! ## A128504.P17478962644322068282

`∑[A010892(n)*A027626(n)]`
-/

namespace A128504.P17478962644322068282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A027626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128504.P17478962644322068282

namespace A128504

/-- `∑[A010892(n)*A027626(n)]` -/
def P17478962644322068282.Spec : Prop :=
  ∀ n, P17478962644322068282.a n = A128504 n

end A128504

/-! ## A128504.P13638870120938320041

`A104555(n)-A099470(n+1)`
-/

namespace A128504.P13638870120938320041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 n - A099470 (n + 1)

end

end A128504.P13638870120938320041

namespace A128504

/-- `A104555(n)-A099470(n+1)` -/
def P13638870120938320041.Spec : Prop :=
  ∀ n, P13638870120938320041.a n = A128504 n

end A128504

/-! ## A128504.P2838878642510161545

`∑[∑[A008620(n)]*A010892(n)]`
-/

namespace A128504.P2838878642510161545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128504.P2838878642510161545

namespace A128504

/-- `∑[∑[A008620(n)]*A010892(n)]` -/
def P2838878642510161545.Spec : Prop :=
  ∀ n, P2838878642510161545.a n = A128504 n

end A128504

/-! ## A128504.P852124148747546585

`∑[∑[A092092(n+1)]*A010892(n)]`
-/

namespace A128504.P852124148747546585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128504.P852124148747546585

namespace A128504

/-- `∑[∑[A092092(n+1)]*A010892(n)]` -/
def P852124148747546585.Spec : Prop :=
  ∀ n, P852124148747546585.a n = A128504 n

end A128504

/-! ## A128504.P12434595317581271400

`∑[A104555(n+1)]`
-/

namespace A128504.P12434595317581271400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128504.P12434595317581271400

namespace A128504

/-- `∑[A104555(n+1)]` -/
def P12434595317581271400.Spec : Prop :=
  ∀ n, P12434595317581271400.a n = A128504 n

end A128504

/-! ## A128504.P2095716997428557194

`A281862(n+2)-A099254(n+1)`
-/

namespace A128504.P2095716997428557194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281862 (n + 2) - A099254 (n + 1)

end

end A128504.P2095716997428557194

namespace A128504

/-- `A281862(n+2)-A099254(n+1)` -/
def P2095716997428557194.Spec : Prop :=
  ∀ n, P2095716997428557194.a n = A128504 n

end A128504

/-! ## A128504.P3528865786865345418

`∑[A147843(∑[A008620(n)])]`
-/

namespace A128504.P3528865786865345418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128504.P3528865786865345418

namespace A128504

/-- `∑[A147843(∑[A008620(n)])]` -/
def P3528865786865345418.Spec : Prop :=
  ∀ n, P3528865786865345418.a n = A128504 n

end A128504

/-! ## A128504.P15575442707912443895

`A101950(∑[n+2]+3)`
-/

namespace A128504.P15575442707912443895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101950 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A128504.P15575442707912443895

namespace A128504

/-- `A101950(∑[n+2]+3)` -/
def P15575442707912443895.Spec : Prop :=
  ∀ n, P15575442707912443895.a n = A128504 n

end A128504

/-! ## A128504.P2157919834084782253

`∑[∑[A202603(∑[n+3])]]`
-/

namespace A128504.P2157919834084782253
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202603 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128504.P2157919834084782253

namespace A128504

/-- `∑[∑[A202603(∑[n+3])]]` -/
def P2157919834084782253.Spec : Prop :=
  ∀ n, P2157919834084782253.a n = A128504 n

end A128504

/-!
# A128507: Denominators of partial sums for a series for 3*sqrt(2)*(Pi^3)/2^7.

The programs for A128507, there is no canonical definition to state claims against.
-/

/-! ## A128507.P339494033798251934

`A025547(A132576(n+1))^3`
-/

namespace A128507.P339494033798251934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (A132576 (n + 1)).toNat ^ 3

end

end A128507.P339494033798251934

/-! ## A128507.P2120622566581473384

`A217858(A061808(n+1))^3`
-/

namespace A128507.P2120622566581473384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217858 (A061808 (n + 1)).toNat ^ 3

end

end A128507.P2120622566581473384

/-! ## A128507.P3564923158743566086

`A025547(n+1)^A020500(3^n)`
-/

namespace A128507.P3564923158743566086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025547 (n + 1) : ℚ) ^ (A020500 (3 ^ n) : ℤ)

end

end A128507.P3564923158743566086

/-! ## A128507.P16753281368112230778

`∏[A014963(Δ[n²])]^A020500(3^n)`
-/

namespace A128507.P16753281368112230778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A020500 (3 ^ n) : ℤ)

end

end A128507.P16753281368112230778

/-!
# A128508: Number of partitions p of n such that max(p) - min(p) = 3.

The programs for A128508, the canonical program `A128508.P16546572692468515446` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128508 has offset 0).

The definition of A128508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128508.P16546572692468515446

`A117143(A028310(n))-A117142(A028310(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A128508

/-- `A117143(A028310(n))-A117142(A028310(n))` -/
def P16546572692468515446.Spec : Prop :=
  ∀ n, P16546572692468515446.a n = A128508 n

theorem P16546572692468515446.correct : P16546572692468515446.Spec := by
  intro n
  simp only [A128508]

end A128508

/-!
# A128510: Composites c such that c*A001414(c) is adjacent to a prime.

The programs for A128510, there is no canonical definition to state claims against.
-/

/-! ## A128510.P3942244906894138721

`A002808(lt[A246682(2*n+3), (2*n)²])`
-/

namespace A128510.P3942244906894138721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246682 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A128510.P3942244906894138721

/-! ## A128510.P14310724257209553806

`A002808(lt[A323256(2*(n+2)), A305672(n+1)])`
-/

namespace A128510.P14310724257209553806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323256 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128510.P14310724257209553806

/-! ## A128510.P6871518076100689601

`A002808(lt[A061447(2*n+3), A005900(3*n)])`
-/

namespace A128510.P6871518076100689601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061447 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128510.P6871518076100689601

/-! ## A128510.P7496871794148446589

`A002808(lt[A282601(2*n+5), A000040(n+1)]+1)`
-/

namespace A128510.P7496871794148446589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282601 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A128510.P7496871794148446589

/-!
# A128511: Numbers which are both lucky and pentagonal.

The programs for A128511, there is no canonical definition to state claims against.
-/

/-! ## A128511.P7334191862701955797

`∩[3*C(n, 2)+n, A000959(n+1)]`
-/

namespace A128511.P7334191862701955797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128511.P7334191862701955797

/-! ## A128511.P9956969198927143578

`∩[A000959(n+1), A000326(n)]`
-/

namespace A128511.P9956969198927143578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128511.P9956969198927143578

/-! ## A128511.P12063321425620713392

`filter[A014632(n), A145649(#)]`
-/

namespace A128511.P12063321425620713392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A128511.P12063321425620713392

/-!
# A128513: a(1)=2, a(n) = 1 + (smallest integer > a(n-1) with the same number of divisors as a(n-1)).

The programs for A128513, there is no canonical definition to state claims against.
-/

/-! ## A128513.P16016859266904267232

`A079427(a(n-1))+1` with `a(0)=2`
-/

namespace A128513.P16016859266904267232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079427 (a (n - 1)).toNat + 1

end

end A128513.P16016859266904267232

/-! ## A128513.P7098207533340641351

`a(n-1)+A171937(a(n-1))+1` with `a(0)=2`
-/

namespace A128513.P7098207533340641351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A171937 (a (n - 1)).toNat + 1)

end

end A128513.P7098207533340641351

/-! ## A128513.P398620101379381117

`A079427(a(n-1))-(n-1)-A001489(n)` with `a(0)=2`
-/

namespace A128513.P398620101379381117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079427 (a (n - 1)).toNat - ((n : ℤ) - 1) - A001489 n

end

end A128513.P398620101379381117

/-! ## A128513.P18236140418902465856

`A065475(A079427(a(n-1)))` with `a(0)=2`
-/

namespace A128513.P18236140418902465856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065475 (A079427 (a (n - 1)).toNat).toNat

end

end A128513.P18236140418902465856

/-! ## A128513.P1963585160664225739

`A008619(2*A079427(a(n-1)))` with `a(0)=2`
-/

namespace A128513.P1963585160664225739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008619 (2 * A079427 (a (n - 1)).toNat).toNat

end

end A128513.P1963585160664225739

/-! ## A128513.P2798527700714176028

`A027656(2*A079427(a(n-1)))` with `a(0)=2`
-/

namespace A128513.P2798527700714176028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A027656 (2 * A079427 (a (n - 1)).toNat).toNat

end

end A128513.P2798527700714176028

/-!
# A128514: Triangle, Pell sequence in every column.

The programs for A128514, the canonical program `A128514.P1191630160223175623` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128514 has offset 1).

The definition of A128514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128514.P9603952506387897913

`A000129(row(n)+1-col(n))`
-/

namespace A128514.P9603952506387897913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A128514.P9603952506387897913

namespace A128514

/-- `A000129(row(n)+1-col(n))` -/
def P9603952506387897913.Spec : Prop :=
  ∀ n, P9603952506387897913.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P10702423576368870674

`A000129(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A128514.P10702423576368870674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A128514.P10702423576368870674

namespace A128514

/-- `A000129(C(comp[∑[n]]-n, 2)-n)` -/
def P10702423576368870674.Spec : Prop :=
  ∀ n, P10702423576368870674.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P18317305828473270597

`A215928(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A128514.P18317305828473270597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A128514.P18317305828473270597

namespace A128514

/-- `A215928(C(comp[∑[n]]-n, 2)-n)` -/
def P18317305828473270597.Spec : Prop :=
  ∀ n, P18317305828473270597.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P10371576297878914208

`A174191(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A128514.P10371576297878914208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A128514.P10371576297878914208

namespace A128514

/-- `A174191(C(comp[∑[n]]-n, 2)-n)-1` -/
def P10371576297878914208.Spec : Prop :=
  ∀ n, P10371576297878914208.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P15966639572141560962

`A002965(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A128514.P15966639572141560962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A128514.P15966639572141560962

namespace A128514

/-- `A002965(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P15966639572141560962.Spec : Prop :=
  ∀ n, P15966639572141560962.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P7461607864058672929

`A116558(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A128514.P7461607864058672929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A128514.P7461607864058672929

namespace A128514

/-- `A116558(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P7461607864058672929.Spec : Prop :=
  ∀ n, P7461607864058672929.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P13673469955447273294

`A135153(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A128514.P13673469955447273294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A128514.P13673469955447273294

namespace A128514

/-- `A135153(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P13673469955447273294.Spec : Prop :=
  ∀ n, P13673469955447273294.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P10989913316515732839

`A155046(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A128514.P10989913316515732839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A128514.P10989913316515732839

namespace A128514

/-- `A155046(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P10989913316515732839.Spec : Prop :=
  ∀ n, P10989913316515732839.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P14986119151600046650

`A052542(C(comp[∑[n]]-n, 2)-n)/2`
-/

namespace A128514.P14986119151600046650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052542 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 2

end

end A128514.P14986119151600046650

namespace A128514

/-- `A052542(C(comp[∑[n]]-n, 2)-n)/2` -/
def P14986119151600046650.Spec : Prop :=
  ∀ n, P14986119151600046650.a n = (A128514 (n + 1) : ℚ)

end A128514

/-! ## A128514.P4777903059911788296

`A249576(3*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A128514.P4777903059911788296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A128514.P4777903059911788296

namespace A128514

/-- `A249576(3*(C(comp[∑[n]]-n, 2)-n))` -/
def P4777903059911788296.Spec : Prop :=
  ∀ n, P4777903059911788296.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P17182383882663057925

`A092550(3*(C(comp[C(n, 2)]-n, 2)-n))`
-/

namespace A128514.P17182383882663057925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A128514.P17182383882663057925

namespace A128514

/-- `A092550(3*(C(comp[C(n, 2)]-n, 2)-n))` -/
def P17182383882663057925.Spec : Prop :=
  ∀ n, P17182383882663057925.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P1191630160223175623

`A116558(A104571(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128514

/-- `A116558(A104571(n))` -/
def P1191630160223175623.Spec : Prop :=
  ∀ n, P1191630160223175623.a n = A128514 (n + 1)

theorem P1191630160223175623.correct : P1191630160223175623.Spec := by
  intro n
  simp only [A128514, Nat.add_sub_cancel]

end A128514

/-! ## A128514.P15693141858385618877

`A000129(A004736(n+1))`
-/

namespace A128514.P15693141858385618877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A004736 (n + 1)).toNat

end

end A128514.P15693141858385618877

namespace A128514

/-- `A000129(A004736(n+1))` -/
def P15693141858385618877.Spec : Prop :=
  ∀ n, P15693141858385618877.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P4978362422046521336

`A002965(A212012(n+1))`
-/

namespace A128514.P4978362422046521336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A212012 (n + 1)).toNat

end

end A128514.P4978362422046521336

namespace A128514

/-- `A002965(A212012(n+1))` -/
def P4978362422046521336.Spec : Prop :=
  ∀ n, P4978362422046521336.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P5692305801401151813

`A092550(A143971(n+1))`
-/

namespace A128514.P5692305801401151813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A143971 (n + 1)).toNat

end

end A128514.P5692305801401151813

namespace A128514

/-- `A092550(A143971(n+1))` -/
def P5692305801401151813.Spec : Prop :=
  ∀ n, P5692305801401151813.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P12076080776776718029

`A215928(A025581(n)+1)`
-/

namespace A128514.P12076080776776718029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (A025581 n + 1).toNat

end

end A128514.P12076080776776718029

namespace A128514

/-- `A215928(A025581(n)+1)` -/
def P12076080776776718029.Spec : Prop :=
  ∀ n, P12076080776776718029.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P1291928396517469154

`A002965(2*A004736(n+1))`
-/

namespace A128514.P1291928396517469154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * A004736 (n + 1)).toNat

end

end A128514.P1291928396517469154

namespace A128514

/-- `A002965(2*A004736(n+1))` -/
def P1291928396517469154.Spec : Prop :=
  ∀ n, P1291928396517469154.a n = A128514 (n + 1)

end A128514

/-! ## A128514.P4557845183605695515

`A367211(n+1)/A074909(n)`
-/

namespace A128514.P4557845183605695515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367211 (n + 1) : ℚ) / (A074909 n : ℚ)

end

end A128514.P4557845183605695515

namespace A128514

/-- `A367211(n+1)/A074909(n)` -/
def P4557845183605695515.Spec : Prop :=
  ∀ n, P4557845183605695515.a n = (A128514 (n + 1) : ℚ)

end A128514

/-! ## A128514.P3014203063702612789

`A110327(n)/A094587(n)`
-/

namespace A128514.P3014203063702612789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110327 n : ℚ) / (A094587 n : ℚ)

end

end A128514.P3014203063702612789

namespace A128514

/-- `A110327(n)/A094587(n)` -/
def P3014203063702612789.Spec : Prop :=
  ∀ n, P3014203063702612789.a n = (A128514 (n + 1) : ℚ)

end A128514

/-! ## A128514.P2544305169699715706

`A140998(A292565(n+1))`
-/

namespace A128514.P2544305169699715706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140998 (A292565 (n + 1)).toNat

end

end A128514.P2544305169699715706

namespace A128514

/-- `A140998(A292565(n+1))` -/
def P2544305169699715706.Spec : Prop :=
  ∀ n, P2544305169699715706.a n = A128514 (n + 1)

end A128514

/-!
# A128515: Partitions of n into primes that are not factors of n.

The programs for A128515, there is no canonical definition to state claims against.
-/

/-! ## A128515.P851801477271711153

`A240471(A124441(n+1))%A124441(n+1)`
-/

namespace A128515.P851801477271711153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240471 (A124441 (n + 1)).toNat) (A124441 (n + 1))

end

end A128515.P851801477271711153

/-! ## A128515.P18220859180392425290

`A140747(C(A000010(n+1), A263297(n+1)))`
-/

namespace A128515.P18220859180392425290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140747 (Nat.choose (A000010 (n + 1)).toNat (A263297 (n + 1)).toNat)

end

end A128515.P18220859180392425290

/-! ## A128515.P11560969551112651258

`A008507((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A175712(2*(n+1))`
-/

namespace A128515.P11560969551112651258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008507 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat) (A175712 (2 * (n + 1)))

end

end A128515.P11560969551112651258

/-! ## A128515.P9424488249500429427

`A008507(A000010(n+1))%A119268(n)`
-/

namespace A128515.P9424488249500429427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008507 (A000010 (n + 1)).toNat) (A119268 n)

end

end A128515.P9424488249500429427

/-! ## A128515.P16678718716889784199

`A008507(A187829(n+1)-A051953(n+1))`
-/

namespace A128515.P16678718716889784199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (A187829 (n + 1) - A051953 (n + 1)).toNat

end

end A128515.P16678718716889784199

/-!
# A128521: A128174 * A054525 * A000012.

The programs for A128521, there is no canonical definition to state claims against.
-/

/-! ## A128521.P8780147749823364021

`A000005(A081762(n+1))-A128184(n+1)`
-/

namespace A128521.P8780147749823364021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A081762 (n + 1)).toNat - A128184 (n + 1)

end

end A128521.P8780147749823364021

/-! ## A128521.P17652631766654263876

`A001227(A211203(3*(n+1)))-A128184(n+1)`
-/

namespace A128521.P17652631766654263876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A211203 (3 * (n + 1))).toNat - A128184 (n + 1)

end

end A128521.P17652631766654263876

/-! ## A128521.P7085065543555835694

`A130130(A180078(3*n+2))-A128184(n+1)`
-/

namespace A128521.P7085065543555835694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A180078 (3 * n + 2)).toNat - A128184 (n + 1)

end

end A128521.P7085065543555835694

/-! ## A128521.P4868642556419730794

`A366308(A109410(3*n+5))-A128184(n+1)`
-/

namespace A128521.P4868642556419730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366308 (A109410 (3 * n + 5)).toNat - A128184 (n + 1)

end

end A128521.P4868642556419730794

/-! ## A128521.P10387760736156353707

`A020639(A022368(n))-A128184(n+1)`
-/

namespace A128521.P10387760736156353707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022368 n).toNat - A128184 (n + 1)

end

end A128521.P10387760736156353707

/-!
# A128524: a(n) = denominator of r(n): r(n) is such that the continued fraction (of rational terms) [r(1);r(2),...r(n)] equals n! for every positive integer n.

The programs for A128524, there is no canonical definition to state claims against.
-/

/-! ## A128524.P1760762533328915450

`A000720(floor(n*log2(3))!+1)`
-/

namespace A128524.P1760762533328915450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.factorial ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋.toNat + 1)

end

end A128524.P1760762533328915450

/-! ## A128524.P16600618063659121789

`A204892(comp[3*n-1]!)-1`
-/

namespace A128524.P16600618063659121789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) - 1

end

end A128524.P16600618063659121789

/-!
# A128526: Number of 4-indecomposable (connected) graphs on n nodes.

The programs for A128526, there is no canonical definition to state claims against.
-/

/-! ## A128526.P13892782261010707846

`A128528(n+1)%A288860(A284539(n+4))`
-/

namespace A128526.P13892782261010707846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128528 (n + 1)) (A288860 (A284539 (n + 4)).toNat)

end

end A128526.P13892782261010707846

/-! ## A128526.P9305912100103017592

`A001349(n)%A092693(A000045(2*(n+2)))`
-/

namespace A128526.P9305912100103017592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001349 n) (A092693 (A000045 (2 * (n + 2))).toNat)

end

end A128526.P9305912100103017592

/-!
# A128530: Nontrivial products of three lucky numbers.

The programs for A128530, there is no canonical definition to state claims against.
-/

/-! ## A128530.P16215535787225124213

`3*A128462(A077168(n))`
-/

namespace A128530.P16215535787225124213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A128462 (A077168 n).toNat

end

end A128530.P16215535787225124213

/-! ## A128530.P2692385787875571994

`A048883(A000079(n))*A128462(n+1)`
-/

namespace A128530.P2692385787875571994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A000079 n).toNat * A128462 (n + 1)

end

end A128530.P2692385787875571994

/-! ## A128530.P16618638253037773479

`A008486(A128462(n+1)^A117358(n+2))`
-/

namespace A128530.P16618638253037773479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A128462 (n + 1) : ℚ) ^ (A117358 (n + 2) : ℤ))).toNat

end

end A128530.P16618638253037773479

/-! ## A128530.P18217870248403597299

`3*A128462(A161951(n+1))`
-/

namespace A128530.P18217870248403597299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A128462 (A161951 (n + 1)).toNat

end

end A128530.P18217870248403597299

/-! ## A128530.P9916316590492621530

`A128462(n+1)*A332880(A198633(n+1))`
-/

namespace A128530.P9916316590492621530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128462 (n + 1) * A332880 (A198633 (n + 1)).toNat

end

end A128530.P9916316590492621530

/-!
# A128532: a(n) = denominator of r(n): r(n) is such that the continued fraction (of rational terms) [r(1);r(2),...r(n)] equals the n-th Fibonacci number, for every positive integer n.

The programs for A128532, there is no canonical definition to state claims against.
-/

/-! ## A128532.P14759561952647871301

`A002260(n)+a(n-1)*A304058(a(n-1))` with `a(0)=1`
-/

namespace A128532.P14759561952647871301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002260 n + a (n - 1) * A304058 (a (n - 1)).toNat

end

end A128532.P14759561952647871301

/-!
# A128533: a(n) = F(n)*L(n+2) where F=Fibonacci and L=Lucas numbers.

The programs for A128533, the canonical program `A128533.P13755038042375775184` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128533 has offset 0).

The definition of A128533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128533.P2028956774325147400

`ogf((4x-x^2)/(1-2x-2x^2+x^3))`
-/

namespace A128533.P2028956774325147400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -2, -2, 1] n

end

end A128533.P2028956774325147400

namespace A128533

/-- `ogf((4x-x^2)/(1-2x-2x^2+x^3))` -/
def P2028956774325147400.Spec : Prop :=
  ∀ n, P2028956774325147400.a n = A128533 n

end A128533

/-! ## A128533.P13755038042375775184

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128533

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P13755038042375775184.Spec : Prop :=
  ∀ n, P13755038042375775184.a n = A128533 n

theorem P13755038042375775184.correct : P13755038042375775184.Spec := by
  intro n
  simp only [A128533]

end A128533

/-! ## A128533.P1802925929589832876

`A186679(2*n)`
-/

namespace A128533.P1802925929589832876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186679 (2 * n)

end

end A128533.P1802925929589832876

namespace A128533

/-- `A186679(2*n)` -/
def P1802925929589832876.Spec : Prop :=
  ∀ n, P1802925929589832876.a n = A128533 n

end A128533

/-! ## A128533.P8078336940940597702

`A000045(2*n+2)-(-1)^n`
-/

namespace A128533.P8078336940940597702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 2) - (-1) ^ n

end

end A128533.P8078336940940597702

namespace A128533

/-- `A000045(2*n+2)-(-1)^n` -/
def P8078336940940597702.Spec : Prop :=
  ∀ n, P8078336940940597702.a n = A128533 n

end A128533

/-! ## A128533.P2522002633070801614

`A000045(n)*A000032(n+2)`
-/

namespace A128533.P2522002633070801614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000032 (n + 2)

end

end A128533.P2522002633070801614

namespace A128533

/-- `A000045(n)*A000032(n+2)` -/
def P2522002633070801614.Spec : Prop :=
  ∀ n, P2522002633070801614.a n = A128533 n

end A128533

/-! ## A128533.P14398925557548064084

`ceil(a(n-2)+ϕ^(2*n))` with `a(0)=0, a(1)=4`
-/

namespace A128533.P14398925557548064084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ⌈(a (n - 2) : ℝ) + Real.goldenRatio ^ (2 * n)⌉

end

end A128533.P14398925557548064084

namespace A128533

/-- `ceil(a(n-2)+ϕ^(2*n))` -/
def P14398925557548064084.Spec : Prop :=
  ∀ n, P14398925557548064084.a n = A128533 n

end A128533

/-! ## A128533.P15815282858612974317

`round(a(n-2)+ϕ^(2*n))` with `a(0)=0, a(1)=4`
-/

namespace A128533.P15815282858612974317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.goldenRatio ^ (2 * n))

end

end A128533.P15815282858612974317

namespace A128533

/-- `round(a(n-2)+ϕ^(2*n))` -/
def P15815282858612974317.Spec : Prop :=
  ∀ n, P15815282858612974317.a n = A128533 n

end A128533

/-! ## A128533.P5063115697627833361

`record[A186679(n)]`
-/

namespace A128533.P5063115697627833361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128533.P5063115697627833361

namespace A128533

/-- `record[A186679(n)]` -/
def P5063115697627833361.Spec : Prop :=
  ∀ n, P5063115697627833361.a n = A128533 n

end A128533

/-! ## A128533.P17464629951972826162

`A115008(Δ[n²])`
-/

namespace A128533.P17464629951972826162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128533.P17464629951972826162

namespace A128533

/-- `A115008(Δ[n²])` -/
def P17464629951972826162.Spec : Prop :=
  ∀ n, P17464629951972826162.a n = A128533 n

end A128533

/-! ## A128533.P4324768986111053455

`record[Δ[A116697(n)]]`
-/

namespace A128533.P4324768986111053455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128533.P4324768986111053455

namespace A128533

/-- `record[Δ[A116697(n)]]` -/
def P4324768986111053455.Spec : Prop :=
  ∀ n, P4324768986111053455.a n = A128533 n

end A128533

/-! ## A128533.P7132246562972575250

`∑[A000045(Δ[n²])]-(-1)^n`
-/

namespace A128533.P7132246562972575250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n

end

end A128533.P7132246562972575250

namespace A128533

/-- `∑[A000045(Δ[n²])]-(-1)^n` -/
def P7132246562972575250.Spec : Prop :=
  ∀ n, P7132246562972575250.a n = A128533 n

end A128533

/-! ## A128533.P15431350423819940082

`A000032(2*n)+a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A128533.P15431350423819940082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A000032 (2 * n) + a (n - 2)

end

end A128533.P15431350423819940082

namespace A128533

/-- `A000032(2*n)+a(n-2)` -/
def P15431350423819940082.Spec : Prop :=
  ∀ n, P15431350423819940082.a n = A128533 n

end A128533

/-! ## A128533.P4135709345792767675

`(-1)^(n+1)+A001906(n+1)`
-/

namespace A128533.P4135709345792767675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) + A001906 (n + 1)

end

end A128533.P4135709345792767675

namespace A128533

/-- `(-1)^(n+1)+A001906(n+1)` -/
def P4135709345792767675.Spec : Prop :=
  ∀ n, P4135709345792767675.a n = A128533 n

end A128533

/-! ## A128533.P5379491753305848850

`A226649(A047617(n+1))`
-/

namespace A128533.P5379491753305848850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (A047617 (n + 1)).toNat

end

end A128533.P5379491753305848850

namespace A128533

/-- `A226649(A047617(n+1))` -/
def P5379491753305848850.Spec : Prop :=
  ∀ n, P5379491753305848850.a n = A128533 n

end A128533

/-! ## A128533.P4782588392949507964

`A035508(n)+A010673(n)`
-/

namespace A128533.P4782588392949507964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n + A010673 n

end

end A128533.P4782588392949507964

namespace A128533

/-- `A035508(n)+A010673(n)` -/
def P4782588392949507964.Spec : Prop :=
  ∀ n, P4782588392949507964.a n = A128533 n

end A128533

/-! ## A128533.P15688668784224516088

`A120718(n)+A007598(n)`
-/

namespace A128533.P15688668784224516088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n + A007598 n

end

end A128533.P15688668784224516088

namespace A128533

/-- `A120718(n)+A007598(n)` -/
def P15688668784224516088.Spec : Prop :=
  ∀ n, P15688668784224516088.a n = A128533 n

end A128533

/-! ## A128533.P3110064980837570889

`A105693(n)+A062510(n)`
-/

namespace A128533.P3110064980837570889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105693 n + A062510 n

end

end A128533.P3110064980837570889

namespace A128533

/-- `A105693(n)+A062510(n)` -/
def P3110064980837570889.Spec : Prop :=
  ∀ n, P3110064980837570889.a n = A128533 n

end A128533

/-! ## A128533.P282416529821068749

`A000045(n)*A288219(n)`
-/

namespace A128533.P282416529821068749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A288219 n

end

end A128533.P282416529821068749

namespace A128533

/-- `A000045(n)*A288219(n)` -/
def P282416529821068749.Spec : Prop :=
  ∀ n, P282416529821068749.a n = A128533 n

end A128533

/-! ## A128533.P2391018798523524979

`A120718(n)+A000045(n)²`
-/

namespace A128533.P2391018798523524979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n + A000045 n ^ 2

end

end A128533.P2391018798523524979

namespace A128533

/-- `A120718(n)+A000045(n)²` -/
def P2391018798523524979.Spec : Prop :=
  ∀ n, P2391018798523524979.a n = A128533 n

end A128533

/-! ## A128533.P1410327180167675901

`A226649(A047470(n+1)+2)`
-/

namespace A128533.P1410327180167675901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (A047470 (n + 1) + 2).toNat

end

end A128533.P1410327180167675901

namespace A128533

/-- `A226649(A047470(n+1)+2)` -/
def P1410327180167675901.Spec : Prop :=
  ∀ n, P1410327180167675901.a n = A128533 n

end A128533

/-!
# A128534: a(n) = Fibonacci(n)*Lucas(n-1).

The programs for A128534, the canonical program `A128534.P16204297167918983794` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128534 has offset 0).

The definition of A128534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128534.P3144209823750165998

`ogf((2x-3x^2)/(1-2x-2x^2+x^3))`
-/

namespace A128534.P3144209823750165998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -2, -2, 1] n

end

end A128534.P3144209823750165998

namespace A128534

/-- `ogf((2x-3x^2)/(1-2x-2x^2+x^3))` -/
def P3144209823750165998.Spec : Prop :=
  ∀ n, P3144209823750165998.a n = A128534 n

end A128534

/-! ## A128534.P16204297167918983794

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128534

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P16204297167918983794.Spec : Prop :=
  ∀ n, P16204297167918983794.a n = A128534 n

theorem P16204297167918983794.correct : P16204297167918983794.Spec := by
  intro n
  simp only [A128534]

end A128534

/-! ## A128534.P10414205133518931791

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A128534.P10414205133518931791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A128534.P10414205133518931791

namespace A128534

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P10414205133518931791.Spec : Prop :=
  ∀ n, P10414205133518931791.a n = A128534 n

theorem P10414205133518931791.correct : P10414205133518931791.Spec := by
  intro n
  simp only [A128534, Nat.add_sub_cancel, A128534.P10414205133518931791.a, A128534.P16204297167918983794.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128534

/-! ## A128534.P2293701358686778688

`A001519(n)-(-1)^n`
-/

namespace A128534.P2293701358686778688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - (-1) ^ n

end

end A128534.P2293701358686778688

namespace A128534

/-- `A001519(n)-(-1)^n` -/
def P2293701358686778688.Spec : Prop :=
  ∀ n, P2293701358686778688.a n = A128534 n

end A128534

/-! ## A128534.P9239735733643323477

`A000032(2*(n-1))-a(n-1)` with `a(0)=0`
-/

namespace A128534.P9239735733643323477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000032 (2 * ((n : ℤ) - 1)).toNat - a (n - 1)

end

end A128534.P9239735733643323477

namespace A128534

/-- `A000032(2*(n-1))-a(n-1)` -/
def P9239735733643323477.Spec : Prop :=
  ∀ n, P9239735733643323477.a n = A128534 n

end A128534

/-! ## A128534.P980452157006715828

`A000045(record[abs(xor(1, n-2))])-(-1)^n`
-/

namespace A128534.P980452157006715828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (-1) ^ n

end

end A128534.P980452157006715828

namespace A128534

/-- `A000045(record[abs(xor(1, n-2))])-(-1)^n` -/
def P980452157006715828.Spec : Prop :=
  ∀ n, P980452157006715828.a n = A128534 n

end A128534

/-! ## A128534.P5283204696209354509

`xor(2, A000045(2*(n-1))+a(n-1))` with `a(0)=0`
-/

namespace A128534.P5283204696209354509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 2 (A000045 (2 * ((n : ℤ) - 1)).toNat + a (n - 1))

end

end A128534.P5283204696209354509

namespace A128534

/-- `xor(2, A000045(2*(n-1))+a(n-1))` -/
def P5283204696209354509.Spec : Prop :=
  ∀ n, P5283204696209354509.a n = A128534 n

end A128534

/-! ## A128534.P7943887476607663187

`A001906(n)-A128535(n)`
-/

namespace A128534.P7943887476607663187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A128535 n

end

end A128534.P7943887476607663187

namespace A128534

/-- `A001906(n)-A128535(n)` -/
def P7943887476607663187.Spec : Prop :=
  ∀ n, P7943887476607663187.a n = A128534 n

end A128534

/-! ## A128534.P17338733285698108973

`lcm(A000045(n), A061084(n))`
-/

namespace A128534.P17338733285698108973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 n) (A061084 n)

end

end A128534.P17338733285698108973

namespace A128534

/-- `lcm(A000045(n), A061084(n))` -/
def P17338733285698108973.Spec : Prop :=
  ∀ n, (P17338733285698108973.a n : ℤ) = A128534 n

end A128534

/-! ## A128534.P15293143373650411337

`Δ[A000032(n)]*A000045(n)`
-/

namespace A128534.P15293143373650411337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 n

end

end A128534.P15293143373650411337

namespace A128534

/-- `Δ[A000032(n)]*A000045(n)` -/
def P15293143373650411337.Spec : Prop :=
  ∀ n, P15293143373650411337.a n = A128534 n

end A128534

/-! ## A128534.P2073825381988762763

`A000045(n)*Δ[A000211(n)]`
-/

namespace A128534.P2073825381988762763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A128534.P2073825381988762763

namespace A128534

/-- `A000045(n)*Δ[A000211(n)]` -/
def P2073825381988762763.Spec : Prop :=
  ∀ n, P2073825381988762763.a n = A128534 n

end A128534

/-! ## A128534.P2641045252144986263

`A000045(n)*Δ[A001612(n)]`
-/

namespace A128534.P2641045252144986263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A128534.P2641045252144986263

namespace A128534

/-- `A000045(n)*Δ[A001612(n)]` -/
def P2641045252144986263.Spec : Prop :=
  ∀ n, P2641045252144986263.a n = A128534 n

end A128534

/-! ## A128534.P6606909214970539689

`A033999(n+1)+A001519(n)`
-/

namespace A128534.P6606909214970539689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A001519 n

end

end A128534.P6606909214970539689

namespace A128534

/-- `A033999(n+1)+A001519(n)` -/
def P6606909214970539689.Spec : Prop :=
  ∀ n, P6606909214970539689.a n = A128534 n

end A128534

/-! ## A128534.P10832141085056034261

`A032908(n)-(A033999(n)+1)`
-/

namespace A128534.P10832141085056034261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n - (A033999 n + 1)

end

end A128534.P10832141085056034261

namespace A128534

/-- `A032908(n)-(A033999(n)+1)` -/
def P10832141085056034261.Spec : Prop :=
  ∀ n, P10832141085056034261.a n = A128534 n

end A128534

/-! ## A128534.P4546278079145128056

`A293066(n)-A168277(n+1)`
-/

namespace A128534.P4546278079145128056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293066 n - A168277 (n + 1)

end

end A128534.P4546278079145128056

namespace A128534

/-- `A293066(n)-A168277(n+1)` -/
def P4546278079145128056.Spec : Prop :=
  ∀ n, P4546278079145128056.a n = A128534 n

end A128534

/-! ## A128534.P10951945761229774556

`A000045(n)*A329723(n+1)`
-/

namespace A128534.P10951945761229774556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A329723 (n + 1)

end

end A128534.P10951945761229774556

namespace A128534

/-- `A000045(n)*A329723(n+1)` -/
def P10951945761229774556.Spec : Prop :=
  ∀ n, P10951945761229774556.a n = A128534 n

end A128534

/-! ## A128534.P9575832564117692359

`A000045(2*n)-A128535(n)`
-/

namespace A128534.P9575832564117692359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A128535 n

end

end A128534.P9575832564117692359

namespace A128534

/-- `A000045(2*n)-A128535(n)` -/
def P9575832564117692359.Spec : Prop :=
  ∀ n, P9575832564117692359.a n = A128534 n

end A128534

/-! ## A128534.P6641796884882506523

`A212804(2*n)-A033999(n)`
-/

namespace A128534.P6641796884882506523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) - A033999 n

end

end A128534.P6641796884882506523

namespace A128534

/-- `A212804(2*n)-A033999(n)` -/
def P6641796884882506523.Spec : Prop :=
  ∀ n, P6641796884882506523.a n = A128534 n

end A128534

/-!
# A128535: a(n) = F(n)*L(n-2) where F = Fibonacci and L = Lucas numbers.

The programs for A128535, the canonical program `A128535.P16286000846977753610` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128535 has offset 0).

The definition of A128535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128535.P12370601913451214190

`ogf((-x+4x^2)/(1-2x-2x^2+x^3))`
-/

namespace A128535.P12370601913451214190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 4] [1, -2, -2, 1] n

end

end A128535.P12370601913451214190

namespace A128535

/-- `ogf((-x+4x^2)/(1-2x-2x^2+x^3))` -/
def P12370601913451214190.Spec : Prop :=
  ∀ n, P12370601913451214190.a n = A128535 n

end A128535

/-! ## A128535.P16286000846977753610

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=-1, a(2)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128535

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P16286000846977753610.Spec : Prop :=
  ∀ n, P16286000846977753610.a n = A128535 n

theorem P16286000846977753610.correct : P16286000846977753610.Spec := by
  intro n
  simp only [A128535]

end A128535

/-! ## A128535.P8052506808819594620

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A128535.P8052506808819594620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A128535.P8052506808819594620

namespace A128535

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P8052506808819594620.Spec : Prop :=
  ∀ n, P8052506808819594620.a n = A128535 n

theorem P8052506808819594620.correct : P8052506808819594620.Spec := by
  intro n
  simp only [A128535, Nat.add_sub_cancel, A128535.P8052506808819594620.a, A128535.P16286000846977753610.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128535

/-! ## A128535.P14840665262272704511

`(-1)^n-A152163(2*n)`
-/

namespace A128535.P14840665262272704511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - A152163 (2 * n)

end

end A128535.P14840665262272704511

namespace A128535

/-- `(-1)^n-A152163(2*n)` -/
def P14840665262272704511.Spec : Prop :=
  ∀ n, P14840665262272704511.a n = A128535 n

end A128535

/-! ## A128535.P17068061939976249940

`A000045(n)*Δ[abs(A061084(n))]`
-/

namespace A128535.P17068061939976249940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A128535.P17068061939976249940

namespace A128535

/-- `A000045(n)*Δ[abs(A061084(n))]` -/
def P17068061939976249940.Spec : Prop :=
  ∀ n, P17068061939976249940.a n = A128535 n

end A128535

/-! ## A128535.P13120420394004854190

`Δ[Δ[A000032(n)]]*A000045(n)`
-/

namespace A128535.P13120420394004854190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 n

end

end A128535.P13120420394004854190

namespace A128535

/-- `Δ[Δ[A000032(n)]]*A000045(n)` -/
def P13120420394004854190.Spec : Prop :=
  ∀ n, P13120420394004854190.a n = A128535 n

end A128535

/-! ## A128535.P17468174124658638078

`A000045(n)*Δ[Δ[A000211(n)]]`
-/

namespace A128535.P17468174124658638078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A128535.P17468174124658638078

namespace A128535

/-- `A000045(n)*Δ[Δ[A000211(n)]]` -/
def P17468174124658638078.Spec : Prop :=
  ∀ n, P17468174124658638078.a n = A128535 n

end A128535

/-! ## A128535.P12989024881531825234

`A000045(n)*Δ[Δ[A001612(n)]]`
-/

namespace A128535.P12989024881531825234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A128535.P12989024881531825234

namespace A128535

/-- `A000045(n)*Δ[Δ[A001612(n)]]` -/
def P12989024881531825234.Spec : Prop :=
  ∀ n, P12989024881531825234.a n = A128535 n

end A128535

/-! ## A128535.P12985113926744448666

`A078024(2*n)-(2-A033999(n))`
-/

namespace A128535.P12985113926744448666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (2 * n) - (2 - A033999 n)

end

end A128535.P12985113926744448666

namespace A128535

/-- `A078024(2*n)-(2-A033999(n))` -/
def P12985113926744448666.Spec : Prop :=
  ∀ n, P12985113926744448666.a n = A128535 n

end A128535

/-! ## A128535.P12166485827363623054

`Δ[Δ[A302126(2*n+1)]]*A103609(2*n)`
-/

namespace A128535.P12166485827363623054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A103609 (2 * n)

end

end A128535.P12166485827363623054

namespace A128535

/-- `Δ[Δ[A302126(2*n+1)]]*A103609(2*n)` -/
def P12166485827363623054.Spec : Prop :=
  ∀ n, P12166485827363623054.a n = A128535 n

end A128535

/-! ## A128535.P9535709859889899175

`(A013655(n)-A022086(n))*A000045(n)`
-/

namespace A128535.P9535709859889899175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013655 n - A022086 n) * A000045 n

end

end A128535.P9535709859889899175

namespace A128535

/-- `(A013655(n)-A022086(n))*A000045(n)` -/
def P9535709859889899175.Spec : Prop :=
  ∀ n, P9535709859889899175.a n = A128535 n

end A128535

/-! ## A128535.P5237481925244562060

`(Δ[A187893(n)]-A000045(n))*A000045(n)`
-/

namespace A128535.P5237481925244562060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A000045 n) * A000045 n

end

end A128535.P5237481925244562060

namespace A128535

/-- `(Δ[A187893(n)]-A000045(n))*A000045(n)` -/
def P5237481925244562060.Spec : Prop :=
  ∀ n, P5237481925244562060.a n = A128535 n

end A128535

/-! ## A128535.P4913586273766629762

`(A022086(n+1)-A022087(n))*A000045(n)`
-/

namespace A128535.P4913586273766629762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022086 (n + 1) - A022087 n) * A000045 n

end

end A128535.P4913586273766629762

namespace A128535

/-- `(A022086(n+1)-A022087(n))*A000045(n)` -/
def P4913586273766629762.Spec : Prop :=
  ∀ n, P4913586273766629762.a n = A128535 n

end A128535

/-! ## A128535.P3407640287335574190

`(A022112(n+1)-A022379(n))*A000045(n)`
-/

namespace A128535.P3407640287335574190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022112 (n + 1) - A022379 n) * A000045 n

end

end A128535.P3407640287335574190

namespace A128535

/-- `(A022112(n+1)-A022379(n))*A000045(n)` -/
def P3407640287335574190.Spec : Prop :=
  ∀ n, P3407640287335574190.a n = A128535 n

end A128535

/-! ## A128535.P4814579900791226168

`(A355288(n+1)-A022313(n))*A000045(n)`
-/

namespace A128535.P4814579900791226168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A355288 (n + 1) - A022313 n) * A000045 n

end

end A128535.P4814579900791226168

namespace A128535

/-- `(A355288(n+1)-A022313(n))*A000045(n)` -/
def P4814579900791226168.Spec : Prop :=
  ∀ n, P4814579900791226168.a n = A128535 n

end A128535

/-!
# A128537: a(n) = denominator of r(n): r(n) is such that, for every positive integer n, the continued fraction (of rational terms) [r(1);r(2),...,r(n)] equals n(n+1)/2, the n-th triangular number.

The programs for A128537, there is no canonical definition to state claims against.
-/

/-! ## A128537.P12375745104749660616

`gcd(A004730(A004734(n+1)), A081123(3*(n+1)))`
-/

namespace A128537.P12375745104749660616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004730 (A004734 (n + 1)).toNat) (A081123 (3 * (n + 1)))

end

end A128537.P12375745104749660616

/-! ## A128537.P7273608986133261578

`(gcd(n, n%2)+1)^A145515(∑[2*n])`
-/

namespace A128537.P7273608986133261578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n % 2) + 1 : ℚ) ^ (A145515 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A128537.P7273608986133261578

/-!
# A128538: Number of prime factors (with multiplicity) of lucky numbers.

The programs for A128538, there is no canonical definition to state claims against.
-/

/-! ## A128538.P890962998149978412

`A001222(A000959(n+1))`
-/

namespace A128538.P890962998149978412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000959 (n + 1)).toNat

end

end A128538.P890962998149978412

/-! ## A128538.P4633164774399191653

`∑{e}[A000959(n+1), #]`
-/

namespace A128538.P4633164774399191653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A128538.P4633164774399191653

/-! ## A128538.P2426564164597892624

`∑{e}[A031883(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A128538.P2426564164597892624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A031883 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A128538.P2426564164597892624

/-! ## A128538.P2245342905233899098

`A001222(sqrt(A032598(n+1)))`
-/

namespace A128538.P2245342905233899098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A032598 (n + 1) : ℝ))).toNat

end

end A128538.P2245342905233899098

/-! ## A128538.P12742993635489772545

`A001222(A139269(n+1)/2)`
-/

namespace A128538.P12742993635489772545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat

end

end A128538.P12742993635489772545

/-! ## A128538.P9904786548239863165

`A001222(2*A049781(n+1)-1)`
-/

namespace A128538.P9904786548239863165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A049781 (n + 1) - 1).toNat

end

end A128538.P9904786548239863165

/-! ## A128538.P14342159654806939630

`A001222(record[n*A145649(n+1)+1])`
-/

namespace A128538.P14342159654806939630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128538.P14342159654806939630

/-! ## A128538.P8396113575846118243

`A001222(A032600(n+1)+A000040(n+1))`
-/

namespace A128538.P8396113575846118243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032600 (n + 1) + A000040 (n + 1)).toNat

end

end A128538.P8396113575846118243

/-! ## A128538.P8430284854415123668

`A001222(A049781(n+1)+A049781(n+1)-1)`
-/

namespace A128538.P8430284854415123668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049781 (n + 1) + (A049781 (n + 1) - 1)).toNat

end

end A128538.P8430284854415123668

/-! ## A128538.P3496158496775948569

`A087436(A139269(n+1)/2)`
-/

namespace A128538.P3496158496775948569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat

end

end A128538.P3496158496775948569

/-! ## A128538.P4595862139577890003

`A001222(eq[1, A145649(n+1)]+1)`
-/

namespace A128538.P4595862139577890003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A128538.P4595862139577890003

/-! ## A128538.P204858582116892074

`A087436(A139269(n+1))`
-/

namespace A128538.P204858582116892074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A139269 (n + 1)).toNat

end

end A128538.P204858582116892074

/-! ## A128538.P14295987427022939626

`A091304(A049781(n+1))`
-/

namespace A128538.P14295987427022939626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A049781 (n + 1)).toNat

end

end A128538.P14295987427022939626

/-! ## A128538.P6669129744560008485

`A001222(A032600(n+1)+p?[A061397(n+1)])`
-/

namespace A128538.P6669129744560008485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032600 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128538.P6669129744560008485

/-! ## A128538.P15935605332431999262

`A001222(record[(n+1)/A260429(n+1)])`
-/

namespace A128538.P15935605332431999262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A128538.P15935605332431999262

/-! ## A128538.P7144728312295123185

`∑{e}[eq[1, A042968(A260429(n+1)+1)-1]+1, #]`
-/

namespace A128538.P7144728312295123185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A260429 (n + 1) + 1).toNat - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A128538.P7144728312295123185

/-! ## A128538.P14235123362681117091

`A001222(lt[A264940(n+1), 1]+1)`
-/

namespace A128538.P14235123362681117091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A128538.P14235123362681117091

/-! ## A128538.P59185131443691130

`A001222(eq[1, A264940(n+1)+1]+1)`
-/

namespace A128538.P59185131443691130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A128538.P59185131443691130

/-! ## A128538.P17027258568752790755

`∑{e}[A028310(record[n*A145649(n+1)+1]), #]`
-/

namespace A128538.P17027258568752790755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A128538.P17027258568752790755

/-! ## A128538.P4125379468189339012

`A302242(A032605(n+1))`
-/

namespace A128538.P4125379468189339012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A032605 (n + 1)).toNat

end

end A128538.P4125379468189339012

/-!
# A128539: Lucky numbers with size of gaps equal to 6 (lower terms).

The programs for A128539, there is no canonical definition to state claims against.
-/

/-! ## A128539.P13734102884027009628

`eq[A260437(n+1), A260437(n+7)]+1`
-/

namespace A128539.P13734102884027009628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A128539.P13734102884027009628

/-! ## A128539.P3288607504912870522

`∩[A000959(n+1)-6, A000959(n+1)]`
-/

namespace A128539.P3288607504912870522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128539.P3288607504912870522

/-! ## A128539.P13628165843151496555

`A141310(eq[A145649(n+1), A260429(n+7)])`
-/

namespace A128539.P13628165843151496555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128539.P13628165843151496555

/-! ## A128539.P14497490918486065171

`A141310(eq[A260429(n+1), A260429(n+7)])`
-/

namespace A128539.P14497490918486065171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128539.P14497490918486065171

/-! ## A128539.P1212141211098289585

`A263449(eq[A145649(n+1), A260429(n+7)])`
-/

namespace A128539.P1212141211098289585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128539.P1212141211098289585

/-! ## A128539.P12597554613126810882

`A263449(eq[A260429(n+1), A260429(n+7)])`
-/

namespace A128539.P12597554613126810882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128539.P12597554613126810882

/-!
# A128540: Triangle A127647 * A097806, read by rows.

The programs for A128540, the canonical program `A128540.P17841008741763583237` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128540 has offset 1).

The definition of A128540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128540.P12060588319571288797

`T(n,k-1)+(T(n-2,k-1)+T(n-1,k))*(col(n)+2-row(n))` with `a(0)=1`
-/

namespace A128540.P12060588319571288797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n) * ((SequenceMachineLib.triCol n + 2 : ℤ) - (SequenceMachineLib.triRow n : ℤ))

end

end A128540.P12060588319571288797

namespace A128540

/-- `T(n,k-1)+(T(n-2,k-1)+T(n-1,k))*(col(n)+2-row(n))` -/
def P12060588319571288797.Spec : Prop :=
  ∀ n, P12060588319571288797.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P8356160010171258642

`A097806(n)*A294453(n)`
-/

namespace A128540.P8356160010171258642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A294453 n

end

end A128540.P8356160010171258642

namespace A128540

/-- `A097806(n)*A294453(n)` -/
def P8356160010171258642.Spec : Prop :=
  ∀ n, P8356160010171258642.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P1854250249861361347

`lcm(A167374(n), A294453(n))`
-/

namespace A128540.P1854250249861361347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167374 n) (A294453 n)

end

end A128540.P1854250249861361347

namespace A128540

/-- `lcm(A167374(n), A294453(n))` -/
def P1854250249861361347.Spec : Prop :=
  ∀ n, (P1854250249861361347.a n : ℤ) = A128540 (n + 1)

end A128540

/-! ## A128540.P17841008741763583237

`A000045(abs(Δ[A127648(n)]))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128540

/-- `A000045(abs(Δ[A127648(n)]))` -/
def P17841008741763583237.Spec : Prop :=
  ∀ n, P17841008741763583237.a n = A128540 (n + 1)

theorem P17841008741763583237.correct : P17841008741763583237.Spec := by
  intro n
  simp only [A128540, Nat.add_sub_cancel]

end A128540

/-! ## A128540.P14095108054683670046

`A097806(n)*A131410(n+1)`
-/

namespace A128540.P14095108054683670046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A131410 (n + 1)

end

end A128540.P14095108054683670046

namespace A128540

/-- `A097806(n)*A131410(n+1)` -/
def P14095108054683670046.Spec : Prop :=
  ∀ n, P14095108054683670046.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P10189830906749300328

`A097806(n)*A202453(n+1)`
-/

namespace A128540.P10189830906749300328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A202453 (n + 1)

end

end A128540.P10189830906749300328

namespace A128540

/-- `A097806(n)*A202453(n+1)` -/
def P10189830906749300328.Spec : Prop :=
  ∀ n, P10189830906749300328.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P5660784942170579488

`A097806(n)*A210870(n+1)`
-/

namespace A128540.P5660784942170579488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A210870 (n + 1)

end

end A128540.P5660784942170579488

namespace A128540

/-- `A097806(n)*A210870(n+1)` -/
def P5660784942170579488.Spec : Prop :=
  ∀ n, P5660784942170579488.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P13355736611894483565

`char[∑[A152271(n)]-1]*A294453(n)`
-/

namespace A128540.P13355736611894483565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A294453 n

end

end A128540.P13355736611894483565

namespace A128540

/-- `char[∑[A152271(n)]-1]*A294453(n)` -/
def P13355736611894483565.Spec : Prop :=
  ∀ n, P13355736611894483565.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P5671746521500897197

`round(acot(A007318(n+1)))*A294453(n)`
-/

namespace A128540.P5671746521500897197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A007318 (n + 1) : ℝ)) * A294453 n

end

end A128540.P5671746521500897197

namespace A128540

/-- `round(acot(A007318(n+1)))*A294453(n)` -/
def P5671746521500897197.Spec : Prop :=
  ∀ n, P5671746521500897197.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P6049852749408756498

`round(1/A004736(n+1))*A294453(n)`
-/

namespace A128540.P6049852749408756498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A004736 (n + 1) : ℚ)) * A294453 n

end

end A128540.P6049852749408756498

namespace A128540

/-- `round(1/A004736(n+1))*A294453(n)` -/
def P6049852749408756498.Spec : Prop :=
  ∀ n, P6049852749408756498.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P2744353140042856802

`round(acot(A007318(n+1)))*A210870(n+1)`
-/

namespace A128540.P2744353140042856802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A007318 (n + 1) : ℝ)) * A210870 (n + 1)

end

end A128540.P2744353140042856802

namespace A128540

/-- `round(acot(A007318(n+1)))*A210870(n+1)` -/
def P2744353140042856802.Spec : Prop :=
  ∀ n, P2744353140042856802.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P6319339627993979840

`A000045(A127648(n+1)+A127648(n))`
-/

namespace A128540.P6319339627993979840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A127648 (n + 1) + A127648 n).toNat

end

end A128540.P6319339627993979840

namespace A128540

/-- `A000045(A127648(n+1)+A127648(n))` -/
def P6319339627993979840.Spec : Prop :=
  ∀ n, P6319339627993979840.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P10602691585330472309

`A000045(A002024(n+1)*A097806(n))`
-/

namespace A128540.P10602691585330472309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002024 (n + 1) * A097806 n).toNat

end

end A128540.P10602691585330472309

namespace A128540

/-- `A000045(A002024(n+1)*A097806(n))` -/
def P10602691585330472309.Spec : Prop :=
  ∀ n, P10602691585330472309.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P17802221172063343438

`abs(Δ[A127647(n+1)])`
-/

namespace A128540.P17802221172063343438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128540.P17802221172063343438

namespace A128540

/-- `abs(Δ[A127647(n+1)])` -/
def P17802221172063343438.Spec : Prop :=
  ∀ n, P17802221172063343438.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P10329872400479202613

`A000045(Δ[A056942(n+1)])`
-/

namespace A128540.P10329872400479202613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A128540.P10329872400479202613

namespace A128540

/-- `A000045(Δ[A056942(n+1)])` -/
def P10329872400479202613.Spec : Prop :=
  ∀ n, P10329872400479202613.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P12059011640219451931

`A127647(A077051(n+2)+n+1)`
-/

namespace A128540.P12059011640219451931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127647 (A077051 (n + 2) + (n + 1 : ℤ)).toNat

end

end A128540.P12059011640219451931

namespace A128540

/-- `A127647(A077051(n+2)+n+1)` -/
def P12059011640219451931.Spec : Prop :=
  ∀ n, P12059011640219451931.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P16618571615744450749

`A127647(n+1)+A127647(n+2)`
-/

namespace A128540.P16618571615744450749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127647 (n + 1) + A127647 (n + 2)

end

end A128540.P16618571615744450749

namespace A128540

/-- `A127647(n+1)+A127647(n+2)` -/
def P16618571615744450749.Spec : Prop :=
  ∀ n, P16618571615744450749.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P18213868541916428393

`A202453(n+1)*A204016(n+2)*A185917(n+2)`
-/

namespace A128540.P18213868541916428393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (n + 1) * A204016 (n + 2) * A185917 (n + 2)

end

end A128540.P18213868541916428393

namespace A128540

/-- `A202453(n+1)*A204016(n+2)*A185917(n+2)` -/
def P18213868541916428393.Spec : Prop :=
  ∀ n, P18213868541916428393.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P6857049833760810681

`A202453(n+1)*A204016(n+2)*A204177(n+2)`
-/

namespace A128540.P6857049833760810681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (n + 1) * A204016 (n + 2) * A204177 (n + 2)

end

end A128540.P6857049833760810681

namespace A128540

/-- `A202453(n+1)*A204016(n+2)*A204177(n+2)` -/
def P6857049833760810681.Spec : Prop :=
  ∀ n, P6857049833760810681.a n = A128540 (n + 1)

end A128540

/-! ## A128540.P8311178775387467151

`A202453(n+1)*A204016(n+2)*A204179(n+2)`
-/

namespace A128540.P8311178775387467151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (n + 1) * A204016 (n + 2) * A204179 (n + 2)

end

end A128540.P8311178775387467151

namespace A128540

/-- `A202453(n+1)*A204016(n+2)*A204179(n+2)` -/
def P8311178775387467151.Spec : Prop :=
  ∀ n, P8311178775387467151.a n = A128540 (n + 1)

end A128540

/-!
# A128541: Triangle, A097806 * A127647, read by rows.

The programs for A128541, the canonical program `A128541.P11291704375790424598` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128541 has offset 0).

The definition of A128541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128541.P12898416217342563397

`A103609(A131843(n+1))`
-/

namespace A128541.P12898416217342563397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A131843 (n + 1)).toNat

end

end A128541.P12898416217342563397

namespace A128541

/-- `A103609(A131843(n+1))` -/
def P12898416217342563397.Spec : Prop :=
  ∀ n, P12898416217342563397.a n = A128541 n

end A128541

/-! ## A128541.P15131970749493000219

`A000045(A144217(n+2))`
-/

namespace A128541.P15131970749493000219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A144217 (n + 2)).toNat

end

end A128541.P15131970749493000219

namespace A128541

/-- `A000045(A144217(n+2))` -/
def P15131970749493000219.Spec : Prop :=
  ∀ n, P15131970749493000219.a n = A128541 n

end A128541

/-! ## A128541.P11291704375790424598

`A058071(n)*A097806(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128541

/-- `A058071(n)*A097806(n)` -/
def P11291704375790424598.Spec : Prop :=
  ∀ n, P11291704375790424598.a n = A128541 n

theorem P11291704375790424598.correct : P11291704375790424598.Spec := by
  intro n
  simp only [A128541]

end A128541

/-! ## A128541.P4033833086488488590

`A097806(n)*A202389(n)`
-/

namespace A128541.P4033833086488488590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A202389 n

end

end A128541.P4033833086488488590

namespace A128541

/-- `A097806(n)*A202389(n)` -/
def P4033833086488488590.Spec : Prop :=
  ∀ n, P4033833086488488590.a n = A128541 n

end A128541

/-! ## A128541.P14364799858893693691

`lcm(A058071(n), A128206(n))`
-/

namespace A128541.P14364799858893693691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A058071 n) (A128206 n)

end

end A128541.P14364799858893693691

namespace A128541

/-- `lcm(A058071(n), A128206(n))` -/
def P14364799858893693691.Spec : Prop :=
  ∀ n, (P14364799858893693691.a n : ℤ) = A128541 n

end A128541

/-! ## A128541.P15178810930735764250

`lcm(A167374(n), A202389(n))`
-/

namespace A128541.P15178810930735764250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167374 n) (A202389 n)

end

end A128541.P15178810930735764250

namespace A128541

/-- `lcm(A167374(n), A202389(n))` -/
def P15178810930735764250.Spec : Prop :=
  ∀ n, (P15178810930735764250.a n : ℤ) = A128541 n

end A128541

/-! ## A128541.P6139445285255195416

`A000045(abs(A128064(n+1)))`
-/

namespace A128541.P6139445285255195416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A128064 (n + 1)|.toNat

end

end A128541.P6139445285255195416

namespace A128541

/-- `A000045(abs(A128064(n+1)))` -/
def P6139445285255195416.Spec : Prop :=
  ∀ n, P6139445285255195416.a n = A128541 n

end A128541

/-! ## A128541.P11454911635515357490

`A097806(n)*A104763(n+1)`
-/

namespace A128541.P11454911635515357490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A104763 (n + 1)

end

end A128541.P11454911635515357490

namespace A128541

/-- `A097806(n)*A104763(n+1)` -/
def P11454911635515357490.Spec : Prop :=
  ∀ n, P11454911635515357490.a n = A128541 n

end A128541

/-! ## A128541.P6916084664265749274

`A111946(n+1)*A128206(n)`
-/

namespace A128541.P6916084664265749274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111946 (n + 1) * A128206 n

end

end A128541.P6916084664265749274

namespace A128541

/-- `A111946(n+1)*A128206(n)` -/
def P6916084664265749274.Spec : Prop :=
  ∀ n, P6916084664265749274.a n = A128541 n

end A128541

/-! ## A128541.P17475002640702634715

`A097806(n)*A210868(n+1)`
-/

namespace A128541.P17475002640702634715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A210868 (n + 1)

end

end A128541.P17475002640702634715

namespace A128541

/-- `A097806(n)*A210868(n+1)` -/
def P17475002640702634715.Spec : Prop :=
  ∀ n, P17475002640702634715.a n = A128541 n

end A128541

/-! ## A128541.P2698505722939959467

`A000045(A002260(n+1)*A097806(n))`
-/

namespace A128541.P2698505722939959467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) * A097806 n).toNat

end

end A128541.P2698505722939959467

namespace A128541

/-- `A000045(A002260(n+1)*A097806(n))` -/
def P2698505722939959467.Spec : Prop :=
  ∀ n, P2698505722939959467.a n = A128541 n

end A128541

/-! ## A128541.P4557004582432144457

`A000045(A103823(n+1))*A097806(n)`
-/

namespace A128541.P4557004582432144457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A103823 (n + 1)).toNat * A097806 n

end

end A128541.P4557004582432144457

namespace A128541

/-- `A000045(A103823(n+1))*A097806(n)` -/
def P4557004582432144457.Spec : Prop :=
  ∀ n, P4557004582432144457.a n = A128541 n

end A128541

/-! ## A128541.P8496837663331806314

`A000045(A131830(n+1)-A007318(n+1))`
-/

namespace A128541.P8496837663331806314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131830 (n + 1) - A007318 (n + 1)).toNat

end

end A128541.P8496837663331806314

namespace A128541

/-- `A000045(A131830(n+1)-A007318(n+1))` -/
def P8496837663331806314.Spec : Prop :=
  ∀ n, P8496837663331806314.a n = A128541 n

end A128541

/-! ## A128541.P6172466982891090143

`A000045(round(1/A004736(n+1))*A002260(n+1))`
-/

namespace A128541.P6172466982891090143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (1 / (A004736 (n + 1) : ℚ)) * A002260 (n + 1)).toNat

end

end A128541.P6172466982891090143

namespace A128541

/-- `A000045(round(1/A004736(n+1))*A002260(n+1))` -/
def P6172466982891090143.Spec : Prop :=
  ∀ n, P6172466982891090143.a n = A128541 n

end A128541

/-! ## A128541.P18222473967993235457

`A000045(round(1/A124927(n+1))*A002260(n+1))`
-/

namespace A128541.P18222473967993235457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (1 / (A124927 (n + 1) : ℚ)) * A002260 (n + 1)).toNat

end

end A128541.P18222473967993235457

namespace A128541

/-- `A000045(round(1/A124927(n+1))*A002260(n+1))` -/
def P18222473967993235457.Spec : Prop :=
  ∀ n, P18222473967993235457.a n = A128541 n

end A128541

/-! ## A128541.P3883588854157585957

`A247049(A131844(n+1))`
-/

namespace A128541.P3883588854157585957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A131844 (n + 1)).toNat

end

end A128541.P3883588854157585957

namespace A128541

/-- `A247049(A131844(n+1))` -/
def P3883588854157585957.Spec : Prop :=
  ∀ n, P3883588854157585957.a n = A128541 n

end A128541

/-! ## A128541.P14228381247475889485

`A000045(A131821(n+2)-1)`
-/

namespace A128541.P14228381247475889485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131821 (n + 2) - 1).toNat

end

end A128541.P14228381247475889485

namespace A128541

/-- `A000045(A131821(n+2)-1)` -/
def P14228381247475889485.Spec : Prop :=
  ∀ n, P14228381247475889485.a n = A128541 n

end A128541

/-! ## A128541.P4207343560108043288

`A108037(n+1)-A108036(n+1)`
-/

namespace A128541.P4207343560108043288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (n + 1) - A108036 (n + 1)

end

end A128541.P4207343560108043288

namespace A128541

/-- `A108037(n+1)-A108036(n+1)` -/
def P4207343560108043288.Spec : Prop :=
  ∀ n, P4207343560108043288.a n = A128541 n

end A128541

/-! ## A128541.P1073160614755441854

`Δ[Δ[A002024(n+1)]]²*A104763(n+1)`
-/

namespace A128541.P1073160614755441854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A104763 (n + 1)

end

end A128541.P1073160614755441854

namespace A128541

/-- `Δ[Δ[A002024(n+1)]]²*A104763(n+1)` -/
def P1073160614755441854.Spec : Prop :=
  ∀ n, P1073160614755441854.a n = A128541 n

end A128541

/-! ## A128541.P4170674703025899118

`A000045(A030528(n+1)*A169803(n+2))`
-/

namespace A128541.P4170674703025899118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030528 (n + 1) * A169803 (n + 2)).toNat

end

end A128541.P4170674703025899118

namespace A128541

/-- `A000045(A030528(n+1)*A169803(n+2))` -/
def P4170674703025899118.Spec : Prop :=
  ∀ n, P4170674703025899118.a n = A128541 n

end A128541

/-!
# A128542: a(n) = ((2n)^(2n) - 1)/((2n+1)*(2n-1)).

The programs for A128542, the canonical program `A128542.P14721928843032068715` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128542 has offset 0).

The definition of A128542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128542.P14721928843032068715

`((2*n)^(2*n)-1)/(4*n²-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128542

/-- `((2*n)^(2*n)-1)/(4*n²-1)` -/
def P14721928843032068715.Spec : Prop :=
  ∀ n, P14721928843032068715.a n = (A128542 n : ℚ)

end A128542

/-! ## A128542.P16148959000605422505

`((2*n)^(2*n)-1)/((2*n+1)*(2*n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128542.P16148959000605422505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ (2 * n) : ℤ) - 1 : ℚ) / ((2 * n + 1 : ℤ) * ((2 * n : ℤ) - 1) : ℚ)

end

end A128542.P16148959000605422505

namespace A128542

/-- `((2*n)^(2*n)-1)/((2*n+1)*(2*n-1))` -/
def P16148959000605422505.Spec : Prop :=
  ∀ n, P16148959000605422505.a n = (A128542 n : ℚ)

end A128542

/-! ## A128542.P3244444053406611143

`record[and(A062157(n), A089815(n))]`
-/

namespace A128542.P3244444053406611143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062157 n) (A089815 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128542.P3244444053406611143

namespace A128542

/-- `record[and(A062157(n), A089815(n))]` -/
def P3244444053406611143.Spec : Prop :=
  ∀ n, P3244444053406611143.a n = A128542 n

end A128542

/-! ## A128542.P15106868225358455485

`record[gcd((n^n-(-1)^n)/(n+1), A031972(n))]`
-/

namespace A128542.P15106868225358455485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n ^ n : ℤ) - (-1) ^ n : ℚ) / (n + 1 : ℚ))) (A031972 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128542.P15106868225358455485

namespace A128542

/-- `record[gcd((n^n-(-1)^n)/(n+1), A031972(n))]` -/
def P15106868225358455485.Spec : Prop :=
  ∀ n, (P15106868225358455485.a n : ℤ) = A128542 n

end A128542

/-! ## A128542.P14523156133894052595

`record[gcd(A023037(n), A081216(n))]`
-/

namespace A128542.P14523156133894052595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023037 n) (A081216 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128542.P14523156133894052595

namespace A128542

/-- `record[gcd(A023037(n), A081216(n))]` -/
def P14523156133894052595.Spec : Prop :=
  ∀ n, (P14523156133894052595.a n : ℤ) = A128542 n

end A128542

/-!
# A128543: a(n) = floor(2^(n-2)*3*n).

The programs for A128543, the canonical program `A128543.P10319361273660441014` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128543 has offset 1).

The definition of A128543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n-1)*3*(n+1))` (program `A128543.P10319361273660441014`, by `A128543.P10319361273660441014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128543.P2790048315026424010

`ogf((1+2x-2x^2)/(1-4x+4x^2))`
-/

namespace A128543.P2790048315026424010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -4, 4] n

end

end A128543.P2790048315026424010

namespace A128543

/-- `ogf((1+2x-2x^2)/(1-4x+4x^2))` -/
def P2790048315026424010.Spec : Prop :=
  ∀ n, P2790048315026424010.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P10319361273660441014

`floor(2^(n-1)*3*(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128543

/-- `floor(2^(n-1)*3*(n+1))` -/
def P10319361273660441014.Spec : Prop :=
  ∀ n, P10319361273660441014.a n = A128543 (n + 1)

theorem P10319361273660441014.correct : P10319361273660441014.Spec := by
  intro n
  simp only [A128543, Nat.add_sub_cancel]

end A128543

/-! ## A128543.P14797603283600479119

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=6, a(2)=18`
-/

namespace A128543.P14797603283600479119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 18] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A128543.P14797603283600479119

namespace A128543

/-- `4*a(n-1)-4*a(n-2)` -/
def P14797603283600479119.Spec : Prop :=
  ∀ n, P14797603283600479119.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P5525354720838264537

`(2/n+2)*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A128543.P5525354720838264537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (2 / (n : ℚ) + 2) * a (n - 1)

end

end A128543.P5525354720838264537

namespace A128543

/-- `(2/n+2)*a(n-1)` -/
def P5525354720838264537.Spec : Prop :=
  ∀ n, P5525354720838264537.a n = (A128543 (n + 1) : ℚ)

end A128543

/-! ## A128543.P5177956702435640119

`(n+1)*Δ[2*a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A128543.P5177956702435640119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128543.P5177956702435640119

namespace A128543

/-- `(n+1)*Δ[2*a(n-1)]` -/
def P5177956702435640119.Spec : Prop :=
  ∀ n, P5177956702435640119.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P7936633652799212691

`(n+1)*record[2*a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A128543.P7936633652799212691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128543.P7936633652799212691

namespace A128543

/-- `(n+1)*record[2*a(n-2)]` -/
def P7936633652799212691.Spec : Prop :=
  ∀ n, (P7936633652799212691.a n : ℤ) = A128543 (n + 1)

end A128543

/-! ## A128543.P10557819881210765207

`(n+1)*∑[2*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A128543.P10557819881210765207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128543.P10557819881210765207

namespace A128543

/-- `(n+1)*∑[2*a(n-1)]` -/
def P10557819881210765207.Spec : Prop :=
  ∀ n, (P10557819881210765207.a n : ℤ) = A128543 (n + 1)

end A128543

/-! ## A128543.P8201424243108947342

`(n+1)*A003945(n)`
-/

namespace A128543.P8201424243108947342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003945 n

end

end A128543.P8201424243108947342

namespace A128543

/-- `(n+1)*A003945(n)` -/
def P8201424243108947342.Spec : Prop :=
  ∀ n, P8201424243108947342.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P17824842323221824539

`(n+1)*Δ[A042950(n)]`
-/

namespace A128543.P17824842323221824539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A128543.P17824842323221824539

namespace A128543

/-- `(n+1)*Δ[A042950(n)]` -/
def P17824842323221824539.Spec : Prop :=
  ∀ n, P17824842323221824539.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P1377935148775650650

`(n+1)*Δ[A083329(n)]`
-/

namespace A128543.P1377935148775650650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A128543.P1377935148775650650

namespace A128543

/-- `(n+1)*Δ[A083329(n)]` -/
def P1377935148775650650.Spec : Prop :=
  ∀ n, P1377935148775650650.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P18203438644152381890

`(n+1)*Δ[A296953(n)]`
-/

namespace A128543.P18203438644152381890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A128543.P18203438644152381890

namespace A128543

/-- `(n+1)*Δ[A296953(n)]` -/
def P18203438644152381890.Spec : Prop :=
  ∀ n, P18203438644152381890.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P6421780118494260467

`(n+1)*record[A074323(n)]`
-/

namespace A128543.P6421780118494260467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128543.P6421780118494260467

namespace A128543

/-- `(n+1)*record[A074323(n)]` -/
def P6421780118494260467.Spec : Prop :=
  ∀ n, P6421780118494260467.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P6886187790567025096

`(n+1)*(A055010(n)+1)`
-/

namespace A128543.P6886187790567025096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A055010 n + 1)

end

end A128543.P6886187790567025096

namespace A128543

/-- `(n+1)*(A055010(n)+1)` -/
def P6886187790567025096.Spec : Prop :=
  ∀ n, P6886187790567025096.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P17494317024687387563

`(n+1)*A122391(n+2)`
-/

namespace A128543.P17494317024687387563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122391 (n + 2)

end

end A128543.P17494317024687387563

namespace A128543

/-- `(n+1)*A122391(n+2)` -/
def P17494317024687387563.Spec : Prop :=
  ∀ n, P17494317024687387563.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P18302004459513771485

`(n+1)*A074323(2*n)`
-/

namespace A128543.P18302004459513771485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074323 (2 * n)

end

end A128543.P18302004459513771485

namespace A128543

/-- `(n+1)*A074323(2*n)` -/
def P18302004459513771485.Spec : Prop :=
  ∀ n, P18302004459513771485.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P5537588588953859730

`(n+1)*(A179744(n)+n)`
-/

namespace A128543.P5537588588953859730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A179744 n + (n : ℤ))

end

end A128543.P5537588588953859730

namespace A128543

/-- `(n+1)*(A179744(n)+n)` -/
def P5537588588953859730.Spec : Prop :=
  ∀ n, P5537588588953859730.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P7913362839571047400

`(n+1)*A029744(Δ[n²])`
-/

namespace A128543.P7913362839571047400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A029744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128543.P7913362839571047400

namespace A128543

/-- `(n+1)*A029744(Δ[n²])` -/
def P7913362839571047400.Spec : Prop :=
  ∀ n, P7913362839571047400.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P17292895854530413049

`(n+1)*A081026(Δ[n²])`
-/

namespace A128543.P17292895854530413049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081026 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128543.P17292895854530413049

namespace A128543

/-- `(n+1)*A081026(Δ[n²])` -/
def P17292895854530413049.Spec : Prop :=
  ∀ n, P17292895854530413049.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P13161864528579685932

`(n+1)*∑[A098011(n+2)]`
-/

namespace A128543.P13161864528579685932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128543.P13161864528579685932

namespace A128543

/-- `(n+1)*∑[A098011(n+2)]` -/
def P13161864528579685932.Spec : Prop :=
  ∀ n, P13161864528579685932.a n = A128543 (n + 1)

end A128543

/-! ## A128543.P9158423150589161482

`(n+1)*(A103204(n+1)-1)`
-/

namespace A128543.P9158423150589161482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A103204 (n + 1) - 1)

end

end A128543.P9158423150589161482

namespace A128543

/-- `(n+1)*(A103204(n+1)-1)` -/
def P9158423150589161482.Spec : Prop :=
  ∀ n, P9158423150589161482.a n = A128543 (n + 1)

end A128543

/-!
# A128544: A007318 * A128540.

The programs for A128544, the canonical program `A128544.P3680955686172368637` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128544 has offset 0).

The definition of A128544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128544.P7456215441266295170

`A094435(n+1)+A208518(n+1)-A094436(n)`
-/

namespace A128544.P7456215441266295170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (n + 1) + (A208518 (n + 1) - A094436 n)

end

end A128544.P7456215441266295170

namespace A128544

/-- `A094435(n+1)+A208518(n+1)-A094436(n)` -/
def P7456215441266295170.Spec : Prop :=
  ∀ n, P7456215441266295170.a n = A128544 n

end A128544

/-! ## A128544.P16002920680942570698

`A208518(n+1)+A208519(n+1)-A094437(n)`
-/

namespace A128544.P16002920680942570698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208518 (n + 1) + (A208519 (n + 1) - A094437 n)

end

end A128544.P16002920680942570698

namespace A128544

/-- `A208518(n+1)+A208519(n+1)-A094437(n)` -/
def P16002920680942570698.Spec : Prop :=
  ∀ n, P16002920680942570698.a n = A128544 n

end A128544

/-! ## A128544.P17585461636314949489

`A208518(n+1)+abs(A113020(n+1))`
-/

namespace A128544.P17585461636314949489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208518 (n + 1) + |A113020 (n + 1)|

end

end A128544.P17585461636314949489

namespace A128544

/-- `A208518(n+1)+abs(A113020(n+1))` -/
def P17585461636314949489.Spec : Prop :=
  ∀ n, P17585461636314949489.a n = A128544 n

end A128544

/-! ## A128544.P3680955686172368637

`A094436(n)+A094436(n+1)%A094437(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128544

/-- `A094436(n)+A094436(n+1)%A094437(n+1)` -/
def P3680955686172368637.Spec : Prop :=
  ∀ n, P3680955686172368637.a n = A128544 n

theorem P3680955686172368637.correct : P3680955686172368637.Spec := by
  intro n
  simp only [A128544]

end A128544

/-! ## A128544.P13134595951957209271

`A094437(A014132(n+1))-A208519(n+1)`
-/

namespace A128544.P13134595951957209271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 (A014132 (n + 1)).toNat - A208519 (n + 1)

end

end A128544.P13134595951957209271

namespace A128544

/-- `A094437(A014132(n+1))-A208519(n+1)` -/
def P13134595951957209271.Spec : Prop :=
  ∀ n, P13134595951957209271.a n = A128544 n

end A128544

/-!
# A128545: Triangle, read by rows, where T(n,k) is the coefficient of q^(n*k) in the q-binomial coefficient [2*n, n] for n >= k >= 0.

The programs for A128545, there is no canonical definition to state claims against.
-/

/-! ## A128545.P16417052435589303940

`A063746(A081491(n+1)-1)`
-/

namespace A128545.P16417052435589303940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063746 (A081491 (n + 1) - 1).toNat

end

end A128545.P16417052435589303940

/-! ## A128545.P5106636123943290188

`A105224(3*A232103(n+1))`
-/

namespace A128545.P5106636123943290188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (3 * A232103 (n + 1)).toNat

end

end A128545.P5106636123943290188

/-! ## A128545.P9465712253897144178

`A056556(A176421(n)+1)`
-/

namespace A128545.P9465712253897144178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A176421 n + 1).toNat

end

end A128545.P9465712253897144178

/-! ## A128545.P1099047378301696139

`A226764(4*A022166(n))`
-/

namespace A128545.P1099047378301696139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (4 * A022166 n).toNat

end

end A128545.P1099047378301696139

/-! ## A128545.P8179118052770891409

`A226764(lcm(4, A022166(n)))`
-/

namespace A128545.P8179118052770891409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (Int.lcm 4 (A022166 n))

end

end A128545.P8179118052770891409

/-!
# A128546: Inrepfigit (INverse REPetitive FIbonacci-like diGIT) numbers (or Htiek numbers).

The programs for A128546, there is no canonical definition to state claims against.
-/

/-! ## A128546.P10153881122857503073

`A289868(A242474(n+1)+9)`
-/

namespace A128546.P10153881122857503073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289868 (A242474 (n + 1) + 9).toNat

end

end A128546.P10153881122857503073

/-! ## A128546.P9896998810701145616

`A289868(A076084(n+1)+9)`
-/

namespace A128546.P9896998810701145616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289868 (A076084 (n + 1) + 9).toNat

end

end A128546.P9896998810701145616

/-! ## A128546.P17384596175439542693

`A000027(A289868(n+10))`
-/

namespace A128546.P17384596175439542693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A289868 (n + 10)).toNat

end

end A128546.P17384596175439542693

/-! ## A128546.P12445540219561283354

`A289868(A000005(A000079(n))+9)`
-/

namespace A128546.P12445540219561283354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289868 (A000005 (A000079 n).toNat + 9).toNat

end

end A128546.P12445540219561283354

/-! ## A128546.P9137232420297019103

`A289868(A055645(n)+10)`
-/

namespace A128546.P9137232420297019103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289868 (A055645 n + 10).toNat

end

end A128546.P9137232420297019103

/-!
# A128547: Primes p such that p*q-p-q is prime where q=nextprime(p).

The programs for A128547, there is no canonical definition to state claims against.
-/

/-! ## A128547.P15965989415807940593

`A051697(ceil(sqrt(A096345(n+1))))`
-/

namespace A128547.P15965989415807940593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 ⌈Real.sqrt (A096345 (n + 1) : ℝ)⌉.toNat

end

end A128547.P15965989415807940593

/-! ## A128547.P5171234458468027420

`A051697(round(sqrt(A096345(n+1))))`
-/

namespace A128547.P5171234458468027420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (SequenceMachineLib.roundAway (Real.sqrt (A096345 (n + 1) : ℝ))).toNat

end

end A128547.P5171234458468027420

/-! ## A128547.P7501104478822070384

`A051697(floor(sqrt(A109068(n+1))))`
-/

namespace A128547.P7501104478822070384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (Int.sqrt (A109068 (n + 1))).toNat

end

end A128547.P7501104478822070384

/-! ## A128547.P18022520412495895136

`A051697(ceil(sqrt(A109068(n+1))))`
-/

namespace A128547.P18022520412495895136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 ⌈Real.sqrt (A109068 (n + 1) : ℝ)⌉.toNat

end

end A128547.P18022520412495895136

/-! ## A128547.P2013522182685671782

`A051698(ceil(sqrt(A109068(n+1))))`
-/

namespace A128547.P2013522182685671782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 ⌈Real.sqrt (A109068 (n + 1) : ℝ)⌉.toNat

end

end A128547.P2013522182685671782

/-!
# A128548: Primes p such that p*q-p-q and p*q+p+q are prime where q=nextprime(p).

The programs for A128548, there is no canonical definition to state claims against.
-/

/-! ## A128548.P10905688613622336411

`∩[A126148(n+1), A128547(n+1)]`
-/

namespace A128548.P10905688613622336411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128548.P10905688613622336411

/-! ## A128548.P59766140909727898

`∩[A096342(n+1)%A162358(n+1), A128547(n+1)]`
-/

namespace A128548.P59766140909727898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096342 (n + 1)) (A162358 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128548.P59766140909727898

/-! ## A128548.P1111240809523971823

`∩[A064989(2*A162358(n+1)), A128547(n+1)]`
-/

namespace A128548.P1111240809523971823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A162358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128548.P1111240809523971823

/-! ## A128548.P6266833641583807988

`∩[A285728(2*A162358(n+1)), A128547(n+1)]`
-/

namespace A128548.P6266833641583807988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (2 * A162358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128548.P6266833641583807988

/-!
# A128549: Difference between triangular number and next perfect square.

The programs for A128549, the canonical program `A128549.P11583913422671152577` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128549 has offset 1).

The definition of A128549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128549.P11583913422671152577

`(floor(sqrt((n+1)*(n+2)/2))+1)²-(n+1)*(n+2)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128549

/-- `(floor(sqrt((n+1)*(n+2)/2))+1)²-(n+1)*(n+2)/2` -/
def P11583913422671152577.Spec : Prop :=
  ∀ n, P11583913422671152577.a n = (A128549 (n + 1) : ℚ)

end A128549

/-! ## A128549.P16008992735228802922

`A080883(∑[n+1])`
-/

namespace A128549.P16008992735228802922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128549.P16008992735228802922

namespace A128549

/-- `A080883(∑[n+1])` -/
def P16008992735228802922.Spec : Prop :=
  ∀ n, P16008992735228802922.a n = A128549 (n + 1)

end A128549

/-! ## A128549.P4186959031565813875

`ceil(sqrt(A068527(∑[n+1]+1)²+1))`
-/

namespace A128549.P4186959031565813875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A068527 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 + 1 : ℝ)⌉

end

end A128549.P4186959031565813875

namespace A128549

/-- `ceil(sqrt(A068527(∑[n+1]+1)²+1))` -/
def P4186959031565813875.Spec : Prop :=
  ∀ n, P4186959031565813875.a n = A128549 (n + 1)

end A128549

/-! ## A128549.P10126046394292986448

`A000027(A068527(∑[n+1]+1)+1)`
-/

namespace A128549.P10126046394292986448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A068527 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A128549.P10126046394292986448

namespace A128549

/-- `A000027(A068527(∑[n+1]+1)+1)` -/
def P10126046394292986448.Spec : Prop :=
  ∀ n, P10126046394292986448.a n = A128549 (n + 1)

end A128549

/-! ## A128549.P733583511208069706

`A005843(A068527(∑[n+1]+1)+1)/2`
-/

namespace A128549.P733583511208069706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A068527 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat : ℚ) / 2

end

end A128549.P733583511208069706

namespace A128549

/-- `A005843(A068527(∑[n+1]+1)+1)/2` -/
def P733583511208069706.Spec : Prop :=
  ∀ n, P733583511208069706.a n = (A128549 (n + 1) : ℚ)

end A128549

/-! ## A128549.P14708329707221308831

`(A068527(∑[n+1]+1)+1)%A001358(n+1)`
-/

namespace A128549.P14708329707221308831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068527 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1) (A001358 (n + 1))

end

end A128549.P14708329707221308831

namespace A128549

/-- `(A068527(∑[n+1]+1)+1)%A001358(n+1)` -/
def P14708329707221308831.Spec : Prop :=
  ∀ n, P14708329707221308831.a n = A128549 (n + 1)

end A128549

/-! ## A128549.P11115064570410783814

`A074294(A165776(∑[n+1]))`
-/

namespace A128549.P11115064570410783814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A165776 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A128549.P11115064570410783814

namespace A128549

/-- `A074294(A165776(∑[n+1]))` -/
def P11115064570410783814.Spec : Prop :=
  ∀ n, P11115064570410783814.a n = A128549 (n + 1)

end A128549

/-! ## A128549.P6919926556081574119

`A004736(A007606(∑[n+1]+1))`
-/

namespace A128549.P6919926556081574119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A007606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A128549.P6919926556081574119

namespace A128549

/-- `A004736(A007606(∑[n+1]+1))` -/
def P6919926556081574119.Spec : Prop :=
  ∀ n, P6919926556081574119.a n = A128549 (n + 1)

end A128549

/-! ## A128549.P10146410728921082705

`A256243(∑[4*(n+1)])/2`
-/

namespace A128549.P10146410728921082705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256243 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A128549.P10146410728921082705

namespace A128549

/-- `A256243(∑[4*(n+1)])/2` -/
def P10146410728921082705.Spec : Prop :=
  ∀ n, P10146410728921082705.a n = (A128549 (n + 1) : ℚ)

end A128549

/-! ## A128549.P17703158089787964318

`A004526(A256243(∑[4*(n+1)]))`
-/

namespace A128549.P17703158089787964318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256243 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A128549.P17703158089787964318

namespace A128549

/-- `A004526(A256243(∑[4*(n+1)]))` -/
def P17703158089787964318.Spec : Prop :=
  ∀ n, P17703158089787964318.a n = A128549 (n + 1)

end A128549

/-!
# A128550: a(n) = p, the lesser of twin primes (p, q=p+2) such that p*q + p + q is prime.

The programs for A128550, there is no canonical definition to state claims against.
-/

/-! ## A128550.P1708586530192521497

`ceil(sqrt(A065017(n+1)))-2`
-/

namespace A128550.P1708586530192521497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A065017 (n + 1) : ℝ)⌉ - 2

end

end A128550.P1708586530192521497

/-! ## A128550.P6622612595102256781

`∩[A001359(n+1), A126148(n+1)]`
-/

namespace A128550.P6622612595102256781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P6622612595102256781

/-! ## A128550.P13710684637970116351

`∩[A054799(n+1), A126148(n+1)]`
-/

namespace A128550.P13710684637970116351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P13710684637970116351

/-! ## A128550.P15736013137457000754

`∩[A063693(n+1), A126148(n+1)]`
-/

namespace A128550.P15736013137457000754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P15736013137457000754

/-! ## A128550.P17694335531447098264

`∩[A063700(n+1), A126148(n+1)]`
-/

namespace A128550.P17694335531447098264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P17694335531447098264

/-! ## A128550.P5102587465195279157

`∩[A126148(n+1), A181747(n+1)]`
-/

namespace A128550.P5102587465195279157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P5102587465195279157

/-! ## A128550.P12370564777854492815

`∩[A126148(n+1), A280255(n+1)]`
-/

namespace A128550.P12370564777854492815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P12370564777854492815

/-! ## A128550.P7588968236676560129

`∩[A126148(n+1), A280590(n+1)]`
-/

namespace A128550.P7588968236676560129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P7588968236676560129

/-! ## A128550.P9332453419287205860

`p?[A062326(n+1)-2]`
-/

namespace A128550.P9332453419287205860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128550.P9332453419287205860

/-! ## A128550.P6855311091995734055

`p?[A049002(n+1)%A062326(n+1)]`
-/

namespace A128550.P6855311091995734055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049002 (n + 1)) (A062326 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128550.P6855311091995734055

/-! ## A128550.P17087611555467625768

`∩[A001359(n+1), A062326(n+1)-2]`
-/

namespace A128550.P17087611555467625768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P17087611555467625768

/-! ## A128550.P6036544881884425782

`∩[A054799(n+1), A062326(n+1)-2]`
-/

namespace A128550.P6036544881884425782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P6036544881884425782

/-! ## A128550.P828766838365523937

`∩[A062326(n+1)-2, A063693(n+1)]`
-/

namespace A128550.P828766838365523937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P828766838365523937

/-! ## A128550.P12146382075453449849

`∩[A062326(n+1)-2, A063700(n+1)]`
-/

namespace A128550.P12146382075453449849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P12146382075453449849

/-! ## A128550.P11530374124621226867

`∩[A001838(n+1), A126148(n+1)]`
-/

namespace A128550.P11530374124621226867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P11530374124621226867

/-! ## A128550.P1143293446063184181

`∩[A001838(n+1), A062326(n+1)-2]`
-/

namespace A128550.P1143293446063184181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P1143293446063184181

/-! ## A128550.P6720621633375124126

`∩[A126148(n+1), A274212(n+1)]`
-/

namespace A128550.P6720621633375124126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P6720621633375124126

/-! ## A128550.P3276024178641035243

`∩[A066147(n+1), A126148(n+1)]`
-/

namespace A128550.P3276024178641035243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P3276024178641035243

/-! ## A128550.P2232815897949274144

`∩[A065873(n+1), A126148(n+1)]`
-/

namespace A128550.P2232815897949274144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P2232815897949274144

/-! ## A128550.P8619140649020350444

`∩[A072282(n+1), A126148(n+1)]`
-/

namespace A128550.P8619140649020350444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128550.P8619140649020350444

/-!
# A128551: a(n) = p, the lesser of twin primes (p, q=p+2) such that p*q - p - q is prime.

The programs for A128551, there is no canonical definition to state claims against.
-/

/-! ## A128551.P13283216358650488488

`p?[ceil(sqrt(A096345(n+1)))]`
-/

namespace A128551.P13283216358650488488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A096345 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128551.P13283216358650488488

/-! ## A128551.P6775974421669503180

`p?[A062326(n+1)+2]-2`
-/

namespace A128551.P6775974421669503180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A128551.P6775974421669503180

/-! ## A128551.P2147382378709888667

`∩[A001359(n+1), A062326(n+1)]`
-/

namespace A128551.P2147382378709888667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P2147382378709888667

/-! ## A128551.P48443724076895198

`∩[A054799(n+1), A062326(n+1)]`
-/

namespace A128551.P48443724076895198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P48443724076895198

/-! ## A128551.P11334281779070888366

`∩[A062326(n+1), A063693(n+1)]`
-/

namespace A128551.P11334281779070888366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P11334281779070888366

/-! ## A128551.P8801313138979404777

`∩[A062326(n+1), A063700(n+1)]`
-/

namespace A128551.P8801313138979404777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P8801313138979404777

/-! ## A128551.P6988155790377318668

`∩[A062326(n+1), A181747(n+1)]`
-/

namespace A128551.P6988155790377318668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P6988155790377318668

/-! ## A128551.P16771910212236279089

`∩[A062326(n+1), A280255(n+1)]`
-/

namespace A128551.P16771910212236279089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P16771910212236279089

/-! ## A128551.P3952595833141736068

`∩[A062326(n+1), A280590(n+1)]`
-/

namespace A128551.P3952595833141736068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P3952595833141736068

/-! ## A128551.P10830983288096015506

`∩[A001838(n+1), A062326(n+1)]`
-/

namespace A128551.P10830983288096015506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P10830983288096015506

/-! ## A128551.P236523774362251194

`∩[A062326(n+1), A274212(n+1)]`
-/

namespace A128551.P236523774362251194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P236523774362251194

/-! ## A128551.P6582175121804523174

`∩[A062326(n+1), A066147(n+1)]`
-/

namespace A128551.P6582175121804523174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P6582175121804523174

/-! ## A128551.P13984439475579630051

`∩[A062326(n+1), A072282(n+1)]`
-/

namespace A128551.P13984439475579630051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P13984439475579630051

/-! ## A128551.P7690056901706435621

`∩[A062326(n+1), A065873(n+1)]`
-/

namespace A128551.P7690056901706435621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P7690056901706435621

/-! ## A128551.P10146678458431927349

`∩[A062326(n+1), A067532(n+1)]`
-/

namespace A128551.P10146678458431927349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P10146678458431927349

/-! ## A128551.P13241965259812514167

`∩[A001359(n+1), A028870(n+1)]`
-/

namespace A128551.P13241965259812514167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P13241965259812514167

/-! ## A128551.P12024527093934259114

`∩[A001838(n+1), A028870(n+1)]`
-/

namespace A128551.P12024527093934259114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P12024527093934259114

/-! ## A128551.P15325060709584513600

`∩[A028870(n+1), A063693(n+1)]`
-/

namespace A128551.P15325060709584513600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P15325060709584513600

/-! ## A128551.P5506809277197055475

`∩[A028870(n+1), A181747(n+1)]`
-/

namespace A128551.P5506809277197055475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128551.P5506809277197055475

/-! ## A128551.P4277699061704798722

`p?[A078444(A137291(n+2))]`
-/

namespace A128551.P4277699061704798722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (A137291 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128551.P4277699061704798722

/-!
# A128552: Column 2 of triangle A128545; a(n) is the coefficient of q^(2n+4) in the central q-binomial coefficient [2n+4,n+2].

The programs for A128552, there is no canonical definition to state claims against.
-/

/-! ## A128552.P814113271415395179

`A147878(n+2)-A000041(n+1)`
-/

namespace A128552.P814113271415395179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147878 (n + 2) - A000041 (n + 1)

end

end A128552.P814113271415395179

/-! ## A128552.P15118081167876890547

`A147878(n+2)-(A000065(n+1)+1)`
-/

namespace A128552.P15118081167876890547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147878 (n + 2) - (A000065 (n + 1) + 1)

end

end A128552.P15118081167876890547

/-! ## A128552.P13420491746545491768

`A147878(n+2)+A000070(n)-A000070(n+1)`
-/

namespace A128552.P13420491746545491768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147878 (n + 2) + (A000070 n - A000070 (n + 1))

end

end A128552.P13420491746545491768

/-! ## A128552.P17789166650057802076

`A069905(n+1)+A147878(n+2)-A328863(n+1)`
-/

namespace A128552.P17789166650057802076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) + (A147878 (n + 2) - A328863 (n + 1))

end

end A128552.P17789166650057802076

/-! ## A128552.P2787086322717351306

`A209816(n+2)-A000070(n+1)`
-/

namespace A128552.P2787086322717351306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209816 (n + 2) - A000070 (n + 1)

end

end A128552.P2787086322717351306

/-! ## A128552.P15741423755108260967

`A209816(n+2)-A025065(2*(n+1))`
-/

namespace A128552.P15741423755108260967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209816 (n + 2) - A025065 (2 * (n + 1))

end

end A128552.P15741423755108260967

/-! ## A128552.P5956703305805339772

`A209818(n+2)-(A209817(n+2)+A000070(n+1))`
-/

namespace A128552.P5956703305805339772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209818 (n + 2) - (A209817 (n + 2) + A000070 (n + 1))

end

end A128552.P5956703305805339772

/-!
# A128553: Column 3 of triangle A128545; a(n) is the coefficient of q^(3n+9) in the central q-binomial coefficient [2n+6,n+3].

The programs for A128553, there is no canonical definition to state claims against.
-/

/-! ## A128553.P17717379265172101125

`A128545(∑[n+3]+6)`
-/

namespace A128553.P17717379265172101125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128545 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A128553.P17717379265172101125

/-! ## A128553.P13739885951917728839

`A028310(A128545(C(n+5, 2)-(n+1)))`
-/

namespace A128553.P13739885951917728839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A128545 (Nat.choose (n + 5) 2 - (n + 1))).toNat

end

end A128553.P13739885951917728839

/-!
# A128554: Column 4 of triangle A128545; a(n) is the coefficient of q^(4n+16) in the central q-binomial coefficient [2n+8,n+4].

The programs for A128554, there is no canonical definition to state claims against.
-/

/-! ## A128554.P5791419080786651792

`A128545(∑[n+4]+10)`
-/

namespace A128554.P5791419080786651792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128545 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A128554.P5791419080786651792

/-! ## A128554.P119967614903212027

`or(char[5], A128545(A052905(n+2)))`
-/

namespace A128554.P119967614903212027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A128545 (A052905 (n + 2)).toNat)

end

end A128554.P119967614903212027

/-! ## A128554.P10405419740542692365

`A063746(A081489(n+1)+A053755(n+2))`
-/

namespace A128554.P10405419740542692365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063746 (A081489 (n + 1) + A053755 (n + 2)).toNat

end

end A128554.P10405419740542692365

/-! ## A128554.P17456004257244411435

`A000040(n+2)%2*A128545(A052905(n+2))`
-/

namespace A128554.P17456004257244411435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A128545 (A052905 (n + 2)).toNat

end

end A128554.P17456004257244411435

/-! ## A128554.P3008935884892908821

`A128545(A052905(n+2))^and(1, A000040(n+1))`
-/

namespace A128554.P3008935884892908821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128545 (A052905 (n + 2)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A128554.P3008935884892908821

/-!
# A128557: a(n) = the largest positive integer k such that (n!/k!) has at least n divisors.

The programs for A128557, there is no canonical definition to state claims against.
-/

/-! ## A128557.P6176054675572347157

`A028310(n-A095827(A003107(n)))`
-/

namespace A128557.P6176054675572347157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A095827 (A003107 n).toNat).toNat

end

end A128557.P6176054675572347157

/-! ## A128557.P9257067745569867604

`A390084(A211536(n))`
-/

namespace A128557.P9257067745569867604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390084 (A211536 n).toNat

end

end A128557.P9257067745569867604

/-! ## A128557.P15330960198943724167

`A332015(A226371(n))+A289207(n)`
-/

namespace A128557.P15330960198943724167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A226371 n).toNat + A289207 n

end

end A128557.P15330960198943724167

/-! ## A128557.P6851306924696573432

`A233583(n+1)-A124766(A114103(n+1))`
-/

namespace A128557.P6851306924696573432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A124766 (A114103 (n + 1)).toNat

end

end A128557.P6851306924696573432

/-! ## A128557.P1722872050484960864

`A233583(n+1)-A336570(A134816(n+1))`
-/

namespace A128557.P1722872050484960864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A336570 (A134816 (n + 1)).toNat

end

end A128557.P1722872050484960864

/-!
# A128559: a(n) is the smallest positive integer k such that n!/k! has at most n divisors.

The programs for A128559, there is no canonical definition to state claims against.
-/

/-! ## A128559.P334624502701789706

`A048766(∑[A002264(A331452(n+1))])`
-/

namespace A128559.P334624502701789706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A331452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128559.P334624502701789706

/-! ## A128559.P13961155942908476818

`A048766(∑[A008611(A331452(n+1))])`
-/

namespace A128559.P13961155942908476818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A331452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128559.P13961155942908476818

/-! ## A128559.P14828687777104536119

`A028310(n)-A079998(A105599(n+1))`
-/

namespace A128559.P14828687777104536119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A079998 (A105599 (n + 1)).toNat

end

end A128559.P14828687777104536119

/-! ## A128559.P8442891348443700449

`A065033(2*n)-A079998(A105599(n+1))`
-/

namespace A128559.P8442891348443700449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A079998 (A105599 (n + 1)).toNat

end

end A128559.P8442891348443700449

/-! ## A128559.P979458775109898979

`A007318(A000124(n))-A079998(A105599(n+1))`
-/

namespace A128559.P979458775109898979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat - A079998 (A105599 (n + 1)).toNat

end

end A128559.P979458775109898979

/-!
# A128560: a(n) = numerator of r(n): r(n) is such that the continued fraction (of rational terms) [r(1);r(2),...,r(n)] = n^2, for every positive integer n.

The programs for A128560, there is no canonical definition to state claims against.
-/

/-! ## A128560.P11866069993172184667

`A165795(lcm(A139272(n), A165799(n)))`
-/

namespace A128560.P11866069993172184667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (Int.lcm (A139272 n) (A165799 n))

end

end A128560.P11866069993172184667

/-!
# A128561: a(n) = denominator of r(n): r(n) is such that the continued fraction (of rational terms) [r(1);r(2),...,r(n)] = n^2, for every positive integer n.

The programs for A128561, there is no canonical definition to state claims against.
-/

/-! ## A128561.P1618140866663928310

`record[Δ[A028899(A332212(n+1))]]`
-/

namespace A128561.P1618140866663928310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A332212 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128561.P1618140866663928310

/-! ## A128561.P5130884192968587756

`record[gcd(A006749(n+1), A120485(n))]`
-/

namespace A128561.P5130884192968587756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006749 (n + 1)) (A120485 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128561.P5130884192968587756

/-!
# A128562: Triangle, read by rows, where T(n,k) is the coefficient of q^((n+1)*k) in the q-binomial coefficient [2*n+1, n] for n >= k >= 0.

The programs for A128562, there is no canonical definition to state claims against.
-/

/-! ## A128562.P249545444454737659

`A025126(A142468(n)+1)`
-/

namespace A128562.P249545444454737659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A142468 n + 1).toNat

end

end A128562.P249545444454737659

/-! ## A128562.P3486433733136149070

`round(A181543(n)/A175948(A081577(n)))`
-/

namespace A128562.P3486433733136149070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181543 n : ℚ) / (A175948 (A081577 n).toNat : ℚ))

end

end A128562.P3486433733136149070

/-! ## A128562.P11723291455387812671

`A185284(A246655(n+1))+A006093(A034932(n))`
-/

namespace A128562.P11723291455387812671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A246655 (n + 1)).toNat + A006093 (A034932 n).toNat

end

end A128562.P11723291455387812671

/-! ## A128562.P6164904410878098934

`A033923(A022173(n))`
-/

namespace A128562.P6164904410878098934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033923 (A022173 n).toNat

end

end A128562.P6164904410878098934

/-! ## A128562.P11955754904880394221

`A095923(A007318(n))`
-/

namespace A128562.P11955754904880394221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095923 (A007318 n).toNat

end

end A128562.P11955754904880394221

/-!
# A128563: Column 2 of triangle A128562.

The programs for A128563, there is no canonical definition to state claims against.
-/

/-! ## A128563.P3095386965632992367

`A007044(n+2)+A007042(n+2)`
-/

namespace A128563.P3095386965632992367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007044 (n + 2) + A007042 (n + 2)

end

end A128563.P3095386965632992367

/-! ## A128563.P1370964226243113654

`A128552(n+1)-A000065(n+3)`
-/

namespace A128563.P1370964226243113654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128552 (n + 1) - A000065 (n + 3)

end

end A128563.P1370964226243113654

/-! ## A128563.P7557622715555408802

`A136621(∑[n+2])+A007044(n+2)`
-/

namespace A128563.P7557622715555408802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136621 (∑ j ∈ Finset.range (n + 1), f1 j) + A007044 (n + 2)

end

end A128563.P7557622715555408802

/-! ## A128563.P2823378943040818529

`∑[A209815(n+3)-A209816(n+2)]`
-/

namespace A128563.P2823378943040818529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209815 (n + 3) - A209816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128563.P2823378943040818529

/-! ## A128563.P9750738689255734935

`A209815(n+3)+1-A000070(n+2)`
-/

namespace A128563.P9750738689255734935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209815 (n + 3) + (1 - A000070 (n + 2))

end

end A128563.P9750738689255734935

/-!
# A128565: Column 1 of triangle A128564; a(n) equals the number of permutations of {1..n+2} with [n/2+1] inversions for n>=0.

The programs for A128565, there is no canonical definition to state claims against.
-/

/-! ## A128565.P1720356992322598502

`record[ratio[A128564(n)]]`
-/

namespace A128565.P1720356992322598502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128564 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128565.P1720356992322598502

/-! ## A128565.P7042194462339289798

`A128564(∑[n+1]+1)`
-/

namespace A128565.P7042194462339289798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128565.P7042194462339289798

/-! ## A128565.P15181081514527910950

`A008302(A084570(n+1))`
-/

namespace A128565.P15181081514527910950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (A084570 (n + 1)).toNat

end

end A128565.P15181081514527910950

/-! ## A128565.P12903115647695692522

`A274887(A084570(n)+2+n)`
-/

namespace A128565.P12903115647695692522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (A084570 n + 2 + (n : ℤ)).toNat

end

end A128565.P12903115647695692522

/-! ## A128565.P5680674046221265368

`record[A128564(n+1)/A128564(n)]`
-/

namespace A128565.P5680674046221265368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128564 (n + 1) : ℚ) / (A128564 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128565.P5680674046221265368

/-!
# A128566: Number of permutations of {1..n} with n inversions.

The programs for A128566, there is no canonical definition to state claims against.
-/

/-! ## A128566.P17968387127339636087

`A177517(∑[4*n]+1)`
-/

namespace A128566.P17968387127339636087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128566.P17968387127339636087

/-! ## A128566.P292286696245563446

`or(char[3], A177517(A046092(n)+1))`
-/

namespace A128566.P292286696245563446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A177517 (A046092 n + 1).toNat)

end

end A128566.P292286696245563446

/-! ## A128566.P3348010085782426747

`lcm(A087960(n), A177517(A046092(n)+1))`
-/

namespace A128566.P3348010085782426747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A177517 (A046092 n + 1).toNat)

end

end A128566.P3348010085782426747

/-! ## A128566.P12044331496701261262

`A177517(A046092(n)+1)+A000007(n+1)`
-/

namespace A128566.P12044331496701261262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A046092 n + 1).toNat + A000007 (n + 1)

end

end A128566.P12044331496701261262

/-! ## A128566.P12186524380637217692

`A177517(A046092(n)+1)+A000035(2*n)`
-/

namespace A128566.P12186524380637217692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A046092 n + 1).toNat + A000035 (2 * n)

end

end A128566.P12186524380637217692

/-! ## A128566.P4157046291572536999

`A177517(A046092(n)+1)%A236664(n+1)`
-/

namespace A128566.P4157046291572536999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177517 (A046092 n + 1).toNat) (A236664 (n + 1))

end

end A128566.P4157046291572536999

/-! ## A128566.P319915045853363854

`A177517(A046092(n)+1)^and(1, A000040(n+1))`
-/

namespace A128566.P319915045853363854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177517 (A046092 n + 1).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A128566.P319915045853363854

/-! ## A128566.P2510469520679785626

`A177517(A008619((2*n+1)²))+A025439(A136605(n+1))`
-/

namespace A128566.P2510469520679785626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A008619 ((2 * n + 1) ^ 2)).toNat + A025439 (A136605 (n + 1)).toNat

end

end A128566.P2510469520679785626

/-!
# A128567: Matrix square, T(n,k), of Parker's partition triangle A047812, read by rows (n >= 1 and 0 <= k <= n-1).

The programs for A128567, there is no canonical definition to state claims against.
-/

/-! ## A128567.P10023878599503646789

`or(A039598(n), A056654(A008277(n+1)))`
-/

namespace A128567.P10023878599503646789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039598 n) (A056654 (A008277 (n + 1)).toNat)

end

end A128567.P10023878599503646789

/-! ## A128567.P18425845328924870532

`or(A095801(n+1), A300056(A095783(n+1)))`
-/

namespace A128567.P18425845328924870532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095801 (n + 1)) (A300056 (A095783 (n + 1)).toNat)

end

end A128567.P18425845328924870532

/-!
# A128568: Column 1 of triangle A128567.

The programs for A128568, there is no canonical definition to state claims against.
-/

/-! ## A128568.P12477684508115026558

`A128567(∑[n+1]+2)`
-/

namespace A128568.P12477684508115026558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128567 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A128568.P12477684508115026558

/-! ## A128568.P6560483551357301632

`record[gcd(A128567(n+1), A333925(n))]`
-/

namespace A128568.P6560483551357301632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128567 (n + 1)) (A333925 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128568.P6560483551357301632

/-! ## A128568.P14354125907529659602

`record[gcd(A081719(n), A128567(n+2))]`
-/

namespace A128568.P14354125907529659602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081719 n) (A128567 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128568.P14354125907529659602

/-! ## A128568.P12223817350637206727

`lcm((-1)^n, A128567(A000096(n)+3))`
-/

namespace A128568.P12223817350637206727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A128567 (A000096 n + 3).toNat)

end

end A128568.P12223817350637206727

/-!
# A128569: Column 2 of triangle A128567.

The programs for A128569, there is no canonical definition to state claims against.
-/

/-! ## A128569.P10698813983340342546

`A128567(∑[n+2]+4)`
-/

namespace A128569.P10698813983340342546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128567 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A128569.P10698813983340342546

/-! ## A128569.P11238813155867364777

`A128567(A167614(n+1))+A025439(n)`
-/

namespace A128569.P11238813155867364777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128567 (A167614 (n + 1)).toNat + A025439 n

end

end A128569.P11238813155867364777

/-! ## A128569.P16543925927162879275

`A185284(n)+A128567(A167614(n+1))`
-/

namespace A128569.P16543925927162879275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A128567 (A167614 (n + 1)).toNat

end

end A128569.P16543925927162879275

/-!
# A128570: Rectangular table, read by antidiagonals, where the g.f. of row n, R(x,n), satisfies: R(x,n) = 1 + (n+1)*x*R(x,n+1)^2 for n>=0.

The programs for A128570, there is no canonical definition to state claims against.
-/

/-! ## A128570.P11579504860357988421

`A167662(A395701(n))`
-/

namespace A128570.P11579504860357988421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (A395701 n).toNat

end

end A128570.P11579504860357988421

/-! ## A128570.P9146753779366312255

`A307531(A008279(n)^A002262(n))`
-/

namespace A128570.P9146753779366312255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (SequenceMachineLib.roundAway ((A008279 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A128570.P9146753779366312255

/-!
# A128571: Row 1 of table A128570.

The programs for A128571, there is no canonical definition to state claims against.
-/

/-! ## A128571.P7874324683727974425

`A128570(∑[n+2]-1)`
-/

namespace A128571.P7874324683727974425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A128571.P7874324683727974425

/-! ## A128571.P9209885838177749072

`record[A128570(A099375(n)+n)]`
-/

namespace A128571.P9209885838177749072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (A099375 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128571.P9209885838177749072

/-! ## A128571.P9018486729793420278

`record[and(A115236(n), A128570(n))]`
-/

namespace A128571.P9018486729793420278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115236 n) (A128570 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128571.P9018486729793420278

/-! ## A128571.P5205775089060712153

`record[A128570(gcd(n, A197126(n+1)))]`
-/

namespace A128571.P5205775089060712153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (Int.gcd (n : ℤ) (A197126 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128571.P5205775089060712153

/-! ## A128571.P13105001226666111508

`gcd(A128570(A034856(n+1)), A151909(n))`
-/

namespace A128571.P13105001226666111508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128570 (A034856 (n + 1)).toNat) (A151909 n)

end

end A128571.P13105001226666111508

/-!
# A128572: Row 2 of table A128570.

The programs for A128572, there is no canonical definition to state claims against.
-/

/-! ## A128572.P6722894391575224071

`A128570(∑[n+3])`
-/

namespace A128572.P6722894391575224071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128572.P6722894391575224071

/-! ## A128572.P386363885035986604

`record[A128570(gcd(n, A197126(n+2)))]`
-/

namespace A128572.P386363885035986604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (Int.gcd (n : ℤ) (A197126 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128572.P386363885035986604

/-! ## A128572.P11750013386243642158

`gcd(A000038(n), A128570(A141214(n)))`
-/

namespace A128572.P11750013386243642158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A128570 (A141214 n).toNat)

end

end A128572.P11750013386243642158

/-! ## A128572.P17933472544605679627

`lcm(A065941(n), A128570(A141214(n)))`
-/

namespace A128572.P17933472544605679627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065941 n) (A128570 (A141214 n).toNat)

end

end A128572.P17933472544605679627

/-! ## A128572.P2679269602922460530

`log2(A020639(2*(n+1)))*A128570(A141214(n))`
-/

namespace A128572.P2679269602922460530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A128570 (A141214 n).toNat : ℝ)

end

end A128572.P2679269602922460530

/-!
# A128573: Row 3 of table A128570.

The programs for A128573, there is no canonical definition to state claims against.
-/

/-! ## A128573.P15662216058366890147

`A128570(∑[n+3]+n+3)`
-/

namespace A128573.P15662216058366890147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A128573.P15662216058366890147

/-! ## A128573.P14553122454100704575

`record[A128570(gcd(n, A162298(n)))]`
-/

namespace A128573.P14553122454100704575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (Int.gcd (n : ℤ) (A162298 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128573.P14553122454100704575

/-! ## A128573.P8257634558647356576

`A128570(A046691(n+2))+A000038(3*(n+1))`
-/

namespace A128573.P8257634558647356576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (A046691 (n + 2)).toNat + A000038 (3 * (n + 1))

end

end A128573.P8257634558647356576

/-!
# A128574: Row 4 of table A128570.

The programs for A128574, there is no canonical definition to state claims against.
-/

/-! ## A128574.P6652239990974573681

`A128570(eq[4, A025581(n)])`
-/

namespace A128574.P6652239990974573681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128574.P6652239990974573681

/-! ## A128574.P15323257397436825247

`A128570(eq[9, A099375(n)])`
-/

namespace A128574.P15323257397436825247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128574.P15323257397436825247

/-! ## A128574.P4814729072486902603

`A128570(A141214(n+2)-2)`
-/

namespace A128574.P4814729072486902603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (A141214 (n + 2) - 2).toNat

end

end A128574.P4814729072486902603

/-! ## A128574.P3490147451394400400

`A128570(eq[5, A004736(n+1)])`
-/

namespace A128574.P3490147451394400400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128574.P3490147451394400400

/-! ## A128574.P11091712351472745215

`A128570(eq[32, A090988(n+1)])`
-/

namespace A128574.P11091712351472745215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128574.P11091712351472745215

/-!
# A128575: Row 5 of table A128570.

The programs for A128575, there is no canonical definition to state claims against.
-/

/-! ## A128575.P9358800446905715780

`A128570(eq[5, A025581(n)])`
-/

namespace A128575.P9358800446905715780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128575.P9358800446905715780

/-! ## A128575.P8979434028087009996

`A128570(eq[11, A099375(n)])`
-/

namespace A128575.P8979434028087009996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128575.P8979434028087009996

/-! ## A128575.P17922925256393449049

`A128570(Δ[A023551(n+1)])`
-/

namespace A128575.P17922925256393449049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (f1 (n + 1) - f1 n).toNat

end

end A128575.P17922925256393449049

/-! ## A128575.P15098693411225138810

`A128570(Δ[A026054(n+3)])`
-/

namespace A128575.P15098693411225138810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (f1 (n + 1) - f1 n).toNat

end

end A128575.P15098693411225138810

/-! ## A128575.P14788285637083423687

`A128570(eq[6, A004736(n+1)])`
-/

namespace A128575.P14788285637083423687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128575.P14788285637083423687

/-!
# A128576: Row 6 of table A128570.

The programs for A128576, there is no canonical definition to state claims against.
-/

/-! ## A128576.P11588921118362964843

`A128570(eq[6, A025581(n)])`
-/

namespace A128576.P11588921118362964843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128576.P11588921118362964843

/-! ## A128576.P11050046925811602688

`A128570(eq[7, A193739(n)])`
-/

namespace A128576.P11050046925811602688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128576.P11050046925811602688

/-! ## A128576.P14770348349127318449

`A128570(eq[13, A099375(n)])`
-/

namespace A128576.P14770348349127318449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128576.P14770348349127318449

/-! ## A128576.P2359728655718738542

`A128570(eq[7, A004736(n+1)])`
-/

namespace A128576.P2359728655718738542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128576.P2359728655718738542

/-! ## A128576.P13256841851438728292

`A128570(Δ[A023551(n+2)]-1)`
-/

namespace A128576.P13256841851438728292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (f1 (n + 1) - f1 n - 1).toNat

end

end A128576.P13256841851438728292

/-!
# A128577: Self-convolution of A128318.

The programs for A128577, there is no canonical definition to state claims against.
-/

/-! ## A128577.P10804310609633733680

`A268652(∑[n+1]+1)`
-/

namespace A128577.P10804310609633733680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128577.P10804310609633733680

/-! ## A128577.P1217380549164030886

`record[A268652(A091018(n))]`
-/

namespace A128577.P1217380549164030886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268652 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128577.P1217380549164030886

/-! ## A128577.P5360526002385417192

`record[A268652(n)/A065941(n)]`
-/

namespace A128577.P5360526002385417192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268652 n : ℚ) / (A065941 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128577.P5360526002385417192

/-! ## A128577.P11003343707979668160

`record[A268652(n)/A178252(n)]`
-/

namespace A128577.P11003343707979668160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268652 n : ℚ) / (A178252 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128577.P11003343707979668160

/-! ## A128577.P9458411151384448679

`record[A268652(n)/A267998(n)]`
-/

namespace A128577.P9458411151384448679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268652 n : ℚ) / (A267998 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128577.P9458411151384448679

/-!
# A128578: Main diagonal of table A128570.

The programs for A128578, there is no canonical definition to state claims against.
-/

/-! ## A128578.P17879383326735892122

`A128570(∑[4*n])`
-/

namespace A128578.P17879383326735892122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128578.P17879383326735892122

/-! ## A128578.P9604278623387877310

`record[A128570(∑[A071045(n)])]`
-/

namespace A128578.P9604278623387877310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128578.P9604278623387877310

/-! ## A128578.P3856666426254207136

`record[gcd(A112467(n), A128570(n))]`
-/

namespace A128578.P3856666426254207136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A128570 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128578.P3856666426254207136

/-! ## A128578.P6964421217510237330

`record[A077606(n+1)*A128570(n)]`
-/

namespace A128578.P6964421217510237330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A128570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128578.P6964421217510237330

/-! ## A128578.P16494736513858521855

`A326687(n)+A128570(A046092(n))`
-/

namespace A128578.P16494736513858521855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326687 n + A128570 (A046092 n).toNat

end

end A128578.P16494736513858521855

/-!
# A128579: Antidiagonal sums of table A128570.

The programs for A128579, there is no canonical definition to state claims against.
-/

/-! ## A128579.P13247966685155846519

`A154438(7*a(n-1))` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A128579.P13247966685155846519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  A154438 (7 * a (n - 1)).toNat

end

end A128579.P13247966685155846519

/-!
# A128580: Expansion of phi(x^3) * psi(x^4) - x * phi(x) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A128580, the canonical program `A128580.P10005316687977448542` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128580 has offset 0).

The definition of A128580 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115660, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128580.P10005316687977448542

`A115660(2*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128580

/-- `A115660(2*n+1)` -/
def P10005316687977448542.Spec : Prop :=
  ∀ n, P10005316687977448542.a n = A128580 n

theorem P10005316687977448542.correct : P10005316687977448542.Spec := by
  intro n
  simp only [A128580]

end A128580

/-! ## A128580.P1222805786517041065

`A128581(2*n+1)`
-/

namespace A128580.P1222805786517041065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (2 * n + 1)

end

end A128580.P1222805786517041065

namespace A128580

/-- `A128581(2*n+1)` -/
def P1222805786517041065.Spec : Prop :=
  ∀ n, P1222805786517041065.a n = A128580 n

end A128580

/-! ## A128580.P4520896002501133768

`(-1)^∑[n]*A129402(n)`
-/

namespace A128580.P4520896002501133768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A129402 n

end

end A128580.P4520896002501133768

namespace A128580

/-- `(-1)^∑[n]*A129402(n)` -/
def P4520896002501133768.Spec : Prop :=
  ∀ n, P4520896002501133768.a n = A128580 n

end A128580

/-! ## A128580.P16626304229678891376

`A033999(n)*A134177(n)`
-/

namespace A128580.P16626304229678891376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A134177 n

end

end A128580.P16626304229678891376

namespace A128580

/-- `A033999(n)*A134177(n)` -/
def P16626304229678891376.Spec : Prop :=
  ∀ n, P16626304229678891376.a n = A128580 n

end A128580

/-! ## A128580.P16636190626551005540

`A057077(n)*A190615(n)`
-/

namespace A128580.P16636190626551005540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A190615 n

end

end A128580.P16636190626551005540

namespace A128580

/-- `A057077(n)*A190615(n)` -/
def P16636190626551005540.Spec : Prop :=
  ∀ n, P16636190626551005540.a n = A128580 n

end A128580

/-! ## A128580.P12876691477437567166

`A134177(n)/A057077(A057077(n)+n)`
-/

namespace A128580.P12876691477437567166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134177 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A128580.P12876691477437567166

namespace A128580

/-- `A134177(n)/A057077(A057077(n)+n)` -/
def P12876691477437567166.Spec : Prop :=
  ∀ n, P12876691477437567166.a n = (A128580 n : ℚ)

end A128580

/-! ## A128580.P6290327590942622366

`lcm(A087960(n), A190615(n))*A087960(n)`
-/

namespace A128580.P6290327590942622366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A087960 n) (A190615 n) : ℤ) * A087960 n

end

end A128580.P6290327590942622366

namespace A128580

/-- `lcm(A087960(n), A190615(n))*A087960(n)` -/
def P6290327590942622366.Spec : Prop :=
  ∀ n, P6290327590942622366.a n = A128580 n

end A128580

/-! ## A128580.P8707415065118334762

`A057077(2*n)*A134177(n)`
-/

namespace A128580.P8707415065118334762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A134177 n

end

end A128580.P8707415065118334762

namespace A128580

/-- `A057077(2*n)*A134177(n)` -/
def P8707415065118334762.Spec : Prop :=
  ∀ n, P8707415065118334762.a n = A128580 n

end A128580

/-! ## A128580.P8223616216737300181

`A087960(2*n)*A134177(n)`
-/

namespace A128580.P8223616216737300181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A134177 n

end

end A128580.P8223616216737300181

namespace A128580

/-- `A087960(2*n)*A134177(n)` -/
def P8223616216737300181.Spec : Prop :=
  ∀ n, P8223616216737300181.a n = A128580 n

end A128580

/-! ## A128580.P3379596379825941054

`A143431(2*n)*A190615(n)`
-/

namespace A128580.P3379596379825941054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 (2 * n) * A190615 n

end

end A128580.P3379596379825941054

namespace A128580

/-- `A143431(2*n)*A190615(n)` -/
def P3379596379825941054.Spec : Prop :=
  ∀ n, P3379596379825941054.a n = A128580 n

end A128580

/-! ## A128580.P4537333682868117592

`A046113(2*n+1)-A129402(n)`
-/

namespace A128580.P4537333682868117592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * n + 1) - A129402 n

end

end A128580.P4537333682868117592

namespace A128580

/-- `A046113(2*n+1)-A129402(n)` -/
def P4537333682868117592.Spec : Prop :=
  ∀ n, P4537333682868117592.a n = A128580 n

end A128580

/-! ## A128580.P12891804280401911529

`A129402(n)-A108563(2*n+1)`
-/

namespace A128580.P12891804280401911529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 n - A108563 (2 * n + 1)

end

end A128580.P12891804280401911529

namespace A128580

/-- `A129402(n)-A108563(2*n+1)` -/
def P12891804280401911529.Spec : Prop :=
  ∀ n, P12891804280401911529.a n = A128580 n

end A128580

/-! ## A128580.P12385184792240545350

`A000377(2*n+1)*A087960(n)`
-/

namespace A128580.P12385184792240545350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) * A087960 n

end

end A128580.P12385184792240545350

namespace A128580

/-- `A000377(2*n+1)*A087960(n)` -/
def P12385184792240545350.Spec : Prop :=
  ∀ n, P12385184792240545350.a n = A128580 n

end A128580

/-! ## A128580.P1877753035167894980

`A087960(n)*A192013(2*n+1)`
-/

namespace A128580.P1877753035167894980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A192013 (2 * n + 1)

end

end A128580.P1877753035167894980

namespace A128580

/-- `A087960(n)*A192013(2*n+1)` -/
def P1877753035167894980.Spec : Prop :=
  ∀ n, P1877753035167894980.a n = A128580 n

end A128580

/-! ## A128580.P11993355917020883936

`abs(A190611(2*n+1))*A087960(n)`
-/

namespace A128580.P11993355917020883936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190611 (2 * n + 1)| * A087960 n

end

end A128580.P11993355917020883936

namespace A128580

/-- `abs(A190611(2*n+1))*A087960(n)` -/
def P11993355917020883936.Spec : Prop :=
  ∀ n, P11993355917020883936.a n = A128580 n

end A128580

/-! ## A128580.P10660372628037908703

`A087960(n+1)*A261122(2*n+1)`
-/

namespace A128580.P10660372628037908703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n + 1) * A261122 (2 * n + 1)

end

end A128580.P10660372628037908703

namespace A128580

/-- `A087960(n+1)*A261122(2*n+1)` -/
def P10660372628037908703.Spec : Prop :=
  ∀ n, P10660372628037908703.a n = A128580 n

end A128580

/-! ## A128580.P7540573385315913393

`A263649(2*n+1)/A061347(n+2)`
-/

namespace A128580.P7540573385315913393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263649 (2 * n + 1) : ℚ) / (A061347 (n + 2) : ℚ)

end

end A128580.P7540573385315913393

namespace A128580

/-- `A263649(2*n+1)/A061347(n+2)` -/
def P7540573385315913393.Spec : Prop :=
  ∀ n, P7540573385315913393.a n = (A128580 n : ℚ)

end A128580

/-! ## A128580.P6325468865489250553

`A190611(2*n+1)+A046113(2*n+1)`
-/

namespace A128580.P6325468865489250553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (2 * n + 1) + A046113 (2 * n + 1)

end

end A128580.P6325468865489250553

namespace A128580

/-- `A190611(2*n+1)+A046113(2*n+1)` -/
def P6325468865489250553.Spec : Prop :=
  ∀ n, P6325468865489250553.a n = A128580 n

end A128580

/-! ## A128580.P14026203579797014353

`A046113(2*n+1)-A000377(2*n+1)`
-/

namespace A128580.P14026203579797014353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * n + 1) - A000377 (2 * n + 1)

end

end A128580.P14026203579797014353

namespace A128580

/-- `A046113(2*n+1)-A000377(2*n+1)` -/
def P14026203579797014353.Spec : Prop :=
  ∀ n, P14026203579797014353.a n = A128580 n

end A128580

/-! ## A128580.P6273755152871598439

`A000377(2*n+1)-A108563(2*n+1)`
-/

namespace A128580.P6273755152871598439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) - A108563 (2 * n + 1)

end

end A128580.P6273755152871598439

namespace A128580

/-- `A000377(2*n+1)-A108563(2*n+1)` -/
def P6273755152871598439.Spec : Prop :=
  ∀ n, P6273755152871598439.a n = A128580 n

end A128580

/-!
# A128581: Expansion of (phi(q^2) * phi(-q^3) - phi(-q) * phi(q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A128581, the canonical program `A128581.P949221518114225001` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128581 has offset 1).

The definition of A128581 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115660, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128581.P949221518114225001

`(-1)^n*A115660(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128581

/-- `(-1)^n*A115660(n+1)` -/
def P949221518114225001.Spec : Prop :=
  ∀ n, P949221518114225001.a n = A128581 (n + 1)

theorem P949221518114225001.correct : P949221518114225001.Spec := by
  intro n
  simp only [A128581, Nat.add_sub_cancel]

end A128581

/-! ## A128581.P9691953513633226185

`A115660((∑[n]-1)%(n+1)+1)`
-/

namespace A128581.P9691953513633226185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A128581.P9691953513633226185

namespace A128581

/-- `A115660((∑[n]-1)%(n+1)+1)` -/
def P9691953513633226185.Spec : Prop :=
  ∀ n, P9691953513633226185.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P12955700207108154879

`A115660(A026741(n+1))`
-/

namespace A128581.P12955700207108154879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A026741 (n + 1)).toNat

end

end A128581.P12955700207108154879

namespace A128581

/-- `A115660(A026741(n+1))` -/
def P12955700207108154879.Spec : Prop :=
  ∀ n, P12955700207108154879.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P3093992995423287348

`A115660(A384042(n+1))`
-/

namespace A128581.P3093992995423287348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A384042 (n + 1)).toNat

end

end A128581.P3093992995423287348

namespace A128581

/-- `A115660(A384042(n+1))` -/
def P3093992995423287348.Spec : Prop :=
  ∀ n, P3093992995423287348.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P4404265119096565724

`∑{d}[n+1, A115660(#)*A130706((n+1)/#-1)]`
-/

namespace A128581.P4404265119096565724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115660 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A128581.P4404265119096565724

namespace A128581

/-- `∑{d}[n+1, A115660(#)*A130706((n+1)/#-1)]` -/
def P4404265119096565724.Spec : Prop :=
  ∀ n, P4404265119096565724.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P8189491677809716170

`∑{d}[n+1, A010892(#-1)*A091337((n+1)/#)]`
-/

namespace A128581.P8189491677809716170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010892 (d - 1) * A091337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A128581.P8189491677809716170

namespace A128581

/-- `∑{d}[n+1, A010892(#-1)*A091337((n+1)/#)]` -/
def P8189491677809716170.Spec : Prop :=
  ∀ n, P8189491677809716170.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P16642846182275283652

`A115660(A022998(n+1))`
-/

namespace A128581.P16642846182275283652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A022998 (n + 1)).toNat

end

end A128581.P16642846182275283652

namespace A128581

/-- `A115660(A022998(n+1))` -/
def P16642846182275283652.Spec : Prop :=
  ∀ n, P16642846182275283652.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P9808011709819482075

`A115660(A257088(n+1))`
-/

namespace A128581.P9808011709819482075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A257088 (n + 1)).toNat

end

end A128581.P9808011709819482075

namespace A128581

/-- `A115660(A257088(n+1))` -/
def P9808011709819482075.Spec : Prop :=
  ∀ n, P9808011709819482075.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P11547244444834435335

`A115660(A165998(n))`
-/

namespace A128581.P11547244444834435335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A165998 n).toNat

end

end A128581.P11547244444834435335

namespace A128581

/-- `A115660(A165998(n))` -/
def P11547244444834435335.Spec : Prop :=
  ∀ n, P11547244444834435335.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P13519414772955218833

`A115660(A382154(n+1))`
-/

namespace A128581.P13519414772955218833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A382154 (n + 1)).toNat

end

end A128581.P13519414772955218833

namespace A128581

/-- `A115660(A382154(n+1))` -/
def P13519414772955218833.Spec : Prop :=
  ∀ n, P13519414772955218833.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P3091500797500024931

`A115660(A195312(n+1))`
-/

namespace A128581.P3091500797500024931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A195312 (n + 1)).toNat

end

end A128581.P3091500797500024931

namespace A128581

/-- `A115660(A195312(n+1))` -/
def P3091500797500024931.Spec : Prop :=
  ∀ n, P3091500797500024931.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P17371909455664206601

`A115660(A298026(n+1))`
-/

namespace A128581.P17371909455664206601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A298026 (n + 1)).toNat

end

end A128581.P17371909455664206601

namespace A128581

/-- `A115660(A298026(n+1))` -/
def P17371909455664206601.Spec : Prop :=
  ∀ n, P17371909455664206601.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P17536491968905109159

`A115660(Δ[A007494(n)+A007494(n)²])`
-/

namespace A128581.P17536491968905109159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + A007494 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (f1 (n + 1) - f1 n).toNat

end

end A128581.P17536491968905109159

namespace A128581

/-- `A115660(Δ[A007494(n)+A007494(n)²])` -/
def P17536491968905109159.Spec : Prop :=
  ∀ n, P17536491968905109159.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P17378744495031093255

`A115660(A317316(n+1))`
-/

namespace A128581.P17378744495031093255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A317316 (n + 1)).toNat

end

end A128581.P17378744495031093255

namespace A128581

/-- `A115660(A317316(n+1))` -/
def P17378744495031093255.Spec : Prop :=
  ∀ n, P17378744495031093255.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P1922257521950031433

`A115660(A298038(n+1))`
-/

namespace A128581.P1922257521950031433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A298038 (n + 1)).toNat

end

end A128581.P1922257521950031433

namespace A128581

/-- `A115660(A298038(n+1))` -/
def P1922257521950031433.Spec : Prop :=
  ∀ n, P1922257521950031433.a n = A128581 (n + 1)

end A128581

/-! ## A128581.P16906278353422016614

`A115660(A317324(n+1))`
-/

namespace A128581.P16906278353422016614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A317324 (n + 1)).toNat

end

end A128581.P16906278353422016614

namespace A128581

/-- `A115660(A317324(n+1))` -/
def P16906278353422016614.Spec : Prop :=
  ∀ n, P16906278353422016614.a n = A128581 (n + 1)

end A128581

/-!
# A128582: Expansion of f(x^4, x^12) * f(x, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A128582, the canonical program `A128582.P684908251658449014` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128582 has offset 0).

The definition of A128582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128582.P10622261983391377589

`abs(A260118(n))`
-/

namespace A128582.P10622261983391377589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260118 n|

end

end A128582.P10622261983391377589

namespace A128582

/-- `abs(A260118(n))` -/
def P10622261983391377589.Spec : Prop :=
  ∀ n, P10622261983391377589.a n = A128582 n

end A128582

/-! ## A128582.P4890896905375467567

`A037213(A260118(n)²)`
-/

namespace A128582.P4890896905375467567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A260118 n ^ 2).toNat

end

end A128582.P4890896905375467567

namespace A128582

/-- `A037213(A260118(n)²)` -/
def P4890896905375467567.Spec : Prop :=
  ∀ n, P4890896905375467567.a n = A128582 n

end A128582

/-! ## A128582.P389391854821563188

`A033999(n)*A260118(n)`
-/

namespace A128582.P389391854821563188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A260118 n

end

end A128582.P389391854821563188

namespace A128582

/-- `A033999(n)*A260118(n)` -/
def P389391854821563188.Spec : Prop :=
  ∀ n, P389391854821563188.a n = A128582 n

end A128582

/-! ## A128582.P16817068679498385341

`A087960(n)*A260118(n)`
-/

namespace A128582.P16817068679498385341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A260118 n

end

end A128582.P16817068679498385341

namespace A128582

/-- `A087960(n)*A260118(n)` -/
def P16817068679498385341.Spec : Prop :=
  ∀ n, P16817068679498385341.a n = A128582 n

end A128582

/-! ## A128582.P5515940533051265249

`A094267(n)*A260118(n)`
-/

namespace A128582.P5515940533051265249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A260118 n

end

end A128582.P5515940533051265249

namespace A128582

/-- `A094267(n)*A260118(n)` -/
def P5515940533051265249.Spec : Prop :=
  ∀ n, P5515940533051265249.a n = A128582 n

end A128582

/-! ## A128582.P13015393057682887038

`A219977(n)*A260118(n)`
-/

namespace A128582.P13015393057682887038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A260118 n

end

end A128582.P13015393057682887038

namespace A128582

/-- `A219977(n)*A260118(n)` -/
def P13015393057682887038.Spec : Prop :=
  ∀ n, P13015393057682887038.a n = A128582 n

end A128582

/-! ## A128582.P9800131020710659125

`gcd(A000038(n), A260118(n))`
-/

namespace A128582.P9800131020710659125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260118 n)

end

end A128582.P9800131020710659125

namespace A128582

/-- `gcd(A000038(n), A260118(n))` -/
def P9800131020710659125.Spec : Prop :=
  ∀ n, (P9800131020710659125.a n : ℤ) = A128582 n

end A128582

/-! ## A128582.P2306877085410048750

`lcm(A001492(n), A260118(n))`
-/

namespace A128582.P2306877085410048750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A260118 n)

end

end A128582.P2306877085410048750

namespace A128582

/-- `lcm(A001492(n), A260118(n))` -/
def P2306877085410048750.Spec : Prop :=
  ∀ n, (P2306877085410048750.a n : ℤ) = A128582 n

end A128582

/-! ## A128582.P13379074952681246836

`A071935(n+1)*A260118(n)`
-/

namespace A128582.P13379074952681246836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A260118 n

end

end A128582.P13379074952681246836

namespace A128582

/-- `A071935(n+1)*A260118(n)` -/
def P13379074952681246836.Spec : Prop :=
  ∀ n, P13379074952681246836.a n = A128582 n

end A128582

/-! ## A128582.P14384470932935093879

`A260118(n)*A309873(n+1)`
-/

namespace A128582.P14384470932935093879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260118 n * A309873 (n + 1)

end

end A128582.P14384470932935093879

namespace A128582

/-- `A260118(n)*A309873(n+1)` -/
def P14384470932935093879.Spec : Prop :=
  ∀ n, P14384470932935093879.a n = A128582 n

end A128582

/-! ## A128582.P684908251658449014

`A263548(Δ[n²])/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128582

/-- `A263548(Δ[n²])/2` -/
def P684908251658449014.Spec : Prop :=
  ∀ n, P684908251658449014.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P9590305148502815213

`abs(A258587(2*n+1)/2)`
-/

namespace A128582.P9590305148502815213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A258587 (2 * n + 1) : ℚ) / 2|

end

end A128582.P9590305148502815213

namespace A128582

/-- `abs(A258587(2*n+1)/2)` -/
def P9590305148502815213.Spec : Prop :=
  ∀ n, P9590305148502815213.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P2824176400064608701

`A258587(2*n+1)/(A000038(n+1)-2)`
-/

namespace A128582.P2824176400064608701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258587 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A128582.P2824176400064608701

namespace A128582

/-- `A258587(2*n+1)/(A000038(n+1)-2)` -/
def P2824176400064608701.Spec : Prop :=
  ∀ n, P2824176400064608701.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P3222073690066866181

`A258587(2*n+1)/(A005926(2*n)-2)`
-/

namespace A128582.P3222073690066866181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258587 (2 * n + 1) : ℚ) / (A005926 (2 * n) - 2 : ℚ)

end

end A128582.P3222073690066866181

namespace A128582

/-- `A258587(2*n+1)/(A005926(2*n)-2)` -/
def P3222073690066866181.Spec : Prop :=
  ∀ n, P3222073690066866181.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P4017989463166670914

`lcm(A000034(n+1), A258587(2*n+1))/2`
-/

namespace A128582.P4017989463166670914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A258587 (2 * n + 1)) : ℚ) / 2

end

end A128582.P4017989463166670914

namespace A128582

/-- `lcm(A000034(n+1), A258587(2*n+1))/2` -/
def P4017989463166670914.Spec : Prop :=
  ∀ n, P4017989463166670914.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P127358972528970747

`A258587(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A128582.P127358972528970747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258587 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A128582.P127358972528970747

namespace A128582

/-- `A258587(2*n+1)/(A033999(2*n+1)-1)` -/
def P127358972528970747.Spec : Prop :=
  ∀ n, P127358972528970747.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P1191963216508183368

`A129402(3*n+2)/2`
-/

namespace A128582.P1191963216508183368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 (3 * n + 2) : ℚ) / 2

end

end A128582.P1191963216508183368

namespace A128582

/-- `A129402(3*n+2)/2` -/
def P1191963216508183368.Spec : Prop :=
  ∀ n, P1191963216508183368.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P1865689977855024876

`abs(A190615(Δ[n²]+n+1)/2)`
-/

namespace A128582.P1865689977855024876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A190615 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat : ℚ) / 2|

end

end A128582.P1865689977855024876

namespace A128582

/-- `abs(A190615(Δ[n²]+n+1)/2)` -/
def P1865689977855024876.Spec : Prop :=
  ∀ n, P1865689977855024876.a n = (A128582 n : ℚ)

end A128582

/-! ## A128582.P5604043857992679510

`A084863(A269819(n+1))`
-/

namespace A128582.P5604043857992679510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084863 (A269819 (n + 1)).toNat

end

end A128582.P5604043857992679510

namespace A128582

/-- `A084863(A269819(n+1))` -/
def P5604043857992679510.Spec : Prop :=
  ∀ n, P5604043857992679510.a n = A128582 n

end A128582

/-! ## A128582.P3828765102178042486

`A000377(6*n+5)/2`
-/

namespace A128582.P3828765102178042486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 (6 * n + 5) : ℚ) / 2

end

end A128582.P3828765102178042486

namespace A128582

/-- `A000377(6*n+5)/2` -/
def P3828765102178042486.Spec : Prop :=
  ∀ n, P3828765102178042486.a n = (A128582 n : ℚ)

end A128582

/-!
# A128583: Expansion of chi(x) * psi(x^2) * phi(-x^6) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A128583, the canonical program `A128583.P7488601789905684802` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128583 has offset 0).

The definition of A128583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128583.P7488601789905684802

`A259895(3*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128583

/-- `A259895(3*n)` -/
def P7488601789905684802.Spec : Prop :=
  ∀ n, P7488601789905684802.a n = A128583 n

theorem P7488601789905684802.correct : P7488601789905684802.Spec := by
  intro n
  simp only [A128583]

end A128583

/-! ## A128583.P14345203226608195479

`A128582(4*n)`
-/

namespace A128583.P14345203226608195479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128582 (4 * n)

end

end A128583.P14345203226608195479

namespace A128583

/-- `A128582(4*n)` -/
def P14345203226608195479.Spec : Prop :=
  ∀ n, P14345203226608195479.a n = A128583 n

end A128583

/-! ## A128583.P10330976398333254447

`A260118(4*n)`
-/

namespace A128583.P10330976398333254447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260118 (4 * n)

end

end A128583.P10330976398333254447

namespace A128583

/-- `A260118(4*n)` -/
def P10330976398333254447.Spec : Prop :=
  ∀ n, P10330976398333254447.a n = A128583 n

end A128583

/-! ## A128583.P5469332851996190859

`A261118(6*n+1)/2`
-/

namespace A128583.P5469332851996190859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261118 (6 * n + 1) : ℚ) / 2

end

end A128583.P5469332851996190859

namespace A128583

/-- `A261118(6*n+1)/2` -/
def P5469332851996190859.Spec : Prop :=
  ∀ n, P5469332851996190859.a n = (A128583 n : ℚ)

end A128583

/-! ## A128583.P14374603682896668947

`A259896(9*n+1)`
-/

namespace A128583.P14374603682896668947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259896 (9 * n + 1)

end

end A128583.P14374603682896668947

namespace A128583

/-- `A259896(9*n+1)` -/
def P14374603682896668947.Spec : Prop :=
  ∀ n, P14374603682896668947.a n = A128583 n

theorem P14374603682896668947.correct : P14374603682896668947.Spec := by
  intro n
  simp only [A128583, Nat.add_sub_cancel, A128583.P14374603682896668947.a, A128583.P7488601789905684802.a, A259895, A259895.P8827514384946731388.a, A259896, A259896.P523730154750983543.a, A261119, A261119.P8548707517831122132.a, A261118, A261118.P17042699293542349779.a, A192013, A192013.P9428922321752629191.f1, A192013.P9428922321752629191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128583

/-! ## A128583.P16365211214845398141

`A129402(A017533(n)+1)/2`
-/

namespace A128583.P16365211214845398141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 (A017533 n + 1).toNat : ℚ) / 2

end

end A128583.P16365211214845398141

namespace A128583

/-- `A129402(A017533(n)+1)/2` -/
def P16365211214845398141.Spec : Prop :=
  ∀ n, P16365211214845398141.a n = (A128583 n : ℚ)

end A128583

/-! ## A128583.P5131465526293163949

`A129402(2*A016921(n))/2`
-/

namespace A128583.P5131465526293163949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 (2 * A016921 n).toNat : ℚ) / 2

end

end A128583.P5131465526293163949

namespace A128583

/-- `A129402(2*A016921(n))/2` -/
def P5131465526293163949.Spec : Prop :=
  ∀ n, P5131465526293163949.a n = (A128583 n : ℚ)

end A128583

/-! ## A128583.P13114860185521142001

`A000377(A135659(n)-2)/2`
-/

namespace A128583.P13114860185521142001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 (A135659 n - 2).toNat : ℚ) / 2

end

end A128583.P13114860185521142001

namespace A128583

/-- `A000377(A135659(n)-2)/2` -/
def P13114860185521142001.Spec : Prop :=
  ∀ n, P13114860185521142001.a n = (A128583 n : ℚ)

end A128583

/-! ## A128583.P15123633914790452119

`A000377(A259752(n+1)-1)/2`
-/

namespace A128583.P15123633914790452119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 (A259752 (n + 1) - 1).toNat : ℚ) / 2

end

end A128583.P15123633914790452119

namespace A128583

/-- `A000377(A259752(n+1)-1)/2` -/
def P15123633914790452119.Spec : Prop :=
  ∀ n, P15123633914790452119.a n = (A128583 n : ℚ)

end A128583

/-! ## A128583.P4284373334060095328

`A129402(A016921(A016921(n)))/2`
-/

namespace A128583.P4284373334060095328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 (A016921 (A016921 n).toNat).toNat : ℚ) / 2

end

end A128583.P4284373334060095328

namespace A128583

/-- `A129402(A016921(A016921(n)))/2` -/
def P4284373334060095328.Spec : Prop :=
  ∀ n, P4284373334060095328.a n = (A128583 n : ℚ)

end A128583

/-!
# A128584: A054521 * A128064 (unsigned).

The programs for A128584, the canonical program `A128584.P5689279512010966890` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128584 has offset 1).

The definition of A128584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128584.P5689279512010966890

`A127368(n+1)+A054521(n+2)-A127368(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128584

/-- `A127368(n+1)+A054521(n+2)-A127368(n+2)` -/
def P5689279512010966890.Spec : Prop :=
  ∀ n, P5689279512010966890.a n = A128584 (n + 1)

theorem P5689279512010966890.correct : P5689279512010966890.Spec := by
  intro n
  simp only [A128584, Nat.add_sub_cancel]

end A128584

/-!
# A128585: Triangle read by rows: A007318^(-1) * A128541.

The programs for A128585, the canonical program `A128585.P13154041954292014342` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128585 has offset 1).

The definition of A128585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128585.P13154041954292014342

`A097808(n)*A104763(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128585

/-- `A097808(n)*A104763(n+1)` -/
def P13154041954292014342.Spec : Prop :=
  ∀ n, P13154041954292014342.a n = A128585 (n + 1)

theorem P13154041954292014342.correct : P13154041954292014342.Spec := by
  intro n
  simp only [A128585, Nat.add_sub_cancel]

end A128585

/-! ## A128585.P13343203725421311943

`A000045(A002260(n+1))*A097808(n)`
-/

namespace A128585.P13343203725421311943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A097808 n

end

end A128585.P13343203725421311943

namespace A128585

/-- `A000045(A002260(n+1))*A097808(n)` -/
def P13343203725421311943.Spec : Prop :=
  ∀ n, P13343203725421311943.a n = A128585 (n + 1)

end A128585

/-! ## A128585.P4434541039656604530

`A000045(A134868(n+1))*A097808(n)`
-/

namespace A128585.P4434541039656604530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134868 (n + 1)).toNat * A097808 n

end

end A128585.P4434541039656604530

namespace A128585

/-- `A000045(A134868(n+1))*A097808(n)` -/
def P4434541039656604530.Spec : Prop :=
  ∀ n, P4434541039656604530.a n = A128585 (n + 1)

end A128585

/-! ## A128585.P9178700385527077745

`(2*A130595(n)-A130595(A014132(n+1)))*A104763(n+1)`
-/

namespace A128585.P9178700385527077745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A130595 n - A130595 (A014132 (n + 1)).toNat) * A104763 (n + 1)

end

end A128585.P9178700385527077745

namespace A128585

/-- `(2*A130595(n)-A130595(A014132(n+1)))*A104763(n+1)` -/
def P9178700385527077745.Spec : Prop :=
  ∀ n, P9178700385527077745.a n = A128585 (n + 1)

end A128585

/-!
# A128587: Row sums of A128586.

The programs for A128587, the canonical program `A128587.P7309852469290401665` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128587 has offset 1).

The definition of A128587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128587.P5775811431536003528

`ogf((1+3x+3x^2)/(1+2x-x^3))`
-/

namespace A128587.P5775811431536003528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 2, 0, -1] n

end

end A128587.P5775811431536003528

namespace A128587

/-- `ogf((1+3x+3x^2)/(1+2x-x^3))` -/
def P5775811431536003528.Spec : Prop :=
  ∀ n, P5775811431536003528.a n = A128587 (n + 1)

end A128587

/-! ## A128587.P7309852469290401665

`(-1)^(n+1)*(1-A118658(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A128587

/-- `(-1)^(n+1)*(1-A118658(n))` -/
def P7309852469290401665.Spec : Prop :=
  ∀ n, P7309852469290401665.a n = A128587 (n + 1)

theorem P7309852469290401665.correct : P7309852469290401665.Spec := by
  intro n
  simp only [A128587, Nat.add_sub_cancel]

end A128587

/-! ## A128587.P180963954654622725

`a(n-3)-2*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A128587.P180963954654622725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) - 2 * a (n - 1)

end

end A128587.P180963954654622725

namespace A128587

/-- `a(n-3)-2*a(n-1)` -/
def P180963954654622725.Spec : Prop :=
  ∀ n, P180963954654622725.a n = A128587 (n + 1)

end A128587

/-! ## A128587.P11711428410472007650

`a(n-2)+(-1)^n-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A128587.P11711428410472007650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ((-1) ^ n - a (n - 1))

end

end A128587.P11711428410472007650

namespace A128587

/-- `a(n-2)+(-1)^n-a(n-1)` -/
def P11711428410472007650.Spec : Prop :=
  ∀ n, P11711428410472007650.a n = A128587 (n + 1)

end A128587

/-! ## A128587.P94538662074322154

`a(n-2)-(a(n-1)-(-1)^n)` with `a(0)=1, a(1)=1`
-/

namespace A128587.P94538662074322154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (a (n - 1) - (-1) ^ n)

end

end A128587.P94538662074322154

namespace A128587

/-- `a(n-2)-(a(n-1)-(-1)^n)` -/
def P94538662074322154.Spec : Prop :=
  ∀ n, P94538662074322154.a n = A128587 (n + 1)

end A128587

/-! ## A128587.P15649865038098503940

`a(n-3)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A128587.P15649865038098503940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 1)

end

end A128587.P15649865038098503940

namespace A128587

/-- `a(n-3)-a(n-1)-a(n-1)` -/
def P15649865038098503940.Spec : Prop :=
  ∀ n, P15649865038098503940.a n = A128587 (n + 1)

end A128587

/-! ## A128587.P10528443424093514039

`(A118658(n)-1)*(-1)^n`
-/

namespace A128587.P10528443424093514039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118658 n - 1) * (-1) ^ n

end

end A128587.P10528443424093514039

namespace A128587

/-- `(A118658(n)-1)*(-1)^n` -/
def P10528443424093514039.Spec : Prop :=
  ∀ n, P10528443424093514039.a n = A128587 (n + 1)

theorem P10528443424093514039.correct : P10528443424093514039.Spec := by
  intro n
  simp only [A128587, Nat.add_sub_cancel, A128587.P10528443424093514039.a, A128587.P7309852469290401665.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128587

/-! ## A128587.P10473108226560342800

`(1-A198834(n+1))*A165326(n)`
-/

namespace A128587.P10473108226560342800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A198834 (n + 1)) * A165326 n

end

end A128587.P10473108226560342800

namespace A128587

/-- `(1-A198834(n+1))*A165326(n)` -/
def P10473108226560342800.Spec : Prop :=
  ∀ n, P10473108226560342800.a n = A128587 (n + 1)

end A128587

/-! ## A128587.P9860034402991181958

`A005247(n)-(A033999(n)+A005013(n))`
-/

namespace A128587.P9860034402991181958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n - (A033999 n + A005013 n)

end

end A128587.P9860034402991181958

namespace A128587

/-- `A005247(n)-(A033999(n)+A005013(n))` -/
def P9860034402991181958.Spec : Prop :=
  ∀ n, P9860034402991181958.a n = A128587 (n + 1)

end A128587

/-!
# A128588: Expansion of g.f. x*(1+x+x^2)/(1-x-x^2).

The programs for A128588, the canonical program `A128588.P3651552534347073619` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128588 has offset 1).

The definition of A128588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x-x^2))` (program `A128588.P3651552534347073619`, by `A128588.P3651552534347073619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128588.P3651552534347073619

`ogf((1+x+x^2)/(1-x-x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128588

/-- `ogf((1+x+x^2)/(1-x-x^2))` -/
def P3651552534347073619.Spec : Prop :=
  ∀ n, P3651552534347073619.a n = A128588 (n + 1)

theorem P3651552534347073619.correct : P3651552534347073619.Spec := by
  intro n
  simp only [A128588, Nat.add_sub_cancel]

end A128588

/-! ## A128588.P9909534404125178530

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A128588.P9909534404125178530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A128588.P9909534404125178530

namespace A128588

/-- `round(ϕ*a(n-1))` -/
def P9909534404125178530.Spec : Prop :=
  ∀ n, P9909534404125178530.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P7974442571694769341

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A128588.P7974442571694769341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + a (n - 2)

end

end A128588.P7974442571694769341

namespace A128588

/-- `a(n-1)+a(n-2)` -/
def P7974442571694769341.Spec : Prop :=
  ∀ n, (P7974442571694769341.a n : ℤ) = A128588 (n + 1)

end A128588

/-! ## A128588.P3824703862983679394

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A128588.P3824703862983679394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A128588.P3824703862983679394

namespace A128588

/-- `2*a(n-1)-a(n-3)` -/
def P3824703862983679394.Spec : Prop :=
  ∀ n, P3824703862983679394.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P15317057526708129051

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A128588.P15317057526708129051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A128588.P15317057526708129051

namespace A128588

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P15317057526708129051.Spec : Prop :=
  ∀ n, P15317057526708129051.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P850299348679568984

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A128588.P850299348679568984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A128588.P850299348679568984

namespace A128588

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P850299348679568984.Spec : Prop :=
  ∀ n, P850299348679568984.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P17144735037162867420

`record[A006355(n)]`
-/

namespace A128588.P17144735037162867420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128588.P17144735037162867420

namespace A128588

/-- `record[A006355(n)]` -/
def P17144735037162867420.Spec : Prop :=
  ∀ n, P17144735037162867420.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P3534313124273610409

`∑[A163733(n+1)]`
-/

namespace A128588.P3534313124273610409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128588.P3534313124273610409

namespace A128588

/-- `∑[A163733(n+1)]` -/
def P3534313124273610409.Spec : Prop :=
  ∀ n, P3534313124273610409.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P15662160085848215781

`∑[A173388(2*n)]`
-/

namespace A128588.P15662160085848215781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128588.P15662160085848215781

namespace A128588

/-- `∑[A173388(2*n)]` -/
def P15662160085848215781.Spec : Prop :=
  ∀ n, P15662160085848215781.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P13467477178573808242

`A173388(2*n+3)`
-/

namespace A128588.P13467477178573808242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (2 * n + 3)

end

end A128588.P13467477178573808242

namespace A128588

/-- `A173388(2*n+3)` -/
def P13467477178573808242.Spec : Prop :=
  ∀ n, P13467477178573808242.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P10511472100010804325

`∑[round(ϕ^n-A000045(n))]`
-/

namespace A128588.P10511472100010804325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n - (A000045 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128588.P10511472100010804325

namespace A128588

/-- `∑[round(ϕ^n-A000045(n))]` -/
def P10511472100010804325.Spec : Prop :=
  ∀ n, P10511472100010804325.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P8122291851853904086

`A118658(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A128588.P8122291851853904086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A118658 n + a (n - 1)

end

end A128588.P8122291851853904086

namespace A128588

/-- `A118658(n)+a(n-1)` -/
def P8122291851853904086.Spec : Prop :=
  ∀ n, P8122291851853904086.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P8175125530809003735

`round(2/ϕ*A000045(n+2))`
-/

namespace A128588.P8175125530809003735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.goldenRatio * (A000045 (n + 2) : ℝ))

end

end A128588.P8175125530809003735

namespace A128588

/-- `round(2/ϕ*A000045(n+2))` -/
def P8175125530809003735.Spec : Prop :=
  ∀ n, P8175125530809003735.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P5407695179581574481

`A290140(n+2)-(2*n+1)`
-/

namespace A128588.P5407695179581574481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290140 (n + 2) - (2 * n + 1 : ℤ)

end

end A128588.P5407695179581574481

namespace A128588

/-- `A290140(n+2)-(2*n+1)` -/
def P5407695179581574481.Spec : Prop :=
  ∀ n, P5407695179581574481.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P18153780369692742931

`A055389((n+1)%(2*n+1))`
-/

namespace A128588.P18153780369692742931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 ((n + 1) % (2 * n + 1))

end

end A128588.P18153780369692742931

namespace A128588

/-- `A055389((n+1)%(2*n+1))` -/
def P18153780369692742931.Spec : Prop :=
  ∀ n, P18153780369692742931.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P18160489023681012668

`A198834(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A128588.P18160489023681012668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A198834 (n + 1) + a (n - 1)

end

end A128588.P18160489023681012668

namespace A128588

/-- `A198834(n+1)+a(n-1)` -/
def P18160489023681012668.Spec : Prop :=
  ∀ n, P18160489023681012668.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P12388277160223496238

`A000032(n)+a(n-1)/2` with `a(0)=1, a(1)=2`
-/

namespace A128588.P12388277160223496238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A000032 n : ℚ) + a (n - 1) / 2

end

end A128588.P12388277160223496238

namespace A128588

/-- `A000032(n)+a(n-1)/2` -/
def P12388277160223496238.Spec : Prop :=
  ∀ n, P12388277160223496238.a n = (A128588 (n + 1) : ℚ)

end A128588

/-! ## A128588.P4646942486350210970

`2*(a(n-1)-A000045(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A128588.P4646942486350210970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - A000045 (n - 2))

end

end A128588.P4646942486350210970

namespace A128588

/-- `2*(a(n-1)-A000045(n-2))` -/
def P4646942486350210970.Spec : Prop :=
  ∀ n, P4646942486350210970.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P3331331654167423816

`A096748(A130773(n))`
-/

namespace A128588.P3331331654167423816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (A130773 n).toNat

end

end A128588.P3331331654167423816

namespace A128588

/-- `A096748(A130773(n))` -/
def P3331331654167423816.Spec : Prop :=
  ∀ n, P3331331654167423816.a n = A128588 (n + 1)

end A128588

/-! ## A128588.P9412104224930699514

`A006355(A114637(n+1))`
-/

namespace A128588.P9412104224930699514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A114637 (n + 1)).toNat

end

end A128588.P9412104224930699514

namespace A128588

/-- `A006355(A114637(n+1))` -/
def P9412104224930699514.Spec : Prop :=
  ∀ n, P9412104224930699514.a n = A128588 (n + 1)

end A128588

/-!
# A128589: Triangle read by rows: T(n,k) = Fibonacci(k) * A051731(n,k).

The programs for A128589, the canonical program `A128589.P7421725673230309718` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128589 has offset 1).

The definition of A128589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128589.P7421725673230309718

`A000045(A127093(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A128589

/-- `A000045(A127093(n+1))` -/
def P7421725673230309718.Spec : Prop :=
  ∀ n, P7421725673230309718.a n = A128589 (n + 1)

theorem P7421725673230309718.correct : P7421725673230309718.Spec := by
  intro n
  simp only [A128589, Nat.add_sub_cancel]

end A128589

/-! ## A128589.P12127971873640762548

`A000045(sqrt(A134575(n+1)))`
-/

namespace A128589.P12127971873640762548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A134575 (n + 1) : ℝ))).toNat

end

end A128589.P12127971873640762548

namespace A128589

/-- `A000045(sqrt(A134575(n+1)))` -/
def P12127971873640762548.Spec : Prop :=
  ∀ n, P12127971873640762548.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P3468283871114115204

`A000045(A176079(n+1)+1)`
-/

namespace A128589.P3468283871114115204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A176079 (n + 1) + 1).toNat

end

end A128589.P3468283871114115204

namespace A128589

/-- `A000045(A176079(n+1)+1)` -/
def P3468283871114115204.Spec : Prop :=
  ∀ n, P3468283871114115204.a n = A128589 (n + 1)

theorem P3468283871114115204.correct : P3468283871114115204.Spec := by
  intro n
  simp only [A128589, Nat.add_sub_cancel, A128589.P3468283871114115204.a, A128589.P7421725673230309718.a, A000045, A000045.P11838749114346432762.a, A127093, A127093.P1089623250187861217.a, A176079, A176079.P15611810976206123960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128589

/-! ## A128589.P1731944494548892165

`A000045(ceil(A134560(n+1)/2))`
-/

namespace A128589.P1731944494548892165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A134560 (n + 1) : ℚ) / 2⌉.toNat

end

end A128589.P1731944494548892165

namespace A128589

/-- `A000045(ceil(A134560(n+1)/2))` -/
def P1731944494548892165.Spec : Prop :=
  ∀ n, P1731944494548892165.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P5351207813749858651

`A000045(round(A134560(n+1)/2))`
-/

namespace A128589.P5351207813749858651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A134560 (n + 1) : ℚ) / 2)).toNat

end

end A128589.P5351207813749858651

namespace A128589

/-- `A000045(round(A134560(n+1)/2))` -/
def P5351207813749858651.Spec : Prop :=
  ∀ n, P5351207813749858651.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P4243654730287884120

`A051731(n+1)*A104763(n+1)`
-/

namespace A128589.P4243654730287884120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A104763 (n + 1)

end

end A128589.P4243654730287884120

namespace A128589

/-- `A051731(n+1)*A104763(n+1)` -/
def P4243654730287884120.Spec : Prop :=
  ∀ n, P4243654730287884120.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P7625650232591870846

`A051731(n+1)*A111946(n+1)`
-/

namespace A128589.P7625650232591870846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A111946 (n + 1)

end

end A128589.P7625650232591870846

namespace A128589

/-- `A051731(n+1)*A111946(n+1)` -/
def P7625650232591870846.Spec : Prop :=
  ∀ n, P7625650232591870846.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P1269306033368706599

`and(A104763(n+1), A130888(n+1))`
-/

namespace A128589.P1269306033368706599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104763 (n + 1)) (A130888 (n + 1))

end

end A128589.P1269306033368706599

namespace A128589

/-- `and(A104763(n+1), A130888(n+1))` -/
def P1269306033368706599.Spec : Prop :=
  ∀ n, P1269306033368706599.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P3980861863979708138

`and(A111946(n+1), A130888(n+1))`
-/

namespace A128589.P3980861863979708138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111946 (n + 1)) (A130888 (n + 1))

end

end A128589.P3980861863979708138

namespace A128589

/-- `and(A111946(n+1), A130888(n+1))` -/
def P3980861863979708138.Spec : Prop :=
  ∀ n, P3980861863979708138.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P16600076624054046157

`A115338(A134575(n+1))`
-/

namespace A128589.P16600076624054046157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A134575 (n + 1)).toNat

end

end A128589.P16600076624054046157

namespace A128589

/-- `A115338(A134575(n+1))` -/
def P16600076624054046157.Spec : Prop :=
  ∀ n, P16600076624054046157.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P12833895765647592599

`A371192(A127639(n+1))`
-/

namespace A128589.P12833895765647592599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371192 (A127639 (n + 1)).toNat

end

end A128589.P12833895765647592599

namespace A128589

/-- `A371192(A127639(n+1))` -/
def P12833895765647592599.Spec : Prop :=
  ∀ n, P12833895765647592599.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P5374768441579156604

`A270362(A216954(n+1))`
-/

namespace A128589.P5374768441579156604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A216954 (n + 1)).toNat

end

end A128589.P5374768441579156604

namespace A128589

/-- `A270362(A216954(n+1))` -/
def P5374768441579156604.Spec : Prop :=
  ∀ n, P5374768441579156604.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P13305735406490450522

`A082498(A130888(n+1))`
-/

namespace A128589.P13305735406490450522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A130888 (n + 1)).toNat

end

end A128589.P13305735406490450522

namespace A128589

/-- `A082498(A130888(n+1))` -/
def P13305735406490450522.Spec : Prop :=
  ∀ n, P13305735406490450522.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P3953053349738390702

`A230871(A143425(n+1))`
-/

namespace A128589.P3953053349738390702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230871 (A143425 (n + 1)).toNat

end

end A128589.P3953053349738390702

namespace A128589

/-- `A230871(A143425(n+1))` -/
def P3953053349738390702.Spec : Prop :=
  ∀ n, P3953053349738390702.a n = A128589 (n + 1)

end A128589

/-! ## A128589.P14286137871573753607

`A324965(A216953(n+1))`
-/

namespace A128589.P14286137871573753607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A216953 (n + 1)).toNat

end

end A128589.P14286137871573753607

namespace A128589

/-- `A324965(A216953(n+1))` -/
def P14286137871573753607.Spec : Prop :=
  ∀ n, P14286137871573753607.a n = A128589 (n + 1)

end A128589

/-!
# A128590: Triangle read by rows, matrix product A128179 * A000012.

The programs for A128590, the canonical program `A128590.P16993943773611964593` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128590 has offset 1).

The definition of A128590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128590.P6393020967501914062

`T(n-2,k)+row(n)+1` with `a(0)=1`
-/

namespace A128590.P6393020967501914062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triRow n + 1)

end

end A128590.P6393020967501914062

namespace A128590

/-- `T(n-2,k)+row(n)+1` -/
def P6393020967501914062.Spec : Prop :=
  ∀ n, (P6393020967501914062.a n : ℤ) = A128590 (n + 1)

end A128590

/-! ## A128590.P16993943773611964593

`(A003057(n+2)-A209279(n+1))*A209279(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128590

/-- `(A003057(n+2)-A209279(n+1))*A209279(n+1)` -/
def P16993943773611964593.Spec : Prop :=
  ∀ n, P16993943773611964593.a n = A128590 (n + 1)

theorem P16993943773611964593.correct : P16993943773611964593.Spec := by
  intro n
  simp only [A128590, Nat.add_sub_cancel]

end A128590

/-! ## A128590.P9395424942911592208

`A134447(A131406(n+1)+n)`
-/

namespace A128590.P9395424942911592208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134447 (A131406 (n + 1) + (n : ℤ)).toNat

end

end A128590.P9395424942911592208

namespace A128590

/-- `A134447(A131406(n+1)+n)` -/
def P9395424942911592208.Spec : Prop :=
  ∀ n, P9395424942911592208.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P9390843795800127251

`A134447(n+2-A128174(n+1))`
-/

namespace A128590.P9390843795800127251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134447 ((n + 2 : ℤ) - A128174 (n + 1)).toNat

end

end A128590.P9390843795800127251

namespace A128590

/-- `A134447(n+2-A128174(n+1))` -/
def P9390843795800127251.Spec : Prop :=
  ∀ n, P9390843795800127251.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P4162758289353172378

`A003991(A385406(n+1))`
-/

namespace A128590.P4162758289353172378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A385406 (n + 1)).toNat

end

end A128590.P4162758289353172378

namespace A128590

/-- `A003991(A385406(n+1))` -/
def P4162758289353172378.Spec : Prop :=
  ∀ n, P4162758289353172378.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P3413456400758826211

`A003991(A057028(n+1))`
-/

namespace A128590.P3413456400758826211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A057028 (n + 1)).toNat

end

end A128590.P3413456400758826211

namespace A128590

/-- `A003991(A057028(n+1))` -/
def P3413456400758826211.Spec : Prop :=
  ∀ n, P3413456400758826211.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P2876665948209580205

`A080251(A061579(n))`
-/

namespace A128590.P2876665948209580205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080251 (A061579 n).toNat

end

end A128590.P2876665948209580205

namespace A128590

/-- `A080251(A061579(n))` -/
def P2876665948209580205.Spec : Prop :=
  ∀ n, P2876665948209580205.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P6384659834284438595

`A003991(A209293(n+1))`
-/

namespace A128590.P6384659834284438595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A209293 (n + 1)).toNat

end

end A128590.P6384659834284438595

namespace A128590

/-- `A003991(A209293(n+1))` -/
def P6384659834284438595.Spec : Prop :=
  ∀ n, P6384659834284438595.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P2286383310202807842

`A209278(n+1)*A209279(n+1)`
-/

namespace A128590.P2286383310202807842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1) * A209279 (n + 1)

end

end A128590.P2286383310202807842

namespace A128590

/-- `A209278(n+1)*A209279(n+1)` -/
def P2286383310202807842.Spec : Prop :=
  ∀ n, P2286383310202807842.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P9788483478958383540

`(A003057(n+2)-A209278(n+1))*A209278(n+1)`
-/

namespace A128590.P9788483478958383540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A209278 (n + 1)) * A209278 (n + 1)

end

end A128590.P9788483478958383540

namespace A128590

/-- `(A003057(n+2)-A209278(n+1))*A209278(n+1)` -/
def P9788483478958383540.Spec : Prop :=
  ∀ n, P9788483478958383540.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P12200635208202784409

`A134447(A128222(n+1)+n+1)`
-/

namespace A128590.P12200635208202784409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134447 (A128222 (n + 1) + (n + 1 : ℤ)).toNat

end

end A128590.P12200635208202784409

namespace A128590

/-- `A134447(A128222(n+1)+n+1)` -/
def P12200635208202784409.Spec : Prop :=
  ∀ n, P12200635208202784409.a n = A128590 (n + 1)

end A128590

/-! ## A128590.P13301956862662838947

`A209279(A014132(n+1))*A209279(n+1)`
-/

namespace A128590.P13301956862662838947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A014132 (n + 1)).toNat * A209279 (n + 1)

end

end A128590.P13301956862662838947

namespace A128590

/-- `A209279(A014132(n+1))*A209279(n+1)` -/
def P13301956862662838947.Spec : Prop :=
  ∀ n, P13301956862662838947.a n = A128590 (n + 1)

end A128590

/-!
# A128591: Expansion of f(x, x^5) * f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A128591, the canonical program `A128591.P15976152948128373221` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128591 has offset 0).

The definition of A128591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128582, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128591.P15976152948128373221

`A128582(4*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128591

/-- `A128582(4*n+1)` -/
def P15976152948128373221.Spec : Prop :=
  ∀ n, P15976152948128373221.a n = A128591 n

theorem P15976152948128373221.correct : P15976152948128373221.Spec := by
  intro n
  simp only [A128591]

end A128591

/-! ## A128591.P16270514644839811706

`A257920(3*n+1)/2`
-/

namespace A128591.P16270514644839811706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257920 (3 * n + 1) : ℚ) / 2

end

end A128591.P16270514644839811706

namespace A128591

/-- `A257920(3*n+1)/2` -/
def P16270514644839811706.Spec : Prop :=
  ∀ n, P16270514644839811706.a n = (A128591 n : ℚ)

end A128591

/-! ## A128591.P2471676567900010169

`A025480(A257920(3*n+1))`
-/

namespace A128591.P2471676567900010169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A257920 (3 * n + 1)).toNat

end

end A128591.P2471676567900010169

namespace A128591

/-- `A025480(A257920(3*n+1))` -/
def P2471676567900010169.Spec : Prop :=
  ∀ n, P2471676567900010169.a n = A128591 n

end A128591

/-! ## A128591.P7298297665056071630

`A261119(A016921(n)+1)/2`
-/

namespace A128591.P7298297665056071630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261119 (A016921 n + 1).toNat : ℚ) / 2

end

end A128591.P7298297665056071630

namespace A128591

/-- `A261119(A016921(n)+1)/2` -/
def P7298297665056071630.Spec : Prop :=
  ∀ n, P7298297665056071630.a n = (A128591 n : ℚ)

end A128591

/-! ## A128591.P1034116718274302348

`A257921(A008588(n)+2)/2`
-/

namespace A128591.P1034116718274302348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257921 (A008588 n + 2).toNat : ℚ) / 2

end

end A128591.P1034116718274302348

namespace A128591

/-- `A257921(A008588(n)+2)/2` -/
def P1034116718274302348.Spec : Prop :=
  ∀ n, P1034116718274302348.a n = (A128591 n : ℚ)

end A128591

/-! ## A128591.P1102107723026730395

`A261119(A008458(n)+2)/2`
-/

namespace A128591.P1102107723026730395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261119 (A008458 n + 2).toNat : ℚ) / 2

end

end A128591.P1102107723026730395

namespace A128591

/-- `A261119(A008458(n)+2)/2` -/
def P1102107723026730395.Spec : Prop :=
  ∀ n, P1102107723026730395.a n = (A128591 n : ℚ)

end A128591

/-! ## A128591.P16847554134530263004

`A084863(A348845(n))`
-/

namespace A128591.P16847554134530263004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084863 (A348845 n).toNat

end

end A128591.P16847554134530263004

namespace A128591

/-- `A084863(A348845(n))` -/
def P16847554134530263004.Spec : Prop :=
  ∀ n, P16847554134530263004.a n = A128591 n

end A128591

/-!
# A128592: Triangle, read by rows, of coefficients of q^(nk+k) in the q-analog of the odd double factorials: T(n,k) = [q^(nk+k)] Product_{j=1..n+1} (1-q^(2j-1))/(1-q) for n>0, with T(0,0)=1.

The programs for A128592, there is no canonical definition to state claims against.
-/

/-! ## A128592.P932231384071766479

`A071499(A022174(n))`
-/

namespace A128592.P932231384071766479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071499 (A022174 n).toNat

end

end A128592.P932231384071766479

/-! ## A128592.P15730452247216970018

`A094087(A022166(n))`
-/

namespace A128592.P15730452247216970018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094087 (A022166 n).toNat

end

end A128592.P15730452247216970018

/-! ## A128592.P7117609739807623148

`A076437(A045912(n))`
-/

namespace A128592.P7117609739807623148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076437 (A045912 n).toNat

end

end A128592.P7117609739807623148

/-! ## A128592.P9718878122103636715

`A094087(A046802(n))`
-/

namespace A128592.P9718878122103636715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094087 (A046802 n).toNat

end

end A128592.P9718878122103636715

/-! ## A128592.P16516677094731223497

`A094087(A058669(n))`
-/

namespace A128592.P16516677094731223497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094087 (A058669 n).toNat

end

end A128592.P16516677094731223497

/-!
# A128593: Column 1 of triangle A128592; a(n) = coefficient of q^(n+2) in the q-analog of the odd double factorials (2n+3)!! for n>=0.

The programs for A128593, there is no canonical definition to state claims against.
-/

/-! ## A128593.P17042408829594991225

`A128080(∑[∑[2*(n+1)]])`
-/

namespace A128593.P17042408829594991225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128593.P17042408829594991225

/-! ## A128593.P17504089175559553691

`record[A128080(∑[A000463(n+1)])]`
-/

namespace A128593.P17504089175559553691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128593.P17504089175559553691

/-! ## A128593.P12954268945049793670

`record[ratio[A128592(n)]]`
-/

namespace A128593.P12954268945049793670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128592 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128593.P12954268945049793670

/-! ## A128593.P4393634866160138008

`A128592(∑[n+1]+1)`
-/

namespace A128593.P4393634866160138008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128593.P4393634866160138008

/-! ## A128593.P2106454719166720266

`record[A128592(A114091(n+1))]`
-/

namespace A128593.P2106454719166720266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128592 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128593.P2106454719166720266

/-!
# A128594: Column 2 of triangle A128592; a(n) = coefficient of q^(2n+6) in the q-analog of the odd double factorials (2n+5)!! for n>=0.

The programs for A128594, there is no canonical definition to state claims against.
-/

/-! ## A128594.P1595350435220283740

`A128080(∑[(n+2)²+n+1])`
-/

namespace A128594.P1595350435220283740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128594.P1595350435220283740

/-! ## A128594.P451102514706919276

`A128592(∑[n+2]+3)`
-/

namespace A128594.P451102514706919276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128592 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A128594.P451102514706919276

/-! ## A128594.P15590716445692031604

`record[A128592(∑[A119353(n)])]`
-/

namespace A128594.P15590716445692031604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128592 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128594.P15590716445692031604

/-! ## A128594.P3257237360273462

`record[A010054(n)*A128592(n+2)]`
-/

namespace A128594.P3257237360273462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A128592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128594.P3257237360273462

/-!
# A128595: Row sums of triangle A128592.

The programs for A128595, there is no canonical definition to state claims against.
-/

/-! ## A128595.P16405473298730128794

`or(A000034(n), A005843(A104255(n+1)))`
-/

namespace A128595.P16405473298730128794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A005843 (A104255 (n + 1)).toNat)

end

end A128595.P16405473298730128794

/-! ## A128595.P3013387375971039155

`A008611(xor(n, A114903(n)))`
-/

namespace A128595.P3013387375971039155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor (n : ℤ) (A114903 n)).toNat

end

end A128595.P3013387375971039155

/-!
# A128596: Triangle, read by rows, of coefficients of q^(nk) in the q-analog of the even double factorials: T(n,k) = [q^(nk)] Product_{j=1..n} (1-q^(2j))/(1-q) for n>0, with T(0,0)=1.

The programs for A128596, there is no canonical definition to state claims against.
-/

/-! ## A128596.P15749471459941378004

`A128084(lt[A385001(n), 2])`
-/

namespace A128596.P15749471459941378004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385001 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A128596.P15749471459941378004

/-! ## A128596.P14277945838775030540

`A128084(A081491(n+1)-1)`
-/

namespace A128596.P14277945838775030540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (A081491 (n + 1) - 1).toNat

end

end A128596.P14277945838775030540

/-! ## A128596.P8991751911870211472

`A103960(A077028(n)^A331256(n+1))`
-/

namespace A128596.P8991751911870211472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (SequenceMachineLib.roundAway ((A077028 n : ℚ) ^ (A331256 (n + 1) : ℤ))).toNat

end

end A128596.P8991751911870211472

/-! ## A128596.P8961113749747124218

`A309583(A078121(n))+A120111(A078242(n+1))`
-/

namespace A128596.P8961113749747124218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (A078121 n).toNat + A120111 (A078242 (n + 1)).toNat

end

end A128596.P8961113749747124218

/-!
# A128597: Column 2 of triangle A128596; a(n) = coefficient of q^(2n+4) in the q-analog of the even double factorials (2n+4)!! for n>=0.

The programs for A128597, there is no canonical definition to state claims against.
-/

/-! ## A128597.P3115261250584305157

`A128084(∑[(n+2)²-1])`
-/

namespace A128597.P3115261250584305157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128597.P3115261250584305157

/-! ## A128597.P4445781320762672807

`A128596(∑[n+2]+3)`
-/

namespace A128597.P4445781320762672807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128596 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A128597.P4445781320762672807

/-! ## A128597.P17995137092777256646

`record[A128596(∑[A119353(n)])]`
-/

namespace A128597.P17995137092777256646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128596 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128597.P17995137092777256646

/-! ## A128597.P2301636171474957989

`record[A128596(A064651(n)+5)]`
-/

namespace A128597.P2301636171474957989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128596 (A064651 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128597.P2301636171474957989

/-!
# A128598: Column 3 of triangle A128596; a(n) = coefficient of q^(3n+9) in the q-analog of the even double factorials (2n+6)!! for n>=0.

The programs for A128598, there is no canonical definition to state claims against.
-/

/-! ## A128598.P15619216720300865257

`A128596(A167614(n+2))`
-/

namespace A128598.P15619216720300865257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128596 (A167614 (n + 2)).toNat

end

end A128598.P15619216720300865257

/-! ## A128598.P7646405350707049974

`A128596(A141214(n)+6)`
-/

namespace A128598.P7646405350707049974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128596 (A141214 n + 6).toNat

end

end A128598.P7646405350707049974

/-! ## A128598.P12519270145422609564

`A128596(A052905(n)+8)`
-/

namespace A128598.P12519270145422609564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128596 (A052905 n + 8).toNat

end

end A128598.P12519270145422609564

/-!
# A128599: a(n) = the numerator of the continued fraction [[n/1];[n/2],[n/3],..,[n/n]] = the numerator of [[n/n];[n/(n-1)],[n/(n-2)],..,[n/1]], where [x] is floor(x).

The programs for A128599, there is no canonical definition to state claims against.
-/

/-! ## A128599.P1374962730211766876

`∑[∑[A209278(A027314(n))]]`
-/

namespace A128599.P1374962730211766876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A027314 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128599.P1374962730211766876

/-! ## A128599.P11917079987155205780

`record[A286610(record[A324323(n)])]`
-/

namespace A128599.P11917079987155205780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128599.P11917079987155205780

