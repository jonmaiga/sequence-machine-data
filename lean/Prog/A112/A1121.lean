import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A112100: Denominator of Sum_{i=1..n} 1/(i*C(2*i,i)).

The programs for A112100, there is no canonical definition to state claims against.
-/

/-! ## A112100.P6486903273975850146

`A179661(A042053(n))`
-/

namespace A112100.P6486903273975850146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179661 (A042053 n).toNat

end

end A112100.P6486903273975850146

/-! ## A112100.P17960208265064048510

`A349203(n*A020484(n))`
-/

namespace A112100.P17960208265064048510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349203 ((n : ℤ) * A020484 n).toNat

end

end A112100.P17960208265064048510

/-!
# A112101: Number of interval orders of magnitude n having no duplicate holdings (NODH).

The programs for A112101, there is no canonical definition to state claims against.
-/

/-! ## A112101.P12793365219933499831

`2*A075272(n)-A005321(n)`
-/

namespace A112101.P12793365219933499831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075272 n - A005321 n

end

end A112101.P12793365219933499831

/-! ## A112101.P8550442573995841441

`A075272(n)+A075272(n)-A318301(∑[n])`
-/

namespace A112101.P8550442573995841441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075272 n + (A075272 n - A318301 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112101.P8550442573995841441

/-!
# A112103: Denominator of Sum_{i=1..n} 1/(i^3*C(2*i,i)).

The programs for A112103, there is no canonical definition to state claims against.
-/

/-! ## A112103.P16596389825170693198

`A001044(n)*A276528(A181814(n+1))`
-/

namespace A112103.P16596389825170693198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n * A276528 (A181814 (n + 1)).toNat

end

end A112103.P16596389825170693198

/-!
# A112104: Unique sequence of 1's and 2's where g.f. A(x) satisfies A(x) = B(B(x)) such that B(x) is an integer series, with A(0) = 0.

The programs for A112104, there is no canonical definition to state claims against.
-/

/-! ## A112104.P17144592796338272562

`gcd(2, A290877(A093783(n+1)))`
-/

namespace A112104.P17144592796338272562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A290877 (A093783 (n + 1)).toNat)

end

end A112104.P17144592796338272562

/-! ## A112104.P1930972245698971384

`A087890((n+3)*A157129(n+1))`
-/

namespace A112104.P1930972245698971384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 ((n + 3 : ℤ) * A157129 (n + 1)).toNat

end

end A112104.P1930972245698971384

/-! ## A112104.P16076806509062592845

`A088569(xor(A131818(n+1), A293552(n)))`
-/

namespace A112104.P16076806509062592845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (Int.xor (A131818 (n + 1)) (A293552 n)).toNat

end

end A112104.P16076806509062592845

/-! ## A112104.P11991986722008775840

`A000034(A296298(n+1)+∑[A296298(n+1)])`
-/

namespace A112104.P11991986722008775840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A296298 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112104.P11991986722008775840

/-! ## A112104.P8593625476417127624

`A250068(A014612(∑[∑[n+1]]))`
-/

namespace A112104.P8593625476417127624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A014612 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A112104.P8593625476417127624

/-!
# A112106: Unique sequence of numbers {1,2,3} where g.f. A(x) satisfies A(x) = B(B(B(x))) (3rd self-COMPOSE) such that B(x) is an integer series, with A(0) = 0.

The programs for A112106, there is no canonical definition to state claims against.
-/

/-! ## A112106.P9276223667514948733

`A080237(A044915(n+1)*A080223(n+1))`
-/

namespace A112106.P9276223667514948733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A044915 (n + 1) * A080223 (n + 1)).toNat

end

end A112106.P9276223667514948733

/-!
# A112108: Unique sequence of numbers {1,2,3,4} where g.f. A(x) satisfies A(x) = B(B(B(B(x)))) (4th self-COMPOSE) such that B(x) is an integer series, with A(0) = 0.

The programs for A112108, there is no canonical definition to state claims against.
-/

/-! ## A112108.P15315822867781049980

`A214212(A108233(n+1)²)`
-/

namespace A112108.P15315822867781049980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 (A108233 (n + 1) ^ 2).toNat

end

end A112108.P15315822867781049980

/-! ## A112108.P8000614973451841488

`A112116(n+1)/A046698(A000230(n))`
-/

namespace A112108.P8000614973451841488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112116 (n + 1) : ℚ) / (A046698 (A000230 n).toNat : ℚ)

end

end A112108.P8000614973451841488

/-! ## A112108.P5074756152434113303

`A112116(n+1)/A000032(A134975(n))`
-/

namespace A112108.P5074756152434113303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112116 (n + 1) : ℚ) / (A000032 (A134975 n).toNat : ℚ)

end

end A112108.P5074756152434113303

/-! ## A112108.P6530810354405970952

`A112116(n+1)/A020639(A164175(n))`
-/

namespace A112108.P6530810354405970952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112116 (n + 1) : ℚ) / (A020639 (A164175 n).toNat : ℚ)

end

end A112108.P6530810354405970952

/-! ## A112108.P11438296284679213339

`A112116(n+1)/A020639(A165941(n))`
-/

namespace A112108.P11438296284679213339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112116 (n + 1) : ℚ) / (A020639 (A165941 n).toNat : ℚ)

end

end A112108.P11438296284679213339

/-!
# A112109: G.f. A(x) satisfies A(A(A(A(x)))) = B(x) (4th self-COMPOSE of A) such that the coefficients of B(x) consist only of numbers {1,2,3,4}, with B(0) = 0.

The programs for A112109, there is no canonical definition to state claims against.
-/

/-! ## A112109.P10456324489055178664

`A257555(n+1)-A095383(A292849(n+1))`
-/

namespace A112109.P10456324489055178664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257555 (n + 1) - A095383 (A292849 (n + 1)).toNat

end

end A112109.P10456324489055178664

/-!
# A112111: G.f. A(x) satisfies A(A(A(A(A(x))))) = B(x) (5th self-COMPOSE of A) such that the coefficients of B(x) consist only of numbers {1,2,3,4,5}, with B(0) = 0.

The programs for A112111, there is no canonical definition to state claims against.
-/

/-! ## A112111.P4498958536055020674

`or(A295228(n)!, A159606(n))`
-/

namespace A112111.P4498958536055020674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A295228 n).toNat : ℤ) (A159606 n)

end

end A112111.P4498958536055020674

/-!
# A112113: G.f. A(x) satisfies A(A(A(..(A(x))..))) = B(x) (6th self-COMPOSE of A) such that the coefficients of B(x) consist only of numbers {1,2,3,..,6}, with B(0) = 0.

The programs for A112113, there is no canonical definition to state claims against.
-/

/-! ## A112113.P4625398135385862795

`A021009(n)*A025581(A082036(n))`
-/

namespace A112113.P4625398135385862795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 n * A025581 (A082036 n).toNat

end

end A112113.P4625398135385862795

/-!
# A112115: G.f. A(x) satisfies A(A(A(..(A(x))..))) = B(x) (7th self-COMPOSE of A) such that the coefficients of B(x) consist only of numbers {1,2,3,..,7}, with B(0) = 0.

The programs for A112115, there is no canonical definition to state claims against.
-/

/-! ## A112115.P17619084186133502811

`A011598(A155807(n))*A350117(n)`
-/

namespace A112115.P17619084186133502811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 (A155807 n).toNat * A350117 n

end

end A112115.P17619084186133502811

/-!
# A112116: Unique sequence of numbers {1,2,3,...,8} where g.f. A(x) satisfies A(x) = B(B(B(..(B(x))..))) (8th self-COMPOSE) such that B(x) is an integer series, with A(0) = 0.

The programs for A112116, there is no canonical definition to state claims against.
-/

/-! ## A112116.P12517912711849608742

`A000032(A134975(n))*A112108(n+1)`
-/

namespace A112116.P12517912711849608742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A134975 n).toNat * A112108 (n + 1)

end

end A112116.P12517912711849608742

/-! ## A112116.P8792724172240166272

`A020639(A164175(n))*A112108(n+1)`
-/

namespace A112116.P8792724172240166272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164175 n).toNat * A112108 (n + 1)

end

end A112116.P8792724172240166272

/-! ## A112116.P6462089171009246433

`A020639(A165941(n))*A112108(n+1)`
-/

namespace A112116.P6462089171009246433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A165941 n).toNat * A112108 (n + 1)

end

end A112116.P6462089171009246433

/-! ## A112116.P12949148433479559053

`A020639(A265051(n))*A112108(n+1)`
-/

namespace A112116.P12949148433479559053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A265051 n).toNat * A112108 (n + 1)

end

end A112116.P12949148433479559053

/-! ## A112116.P11984446118634762211

`A112108(n+1)*A333257(A297112(n+1))`
-/

namespace A112116.P11984446118634762211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112108 (n + 1) * A333257 (A297112 (n + 1)).toNat

end

end A112116.P11984446118634762211

/-!
# A112117: G.f. A(x) satisfies A(A(A(..(A(x))..))) = B(x) (8th self-COMPOSE of A) such that the coefficients of B(x) consist only of numbers {1,2,3,..,8}, with B(0) = 0.

The programs for A112117, there is no canonical definition to state claims against.
-/

/-! ## A112117.P17738297495635903185

`A328583((n^5-n)*∑[n])`
-/

namespace A112117.P17738297495635903185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328583 (((n ^ 5 : ℤ) - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A112117.P17738297495635903185

/-!
# A112128: Expansion of phi(q^4) / phi(q) in powers of q where phi() is a Ramanujan theta function.

The programs for A112128, there is no canonical definition to state claims against.
-/

/-! ## A112128.P721753114475956169

`(-1)^n*A208933(n)`
-/

namespace A112128.P721753114475956169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208933 n

end

end A112128.P721753114475956169

/-! ## A112128.P9719903241976346863

`A208933(n)/A033999(n)`
-/

namespace A112128.P9719903241976346863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 n : ℚ) / (A033999 n : ℚ)

end

end A112128.P9719903241976346863

/-! ## A112128.P4385895647199271599

`A007096(n)/A280560(n)`
-/

namespace A112128.P4385895647199271599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A280560 n : ℚ)

end

end A112128.P4385895647199271599

/-! ## A112128.P10911882420994698019

`ceil(A189925(n)/2)`
-/

namespace A112128.P10911882420994698019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189925 n : ℚ) / 2⌉

end

end A112128.P10911882420994698019

/-! ## A112128.P4189701993202502348

`A189925(n)/A039652(and(1, A189925(n)))`
-/

namespace A112128.P4189701993202502348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 n : ℚ) / (A039652 (Int.land 1 (A189925 n)).toNat : ℚ)

end

end A112128.P4189701993202502348

/-! ## A112128.P9779142904396939038

`A189925(n)/A280560(2*n)`
-/

namespace A112128.P9779142904396939038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A112128.P9779142904396939038

/-! ## A112128.P4166742593620017794

`A007096(n)/A139820(n)*A131126(n)`
-/

namespace A112128.P4166742593620017794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A139820 n : ℚ) * (A131126 n : ℚ)

end

end A112128.P4166742593620017794

/-! ## A112128.P13094305542359410450

`A123655(n+1)*A208933(n)/A208605(n+1)`
-/

namespace A112128.P13094305542359410450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (n + 1) * A208933 n : ℚ) / (A208605 (n + 1) : ℚ)

end

end A112128.P13094305542359410450

/-! ## A112128.P15852687889626284412

`A001938(n)*A208933(n)/A093160(n)`
-/

namespace A112128.P15852687889626284412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n * A208933 n : ℚ) / (A093160 n : ℚ)

end

end A112128.P15852687889626284412

/-! ## A112128.P12760390149971975783

`A189925(n)/gcd(2, record[A328479(n+1)])`
-/

namespace A112128.P12760390149971975783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 n : ℚ) / (Int.gcd 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ)

end

end A112128.P12760390149971975783

/-!
# A112132: Period 4: repeat [1, 3, 1, 7].

The programs for A112132, the canonical program `A112132.P3090505254011190502` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112132 has offset 1).

The definition of A112132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112132.P3090505254011190502

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112132

/-- `a(n-4)` -/
def P3090505254011190502.Spec : Prop :=
  ∀ n, (P3090505254011190502.a n : ℤ) = A112132 (n + 1)

theorem P3090505254011190502.correct : P3090505254011190502.Spec := by
  intro n
  simp only [A112132, Nat.add_sub_cancel]

end A112132

/-!
# A112133: First differences of A112063.

The programs for A112133, the canonical program `A112133.P16133074095621007701` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112133 has offset 1).

The definition of A112133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112133.P16133074095621007701

`a(n-6)` with `a(0)=1, a(1)=11, a(2)=13, a(3)=11, a(4)=1, a(5)=23`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112133

/-- `a(n-6)` -/
def P16133074095621007701.Spec : Prop :=
  ∀ n, (P16133074095621007701.a n : ℤ) = A112133 (n + 1)

theorem P16133074095621007701.correct : P16133074095621007701.Spec := by
  intro n
  simp only [A112133, Nat.add_sub_cancel]

end A112133

/-!
# A112134: First differences of A112064.

The programs for A112134, there is no canonical definition to state claims against.
-/

/-! ## A112134.P18382673748375879627

`Δ[eq[4, A112049(n+1)]]`
-/

namespace A112134.P18382673748375879627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A112134.P18382673748375879627

/-!
# A112135: First differences of A112065.

The programs for A112135, there is no canonical definition to state claims against.
-/

/-! ## A112135.P3308075313603853890

`Δ[A112065(n+1)]`
-/

namespace A112135.P3308075313603853890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112135.P3308075313603853890

/-! ## A112135.P18340839704824233756

`Δ[record[A112065(A022446(n))]]`
-/

namespace A112135.P18340839704824233756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112065 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112135.P18340839704824233756

/-! ## A112135.P6421008808827458851

`Δ[record[A112065(A038568(n))]]`
-/

namespace A112135.P6421008808827458851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112065 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112135.P6421008808827458851

/-! ## A112135.P12599332403314901416

`Δ[record[A112065(A065648(n))]]`
-/

namespace A112135.P12599332403314901416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112065 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112135.P12599332403314901416

/-! ## A112135.P188087010693188202

`Δ[record[A112065(A102885(n))]]`
-/

namespace A112135.P188087010693188202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112065 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112135.P188087010693188202

/-!
# A112136: First differences of A112066.

The programs for A112136, there is no canonical definition to state claims against.
-/

/-! ## A112136.P10157658241186560575

`Δ[A112066(n+1)]`
-/

namespace A112136.P10157658241186560575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112136.P10157658241186560575

/-! ## A112136.P17719742293701406596

`Δ[record[A112066(A038568(n))]]`
-/

namespace A112136.P17719742293701406596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112066 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112136.P17719742293701406596

/-! ## A112136.P1200933189196728966

`Δ[record[A112066(A065648(n))]]`
-/

namespace A112136.P1200933189196728966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112066 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112136.P1200933189196728966

/-! ## A112136.P13349646452939074786

`Δ[record[A112066(A126759(n))]]`
-/

namespace A112136.P13349646452939074786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112066 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112136.P13349646452939074786

/-! ## A112136.P8041454634782829568

`Δ[record[A112066(A133310(n))]]`
-/

namespace A112136.P8041454634782829568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112066 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112136.P8041454634782829568

/-!
# A112137: First differences of A112067.

The programs for A112137, there is no canonical definition to state claims against.
-/

/-! ## A112137.P2785293626998765952

`Δ[A112067(n+1)]`
-/

namespace A112137.P2785293626998765952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112137.P2785293626998765952

/-! ## A112137.P4949902903956909540

`abs(Δ[A112067(2*n-(n-1))])`
-/

namespace A112137.P4949902903956909540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112067 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A112137.P4949902903956909540

/-! ## A112137.P300585052120938787

`Δ[record[A112067(A038568(n))]]`
-/

namespace A112137.P300585052120938787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112067 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112137.P300585052120938787

/-! ## A112137.P10271735079333424189

`Δ[record[A112067(A065648(n))]]`
-/

namespace A112137.P10271735079333424189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112067 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112137.P10271735079333424189

/-! ## A112137.P1604410248062734582

`Δ[record[A112067(A117910(n))]]`
-/

namespace A112137.P1604410248062734582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112067 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112137.P1604410248062734582

/-!
# A112138: First differences of A112068.

The programs for A112138, there is no canonical definition to state claims against.
-/

/-! ## A112138.P4326308715706756631

`Δ[A112068(n+1)]`
-/

namespace A112138.P4326308715706756631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112138.P4326308715706756631

/-! ## A112138.P1616740181799897918

`Δ[record[A112068(A020986(n))]]`
-/

namespace A112138.P1616740181799897918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112068 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112138.P1616740181799897918

/-! ## A112138.P3737849575972471015

`Δ[record[A112068(A028920(n))]]`
-/

namespace A112138.P3737849575972471015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112068 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112138.P3737849575972471015

/-! ## A112138.P12014668818228808828

`Δ[record[A112068(A038568(n))]]`
-/

namespace A112138.P12014668818228808828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112068 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112138.P12014668818228808828

/-! ## A112138.P1032818203833357163

`Δ[record[A112068(A065648(n))]]`
-/

namespace A112138.P1032818203833357163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112068 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112138.P1032818203833357163

/-!
# A112139: First differences of A112069.

The programs for A112139, there is no canonical definition to state claims against.
-/

/-! ## A112139.P5460622544583135026

`Δ[A112079(n+1)/2]`
-/

namespace A112139.P5460622544583135026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112079 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112139.P5460622544583135026

/-! ## A112139.P9548032823713786140

`Δ[A112069(n+1)]`
-/

namespace A112139.P9548032823713786140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112139.P9548032823713786140

/-! ## A112139.P2521193100962314353

`Δ[record[A112069(A028920(n))]]`
-/

namespace A112139.P2521193100962314353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112069 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112139.P2521193100962314353

/-! ## A112139.P15651246190308439550

`Δ[record[A112069(A038568(n))]]`
-/

namespace A112139.P15651246190308439550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112069 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112139.P15651246190308439550

/-! ## A112139.P782270565725470336

`Δ[record[A112069(A065648(n))]]`
-/

namespace A112139.P782270565725470336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112069 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112139.P782270565725470336

/-!
# A112140: (a(2n)+a(2n+1))^2 = a(2n) + 10000*a(2n+1).

The programs for A112140, there is no canonical definition to state claims against.
-/

/-! ## A112140.P6301543069539109003

`A112268(gcd(A114778(n), A288299(n)))`
-/

namespace A112140.P6301543069539109003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112268 (Int.gcd (A114778 n) (A288299 n))

end

end A112140.P6301543069539109003

/-!
# A112141: Product of the first n semiprimes.

The programs for A112141, there is no canonical definition to state claims against.
-/

/-! ## A112141.P15513575124282788300

`∏[eq[2, ∑{e}[n, #]]]`
-/

namespace A112141.P15513575124282788300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P15513575124282788300

/-! ## A112141.P15884069726948941830

`a(n-1)*eq[2, ∑{e}[n, #]]` with `a(0)=4`
-/

namespace A112141.P15884069726948941830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112141.P15884069726948941830

/-! ## A112141.P13994635210982625211

`∏[Δ[A110208(n)]]`
-/

namespace A112141.P13994635210982625211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P13994635210982625211

/-! ## A112141.P255997567870043196

`∏[A001358(n+1)]`
-/

namespace A112141.P255997567870043196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P255997567870043196

/-! ## A112141.P2393714613695091086

`∏[A176540(n+2)]`
-/

namespace A112141.P2393714613695091086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P2393714613695091086

/-! ## A112141.P18325411148075499974

`∏[eq[2, A105700(n)]]`
-/

namespace A112141.P18325411148075499974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P18325411148075499974

/-! ## A112141.P10298498123519835355

`∏[eq[2, A226378(n)]]`
-/

namespace A112141.P10298498123519835355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P10298498123519835355

/-! ## A112141.P2979054851976198336

`∏[eq[2, A284289(n)]]`
-/

namespace A112141.P2979054851976198336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P2979054851976198336

/-! ## A112141.P6901483096011919182

`∏[eq[2, A284465(n)]]`
-/

namespace A112141.P6901483096011919182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P6901483096011919182

/-! ## A112141.P7200222187618355082

`∏[sqrt(A074985(n+1))]`
-/

namespace A112141.P7200222187618355082
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112141.P7200222187618355082

/-!
# A112142: McKay-Thompson series of class 8B for the Monster group.

The programs for A112142, there is no canonical definition to state claims against.
-/

/-! ## A112142.P10401198843922123113

`(-1)^n*A007249(n)`
-/

namespace A112142.P10401198843922123113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007249 n

end

end A112142.P10401198843922123113

/-! ## A112142.P15297425349932281668

`abs(A007249(n))`
-/

namespace A112142.P15297425349932281668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007249 n|

end

end A112142.P15297425349932281668

/-! ## A112142.P7650187593598710640

`A007249(n)*A033999(n)`
-/

namespace A112142.P7650187593598710640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007249 n * A033999 n

end

end A112142.P7650187593598710640

/-! ## A112142.P17270151839040900054

`gcd(A000038(n), A007249(n))`
-/

namespace A112142.P17270151839040900054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007249 n)

end

end A112142.P17270151839040900054

/-! ## A112142.P9489397324150047817

`lcm(A000034(n), A007249(n))`
-/

namespace A112142.P9489397324150047817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A007249 n)

end

end A112142.P9489397324150047817

/-! ## A112142.P15504283200948925259

`A007249(n)/A022577(n)*A124863(n)`
-/

namespace A112142.P15504283200948925259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007249 n : ℚ) / (A022577 n : ℚ) * (A124863 n : ℚ)

end

end A112142.P15504283200948925259

/-!
# A112143: McKay-Thompson series of class 8D for the Monster group.

The programs for A112143, there is no canonical definition to state claims against.
-/

/-! ## A112143.P7534605734062897339

`A029841(n)*A033999(n)`
-/

namespace A112143.P7534605734062897339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 n * A033999 n

end

end A112143.P7534605734062897339

/-! ## A112143.P12379493327901758084

`A057077(n)*A112152(n)`
-/

namespace A112143.P12379493327901758084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112152 n

end

end A112143.P12379493327901758084

/-! ## A112143.P13543451608356999032

`A087960(n)*A112151(n)`
-/

namespace A112143.P13543451608356999032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112151 n

end

end A112143.P13543451608356999032

/-! ## A112143.P272406648371629654

`A029841(n)/A057077(A057077(n)+n)`
-/

namespace A112143.P272406648371629654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112143.P272406648371629654

/-! ## A112143.P14193007274482127973

`A029841(n)/A112151(n)*A112152(n)`
-/

namespace A112143.P14193007274482127973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 n : ℚ) / (A112151 n : ℚ) * (A112152 n : ℚ)

end

end A112143.P14193007274482127973

/-! ## A112143.P2748802436650857375

`A057077(n+1)*A112151(n)`
-/

namespace A112143.P2748802436650857375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112151 n

end

end A112143.P2748802436650857375

/-! ## A112143.P3052746772936717128

`A029841(n+1)/A112151(n+1)*A112151(n)`
-/

namespace A112143.P3052746772936717128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 (n + 1) : ℚ) / (A112151 (n + 1) : ℚ) * (A112151 n : ℚ)

end

end A112143.P3052746772936717128

/-! ## A112143.P5110766954754564069

`A029841(n)*A057077(2*n)`
-/

namespace A112143.P5110766954754564069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 n * A057077 (2 * n)

end

end A112143.P5110766954754564069

/-! ## A112143.P4902259402977068315

`A029841(n)*A087960(2*n)`
-/

namespace A112143.P4902259402977068315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 n * A087960 (2 * n)

end

end A112143.P4902259402977068315

/-! ## A112143.P17943089749919130324

`A001938(n)/A093160(n)*A029841(n)`
-/

namespace A112143.P17943089749919130324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / (A093160 n : ℚ) * (A029841 n : ℚ)

end

end A112143.P17943089749919130324

/-! ## A112143.P13604102133019081233

`A014969(n)/A139820(n)*A029841(n)`
-/

namespace A112143.P13604102133019081233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A139820 n : ℚ) * (A029841 n : ℚ)

end

end A112143.P13604102133019081233

/-! ## A112143.P4799173956572011351

`A001936(n)*A029841(n)/A079006(n)`
-/

namespace A112143.P4799173956572011351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n * A029841 n : ℚ) / (A079006 n : ℚ)

end

end A112143.P4799173956572011351

/-! ## A112143.P3974253076986829818

`A029841(n)/A087960(n²)`
-/

namespace A112143.P3974253076986829818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112143.P3974253076986829818

/-!
# A112144: McKay-Thompson series of class 8a for the Monster group.

The programs for A112144, there is no canonical definition to state claims against.
-/

/-! ## A112144.P13469722566808323125

`A007248(n)*A033999(n)`
-/

namespace A112144.P13469722566808323125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007248 n * A033999 n

end

end A112144.P13469722566808323125

/-! ## A112144.P5933025243977813559

`A007248(n)/A014969(n)*A139820(n)`
-/

namespace A112144.P5933025243977813559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007248 n : ℚ) / (A014969 n : ℚ) * (A139820 n : ℚ)

end

end A112144.P5933025243977813559

/-! ## A112144.P14929797545524880472

`A007096(n)/A189925(n)*A007248(n)`
-/

namespace A112144.P14929797545524880472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A189925 n : ℚ) * (A007248 n : ℚ)

end

end A112144.P14929797545524880472

/-! ## A112144.P5578879387359202157

`A007248(n)/A212318(n)*A232358(n)`
-/

namespace A112144.P5578879387359202157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007248 n : ℚ) / (A212318 n : ℚ) * (A232358 n : ℚ)

end

end A112144.P5578879387359202157

/-! ## A112144.P396780393593973730

`A005798(n+1)/A092877(n+1)*A007248(n)`
-/

namespace A112144.P396780393593973730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A092877 (n + 1) : ℚ) * (A007248 n : ℚ)

end

end A112144.P396780393593973730

/-! ## A112144.P12503634277690682100

`A007248(n)/A014972(n)*A128692(n)`
-/

namespace A112144.P12503634277690682100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007248 n : ℚ) / (A014972 n : ℚ) * (A128692 n : ℚ)

end

end A112144.P12503634277690682100

/-!
# A112145: McKay-Thompson series of class 8c for the Monster group.

The programs for A112145, there is no canonical definition to state claims against.
-/

/-! ## A112145.P1379461321136602754

`A033999(n)*A058088(n)`
-/

namespace A112145.P1379461321136602754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058088 n

end

end A112145.P1379461321136602754

/-! ## A112145.P12372455245513130654

`A057077(2*n)*A058088(n)`
-/

namespace A112145.P12372455245513130654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A058088 n

end

end A112145.P12372455245513130654

/-! ## A112145.P537086555961832514

`(A004442(n)-n)*A058088(n)`
-/

namespace A112145.P537086555961832514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A058088 n

end

end A112145.P537086555961832514

/-! ## A112145.P10240575711923239383

`A058088(n)*A081729(A008587(n))`
-/

namespace A112145.P10240575711923239383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058088 n * A081729 (A008587 n).toNat

end

end A112145.P10240575711923239383

/-! ## A112145.P3203873072978321045

`A022601(n)*A058088(n)/A112150(n)`
-/

namespace A112145.P3203873072978321045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022601 n * A058088 n : ℚ) / (A112150 n : ℚ)

end

end A112145.P3203873072978321045

/-! ## A112145.P11657930732335114160

`A058088(n)*A112465(∑[n])`
-/

namespace A112145.P11657930732335114160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058088 n * A112465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112145.P11657930732335114160

/-!
# A112149: McKay-Thompson series of class 12f for the Monster group.

The programs for A112149, there is no canonical definition to state claims against.
-/

/-! ## A112149.P1516970368567353482

`A049347(n)*A058493(n)`
-/

namespace A112149.P1516970368567353482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A058493 n

end

end A112149.P1516970368567353482

/-! ## A112149.P11728726460543205200

`A058493(n)*A257075(n)`
-/

namespace A112149.P11728726460543205200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058493 n * A257075 n

end

end A112149.P11728726460543205200

/-! ## A112149.P7550065288408464709

`Δ[A059126(n)]*A058493(n)`
-/

namespace A112149.P7550065288408464709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A058493 n

end

end A112149.P7550065288408464709

/-! ## A112149.P6133692779683750656

`A058493(n)*A343785(n+1)`
-/

namespace A112149.P6133692779683750656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058493 n * A343785 (n + 1)

end

end A112149.P6133692779683750656

/-! ## A112149.P3057237300794367667

`(A059128(n+1)-A059128(n))*A058493(n)`
-/

namespace A112149.P3057237300794367667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059128 (n + 1) - A059128 n) * A058493 n

end

end A112149.P3057237300794367667

/-! ## A112149.P13070935819126385939

`A058493(n)/(A289813(n+1)-A289813(n))`
-/

namespace A112149.P13070935819126385939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058493 n : ℚ) / (A289813 (n + 1) - A289813 n : ℚ)

end

end A112149.P13070935819126385939

/-! ## A112149.P17093594446116621687

`A010892(2*n+1)*A058493(n)`
-/

namespace A112149.P17093594446116621687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A058493 n

end

end A112149.P17093594446116621687

/-!
# A112150: McKay-Thompson series of class 16a for the Monster group.

The programs for A112150, there is no canonical definition to state claims against.
-/

/-! ## A112150.P6869311640048734997

`(-1)^n*A022601(n)`
-/

namespace A112150.P6869311640048734997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A022601 n

end

end A112150.P6869311640048734997

/-! ## A112150.P12329840727232960703

`abs(A022601(n))`
-/

namespace A112150.P12329840727232960703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022601 n|

end

end A112150.P12329840727232960703

/-! ## A112150.P12878412068567899247

`A022601(n)*A033999(n)`
-/

namespace A112150.P12878412068567899247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022601 n * A033999 n

end

end A112150.P12878412068567899247

/-! ## A112150.P9482582034445834542

`gcd(A000038(n), A022601(n))`
-/

namespace A112150.P9482582034445834542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A022601 n)

end

end A112150.P9482582034445834542

/-! ## A112150.P3191389472255607800

`lcm(A000034(n), A022601(n))`
-/

namespace A112150.P3191389472255607800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A022601 n)

end

end A112150.P3191389472255607800

/-! ## A112150.P15457625354115764381

`abs(A058088(2*n))`
-/

namespace A112150.P15457625354115764381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058088 (2 * n)|

end

end A112150.P15457625354115764381

/-! ## A112150.P7767504804605360411

`A033999(n)*A058088(2*n)`
-/

namespace A112150.P7767504804605360411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058088 (2 * n)

end

end A112150.P7767504804605360411

/-! ## A112150.P16036881653106733696

`A057077(2*n)*A058088(2*n)`
-/

namespace A112150.P16036881653106733696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A058088 (2 * n)

end

end A112150.P16036881653106733696

/-! ## A112150.P7337103380520976809

`A058088(2*n)*A081729(A008587(n))`
-/

namespace A112150.P7337103380520976809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058088 (2 * n) * A081729 (A008587 n).toNat

end

end A112150.P7337103380520976809

/-! ## A112150.P15440117183974553170

`gcd(A058088(2*n+1)*A058088(2*n), A058088(2*n))`
-/

namespace A112150.P15440117183974553170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058088 (2 * n + 1) * A058088 (2 * n)) (A058088 (2 * n))

end

end A112150.P15440117183974553170

/-! ## A112150.P16796805850164477418

`A022601(n)*A058088(n)/A112145(n)`
-/

namespace A112150.P16796805850164477418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022601 n * A058088 n : ℚ) / (A112145 n : ℚ)

end

end A112150.P16796805850164477418

/-! ## A112150.P11672132887074892294

`abs(A112145(2*n))`
-/

namespace A112150.P11672132887074892294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112145 (2 * n)|

end

end A112150.P11672132887074892294

/-! ## A112150.P18097035831218888343

`A033999(n)*A112145(2*n)`
-/

namespace A112150.P18097035831218888343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112145 (2 * n)

end

end A112150.P18097035831218888343

/-! ## A112150.P12446493573698773119

`gcd(A058088(2*n), A112145(2*n))`
-/

namespace A112150.P12446493573698773119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058088 (2 * n)) (A112145 (2 * n))

end

end A112150.P12446493573698773119

/-! ## A112150.P10391543201462039240

`A009531(2*n+1)*A112145(2*n)`
-/

namespace A112150.P10391543201462039240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A112145 (2 * n)

end

end A112150.P10391543201462039240

/-! ## A112150.P11575550367439179280

`A034947(2*n+1)*A112145(2*n)`
-/

namespace A112150.P11575550367439179280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A112145 (2 * n)

end

end A112150.P11575550367439179280

/-! ## A112150.P16750147978315987676

`A058088(2*n)*A058088(3*n)/A112145(3*n)`
-/

namespace A112150.P16750147978315987676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058088 (2 * n) * A058088 (3 * n) : ℚ) / (A112145 (3 * n) : ℚ)

end

end A112150.P16750147978315987676

/-! ## A112150.P4806332649126397851

`A058088(2*n)*A112465(∑[n])`
-/

namespace A112150.P4806332649126397851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058088 (2 * n) * A112465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112150.P4806332649126397851

/-!
# A112151: McKay-Thompson series of class 16b for the Monster group.

The programs for A112151, there is no canonical definition to state claims against.
-/

/-! ## A112151.P12665517495720192244

`A029841(n)*A057077(n)`
-/

namespace A112151.P12665517495720192244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 n * A057077 n

end

end A112151.P12665517495720192244

/-! ## A112151.P7261123396694420214

`A033999(n)*A112152(n)`
-/

namespace A112151.P7261123396694420214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112152 n

end

end A112151.P7261123396694420214

/-! ## A112151.P15105777935016424731

`A087960(n)*A112143(n)`
-/

namespace A112151.P15105777935016424731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112143 n

end

end A112151.P15105777935016424731

/-! ## A112151.P9518953590525360918

`A057077(A057077(n)+n)*A112152(n)`
-/

namespace A112151.P9518953590525360918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A057077 n + (n : ℤ)).toNat * A112152 n

end

end A112151.P9518953590525360918

/-! ## A112151.P3497506039468147477

`A029841(n)/A112143(n)*A112152(n)`
-/

namespace A112151.P3497506039468147477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 n : ℚ) / (A112143 n : ℚ) * (A112152 n : ℚ)

end

end A112151.P3497506039468147477

/-! ## A112151.P4048274022548844471

`A057077(n+1)*A112143(n)`
-/

namespace A112151.P4048274022548844471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112143 n

end

end A112151.P4048274022548844471

/-! ## A112151.P14974953109335291865

`A112143(n+1)/A112152(n+1)*A112143(n)`
-/

namespace A112151.P14974953109335291865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112143 (n + 1) : ℚ) / (A112152 (n + 1) : ℚ) * (A112143 n : ℚ)

end

end A112151.P14974953109335291865

/-! ## A112151.P8996912570317648822

`A057077(2*n)*A112152(n)`
-/

namespace A112151.P8996912570317648822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112152 n

end

end A112151.P8996912570317648822

/-! ## A112151.P13001850774057078464

`A087960(2*n)*A112152(n)`
-/

namespace A112151.P13001850774057078464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112152 n

end

end A112151.P13001850774057078464

/-! ## A112151.P14682637702287164922

`A112152(n)/A087960(n²)`
-/

namespace A112151.P14682637702287164922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112152 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112151.P14682637702287164922

/-!
# A112152: McKay-Thompson series of class 16c for the Monster group.

The programs for A112152, there is no canonical definition to state claims against.
-/

/-! ## A112152.P14908183699010541523

`A029841(n)*A087960(n)`
-/

namespace A112152.P14908183699010541523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 n * A087960 n

end

end A112152.P14908183699010541523

/-! ## A112152.P6776884745956808917

`A033999(n)*A112151(n)`
-/

namespace A112152.P6776884745956808917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112151 n

end

end A112152.P6776884745956808917

/-! ## A112152.P14766113487158828645

`A057077(n)*A112143(n)`
-/

namespace A112152.P14766113487158828645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112143 n

end

end A112152.P14766113487158828645

/-! ## A112152.P14975675884740722988

`A112151(n)/A057077(A057077(n)+n)`
-/

namespace A112152.P14975675884740722988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112151 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112152.P14975675884740722988

/-! ## A112152.P1627290712330146050

`A029841(n)/A112143(n)*A112151(n)`
-/

namespace A112152.P1627290712330146050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 n : ℚ) / (A112143 n : ℚ) * (A112151 n : ℚ)

end

end A112152.P1627290712330146050

/-! ## A112152.P11476403073991070233

`A112143(n)/A245432(n)*abs(A245432(n))`
-/

namespace A112152.P11476403073991070233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112143 n : ℚ) / (A245432 n : ℚ) * (|A245432 n| : ℚ)

end

end A112152.P11476403073991070233

/-! ## A112152.P15454256040673324970

`A224216(n+1)/abs(A224216(n+1))*A029841(n)`
-/

namespace A112152.P15454256040673324970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224216 (n + 1) : ℚ) / (|A224216 (n + 1)| : ℚ) * (A029841 n : ℚ)

end

end A112152.P15454256040673324970

/-! ## A112152.P2803745377341366184

`A029841(n)*A057077(n+1)`
-/

namespace A112152.P2803745377341366184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 n * A057077 (n + 1)

end

end A112152.P2803745377341366184

/-! ## A112152.P2280905456819696044

`(A007877(n+1)-A007877(n))*A112143(n)`
-/

namespace A112152.P2280905456819696044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007877 (n + 1) - A007877 n) * A112143 n

end

end A112152.P2280905456819696044

/-! ## A112152.P886802063694314055

`A029841(n+1)/A112151(n+1)*A029841(n)`
-/

namespace A112152.P886802063694314055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 (n + 1) : ℚ) / (A112151 (n + 1) : ℚ) * (A029841 n : ℚ)

end

end A112152.P886802063694314055

/-! ## A112152.P17948125112310864414

`A057077(2*n)*A112151(n)`
-/

namespace A112152.P17948125112310864414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112151 n

end

end A112152.P17948125112310864414

/-! ## A112152.P5752106533017984091

`A087960(2*n)*A112151(n)`
-/

namespace A112152.P5752106533017984091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112151 n

end

end A112152.P5752106533017984091

/-! ## A112152.P5175890096536636255

`A112151(n)/A087960(n²)`
-/

namespace A112152.P5175890096536636255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112151 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112152.P5175890096536636255

/-!
# A112153: McKay-Thompson series of class 16f for the Monster group.

The programs for A112153, there is no canonical definition to state claims against.
-/

/-! ## A112153.P980126779680696632

`A057077(n)*A112155(n)`
-/

namespace A112153.P980126779680696632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112155 n

end

end A112153.P980126779680696632

/-! ## A112153.P10224689052443534962

`A087960(n)*A112154(n)`
-/

namespace A112153.P10224689052443534962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112154 n

end

end A112153.P10224689052443534962

/-! ## A112153.P6986620803353842864

`A057077(n+1)*A112154(n)`
-/

namespace A112153.P6986620803353842864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112154 n

end

end A112153.P6986620803353842864

/-! ## A112153.P13023760663230608108

`A033999(n)*A058526(n)`
-/

namespace A112153.P13023760663230608108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058526 n

end

end A112153.P13023760663230608108

/-! ## A112153.P8621391844207098513

`A057077(2*n)*A058526(n)`
-/

namespace A112153.P8621391844207098513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A058526 n

end

end A112153.P8621391844207098513

/-! ## A112153.P14671374030023149155

`A058526(n)*A087960(2*n)`
-/

namespace A112153.P14671374030023149155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058526 n * A087960 (2 * n)

end

end A112153.P14671374030023149155

/-! ## A112153.P3421580103301563530

`A058526(n)*A260190(6*n)`
-/

namespace A112153.P3421580103301563530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058526 n * A260190 (6 * n)

end

end A112153.P3421580103301563530

/-! ## A112153.P5367464168797200910

`A055975(2*n+1)*A058526(n)`
-/

namespace A112153.P5367464168797200910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A058526 n

end

end A112153.P5367464168797200910

/-! ## A112153.P13614590012913340296

`A058526(n)/A057077(A057077(n)+n)`
-/

namespace A112153.P13614590012913340296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058526 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112153.P13614590012913340296

/-! ## A112153.P4851328563480204218

`A058526(n)/A087960(n²)`
-/

namespace A112153.P4851328563480204218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058526 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112153.P4851328563480204218

/-!
# A112154: McKay-Thompson series of class 16g for the Monster group.

The programs for A112154, there is no canonical definition to state claims against.
-/

/-! ## A112154.P18039037501868968475

`A033999(n)*A112155(n)`
-/

namespace A112154.P18039037501868968475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112155 n

end

end A112154.P18039037501868968475

/-! ## A112154.P4824958621076226780

`(A004442(n)-n)*A112155(n)`
-/

namespace A112154.P4824958621076226780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112155 n

end

end A112154.P4824958621076226780

/-! ## A112154.P9348718877971164271

`A057077(A057077(n)+n)*A112155(n)`
-/

namespace A112154.P9348718877971164271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A057077 n + (n : ℤ)).toNat * A112155 n

end

end A112154.P9348718877971164271

/-! ## A112154.P13490636500711861128

`A073097(A004770(n+1))*A112155(n)`
-/

namespace A112154.P13490636500711861128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A004770 (n + 1)).toNat * A112155 n

end

end A112154.P13490636500711861128

/-! ## A112154.P2276470390854590828

`A057077(2*n)*A112155(n)`
-/

namespace A112154.P2276470390854590828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112155 n

end

end A112154.P2276470390854590828

/-! ## A112154.P4810856371392233184

`A087960(2*n)*A112155(n)`
-/

namespace A112154.P4810856371392233184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112155 n

end

end A112154.P4810856371392233184

/-! ## A112154.P489066693703506302

`A087960(n)*A112153(n)`
-/

namespace A112154.P489066693703506302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112153 n

end

end A112154.P489066693703506302

/-! ## A112154.P13780056241334399500

`A057077(n+1)*A112153(n)`
-/

namespace A112154.P13780056241334399500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112153 n

end

end A112154.P13780056241334399500

/-! ## A112154.P17342637477433050133

`A010892(A168419(n+1))*A112153(n)`
-/

namespace A112154.P17342637477433050133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A168419 (n + 1)).toNat * A112153 n

end

end A112154.P17342637477433050133

/-! ## A112154.P11646824289449653337

`A057077(n)*A058526(n)`
-/

namespace A112154.P11646824289449653337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A058526 n

end

end A112154.P11646824289449653337

/-! ## A112154.P13924681427311433676

`A058526(n)*A260190(A016789(n))`
-/

namespace A112154.P13924681427311433676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058526 n * A260190 (A016789 n).toNat

end

end A112154.P13924681427311433676

/-! ## A112154.P14388458362382959303

`A112155(n)/A087960(n²)`
-/

namespace A112154.P14388458362382959303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112155 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112154.P14388458362382959303

/-!
# A112155: McKay-Thompson series of class 16h for the Monster group.

The programs for A112155, there is no canonical definition to state claims against.
-/

/-! ## A112155.P1681879470727127881

`A033999(n)*A112154(n)`
-/

namespace A112155.P1681879470727127881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112154 n

end

end A112155.P1681879470727127881

/-! ## A112155.P8623564059227161742

`A057077(A057077(n)+n)*A112154(n)`
-/

namespace A112155.P8623564059227161742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A057077 n + (n : ℤ)).toNat * A112154 n

end

end A112155.P8623564059227161742

/-! ## A112155.P10485848106444924925

`A057077(2*n)*A112154(n)`
-/

namespace A112155.P10485848106444924925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112154 n

end

end A112155.P10485848106444924925

/-! ## A112155.P4645032083450578494

`A087960(2*n)*A112154(n)`
-/

namespace A112155.P4645032083450578494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112154 n

end

end A112155.P4645032083450578494

/-! ## A112155.P7018890855837103128

`(1-and(2, n))*A112153(n)`
-/

namespace A112155.P7018890855837103128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A112153 n

end

end A112155.P7018890855837103128

/-! ## A112155.P11491325845887431389

`A057077(n)*A112153(n)`
-/

namespace A112155.P11491325845887431389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112153 n

end

end A112155.P11491325845887431389

/-! ## A112155.P13610120783258446864

`A058526(n)*A087960(n)`
-/

namespace A112155.P13610120783258446864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058526 n * A087960 n

end

end A112155.P13610120783258446864

/-! ## A112155.P9343651491171067541

`A057077(n+1)*A058526(n)`
-/

namespace A112155.P9343651491171067541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A058526 n

end

end A112155.P9343651491171067541

/-! ## A112155.P8792370551182874051

`A058526(n)*A260190(9*n)`
-/

namespace A112155.P8792370551182874051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058526 n * A260190 (9 * n)

end

end A112155.P8792370551182874051

/-! ## A112155.P1187553929259400822

`A058526(n)/A260190(A016789(n)+1)`
-/

namespace A112155.P1187553929259400822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058526 n : ℚ) / (A260190 (A016789 n + 1).toNat : ℚ)

end

end A112155.P1187553929259400822

/-! ## A112155.P4566047567951073868

`A112154(n)/A087960(n²)`
-/

namespace A112155.P4566047567951073868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112154 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112155.P4566047567951073868

/-!
# A112156: McKay-Thompson series of class 18g for the Monster group.

The programs for A112156, there is no canonical definition to state claims against.
-/

/-! ## A112156.P4322833019377916734

`A049347(n)*A058544(n)`
-/

namespace A112156.P4322833019377916734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A058544 n

end

end A112156.P4322833019377916734

/-! ## A112156.P17205533196125886669

`A058544(n)*A257075(n)`
-/

namespace A112156.P17205533196125886669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058544 n * A257075 n

end

end A112156.P17205533196125886669

/-! ## A112156.P5133913579153002627

`A058544(n)*A343785(n+1)`
-/

namespace A112156.P5133913579153002627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058544 n * A343785 (n + 1)

end

end A112156.P5133913579153002627

/-! ## A112156.P15311020630541084927

`(A061800(n)-n)*A058544(n)`
-/

namespace A112156.P15311020630541084927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061800 n - (n : ℤ)) * A058544 n

end

end A112156.P15311020630541084927

/-! ## A112156.P9330679415619304153

`Δ[A244042(n)]*A058544(n)`
-/

namespace A112156.P9330679415619304153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A058544 n

end

end A112156.P9330679415619304153

/-!
# A112157: McKay-Thompson series of class 18i for the Monster group.

The programs for A112157, there is no canonical definition to state claims against.
-/

/-! ## A112157.P9272258919241551400

`A058544(3*n)`
-/

namespace A112157.P9272258919241551400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058544 (3 * n)

end

end A112157.P9272258919241551400

/-! ## A112157.P14629930687551492025

`A112156(3*n)`
-/

namespace A112157.P14629930687551492025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112156 (3 * n)

end

end A112157.P14629930687551492025

/-! ## A112157.P8643177211678104650

`or(char[2], A112156(A008585(n)))`
-/

namespace A112157.P8643177211678104650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A112156 (A008585 n).toNat)

end

end A112157.P8643177211678104650

/-! ## A112157.P11996872287255184283

`A112156(A008486(n))-A000038(n)`
-/

namespace A112157.P11996872287255184283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112156 (A008486 n).toNat - A000038 n

end

end A112157.P11996872287255184283

/-! ## A112157.P10946011492178149208

`A112156(A008486(n))%A156763(n)`
-/

namespace A112157.P10946011492178149208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112156 (A008486 n).toNat) (A156763 n)

end

end A112157.P10946011492178149208

/-! ## A112157.P3580432787201660368

`A112156(A008585(n))%A193579(n)`
-/

namespace A112157.P3580432787201660368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112156 (A008585 n).toNat) (A193579 n)

end

end A112157.P3580432787201660368

/-!
# A112160: McKay-Thompson series of class 24E for the Monster group.

The programs for A112160, there is no canonical definition to state claims against.
-/

/-! ## A112160.P1771719353376886783

`abs(A022599(n))`
-/

namespace A112160.P1771719353376886783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022599 n|

end

end A112160.P1771719353376886783

/-! ## A112160.P6896998334386035157

`A022599(n)*A033999(n)`
-/

namespace A112160.P6896998334386035157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022599 n * A033999 n

end

end A112160.P6896998334386035157

/-! ## A112160.P11700169864415290736

`gcd(A000038(n), A022599(n))`
-/

namespace A112160.P11700169864415290736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A022599 n)

end

end A112160.P11700169864415290736

/-! ## A112160.P7752872677935036775

`lcm(A000034(n), A022599(n))`
-/

namespace A112160.P7752872677935036775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A022599 n)

end

end A112160.P7752872677935036775

/-! ## A112160.P732083033171046238

`A022597(n)/A073252(n)*A022599(n)`
-/

namespace A112160.P732083033171046238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022597 n : ℚ) / (A073252 n : ℚ) * (A022599 n : ℚ)

end

end A112160.P732083033171046238

/-! ## A112160.P4329853779697817795

`A227033(2*n)`
-/

namespace A112160.P4329853779697817795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227033 (2 * n)

end

end A112160.P4329853779697817795

/-! ## A112160.P5971351100232135996

`A022599(n)*A057077(2*n)`
-/

namespace A112160.P5971351100232135996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022599 n * A057077 (2 * n)

end

end A112160.P5971351100232135996

/-! ## A112160.P2961817643759134609

`record[A227033(n)/A006519(n+1)²]`
-/

namespace A112160.P2961817643759134609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227033 n : ℚ) / (A006519 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112160.P2961817643759134609

/-! ## A112160.P2919927422096934845

`record[A227033(or(1, A061395(n+1))-1)]`
-/

namespace A112160.P2919927422096934845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227033 (Int.lor 1 (A061395 (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112160.P2919927422096934845

/-! ## A112160.P4604120343850228357

`A007259(n)/A101127(n)*A022599(n)`
-/

namespace A112160.P4604120343850228357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007259 n : ℚ) / (A101127 n : ℚ) * (A022599 n : ℚ)

end

end A112160.P4604120343850228357

/-! ## A112160.P18024088325283472975

`abs(A058493(3*n))`
-/

namespace A112160.P18024088325283472975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058493 (3 * n)|

end

end A112160.P18024088325283472975

/-! ## A112160.P8985327297331993690

`abs(A112149(3*n))`
-/

namespace A112160.P8985327297331993690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112149 (3 * n)|

end

end A112160.P8985327297331993690

/-! ## A112160.P9969481339699224186

`lcm(A112149(3*n), A257075(n))`
-/

namespace A112160.P9969481339699224186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112149 (3 * n)) (A257075 n)

end

end A112160.P9969481339699224186

/-! ## A112160.P6342286053375562257

`A087960(2*n)*A112149(A006368(2*n))`
-/

namespace A112160.P6342286053375562257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112149 (A006368 (2 * n)).toNat

end

end A112160.P6342286053375562257

/-! ## A112160.P13671543141828137112

`gcd(A000038(n+1), A058493(A006368(2*n)))`
-/

namespace A112160.P13671543141828137112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A058493 (A006368 (2 * n)).toNat)

end

end A112160.P13671543141828137112

/-! ## A112160.P17616736765773447596

`lcm(A000034(2*n), A058493(A006368(2*n)))`
-/

namespace A112160.P17616736765773447596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (2 * n)) (A058493 (A006368 (2 * n)).toNat)

end

end A112160.P17616736765773447596

/-! ## A112160.P11987004978638503497

`A087960(n²)*A112149(3*n)`
-/

namespace A112160.P11987004978638503497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n ^ 2) * A112149 (3 * n)

end

end A112160.P11987004978638503497

/-!
# A112161: McKay-Thompson series of class 24G for the Monster group.

The programs for A112161, there is no canonical definition to state claims against.
-/

/-! ## A112161.P10592893875215640862

`A112164(2*n)`
-/

namespace A112161.P10592893875215640862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112164 (2 * n)

end

end A112161.P10592893875215640862

/-! ## A112161.P3846754766504970657

`or(A000007(n), A112164(A005843(n)))`
-/

namespace A112161.P3846754766504970657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A112164 (A005843 n).toNat)

end

end A112161.P3846754766504970657

/-! ## A112161.P8658836859185832096

`A112164(A005843(n))/(A004442(n)-n)²`
-/

namespace A112161.P8658836859185832096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112164 (A005843 n).toNat : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A112161.P8658836859185832096

/-! ## A112161.P6395910772123219372

`A112164(A005843(n))+A051344(gcd(n, n+1))`
-/

namespace A112161.P6395910772123219372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112164 (A005843 n).toNat + A051344 (Nat.gcd n (n + 1))

end

end A112161.P6395910772123219372

/-! ## A112161.P3524991625137548830

`A112164(n+n)%A058383(n+1)`
-/

namespace A112161.P3524991625137548830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112164 (n + n)) (A058383 (n + 1))

end

end A112161.P3524991625137548830

/-!
# A112162: McKay-Thompson series of class 24b for the Monster group.

The programs for A112162, there is no canonical definition to state claims against.
-/

/-! ## A112162.P4101112123388724326

`abs(A058483(n))`
-/

namespace A112162.P4101112123388724326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058483 n|

end

end A112162.P4101112123388724326

/-! ## A112162.P17456952254128298664

`A033999(n)*A058483(n)`
-/

namespace A112162.P17456952254128298664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058483 n

end

end A112162.P17456952254128298664

/-! ## A112162.P7356176911219176092

`gcd(A000038(n), A058483(n))`
-/

namespace A112162.P7356176911219176092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A058483 n)

end

end A112162.P7356176911219176092

/-! ## A112162.P11307866721781355621

`lcm(A020985(n), A058483(n))`
-/

namespace A112162.P11307866721781355621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A058483 n)

end

end A112162.P11307866721781355621

/-! ## A112162.P17643136890811472591

`A036018(n)/A101195(n)*A058483(n)`
-/

namespace A112162.P17643136890811472591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036018 n : ℚ) / (A101195 n : ℚ) * (A058483 n : ℚ)

end

end A112162.P17643136890811472591

/-!
# A112163: Coefficients of replicable function number 24e.

The programs for A112163, there is no canonical definition to state claims against.
-/

/-! ## A112163.P16875641854134029790

`A033999(n)*A058587(n)`
-/

namespace A112163.P16875641854134029790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058587 n

end

end A112163.P16875641854134029790

/-! ## A112163.P8508238366730360358

`(A004442(n)-n)*A058587(n)`
-/

namespace A112163.P8508238366730360358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A058587 n

end

end A112163.P8508238366730360358

/-! ## A112163.P1661541757264139117

`A058587(n)/A033999(A004442(n+1))`
-/

namespace A112163.P1661541757264139117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058587 n : ℚ) / (A033999 (A004442 (n + 1)).toNat : ℚ)

end

end A112163.P1661541757264139117

/-! ## A112163.P16311752413985933302

`A057077(2*n)*A058587(n)`
-/

namespace A112163.P16311752413985933302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A058587 n

end

end A112163.P16311752413985933302

/-! ## A112163.P16767477710160858936

`A010892(A008585(n))*A058587(n)`
-/

namespace A112163.P16767477710160858936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n).toNat * A058587 n

end

end A112163.P16767477710160858936

/-!
# A112165: McKay-Thompson series of class 24h for the Monster group.

The programs for A112165, there is no canonical definition to state claims against.
-/

/-! ## A112165.P14970671011588385769

`A033999(n)*A058574(n)`
-/

namespace A112165.P14970671011588385769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058574 n

end

end A112165.P14970671011588385769

/-! ## A112165.P2405581316232674617

`A057077(n)*A112186(n)`
-/

namespace A112165.P2405581316232674617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112186 n

end

end A112165.P2405581316232674617

/-! ## A112165.P3349719916129334852

`A087960(n)*A112187(n)`
-/

namespace A112165.P3349719916129334852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112187 n

end

end A112165.P3349719916129334852

/-! ## A112165.P12845455717566242561

`(2-Δ[A042948(n)])*A058574(n)`
-/

namespace A112165.P12845455717566242561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A058574 n

end

end A112165.P12845455717566242561

/-! ## A112165.P351546137766901449

`A058574(n)/A057077(A057077(n)+n)`
-/

namespace A112165.P351546137766901449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058574 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112165.P351546137766901449

/-! ## A112165.P5763022301303715142

`A057077(n+1)*A112187(n)`
-/

namespace A112165.P5763022301303715142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112187 n

end

end A112165.P5763022301303715142

/-! ## A112165.P16958653879735253507

`(A058492(n)+A058491(n))/2`
-/

namespace A112165.P16958653879735253507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058492 n + A058491 n : ℚ) / 2

end

end A112165.P16958653879735253507

/-! ## A112165.P11563619218987383251

`A057077(2*n)*A058574(n)`
-/

namespace A112165.P11563619218987383251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A058574 n

end

end A112165.P11563619218987383251

/-! ## A112165.P6407298006240064279

`A058574(n)*A087960(2*n)`
-/

namespace A112165.P6407298006240064279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058574 n * A087960 (2 * n)

end

end A112165.P6407298006240064279

/-! ## A112165.P5753742982355081652

`A010892(3*n)*A058574(n)`
-/

namespace A112165.P5753742982355081652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A058574 n

end

end A112165.P5753742982355081652

/-! ## A112165.P10164484332430867570

`A058574(n)/A087960(n²)`
-/

namespace A112165.P10164484332430867570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058574 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112165.P10164484332430867570

/-!
# A112166: McKay-Thompson series of class 24i for the Monster group.

The programs for A112166, there is no canonical definition to state claims against.
-/

/-! ## A112166.P568799159982879892

`A033999(n)*A112167(n)`
-/

namespace A112166.P568799159982879892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112167 n

end

end A112166.P568799159982879892

/-! ## A112166.P18128692571406373990

`A049347(n)*A112167(n)`
-/

namespace A112166.P18128692571406373990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112167 n

end

end A112166.P18128692571406373990

/-! ## A112166.P15391243239907132851

`A101675(n)*A112167(n)`
-/

namespace A112166.P15391243239907132851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A112167 n

end

end A112166.P15391243239907132851

/-! ## A112166.P8342248183776532102

`A112167(n)*A115360(n)`
-/

namespace A112166.P8342248183776532102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n * A115360 n

end

end A112166.P8342248183776532102

/-! ## A112166.P9316895730386626274

`A112167(n)*A130778(n)`
-/

namespace A112166.P9316895730386626274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n * A130778 n

end

end A112166.P9316895730386626274

/-! ## A112166.P13208740609657022830

`A112167(n)*A134668(n)`
-/

namespace A112166.P13208740609657022830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n * A134668 n

end

end A112166.P13208740609657022830

/-! ## A112166.P4520056747454574447

`A112167(n)*A135694(n)`
-/

namespace A112166.P4520056747454574447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n * A135694 n

end

end A112166.P4520056747454574447

/-! ## A112166.P17531826454500170724

`A112167(n)*A257075(n)`
-/

namespace A112166.P17531826454500170724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n * A257075 n

end

end A112166.P17531826454500170724

/-! ## A112166.P12221991434716736416

`A112167(n)*A343785(n+1)`
-/

namespace A112166.P12221991434716736416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 n * A343785 (n + 1)

end

end A112166.P12221991434716736416

/-! ## A112166.P3951324932409669515

`A071182(n+2)*A112167(n)`
-/

namespace A112166.P3951324932409669515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071182 (n + 2) * A112167 n

end

end A112166.P3951324932409669515

/-! ## A112166.P15251890693205893347

`(1-2*A000035(n))*A112167(n)`
-/

namespace A112166.P15251890693205893347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A112167 n

end

end A112166.P15251890693205893347

/-! ## A112166.P12153982455336735507

`(Δ[A236453(n)]-(n+1))*A112167(n)`
-/

namespace A112166.P12153982455336735507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - (n + 1 : ℤ)) * A112167 n

end

end A112166.P12153982455336735507

/-!
# A112167: McKay-Thompson series of class 24j for the Monster group.

The programs for A112167, there is no canonical definition to state claims against.
-/

/-! ## A112167.P3135638044124687228

`A033999(n)*A112166(n)`
-/

namespace A112167.P3135638044124687228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112166 n

end

end A112167.P3135638044124687228

/-! ## A112167.P4351604296119711834

`A049347(n)*A112166(n)`
-/

namespace A112167.P4351604296119711834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112166 n

end

end A112167.P4351604296119711834

/-! ## A112167.P11013687897194313994

`A101675(n)*A112166(n)`
-/

namespace A112167.P11013687897194313994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A112166 n

end

end A112167.P11013687897194313994

/-! ## A112167.P9357338494555609483

`A112166(n)*A115360(n)`
-/

namespace A112167.P9357338494555609483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n * A115360 n

end

end A112167.P9357338494555609483

/-! ## A112167.P8896362784748803728

`A112166(n)*A130778(n)`
-/

namespace A112167.P8896362784748803728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n * A130778 n

end

end A112167.P8896362784748803728

/-! ## A112167.P10813096304016633003

`A112166(n)*A134668(n)`
-/

namespace A112167.P10813096304016633003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n * A134668 n

end

end A112167.P10813096304016633003

/-! ## A112167.P8492201351568630615

`A112166(n)*A135694(n)`
-/

namespace A112167.P8492201351568630615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n * A135694 n

end

end A112167.P8492201351568630615

/-! ## A112167.P7637366615769550120

`A112166(n)*A257075(n)`
-/

namespace A112167.P7637366615769550120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n * A257075 n

end

end A112167.P7637366615769550120

/-! ## A112167.P1041567592312560210

`Δ[A059126(n)]*A112166(n)`
-/

namespace A112167.P1041567592312560210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112166 n

end

end A112167.P1041567592312560210

/-! ## A112167.P43593592198616357

`A112166(n)*A343785(n+1)`
-/

namespace A112167.P43593592198616357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n * A343785 (n + 1)

end

end A112167.P43593592198616357

/-! ## A112167.P1974449355593959261

`A071182(n+2)*A112166(n)`
-/

namespace A112167.P1974449355593959261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071182 (n + 2) * A112166 n

end

end A112167.P1974449355593959261

/-! ## A112167.P2403462103525787891

`Δ[A028920(n)]*A112166(n)`
-/

namespace A112167.P2403462103525787891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112166 n

end

end A112167.P2403462103525787891

/-! ## A112167.P3048236055910371596

`A008683(A116570(n))*A112166(n)`
-/

namespace A112167.P3048236055910371596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A112166 n

end

end A112167.P3048236055910371596

/-! ## A112167.P16010014712139753504

`A089810((n+1)²)*A112166(n)`
-/

namespace A112167.P16010014712139753504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 ((n + 1) ^ 2) * A112166 n

end

end A112167.P16010014712139753504

/-! ## A112167.P13929669550973231776

`ceil(ratio[A089810(n²)])*A112166(n)`
-/

namespace A112167.P13929669550973231776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A112166 n

end

end A112167.P13929669550973231776

/-!
# A112171: McKay-Thompson series of class 32c for the Monster group.

The programs for A112171, there is no canonical definition to state claims against.
-/

/-! ## A112171.P11846817902854355545

`A033999(n)*A112172(n)`
-/

namespace A112171.P11846817902854355545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112172 n

end

end A112171.P11846817902854355545

/-! ## A112171.P3289779348530294335

`A087960(n)*A112172(n)`
-/

namespace A112171.P3289779348530294335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112172 n

end

end A112171.P3289779348530294335

/-! ## A112171.P9387318967730369714

`A094267(n)*A112172(n)`
-/

namespace A112171.P9387318967730369714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A112172 n

end

end A112171.P9387318967730369714

/-! ## A112171.P8962671152433006507

`A093085(n)*A128130(n)`
-/

namespace A112171.P8962671152433006507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A128130 n

end

end A112171.P8962671152433006507

/-! ## A112171.P9290882631317938341

`A093085(n)*A143431(n)`
-/

namespace A112171.P9290882631317938341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A143431 n

end

end A112171.P9290882631317938341

/-! ## A112171.P12389140879409825474

`A093085(n)*A162285(n)`
-/

namespace A112171.P12389140879409825474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A162285 n

end

end A112171.P12389140879409825474

/-! ## A112171.P99302797631351846

`A046980(n)*A208589(n)`
-/

namespace A112171.P99302797631351846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A208589 n

end

end A112171.P99302797631351846

/-! ## A112171.P1074343938616538790

`A112172(n)*A219977(n)`
-/

namespace A112171.P1074343938616538790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A219977 n

end

end A112171.P1074343938616538790

/-! ## A112171.P12582062104103309545

`A143621(n)*A208589(n)`
-/

namespace A112171.P12582062104103309545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143621 n * A208589 n

end

end A112171.P12582062104103309545

/-! ## A112171.P8421661844089784140

`Δ[A096268(n)]*A112172(n)`
-/

namespace A112171.P8421661844089784140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112172 n

end

end A112171.P8421661844089784140

/-! ## A112171.P15835258285076944431

`A071935(n+1)*A112172(n)`
-/

namespace A112171.P15835258285076944431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A112172 n

end

end A112171.P15835258285076944431

/-! ## A112171.P7647905365146990436

`A093085(n)*A118828(n+1)`
-/

namespace A112171.P7647905365146990436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A118828 (n + 1)

end

end A112171.P7647905365146990436

/-! ## A112171.P5330212287187020854

`A112172(n)*A309873(n+1)`
-/

namespace A112171.P5330212287187020854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A309873 (n + 1)

end

end A112171.P5330212287187020854

/-! ## A112171.P13091905122377345207

`(2-A053381(n))*A112172(n)`
-/

namespace A112171.P13091905122377345207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A053381 n) * A112172 n

end

end A112171.P13091905122377345207

/-! ## A112171.P14116364561145811867

`A002321(A053381(n))*A112172(n)`
-/

namespace A112171.P14116364561145811867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A053381 n).toNat * A112172 n

end

end A112171.P14116364561145811867

/-! ## A112171.P5964114477763986781

`A034947(A008619(n))*A208589(n)`
-/

namespace A112171.P5964114477763986781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A008619 n).toNat * A208589 n

end

end A112171.P5964114477763986781

/-! ## A112171.P15525854987107458381

`A112172(n)*A162285(2*n)`
-/

namespace A112171.P15525854987107458381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A162285 (2 * n)

end

end A112171.P15525854987107458381

/-! ## A112171.P15838056383347397794

`A046980(2*n+1)*A112172(n)`
-/

namespace A112171.P15838056383347397794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (2 * n + 1) * A112172 n

end

end A112171.P15838056383347397794

/-! ## A112171.P8342202744796873935

`A112172(n)*A128130(n²)`
-/

namespace A112171.P8342202744796873935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A128130 (n ^ 2)

end

end A112171.P8342202744796873935

/-! ## A112171.P1076008207144456237

`A112172(n)*A143431(n²)`
-/

namespace A112171.P1076008207144456237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A143431 (n ^ 2)

end

end A112171.P1076008207144456237

/-!
# A112172: McKay-Thompson series of class 32d for the Monster group.

The programs for A112172, there is no canonical definition to state claims against.
-/

/-! ## A112172.P9350778160368561175

`A046980(n)*A093085(n)`
-/

namespace A112172.P9350778160368561175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A093085 n

end

end A112172.P9350778160368561175

/-! ## A112172.P7575111375796440169

`A033999(n)*A112171(n)`
-/

namespace A112172.P7575111375796440169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112171 n

end

end A112172.P7575111375796440169

/-! ## A112172.P11511019647851357502

`A087960(n)*A112171(n)`
-/

namespace A112172.P11511019647851357502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112171 n

end

end A112172.P11511019647851357502

/-! ## A112172.P9675544638687521802

`A094267(n)*A112171(n)`
-/

namespace A112172.P9675544638687521802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A112171 n

end

end A112172.P9675544638687521802

/-! ## A112172.P16784013988996244675

`A093085(n)*A143621(n)`
-/

namespace A112172.P16784013988996244675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n * A143621 n

end

end A112172.P16784013988996244675

/-! ## A112172.P15420615292544334173

`A112171(n)*A219977(n)`
-/

namespace A112172.P15420615292544334173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A219977 n

end

end A112172.P15420615292544334173

/-! ## A112172.P15139611539163227528

`A128130(n)*A208589(n)`
-/

namespace A112172.P15139611539163227528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 n * A208589 n

end

end A112172.P15139611539163227528

/-! ## A112172.P1885205874016568459

`A143431(n)*A208589(n)`
-/

namespace A112172.P1885205874016568459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n * A208589 n

end

end A112172.P1885205874016568459

/-! ## A112172.P8003744612049931867

`A162285(n)*A208589(n)`
-/

namespace A112172.P8003744612049931867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162285 n * A208589 n

end

end A112172.P8003744612049931867

/-! ## A112172.P7067331445686186866

`A071935(n+1)*A112171(n)`
-/

namespace A112172.P7067331445686186866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A112171 n

end

end A112172.P7067331445686186866

/-! ## A112172.P12509115964220860332

`A118828(n+1)*A208589(n)`
-/

namespace A112172.P12509115964220860332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (n + 1) * A208589 n

end

end A112172.P12509115964220860332

/-! ## A112172.P15392927989402314663

`A112171(n)*A309873(n+1)`
-/

namespace A112172.P15392927989402314663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A309873 (n + 1)

end

end A112172.P15392927989402314663

/-! ## A112172.P14746293198058518098

`(-1)^A002265(n)*A093085(n)`
-/

namespace A112172.P14746293198058518098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002265 n : ℤ) * (A093085 n : ℚ)

end

end A112172.P14746293198058518098

/-! ## A112172.P14272889884825717042

`A112171(val((n+1)², 2)²)*A112171(n)`
-/

namespace A112172.P14272889884825717042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 ^ 2) * A112171 n

end

end A112172.P14272889884825717042

/-! ## A112172.P6419406327283986092

`A112171(n)/A106400(A106400(n+1)+n+1)`
-/

namespace A112172.P6419406327283986092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112171 n : ℚ) / (A106400 (A106400 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

end

end A112172.P6419406327283986092

/-! ## A112172.P1975628245591349275

`A112171(n)*A162285(2*n)`
-/

namespace A112172.P1975628245591349275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A162285 (2 * n)

end

end A112172.P1975628245591349275

/-! ## A112172.P15871993022456607675

`A046980(2*n+1)*A112171(n)`
-/

namespace A112172.P15871993022456607675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (2 * n + 1) * A112171 n

end

end A112172.P15871993022456607675

/-! ## A112172.P14228894732470029927

`A112171(n)*A128130(n²)`
-/

namespace A112172.P14228894732470029927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A128130 (n ^ 2)

end

end A112172.P14228894732470029927

/-! ## A112172.P598231155368652423

`A112171(n)*A143431(n²)`
-/

namespace A112172.P598231155368652423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A143431 (n ^ 2)

end

end A112172.P598231155368652423

/-! ## A112172.P317471763169956985

`A112171(n)/A162285(n²)`
-/

namespace A112172.P317471763169956985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112171 n : ℚ) / (A162285 (n ^ 2) : ℚ)

end

end A112172.P317471763169956985

/-!
# A112173: McKay-Thompson series of class 36b for the Monster group.

The programs for A112173, there is no canonical definition to state claims against.
-/

/-! ## A112173.P7156505720628866271

`abs(A058543(n))`
-/

namespace A112173.P7156505720628866271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058543 n|

end

end A112173.P7156505720628866271

/-! ## A112173.P4368542620880717532

`A033999(n)*A058543(n)`
-/

namespace A112173.P4368542620880717532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058543 n

end

end A112173.P4368542620880717532

/-! ## A112173.P11983446830770440739

`gcd(A000038(n), A058543(n))`
-/

namespace A112173.P11983446830770440739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A058543 n)

end

end A112173.P11983446830770440739

/-! ## A112173.P5041777334484539311

`lcm(A000034(n), A058543(n))`
-/

namespace A112173.P5041777334484539311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A058543 n)

end

end A112173.P5041777334484539311

/-! ## A112173.P5262518277833673718

`∑{d}[A058543(n), A000010(#)]`
-/

namespace A112173.P5262518277833673718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A112173.P5262518277833673718

/-!
# A112175: McKay-Thompson series of class 36e for the Monster group.

The programs for A112175, there is no canonical definition to state claims against.
-/

/-! ## A112175.P16405718436781082520

`(-1)^n*A112206(n)`
-/

namespace A112175.P16405718436781082520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112206 n

end

end A112175.P16405718436781082520

/-! ## A112175.P2700058411453485493

`A112206(n)/A033999(n)`
-/

namespace A112175.P2700058411453485493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112206 n : ℚ) / (A033999 n : ℚ)

end

end A112175.P2700058411453485493

/-! ## A112175.P15855041049255965823

`A033999(n)*A328795(2*n)`
-/

namespace A112175.P15855041049255965823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A328795 (2 * n)

end

end A112175.P15855041049255965823

/-! ## A112175.P17288072017300978940

`A033999(n)*A328797(2*n)`
-/

namespace A112175.P17288072017300978940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A328797 (2 * n)

end

end A112175.P17288072017300978940

/-! ## A112175.P5754263482810946488

`A009001(2*n)*A328795(2*n)`
-/

namespace A112175.P5754263482810946488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A328795 (2 * n)

end

end A112175.P5754263482810946488

/-! ## A112175.P13604316911013964658

`A057077(2*n)*A328795(2*n)`
-/

namespace A112175.P13604316911013964658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A328795 (2 * n)

end

end A112175.P13604316911013964658

/-! ## A112175.P16750115426142831607

`A009531(2*n+1)*A328795(2*n)`
-/

namespace A112175.P16750115426142831607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A328795 (2 * n)

end

end A112175.P16750115426142831607

/-! ## A112175.P4178361425688373265

`A112177(3*n)`
-/

namespace A112175.P4178361425688373265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112177 (3 * n)

end

end A112175.P4178361425688373265

/-!
# A112176: McKay-Thompson series of class 36f for the Monster group.

The programs for A112176, there is no canonical definition to state claims against.
-/

/-! ## A112176.P17605036635630736998

`A033999(n)*A112205(n)`
-/

namespace A112176.P17605036635630736998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112205 n

end

end A112176.P17605036635630736998

/-! ## A112176.P15026073877928878839

`A062243(n)/A057079(n)`
-/

namespace A112176.P15026073877928878839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062243 n : ℚ) / (A057079 n : ℚ)

end

end A112176.P15026073877928878839

/-! ## A112176.P11785159513177185047

`A058487(n)/A131713(n)`
-/

namespace A112176.P11785159513177185047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058487 n : ℚ) / (A131713 n : ℚ)

end

end A112176.P11785159513177185047

/-! ## A112176.P3714797807607377049

`A009001(2*n)*A112205(n)`
-/

namespace A112176.P3714797807607377049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A112205 n

end

end A112176.P3714797807607377049

/-! ## A112176.P10425017325414610143

`A058487(n)/(2-A057079(n)²)`
-/

namespace A112176.P10425017325414610143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058487 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A112176.P10425017325414610143

/-! ## A112176.P6942500594339731315

`A112205(n)/A009001(A005843(n))`
-/

namespace A112176.P6942500594339731315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112205 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A112176.P6942500594339731315

/-! ## A112176.P4849890279309456061

`A112205(n)/A009001(A008458(n))`
-/

namespace A112176.P4849890279309456061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112205 n : ℚ) / (A009001 (A008458 n).toNat : ℚ)

end

end A112176.P4849890279309456061

/-! ## A112176.P8688850943281613262

`A058487(n)/A057079(4*n)`
-/

namespace A112176.P8688850943281613262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058487 n : ℚ) / (A057079 (4 * n) : ℚ)

end

end A112176.P8688850943281613262

/-!
# A112178: McKay-Thompson series of class 36i for the Monster group.

The programs for A112178, there is no canonical definition to state claims against.
-/

/-! ## A112178.P15758181807530864284

`A002654(A097159(n+1))-A086747(n)`
-/

namespace A112178.P15758181807530864284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A097159 (n + 1)).toNat - A086747 n

end

end A112178.P15758181807530864284

/-! ## A112178.P44297073993619001

`A330033(∏{p}[n+1, and(2, -#)]%A330028(n+3))`
-/

namespace A112178.P44297073993619001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), Int.land 2 (-(p : ℤ))) (A330028 (n + 3))).toNat

end

end A112178.P44297073993619001

/-! ## A112178.P5483278822565301916

`A008683(∑[A000032(A266632(n+1))])`
-/

namespace A112178.P5483278822565301916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A266632 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112178.P5483278822565301916

/-! ## A112178.P5956930134277505394

`A087003(A000032(n+1)*A014709(n))`
-/

namespace A112178.P5956930134277505394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A000032 (n + 1) * A014709 n).toNat

end

end A112178.P5956930134277505394

/-!
# A112182: McKay-Thompson series of class 40d for the Monster group.

The programs for A112182, there is no canonical definition to state claims against.
-/

/-! ## A112182.P10034422181061439508

`(-1)^n*A112209(n)`
-/

namespace A112182.P10034422181061439508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112209 n

end

end A112182.P10034422181061439508

/-! ## A112182.P15217568780380874662

`A112209(n)/A033999(n)`
-/

namespace A112182.P15217568780380874662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112209 n : ℚ) / (A033999 n : ℚ)

end

end A112182.P15217568780380874662

/-! ## A112182.P8285894562209403037

`A112181(2*n)`
-/

namespace A112182.P8285894562209403037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112181 (2 * n)

end

end A112182.P8285894562209403037

/-! ## A112182.P18187791486061567037

`A112181(n+n)%A292350(A000040(n+1))`
-/

namespace A112182.P18187791486061567037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112181 (n + n)) (A292350 (A000040 (n + 1)).toNat)

end

end A112182.P18187791486061567037

/-!
# A112183: McKay-Thompson series of class 40e for the Monster group.

The programs for A112183, there is no canonical definition to state claims against.
-/

/-! ## A112183.P10957162292415560721

`A131852(A263293(3*n+4)+A250120(n))`
-/

namespace A112183.P10957162292415560721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A263293 (3 * n + 4) + A250120 n).toNat

end

end A112183.P10957162292415560721

/-!
# A112184: McKay-Thompson series of class 44b for the Monster group.

The programs for A112184, there is no canonical definition to state claims against.
-/

/-! ## A112184.P2552709458903598109

`A033999(n)*A112213(n)`
-/

namespace A112184.P2552709458903598109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112213 n

end

end A112184.P2552709458903598109

/-! ## A112184.P18377098356077205660

`A015643(A053735(n))*A112213(n)`
-/

namespace A112184.P18377098356077205660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015643 (A053735 n).toNat * A112213 n

end

end A112184.P18377098356077205660

/-! ## A112184.P8980277672626717669

`A112213(n)*A112299(2*n+1)`
-/

namespace A112184.P8980277672626717669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112213 n * A112299 (2 * n + 1)

end

end A112184.P8980277672626717669

/-! ## A112184.P3776427717955062738

`A015643(val(A002604(3*n+1)+1, 2))*A112213(n)`
-/

namespace A112184.P3776427717955062738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015643 (SequenceMachineLib.valuation (A002604 (3 * n + 1) + 1).toNat 2) * A112213 n

end

end A112184.P3776427717955062738

/-! ## A112184.P11774473311990272103

`A259774(n)+A010815(A321122(n))`
-/

namespace A112184.P11774473311990272103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259774 n + A010815 (A321122 n).toNat

end

end A112184.P11774473311990272103

/-!
# A112185: McKay-Thompson series of class 45c for the Monster group.

The programs for A112185, there is no canonical definition to state claims against.
-/

/-! ## A112185.P4053542296016300254

`A080323(A081402(n+1)+or(1, n))`
-/

namespace A112185.P4053542296016300254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A081402 (n + 1) + (Nat.lor 1 n : ℤ)).toNat

end

end A112185.P4053542296016300254

/-! ## A112185.P15310471365789153712

`A049347(A053603(A135491(n)))`
-/

namespace A112185.P15310471365789153712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A053603 (A135491 n).toNat).toNat

end

end A112185.P15310471365789153712

/-! ## A112185.P12827761420084435230

`A080323(A109613(n)+A081402(n+1))`
-/

namespace A112185.P12827761420084435230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A109613 n + A081402 (n + 1)).toNat

end

end A112185.P12827761420084435230

/-! ## A112185.P1494416778930791914

`A105385(A193365(n+1)+A003849(n))`
-/

namespace A112185.P1494416778930791914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105385 (A193365 (n + 1) + A003849 n).toNat

end

end A112185.P1494416778930791914

/-! ## A112185.P1761598365604633785

`A270646(A060281(n+1))-A378399(n+1)`
-/

namespace A112185.P1761598365604633785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270646 (A060281 (n + 1)).toNat - A378399 (n + 1)

end

end A112185.P1761598365604633785

/-!
# A112186: McKay-Thompson series of class 48a for the Monster group.

The programs for A112186, there is no canonical definition to state claims against.
-/

/-! ## A112186.P13642761427791930508

`(1-and(2, n))*A112165(n)`
-/

namespace A112186.P13642761427791930508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A112165 n

end

end A112186.P13642761427791930508

/-! ## A112186.P5682331844784334453

`A033999(n)*A112187(n)`
-/

namespace A112186.P5682331844784334453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112187 n

end

end A112186.P5682331844784334453

/-! ## A112186.P6903713573187348690

`A058574(n)*A087960(n)`
-/

namespace A112186.P6903713573187348690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058574 n * A087960 n

end

end A112186.P6903713573187348690

/-! ## A112186.P3906412830239221434

`A057077(n)*A112165(n)`
-/

namespace A112186.P3906412830239221434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112165 n

end

end A112186.P3906412830239221434

/-! ## A112186.P3756542058804708316

`A112187(Δ[A008619(n)])*A112187(n)`
-/

namespace A112186.P3756542058804708316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112187 (f1 (n + 1) - f1 n).toNat * A112187 n

end

end A112186.P3756542058804708316

/-! ## A112186.P12479036862566881585

`A112187(n)/A057077(A057077(n)+n)`
-/

namespace A112186.P12479036862566881585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112187 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112186.P12479036862566881585

/-! ## A112186.P11352626499245607507

`A057077(n+1)*A058574(n)`
-/

namespace A112186.P11352626499245607507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A058574 n

end

end A112186.P11352626499245607507

/-! ## A112186.P5978185671271143529

`A057077(2*n)*A112187(n)`
-/

namespace A112186.P5978185671271143529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112187 n

end

end A112186.P5978185671271143529

/-! ## A112186.P12637749096439415441

`A087960(2*n)*A112187(n)`
-/

namespace A112186.P12637749096439415441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112187 n

end

end A112186.P12637749096439415441

/-! ## A112186.P8793661892147769750

`A112187(n)/A087960(n²)`
-/

namespace A112186.P8793661892147769750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112187 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112186.P8793661892147769750

/-!
# A112187: McKay-Thompson series of class 48b for the Monster group.

The programs for A112187, there is no canonical definition to state claims against.
-/

/-! ## A112187.P10025507230612428251

`(1-and(2, n+1))*A112165(n)`
-/

namespace A112187.P10025507230612428251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 (n + 1) : ℤ)) * A112165 n

end

end A112187.P10025507230612428251

/-! ## A112187.P8005675083256652578

`A057077(n)*A058574(n)`
-/

namespace A112187.P8005675083256652578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A058574 n

end

end A112187.P8005675083256652578

/-! ## A112187.P11405024432848086025

`A033999(n)*A112186(n)`
-/

namespace A112187.P11405024432848086025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112186 n

end

end A112187.P11405024432848086025

/-! ## A112187.P12759781793869175795

`A087960(n)*A112165(n)`
-/

namespace A112187.P12759781793869175795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112165 n

end

end A112187.P12759781793869175795

/-! ## A112187.P12312360615810155132

`A112186(n)/A057077(A057077(n)+n)`
-/

namespace A112187.P12312360615810155132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112186 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112187.P12312360615810155132

/-! ## A112187.P12152788335998595625

`A057077(n+1)*A112165(n)`
-/

namespace A112187.P12152788335998595625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112165 n

end

end A112187.P12152788335998595625

/-! ## A112187.P609049695692891214

`A112186(n)*A159854(Δ[A004526(n)])`
-/

namespace A112187.P609049695692891214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112186 n * A159854 (f1 (n + 1) - f1 n).toNat

end

end A112187.P609049695692891214

/-! ## A112187.P7268703373434991445

`A057077(2*n)*A112186(n)`
-/

namespace A112187.P7268703373434991445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112186 n

end

end A112187.P7268703373434991445

/-! ## A112187.P15616547860068658941

`A087960(2*n)*A112186(n)`
-/

namespace A112187.P15616547860068658941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112186 n

end

end A112187.P15616547860068658941

/-! ## A112187.P13799511267927726598

`A057077(A004277(n))*A057077(n)*A112165(n)`
-/

namespace A112187.P13799511267927726598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A004277 n).toNat * A057077 n * A112165 n

end

end A112187.P13799511267927726598

/-! ## A112187.P4582631984770561203

`A112186(n)/A087960(n²)`
-/

namespace A112187.P4582631984770561203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112186 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112187.P4582631984770561203

/-!
# A112188: McKay-Thompson series of class 48c for the Monster group.

The programs for A112188, there is no canonical definition to state claims against.
-/

/-! ## A112188.P8658483959185391278

`A033999(n)*A112189(n)`
-/

namespace A112188.P8658483959185391278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112189 n

end

end A112188.P8658483959185391278

/-! ## A112188.P18129089973695535169

`A057077(n)*A112190(n)`
-/

namespace A112188.P18129089973695535169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112190 n

end

end A112188.P18129089973695535169

/-! ## A112188.P16306414007316295586

`A087960(n)*A112191(n)`
-/

namespace A112188.P16306414007316295586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112191 n

end

end A112188.P16306414007316295586

/-! ## A112188.P10105159198538621007

`A057077(n+1)*A112191(n)`
-/

namespace A112188.P10105159198538621007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112191 n

end

end A112188.P10105159198538621007

/-! ## A112188.P2484546042685005601

`A112189(n)/A033999(n+2)`
-/

namespace A112188.P2484546042685005601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112189 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A112188.P2484546042685005601

/-! ## A112188.P9647015132827076333

`(A004442(n)-n)*A112189(n)`
-/

namespace A112188.P9647015132827076333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112189 n

end

end A112188.P9647015132827076333

/-! ## A112188.P17192109298721298109

`A112189(n)/A057077(A057077(n)+n)`
-/

namespace A112188.P17192109298721298109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112189 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112188.P17192109298721298109

/-! ## A112188.P7287711928055586796

`A057077(2*n)*A112189(n)`
-/

namespace A112188.P7287711928055586796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112189 n

end

end A112188.P7287711928055586796

/-! ## A112188.P2360836739929982201

`A087960(2*n)*A112189(n)`
-/

namespace A112188.P2360836739929982201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112189 n

end

end A112188.P2360836739929982201

/-! ## A112188.P17088184671303447487

`A010892(3*n)*A112189(n)`
-/

namespace A112188.P17088184671303447487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A112189 n

end

end A112188.P17088184671303447487

/-! ## A112188.P5011738998987350579

`A010815(A001318(n))*A112191(n)`
-/

namespace A112188.P5011738998987350579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A001318 n).toNat * A112191 n

end

end A112188.P5011738998987350579

/-! ## A112188.P8222755703107121798

`A112189(n)/A087960(n²)`
-/

namespace A112188.P8222755703107121798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112189 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112188.P8222755703107121798

/-!
# A112189: McKay-Thompson series of class 48d for the Monster group.

The programs for A112189, there is no canonical definition to state claims against.
-/

/-! ## A112189.P11036127722670777443

`A057077(n)*A112191(n)`
-/

namespace A112189.P11036127722670777443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112191 n

end

end A112189.P11036127722670777443

/-! ## A112189.P9968521255235983757

`A087960(n)*A112190(n)`
-/

namespace A112189.P9968521255235983757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112190 n

end

end A112189.P9968521255235983757

/-! ## A112189.P16811225011210300888

`A112190(and(2, -n))*A112190(n)`
-/

namespace A112189.P16811225011210300888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112190 (Int.land 2 (-(n : ℤ))).toNat * A112190 n

end

end A112189.P16811225011210300888

/-! ## A112189.P15793309963044226505

`A057077(n+1)*A112190(n)`
-/

namespace A112189.P15793309963044226505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112190 n

end

end A112189.P15793309963044226505

/-! ## A112189.P3706475260770888584

`A033999(n)*A112188(n)`
-/

namespace A112189.P3706475260770888584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112188 n

end

end A112189.P3706475260770888584

/-! ## A112189.P385507194568101964

`A112188(n)*A165326(n+1)`
-/

namespace A112189.P385507194568101964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112188 n * A165326 (n + 1)

end

end A112189.P385507194568101964

/-! ## A112189.P13723503800443465260

`(A004442(n)-n)*A112188(n)`
-/

namespace A112189.P13723503800443465260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112188 n

end

end A112189.P13723503800443465260

/-! ## A112189.P16515099825990684059

`A009531(2*n+1)*A112188(n)`
-/

namespace A112189.P16515099825990684059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A112188 n

end

end A112189.P16515099825990684059

/-! ## A112189.P15130581616072888705

`A112188(n)/A165326(A008619(2*n))`
-/

namespace A112189.P15130581616072888705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112188 n : ℚ) / (A165326 (A008619 (2 * n)).toNat : ℚ)

end

end A112189.P15130581616072888705

/-! ## A112189.P890944667031749514

`A112188(n)/A057077(A057077(n)+n)`
-/

namespace A112189.P890944667031749514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112188 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112189.P890944667031749514

/-! ## A112189.P5507636366897843785

`A112188(n)/A165326(A165326(n)+n)`
-/

namespace A112189.P5507636366897843785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112188 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A112189.P5507636366897843785

/-! ## A112189.P5697625560241145026

`A057077(2*n)*A112188(n)`
-/

namespace A112189.P5697625560241145026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112188 n

end

end A112189.P5697625560241145026

/-! ## A112189.P16824329888788935904

`A087960(2*n)*A112188(n)`
-/

namespace A112189.P16824329888788935904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112188 n

end

end A112189.P16824329888788935904

/-! ## A112189.P2829131814289003755

`A112188(n)/A087960(n²)`
-/

namespace A112189.P2829131814289003755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112188 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112189.P2829131814289003755

/-!
# A112190: McKay-Thompson series of class 48e for the Monster group.

The programs for A112190, there is no canonical definition to state claims against.
-/

/-! ## A112190.P10972389009579551902

`A033999(n)*A112191(n)`
-/

namespace A112190.P10972389009579551902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112191 n

end

end A112190.P10972389009579551902

/-! ## A112190.P5675857220803429535

`A087960(n)*A112189(n)`
-/

namespace A112190.P5675857220803429535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112189 n

end

end A112190.P5675857220803429535

/-! ## A112190.P12138470737453926635

`A112191(Δ[or(1, n)])*A112191(n)`
-/

namespace A112190.P12138470737453926635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112191 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A112191 n

end

end A112190.P12138470737453926635

/-! ## A112190.P7196884252846149306

`A112191(n)/A057077(A057077(n)+n)`
-/

namespace A112190.P7196884252846149306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112191 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112190.P7196884252846149306

/-! ## A112190.P15400621500314742296

`A057077(n+1)*A112189(n)`
-/

namespace A112190.P15400621500314742296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112189 n

end

end A112190.P15400621500314742296

/-! ## A112190.P16350919469064051054

`A010892(A032766(n+1))*A112189(n)`
-/

namespace A112190.P16350919469064051054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A032766 (n + 1)).toNat * A112189 n

end

end A112190.P16350919469064051054

/-! ## A112190.P10645936559036841801

`A057077(n)*A112188(n)`
-/

namespace A112190.P10645936559036841801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112188 n

end

end A112190.P10645936559036841801

/-! ## A112190.P12447553793424228130

`A112188(n)*A165326(A008619(n))`
-/

namespace A112190.P12447553793424228130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112188 n * A165326 (A008619 n).toNat

end

end A112190.P12447553793424228130

/-! ## A112190.P14878829680159874470

`A056594(2*n)*A112191(n)`
-/

namespace A112190.P14878829680159874470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A112191 n

end

end A112190.P14878829680159874470

/-! ## A112190.P17844527446998374042

`A057077(2*n)*A112191(n)`
-/

namespace A112190.P17844527446998374042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112191 n

end

end A112190.P17844527446998374042

/-! ## A112190.P17768201680988068817

`A087960(2*n)*A112191(n)`
-/

namespace A112190.P17768201680988068817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112191 n

end

end A112190.P17768201680988068817

/-! ## A112190.P2819224998541210956

`A112191(n)/A087960(n²)`
-/

namespace A112190.P2819224998541210956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112191 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A112190.P2819224998541210956

/-!
# A112191: McKay-Thompson series of class 48f for the Monster group.

The programs for A112191, there is no canonical definition to state claims against.
-/

/-! ## A112191.P8184422138265378957

`(-1)^n*A112190(n)`
-/

namespace A112191.P8184422138265378957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112190 n

end

end A112191.P8184422138265378957

/-! ## A112191.P2004853064034608334

`A057077(n)*A112189(n)`
-/

namespace A112191.P2004853064034608334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112189 n

end

end A112191.P2004853064034608334

/-! ## A112191.P13875144342381212991

`A112190(n)/A033999(n)`
-/

namespace A112191.P13875144342381212991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112190 n : ℚ) / (A033999 n : ℚ)

end

end A112191.P13875144342381212991

/-! ## A112191.P15753360418397983464

`A112190(n)/(-1)^A161641(n+1)`
-/

namespace A112191.P15753360418397983464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112190 n : ℚ) / (-1 : ℚ) ^ (A161641 (n + 1) : ℤ)

end

end A112191.P15753360418397983464

/-! ## A112191.P12176675109316581013

`A112190(n)/A057077(A057077(n)+n)`
-/

namespace A112191.P12176675109316581013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112190 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A112191.P12176675109316581013

/-! ## A112191.P11562680162451670352

`A010892(A032766(n))*A112189(n)`
-/

namespace A112191.P11562680162451670352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A032766 n).toNat * A112189 n

end

end A112191.P11562680162451670352

/-! ## A112191.P6653259108032169936

`A087960(n)*A112188(n)`
-/

namespace A112191.P6653259108032169936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112188 n

end

end A112191.P6653259108032169936

/-! ## A112191.P5563705480916440928

`A057077(n+1)*A112188(n)`
-/

namespace A112191.P5563705480916440928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112188 n

end

end A112191.P5563705480916440928

/-! ## A112191.P2597176952626246151

`A112188(n)*A165326(A008619(n+1))`
-/

namespace A112191.P2597176952626246151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112188 n * A165326 (A008619 (n + 1)).toNat

end

end A112191.P2597176952626246151

/-! ## A112191.P6249853510827389925

`A112190(n)/A057077(2*n)`
-/

namespace A112191.P6249853510827389925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112190 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A112191.P6249853510827389925

/-! ## A112191.P13065139923365814123

`A112190(n)/A087960(2*n)`
-/

namespace A112191.P13065139923365814123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112190 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A112191.P13065139923365814123

/-!
# A112192: Coefficients of replicable function number "48h".

The programs for A112192, there is no canonical definition to state claims against.
-/

/-! ## A112192.P7378557809215664186

`A112186(2*n)`
-/

namespace A112192.P7378557809215664186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112186 (2 * n)

end

end A112192.P7378557809215664186

/-! ## A112192.P2490559875159454433

`A112187(2*n)`
-/

namespace A112192.P2490559875159454433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112187 (2 * n)

end

end A112192.P2490559875159454433

/-! ## A112192.P9855410943815072863

`abs(A058574(2*n))`
-/

namespace A112192.P9855410943815072863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058574 (2 * n)|

end

end A112192.P9855410943815072863

/-! ## A112192.P13646784501796545432

`abs(A112165(2*n))`
-/

namespace A112192.P13646784501796545432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112165 (2 * n)|

end

end A112192.P13646784501796545432

/-! ## A112192.P15462011182143934635

`A112186(n+n)^gcd(n, n+1)`
-/

namespace A112192.P15462011182143934635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112186 (n + n) ^ Nat.gcd n (n + 1)

end

end A112192.P15462011182143934635

/-! ## A112192.P2528749958559139089

`A033999(n)*A058574(2*n)`
-/

namespace A112192.P2528749958559139089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058574 (2 * n)

end

end A112192.P2528749958559139089

/-! ## A112192.P7989922364868731968

`A033999(n)*A112165(2*n)`
-/

namespace A112192.P7989922364868731968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112165 (2 * n)

end

end A112192.P7989922364868731968

/-! ## A112192.P9295327449195629172

`lcm(A057077(n), A112165(2*n))`
-/

namespace A112192.P9295327449195629172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A112165 (2 * n))

end

end A112192.P9295327449195629172

/-! ## A112192.P13491444145625696252

`A057077(2*n)*A058574(2*n)`
-/

namespace A112192.P13491444145625696252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A058574 (2 * n)

end

end A112192.P13491444145625696252

/-! ## A112192.P12438304627520419630

`A058574(2*n)*A087960(2*n)`
-/

namespace A112192.P12438304627520419630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058574 (2 * n) * A087960 (2 * n)

end

end A112192.P12438304627520419630

/-! ## A112192.P9111988973305731614

`A056594(2*n)*A112165(2*n)`
-/

namespace A112192.P9111988973305731614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A112165 (2 * n)

end

end A112192.P9111988973305731614

/-! ## A112192.P8921324315737614073

`A057077(2*n)*A112165(2*n)`
-/

namespace A112192.P8921324315737614073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112165 (2 * n)

end

end A112192.P8921324315737614073

/-! ## A112192.P8268774062244474099

`A087960(2*n)*A112165(2*n)`
-/

namespace A112192.P8268774062244474099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112165 (2 * n)

end

end A112192.P8268774062244474099

/-!
# A112193: Coefficients of replicable function number "54b".

The programs for A112193, there is no canonical definition to state claims against.
-/

/-! ## A112193.P9974727410976958176

`A290307(eq[8, A025581(n)])`
-/

namespace A112193.P9974727410976958176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112193.P9974727410976958176

/-! ## A112193.P7645185984387687309

`A290307(A052905(n+6)-4)`
-/

namespace A112193.P7645185984387687309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A052905 (n + 6) - 4).toNat

end

end A112193.P7645185984387687309

/-! ## A112193.P6872956140831594333

`A290307(A027379(n+7)-6)`
-/

namespace A112193.P6872956140831594333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A027379 (n + 7) - 6).toNat

end

end A112193.P6872956140831594333

/-! ## A112193.P13790640283747076768

`A290307(A000096(n+7)+n+1)`
-/

namespace A112193.P13790640283747076768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A112193.P13790640283747076768

/-!
# A112194: McKay-Thompson series of class 54c for the Monster group.

The programs for A112194, there is no canonical definition to state claims against.
-/

/-! ## A112194.P13954475511498665762

`A097793(n+1)-A059841(A144300(2*n+5))`
-/

namespace A112194.P13954475511498665762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097793 (n + 1) - A059841 (A144300 (2 * n + 5)).toNat

end

end A112194.P13954475511498665762

/-! ## A112194.P3788120939810789025

`A029018(n)-A342753(record[A164936(2*(n+2))])`
-/

namespace A112194.P3788120939810789025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164936 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029018 n - A342753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112194.P3788120939810789025

/-!
# A112195: McKay-Thompson series of class 54d for the Monster group.

The programs for A112195, there is no canonical definition to state claims against.
-/

/-! ## A112195.P5483080206727708259

`A132179(n)%A109007(A050534(n))`
-/

namespace A112195.P5483080206727708259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132179 n) (A109007 (A050534 n).toNat)

end

end A112195.P5483080206727708259

/-! ## A112195.P3119961315811422625

`(A132167(n+1)*A132179(n))%3`
-/

namespace A112195.P3119961315811422625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132167 (n + 1) * A132179 n) 3

end

end A112195.P3119961315811422625

/-! ## A112195.P15069130509032238166

`A062244(2*n)%A326203(A006094(3*n+5))`
-/

namespace A112195.P15069130509032238166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062244 (2 * n)) (A326203 (A006094 (3 * n + 5)).toNat)

end

end A112195.P15069130509032238166

/-! ## A112195.P14812444000252674892

`A062242(2*n)%A006530(A007283(n))`
-/

namespace A112195.P14812444000252674892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062242 (2 * n)) (A006530 (A007283 n).toNat)

end

end A112195.P14812444000252674892

/-!
# A112197: McKay-Thompson series of class 56b for the Monster group.

The programs for A112197, there is no canonical definition to state claims against.
-/

/-! ## A112197.P5088595277638912340

`(-1)^n*A112198(n)`
-/

namespace A112197.P5088595277638912340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112198 n

end

end A112197.P5088595277638912340

/-! ## A112197.P14451575162443353932

`A112198(n)/A033999(n)`
-/

namespace A112197.P14451575162443353932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112198 n : ℚ) / (A033999 n : ℚ)

end

end A112197.P14451575162443353932

/-! ## A112197.P13780655986558948304

`A112198(n)/A009001(2*n)`
-/

namespace A112197.P13780655986558948304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112198 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A112197.P13780655986558948304

/-! ## A112197.P13792342828151675428

`A112198(n)*A209615(2*n+1)`
-/

namespace A112197.P13792342828151675428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112198 n * A209615 (2 * n + 1)

end

end A112197.P13792342828151675428

/-! ## A112197.P12898473281568008545

`A112198(n)/A057077(A005408(n))`
-/

namespace A112197.P12898473281568008545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112198 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A112197.P12898473281568008545

/-!
# A112198: McKay-Thompson series of class 56c for the Monster group.

The programs for A112198, there is no canonical definition to state claims against.
-/

/-! ## A112198.P13885980507744406962

`A033999(n)*A112197(n)`
-/

namespace A112198.P13885980507744406962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112197 n

end

end A112198.P13885980507744406962

/-! ## A112198.P4396685207025772879

`A009001(2*n)*A112197(n)`
-/

namespace A112198.P4396685207025772879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A112197 n

end

end A112198.P4396685207025772879

/-! ## A112198.P9676527454884471464

`A016310(Δ[A004526(n)])*A112197(n)`
-/

namespace A112198.P9676527454884471464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016310 (f1 (n + 1) - f1 n).toNat * A112197 n

end

end A112198.P9676527454884471464

/-! ## A112198.P6274834985292175796

`A057077(2*n)*A112197(n)`
-/

namespace A112198.P6274834985292175796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112197 n

end

end A112198.P6274834985292175796

/-! ## A112198.P15717614143748968904

`A112197(n)/A057077(A005408(n))`
-/

namespace A112198.P15717614143748968904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112197 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A112198.P15717614143748968904

/-! ## A112198.P3068365790065498854

`A010892(3*n)*A112197(n)`
-/

namespace A112198.P3068365790065498854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A112197 n

end

end A112198.P3068365790065498854

/-!
# A112199: McKay-Thompson series of class 57A for the Monster group.

The programs for A112199, there is no canonical definition to state claims against.
-/

/-! ## A112199.P14081045278705835498

`A376741(A134950(n+1))`
-/

namespace A112199.P14081045278705835498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376741 (A134950 (n + 1)).toNat

end

end A112199.P14081045278705835498

/-! ## A112199.P4694897168838995732

`A000607(n+3)-A333382(A118413(n+1))`
-/

namespace A112199.P4694897168838995732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (n + 3) - A333382 (A118413 (n + 1)).toNat

end

end A112199.P4694897168838995732

