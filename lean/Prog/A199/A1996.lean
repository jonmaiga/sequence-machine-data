import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199626: G.f.: (1+x)^(2*g)*(1+x^3)^(3*g)/((1-x^2)*(1-x^4))-x^(2*g)*(1+x)^4/((1-x^2)*(1-x^4)) for g=0.

The programs for A199626, the canonical program `A199626.P4661212132332245085` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199626 has offset 0).

The definition of A199626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199626.P4661212132332245085

`A026741(A106249(n))-A056991(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199626

/-- `A026741(A106249(n))-A056991(n+1)` -/
def P4661212132332245085.Spec : Prop :=
  ∀ n, P4661212132332245085.a n = A199626 n

theorem P4661212132332245085.correct : P4661212132332245085.Spec := by
  intro n
  simp only [A199626]

end A199626

/-! ## A199626.P9180847877297147331

`A097065(A057979(n+1))-(2*n+1)`
-/

namespace A199626.P9180847877297147331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A057979 (n + 1)).toNat - (2 * n + 1 : ℤ)

end

end A199626.P9180847877297147331

namespace A199626

/-- `A097065(A057979(n+1))-(2*n+1)` -/
def P9180847877297147331.Spec : Prop :=
  ∀ n, P9180847877297147331.a n = A199626 n

end A199626

/-! ## A199626.P9762539514150708377

`A029579(n)-A166517(A029579(n)+n)`
-/

namespace A199626.P9762539514150708377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n - A166517 (A029579 n + (n : ℤ)).toNat

end

end A199626.P9762539514150708377

namespace A199626

/-- `A029579(n)-A166517(A029579(n)+n)` -/
def P9762539514150708377.Spec : Prop :=
  ∀ n, P9762539514150708377.a n = A199626 n

end A199626

/-! ## A199626.P1453886994624060216

`A071325(A162766(n+1))-A056991(n+1)`
-/

namespace A199626.P1453886994624060216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A162766 (n + 1)).toNat - A056991 (n + 1)

end

end A199626.P1453886994624060216

namespace A199626

/-- `A071325(A162766(n+1))-A056991(n+1)` -/
def P1453886994624060216.Spec : Prop :=
  ∀ n, P1453886994624060216.a n = A199626 n

end A199626

/-!
# A199627: G.f.: (1+x)^(2*g)*(1+x^3)^(3*g)/((1-x^2)*(1-x^4))-x^(2*g)*(1+x)^4/((1-x^2)*(1-x^4)) for g=1.

The programs for A199627, the canonical program `A199627.P16483862055327424848` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199627 has offset 0).

The definition of A199627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199627.P16483862055327424848

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=4, a(7)=7, a(8)=8, a(9)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199627

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P16483862055327424848.Spec : Prop :=
  ∀ n, P16483862055327424848.a n = A199627 n

theorem P16483862055327424848.correct : P16483862055327424848.Spec := by
  intro n
  simp only [A199627]

end A199627

/-!
# A199629: G.f.: (1+x)^(2*g)*(1+x^3)^(3*g)/((1-x^2)*(1-x^4))-x^(2*g)*(1+x)^4/((1-x^2)*(1-x^4)) for g=3.

The programs for A199629, there is no canonical definition to state claims against.
-/

/-! ## A199629.P874553080386921233

`A278761(A301288(n+1))`
-/

namespace A199629.P874553080386921233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278761 (A301288 (n + 1)).toNat

end

end A199629.P874553080386921233

/-! ## A199629.P2621068404698989145

`A291791(A057000(n)+a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A199629.P2621068404698989145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A291791 (A057000 n + a (n - 1)).toNat

end

end A199629.P2621068404698989145

/-!
# A199632: Numbers having each digit once and whose 5th power has each digit five times.

The programs for A199632, there is no canonical definition to state claims against.
-/

/-! ## A199632.P5826663025303904550

`A114261(n+2)`
-/

namespace A199632.P5826663025303904550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114261 (n + 2)

end

end A199632.P5826663025303904550

/-! ## A199632.P4304987403442186100

`record[A114261(Δ[A061885(n)])]`
-/

namespace A199632.P4304987403442186100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114261 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199632.P4304987403442186100

/-!
# A199635: Indices of Fibonacci numbers containing an equal number of odd and even digits.

The programs for A199635, there is no canonical definition to state claims against.
-/

/-! ## A199635.P9395639614735889538

`eq[2*A138468(n), A060384(n)]`
-/

namespace A199635.P9395639614735889538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199635.P9395639614735889538

/-! ## A199635.P1893720819958198994

`eq[A005843(A138468(n)), A060384(n)]`
-/

namespace A199635.P1893720819958198994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A138468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199635.P1893720819958198994

/-! ## A199635.P4602127312692218519

`eq[∑{digits}[A000045(n), #%2], A138468(n)]`
-/

namespace A199635.P4602127312692218519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x % 2).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A199635.P4602127312692218519

/-! ## A199635.P9462230593749315847

`eq[A136610(n), A138468(n)]`
-/

namespace A199635.P9462230593749315847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199635.P9462230593749315847

/-! ## A199635.P6081064352188598047

`eq[2*A136610(n), A060384(n)]`
-/

namespace A199635.P6081064352188598047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199635.P6081064352188598047

/-!
# A199637: Least odd number k such that in the Collatz sequence of k there are n even numbers.

The programs for A199637, there is no canonical definition to state claims against.
-/

/-! ## A199637.P8760458463048468514

`A199636(A060322(n+4)+3)`
-/

namespace A199637.P8760458463048468514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199636 (A060322 (n + 4) + 3).toNat

end

end A199637.P8760458463048468514

/-! ## A199637.P11673250650840657905

`A199636(∑[A131450(n+3)]+4)`
-/

namespace A199637.P11673250650840657905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131450 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199636 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A199637.P11673250650840657905

/-!
# A199638: Last number in row n of triangle A199636.

The programs for A199638, there is no canonical definition to state claims against.
-/

/-! ## A199638.P2103872484340975802

`A199636(A060322(n+5)+2)`
-/

namespace A199638.P2103872484340975802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199636 (A060322 (n + 5) + 2).toNat

end

end A199638.P2103872484340975802

/-! ## A199638.P13760141899494479038

`A221473(A032551(n+2))`
-/

namespace A199638.P13760141899494479038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221473 (A032551 (n + 2)).toNat

end

end A199638.P13760141899494479038

/-! ## A199638.P1627637337085081829

`A221473(A038548(4^n))`
-/

namespace A199638.P1627637337085081829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221473 (A038548 (4 ^ n)).toNat

end

end A199638.P1627637337085081829

/-!
# A199640: Number of n X n 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199640, there is no canonical definition to state claims against.
-/

/-! ## A199640.P7582334085707032525

`ceil(A185551(n+1)/2)`
-/

namespace A199640.P7582334085707032525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185551 (n + 1) : ℚ) / 2⌉

end

end A199640.P7582334085707032525

/-! ## A199640.P4200435274005821183

`A199647(∑[4*n]+1)`
-/

namespace A199640.P4200435274005821183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199640.P4200435274005821183

/-!
# A199641: Number of n X 2 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199641, the canonical program `A199641.P16294578546181588555` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199641 has offset 1).

The definition of A199641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199641.P16294578546181588555

`ceil(A185552(n+1)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A199641

/-- `ceil(A185552(n+1)/2)` -/
def P16294578546181588555.Spec : Prop :=
  ∀ n, P16294578546181588555.a n = A199641 (n + 1)

theorem P16294578546181588555.correct : P16294578546181588555.Spec := by
  intro n
  simp only [A199641, Nat.add_sub_cancel]

end A199641

/-! ## A199641.P11238544466959534734

`round(A185552(A028310(n+1))/2)`
-/

namespace A199641.P11238544466959534734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185552 (A028310 (n + 1)).toNat : ℚ) / 2)

end

end A199641.P11238544466959534734

namespace A199641

/-- `round(A185552(A028310(n+1))/2)` -/
def P11238544466959534734.Spec : Prop :=
  ∀ n, P11238544466959534734.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P9926893943116930428

`round(A185552(n+1)/A036453(n+1))`
-/

namespace A199641.P9926893943116930428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ))

end

end A199641.P9926893943116930428

namespace A199641

/-- `round(A185552(n+1)/A036453(n+1))` -/
def P9926893943116930428.Spec : Prop :=
  ∀ n, P9926893943116930428.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P4589203887354733126

`round(A185552(n+1)/2*A054977(n))`
-/

namespace A199641.P4589203887354733126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2 * (A054977 n : ℚ))

end

end A199641.P4589203887354733126

namespace A199641

/-- `round(A185552(n+1)/2*A054977(n))` -/
def P4589203887354733126.Spec : Prop :=
  ∀ n, P4589203887354733126.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P18271197204746907522

`gcd(round(A185552(n+1)/2), A000038(n))`
-/

namespace A199641.P18271197204746907522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2)) (A000038 n)

end

end A199641.P18271197204746907522

namespace A199641

/-- `gcd(round(A185552(n+1)/2), A000038(n))` -/
def P18271197204746907522.Spec : Prop :=
  ∀ n, (P18271197204746907522.a n : ℤ) = A199641 (n + 1)

end A199641

/-! ## A199641.P14010873597642402041

`or(round(A185552(n+1)/2), A000007(n))`
-/

namespace A199641.P14010873597642402041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2)) (A000007 n)

end

end A199641.P14010873597642402041

namespace A199641

/-- `or(round(A185552(n+1)/2), A000007(n))` -/
def P14010873597642402041.Spec : Prop :=
  ∀ n, P14010873597642402041.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P3464983314313477681

`A010674(2*n)+round(A185552(n+1)/2)`
-/

namespace A199641.P3464983314313477681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 (2 * n) + SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2)

end

end A199641.P3464983314313477681

namespace A199641

/-- `A010674(2*n)+round(A185552(n+1)/2)` -/
def P3464983314313477681.Spec : Prop :=
  ∀ n, P3464983314313477681.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P17809660140418060802

`A007318(C(3, n))*round(A185552(n+1)/2)`
-/

namespace A199641.P17809660140418060802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2)

end

end A199641.P17809660140418060802

namespace A199641

/-- `A007318(C(3, n))*round(A185552(n+1)/2)` -/
def P17809660140418060802.Spec : Prop :=
  ∀ n, P17809660140418060802.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P3627579833768146310

`char[A281294(n+1)]+round(A185552(n+1)/2)`
-/

namespace A199641.P3627579833768146310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281294 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2)

end

end A199641.P3627579833768146310

namespace A199641

/-- `char[A281294(n+1)]+round(A185552(n+1)/2)` -/
def P3627579833768146310.Spec : Prop :=
  ∀ n, P3627579833768146310.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P2679809236652225651

`round(A185552(n+1)/2)*char[n-2*A196199(n)]`
-/

namespace A199641.P2679809236652225651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A196199 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A199641.P2679809236652225651

namespace A199641

/-- `round(A185552(n+1)/2)*char[n-2*A196199(n)]` -/
def P2679809236652225651.Spec : Prop :=
  ∀ n, P2679809236652225651.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P8686109237544131348

`round(A185552(n+1)/2)-A010674(A082742(n+1))`
-/

namespace A199641.P8686109237544131348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2) - A010674 (A082742 (n + 1)).toNat

end

end A199641.P8686109237544131348

namespace A199641

/-- `round(A185552(n+1)/2)-A010674(A082742(n+1))` -/
def P8686109237544131348.Spec : Prop :=
  ∀ n, P8686109237544131348.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P10026334169469563836

`round(A185552(n+1)/2)*A001221(A056206(n+1))`
-/

namespace A199641.P10026334169469563836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2) * A001221 (A056206 (n + 1)).toNat

end

end A199641.P10026334169469563836

namespace A199641

/-- `round(A185552(n+1)/2)*A001221(A056206(n+1))` -/
def P10026334169469563836.Spec : Prop :=
  ∀ n, P10026334169469563836.a n = A199641 (n + 1)

end A199641

/-! ## A199641.P7593751420053989025

`round(A185552(n+1)/2)%A237905(n+1)`
-/

namespace A199641.P7593751420053989025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A185552 (n + 1) : ℚ) / 2)) (A237905 (n + 1))

end

end A199641.P7593751420053989025

namespace A199641

/-- `round(A185552(n+1)/2)%A237905(n+1)` -/
def P7593751420053989025.Spec : Prop :=
  ∀ n, P7593751420053989025.a n = A199641 (n + 1)

end A199641

/-!
# A199642: Number of nX3 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199642, there is no canonical definition to state claims against.
-/

/-! ## A199642.P7080024813448672262

`ceil(A185553(n+1)/2)`
-/

namespace A199642.P7080024813448672262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185553 (n + 1) : ℚ) / 2⌉

end

end A199642.P7080024813448672262

/-! ## A199642.P12875963668643001119

`A185553(n+1)/A036453(n+1)`
-/

namespace A199642.P12875963668643001119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185553 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A199642.P12875963668643001119

/-! ## A199642.P17133263666618698256

`A185553(n+1)/A006530(A001316(n))`
-/

namespace A199642.P17133263666618698256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185553 (n + 1) : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A199642.P17133263666618698256

/-! ## A199642.P8895530625418353884

`A185553(n+1)/A020639(A005893(n))`
-/

namespace A199642.P8895530625418353884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185553 (n + 1) : ℚ) / (A020639 (A005893 n).toNat : ℚ)

end

end A199642.P8895530625418353884

/-! ## A199642.P361148660827629282

`A185553(n+1)/A020639(A008458(n))`
-/

namespace A199642.P361148660827629282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185553 (n + 1) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A199642.P361148660827629282

/-! ## A199642.P18201079298714228831

`A185553(n+1)/A020639(A008574(n))`
-/

namespace A199642.P18201079298714228831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185553 (n + 1) : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A199642.P18201079298714228831

/-! ## A199642.P2242275485396132702

`A185553(n+1)/A020639(A037225(n))`
-/

namespace A199642.P2242275485396132702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185553 (n + 1) : ℚ) / (A020639 (A037225 n).toNat : ℚ)

end

end A199642.P2242275485396132702

/-! ## A199642.P11183180584581506134

`A185553(n+1)/A020639(A103517(n))`
-/

namespace A199642.P11183180584581506134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185553 (n + 1) : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A199642.P11183180584581506134

/-!
# A199643: Number of nX4 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199643, there is no canonical definition to state claims against.
-/

/-! ## A199643.P15586255676932452529

`ceil(A185554(n+1)/2)`
-/

namespace A199643.P15586255676932452529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185554 (n + 1) : ℚ) / 2⌉

end

end A199643.P15586255676932452529

/-! ## A199643.P15739961433722878364

`A185554(n%a(n-1)+1)/2` with `a(0)=2`
-/

namespace A199643.P15739961433722878364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A185554 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) + 1).toNat : ℚ) / 2

end

end A199643.P15739961433722878364

/-! ## A199643.P5752547331457489683

`floor((A185554(n+1)+A054977(n))/2)`
-/

namespace A199643.P5752547331457489683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185554 (n + 1) + A054977 n : ℚ) / 2⌋

end

end A199643.P5752547331457489683

/-! ## A199643.P242431954219104438

`round(A185554(n+1)/A020639(2*(n+1)))`
-/

namespace A199643.P242431954219104438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185554 (n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A199643.P242431954219104438

/-! ## A199643.P2282481049855644068

`round(A185554(n+1)/2*A014963(40*(n+1)))`
-/

namespace A199643.P2282481049855644068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185554 (n + 1) : ℚ) / 2 * (A014963 (40 * (n + 1)) : ℚ))

end

end A199643.P2282481049855644068

/-! ## A199643.P15297751033663754545

`round(A001222(C(n, n²)!)+A185554(n+1)/2)`
-/

namespace A199643.P15297751033663754545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ) + (A185554 (n + 1) : ℚ) / 2)

end

end A199643.P15297751033663754545

/-!
# A199644: Number of nX5 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199644, there is no canonical definition to state claims against.
-/

/-! ## A199644.P15492304542455412388

`ceil(A185555(n+1)/2)`
-/

namespace A199644.P15492304542455412388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185555 (n + 1) : ℚ) / 2⌉

end

end A199644.P15492304542455412388

/-! ## A199644.P11380862186545531418

`(A185555(n+1)+A000007(n))/2`
-/

namespace A199644.P11380862186545531418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185555 (n + 1) + A000007 n : ℚ) / 2

end

end A199644.P11380862186545531418

/-! ## A199644.P18102711210410209641

`A199647(A374005(n+1))`
-/

namespace A199644.P18102711210410209641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (A374005 (n + 1)).toNat

end

end A199644.P18102711210410209641

/-! ## A199644.P18208248333378940693

`A199647(A155212(n)+13)`
-/

namespace A199644.P18208248333378940693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (A155212 n + 13).toNat

end

end A199644.P18208248333378940693

/-! ## A199644.P13484185256549682747

`A199647(eq[4, A193592(n)])`
-/

namespace A199644.P13484185256549682747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199644.P13484185256549682747

/-!
# A199645: Number of nX6 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199645, there is no canonical definition to state claims against.
-/

/-! ## A199645.P17436094932400913185

`ceil(A185556(n+1)/2)`
-/

namespace A199645.P17436094932400913185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185556 (n + 1) : ℚ) / 2⌉

end

end A199645.P17436094932400913185

/-! ## A199645.P6368790620180221030

`(A185556(n+1)+A000007(n))/2`
-/

namespace A199645.P6368790620180221030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185556 (n + 1) + A000007 n : ℚ) / 2

end

end A199645.P6368790620180221030

/-! ## A199645.P4254681726611648874

`round(A185556(n+1)/A036453(A153643(n)))`
-/

namespace A199645.P4254681726611648874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185556 (n + 1) : ℚ) / (A036453 (A153643 n).toNat : ℚ))

end

end A199645.P4254681726611648874

/-! ## A199645.P5410302650133581313

`A199647(A374007(n+1))`
-/

namespace A199645.P5410302650133581313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (A374007 (n + 1)).toNat

end

end A199645.P5410302650133581313

/-!
# A199646: Number of nX7 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199646, there is no canonical definition to state claims against.
-/

/-! ## A199646.P8391224260484043317

`A199647(A374008(n+1))`
-/

namespace A199646.P8391224260484043317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (A374008 (n + 1)).toNat

end

end A199646.P8391224260484043317

/-! ## A199646.P7951935598165985727

`A199647(eq[11, A066657(n)])`
-/

namespace A199646.P7951935598165985727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199646.P7951935598165985727

/-! ## A199646.P10457718690412653326

`A199647(A077169(n+7)+2)`
-/

namespace A199646.P10457718690412653326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (A077169 (n + 7) + 2).toNat

end

end A199646.P10457718690412653326

/-! ## A199646.P14792819151774745033

`A199647(A133263(n+6)+5)`
-/

namespace A199646.P14792819151774745033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (A133263 (n + 6) + 5).toNat

end

end A199646.P14792819151774745033

/-! ## A199646.P4624840677268178065

`A199647(eq[8, A131818(n+1)])`
-/

namespace A199646.P4624840677268178065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199646.P4624840677268178065

/-!
# A199647: T(n,k)=Number of nXk 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199647, there is no canonical definition to state claims against.
-/

/-! ## A199647.P9231182290842609908

`ceil(A185559(n+1)/2)`
-/

namespace A199647.P9231182290842609908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185559 (n + 1) : ℚ) / 2⌉

end

end A199647.P9231182290842609908

/-! ## A199647.P10614905536700706230

`round(A185559(n+1)/ratio[A005578(n)])`
-/

namespace A199647.P10614905536700706230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185559 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A199647.P10614905536700706230

/-! ## A199647.P11716550195728601105

`round(A185559(n+1)/ratio[A128209(n)])`
-/

namespace A199647.P11716550195728601105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185559 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A199647.P11716550195728601105

/-! ## A199647.P5155051653434952505

`round(A185559(n+1)/ratio[A153643(n)])`
-/

namespace A199647.P5155051653434952505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185559 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A199647.P5155051653434952505

/-! ## A199647.P7089207991600229774

`round(A185559(n+1)/A036453(n+1))`
-/

namespace A199647.P7089207991600229774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185559 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ))

end

end A199647.P7089207991600229774

/-!
# A199648: Number of n X n 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199648, there is no canonical definition to state claims against.
-/

/-! ## A199648.P17464715117581634070

`A199655(∑[4*n]+1)`
-/

namespace A199648.P17464715117581634070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199648.P17464715117581634070

/-! ## A199648.P1571378841409661403

`record[A003982(n)*A199655(n+1)]`
-/

namespace A199648.P1571378841409661403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A199655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199648.P1571378841409661403

/-! ## A199648.P7677889436481306650

`record[gcd(A008482(n), A199655(n+1))]`
-/

namespace A199648.P7677889436481306650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A199655 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199648.P7677889436481306650

/-!
# A199649: Number of n X 2 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199649, there is no canonical definition to state claims against.
-/

/-! ## A199649.P3035817189634268305

`A199655(∑[n+1]+2)`
-/

namespace A199649.P3035817189634268305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199649.P3035817189634268305

/-! ## A199649.P2021092417135741956

`record[A185916(n+1)*A199655(n+2)]`
-/

namespace A199649.P2021092417135741956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (n + 1) * A199655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199649.P2021092417135741956

/-! ## A199649.P16759640097620013731

`record[A199655(n+3)^A185916(n+2)]`
-/

namespace A199649.P16759640097620013731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199655 (n + 3) : ℚ) ^ (A185916 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199649.P16759640097620013731

/-! ## A199649.P11556582207625124011

`record[A199655(Δ[A003453(n+5)])]`
-/

namespace A199649.P11556582207625124011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199649.P11556582207625124011

/-! ## A199649.P10554783243544955530

`A241114(∑[n+1]+2)`
-/

namespace A199649.P10554783243544955530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199649.P10554783243544955530

/-!
# A199650: Number of nX3 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199650, there is no canonical definition to state claims against.
-/

/-! ## A199650.P1266519731588600849

`A199655(∑[n+2]+4)`
-/

namespace A199650.P1266519731588600849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199650.P1266519731588600849

/-! ## A199650.P11458524804894200130

`lcm(A033999(n), A199655(A167614(n+1)))`
-/

namespace A199650.P11458524804894200130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A199655 (A167614 (n + 1)).toNat)

end

end A199650.P11458524804894200130

/-! ## A199650.P13899129237246274716

`A059196(n+1)*A199655(A167614(n+1))`
-/

namespace A199650.P13899129237246274716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059196 (n + 1) * A199655 (A167614 (n + 1)).toNat

end

end A199650.P13899129237246274716

/-! ## A199650.P5958408620417612360

`A199655(A167614(n+1))%A199651(n+1)`
-/

namespace A199650.P5958408620417612360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199655 (A167614 (n + 1)).toNat) (A199651 (n + 1))

end

end A199650.P5958408620417612360

/-! ## A199650.P4968070622839698611

`or(char[1], A199655(A034856(n+2)))`
-/

namespace A199650.P4968070622839698611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A199655 (A034856 (n + 2)).toNat)

end

end A199650.P4968070622839698611

/-!
# A199651: Number of nX4 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199651, there is no canonical definition to state claims against.
-/

/-! ## A199651.P9062643846801807139

`A199655(A374004(n+1))`
-/

namespace A199651.P9062643846801807139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A374004 (n + 1)).toNat

end

end A199651.P9062643846801807139

/-! ## A199651.P7569159155276251004

`A199655(A141214(n)+7)`
-/

namespace A199651.P7569159155276251004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A141214 n + 7).toNat

end

end A199651.P7569159155276251004

/-! ## A199651.P12446164356965496998

`A199655(A052905(n)+9)`
-/

namespace A199651.P12446164356965496998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A052905 n + 9).toNat

end

end A199651.P12446164356965496998

/-! ## A199651.P1301572255157118780

`A199655(A167614(n+2)+1)`
-/

namespace A199651.P1301572255157118780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A167614 (n + 2) + 1).toNat

end

end A199651.P1301572255157118780

/-! ## A199651.P1879976064491905562

`A199655(Δ[A264443(n)-n²])`
-/

namespace A199651.P1879976064491905562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (f1 (n + 1) - f1 n).toNat

end

end A199651.P1879976064491905562

/-!
# A199652: Number of nX5 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199652, there is no canonical definition to state claims against.
-/

/-! ## A199652.P2784815227157111132

`A199655(A374005(n+1))`
-/

namespace A199652.P2784815227157111132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A374005 (n + 1)).toNat

end

end A199652.P2784815227157111132

/-! ## A199652.P7817700282118093596

`A199655(A155212(n)+13)`
-/

namespace A199652.P7817700282118093596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A155212 n + 13).toNat

end

end A199652.P7817700282118093596

/-! ## A199652.P10104437484307801547

`A199655(A056000(n)+15)`
-/

namespace A199652.P10104437484307801547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A056000 n + 15).toNat

end

end A199652.P10104437484307801547

/-! ## A199652.P7826015336987586252

`A199655(A052905(n+3)-Δ[n²])`
-/

namespace A199652.P7826015336987586252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A052905 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A199652.P7826015336987586252

/-! ## A199652.P332382766300212130

`A199655(Δ[A264443(n)])`
-/

namespace A199652.P332382766300212130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (f1 (n + 1) - f1 n).toNat

end

end A199652.P332382766300212130

/-!
# A199653: Number of nX6 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199653, there is no canonical definition to state claims against.
-/

/-! ## A199653.P10196568406065264012

`A199655(A374007(n+1))`
-/

namespace A199653.P10196568406065264012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A374007 (n + 1)).toNat

end

end A199653.P10196568406065264012

/-! ## A199653.P1110312150450783687

`A199655(A052905(n+3))`
-/

namespace A199653.P1110312150450783687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A052905 (n + 3)).toNat

end

end A199653.P1110312150450783687

/-! ## A199653.P16337330041318709517

`A199655(A000124(n+6)-6)`
-/

namespace A199653.P16337330041318709517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A000124 (n + 6) - 6).toNat

end

end A199653.P16337330041318709517

/-! ## A199653.P11688898093428571686

`A199655(eq[1, A219347(n)-2])`
-/

namespace A199653.P11688898093428571686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199653.P11688898093428571686

/-! ## A199653.P2151750480711517632

`A199655(eq[6, A200370(n+1)])`
-/

namespace A199653.P2151750480711517632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199653.P2151750480711517632

/-!
# A199654: Number of nX7 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199654, there is no canonical definition to state claims against.
-/

/-! ## A199654.P4710505474030414920

`A199655(A374008(n+1))`
-/

namespace A199654.P4710505474030414920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A374008 (n + 1)).toNat

end

end A199654.P4710505474030414920

/-! ## A199654.P6883701713539489640

`A199655(eq[4, A219347(n)])`
-/

namespace A199654.P6883701713539489640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199654.P6883701713539489640

/-! ## A199654.P13417618595243527618

`A199655(A000217(n+7)-6)`
-/

namespace A199654.P13417618595243527618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (A000217 (n + 7) - 6).toNat

end

end A199654.P13417618595243527618

/-! ## A199654.P16623433969324008223

`A199655(eq[7, A200370(n+1)])`
-/

namespace A199654.P16623433969324008223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199654.P16623433969324008223

/-! ## A199654.P5246091390950441508

`A199655(eq[6, A243060(n+1)])`
-/

namespace A199654.P5246091390950441508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199654.P5246091390950441508

/-!
# A199655: T(n,k) = Number of n X k 0..2 arrays with values 0..2 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A199655, there is no canonical definition to state claims against.
-/

/-! ## A199655.P5181215647854512067

`∏{p}[A241114(n+1)², #]`
-/

namespace A199655.P5181215647854512067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A199655.P5181215647854512067

/-! ## A199655.P9026805938629743310

`A241114(A043317(n+1))`
-/

namespace A199655.P9026805938629743310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A043317 (n + 1)).toNat

end

end A199655.P9026805938629743310

/-! ## A199655.P1493074701208940495

`A241114(A044914(n+1))`
-/

namespace A199655.P1493074701208940495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A044914 (n + 1)).toNat

end

end A199655.P1493074701208940495

/-! ## A199655.P5601060160060992166

`A241114(A062003(n)+1)`
-/

namespace A199655.P5601060160060992166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A062003 n + 1).toNat

end

end A199655.P5601060160060992166

/-! ## A199655.P12405115865152026419

`A241114(A132378(n+1))`
-/

namespace A199655.P12405115865152026419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A132378 (n + 1)).toNat

end

end A199655.P12405115865152026419

/-!
# A199656: Triangular array read by rows, T(n,k) is the number of functions from {1,2,...,n} into {1,2,...,n} with maximum value of k.

The programs for A199656, the canonical program `A199656.P10246066711263651744` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199656 has offset 1).

The definition of A199656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199656.P10246066711263651744

`A002260(n+1)^A002024(n+1)-A002262(n)^A002024(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199656

/-- `A002260(n+1)^A002024(n+1)-A002262(n)^A002024(n+1)` -/
def P10246066711263651744.Spec : Prop :=
  ∀ n, P10246066711263651744.a n = (A199656 (n + 1) : ℚ)

end A199656

/-! ## A199656.P7305357931852422382

`A095887(A038722(n+1))-A095886(A038722(n+1))`
-/

namespace A199656.P7305357931852422382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095887 (A038722 (n + 1)).toNat - A095886 (A038722 (n + 1)).toNat

end

end A199656.P7305357931852422382

namespace A199656

/-- `A095887(A038722(n+1))-A095886(A038722(n+1))` -/
def P7305357931852422382.Spec : Prop :=
  ∀ n, P7305357931852422382.a n = A199656 (n + 1)

end A199656

/-! ## A199656.P16838257064639268122

`A047969(A061579(A245300(n)))`
-/

namespace A199656.P16838257064639268122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A061579 (A245300 n).toNat).toNat

end

end A199656.P16838257064639268122

namespace A199656

/-- `A047969(A061579(A245300(n)))` -/
def P16838257064639268122.Spec : Prop :=
  ∀ n, P16838257064639268122.a n = A199656 (n + 1)

end A199656

/-! ## A199656.P5078092633197576502

`A047969(A245300(n)+A025581(n))`
-/

namespace A199656.P5078092633197576502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A245300 n + A025581 n).toNat

end

end A199656.P5078092633197576502

namespace A199656

/-- `A047969(A245300(n)+A025581(n))` -/
def P5078092633197576502.Spec : Prop :=
  ∀ n, P5078092633197576502.a n = A199656 (n + 1)

end A199656

/-! ## A199656.P14783719010695667970

`A343237(A245300(n))`
-/

namespace A199656.P14783719010695667970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343237 (A245300 n).toNat

end

end A199656.P14783719010695667970

namespace A199656

/-- `A343237(A245300(n))` -/
def P14783719010695667970.Spec : Prop :=
  ∀ n, P14783719010695667970.a n = A199656 (n + 1)

end A199656

/-!
# A199657: Numerators of lower rational approximants of Pi with the first 5 terms given by Adam Adamandy Kochański in 1685, continued using a reconstruction by Fukś that is highly likely to match Kochański's incompletely published method.

The programs for A199657, there is no canonical definition to state claims against.
-/

/-! ## A199657.P13004724828288621619

`floor(π*A199658(n+1))`
-/

namespace A199657.P13004724828288621619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A199658 (n + 1) : ℝ)⌋

end

end A199657.P13004724828288621619

/-!
# A199658: Denominators of lower rational approximants of Pi with the first 5 terms given by Adam Adamandy Kochański in 1685, continued using a reconstruction by Fukś that is highly likely to match Kochański's incompletely published method.

The programs for A199658, there is no canonical definition to state claims against.
-/

/-! ## A199658.P2311793207968960772

`ceil(A199657(n+1)/π)`
-/

namespace A199658.P2311793207968960772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199657 (n + 1) : ℝ) / Real.pi⌉

end

end A199658.P2311793207968960772

/-!
# A199660: Number of parity alternating permutations of [n] avoiding descents from odd to even numbers.

The programs for A199660, there is no canonical definition to state claims against.
-/

/-! ## A199660.P17388443576914124187

`A029767(n-gcd(n, ∑[n]))+floor(n/2)!`
-/

namespace A199660.P17388443576914124187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) + (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A199660.P17388443576914124187

/-! ## A199660.P7719675042263686450

`A081123(n)+A029767(A142150(n))`
-/

namespace A199660.P7719675042263686450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A029767 (A142150 n).toNat

end

end A199660.P7719675042263686450

/-! ## A199660.P4079683564461217169

`A029767(A142150(n))+A123108(n)!`
-/

namespace A199660.P4079683564461217169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 (A142150 n).toNat + (Nat.factorial (A123108 n).toNat : ℤ)

end

end A199660.P4079683564461217169

/-! ## A199660.P1053985473303115384

`A232187(A033638(n))`
-/

namespace A199660.P1053985473303115384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232187 (A033638 n).toNat

end

end A199660.P1053985473303115384

/-! ## A199660.P3944669700740891430

`A232187(A008621(n²))`
-/

namespace A199660.P3944669700740891430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232187 (A008621 (n ^ 2)).toNat

end

end A199660.P3944669700740891430

/-!
# A199670: E.g.f.: d/dx Series_Reversion( Sum_{n>=0} (-x)^(3*n)/(3*n)! - exp(-x) ).

The programs for A199670, there is no canonical definition to state claims against.
-/

/-! ## A199670.P17232882628659072258

`A008621(A132608(n+1)+n)`
-/

namespace A199670.P17232882628659072258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A132608 (n + 1) + (n : ℤ)).toNat

end

end A199670.P17232882628659072258

/-! ## A199670.P7832171428390072804

`A110655(A132608(n+1)+n)`
-/

namespace A199670.P7832171428390072804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A132608 (n + 1) + (n : ℤ)).toNat

end

end A199670.P7832171428390072804

/-!
# A199671: Numerators of upper rational approximants of Pi with the first 5 terms given by Adam Adamandy Kochański in 1685, continued using a reconstruction by Fukś that is highly likely to match Kochański's incompletely published method.

The programs for A199671, there is no canonical definition to state claims against.
-/

/-! ## A199671.P3620509325493591086

`∑[A199657(n+1)]-3`
-/

namespace A199671.P3620509325493591086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A199671.P3620509325493591086

/-! ## A199671.P11937469131981661485

`ceil(π*A199672(n+1))`
-/

namespace A199671.P11937469131981661485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (A199672 (n + 1) : ℝ)⌉

end

end A199671.P11937469131981661485

/-! ## A199671.P496693489782701394

`ceil(π*(∑[A199658(n+1)]-1))`
-/

namespace A199671.P496693489782701394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℝ)⌉

end

end A199671.P496693489782701394

/-! ## A199671.P18147669429017722984

`a(n-1)*(A191642(n)+1)+3` with `a(0)=22`
-/

namespace A199671.P18147669429017722984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  a (n - 1) * (A191642 n + 1) + 3

end

end A199671.P18147669429017722984

/-!
# A199672: Denominators of upper rational approximants of Pi with the first 5 terms given by Adam Adamandy Kochański in 1685, continued using a reconstruction by Fukś that is highly likely to match Kochański's incompletely published method.

The programs for A199672, there is no canonical definition to state claims against.
-/

/-! ## A199672.P13462374200811608744

`∑[A199658(n+1)]-1`
-/

namespace A199672.P13462374200811608744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A199672.P13462374200811608744

/-! ## A199672.P15487130595871477890

`floor(A199671(n+1)/π)`
-/

namespace A199672.P15487130595871477890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199671 (n + 1) : ℝ) / Real.pi⌋

end

end A199672.P15487130595871477890

/-! ## A199672.P8066322361934847572

`∑[ceil(A199657(n+1)/π)]-1`
-/

namespace A199672.P8066322361934847572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199657 (n + 1) : ℝ) / Real.pi⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A199672.P8066322361934847572

/-! ## A199672.P17113993375658560078

`a(n-1)*(A191642(n)+1)+1` with `a(0)=7`
-/

namespace A199672.P17113993375658560078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) * (A191642 n + 1) + 1

end

end A199672.P17113993375658560078

/-! ## A199672.P11267354605930098502

`floor(A199658(n+2)/A191642(n+1))`
-/

namespace A199672.P11267354605930098502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199658 (n + 2) : ℚ) / (A191642 (n + 1) : ℚ)⌋

end

end A199672.P11267354605930098502

/-!
# A199673: Number of ways to form k labeled groups, each with a distinct leader, using n people. Triangle T(n,k) = n!*k^(n-k)/(n-k)! for 1 <= k <= n.

The programs for A199673, the canonical program `A199673.P7091103310266914328` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199673 has offset 1).

The definition of A199673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199673.P7304013772950933845

`A089944(n)*A121757(n)`
-/

namespace A199673.P7304013772950933845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089944 n * A121757 n

end

end A199673.P7304013772950933845

namespace A199673

/-- `A089944(n)*A121757(n)` -/
def P7304013772950933845.Spec : Prop :=
  ∀ n, P7304013772950933845.a n = A199673 (n + 1)

end A199673

/-! ## A199673.P7091103310266914328

`A009998(n)*A068424(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A199673

/-- `A009998(n)*A068424(n+1)` -/
def P7091103310266914328.Spec : Prop :=
  ∀ n, P7091103310266914328.a n = A199673 (n + 1)

theorem P7091103310266914328.correct : P7091103310266914328.Spec := by
  intro n
  simp only [A199673, Nat.add_sub_cancel]

end A199673

/-! ## A199673.P13362880108666565253

`A002024(n+1)*A152818(n)`
-/

namespace A199673.P13362880108666565253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A152818 n

end

end A199673.P13362880108666565253

namespace A199673

/-- `A002024(n+1)*A152818(n)` -/
def P13362880108666565253.Spec : Prop :=
  ∀ n, P13362880108666565253.a n = A199673 (n + 1)

end A199673

/-! ## A199673.P1501446731857411543

`A059298(n)*A166350(n+1)`
-/

namespace A199673.P1501446731857411543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059298 n * A166350 (n + 1)

end

end A199673.P1501446731857411543

namespace A199673

/-- `A059298(n)*A166350(n+1)` -/
def P1501446731857411543.Spec : Prop :=
  ∀ n, P1501446731857411543.a n = A199673 (n + 1)

end A199673

/-! ## A199673.P16916038889873073542

`A002260(n+1)!*A059298(n)`
-/

namespace A199673.P16916038889873073542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A059298 n

end

end A199673.P16916038889873073542

namespace A199673

/-- `A002260(n+1)!*A059298(n)` -/
def P16916038889873073542.Spec : Prop :=
  ∀ n, P16916038889873073542.a n = A199673 (n + 1)

end A199673

/-! ## A199673.P14751837204345495977

`A104002(n+2)*A181511(n+1)`
-/

namespace A199673.P14751837204345495977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104002 (n + 2) * A181511 (n + 1)

end

end A199673.P14751837204345495977

namespace A199673

/-- `A104002(n+2)*A181511(n+1)` -/
def P14751837204345495977.Spec : Prop :=
  ∀ n, P14751837204345495977.a n = A199673 (n + 1)

end A199673

/-! ## A199673.P17338742985076735896

`A003506(n+1)*A299504(n)`
-/

namespace A199673.P17338742985076735896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A299504 n

end

end A199673.P17338742985076735896

namespace A199673

/-- `A003506(n+1)*A299504(n)` -/
def P17338742985076735896.Spec : Prop :=
  ∀ n, P17338742985076735896.a n = A199673 (n + 1)

end A199673

/-! ## A199673.P13592573100507975570

`A051129(n+1)*A111492(n+1)`
-/

namespace A199673.P13592573100507975570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) * A111492 (n + 1)

end

end A199673.P13592573100507975570

namespace A199673

/-- `A051129(n+1)*A111492(n+1)` -/
def P13592573100507975570.Spec : Prop :=
  ∀ n, P13592573100507975570.a n = A199673 (n + 1)

end A199673

/-!
# A199675: Expansion of e.g.f. 1/(exp(-x) - Sum_{n>=0} (-x)^(3*n+2)/(3*n+2)!).

The programs for A199675, there is no canonical definition to state claims against.
-/

/-! ## A199675.P1519403099033110512

`A249474(n)+A086014(A007841(n))`
-/

namespace A199675.P1519403099033110512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249474 n + A086014 (A007841 n).toNat

end

end A199675.P1519403099033110512

/-! ## A199675.P10474509994481591838

`A249474(n)+A125005(A003945(n))`
-/

namespace A199675.P10474509994481591838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249474 n + A125005 (A003945 n).toNat

end

end A199675.P10474509994481591838

/-! ## A199675.P2536112998095870990

`A249474(n)+A143731(A005840(n))`
-/

namespace A199675.P2536112998095870990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249474 n + A143731 (A005840 n).toNat

end

end A199675.P2536112998095870990

/-!
# A199676: Number of minimally 3-connected non-isomorphic graphs on n vertices.

The programs for A199676, there is no canonical definition to state claims against.
-/

/-! ## A199676.P16941043574805381111

`A003963(∑[∏[A091015(n+1)]])`
-/

namespace A199676.P16941043574805381111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091015 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199676.P16941043574805381111

/-! ## A199676.P7390407025008907332

`or(abs(1-n%3), A227590(A001405(n)))`
-/

namespace A199676.P7390407025008907332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - ((n % 3 : ℕ) : ℤ)| (A227590 (A001405 n).toNat)

end

end A199676.P7390407025008907332

/-! ## A199676.P3805085634823846295

`or(A052509(n), A227590(A001405(n)))`
-/

namespace A199676.P3805085634823846295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052509 n) (A227590 (A001405 n).toNat)

end

end A199676.P3805085634823846295

/-!
# A199677: a(n) = 8*9^n+1.

The programs for A199677, the canonical program `A199677.P11037857007133774133` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199677 has offset 0).

The definition of A199677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*9^n+1` (program `A199677.P11037857007133774133`, by `A199677.P11037857007133774133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199677.P11037857007133774133

`8*9^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199677

/-- `8*9^n+1` -/
def P11037857007133774133.Spec : Prop :=
  ∀ n, (P11037857007133774133.a n : ℤ) = A199677 n

theorem P11037857007133774133.correct : P11037857007133774133.Spec := by
  intro n
  simp only [A199677]

end A199677

/-! ## A199677.P4747276040442117713

`or(1, Δ[9^n])`
-/

namespace A199677.P4747276040442117713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199677.P4747276040442117713

namespace A199677

/-- `or(1, Δ[9^n])` -/
def P4747276040442117713.Spec : Prop :=
  ∀ n, P4747276040442117713.a n = A199677 n

end A199677

/-! ## A199677.P10751383774295813381

`xor(1, Δ[9^n])`
-/

namespace A199677.P10751383774295813381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199677.P10751383774295813381

namespace A199677

/-- `xor(1, Δ[9^n])` -/
def P10751383774295813381.Spec : Prop :=
  ∀ n, P10751383774295813381.a n = A199677 n

end A199677

/-! ## A199677.P10398552123298831028

`Δ[A226202(n)]`
-/

namespace A199677.P10398552123298831028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P10398552123298831028

namespace A199677

/-- `Δ[A226202(n)]` -/
def P10398552123298831028.Spec : Prop :=
  ∀ n, P10398552123298831028.a n = A199677 n

end A199677

/-! ## A199677.P5668928078357002354

`A199111(2*n)`
-/

namespace A199677.P5668928078357002354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199111 (2 * n)

end

end A199677.P5668928078357002354

namespace A199677

/-- `A199111(2*n)` -/
def P5668928078357002354.Spec : Prop :=
  ∀ n, P5668928078357002354.a n = A199677 n

end A199677

/-! ## A199677.P15330505298962125095

`∑[A080923(n+1)²]`
-/

namespace A199677.P15330505298962125095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199677.P15330505298962125095

namespace A199677

/-- `∑[A080923(n+1)²]` -/
def P15330505298962125095.Spec : Prop :=
  ∀ n, P15330505298962125095.a n = A199677 n

end A199677

/-! ## A199677.P18069676893735909089

`∑[A118264(n+2)²]`
-/

namespace A199677.P18069676893735909089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199677.P18069676893735909089

namespace A199677

/-- `∑[A118264(n+2)²]` -/
def P18069676893735909089.Spec : Prop :=
  ∀ n, P18069676893735909089.a n = A199677 n

end A199677

/-! ## A199677.P847593478760493694

`Δ[A000244(n)²+n]`
-/

namespace A199677.P847593478760493694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P847593478760493694

namespace A199677

/-- `Δ[A000244(n)²+n]` -/
def P847593478760493694.Spec : Prop :=
  ∀ n, P847593478760493694.a n = A199677 n

end A199677

/-! ## A199677.P2976817921737329953

`Δ[A352779(n)²+n]`
-/

namespace A199677.P2976817921737329953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P2976817921737329953

namespace A199677

/-- `Δ[A352779(n)²+n]` -/
def P2976817921737329953.Spec : Prop :=
  ∀ n, P2976817921737329953.a n = A199677 n

end A199677

/-! ## A199677.P10166443007971567941

`Δ[A001019(n)+1+n]`
-/

namespace A199677.P10166443007971567941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P10166443007971567941

namespace A199677

/-- `Δ[A001019(n)+1+n]` -/
def P10166443007971567941.Spec : Prop :=
  ∀ n, P10166443007971567941.a n = A199677 n

end A199677

/-! ## A199677.P17749445171847754827

`∑[A153339(2*n+1)²]`
-/

namespace A199677.P17749445171847754827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153339 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199677.P17749445171847754827

namespace A199677

/-- `∑[A153339(2*n+1)²]` -/
def P17749445171847754827.Spec : Prop :=
  ∀ n, P17749445171847754827.a n = A199677 n

end A199677

/-! ## A199677.P14969568425121797605

`Δ[A133494(n+1)²+n]`
-/

namespace A199677.P14969568425121797605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P14969568425121797605

namespace A199677

/-- `Δ[A133494(n+1)²+n]` -/
def P14969568425121797605.Spec : Prop :=
  ∀ n, P14969568425121797605.a n = A199677 n

end A199677

/-! ## A199677.P997685457118617487

`Δ[A140429(n+1)²+n]`
-/

namespace A199677.P997685457118617487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P997685457118617487

namespace A199677

/-- `Δ[A140429(n+1)²+n]` -/
def P997685457118617487.Spec : Prop :=
  ∀ n, P997685457118617487.a n = A199677 n

end A199677

/-! ## A199677.P6245910837832866768

`Δ[A155734(n+1)²+n]`
-/

namespace A199677.P6245910837832866768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P6245910837832866768

namespace A199677

/-- `Δ[A155734(n+1)²+n]` -/
def P6245910837832866768.Spec : Prop :=
  ∀ n, P6245910837832866768.a n = A199677 n

end A199677

/-! ## A199677.P5927985824533441053

`Δ[Δ[A002452(n)]+n+3]`
-/

namespace A199677.P5927985824533441053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199677.P5927985824533441053

namespace A199677

/-- `Δ[Δ[A002452(n)]+n+3]` -/
def P5927985824533441053.Spec : Prop :=
  ∀ n, P5927985824533441053.a n = A199677 n

end A199677

/-!
# A199678: a(n) = 10*9^n + 1.

The programs for A199678, the canonical program `A199678.P7824812013340244602` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199678 has offset 0).

The definition of A199678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*9^n+1` (program `A199678.P7824812013340244602`, by `A199678.P7824812013340244602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199678.P7824812013340244602

`10*9^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199678

/-- `10*9^n+1` -/
def P7824812013340244602.Spec : Prop :=
  ∀ n, (P7824812013340244602.a n : ℤ) = A199678 n

theorem P7824812013340244602.correct : P7824812013340244602.Spec := by
  intro n
  simp only [A199678]

end A199678

/-! ## A199678.P1242549019974500303

`or(1, 10*9^n)`
-/

namespace A199678.P1242549019974500303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 * 9 ^ n)

end

end A199678.P1242549019974500303

namespace A199678

/-- `or(1, 10*9^n)` -/
def P1242549019974500303.Spec : Prop :=
  ∀ n, (P1242549019974500303.a n : ℤ) = A199678 n

end A199678

/-! ## A199678.P14163965395877995653

`xor(1, 10*9^n)`
-/

namespace A199678.P14163965395877995653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * 9 ^ n)

end

end A199678.P14163965395877995653

namespace A199678

/-- `xor(1, 10*9^n)` -/
def P14163965395877995653.Spec : Prop :=
  ∀ n, (P14163965395877995653.a n : ℤ) = A199678 n

end A199678

/-! ## A199678.P17597438880219291661

`A199112(2*n)`
-/

namespace A199678.P17597438880219291661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199112 (2 * n)

end

end A199678.P17597438880219291661

namespace A199678

/-- `A199112(2*n)` -/
def P17597438880219291661.Spec : Prop :=
  ∀ n, P17597438880219291661.a n = A199678 n

end A199678

/-! ## A199678.P13135142397403825492

`Δ[A137483(n)+n]`
-/

namespace A199678.P13135142397403825492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137483 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199678.P13135142397403825492

namespace A199678

/-- `Δ[A137483(n)+n]` -/
def P13135142397403825492.Spec : Prop :=
  ∀ n, P13135142397403825492.a n = A199678 n

end A199678

/-! ## A199678.P11284497186218111172

`Δ[A090328(Δ[n²])]`
-/

namespace A199678.P11284497186218111172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090328 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199678.P11284497186218111172

namespace A199678

/-- `Δ[A090328(Δ[n²])]` -/
def P11284497186218111172.Spec : Prop :=
  ∀ n, P11284497186218111172.a n = A199678 n

end A199678

/-! ## A199678.P13619381777294982441

`A222940(n+3)/3`
-/

namespace A199678.P13619381777294982441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222940 (n + 3) : ℚ) / 3

end

end A199678.P13619381777294982441

namespace A199678

/-- `A222940(n+3)/3` -/
def P13619381777294982441.Spec : Prop :=
  ∀ n, P13619381777294982441.a n = (A199678 n : ℚ)

end A199678

/-! ## A199678.P9169257496547506892

`A188793(3*(n+1)+n+2)`
-/

namespace A199678.P9169257496547506892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188793 (3 * (n + 1) + (n + 2))

end

end A199678.P9169257496547506892

namespace A199678

/-- `A188793(3*(n+1)+n+2)` -/
def P9169257496547506892.Spec : Prop :=
  ∀ n, P9169257496547506892.a n = A199678 n

end A199678

/-! ## A199678.P18048466234744846166

`floor(A062396(n+1)+sqrt(A062396(2*n)))`
-/

namespace A199678.P18048466234744846166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062396 (n + 1) : ℝ) + Real.sqrt (A062396 (2 * n) : ℝ)⌋

end

end A199678.P18048466234744846166

namespace A199678

/-- `floor(A062396(n+1)+sqrt(A062396(2*n)))` -/
def P18048466234744846166.Spec : Prop :=
  ∀ n, P18048466234744846166.a n = A199678 n

end A199678

/-!
# A199679: a(n) = (11*9^n+1)/4.

The programs for A199679, the canonical program `A199679.P4228301585476556064` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199679 has offset 0).

The definition of A199679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*9^n+1)/4` (program `A199679.P4084369383147307431`, by `A199679.P4084369383147307431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199679.P4228301585476556064

`9*a(n-1)-2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199679

/-- `9*a(n-1)-2` -/
def P4228301585476556064.Spec : Prop :=
  ∀ n, P4228301585476556064.a n = A199679 n

theorem P4228301585476556064.correct : P4228301585476556064.Spec := by
  intro n
  simp only [A199679]

end A199679

/-! ## A199679.P4084369383147307431

`(11*9^n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199679.P4084369383147307431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 9 ^ n + 1 : ℚ) / 4

end

end A199679.P4084369383147307431

namespace A199679

/-- `(11*9^n+1)/4` -/
def P4084369383147307431.Spec : Prop :=
  ∀ n, P4084369383147307431.a n = (A199679 n : ℚ)

theorem P4084369383147307431.correct : P4084369383147307431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199679, Nat.add_sub_cancel, A199679.P4084369383147307431.a, A199679.P4228301585476556064.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199679, Nat.add_sub_cancel, A199679.P4084369383147307431.a, A199679.P4228301585476556064.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199679

/-! ## A199679.P7886124472748041187

`a(n-1)/(1/3)²-2` with `a(0)=3`
-/

namespace A199679.P7886124472748041187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 2

end

end A199679.P7886124472748041187

namespace A199679

/-- `a(n-1)/(1/3)²-2` -/
def P7886124472748041187.Spec : Prop :=
  ∀ n, P7886124472748041187.a n = (A199679 n : ℚ)

end A199679

/-! ## A199679.P1881182780912634423

`lcm(8, a(n-1))-(2-a(n-1))` with `a(0)=3`
-/

namespace A199679.P1881182780912634423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 8 (a (n - 1)) : ℤ) - (2 - a (n - 1))

end

end A199679.P1881182780912634423

namespace A199679

/-- `lcm(8, a(n-1))-(2-a(n-1))` -/
def P1881182780912634423.Spec : Prop :=
  ∀ n, P1881182780912634423.a n = A199679 n

end A199679

/-! ## A199679.P18156396116122134738

`ceil(A198969(n)/2)`
-/

namespace A199679.P18156396116122134738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198969 n : ℚ) / 2⌉

end

end A199679.P18156396116122134738

namespace A199679

/-- `ceil(A198969(n)/2)` -/
def P18156396116122134738.Spec : Prop :=
  ∀ n, P18156396116122134738.a n = A199679 n

end A199679

/-! ## A199679.P17793969726024432890

`ceil(A052909(2*n+1)/2)`
-/

namespace A199679.P17793969726024432890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052909 (2 * n + 1) : ℚ) / 2⌉

end

end A199679.P17793969726024432890

namespace A199679

/-- `ceil(A052909(2*n+1)/2)` -/
def P17793969726024432890.Spec : Prop :=
  ∀ n, P17793969726024432890.a n = A199679 n

end A199679

/-! ## A199679.P1200210746371033617

`A270369(n+1)+A066443(n)`
-/

namespace A199679.P1200210746371033617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270369 (n + 1) + A066443 n

end

end A199679.P1200210746371033617

namespace A199679

/-- `A270369(n+1)+A066443(n)` -/
def P1200210746371033617.Spec : Prop :=
  ∀ n, P1200210746371033617.a n = A199679 n

end A199679

/-! ## A199679.P1757070476906258957

`A013708(n)-A125857(n+1)`
-/

namespace A199679.P1757070476906258957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n - A125857 (n + 1)

end

end A199679.P1757070476906258957

namespace A199679

/-- `A013708(n)-A125857(n+1)` -/
def P1757070476906258957.Spec : Prop :=
  ∀ n, P1757070476906258957.a n = A199679 n

end A199679

/-! ## A199679.P6800912062510491002

`A191681(n+1)-A096046(n)`
-/

namespace A199679.P6800912062510491002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 (n + 1) - A096046 n

end

end A199679.P6800912062510491002

namespace A199679

/-- `A191681(n+1)-A096046(n)` -/
def P6800912062510491002.Spec : Prop :=
  ∀ n, P6800912062510491002.a n = A199679 n

end A199679

/-! ## A199679.P9635956679681270183

`A135522(2*n)+A096053(n)`
-/

namespace A199679.P9635956679681270183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135522 (2 * n) + A096053 n

end

end A199679.P9635956679681270183

namespace A199679

/-- `A135522(2*n)+A096053(n)` -/
def P9635956679681270183.Spec : Prop :=
  ∀ n, P9635956679681270183.a n = A199679 n

end A199679

/-! ## A199679.P12607169944192836705

`A013708(n)-A015518(2*n)`
-/

namespace A199679.P12607169944192836705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n - A015518 (2 * n)

end

end A199679.P12607169944192836705

namespace A199679

/-- `A013708(n)-A015518(2*n)` -/
def P12607169944192836705.Spec : Prop :=
  ∀ n, P12607169944192836705.a n = A199679 n

end A199679

/-! ## A199679.P888193832238678545

`A102518(n+1)-A125857(n+1)`
-/

namespace A199679.P888193832238678545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 (n + 1) - A125857 (n + 1)

end

end A199679.P888193832238678545

namespace A199679

/-- `A102518(n+1)-A125857(n+1)` -/
def P888193832238678545.Spec : Prop :=
  ∀ n, P888193832238678545.a n = A199679 n

end A199679

/-! ## A199679.P4630703717652388289

`A102518(n+1)-A015518(2*n)`
-/

namespace A199679.P4630703717652388289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 (n + 1) - A015518 (2 * n)

end

end A199679.P4630703717652388289

namespace A199679

/-- `A102518(n+1)-A015518(2*n)` -/
def P4630703717652388289.Spec : Prop :=
  ∀ n, P4630703717652388289.a n = A199679 n

end A199679

/-! ## A199679.P13010654309929057788

`A270369(n+1)+A122983(2*n+1)`
-/

namespace A199679.P13010654309929057788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270369 (n + 1) + A122983 (2 * n + 1)

end

end A199679.P13010654309929057788

namespace A199679

/-- `A270369(n+1)+A122983(2*n+1)` -/
def P13010654309929057788.Spec : Prop :=
  ∀ n, P13010654309929057788.a n = A199679 n

end A199679

/-! ## A199679.P5915021453300195683

`A014983(2*n)+A000244(2*n+1)`
-/

namespace A199679.P5915021453300195683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 (2 * n) + A000244 (2 * n + 1)

end

end A199679.P5915021453300195683

namespace A199679

/-- `A014983(2*n)+A000244(2*n+1)` -/
def P5915021453300195683.Spec : Prop :=
  ∀ n, P5915021453300195683.a n = A199679 n

end A199679

/-! ## A199679.P8563252637445928573

`A015518(2*n+1)+A008776(2*n)`
-/

namespace A199679.P8563252637445928573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (2 * n + 1) + A008776 (2 * n)

end

end A199679.P8563252637445928573

namespace A199679

/-- `A015518(2*n+1)+A008776(2*n)` -/
def P8563252637445928573.Spec : Prop :=
  ∀ n, P8563252637445928573.a n = A199679 n

end A199679

/-! ## A199679.P8546958287399940908

`A135522(2*n)+A046717(2*n+1)`
-/

namespace A199679.P8546958287399940908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135522 (2 * n) + A046717 (2 * n + 1)

end

end A199679.P8546958287399940908

namespace A199679

/-- `A135522(2*n)+A046717(2*n+1)` -/
def P8546958287399940908.Spec : Prop :=
  ∀ n, P8546958287399940908.a n = A199679 n

end A199679

/-! ## A199679.P11415907496086472893

`A000244(2*n+1)-A015518(2*n)`
-/

namespace A199679.P11415907496086472893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n + 1) - A015518 (2 * n)

end

end A199679.P11415907496086472893

namespace A199679

/-- `A000244(2*n+1)-A015518(2*n)` -/
def P11415907496086472893.Spec : Prop :=
  ∀ n, P11415907496086472893.a n = A199679 n

end A199679

/-! ## A199679.P18407325918269078058

`A025192(2*n+1)+A014983(2*n+1)`
-/

namespace A199679.P18407325918269078058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (2 * n + 1) + A014983 (2 * n + 1)

end

end A199679.P18407325918269078058

namespace A199679

/-- `A025192(2*n+1)+A014983(2*n+1)` -/
def P18407325918269078058.Spec : Prop :=
  ∀ n, P18407325918269078058.a n = A199679 n

end A199679

/-!
# A199680: a(n) = (11*9^n+1)/2.

The programs for A199680, the canonical program `A199680.P11996958590812437580` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199680 has offset 0).

The definition of A199680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*9^n+1)/2` (program `A199680.P10818529729730479091`, by `A199680.P10818529729730479091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199680.P11996958590812437580

`9*a(n-1)-4` with `a(0)=6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199680

/-- `9*a(n-1)-4` -/
def P11996958590812437580.Spec : Prop :=
  ∀ n, P11996958590812437580.a n = A199680 n

theorem P11996958590812437580.correct : P11996958590812437580.Spec := by
  intro n
  simp only [A199680]

end A199680

/-! ## A199680.P10818529729730479091

`(11*9^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199680.P10818529729730479091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 9 ^ n + 1 : ℚ) / 2

end

end A199680.P10818529729730479091

namespace A199680

/-- `(11*9^n+1)/2` -/
def P10818529729730479091.Spec : Prop :=
  ∀ n, P10818529729730479091.a n = (A199680 n : ℚ)

theorem P10818529729730479091.correct : P10818529729730479091.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199680, Nat.add_sub_cancel, A199680.P10818529729730479091.a, A199680.P11996958590812437580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199680, Nat.add_sub_cancel, A199680.P10818529729730479091.a, A199680.P11996958590812437580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199680

/-! ## A199680.P10889810028282081983

`a(n-1)/(1/3)²-4` with `a(0)=6`
-/

namespace A199680.P10889810028282081983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 4

end

end A199680.P10889810028282081983

namespace A199680

/-- `a(n-1)/(1/3)²-4` -/
def P10889810028282081983.Spec : Prop :=
  ∀ n, P10889810028282081983.a n = (A199680 n : ℚ)

end A199680

/-! ## A199680.P14154223316341415015

`record[2-a(n-1)/cot(atan(3))]` with `a(0)=6`
-/

namespace A199680.P14154223316341415015
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [6] fun n f1 =>
  2 - f1 (n - 1) / Real.cot (Real.arctan (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199680.P14154223316341415015

namespace A199680

/-- `record[2-a(n-1)/cot(atan(3))]` -/
def P14154223316341415015.Spec : Prop :=
  ∀ n, P14154223316341415015.a n = (A199680 n : ℝ)

end A199680

/-! ## A199680.P10037853004157441651

`record[2-a(n-1)/sqrt(1/9)]` with `a(0)=6`
-/

namespace A199680.P10037853004157441651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [6] fun n f1 =>
  2 - f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199680.P10037853004157441651

namespace A199680

/-- `record[2-a(n-1)/sqrt(1/9)]` -/
def P10037853004157441651.Spec : Prop :=
  ∀ n, P10037853004157441651.a n = (A199680 n : ℝ)

end A199680

/-! ## A199680.P10507149653045960399

`A198969(n)+1`
-/

namespace A199680.P10507149653045960399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198969 n + 1

end

end A199680.P10507149653045960399

namespace A199680

/-- `A198969(n)+1` -/
def P10507149653045960399.Spec : Prop :=
  ∀ n, P10507149653045960399.a n = A199680 n

end A199680

/-! ## A199680.P852870788243054629

`A199113(2*n)`
-/

namespace A199680.P852870788243054629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199113 (2 * n)

end

end A199680.P852870788243054629

namespace A199680

/-- `A199113(2*n)` -/
def P852870788243054629.Spec : Prop :=
  ∀ n, P852870788243054629.a n = A199680 n

end A199680

/-! ## A199680.P4731402856164604044

`2*A199679(n)`
-/

namespace A199680.P4731402856164604044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199679 n

end

end A199680.P4731402856164604044

namespace A199680

/-- `2*A199679(n)` -/
def P4731402856164604044.Spec : Prop :=
  ∀ n, P4731402856164604044.a n = A199680 n

end A199680

/-! ## A199680.P17172340501214527421

`A052909(Δ[n²])+1`
-/

namespace A199680.P17172340501214527421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A199680.P17172340501214527421

namespace A199680

/-- `A052909(Δ[n²])+1` -/
def P17172340501214527421.Spec : Prop :=
  ∀ n, P17172340501214527421.a n = A199680 n

end A199680

/-! ## A199680.P12864801961003264593

`A253062(A016969(n))+1`
-/

namespace A199680.P12864801961003264593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (A016969 n).toNat + 1

end

end A199680.P12864801961003264593

namespace A199680

/-- `A253062(A016969(n))+1` -/
def P12864801961003264593.Spec : Prop :=
  ∀ n, P12864801961003264593.a n = A199680 n

end A199680

/-! ## A199680.P4223635827032584040

`A253062(A101328(n+3))+1`
-/

namespace A199680.P4223635827032584040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (A101328 (n + 3)).toNat + 1

end

end A199680.P4223635827032584040

namespace A199680

/-- `A253062(A101328(n+3))+1` -/
def P4223635827032584040.Spec : Prop :=
  ∀ n, P4223635827032584040.a n = A199680 n

end A199680

/-! ## A199680.P7289647929018757148

`A083884(n+1)+A001019(n)`
-/

namespace A199680.P7289647929018757148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083884 (n + 1) + A001019 n

end

end A199680.P7289647929018757148

namespace A199680

/-- `A083884(n+1)+A001019(n)` -/
def P7289647929018757148.Spec : Prop :=
  ∀ n, P7289647929018757148.a n = A199680 n

end A199680

/-! ## A199680.P17482608040105998920

`2*(A199561(n)-A054879(n))`
-/

namespace A199680.P17482608040105998920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199561 n - A054879 n)

end

end A199680.P17482608040105998920

namespace A199680

/-- `2*(A199561(n)-A054879(n))` -/
def P17482608040105998920.Spec : Prop :=
  ∀ n, P17482608040105998920.a n = A199680 n

end A199680

/-! ## A199680.P16050134025969962025

`A083884(n+1)+A000244(n)²`
-/

namespace A199680.P16050134025969962025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083884 (n + 1) + A000244 n ^ 2

end

end A199680.P16050134025969962025

namespace A199680

/-- `A083884(n+1)+A000244(n)²` -/
def P16050134025969962025.Spec : Prop :=
  ∀ n, P16050134025969962025.a n = A199680 n

end A199680

/-! ## A199680.P8291466444334000223

`A008776(n)²+A096053(n)+1`
-/

namespace A199680.P8291466444334000223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n ^ 2 + (A096053 n + 1)

end

end A199680.P8291466444334000223

namespace A199680

/-- `A008776(n)²+A096053(n)+1` -/
def P8291466444334000223.Spec : Prop :=
  ∀ n, P8291466444334000223.a n = A199680 n

end A199680

/-! ## A199680.P3509637070599085422

`A083884(n+1)+A000244(2*n)`
-/

namespace A199680.P3509637070599085422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083884 (n + 1) + A000244 (2 * n)

end

end A199680.P3509637070599085422

namespace A199680

/-- `A083884(n+1)+A000244(2*n)` -/
def P3509637070599085422.Spec : Prop :=
  ∀ n, P3509637070599085422.a n = A199680 n

end A199680

/-! ## A199680.P629241584941760503

`A067771(2*n+1)+A024101(n)`
-/

namespace A199680.P629241584941760503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 (2 * n + 1) + A024101 n

end

end A199680.P629241584941760503

namespace A199680

/-- `A067771(2*n+1)+A024101(n)` -/
def P629241584941760503.Spec : Prop :=
  ∀ n, P629241584941760503.a n = A199680 n

end A199680

/-! ## A199680.P15281102808270328252

`A164907(2*n+1)+A001019(n)`
-/

namespace A199680.P15281102808270328252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 (2 * n + 1) + A001019 n

end

end A199680.P15281102808270328252

namespace A199680

/-- `A164907(2*n+1)+A001019(n)` -/
def P15281102808270328252.Spec : Prop :=
  ∀ n, P15281102808270328252.a n = A199680 n

end A199680

/-! ## A199680.P15853339455178637856

`A007051(2*n)+A005030(2*n)`
-/

namespace A199680.P15853339455178637856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n) + A005030 (2 * n)

end

end A199680.P15853339455178637856

namespace A199680

/-- `A007051(2*n)+A005030(2*n)` -/
def P15853339455178637856.Spec : Prop :=
  ∀ n, P15853339455178637856.a n = A199680 n

end A199680

/-!
# A199681: a(n) = 11*9^n+1.

The programs for A199681, the canonical program `A199681.P16719392894453399421` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199681 has offset 0).

The definition of A199681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*9^n+1` (program `A199681.P16719392894453399421`, by `A199681.P16719392894453399421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199681.P16719392894453399421

`11*9^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199681

/-- `11*9^n+1` -/
def P16719392894453399421.Spec : Prop :=
  ∀ n, (P16719392894453399421.a n : ℤ) = A199681 n

theorem P16719392894453399421.correct : P16719392894453399421.Spec := by
  intro n
  simp only [A199681]

end A199681

/-! ## A199681.P10754985027907711034

`xor(7, 11*9^n)`
-/

namespace A199681.P10754985027907711034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (11 * 9 ^ n)

end

end A199681.P10754985027907711034

namespace A199681

/-- `xor(7, 11*9^n)` -/
def P10754985027907711034.Spec : Prop :=
  ∀ n, (P10754985027907711034.a n : ℤ) = A199681 n

end A199681

/-! ## A199681.P3001841763569960457

`A199114(2*n)`
-/

namespace A199681.P3001841763569960457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199114 (2 * n)

end

end A199681.P3001841763569960457

namespace A199681

/-- `A199114(2*n)` -/
def P3001841763569960457.Spec : Prop :=
  ∀ n, P3001841763569960457.a n = A199681 n

end A199681

/-! ## A199681.P2811342728156238697

`2*A199680(n)`
-/

namespace A199681.P2811342728156238697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199680 n

end

end A199681.P2811342728156238697

namespace A199681

/-- `2*A199680(n)` -/
def P2811342728156238697.Spec : Prop :=
  ∀ n, P2811342728156238697.a n = A199681 n

end A199681

/-! ## A199681.P15582769721347798165

`4*A199679(n)`
-/

namespace A199681.P15582769721347798165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199679 n

end

end A199681.P15582769721347798165

namespace A199681

/-- `4*A199679(n)` -/
def P15582769721347798165.Spec : Prop :=
  ∀ n, P15582769721347798165.a n = A199681 n

end A199681

/-! ## A199681.P11959075824861820607

`2*(A198969(n)+1)`
-/

namespace A199681.P11959075824861820607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198969 n + 1)

end

end A199681.P11959075824861820607

namespace A199681

/-- `2*(A198969(n)+1)` -/
def P11959075824861820607.Spec : Prop :=
  ∀ n, P11959075824861820607.a n = A199681 n

end A199681

/-! ## A199681.P12085655079588011317

`2*A199113(2*n)`
-/

namespace A199681.P12085655079588011317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199113 (2 * n)

end

end A199681.P12085655079588011317

namespace A199681

/-- `2*A199113(2*n)` -/
def P12085655079588011317.Spec : Prop :=
  ∀ n, P12085655079588011317.a n = A199681 n

end A199681

/-! ## A199681.P18186078301695990043

`2*(A052909(2*n+1)+1)`
-/

namespace A199681.P18186078301695990043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052909 (2 * n + 1) + 1)

end

end A199681.P18186078301695990043

namespace A199681

/-- `2*(A052909(2*n+1)+1)` -/
def P18186078301695990043.Spec : Prop :=
  ∀ n, P18186078301695990043.a n = A199681 n

end A199681

/-! ## A199681.P15310866987645443214

`lcm(4, A198969(n%(n+1))+1)`
-/

namespace A199681.P15310866987645443214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A198969 (n % (n + 1)) + 1)

end

end A199681.P15310866987645443214

namespace A199681

/-- `lcm(4, A198969(n%(n+1))+1)` -/
def P15310866987645443214.Spec : Prop :=
  ∀ n, (P15310866987645443214.a n : ℤ) = A199681 n

end A199681

/-! ## A199681.P13704139512630692571

`abs(A120354(2*n)-(1-4/2))`
-/

namespace A199681.P13704139512630692571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A120354 (2 * n) : ℚ) - (1 - (4 : ℚ) / 2)|

end

end A199681.P13704139512630692571

namespace A199681

/-- `abs(A120354(2*n)-(1-4/2))` -/
def P13704139512630692571.Spec : Prop :=
  ∀ n, P13704139512630692571.a n = (A199681 n : ℚ)

end A199681

/-! ## A199681.P5482077697522112763

`2*(A253062(A016969(n))+1)`
-/

namespace A199681.P5482077697522112763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253062 (A016969 n).toNat + 1)

end

end A199681.P5482077697522112763

namespace A199681

/-- `2*(A253062(A016969(n))+1)` -/
def P5482077697522112763.Spec : Prop :=
  ∀ n, P5482077697522112763.a n = A199681 n

end A199681

/-! ## A199681.P14866497583681984801

`2*(A083884(n+1)+A000244(n)²)`
-/

namespace A199681.P14866497583681984801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083884 (n + 1) + A000244 n ^ 2)

end

end A199681.P14866497583681984801

namespace A199681

/-- `2*(A083884(n+1)+A000244(n)²)` -/
def P14866497583681984801.Spec : Prop :=
  ∀ n, P14866497583681984801.a n = A199681 n

end A199681

/-! ## A199681.P15836762304117717408

`2*(A083884(n+1)+A000244(2*n))`
-/

namespace A199681.P15836762304117717408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083884 (n + 1) + A000244 (2 * n))

end

end A199681.P15836762304117717408

namespace A199681

/-- `2*(A083884(n+1)+A000244(2*n))` -/
def P15836762304117717408.Spec : Prop :=
  ∀ n, P15836762304117717408.a n = A199681 n

end A199681

/-! ## A199681.P5837580315116550181

`2*(A007051(2*n)+A005030(2*n))`
-/

namespace A199681.P5837580315116550181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 (2 * n) + A005030 (2 * n))

end

end A199681.P5837580315116550181

namespace A199681

/-- `2*(A007051(2*n)+A005030(2*n))` -/
def P5837580315116550181.Spec : Prop :=
  ∀ n, P5837580315116550181.a n = A199681 n

end A199681

/-! ## A199681.P5634104106640161990

`2*(A199109(2*n)+A008776(2*n))`
-/

namespace A199681.P5634104106640161990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199109 (2 * n) + A008776 (2 * n))

end

end A199681.P5634104106640161990

namespace A199681

/-- `2*(A199109(2*n)+A008776(2*n))` -/
def P5634104106640161990.Spec : Prop :=
  ∀ n, P5634104106640161990.a n = A199681 n

end A199681

/-! ## A199681.P15719355210205213378

`2*(A171498(2*n)+A067771(2*n))`
-/

namespace A199681.P15719355210205213378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171498 (2 * n) + A067771 (2 * n))

end

end A199681.P15719355210205213378

namespace A199681

/-- `2*(A171498(2*n)+A067771(2*n))` -/
def P15719355210205213378.Spec : Prop :=
  ∀ n, P15719355210205213378.a n = A199681 n

end A199681

/-! ## A199681.P16838044052436550007

`2*(A198643(2*n)+A115098(2*n))`
-/

namespace A199681.P16838044052436550007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198643 (2 * n) + A115098 (2 * n))

end

end A199681.P16838044052436550007

namespace A199681

/-- `2*(A198643(2*n)+A115098(2*n))` -/
def P16838044052436550007.Spec : Prop :=
  ∀ n, P16838044052436550007.a n = A199681 n

end A199681

/-!
# A199682: a(n) = 2*10^n + 1.

The programs for A199682, the canonical program `A199682.P5052991062542411670` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199682 has offset 0).

The definition of A199682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*10^n+1` (program `A199682.P5052991062542411670`, by `A199682.P5052991062542411670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199682.P5052991062542411670

`2*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199682

/-- `2*10^n+1` -/
def P5052991062542411670.Spec : Prop :=
  ∀ n, (P5052991062542411670.a n : ℤ) = A199682 n

theorem P5052991062542411670.correct : P5052991062542411670.Spec := by
  intro n
  simp only [A199682]

end A199682

/-! ## A199682.P14870707896465468630

`or(1, 2*10^n)`
-/

namespace A199682.P14870707896465468630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 10 ^ n)

end

end A199682.P14870707896465468630

namespace A199682

/-- `or(1, 2*10^n)` -/
def P14870707896465468630.Spec : Prop :=
  ∀ n, (P14870707896465468630.a n : ℤ) = A199682 n

end A199682

/-! ## A199682.P14932013722463229751

`xor(1, 2*10^n)`
-/

namespace A199682.P14932013722463229751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 10 ^ n)

end

end A199682.P14932013722463229751

namespace A199682

/-- `xor(1, 2*10^n)` -/
def P14932013722463229751.Spec : Prop :=
  ∀ n, (P14932013722463229751.a n : ℤ) = A199682 n

end A199682

/-! ## A199682.P3514468351725854434

`∑[10*a(n-1)]` with `a(0)=3, a(1)=18`
-/

namespace A199682.P3514468351725854434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 18] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199682.P3514468351725854434

namespace A199682

/-- `∑[10*a(n-1)]` -/
def P3514468351725854434.Spec : Prop :=
  ∀ n, (P3514468351725854434.a n : ℤ) = A199682 n

end A199682

/-! ## A199682.P5256918567808320529

`ceil(A199684(n)/2)`
-/

namespace A199682.P5256918567808320529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199684 n : ℚ) / 2⌉

end

end A199682.P5256918567808320529

namespace A199682

/-- `ceil(A199684(n)/2)` -/
def P5256918567808320529.Spec : Prop :=
  ∀ n, P5256918567808320529.a n = A199682 n

end A199682

/-! ## A199682.P6188019842341928278

`∑[3*A090019(n)]`
-/

namespace A199682.P6188019842341928278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199682.P6188019842341928278

namespace A199682

/-- `∑[3*A090019(n)]` -/
def P6188019842341928278.Spec : Prop :=
  ∀ n, P6188019842341928278.a n = A199682 n

end A199682

/-! ## A199682.P7421909206057503947

`3*(A002280(n)+1)`
-/

namespace A199682.P7421909206057503947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002280 n + 1)

end

end A199682.P7421909206057503947

namespace A199682

/-- `3*(A002280(n)+1)` -/
def P7421909206057503947.Spec : Prop :=
  ∀ n, P7421909206057503947.a n = A199682 n

end A199682

/-! ## A199682.P14033852453515963405

`3*A067275(n+1)`
-/

namespace A199682.P14033852453515963405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A067275 (n + 1)

end

end A199682.P14033852453515963405

namespace A199682

/-- `3*A067275(n+1)` -/
def P14033852453515963405.Spec : Prop :=
  ∀ n, P14033852453515963405.a n = A199682 n

end A199682

/-! ## A199682.P249438536876532014

`(A198970(n)+3)/2`
-/

namespace A199682.P249438536876532014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198970 n + 3 : ℚ) / 2

end

end A199682.P249438536876532014

namespace A199682

/-- `(A198970(n)+3)/2` -/
def P249438536876532014.Spec : Prop :=
  ∀ n, P249438536876532014.a n = (A199682 n : ℚ)

end A199682

/-! ## A199682.P16751891748285686464

`(A199686(n)+2)/3`
-/

namespace A199682.P16751891748285686464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199686 n + 2 : ℚ) / 3

end

end A199682.P16751891748285686464

namespace A199682

/-- `(A199686(n)+2)/3` -/
def P16751891748285686464.Spec : Prop :=
  ∀ n, P16751891748285686464.a n = (A199682 n : ℚ)

end A199682

/-! ## A199682.P5490140449574456821

`A133472(n+1)/5`
-/

namespace A199682.P5490140449574456821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133472 (n + 1) : ℚ) / 5

end

end A199682.P5490140449574456821

namespace A199682

/-- `A133472(n+1)/5` -/
def P5490140449574456821.Spec : Prop :=
  ∀ n, P5490140449574456821.a n = (A199682 n : ℚ)

end A199682

/-! ## A199682.P9752840379649973019

`(A199689(n)+3)/4`
-/

namespace A199682.P9752840379649973019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199689 n + 3 : ℚ) / 4

end

end A199682.P9752840379649973019

namespace A199682

/-- `(A199689(n)+3)/4` -/
def P9752840379649973019.Spec : Prop :=
  ∀ n, P9752840379649973019.a n = (A199682 n : ℚ)

end A199682

/-! ## A199682.P4373248634026740660

`(A133384(n)+3)/5`
-/

namespace A199682.P4373248634026740660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133384 n + 3 : ℚ) / 5

end

end A199682.P4373248634026740660

namespace A199682

/-- `(A133384(n)+3)/5` -/
def P4373248634026740660.Spec : Prop :=
  ∀ n, P4373248634026740660.a n = (A199682 n : ℚ)

end A199682

/-! ## A199682.P8962436882447696930

`(A198973(n)+5)/4`
-/

namespace A199682.P8962436882447696930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198973 n + 5 : ℚ) / 4

end

end A199682.P8962436882447696930

namespace A199682

/-- `(A198973(n)+5)/4` -/
def P8962436882447696930.Spec : Prop :=
  ∀ n, P8962436882447696930.a n = (A199682 n : ℚ)

end A199682

/-! ## A199682.P3971308782220188611

`record[Δ[A322925(n)]+2]`
-/

namespace A199682.P3971308782220188611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199682.P3971308782220188611

namespace A199682

/-- `record[Δ[A322925(n)]+2]` -/
def P3971308782220188611.Spec : Prop :=
  ∀ n, P3971308782220188611.a n = A199682 n

end A199682

/-! ## A199682.P12569401280163603078

`3*A237424(∑[n+1])`
-/

namespace A199682.P12569401280163603078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A237424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199682.P12569401280163603078

namespace A199682

/-- `3*A237424(∑[n+1])` -/
def P12569401280163603078.Spec : Prop :=
  ∀ n, P12569401280163603078.a n = A199682 n

end A199682

/-! ## A199682.P9878060960482657428

`(A216179(n+1)+2)/5`
-/

namespace A199682.P9878060960482657428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216179 (n + 1) + 2 : ℚ) / 5

end

end A199682.P9878060960482657428

namespace A199682

/-- `(A216179(n+1)+2)/5` -/
def P9878060960482657428.Spec : Prop :=
  ∀ n, P9878060960482657428.a n = (A199682 n : ℚ)

end A199682

/-!
# A199683: a(n) = 3*10^n + 1.

The programs for A199683, the canonical program `A199683.P13133772088393179455` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199683 has offset 0).

The definition of A199683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*10^n+1` (program `A199683.P13133772088393179455`, by `A199683.P13133772088393179455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199683.P13133772088393179455

`3*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199683

/-- `3*10^n+1` -/
def P13133772088393179455.Spec : Prop :=
  ∀ n, (P13133772088393179455.a n : ℤ) = A199683 n

theorem P13133772088393179455.correct : P13133772088393179455.Spec := by
  intro n
  simp only [A199683]

end A199683

/-! ## A199683.P5190844216255219139

`abs(xor(3*10^n, -1))`
-/

namespace A199683.P5190844216255219139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 * 10 ^ n : ℤ) (-1)|

end

end A199683.P5190844216255219139

namespace A199683

/-- `abs(xor(3*10^n, -1))` -/
def P5190844216255219139.Spec : Prop :=
  ∀ n, P5190844216255219139.a n = A199683 n

end A199683

/-! ## A199683.P12049190878147013549

`ceil(A199686(n)/2)`
-/

namespace A199683.P12049190878147013549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199686 n : ℚ) / 2⌉

end

end A199683.P12049190878147013549

namespace A199683

/-- `ceil(A199686(n)/2)` -/
def P12049190878147013549.Spec : Prop :=
  ∀ n, P12049190878147013549.a n = A199683 n

end A199683

/-! ## A199683.P16627447798795264191

`Δ[A002277(n)+n]`
-/

namespace A199683.P16627447798795264191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199683.P16627447798795264191

namespace A199683

/-- `Δ[A002277(n)+n]` -/
def P16627447798795264191.Spec : Prop :=
  ∀ n, P16627447798795264191.a n = A199683 n

end A199683

/-! ## A199683.P15352564071794886589

`Δ[A093137(n)+n]`
-/

namespace A199683.P15352564071794886589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199683.P15352564071794886589

namespace A199683

/-- `Δ[A093137(n)+n]` -/
def P15352564071794886589.Spec : Prop :=
  ∀ n, P15352564071794886589.a n = A199683 n

end A199683

/-! ## A199683.P5130637071817082011

`(Δ[A002280(n)]+2)/2`
-/

namespace A199683.P5130637071817082011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 2

end

end A199683.P5130637071817082011

namespace A199683

/-- `(Δ[A002280(n)]+2)/2` -/
def P5130637071817082011.Spec : Prop :=
  ∀ n, P5130637071817082011.a n = (A199683 n : ℚ)

end A199683

/-! ## A199683.P11498512391348625935

`Δ[A133472(n)/3+n]`
-/

namespace A199683.P11498512391348625935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133472 n : ℚ) / 3 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199683.P11498512391348625935

namespace A199683

/-- `Δ[A133472(n)/3+n]` -/
def P11498512391348625935.Spec : Prop :=
  ∀ n, P11498512391348625935.a n = (A199683 n : ℚ)

end A199683

/-! ## A199683.P13978073105122738365

`(A090019(n+1)+2)/2`
-/

namespace A199683.P13978073105122738365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090019 (n + 1) + 2 : ℚ) / 2

end

end A199683.P13978073105122738365

namespace A199683

/-- `(A090019(n+1)+2)/2` -/
def P13978073105122738365.Spec : Prop :=
  ∀ n, P13978073105122738365.a n = (A199683 n : ℚ)

end A199683

/-! ## A199683.P787262922293120758

`(A099151(n+1)+3)/2`
-/

namespace A199683.P787262922293120758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099151 (n + 1) + 3 : ℚ) / 2

end

end A199683.P787262922293120758

namespace A199683

/-- `(A099151(n+1)+3)/2` -/
def P787262922293120758.Spec : Prop :=
  ∀ n, P787262922293120758.a n = (A199683 n : ℚ)

end A199683

/-! ## A199683.P11632059637264654599

`abs(Δ[3*A002275(n)]+1)`
-/

namespace A199683.P11632059637264654599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A199683.P11632059637264654599

namespace A199683

/-- `abs(Δ[3*A002275(n)]+1)` -/
def P11632059637264654599.Spec : Prop :=
  ∀ n, P11632059637264654599.a n = A199683 n

end A199683

/-! ## A199683.P6125456917940406106

`Δ[floor(A011557(n)/3)+n]`
-/

namespace A199683.P6125456917940406106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011557 n : ℚ) / 3⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199683.P6125456917940406106

namespace A199683

/-- `Δ[floor(A011557(n)/3)+n]` -/
def P6125456917940406106.Spec : Prop :=
  ∀ n, P6125456917940406106.a n = A199683 n

end A199683

/-! ## A199683.P315297306489878994

`floor(3*(Δ[A002276(n)]+1)/2)`
-/

namespace A199683.P315297306489878994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (f1 (n + 1) - f1 n + 1) : ℚ) / 2⌋

end

end A199683.P315297306489878994

namespace A199683

/-- `floor(3*(Δ[A002276(n)]+1)/2)` -/
def P315297306489878994.Spec : Prop :=
  ∀ n, P315297306489878994.a n = A199683 n

end A199683

/-!
# A199684: a(n) = 4*10^n+1.

The programs for A199684, the canonical program `A199684.P9033483143699247496` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199684 has offset 0).

The definition of A199684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*10^n+1` (program `A199684.P9033483143699247496`, by `A199684.P9033483143699247496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199684.P9033483143699247496

`4*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199684

/-- `4*10^n+1` -/
def P9033483143699247496.Spec : Prop :=
  ∀ n, (P9033483143699247496.a n : ℤ) = A199684 n

theorem P9033483143699247496.correct : P9033483143699247496.Spec := by
  intro n
  simp only [A199684]

end A199684

/-! ## A199684.P2072816614763335971

`or(1, 4*10^n)`
-/

namespace A199684.P2072816614763335971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 10 ^ n)

end

end A199684.P2072816614763335971

namespace A199684

/-- `or(1, 4*10^n)` -/
def P2072816614763335971.Spec : Prop :=
  ∀ n, (P2072816614763335971.a n : ℤ) = A199684 n

end A199684

/-! ## A199684.P9070696100157077051

`xor(1, 4*10^n)`
-/

namespace A199684.P9070696100157077051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 10 ^ n)

end

end A199684.P9070696100157077051

namespace A199684

/-- `xor(1, 4*10^n)` -/
def P9070696100157077051.Spec : Prop :=
  ∀ n, (P9070696100157077051.a n : ℤ) = A199684 n

end A199684

/-! ## A199684.P15389893804373087499

`∑[10*a(n-1)]` with `a(0)=5, a(1)=36`
-/

namespace A199684.P15389893804373087499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199684.P15389893804373087499

namespace A199684

/-- `∑[10*a(n-1)]` -/
def P15389893804373087499.Spec : Prop :=
  ∀ n, (P15389893804373087499.a n : ℤ) = A199684 n

end A199684

/-! ## A199684.P3402915896782909693

`ceil(A199689(n)/2)`
-/

namespace A199684.P3402915896782909693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199689 n : ℚ) / 2⌉

end

end A199684.P3402915896782909693

namespace A199684

/-- `ceil(A199689(n)/2)` -/
def P3402915896782909693.Spec : Prop :=
  ∀ n, P3402915896782909693.a n = A199684 n

end A199684

/-! ## A199684.P2452200425136647465

`Δ[A002278(n)+n]`
-/

namespace A199684.P2452200425136647465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199684.P2452200425136647465

namespace A199684

/-- `Δ[A002278(n)+n]` -/
def P2452200425136647465.Spec : Prop :=
  ∀ n, P2452200425136647465.a n = A199684 n

end A199684

/-! ## A199684.P17554210074059302651

`(A198973(n)+3)/2`
-/

namespace A199684.P17554210074059302651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198973 n + 3 : ℚ) / 2

end

end A199684.P17554210074059302651

namespace A199684

/-- `(A198973(n)+3)/2` -/
def P17554210074059302651.Spec : Prop :=
  ∀ n, P17554210074059302651.a n = (A199684 n : ℚ)

end A199684

/-! ## A199684.P1229885522741855975

`A350995(2*n)/A097166(n)`
-/

namespace A199684.P1229885522741855975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350995 (2 * n) : ℚ) / (A097166 n : ℚ)

end

end A199684.P1229885522741855975

namespace A199684

/-- `A350995(2*n)/A097166(n)` -/
def P1229885522741855975.Spec : Prop :=
  ∀ n, P1229885522741855975.a n = (A199684 n : ℚ)

end A199684

/-!
# A199685: a(n) = 5*10^n + 1.

The programs for A199685, the canonical program `A199685.P3198493407434743827` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199685 has offset 0).

The definition of A199685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*10^n+1` (program `A199685.P3198493407434743827`, by `A199685.P3198493407434743827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199685.P3198493407434743827

`5*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199685

/-- `5*10^n+1` -/
def P3198493407434743827.Spec : Prop :=
  ∀ n, (P3198493407434743827.a n : ℤ) = A199685 n

theorem P3198493407434743827.correct : P3198493407434743827.Spec := by
  intro n
  simp only [A199685]

end A199685

/-! ## A199685.P5679253392672017093

`3*A126109(n)`
-/

namespace A199685.P5679253392672017093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126109 n

end

end A199685.P5679253392672017093

namespace A199685

/-- `3*A126109(n)` -/
def P5679253392672017093.Spec : Prop :=
  ∀ n, P5679253392672017093.a n = A199685 n

end A199685

/-! ## A199685.P2793834358979592248

`-xor(5*10^n, -1)`
-/

namespace A199685.P2793834358979592248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (5 * 10 ^ n : ℤ) (-1)

end

end A199685.P2793834358979592248

namespace A199685

/-- `-xor(5*10^n, -1)` -/
def P2793834358979592248.Spec : Prop :=
  ∀ n, P2793834358979592248.a n = A199685 n

end A199685

/-! ## A199685.P7323381513017653007

`lcm(3, ceil(10^(n+1)/6))`
-/

namespace A199685.P7323381513017653007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌈(10 ^ (n + 1) : ℚ) / 6⌉

end

end A199685.P7323381513017653007

namespace A199685

/-- `lcm(3, ceil(10^(n+1)/6))` -/
def P7323381513017653007.Spec : Prop :=
  ∀ n, (P7323381513017653007.a n : ℤ) = A199685 n

end A199685

/-! ## A199685.P12472051846752249485

`A133384(n)/2`
-/

namespace A199685.P12472051846752249485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133384 n : ℚ) / 2

end

end A199685.P12472051846752249485

namespace A199685

/-- `A133384(n)/2` -/
def P12472051846752249485.Spec : Prop :=
  ∀ n, P12472051846752249485.a n = (A199685 n : ℚ)

end A199685

/-! ## A199685.P6126229464229761373

`Δ[A002279(n)+n]`
-/

namespace A199685.P6126229464229761373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199685.P6126229464229761373

namespace A199685

/-- `Δ[A002279(n)+n]` -/
def P6126229464229761373.Spec : Prop :=
  ∀ n, P6126229464229761373.a n = A199685 n

end A199685

/-! ## A199685.P12001840483845725304

`3*(A246057(n)+1)`
-/

namespace A199685.P12001840483845725304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A246057 n + 1)

end

end A199685.P12001840483845725304

namespace A199685

/-- `3*(A246057(n)+1)` -/
def P12001840483845725304.Spec : Prop :=
  ∀ n, P12001840483845725304.a n = A199685 n

end A199685

/-! ## A199685.P17224178202113772423

`ceil(A000533(n+1)/2)`
-/

namespace A199685.P17224178202113772423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000533 (n + 1) : ℚ) / 2⌉

end

end A199685.P17224178202113772423

namespace A199685

/-- `ceil(A000533(n+1)/2)` -/
def P17224178202113772423.Spec : Prop :=
  ∀ n, P17224178202113772423.a n = A199685 n

end A199685

/-! ## A199685.P9683800982687780366

`ceil(A062397(n+1)/2)`
-/

namespace A199685.P9683800982687780366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062397 (n + 1) : ℚ) / 2⌉

end

end A199685.P9683800982687780366

namespace A199685

/-- `ceil(A062397(n+1)/2)` -/
def P9683800982687780366.Spec : Prop :=
  ∀ n, P9683800982687780366.a n = A199685 n

end A199685

/-! ## A199685.P15009235881604163265

`(A216179(n+1)-1)/2`
-/

namespace A199685.P15009235881604163265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216179 (n + 1) - 1 : ℚ) / 2

end

end A199685.P15009235881604163265

namespace A199685

/-- `(A216179(n+1)-1)/2` -/
def P15009235881604163265.Spec : Prop :=
  ∀ n, P15009235881604163265.a n = (A199685 n : ℚ)

end A199685

/-! ## A199685.P12465379244106905440

`(A002283(n+1)+3)/2`
-/

namespace A199685.P12465379244106905440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002283 (n + 1) + 3 : ℚ) / 2

end

end A199685.P12465379244106905440

namespace A199685

/-- `(A002283(n+1)+3)/2` -/
def P12465379244106905440.Spec : Prop :=
  ∀ n, P12465379244106905440.a n = (A199685 n : ℚ)

end A199685

/-! ## A199685.P14927262779051757170

`3/2*A093137(n+1)`
-/

namespace A199685.P14927262779051757170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A093137 (n + 1) : ℚ)

end

end A199685.P14927262779051757170

namespace A199685

/-- `3/2*A093137(n+1)` -/
def P14927262779051757170.Spec : Prop :=
  ∀ n, P14927262779051757170.a n = (A199685 n : ℚ)

end A199685

/-! ## A199685.P15654677399581290152

`(A173833(n+1)+5)/2`
-/

namespace A199685.P15654677399581290152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173833 (n + 1) + 5 : ℚ) / 2

end

end A199685.P15654677399581290152

namespace A199685

/-- `(A173833(n+1)+5)/2` -/
def P15654677399581290152.Spec : Prop :=
  ∀ n, P15654677399581290152.a n = (A199685 n : ℚ)

end A199685

/-! ## A199685.P6919245604054762975

`(A266959(n+2)-n)/2`
-/

namespace A199685.P6919245604054762975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266959 (n + 2) - (n : ℤ) : ℚ) / 2

end

end A199685.P6919245604054762975

namespace A199685

/-- `(A266959(n+2)-n)/2` -/
def P6919245604054762975.Spec : Prop :=
  ∀ n, P6919245604054762975.a n = (A199685 n : ℚ)

end A199685

/-! ## A199685.P442482264861601554

`ceil((2*A198971(n)+3)/2)`
-/

namespace A199685.P442482264861601554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A198971 n + 3 : ℚ) / 2⌉

end

end A199685.P442482264861601554

namespace A199685

/-- `ceil((2*A198971(n)+3)/2)` -/
def P442482264861601554.Spec : Prop :=
  ∀ n, P442482264861601554.a n = A199685 n

end A199685

/-! ## A199685.P6637067994169411369

`(A038444(A000124(n))+1)/2`
-/

namespace A199685.P6637067994169411369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038444 (A000124 n).toNat + 1 : ℚ) / 2

end

end A199685.P6637067994169411369

namespace A199685

/-- `(A038444(A000124(n))+1)/2` -/
def P6637067994169411369.Spec : Prop :=
  ∀ n, P6637067994169411369.a n = (A199685 n : ℚ)

end A199685

/-!
# A199686: a(n) = 6*10^n + 1.

The programs for A199686, the canonical program `A199686.P17827546866807194332` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199686 has offset 0).

The definition of A199686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*10^n+1` (program `A199686.P17827546866807194332`, by `A199686.P17827546866807194332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199686.P17827546866807194332

`6*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199686

/-- `6*10^n+1` -/
def P17827546866807194332.Spec : Prop :=
  ∀ n, (P17827546866807194332.a n : ℤ) = A199686 n

theorem P17827546866807194332.correct : P17827546866807194332.Spec := by
  intro n
  simp only [A199686]

end A199686

/-! ## A199686.P16554606961970976737

`or(1, 6*10^n)`
-/

namespace A199686.P16554606961970976737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * 10 ^ n)

end

end A199686.P16554606961970976737

namespace A199686

/-- `or(1, 6*10^n)` -/
def P16554606961970976737.Spec : Prop :=
  ∀ n, (P16554606961970976737.a n : ℤ) = A199686 n

end A199686

/-! ## A199686.P9774017424477497266

`xor(1, 6*10^n)`
-/

namespace A199686.P9774017424477497266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * 10 ^ n)

end

end A199686.P9774017424477497266

namespace A199686

/-- `xor(1, 6*10^n)` -/
def P9774017424477497266.Spec : Prop :=
  ∀ n, (P9774017424477497266.a n : ℤ) = A199686 n

end A199686

/-! ## A199686.P16325631084423460475

`Δ[lcm(2, floor(10^n/3))+n]`
-/

namespace A199686.P16325631084423460475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(10 ^ n : ℚ) / 3⌋ + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199686.P16325631084423460475

namespace A199686

/-- `Δ[lcm(2, floor(10^n/3))+n]` -/
def P16325631084423460475.Spec : Prop :=
  ∀ n, P16325631084423460475.a n = A199686 n

end A199686

/-! ## A199686.P8098836412597136380

`Δ[A002280(n)+n]`
-/

namespace A199686.P8098836412597136380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199686.P8098836412597136380

namespace A199686

/-- `Δ[A002280(n)+n]` -/
def P8098836412597136380.Spec : Prop :=
  ∀ n, P8098836412597136380.a n = A199686 n

end A199686

/-! ## A199686.P6725138676011849966

`Δ[A067275(n+1)+n]`
-/

namespace A199686.P6725138676011849966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199686.P6725138676011849966

namespace A199686

/-- `Δ[A067275(n+1)+n]` -/
def P6725138676011849966.Spec : Prop :=
  ∀ n, P6725138676011849966.a n = A199686 n

end A199686

/-! ## A199686.P9861055336977649301

`Δ[2*A002277(n)+n]`
-/

namespace A199686.P9861055336977649301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002277 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199686.P9861055336977649301

namespace A199686

/-- `Δ[2*A002277(n)+n]` -/
def P9861055336977649301.Spec : Prop :=
  ∀ n, P9861055336977649301.a n = A199686 n

end A199686

/-! ## A199686.P14411782104902489333

`abs(A083818(n+1)-A099150(n+1))`
-/

namespace A199686.P14411782104902489333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083818 (n + 1) - A099150 (n + 1)|

end

end A199686.P14411782104902489333

namespace A199686

/-- `abs(A083818(n+1)-A099150(n+1))` -/
def P14411782104902489333.Spec : Prop :=
  ∀ n, P14411782104902489333.a n = A199686 n

end A199686

/-!
# A199687: a(n) = 7*10^n + 1.

The programs for A199687, the canonical program `A199687.P1808707116727653367` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199687 has offset 0).

The definition of A199687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*10^n+1` (program `A199687.P1808707116727653367`, by `A199687.P1808707116727653367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199687.P1808707116727653367

`7*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199687

/-- `7*10^n+1` -/
def P1808707116727653367.Spec : Prop :=
  ∀ n, (P1808707116727653367.a n : ℤ) = A199687 n

theorem P1808707116727653367.correct : P1808707116727653367.Spec := by
  intro n
  simp only [A199687]

end A199687

/-! ## A199687.P14552156311593707937

`Δ[A002281(n)+n]`
-/

namespace A199687.P14552156311593707937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199687.P14552156311593707937

namespace A199687

/-- `Δ[A002281(n)+n]` -/
def P14552156311593707937.Spec : Prop :=
  ∀ n, P14552156311593707937.a n = A199687 n

end A199687

/-! ## A199687.P14457260488916123652

`Δ[∑[A196662(n)]+n]`
-/

namespace A199687.P14457260488916123652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199687.P14457260488916123652

namespace A199687

/-- `Δ[∑[A196662(n)]+n]` -/
def P14457260488916123652.Spec : Prop :=
  ∀ n, P14457260488916123652.a n = A199687 n

end A199687

/-! ## A199687.P8632352947675508486

`Δ[7*A002275(n)+n]`
-/

namespace A199687.P8632352947675508486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002275 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199687.P8632352947675508486

namespace A199687

/-- `Δ[7*A002275(n)+n]` -/
def P8632352947675508486.Spec : Prop :=
  ∀ n, P8632352947675508486.a n = A199687 n

end A199687

/-! ## A199687.P16674080596037166959

`Δ[7/3*A002277(n)+n]`
-/

namespace A199687.P16674080596037166959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 3 * (A002277 n : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199687.P16674080596037166959

namespace A199687

/-- `Δ[7/3*A002277(n)+n]` -/
def P16674080596037166959.Spec : Prop :=
  ∀ n, P16674080596037166959.a n = (A199687 n : ℚ)

end A199687

/-! ## A199687.P7293621882723192015

`abs(A346178(n+1)-A002283(n))`
-/

namespace A199687.P7293621882723192015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346178 (n + 1) - A002283 n|

end

end A199687.P7293621882723192015

namespace A199687

/-- `abs(A346178(n+1)-A002283(n))` -/
def P7293621882723192015.Spec : Prop :=
  ∀ n, P7293621882723192015.a n = A199687 n

end A199687

/-! ## A199687.P7823002566199228417

`Δ[∑[A011557(n)-A093138(n)]+n]`
-/

namespace A199687.P7823002566199228417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A093138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199687.P7823002566199228417

namespace A199687

/-- `Δ[∑[A011557(n)-A093138(n)]+n]` -/
def P7823002566199228417.Spec : Prop :=
  ∀ n, P7823002566199228417.a n = A199687 n

end A199687

/-!
# A199688: a(n) = (8*10^n + 1)/3.

The programs for A199688, the canonical program `A199688.P10807892893389618688` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199688 has offset 0).

The definition of A199688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*10^n+1)/3` (program `A199688.P10356186577086025443`, by `A199688.P10356186577086025443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199688.P10356186577086025443

`(8*10^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199688.P10356186577086025443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * 10 ^ n + 1 : ℚ) / 3

end

end A199688.P10356186577086025443

namespace A199688

/-- `(8*10^n+1)/3` -/
def P10356186577086025443.Spec : Prop :=
  ∀ n, P10356186577086025443.a n = (A199688 n : ℚ)

theorem P10356186577086025443.correct : P10356186577086025443.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199688, Nat.add_sub_cancel, A199688.P10356186577086025443.a, A199688.P10807892893389618688.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199688, Nat.add_sub_cancel, A199688.P10356186577086025443.a, A199688.P10807892893389618688.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199688

/-! ## A199688.P10807892893389618688

`10*a(n-1)-3` with `a(0)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199688

/-- `10*a(n-1)-3` -/
def P10807892893389618688.Spec : Prop :=
  ∀ n, P10807892893389618688.a n = A199688 n

theorem P10807892893389618688.correct : P10807892893389618688.Spec := by
  intro n
  simp only [A199688]

end A199688

/-! ## A199688.P3240270223445720737

`3*A059482(n)`
-/

namespace A199688.P3240270223445720737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059482 n

end

end A199688.P3240270223445720737

namespace A199688

/-- `3*A059482(n)` -/
def P3240270223445720737.Spec : Prop :=
  ∀ n, P3240270223445720737.a n = A199688 n

end A199688

/-! ## A199688.P3201739541467871464

`lcm(10, a(n-1))-3` with `a(0)=3`
-/

namespace A199688.P3201739541467871464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - 3

end

end A199688.P3201739541467871464

namespace A199688

/-- `lcm(10, a(n-1))-3` -/
def P3201739541467871464.Spec : Prop :=
  ∀ n, P3201739541467871464.a n = A199688 n

end A199688

/-! ## A199688.P17559544772110052902

`∑[3*A346178(n)]`
-/

namespace A199688.P17559544772110052902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A346178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199688.P17559544772110052902

namespace A199688

/-- `∑[3*A346178(n)]` -/
def P17559544772110052902.Spec : Prop :=
  ∀ n, P17559544772110052902.a n = A199688 n

end A199688

/-! ## A199688.P14528508863540144275

`2*A097166(n)+1`
-/

namespace A199688.P14528508863540144275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097166 n + 1

end

end A199688.P14528508863540144275

namespace A199688

/-- `2*A097166(n)+1` -/
def P14528508863540144275.Spec : Prop :=
  ∀ n, P14528508863540144275.a n = A199688 n

end A199688

/-! ## A199688.P11914398057012920975

`3*(A002282(n)+1)`
-/

namespace A199688.P11914398057012920975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002282 n + 1)

end

end A199688.P11914398057012920975

namespace A199688

/-- `3*(A002282(n)+1)` -/
def P11914398057012920975.Spec : Prop :=
  ∀ n, P11914398057012920975.a n = A199688 n

end A199688

/-! ## A199688.P8374840943260724233

`4*A002280(n)+3`
-/

namespace A199688.P8374840943260724233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002280 n + 3

end

end A199688.P8374840943260724233

namespace A199688

/-- `4*A002280(n)+3` -/
def P8374840943260724233.Spec : Prop :=
  ∀ n, P8374840943260724233.a n = A199688 n

end A199688

/-! ## A199688.P9850571698319424147

`A086579(n)/3+3`
-/

namespace A199688.P9850571698319424147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086579 n : ℚ) / 3 + 3

end

end A199688.P9850571698319424147

namespace A199688

/-- `A086579(n)/3+3` -/
def P9850571698319424147.Spec : Prop :=
  ∀ n, P9850571698319424147.a n = (A199688 n : ℚ)

end A199688

/-! ## A199688.P5007943271372615279

`3*A328333(2*n)`
-/

namespace A199688.P5007943271372615279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A328333 (2 * n)

end

end A199688.P5007943271372615279

namespace A199688

/-- `3*A328333(2*n)` -/
def P5007943271372615279.Spec : Prop :=
  ∀ n, P5007943271372615279.a n = A199688 n

end A199688

/-! ## A199688.P13133522674406095562

`8*A002277(n)+3`
-/

namespace A199688.P13133522674406095562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002277 n + 3

end

end A199688.P13133522674406095562

namespace A199688

/-- `8*A002277(n)+3` -/
def P13133522674406095562.Spec : Prop :=
  ∀ n, P13133522674406095562.a n = A199688 n

end A199688

/-! ## A199688.P6772950726877465051

`2*A073553(n+1)-1`
-/

namespace A199688.P6772950726877465051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073553 (n + 1) - 1

end

end A199688.P6772950726877465051

namespace A199688

/-- `2*A073553(n+1)-1` -/
def P6772950726877465051.Spec : Prop :=
  ∀ n, P6772950726877465051.a n = A199688 n

end A199688

/-! ## A199688.P8282951796574544218

`2*A097169(2*n)+1`
-/

namespace A199688.P8282951796574544218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097169 (2 * n) + 1

end

end A199688.P8282951796574544218

namespace A199688

/-- `2*A097169(2*n)+1` -/
def P8282951796574544218.Spec : Prop :=
  ∀ n, P8282951796574544218.a n = A199688 n

end A199688

/-! ## A199688.P6411391590660537800

`A126109(n)+A011557(n)`
-/

namespace A199688.P6411391590660537800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126109 n + A011557 n

end

end A199688.P6411391590660537800

namespace A199688

/-- `A126109(n)+A011557(n)` -/
def P6411391590660537800.Spec : Prop :=
  ∀ n, P6411391590660537800.a n = A199688 n

end A199688

/-! ## A199688.P13055795490663608876

`A199682(n)+A002280(n)`
-/

namespace A199688.P13055795490663608876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199682 n + A002280 n

end

end A199688.P13055795490663608876

namespace A199688

/-- `A199682(n)+A002280(n)` -/
def P13055795490663608876.Spec : Prop :=
  ∀ n, P13055795490663608876.a n = A199688 n

end A199688

/-! ## A199688.P11716091921796577329

`A002277(n+1)-A002280(n)`
-/

namespace A199688.P11716091921796577329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1) - A002280 n

end

end A199688.P11716091921796577329

namespace A199688

/-- `A002277(n+1)-A002280(n)` -/
def P11716091921796577329.Spec : Prop :=
  ∀ n, P11716091921796577329.a n = A199688 n

end A199688

/-! ## A199688.P3203620823669946431

`A093138(n+1)-A002277(n)`
-/

namespace A199688.P3203620823669946431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 (n + 1) - A002277 n

end

end A199688.P3203620823669946431

namespace A199688

/-- `A093138(n+1)-A002277(n)` -/
def P3203620823669946431.Spec : Prop :=
  ∀ n, P3203620823669946431.a n = A199688 n

end A199688

/-! ## A199688.P16001150536300083081

`A093137(n+1)-A067275(n+1)`
-/

namespace A199688.P16001150536300083081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (n + 1) - A067275 (n + 1)

end

end A199688.P16001150536300083081

namespace A199688

/-- `A093137(n+1)-A067275(n+1)` -/
def P16001150536300083081.Spec : Prop :=
  ∀ n, P16001150536300083081.a n = A199688 n

end A199688

/-! ## A199688.P2047220305303404879

`A289006(A008585(n+1))-A002280(n)`
-/

namespace A199688.P2047220305303404879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289006 (A008585 (n + 1)).toNat - A002280 n

end

end A199688.P2047220305303404879

namespace A199688

/-- `A289006(A008585(n+1))-A002280(n)` -/
def P2047220305303404879.Spec : Prop :=
  ∀ n, P2047220305303404879.a n = A199688 n

end A199688

/-!
# A199689: a(n) = 8*10^n + 1.

The programs for A199689, the canonical program `A199689.P13104816400412271063` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199689 has offset 0).

The definition of A199689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*10^n+1` (program `A199689.P13104816400412271063`, by `A199689.P13104816400412271063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199689.P13104816400412271063

`8*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199689

/-- `8*10^n+1` -/
def P13104816400412271063.Spec : Prop :=
  ∀ n, (P13104816400412271063.a n : ℤ) = A199689 n

theorem P13104816400412271063.correct : P13104816400412271063.Spec := by
  intro n
  simp only [A199689]

end A199689

/-! ## A199689.P12820736933093819963

`3*A199688(n)`
-/

namespace A199689.P12820736933093819963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199688 n

end

end A199689.P12820736933093819963

namespace A199689

/-- `3*A199688(n)` -/
def P12820736933093819963.Spec : Prop :=
  ∀ n, P12820736933093819963.a n = A199689 n

end A199689

/-! ## A199689.P9693051191354806018

`9*A059482(n)`
-/

namespace A199689.P9693051191354806018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A059482 n

end

end A199689.P9693051191354806018

namespace A199689

/-- `9*A059482(n)` -/
def P9693051191354806018.Spec : Prop :=
  ∀ n, P9693051191354806018.a n = A199689 n

end A199689

/-! ## A199689.P9187790091689761004

`or(1, 8*10^n)`
-/

namespace A199689.P9187790091689761004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * 10 ^ n)

end

end A199689.P9187790091689761004

namespace A199689

/-- `or(1, 8*10^n)` -/
def P9187790091689761004.Spec : Prop :=
  ∀ n, (P9187790091689761004.a n : ℤ) = A199689 n

end A199689

/-! ## A199689.P15397853944965800997

`xor(1, 8*10^n)`
-/

namespace A199689.P15397853944965800997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * 10 ^ n)

end

end A199689.P15397853944965800997

namespace A199689

/-- `xor(1, 8*10^n)` -/
def P15397853944965800997.Spec : Prop :=
  ∀ n, (P15397853944965800997.a n : ℤ) = A199689 n

end A199689

/-! ## A199689.P14248332229290301029

`9*A328333(2*n)`
-/

namespace A199689.P14248332229290301029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A328333 (2 * n)

end

end A199689.P14248332229290301029

namespace A199689

/-- `9*A328333(2*n)` -/
def P14248332229290301029.Spec : Prop :=
  ∀ n, P14248332229290301029.a n = A199689 n

end A199689

/-! ## A199689.P10907787422845449976

`A229364(A086570(n+1))`
-/

namespace A199689.P10907787422845449976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229364 (A086570 (n + 1)).toNat

end

end A199689.P10907787422845449976

namespace A199689

/-- `A229364(A086570(n+1))` -/
def P10907787422845449976.Spec : Prop :=
  ∀ n, P10907787422845449976.a n = A199689 n

end A199689

/-! ## A199689.P2962467316154767692

`Δ[A002282(n)-A022958(n)]`
-/

namespace A199689.P2962467316154767692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n - A022958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199689.P2962467316154767692

namespace A199689

/-- `Δ[A002282(n)-A022958(n)]` -/
def P2962467316154767692.Spec : Prop :=
  ∀ n, P2962467316154767692.a n = A199689 n

end A199689

/-!
# A199690: a(n) = (11*10^n + 1)/3.

The programs for A199690, the canonical program `A199690.P7992026217893574651` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199690 has offset 0).

The definition of A199690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*10^n+1)/3` (program `A199690.P14016626939991112389`, by `A199690.P14016626939991112389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199690.P7992026217893574651

`10*a(n-1)-3` with `a(0)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199690

/-- `10*a(n-1)-3` -/
def P7992026217893574651.Spec : Prop :=
  ∀ n, P7992026217893574651.a n = A199690 n

theorem P7992026217893574651.correct : P7992026217893574651.Spec := by
  intro n
  simp only [A199690]

end A199690

/-! ## A199690.P14016626939991112389

`(11*10^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199690.P14016626939991112389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 10 ^ n + 1 : ℚ) / 3

end

end A199690.P14016626939991112389

namespace A199690

/-- `(11*10^n+1)/3` -/
def P14016626939991112389.Spec : Prop :=
  ∀ n, P14016626939991112389.a n = (A199690 n : ℚ)

theorem P14016626939991112389.correct : P14016626939991112389.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199690, Nat.add_sub_cancel, A199690.P14016626939991112389.a, A199690.P7992026217893574651.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199690, Nat.add_sub_cancel, A199690.P14016626939991112389.a, A199690.P7992026217893574651.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199690

/-! ## A199690.P5602523692808764203

`A237424(∑[n+2])`
-/

namespace A199690.P5602523692808764203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199690.P5602523692808764203

namespace A199690

/-- `A237424(∑[n+2])` -/
def P5602523692808764203.Spec : Prop :=
  ∀ n, P5602523692808764203.a n = A199690 n

end A199690

/-! ## A199690.P13023253870395163887

`3*A090843(n)+1`
-/

namespace A199690.P13023253870395163887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090843 n + 1

end

end A199690.P13023253870395163887

namespace A199690

/-- `3*A090843(n)+1` -/
def P13023253870395163887.Spec : Prop :=
  ∀ n, P13023253870395163887.a n = A199690 n

end A199690

/-! ## A199690.P9013157346555820250

`11*A002277(n)+4`
-/

namespace A199690.P9013157346555820250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A002277 n + 4

end

end A199690.P9013157346555820250

namespace A199690

/-- `11*A002277(n)+4` -/
def P9013157346555820250.Spec : Prop :=
  ∀ n, P9013157346555820250.a n = A199690 n

end A199690

/-! ## A199690.P14058099323567561362

`11*A093137(n)-7`
-/

namespace A199690.P14058099323567561362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A093137 n - 7

end

end A199690.P14058099323567561362

namespace A199690

/-- `11*A093137(n)-7` -/
def P14058099323567561362.Spec : Prop :=
  ∀ n, P14058099323567561362.a n = A199690 n

end A199690

/-! ## A199690.P2115279288981320535

`4*10^n-1-A323639(n)`
-/

namespace A199690.P2115279288981320535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 10 ^ n : ℤ) - 1 - A323639 n

end

end A199690.P2115279288981320535

namespace A199690

/-- `4*10^n-1-A323639(n)` -/
def P2115279288981320535.Spec : Prop :=
  ∀ n, P2115279288981320535.a n = A199690 n

end A199690

/-! ## A199690.P10189224903588505653

`Δ[A011557(n)]%floor(4*4/3*10^n)`
-/

namespace A199690.P10189224903588505653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ⌊4 * ((4 : ℚ) / 3 * (10 ^ n : ℚ))⌋

end

end A199690.P10189224903588505653

namespace A199690

/-- `Δ[A011557(n)]%floor(4*4/3*10^n)` -/
def P10189224903588505653.Spec : Prop :=
  ∀ n, P10189224903588505653.a n = A199690 n

end A199690

/-! ## A199690.P7797192668063049209

`A199684(n)-A093137(n)`
-/

namespace A199690.P7797192668063049209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199684 n - A093137 n

end

end A199690.P7797192668063049209

namespace A199690

/-- `A199684(n)-A093137(n)` -/
def P7797192668063049209.Spec : Prop :=
  ∀ n, P7797192668063049209.a n = A199690 n

end A199690

/-! ## A199690.P438208669048535089

`A350995(n)-A246057(n)`
-/

namespace A199690.P438208669048535089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350995 n - A246057 n

end

end A199690.P438208669048535089

namespace A199690

/-- `A350995(n)-A246057(n)` -/
def P438208669048535089.Spec : Prop :=
  ∀ n, P438208669048535089.a n = A199690 n

end A199690

/-! ## A199690.P7056711922079935273

`Δ[A002278(n)]-A002277(n)`
-/

namespace A199690.P7056711922079935273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002277 n

end

end A199690.P7056711922079935273

namespace A199690

/-- `Δ[A002278(n)]-A002277(n)` -/
def P7056711922079935273.Spec : Prop :=
  ∀ n, P7056711922079935273.a n = A199690 n

end A199690

/-! ## A199690.P13845063476111195979

`Δ[A002278(n)-A133462(n)]`
-/

namespace A199690.P13845063476111195979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n - A133462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199690.P13845063476111195979

namespace A199690

/-- `Δ[A002278(n)-A133462(n)]` -/
def P13845063476111195979.Spec : Prop :=
  ∀ n, P13845063476111195979.a n = A199690 n

end A199690

/-! ## A199690.P15586787978715986604

`A093137(n+1)+A002277(n)`
-/

namespace A199690.P15586787978715986604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (n + 1) + A002277 n

end

end A199690.P15586787978715986604

namespace A199690

/-- `A093137(n+1)+A002277(n)` -/
def P15586787978715986604.Spec : Prop :=
  ∀ n, P15586787978715986604.a n = A199690 n

end A199690

/-! ## A199690.P11816793924203079997

`A002278(n+1)-A002281(n)`
-/

namespace A199690.P11816793924203079997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (n + 1) - A002281 n

end

end A199690.P11816793924203079997

namespace A199690

/-- `A002278(n+1)-A002281(n)` -/
def P11816793924203079997.Spec : Prop :=
  ∀ n, P11816793924203079997.a n = A199690 n

end A199690

/-! ## A199690.P12644792917495497582

`A126109(n)+2*A011557(n)`
-/

namespace A199690.P12644792917495497582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126109 n + 2 * A011557 n

end

end A199690.P12644792917495497582

namespace A199690

/-- `A126109(n)+2*A011557(n)` -/
def P12644792917495497582.Spec : Prop :=
  ∀ n, P12644792917495497582.a n = A199690 n

end A199690

/-! ## A199690.P1876905771446161487

`A098406(n)+2*A246058(n)`
-/

namespace A199690.P1876905771446161487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n + 2 * A246058 n

end

end A199690.P1876905771446161487

namespace A199690

/-- `A098406(n)+2*A246058(n)` -/
def P1876905771446161487.Spec : Prop :=
  ∀ n, P1876905771446161487.a n = A199690 n

end A199690

/-! ## A199690.P5638328294583311712

`∑[A093138(n+1)+A093138(n)]`
-/

namespace A199690.P5638328294583311712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 (n + 1) + A093138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199690.P5638328294583311712

namespace A199690

/-- `∑[A093138(n+1)+A093138(n)]` -/
def P5638328294583311712.Spec : Prop :=
  ∀ n, P5638328294583311712.a n = A199690 n

end A199690

/-! ## A199690.P4467074964989330049

`Δ[A002281(n)]-A002277(n+1)`
-/

namespace A199690.P4467074964989330049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002277 (n + 1)

end

end A199690.P4467074964989330049

namespace A199690

/-- `Δ[A002281(n)]-A002277(n+1)` -/
def P4467074964989330049.Spec : Prop :=
  ∀ n, P4467074964989330049.a n = A199690 n

end A199690

/-! ## A199690.P9823257678922905268

`A173770(n+1)+1-A002281(n)`
-/

namespace A199690.P9823257678922905268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173770 (n + 1) + (1 - A002281 n)

end

end A199690.P9823257678922905268

namespace A199690

/-- `A173770(n+1)+1-A002281(n)` -/
def P9823257678922905268.Spec : Prop :=
  ∀ n, P9823257678922905268.a n = A199690 n

end A199690

/-!
# A199691: a(n) = 11*10^n + 1.

The programs for A199691, the canonical program `A199691.P12952212274368517025` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199691 has offset 0).

The definition of A199691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*10^n+1` (program `A199691.P12952212274368517025`, by `A199691.P12952212274368517025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199691.P12952212274368517025

`11*10^n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A199691

/-- `11*10^n+1` -/
def P12952212274368517025.Spec : Prop :=
  ∀ n, (P12952212274368517025.a n : ℤ) = A199691 n

theorem P12952212274368517025.correct : P12952212274368517025.Spec := by
  intro n
  simp only [A199691]

end A199691

/-! ## A199691.P18039853134502072416

`3*A199690(n)`
-/

namespace A199691.P18039853134502072416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199690 n

end

end A199691.P18039853134502072416

namespace A199691

/-- `3*A199690(n)` -/
def P18039853134502072416.Spec : Prop :=
  ∀ n, P18039853134502072416.a n = A199691 n

end A199691

/-! ## A199691.P17017240850489809705

`lcm(3, ceil(11*10^n/3))`
-/

namespace A199691.P17017240850489809705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌈11 * ((10 ^ n : ℚ) / 3)⌉

end

end A199691.P17017240850489809705

namespace A199691

/-- `lcm(3, ceil(11*10^n/3))` -/
def P17017240850489809705.Spec : Prop :=
  ∀ n, (P17017240850489809705.a n : ℤ) = A199691 n

end A199691

/-! ## A199691.P9152120442631252326

`Δ[A090843(n)+n]`
-/

namespace A199691.P9152120442631252326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090843 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199691.P9152120442631252326

namespace A199691

/-- `Δ[A090843(n)+n]` -/
def P9152120442631252326.Spec : Prop :=
  ∀ n, P9152120442631252326.a n = A199691 n

end A199691

/-! ## A199691.P1851681533530937898

`record[Δ[A164851(n)]+2]`
-/

namespace A199691.P1851681533530937898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199691.P1851681533530937898

namespace A199691

/-- `record[Δ[A164851(n)]+2]` -/
def P1851681533530937898.Spec : Prop :=
  ∀ n, P1851681533530937898.a n = A199691 n

end A199691

/-! ## A199691.P10691815071875499279

`Δ[∑[A003953(n)]+n]`
-/

namespace A199691.P10691815071875499279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199691.P10691815071875499279

namespace A199691

/-- `Δ[∑[A003953(n)]+n]` -/
def P10691815071875499279.Spec : Prop :=
  ∀ n, P10691815071875499279.a n = A199691 n

end A199691

/-! ## A199691.P9434807530321422991

`3*A237424(∑[n+2])`
-/

namespace A199691.P9434807530321422991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A237424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199691.P9434807530321422991

namespace A199691

/-- `3*A237424(∑[n+2])` -/
def P9434807530321422991.Spec : Prop :=
  ∀ n, P9434807530321422991.a n = A199691 n

end A199691

/-! ## A199691.P8724170575659614109

`record[A164851(n+1)+1]`
-/

namespace A199691.P8724170575659614109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199691.P8724170575659614109

namespace A199691

/-- `record[A164851(n+1)+1]` -/
def P8724170575659614109.Spec : Prop :=
  ∀ n, P8724170575659614109.a n = A199691 n

end A199691

/-!
# A199692: Subsequence of Pythagorean primes (A002144): each square is used only once.

The programs for A199692, there is no canonical definition to state claims against.
-/

/-! ## A199692.P7177652092068737476

`A354201(xor(A054353(n+1), A116641(2*(n+1))))`
-/

namespace A199692.P7177652092068737476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354201 (Int.xor (A054353 (n + 1)) (A116641 (2 * (n + 1)))).toNat

end

end A199692.P7177652092068737476

/-!
# A199694: Row sums of the triangle in A199333.

The programs for A199694, there is no canonical definition to state claims against.
-/

/-! ## A199694.P16937559594855753326

`A185283(A015919(n+1)*A149169(n))`
-/

namespace A199694.P16937559594855753326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A015919 (n + 1) * A149169 n).toNat

end

end A199694.P16937559594855753326

/-!
# A199695: Row products of the triangle in A199333.

The programs for A199695, there is no canonical definition to state claims against.
-/

/-! ## A199695.P7144846217118277427

`A000041(n)*A005229(A299353(n))`
-/

namespace A199695.P7144846217118277427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A005229 (A299353 n).toNat

end

end A199695.P7144846217118277427

/-!
# A199697: Number of -1..1 arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199697, there is no canonical definition to state claims against.
-/

/-! ## A199697.P3161957127701562094

`A199704(∑[n+1])`
-/

namespace A199697.P3161957127701562094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199697.P3161957127701562094

/-! ## A199697.P8618992446335187637

`record[A199704(A160791(n+1))]`
-/

namespace A199697.P8618992446335187637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A160791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199697.P8618992446335187637

/-! ## A199697.P7245876588374692249

`record[A199704(n+1)/A046802(n)]`
-/

namespace A199697.P7245876588374692249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199704 (n + 1) : ℚ) / (A046802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199697.P7245876588374692249

/-! ## A199697.P11197266516954935984

`record[root(A199704(n+1), A008459(n))]`
-/

namespace A199697.P11197266516954935984
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199704 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199697.P11197266516954935984

/-! ## A199697.P13985452711286976727

`record[root(A199704(n+1), A009998(n))]`
-/

namespace A199697.P13985452711286976727
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199704 (n + 1) : ℝ) ^ (1 / (A009998 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199697.P13985452711286976727

/-!
# A199698: Number of -2..2 arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199698, there is no canonical definition to state claims against.
-/

/-! ## A199698.P4252724213652431708

`A199704(∑[n+2])`
-/

namespace A199698.P4252724213652431708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199698.P4252724213652431708

/-! ## A199698.P10479866290418064765

`record[gcd(A128307(n+1), A199704(n+1))]`
-/

namespace A199698.P10479866290418064765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128307 (n + 1)) (A199704 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199698.P10479866290418064765

/-! ## A199698.P13754572246548241326

`record[A199704(A000096(A344180(n)))]`
-/

namespace A199698.P13754572246548241326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199698.P13754572246548241326

/-! ## A199698.P7235512857005717200

`record[A199704(A000096(A003602(n+1)))]`
-/

namespace A199698.P7235512857005717200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199698.P7235512857005717200

/-! ## A199698.P14081792569235683976

`record[A199704(A000096(A004736(n+1)))]`
-/

namespace A199698.P14081792569235683976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199698.P14081792569235683976

/-!
# A199699: Number of -3..3 arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199699, there is no canonical definition to state claims against.
-/

/-! ## A199699.P13755999560869153223

`A199704(∑[n+3]+1)`
-/

namespace A199699.P13755999560869153223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199699.P13755999560869153223

/-! ## A199699.P11251467283438697158

`record[A199704(n+1)-A059034(n+3)]`
-/

namespace A199699.P11251467283438697158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (n + 1) - A059034 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199699.P11251467283438697158

/-! ## A199699.P11335058171831294668

`record[A199704(n+1)/A199704(n+4)]`
-/

namespace A199699.P11335058171831294668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199704 (n + 1) : ℚ) / (A199704 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199699.P11335058171831294668

/-! ## A199699.P15603805500622860413

`record[gcd(A199704(n+1), A328610(n+1))]`
-/

namespace A199699.P15603805500622860413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A199704 (n + 1)) (A328610 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199699.P15603805500622860413

/-! ## A199699.P732865180897720189

`A199704(A034856(n+2))%A002807(n+4)`
-/

namespace A199699.P732865180897720189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199704 (A034856 (n + 2)).toNat) (A002807 (n + 4))

end

end A199699.P732865180897720189

