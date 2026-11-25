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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A055101: Expansion of square of continued fraction 1/ ( 1+q/ ( 1+q^2/ ( 1+q^3/ ( 1+q^4/... )))).

The programs for A055101, there is no canonical definition to state claims against.
-/

/-! ## A055101.P5757672109626127882

`A285555(n)-A285554(n)`
-/

namespace A055101.P5757672109626127882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285555 n - A285554 n

end

end A055101.P5757672109626127882

/-! ## A055101.P4224343553667840259

`A285555(n)+A153881(n+1)*A285554(n)`
-/

namespace A055101.P4224343553667840259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285555 n + A153881 (n + 1) * A285554 n

end

end A055101.P4224343553667840259

/-! ## A055101.P8837611595167126578

`A003823(1+2*n)-A285554(n)`
-/

namespace A055101.P8837611595167126578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 (1 + 2 * n) - A285554 n

end

end A055101.P8837611595167126578

/-! ## A055101.P15790145139318069269

`∑{#}[n, A007325(#)*A007325(n-#)]`
-/

namespace A055101.P15790145139318069269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007325 k * A007325 (n - k)

end

end A055101.P15790145139318069269

/-! ## A055101.P15181387688872196206

`A286509(∑[n+3])`
-/

namespace A055101.P15181387688872196206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055101.P15181387688872196206

/-!
# A055102: Expansion of cube of continued fraction 1/ ( 1+q/ ( 1+q^2/ ( 1+q^3/ ( 1+q^4/... )))).

The programs for A055102, there is no canonical definition to state claims against.
-/

/-! ## A055102.P5422351362316353957

`A286509(∑[n+4]+2)`
-/

namespace A055102.P5422351362316353957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A055102.P5422351362316353957

/-!
# A055103: Expansion of 4th power of continued fraction 1/ ( 1+q/ ( 1+q^2/ ( 1+q^3/ ( 1+q^4/... )))).

The programs for A055103, there is no canonical definition to state claims against.
-/

/-! ## A055103.P5990830229911430690

`∑{#}[n, A055101(#)*A055101(n-#)]`
-/

namespace A055103.P5990830229911430690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A055101 k * A055101 (n - k)

end

end A055103.P5990830229911430690

/-! ## A055103.P16650169416779341394

`A286509(∑[n+5]+5)`
-/

namespace A055103.P16650169416779341394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A055103.P16650169416779341394

/-! ## A055103.P4664894298683280710

`A286509(eq[4, A025581(n)])%A010903(n)`
-/

namespace A055103.P4664894298683280710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A010903 n)

end

end A055103.P4664894298683280710

/-!
# A055104: Expansion of 1 + q/((1-q)*(1-q^2)) + q^2/((1-q)*(1-q^2)*(1-q^3)*(1-q^4)).

The programs for A055104, the canonical program `A055104.P18008443072376633459` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055104 has offset 0).

The definition of A055104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055104.P7299028913408607726

`A347586(n)+∑[round(xor(1, n)/6)]`
-/

namespace A055104.P7299028913408607726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055104.P7299028913408607726

namespace A055104

/-- `A347586(n)+∑[round(xor(1, n)/6)]` -/
def P7299028913408607726.Spec : Prop :=
  ∀ n, P7299028913408607726.a n = A055104 n

end A055104

/-! ## A055104.P8469161787300833949

`A347586(n)+∑[A008615(n)]`
-/

namespace A055104.P8469161787300833949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055104.P8469161787300833949

namespace A055104

/-- `A347586(n)+∑[A008615(n)]` -/
def P8469161787300833949.Spec : Prop :=
  ∀ n, P8469161787300833949.a n = A055104 n

theorem P8469161787300833949.correct : P8469161787300833949.Spec := by
  intro n
  simp only [A055104, Nat.add_sub_cancel, A055104.P8469161787300833949.f1, A055104.P8469161787300833949.a, A055104.P18008443072376633459.f1, A055104.P18008443072376633459.a, A005044, A005044.P15996777699151766909.a, A008615, A008615.P10410393553474300613.a, A065033, A065033.P13150710762287634520.a, A347586, A347586.P6878572311121842152.f1, A347586.P6878572311121842152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055104

/-! ## A055104.P16486302553294050425

`A347586(n)+A069905(n+1)`
-/

namespace A055104.P16486302553294050425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 n + A069905 (n + 1)

end

end A055104.P16486302553294050425

namespace A055104

/-- `A347586(n)+A069905(n+1)` -/
def P16486302553294050425.Spec : Prop :=
  ∀ n, P16486302553294050425.a n = A055104 n

end A055104

/-! ## A055104.P18008443072376633459

`A065033(n)+∑[A005044(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055104

/-- `A065033(n)+∑[A005044(n+1)]` -/
def P18008443072376633459.Spec : Prop :=
  ∀ n, P18008443072376633459.a n = A055104 n

theorem P18008443072376633459.correct : P18008443072376633459.Spec := by
  intro n
  simp only [A055104]

end A055104

/-! ## A055104.P18237564627900431455

`A065033(n)+A266769(n)-A001400(n)`
-/

namespace A055104.P18237564627900431455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + (A266769 n - A001400 n)

end

end A055104.P18237564627900431455

namespace A055104

/-- `A065033(n)+A266769(n)-A001400(n)` -/
def P18237564627900431455.Spec : Prop :=
  ∀ n, P18237564627900431455.a n = A055104 n

end A055104

/-! ## A055104.P6763476919288962666

`A320592(n+6)+A065033(n)-A001399(n)`
-/

namespace A055104.P6763476919288962666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320592 (n + 6) + (A065033 n - A001399 n)

end

end A055104.P6763476919288962666

namespace A055104

/-- `A320592(n+6)+A065033(n)-A001399(n)` -/
def P6763476919288962666.Spec : Prop :=
  ∀ n, P6763476919288962666.a n = A055104 n

end A055104

/-! ## A055104.P5012958983273438151

`A065033(n)+A026810(n+2)`
-/

namespace A055104.P5012958983273438151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A026810 (n + 2)

end

end A055104.P5012958983273438151

namespace A055104

/-- `A065033(n)+A026810(n+2)` -/
def P5012958983273438151.Spec : Prop :=
  ∀ n, P5012958983273438151.a n = A055104 n

end A055104

/-! ## A055104.P1296011236672520104

`A014591(n+1)+A347586(n)-1`
-/

namespace A055104.P1296011236672520104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 (n + 1) + (A347586 n - 1)

end

end A055104.P1296011236672520104

namespace A055104

/-- `A014591(n+1)+A347586(n)-1` -/
def P1296011236672520104.Spec : Prop :=
  ∀ n, P1296011236672520104.a n = A055104 n

end A055104

/-! ## A055104.P9952225212477230053

`A065033(n)+A029253(A033627(n+1))`
-/

namespace A055104.P9952225212477230053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A029253 (A033627 (n + 1)).toNat

end

end A055104.P9952225212477230053

namespace A055104

/-- `A065033(n)+A029253(A033627(n+1))` -/
def P9952225212477230053.Spec : Prop :=
  ∀ n, P9952225212477230053.a n = A055104 n

end A055104

/-! ## A055104.P18317721383288656368

`A288165(A016789(n))+A065033(n)`
-/

namespace A055104.P18317721383288656368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A016789 n).toNat + A065033 n

end

end A055104.P18317721383288656368

namespace A055104

/-- `A288165(A016789(n))+A065033(n)` -/
def P18317721383288656368.Spec : Prop :=
  ∀ n, P18317721383288656368.a n = A055104 n

end A055104

/-! ## A055104.P9962497343186540222

`A152146(A133263(n))+A065033(n)`
-/

namespace A055104.P9962497343186540222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A133263 n).toNat + A065033 n

end

end A055104.P9962497343186540222

namespace A055104

/-- `A152146(A133263(n))+A065033(n)` -/
def P9962497343186540222.Spec : Prop :=
  ∀ n, P9962497343186540222.a n = A055104 n

end A055104

/-!
# A055105: Triangle read by rows: T(n,k) = number of noncommutative symmetric polynomials of degree n that have exactly k different variables appearing in each monomial and which generate the algebra of all noncommutative symmetric polynomials (n >= 1, 1 <= k <= n).

The programs for A055105, there is no canonical definition to state claims against.
-/

/-! ## A055105.P17158264542961652807

`A220527(A058710(n))`
-/

namespace A055105.P17158264542961652807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (A058710 n).toNat

end

end A055105.P17158264542961652807

/-! ## A055105.P2649853803614119531

`A324662(A269948(n))`
-/

namespace A055105.P2649853803614119531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A269948 n).toNat

end

end A055105.P2649853803614119531

/-! ## A055105.P15864944518300536106

`A399201(A269945(n))`
-/

namespace A055105.P15864944518300536106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399201 (A269945 n).toNat

end

end A055105.P15864944518300536106

/-! ## A055105.P12850357681616514030

`A034463(A269948(n)+1)`
-/

namespace A055105.P12850357681616514030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A269948 n + 1).toNat

end

end A055105.P12850357681616514030

/-! ## A055105.P15195744350803974058

`A055570(A399100(n+1))`
-/

namespace A055105.P15195744350803974058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A399100 (n + 1)).toNat

end

end A055105.P15195744350803974058

/-!
# A055106: Triangle T(n,k) giving number of symmetric polynomials of degree n in k noncommuting variables, n >=2, 2 <= k <= n.

The programs for A055106, there is no canonical definition to state claims against.
-/

/-! ## A055106.P6441451358803902470

`A055105(comp[∑[n]]+1)`
-/

namespace A055106.P6441451358803902470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055105 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A055106.P6441451358803902470

/-! ## A055106.P9852633664291249493

`A055107(A061579(n)+2)`
-/

namespace A055106.P9852633664291249493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055107 (A061579 n + 2).toNat

end

end A055106.P9852633664291249493

/-! ## A055106.P9408121204753572313

`filter[A055105(n+2), A276398(#)]`
-/

namespace A055106.P9408121204753572313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A055106.P9408121204753572313

/-! ## A055106.P10486496229500116678

`A122313(A101919(n))`
-/

namespace A055106.P10486496229500116678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A101919 n).toNat

end

end A055106.P10486496229500116678

/-! ## A055106.P2110387723796160693

`A101919(n)`
-/

namespace A055106.P2110387723796160693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101919 n

end

end A055106.P2110387723796160693

/-!
# A055107: Triangle T(k,n) giving number of symmetric polynomials of degree n in k noncommuting variables, n >=2, 2 <= k <= n.

The programs for A055107, there is no canonical definition to state claims against.
-/

/-! ## A055107.P12651569850864321252

`A055106(A061579(n)+2)`
-/

namespace A055107.P12651569850864321252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055106 (A061579 n + 2).toNat

end

end A055107.P12651569850864321252

/-! ## A055107.P357211458978509467

`A055105(A099375(n)+2+n)`
-/

namespace A055107.P357211458978509467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055105 (A099375 n + 2 + (n : ℤ)).toNat

end

end A055107.P357211458978509467

/-!
# A055109: Numbers k such that Q(sqrt(-k)) has class number 6.

The programs for A055109, there is no canonical definition to state claims against.
-/

/-! ## A055109.P13273893867290671191

`A020725(eq[6, A008966(n+1)*A202084(n+1)])`
-/

namespace A055109.P13273893867290671191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055109.P13273893867290671191

/-! ## A055109.P10221176064948792729

`A063660(eq[6, A008966(n+1)*A202084(n+1)])`
-/

namespace A055109.P10221176064948792729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055109.P10221176064948792729

/-! ## A055109.P17527061710416770279

`A065475(eq[6, A008966(n+1)*A202084(n+1)])`
-/

namespace A055109.P17527061710416770279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055109.P17527061710416770279

/-!
# A055110: Numbers k such that Q(sqrt(-k)) has class number 8.

The programs for A055110, there is no canonical definition to state claims against.
-/

/-! ## A055110.P10323819142733698462

`A020725(eq[8, A008966(n+1)*A202084(n+1)])`
-/

namespace A055110.P10323819142733698462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055110.P10323819142733698462

/-! ## A055110.P8521393393264311584

`A063660(eq[8, A008966(n+1)*A202084(n+1)])`
-/

namespace A055110.P8521393393264311584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055110.P8521393393264311584

/-! ## A055110.P15584449804687964191

`A065475(eq[8, A008966(n+1)*A202084(n+1)])`
-/

namespace A055110.P15584449804687964191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055110.P15584449804687964191

/-!
# A055111: Numbers k such that Q(sqrt(-k)) has class number 10.

The programs for A055111, there is no canonical definition to state claims against.
-/

/-! ## A055111.P12796154751327822748

`A020725(eq[10, A008966(n+1)*A202084(n+1)])`
-/

namespace A055111.P12796154751327822748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055111.P12796154751327822748

/-! ## A055111.P1754051546703036960

`A063660(eq[10, A080323(n+1)²*A202084(n+1)])`
-/

namespace A055111.P1754051546703036960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n + 1) ^ 2 * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055111.P1754051546703036960

/-! ## A055111.P9668768004747858362

`eq[10, A202084(A008574(n))]`
-/

namespace A055111.P9668768004747858362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055111.P9668768004747858362

/-!
# A055112: a(n) = n*(n+1)*(2*n+1).

The programs for A055112, the canonical program `A055112.P15553195109781773626` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055112 has offset 0).

The definition of A055112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n+1)` (program `A055112.P15553195109781773626`, by `A055112.P15553195109781773626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055112.P10339235670801283555

`ogf((6x+6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A055112.P10339235670801283555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 6] [1, -4, 6, -4, 1] n

end

end A055112.P10339235670801283555

namespace A055112

/-- `ogf((6x+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10339235670801283555.Spec : Prop :=
  ∀ n, P10339235670801283555.a n = A055112 n

end A055112

/-! ## A055112.P15553195109781773626

`n*(n+1)*(2*n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055112

/-- `n*(n+1)*(2*n+1)` -/
def P15553195109781773626.Spec : Prop :=
  ∀ n, (P15553195109781773626.a n : ℤ) = A055112 n

theorem P15553195109781773626.correct : P15553195109781773626.Spec := by
  intro n
  simp only [A055112]

end A055112

/-! ## A055112.P2685118168988084274

`A005898(n)-A005408(n)`
-/

namespace A055112.P2685118168988084274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A005408 n

end

end A055112.P2685118168988084274

namespace A055112

/-- `A005898(n)-A005408(n)` -/
def P2685118168988084274.Spec : Prop :=
  ∀ n, P2685118168988084274.a n = A055112 n

theorem P2685118168988084274.correct : P2685118168988084274.Spec := by
  intro n
  simp only [A055112, Nat.add_sub_cancel, A055112.P2685118168988084274.a, A055112.P15553195109781773626.a, A005408, A005408.P17437947328870227736.a, A005898, A005898.P8127451400230703254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055112

/-! ## A055112.P818827144174829375

`A005408(n)*A046092(n)/2`
-/

namespace A055112.P818827144174829375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n * A046092 n : ℚ) / 2

end

end A055112.P818827144174829375

namespace A055112

/-- `A005408(n)*A046092(n)/2` -/
def P818827144174829375.Spec : Prop :=
  ∀ n, P818827144174829375.a n = (A055112 n : ℚ)

theorem P818827144174829375.correct : P818827144174829375.Spec := by
  intro n
  simp only [A055112, Nat.add_sub_cancel, A055112.P818827144174829375.a, A055112.P15553195109781773626.a, A005408, A005408.P17437947328870227736.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055112

/-! ## A055112.P4920147921598284980

`A005408(n)*(A001844(n)-1)/2`
-/

namespace A055112.P4920147921598284980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n * (A001844 n - 1) : ℚ) / 2

end

end A055112.P4920147921598284980

namespace A055112

/-- `A005408(n)*(A001844(n)-1)/2` -/
def P4920147921598284980.Spec : Prop :=
  ∀ n, P4920147921598284980.a n = (A055112 n : ℚ)

theorem P4920147921598284980.correct : P4920147921598284980.Spec := by
  intro n
  simp only [A055112, Nat.add_sub_cancel, A055112.P4920147921598284980.a, A055112.P15553195109781773626.a, A001844, A001844.P5037395199076350534.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055112

/-! ## A055112.P683726690185408233

`∑{#}[(n+1)²-1-n², #+n²]`
-/

namespace A055112.P683726690185408233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 1 - (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + n ^ 2)

end

end A055112.P683726690185408233

namespace A055112

/-- `∑{#}[(n+1)²-1-n², #+n²]` -/
def P683726690185408233.Spec : Prop :=
  ∀ n, (P683726690185408233.a n : ℤ) = A055112 n

end A055112

/-! ## A055112.P12426939218278595366

`Δ[C(n², 2)]`
-/

namespace A055112.P12426939218278595366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A055112.P12426939218278595366

namespace A055112

/-- `Δ[C(n², 2)]` -/
def P12426939218278595366.Spec : Prop :=
  ∀ n, P12426939218278595366.a n = A055112 n

theorem P12426939218278595366.correct : P12426939218278595366.Spec := by
  intro n
  simp only [A055112, Nat.add_sub_cancel, A055112.P12426939218278595366.f1, A055112.P12426939218278595366.a, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055112

/-! ## A055112.P9859932627121556838

`lcm(n, ∑[4*n+1])`
-/

namespace A055112.P9859932627121556838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055112.P9859932627121556838

namespace A055112

/-- `lcm(n, ∑[4*n+1])` -/
def P9859932627121556838.Spec : Prop :=
  ∀ n, (P9859932627121556838.a n : ℤ) = A055112 n

end A055112

/-! ## A055112.P5863311470735780438

`∑[∑[record[lcm(2, 3*n)]]]`
-/

namespace A055112.P5863311470735780438
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055112.P5863311470735780438

namespace A055112

/-- `∑[∑[record[lcm(2, 3*n)]]]` -/
def P5863311470735780438.Spec : Prop :=
  ∀ n, (P5863311470735780438.a n : ℤ) = A055112 n

end A055112

/-! ## A055112.P17049748610227934380

`C(2*(n+1), 2)*n`
-/

namespace A055112.P17049748610227934380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2 * n

end

end A055112.P17049748610227934380

namespace A055112

/-- `C(2*(n+1), 2)*n` -/
def P17049748610227934380.Spec : Prop :=
  ∀ n, (P17049748610227934380.a n : ℤ) = A055112 n

theorem P17049748610227934380.correct : P17049748610227934380.Spec := by
  intro n
  simp only [A055112, Nat.add_sub_cancel, A055112.P17049748610227934380.a, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055112

/-! ## A055112.P1257385534158708188

`Δ[2*C(n, 2)*∑[n]]`
-/

namespace A055112.P1257385534158708188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A055112.P1257385534158708188

namespace A055112

/-- `Δ[2*C(n, 2)*∑[n]]` -/
def P1257385534158708188.Spec : Prop :=
  ∀ n, P1257385534158708188.a n = A055112 n

end A055112

/-! ## A055112.P17421917592272461741

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=6`
-/

namespace A055112.P17421917592272461741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055112.P17421917592272461741

namespace A055112

/-- `∑[∑[a(n-1)+12]]` -/
def P17421917592272461741.Spec : Prop :=
  ∀ n, (P17421917592272461741.a n : ℤ) = A055112 n

end A055112

/-! ## A055112.P1846767749455643278

`a(n-1)+6*n²` with `a(0)=0`
-/

namespace A055112.P1846767749455643278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 6 * n ^ 2

end

end A055112.P1846767749455643278

namespace A055112

/-- `a(n-1)+6*n²` -/
def P1846767749455643278.Spec : Prop :=
  ∀ n, (P1846767749455643278.a n : ℤ) = A055112 n

theorem P1846767749455643278.correct : P1846767749455643278.Spec := by
  intro n
  induction n with
  | zero => simp [A055112, A055112.P1846767749455643278.a, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A055112, Nat.add_sub_cancel, A055112.P1846767749455643278.a, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A055112

/-! ## A055112.P12842956846671715318

`∑[lcm(3, 3*n*2*n)]`
-/

namespace A055112.P12842956846671715318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (3 * n * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055112.P12842956846671715318

namespace A055112

/-- `∑[lcm(3, 3*n*2*n)]` -/
def P12842956846671715318.Spec : Prop :=
  ∀ n, (P12842956846671715318.a n : ℤ) = A055112 n

end A055112

/-! ## A055112.P2030347515142211970

`∑[∑[ogf((6x+6x^2)/(1-2x+x^2))]]`
-/

namespace A055112.P2030347515142211970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055112.P2030347515142211970

namespace A055112

/-- `∑[∑[ogf((6x+6x^2)/(1-2x+x^2))]]` -/
def P2030347515142211970.Spec : Prop :=
  ∀ n, P2030347515142211970.a n = A055112 n

end A055112

/-! ## A055112.P13430742686610608808

`C((n+1)², 2)-C(n², 2)`
-/

namespace A055112.P13430742686610608808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A055112.P13430742686610608808

namespace A055112

/-- `C((n+1)², 2)-C(n², 2)` -/
def P13430742686610608808.Spec : Prop :=
  ∀ n, P13430742686610608808.a n = A055112 n

theorem P13430742686610608808.correct : P13430742686610608808.Spec := by
  intro n
  simp only [A055112, Nat.add_sub_cancel, A055112.P13430742686610608808.a, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055112

/-! ## A055112.P5932879044837555927

`∑[3*2*n*gcd(n, 2*n)]`
-/

namespace A055112.P5932879044837555927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n) * Nat.gcd n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055112.P5932879044837555927

namespace A055112

/-- `∑[3*2*n*gcd(n, 2*n)]` -/
def P5932879044837555927.Spec : Prop :=
  ∀ n, (P5932879044837555927.a n : ℤ) = A055112 n

end A055112

/-! ## A055112.P16839697787208234394

`3*∑[2-∑[a(n-1)-4]]` with `a(0)=2`
-/

namespace A055112.P16839697787208234394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055112.P16839697787208234394

namespace A055112

/-- `3*∑[2-∑[a(n-1)-4]]` -/
def P16839697787208234394.Spec : Prop :=
  ∀ n, P16839697787208234394.a n = A055112 n

end A055112

/-! ## A055112.P858999355726883504

`∑[A033581(n)]`
-/

namespace A055112.P858999355726883504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055112.P858999355726883504

namespace A055112

/-- `∑[A033581(n)]` -/
def P858999355726883504.Spec : Prop :=
  ∀ n, P858999355726883504.a n = A055112 n

end A055112

/-! ## A055112.P2119446105703246046

`A300758(n)/2`
-/

namespace A055112.P2119446105703246046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300758 n : ℚ) / 2

end

end A055112.P2119446105703246046

namespace A055112

/-- `A300758(n)/2` -/
def P2119446105703246046.Spec : Prop :=
  ∀ n, P2119446105703246046.a n = (A055112 n : ℚ)

theorem P2119446105703246046.correct : P2119446105703246046.Spec := by
  intro n
  simp only [A055112, Nat.add_sub_cancel, A055112.P2119446105703246046.a, A055112.P15553195109781773626.a, A300758, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055112

/-!
# A055113: Number of bracketings of 0^0^0^...^0, with n 0's, giving the result 0, with conventions that 0^0 = 1^0 = 1^1 = 1, 0^1 = 0.

The programs for A055113, there is no canonical definition to state claims against.
-/

/-! ## A055113.P10219895247652260336

`A000007(n)-(A115140(n)+A111160(A004273(n)-n))`
-/

namespace A055113.P10219895247652260336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A115140 n + A111160 (A004273 n - (n : ℤ)).toNat)

end

end A055113.P10219895247652260336

/-! ## A055113.P6432075289698065269

`A212696(abs(1-n))/round(sqrt(n²+1))`
-/

namespace A055113.P6432075289698065269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212696 |1 - (n : ℤ)|.toNat : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

end

end A055113.P6432075289698065269

/-! ## A055113.P1520685867793093091

`A123880(C(2, n+2)+C(n, 2))`
-/

namespace A055113.P1520685867793093091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123880 (Nat.choose 2 (n + 2) + Nat.choose n 2)

end

end A055113.P1520685867793093091

/-!
# A055114: Numbers k such that the continued fraction for m/k contains a term >= 3 for every 1 <= m < k.

The programs for A055114, there is no canonical definition to state claims against.
-/

/-! ## A055114.P9389456062346419218

`∩[2*n+1, A349765(n+2)]`
-/

namespace A055114.P9389456062346419218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349765 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055114.P9389456062346419218

/-! ## A055114.P1220643183564402884

`filter[A349765(n+1), A174275(#)]`
-/

namespace A055114.P1220643183564402884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A055114.P1220643183564402884

/-! ## A055114.P16208177908984208302

`filter[A349765(n+1), A266070(#)]`
-/

namespace A055114.P16208177908984208302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A055114.P16208177908984208302

/-! ## A055114.P13868486445565057667

`filter[A349765(n+1), A353673(#)]`
-/

namespace A055114.P13868486445565057667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A055114.P13868486445565057667

/-! ## A055114.P15624429407345276903

`filter[A349765(n+1), A355450(#)]`
-/

namespace A055114.P15624429407345276903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A055114.P15624429407345276903

/-!
# A055115: Base-5 complement of n (write n in base 5, then replace each digit with its base-5 negative).

The programs for A055115, there is no canonical definition to state claims against.
-/

/-! ## A055115.P17933161072323894637

`A004515(A004515(n))`
-/

namespace A055115.P17933161072323894637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A004515 n).toNat

end

end A055115.P17933161072323894637

/-! ## A055115.P10492673907246255218

`A309991(n)+A065256(n)`
-/

namespace A055115.P10492673907246255218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n + A065256 n

end

end A055115.P10492673907246255218

/-! ## A055115.P1624936732262486029

`A309991(A309991(n)+n)+A309991(n)+n`
-/

namespace A055115.P1624936732262486029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (A309991 n + (n : ℤ)).toNat + (A309991 n + (n : ℤ))

end

end A055115.P1624936732262486029

/-! ## A055115.P8736560049516525620

`A065257(A065257(n+1))-1`
-/

namespace A055115.P8736560049516525620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065257 (A065257 (n + 1)).toNat - 1

end

end A055115.P8736560049516525620

/-! ## A055115.P7946540843638015854

`A065256(A065256(n))`
-/

namespace A055115.P7946540843638015854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065256 (A065256 n).toNat

end

end A055115.P7946540843638015854

/-! ## A055115.P17349609706980894232

`A065258(A065258(n+1))-1`
-/

namespace A055115.P17349609706980894232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065258 (A065258 (n + 1)).toNat - 1

end

end A055115.P17349609706980894232

/-! ## A055115.P945249593294150553

`A248813(∑[n+4]+2)`
-/

namespace A055115.P945249593294150553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A055115.P945249593294150553

/-!
# A055116: Base-6 complement of n (write n in base 6, then replace each digit with its base-6 negative).

The programs for A055116, there is no canonical definition to state claims against.
-/

/-! ## A055116.P8025988452489351927

`A248813(∑[n+5]+5)`
-/

namespace A055116.P8025988452489351927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A055116.P8025988452489351927

/-!
# A055117: Base-7 complement of n (write n in base 7, then replace each digit with its base-7 negative).

The programs for A055117, there is no canonical definition to state claims against.
-/

/-! ## A055117.P12241721820223651962

`A248813(∑[n+6]+9)`
-/

namespace A055117.P12241721820223651962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A055117.P12241721820223651962

/-! ## A055117.P9206429744869552476

`A057427(n)*A248813(eq[5, A025581(n)])`
-/

namespace A055117.P9206429744869552476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A248813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055117.P9206429744869552476

/-!
# A055118: Base-8 complement of n (write n in base 8, then replace each digit with its base-8 negative).

The programs for A055118, there is no canonical definition to state claims against.
-/

/-! ## A055118.P16783501565448068369

`A248813(eq[13, A099375(n)])`
-/

namespace A055118.P16783501565448068369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055118.P16783501565448068369

/-!
# A055119: Base-9 complement of n (write n in base 9, then replace each digit with its base-9 negative).

The programs for A055119, there is no canonical definition to state claims against.
-/

/-! ## A055119.P6984545025774592579

`A004519(A004519(A004519(n)))`
-/

namespace A055119.P6984545025774592579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004519 (A004519 (A004519 n).toNat).toNat

end

end A055119.P6984545025774592579

/-! ## A055119.P5399149520181288545

`A248813(A155212(4+n))`
-/

namespace A055119.P5399149520181288545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (A155212 (4 + n)).toNat

end

end A055119.P5399149520181288545

/-!
# A055120: Digital complement of n (replace each nonzero digit d with 10-d).

The programs for A055120, there is no canonical definition to state claims against.
-/

/-! ## A055120.P2618254028484316229

`A059626(A059626(n))`
-/

namespace A055120.P2618254028484316229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A059626 n).toNat

end

end A055120.P2618254028484316229

/-! ## A055120.P13856875564380362152

`A059630(A059630(n))`
-/

namespace A055120.P13856875564380362152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (A059630 n).toNat

end

end A055120.P13856875564380362152

/-! ## A055120.P12651834589100412925

`A048379(A061601(2*n)+n)`
-/

namespace A055120.P12651834589100412925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A061601 (2 * n) + (n : ℤ)).toNat

end

end A055120.P12651834589100412925

/-! ## A055120.P4677210318148033931

`A136400(10*n)-n`
-/

namespace A055120.P4677210318148033931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (10 * n) - (n : ℤ)

end

end A055120.P4677210318148033931

/-! ## A055120.P16758636152623130005

`A064770(A064770(10*n))-n`
-/

namespace A055120.P16758636152623130005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A064770 (10 * n)).toNat - (n : ℤ)

end

end A055120.P16758636152623130005

/-!
# A055121: Base-11 complement of n (write n in base 11, then replace each digit with its base-11 negative).

The programs for A055121, there is no canonical definition to state claims against.
-/

/-! ## A055121.P2954962516529131458

`A004521(A004521(A004521(A004521(A004521(n)))))`
-/

namespace A055121.P2954962516529131458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004521 (A004521 (A004521 (A004521 (A004521 n).toNat).toNat).toNat).toNat

end

end A055121.P2954962516529131458

/-! ## A055121.P7261717896523835162

`A248813(A056000(n+6))`
-/

namespace A055121.P7261717896523835162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (A056000 (n + 6)).toNat

end

end A055121.P7261717896523835162

/-!
# A055122: Base-12 complement of n (write n in base 12, then replace each digit with its base-12 negative).

The programs for A055122, there is no canonical definition to state claims against.
-/

/-! ## A055122.P13314459079000485081

`A248813(A155212(n+7)-3)`
-/

namespace A055122.P13314459079000485081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (A155212 (n + 7) - 3).toNat

end

end A055122.P13314459079000485081

/-!
# A055123: Base-13 complement of n (write n in base 13, then replace each digit with its base-13 negative).

The programs for A055123, there is no canonical definition to state claims against.
-/

/-! ## A055123.P7493986985348610345

`A248813(eq[11, A025581(n)])`
-/

namespace A055123.P7493986985348610345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055123.P7493986985348610345

/-!
# A055124: Base-14 complement of n (write n in base 14, then replace each digit with its base-14 negative).

The programs for A055124, there is no canonical definition to state claims against.
-/

/-! ## A055124.P8975573211089949527

`A248813(eq[12, A025581(n)])`
-/

namespace A055124.P8975573211089949527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055124.P8975573211089949527

/-!
# A055125: Base-15 complement of n (write n in base 15, then replace each digit with its base-15 negative).

The programs for A055125, there is no canonical definition to state claims against.
-/

/-! ## A055125.P11786668956800215182

`A248813(eq[13, A025581(n)])`
-/

namespace A055125.P11786668956800215182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055125.P11786668956800215182

/-!
# A055126: Base-16 complement of n (write n in base 16, then replace each digit with its base-16 negative).

The programs for A055126, there is no canonical definition to state claims against.
-/

/-! ## A055126.P1629123876014303927

`A248813(A000217(n+14)+n)`
-/

namespace A055126.P1629123876014303927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A055126.P1629123876014303927

/-!
# A055128: Fixed points of the following function: if n = Product p(i)^r(i) then f(n) = Product (-2+p(i)^(r(i)-1)+p(i)^r(i)).

The programs for A055128, there is no canonical definition to state claims against.
-/

/-! ## A055128.P10495770968761377789

`∏[2*A192580(n+1)]`
-/

namespace A055128.P10495770968761377789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055128.P10495770968761377789

/-!
# A055129: Repunits in different bases: table by antidiagonals of numbers written in base k as a string of n 1's.

The programs for A055129, the canonical program `A055129.P2973749858994226000` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055129 has offset 1).

The definition of A055129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055129.P2973749858994226000

`1+(row(n)-col(n)+1)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055129

/-- `1+(row(n)-col(n)+1)*T(n-1,k-1)` -/
def P2973749858994226000.Spec : Prop :=
  ∀ n, P2973749858994226000.a n = A055129 (n + 1)

theorem P2973749858994226000.correct : P2973749858994226000.Spec := by
  intro n
  simp only [A055129, Nat.add_sub_cancel]

end A055129

/-! ## A055129.P11827238694830263568

`T(n-1,k-1)+(row(n)-col(n)+1)^col(n)` with `a(0)=1`
-/

namespace A055129.P11827238694830263568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ SequenceMachineLib.triCol n

end

end A055129.P11827238694830263568

namespace A055129

/-- `T(n-1,k-1)+(row(n)-col(n)+1)^col(n)` -/
def P11827238694830263568.Spec : Prop :=
  ∀ n, P11827238694830263568.a n = A055129 (n + 1)

end A055129

/-! ## A055129.P8691126709591361513

`(∑[char[∑[n]]]-col(n))*T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A055129.P8691126709591361513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n + 1

end

end A055129.P8691126709591361513

namespace A055129

/-- `(∑[char[∑[n]]]-col(n))*T(n-1,k-1)+1` -/
def P8691126709591361513.Spec : Prop :=
  ∀ n, P8691126709591361513.a n = A055129 (n + 1)

end A055129

/-! ## A055129.P6237231811813841230

`A009999(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A055129.P6237231811813841230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009999 n + SequenceMachineLib.triUpLeft a n

end

end A055129.P6237231811813841230

namespace A055129

/-- `A009999(n)+T(n-1,k-1)` -/
def P6237231811813841230.Spec : Prop :=
  ∀ n, P6237231811813841230.a n = A055129 (n + 1)

end A055129

/-! ## A055129.P12287101541107364847

`A004736(n+1)*T(n-1,k-1)+1` with `a(0)=1`
-/

namespace A055129.P12287101541107364847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004736 (n + 1) * SequenceMachineLib.triUpLeft a n + 1

end

end A055129.P12287101541107364847

namespace A055129

/-- `A004736(n+1)*T(n-1,k-1)+1` -/
def P12287101541107364847.Spec : Prop :=
  ∀ n, P12287101541107364847.a n = A055129 (n + 1)

end A055129

/-! ## A055129.P11925712817416283831

`A104878(A099375(n)+1+n)`
-/

namespace A055129.P11925712817416283831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104878 (A099375 n + 1 + (n : ℤ)).toNat

end

end A055129.P11925712817416283831

namespace A055129

/-- `A104878(A099375(n)+1+n)` -/
def P11925712817416283831.Spec : Prop :=
  ∀ n, P11925712817416283831.a n = A055129 (n + 1)

end A055129

/-! ## A055129.P4442826392494326161

`A104881(comp[∑[n+1]])`
-/

namespace A055129.P4442826392494326161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104881 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A055129.P4442826392494326161

namespace A055129

/-- `A104881(comp[∑[n+1]])` -/
def P4442826392494326161.Spec : Prop :=
  ∀ n, P4442826392494326161.a n = A055129 (n + 1)

end A055129

/-! ## A055129.P11805730040015163555

`A156540(A014132(n+1))/A156540(n)`
-/

namespace A055129.P11805730040015163555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156540 (A014132 (n + 1)).toNat : ℚ) / (A156540 n : ℚ)

end

end A055129.P11805730040015163555

namespace A055129

/-- `A156540(A014132(n+1))/A156540(n)` -/
def P11805730040015163555.Spec : Prop :=
  ∀ n, P11805730040015163555.a n = (A055129 (n + 1) : ℚ)

end A055129

/-!
# A055131: Those composite s for which A055095[s] = 2.

The programs for A055131, the canonical program `A055131.P8908878053079909028` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055131 has offset 0).

The definition of A055131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055131.P8908878053079909028

`3*p?[4*n+1]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055131

/-- `3*p?[4*n+1]` -/
def P8908878053079909028.Spec : Prop :=
  ∀ n, (P8908878053079909028.a n : ℤ) = A055131 n

theorem P8908878053079909028.correct : P8908878053079909028.Spec := by
  intro n
  simp only [A055131]

end A055131

/-! ## A055131.P14303477462770903391

`lcm(3, p?[a(n-1)+4])` with `a(0)=1`
-/

namespace A055131.P14303477462770903391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A055131.P14303477462770903391

namespace A055131

/-- `lcm(3, p?[a(n-1)+4])` -/
def P14303477462770903391.Spec : Prop :=
  ∀ n, (P14303477462770903391.a n : ℤ) = A055131 n

end A055131

/-! ## A055131.P7335165212507367947

`3*A002144(1+n)`
-/

namespace A055131.P7335165212507367947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002144 (1 + n)

end

end A055131.P7335165212507367947

namespace A055131

/-- `3*A002144(1+n)` -/
def P7335165212507367947.Spec : Prop :=
  ∀ n, P7335165212507367947.a n = A055131 n

end A055131

/-! ## A055131.P12886018019649114996

`3*sqrt(A080109(n+1))`
-/

namespace A055131.P12886018019649114996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A080109 (n + 1) : ℝ)

end

end A055131.P12886018019649114996

namespace A055131

/-- `3*sqrt(A080109(n+1))` -/
def P12886018019649114996.Spec : Prop :=
  ∀ n, P12886018019649114996.a n = (A055131 n : ℝ)

end A055131

/-! ## A055131.P17480231759632368297

`3*(A152680(n+1)+1)`
-/

namespace A055131.P17480231759632368297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A152680 (n + 1) + 1)

end

end A055131.P17480231759632368297

namespace A055131

/-- `3*(A152680(n+1)+1)` -/
def P17480231759632368297.Spec : Prop :=
  ∀ n, P17480231759632368297.a n = A055131 n

theorem P17480231759632368297.correct : P17480231759632368297.Spec := by
  intro n
  simp only [A055131, Nat.add_sub_cancel, A055131.P17480231759632368297.a, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, A152680, A152680.P7400182187401258968.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055131

/-! ## A055131.P4413988692458993585

`3*(4*A005098(n+1)+1)`
-/

namespace A055131.P4413988692458993585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A005098 (n + 1) + 1)

end

end A055131.P4413988692458993585

namespace A055131

/-- `3*(4*A005098(n+1)+1)` -/
def P4413988692458993585.Spec : Prop :=
  ∀ n, P4413988692458993585.a n = A055131 n

end A055131

/-! ## A055131.P13818907747482484617

`lcm(A002144(n+1), A174971(n))`
-/

namespace A055131.P13818907747482484617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002144 (n + 1)) (A174971 n)

end

end A055131.P13818907747482484617

namespace A055131

/-- `lcm(A002144(n+1), A174971(n))` -/
def P13818907747482484617.Spec : Prop :=
  ∀ n, (P13818907747482484617.a n : ℤ) = A055131 n

end A055131

/-! ## A055131.P13652002452000273120

`3*A002313(2+n)`
-/

namespace A055131.P13652002452000273120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002313 (2 + n)

end

end A055131.P13652002452000273120

namespace A055131

/-- `3*A002313(2+n)` -/
def P13652002452000273120.Spec : Prop :=
  ∀ n, P13652002452000273120.a n = A055131 n

end A055131

/-! ## A055131.P15626401060120941962

`3*A280084(n+2)`
-/

namespace A055131.P15626401060120941962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A280084 (n + 2)

end

end A055131.P15626401060120941962

namespace A055131

/-- `3*A280084(n+2)` -/
def P15626401060120941962.Spec : Prop :=
  ∀ n, P15626401060120941962.a n = A055131 n

end A055131

/-! ## A055131.P12070169172152819910

`A002144(n+1)+A002313(n+2)+A002144(n+1)`
-/

namespace A055131.P12070169172152819910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + (A002313 (n + 2) + A002144 (n + 1))

end

end A055131.P12070169172152819910

namespace A055131

/-- `A002144(n+1)+A002313(n+2)+A002144(n+1)` -/
def P12070169172152819910.Spec : Prop :=
  ∀ n, P12070169172152819910.a n = A055131 n

end A055131

/-! ## A055131.P8156319892815731093

`A002144(n+1)+A280084(n+2)+A002144(n+1)`
-/

namespace A055131.P8156319892815731093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + (A280084 (n + 2) + A002144 (n + 1))

end

end A055131.P8156319892815731093

namespace A055131

/-- `A002144(n+1)+A280084(n+2)+A002144(n+1)` -/
def P8156319892815731093.Spec : Prop :=
  ∀ n, P8156319892815731093.a n = A055131 n

end A055131

/-! ## A055131.P2646462331079553677

`A002313(n+2)+A280084(n+2)+A002313(n+2)`
-/

namespace A055131.P2646462331079553677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) + (A280084 (n + 2) + A002313 (n + 2))

end

end A055131.P2646462331079553677

namespace A055131

/-- `A002313(n+2)+A280084(n+2)+A002313(n+2)` -/
def P2646462331079553677.Spec : Prop :=
  ∀ n, P2646462331079553677.a n = A055131 n

end A055131

/-! ## A055131.P15462703786646365595

`A001748(A080147(n+1))`
-/

namespace A055131.P15462703786646365595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (A080147 (n + 1)).toNat

end

end A055131.P15462703786646365595

namespace A055131

/-- `A001748(A080147(n+1))` -/
def P15462703786646365595.Spec : Prop :=
  ∀ n, P15462703786646365595.a n = A055131 n

end A055131

/-! ## A055131.P15689367526489699139

`record[A389167(n+1)]`
-/

namespace A055131.P15689367526489699139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055131.P15689367526489699139

namespace A055131

/-- `record[A389167(n+1)]` -/
def P15689367526489699139.Spec : Prop :=
  ∀ n, P15689367526489699139.a n = A055131 n

end A055131

/-! ## A055131.P1769744163516447580

`3*A111744(Δ[n²])`
-/

namespace A055131.P1769744163516447580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055131.P1769744163516447580

namespace A055131

/-- `3*A111744(Δ[n²])` -/
def P1769744163516447580.Spec : Prop :=
  ∀ n, P1769744163516447580.a n = A055131 n

end A055131

/-! ## A055131.P129151038943743983

`A111744(2*n+1)+2*A111744(2*n+1)`
-/

namespace A055131.P129151038943743983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (2 * n + 1) + 2 * A111744 (2 * n + 1)

end

end A055131.P129151038943743983

namespace A055131

/-- `A111744(2*n+1)+2*A111744(2*n+1)` -/
def P129151038943743983.Spec : Prop :=
  ∀ n, P129151038943743983.a n = A055131 n

end A055131

/-! ## A055131.P5502735488433773147

`3*A108546(2*n+3)`
-/

namespace A055131.P5502735488433773147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108546 (2 * n + 3)

end

end A055131.P5502735488433773147

namespace A055131

/-- `3*A108546(2*n+3)` -/
def P5502735488433773147.Spec : Prop :=
  ∀ n, P5502735488433773147.a n = A055131 n

end A055131

/-! ## A055131.P836861316916106744

`3*A000040(eq[0, and(2, A000040(n+1))]+1)`
-/

namespace A055131.P836861316916106744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055131.P836861316916106744

namespace A055131

/-- `3*A000040(eq[0, and(2, A000040(n+1))]+1)` -/
def P836861316916106744.Spec : Prop :=
  ∀ n, P836861316916106744.a n = A055131 n

end A055131

/-! ## A055131.P6531824064133742111

`3*record[A006530(4*n+5)]`
-/

namespace A055131.P6531824064133742111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055131.P6531824064133742111

namespace A055131

/-- `3*record[A006530(4*n+5)]` -/
def P6531824064133742111.Spec : Prop :=
  ∀ n, P6531824064133742111.a n = A055131 n

end A055131

/-! ## A055131.P13385737582935953067

`∩[A001748(n+1), A336560(n+1)]`
-/

namespace A055131.P13385737582935953067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055131.P13385737582935953067

namespace A055131

/-- `∩[A001748(n+1), A336560(n+1)]` -/
def P13385737582935953067.Spec : Prop :=
  ∀ n, (P13385737582935953067.a n : ℤ) = A055131 n

end A055131

/-!
# A055132: Moebius function (A008683) applied to each term in the triangle A055096.

The programs for A055132, the canonical program `A055132.P9224649286271144192` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055132 has offset 1).

The definition of A055132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055132.P9224649286271144192

`A008683((row(n)+2)²+(col(n)+1)²)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055132

/-- `A008683((row(n)+2)²+(col(n)+1)²)` -/
def P9224649286271144192.Spec : Prop :=
  ∀ n, P9224649286271144192.a n = A055132 (n + 1)

theorem P9224649286271144192.correct : P9224649286271144192.Spec := by
  intro n
  simp only [A055132, Nat.add_sub_cancel]

end A055132

/-! ## A055132.P9630413498969341735

`∑{d}[A055096(n+2), A007427(#)]`
-/

namespace A055132.P9630413498969341735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A055132.P9630413498969341735

namespace A055132

/-- `∑{d}[A055096(n+2), A007427(#)]` -/
def P9630413498969341735.Spec : Prop :=
  ∀ n, P9630413498969341735.a n = A055132 (n + 1)

end A055132

/-! ## A055132.P16644227291097562418

`A157658(3*A055096(n+2))`
-/

namespace A055132.P16644227291097562418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (3 * A055096 (n + 2)).toNat

end

end A055132.P16644227291097562418

namespace A055132

/-- `A157658(3*A055096(n+2))` -/
def P16644227291097562418.Spec : Prop :=
  ∀ n, P16644227291097562418.a n = A055132 (n + 1)

end A055132

/-! ## A055132.P7844111051951452538

`A092152(6*A055096(n+2))`
-/

namespace A055132.P7844111051951452538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (6 * A055096 (n + 2)).toNat

end

end A055132.P7844111051951452538

namespace A055132

/-- `A092152(6*A055096(n+2))` -/
def P7844111051951452538.Spec : Prop :=
  ∀ n, P7844111051951452538.a n = A055132 (n + 1)

end A055132

/-! ## A055132.P17456757475569187734

`A124895(A014132(n+1))`
-/

namespace A055132.P17456757475569187734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124895 (A014132 (n + 1)).toNat

end

end A055132.P17456757475569187734

namespace A055132

/-- `A124895(A014132(n+1))` -/
def P17456757475569187734.Spec : Prop :=
  ∀ n, P17456757475569187734.a n = A055132 (n + 1)

end A055132

/-!
# A055133: Matrix inverse of A008459 (squares of entries of Pascal's triangle).

The programs for A055133, there is no canonical definition to state claims against.
-/

/-! ## A055133.P17237018187777938774

`(-1)^(row(n)+col(n))*A000275(row(n)-col(n))*C(row(n), col(n))²`
-/

namespace A055133.P17237018187777938774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * A000275 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 : ℤ)

end

end A055133.P17237018187777938774

/-!
# A055134: Triangle read by rows: T(n,k) = number of labeled endofunctions on n points with k fixed points.

The programs for A055134, the canonical program `A055134.P17931533146149131718` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055134 has offset 0).

The definition of A055134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055134.P17931533146149131718

`C(row(n), col(n))*(row(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055134

/-- `C(row(n), col(n))*(row(n)-1)^(row(n)-col(n))` -/
def P17931533146149131718.Spec : Prop :=
  ∀ n, P17931533146149131718.a n = (A055134 n : ℚ)

end A055134

/-! ## A055134.P11946760194199923770

`(row(n)-1)^A025581(n)*A007318(n)`
-/

namespace A055134.P11946760194199923770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - 1 : ℚ) ^ (A025581 n : ℤ) * (A007318 n : ℚ)

end

end A055134.P11946760194199923770

namespace A055134

/-- `(row(n)-1)^A025581(n)*A007318(n)` -/
def P11946760194199923770.Spec : Prop :=
  ∀ n, P11946760194199923770.a n = (A055134 n : ℚ)

end A055134

/-! ## A055134.P12908750863167907412

`abs(A137370(1+n))`
-/

namespace A055134.P12908750863167907412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137370 (1 + n)|

end

end A055134.P12908750863167907412

namespace A055134

/-- `abs(A137370(1+n))` -/
def P12908750863167907412.Spec : Prop :=
  ∀ n, P12908750863167907412.a n = A055134 n

end A055134

/-! ## A055134.P14159493383350286337

`gcd(-A137370(n+1), 0)`
-/

namespace A055134.P14159493383350286337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A137370 (n + 1)) 0

end

end A055134.P14159493383350286337

namespace A055134

/-- `gcd(-A137370(n+1), 0)` -/
def P14159493383350286337.Spec : Prop :=
  ∀ n, (P14159493383350286337.a n : ℤ) = A055134 n

end A055134

/-! ## A055134.P6886795323327869102

`A097807(n)*A137370(n+1)`
-/

namespace A055134.P6886795323327869102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A137370 (n + 1)

end

end A055134.P6886795323327869102

namespace A055134

/-- `A097807(n)*A137370(n+1)` -/
def P6886795323327869102.Spec : Prop :=
  ∀ n, P6886795323327869102.a n = A055134 n

end A055134

/-! ## A055134.P15445861313686932085

`gcd(A000038(n), A137370(n+1))`
-/

namespace A055134.P15445861313686932085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A137370 (n + 1))

end

end A055134.P15445861313686932085

namespace A055134

/-- `gcd(A000038(n), A137370(n+1))` -/
def P15445861313686932085.Spec : Prop :=
  ∀ n, (P15445861313686932085.a n : ℤ) = A055134 n

end A055134

/-! ## A055134.P14049110252943726934

`lcm(A007318(n), A137370(n+1))`
-/

namespace A055134.P14049110252943726934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A137370 (n + 1))

end

end A055134.P14049110252943726934

namespace A055134

/-- `lcm(A007318(n), A137370(n+1))` -/
def P14049110252943726934.Spec : Prop :=
  ∀ n, (P14049110252943726934.a n : ℤ) = A055134 n

end A055134

/-! ## A055134.P8157015423955500147

`lcm(-A137370(n+1), A087960(n))`
-/

namespace A055134.P8157015423955500147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A137370 (n + 1)) (A087960 n)

end

end A055134.P8157015423955500147

namespace A055134

/-- `lcm(-A137370(n+1), A087960(n))` -/
def P8157015423955500147.Spec : Prop :=
  ∀ n, (P8157015423955500147.a n : ℤ) = A055134 n

end A055134

/-!
# A055135: Matrix inverse of triangle A055134.

The programs for A055135, there is no canonical definition to state claims against.
-/

/-! ## A055135.P17513368140964226498

`A007318(n)*A055136(n)`
-/

namespace A055135.P17513368140964226498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055136 n

end

end A055135.P17513368140964226498

/-! ## A055135.P8980069175190078279

`abs(A117440(n))*A055136(n)`
-/

namespace A055135.P8980069175190078279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| * A055136 n

end

end A055135.P8980069175190078279

/-! ## A055135.P8776150742474534088

`abs(A130595(n))*A055136(n)`
-/

namespace A055135.P8776150742474534088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A055136 n

end

end A055135.P8776150742474534088

/-! ## A055135.P2595507327018316777

`sqrt(A008459(n))*A055136(n)`
-/

namespace A055135.P2595507327018316777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A055136 n : ℝ)

end

end A055135.P2595507327018316777

/-! ## A055135.P9205619891881987476

`Δ[A102363(n)]*A055136(n)`
-/

namespace A055135.P9205619891881987476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055136 n

end

end A055135.P9205619891881987476

/-! ## A055135.P17492703452819211560

`A028326(n)/2*A055136(n)`
-/

namespace A055135.P17492703452819211560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A055136 n : ℚ)

end

end A055135.P17492703452819211560

/-! ## A055135.P14275831637337734199

`A055136(n)*A071919(A007401(n+1))`
-/

namespace A055135.P14275831637337734199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055136 n * A071919 (A007401 (n + 1)).toNat

end

end A055135.P14275831637337734199

/-! ## A055135.P14113749216030260847

`A055136(n)*A097805(A014132(n+1))`
-/

namespace A055135.P14113749216030260847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055136 n * A097805 (A014132 (n + 1)).toNat

end

end A055135.P14113749216030260847

/-! ## A055135.P18220409676667851050

`A055136(n)*A071919(A014132(n+1)-1)`
-/

namespace A055135.P18220409676667851050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055136 n * A071919 (A014132 (n + 1) - 1).toNat

end

end A055135.P18220409676667851050

/-! ## A055135.P1745277762914431210

`A004525(A028326(n))*A055136(n)`
-/

namespace A055135.P1745277762914431210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A055136 n

end

end A055135.P1745277762914431210

/-!
# A055136: Triangle: a(n,k) = A055135(n,k)/C(n,k).

The programs for A055136, there is no canonical definition to state claims against.
-/

/-! ## A055136.P4776877227616828146

`A055135(C(row(n)+1, 2)+col(n))/C(row(n), col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055136.P4776877227616828146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ)

end

end A055136.P4776877227616828146

/-! ## A055136.P8864799117893961181

`A055135(n)/A007318(n)`
-/

namespace A055136.P8864799117893961181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℚ) / (A007318 n : ℚ)

end

end A055136.P8864799117893961181

/-! ## A055136.P17068610482493315422

`A055135(n)/abs(A117440(n))`
-/

namespace A055136.P17068610482493315422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℚ) / (|A117440 n| : ℚ)

end

end A055136.P17068610482493315422

/-! ## A055136.P17351768469831151750

`A055135(n)/abs(A130595(n))`
-/

namespace A055136.P17351768469831151750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℚ) / (|A130595 n| : ℚ)

end

end A055136.P17351768469831151750

/-! ## A055136.P6391415063098891608

`A055135(n)/sqrt(A008459(n))`
-/

namespace A055136.P6391415063098891608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A055136.P6391415063098891608

/-! ## A055136.P18380889935287476748

`A055135(n)/Δ[A102363(n)]`
-/

namespace A055136.P18380889935287476748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A055136.P18380889935287476748

/-! ## A055136.P12932875126964591811

`2/A028326(n)*A055135(n)`
-/

namespace A055136.P12932875126964591811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A055135 n : ℚ)

end

end A055136.P12932875126964591811

/-! ## A055136.P14002989382906664967

`A055135(n)/A071919(A007401(n+1))`
-/

namespace A055136.P14002989382906664967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℚ) / (A071919 (A007401 (n + 1)).toNat : ℚ)

end

end A055136.P14002989382906664967

/-! ## A055136.P3248412877402681517

`A055135(n)/A097805(A014132(n+1))`
-/

namespace A055136.P3248412877402681517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℚ) / (A097805 (A014132 (n + 1)).toNat : ℚ)

end

end A055136.P3248412877402681517

/-! ## A055136.P15282769699192810712

`A055135(n)/A001281(A028326(n))`
-/

namespace A055136.P15282769699192810712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055135 n : ℚ) / (A001281 (A028326 n).toNat : ℚ)

end

end A055136.P15282769699192810712

/-!
# A055137: Regard triangle of rencontres numbers (see A008290) as infinite matrix, compute inverse, read by rows.

The programs for A055137, the canonical program `A055137.P4947269043486433817` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055137 has offset 0).

The definition of A055137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055137.P4947269043486433817

`(1-row(n)+col(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055137

/-- `(1-row(n)+col(n))*C(row(n), col(n))` -/
def P4947269043486433817.Spec : Prop :=
  ∀ n, P4947269043486433817.a n = A055137 n

theorem P4947269043486433817.correct : P4947269043486433817.Spec := by
  intro n
  simp only [A055137]

end A055137

/-! ## A055137.P1851743174146046997

`T(n-1,k-1)+(1-row(n))*(T(n-2,k-1)+T(n-2,k)-T(n-1,k))` with `a(0)=1`
-/

namespace A055137.P1851743174146046997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp a n)

end

end A055137.P1851743174146046997

namespace A055137

/-- `T(n-1,k-1)+(1-row(n))*(T(n-2,k-1)+T(n-2,k)-T(n-1,k))` -/
def P1851743174146046997.Spec : Prop :=
  ∀ n, P1851743174146046997.a n = A055137 n

end A055137

/-! ## A055137.P2307943942455632752

`T(n-1,k)+T(n-1,k-1)-A071919(n)` with `a(0)=1`
-/

namespace A055137.P2307943942455632752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - A071919 n

end

end A055137.P2307943942455632752

namespace A055137

/-- `T(n-1,k)+T(n-1,k-1)-A071919(n)` -/
def P2307943942455632752.Spec : Prop :=
  ∀ n, P2307943942455632752.a n = A055137 n

end A055137

/-! ## A055137.P16452933378495445925

`∑[A008482(n)]+T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A055137.P16452933378495445925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n)

end

end A055137.P16452933378495445925

namespace A055137

/-- `∑[A008482(n)]+T(n-1,k-1)+T(n-1,k)` -/
def P16452933378495445925.Spec : Prop :=
  ∀ n, P16452933378495445925.a n = A055137 n

end A055137

/-! ## A055137.P5280061326638788087

`(col(n)+1-row(n))*A007318(n)`
-/

namespace A055137.P5280061326638788087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * A007318 n

end

end A055137.P5280061326638788087

namespace A055137

/-- `(col(n)+1-row(n))*A007318(n)` -/
def P5280061326638788087.Spec : Prop :=
  ∀ n, P5280061326638788087.a n = A055137 n

theorem P5280061326638788087.correct : P5280061326638788087.Spec := by
  intro n
  simp only [A055137, Nat.add_sub_cancel, A055137.P5280061326638788087.a, A055137.P4947269043486433817.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055137

/-! ## A055137.P7800076289619780025

`(col(n)-row(n)+1)/2*A028326(n)`
-/

namespace A055137.P7800076289619780025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) + 1 : ℚ) / 2 * (A028326 n : ℚ)

end

end A055137.P7800076289619780025

namespace A055137

/-- `(col(n)-row(n)+1)/2*A028326(n)` -/
def P7800076289619780025.Spec : Prop :=
  ∀ n, P7800076289619780025.a n = (A055137 n : ℚ)

theorem P7800076289619780025.correct : P7800076289619780025.Spec := by
  intro n
  simp only [A055137, Nat.add_sub_cancel, A055137.P7800076289619780025.a, A055137.P4947269043486433817.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055137

/-! ## A055137.P1074153985788170621

`(2-A004736(n+1))*C(row(n), col(n))`
-/

namespace A055137.P1074153985788170621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A055137.P1074153985788170621

namespace A055137

/-- `(2-A004736(n+1))*C(row(n), col(n))` -/
def P1074153985788170621.Spec : Prop :=
  ∀ n, P1074153985788170621.a n = A055137 n

end A055137

/-! ## A055137.P12115553336424908094

`A007318(n)-A216973(n)`
-/

namespace A055137.P12115553336424908094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A216973 n

end

end A055137.P12115553336424908094

namespace A055137

/-- `A007318(n)-A216973(n)` -/
def P12115553336424908094.Spec : Prop :=
  ∀ n, P12115553336424908094.a n = A055137 n

theorem P12115553336424908094.correct : P12115553336424908094.Spec := by
  intro n
  simp only [A055137, Nat.add_sub_cancel, A055137.P12115553336424908094.a, A055137.P4947269043486433817.a, A007318, A007318.P11755526479805562006.a, A216973, A216973.P15863105142889415858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055137

/-! ## A055137.P2433142246741273672

`A028326(n)-A093375(n+1)`
-/

namespace A055137.P2433142246741273672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A093375 (n + 1)

end

end A055137.P2433142246741273672

namespace A055137

/-- `A028326(n)-A093375(n+1)` -/
def P2433142246741273672.Spec : Prop :=
  ∀ n, P2433142246741273672.a n = A055137 n

end A055137

/-! ## A055137.P9252698786262179993

`A128710(n)-A003506(n+1)`
-/

namespace A055137.P9252698786262179993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A003506 (n + 1)

end

end A055137.P9252698786262179993

namespace A055137

/-- `A128710(n)-A003506(n+1)` -/
def P9252698786262179993.Spec : Prop :=
  ∀ n, P9252698786262179993.a n = A055137 n

theorem P9252698786262179993.correct : P9252698786262179993.Spec := by
  intro n
  simp only [A055137, Nat.add_sub_cancel, A055137.P9252698786262179993.a, A055137.P4947269043486433817.a, A003506, A003506.P13263006833711295772.a, A128710, A128710.P2966919769106220333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055137

/-! ## A055137.P26245966992457174

`(1-A025581(n))*A007318(n)`
-/

namespace A055137.P26245966992457174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * A007318 n

end

end A055137.P26245966992457174

namespace A055137

/-- `(1-A025581(n))*A007318(n)` -/
def P26245966992457174.Spec : Prop :=
  ∀ n, P26245966992457174.a n = A055137 n

theorem P26245966992457174.correct : P26245966992457174.Spec := by
  intro n
  simp only [A055137, Nat.add_sub_cancel, A055137.P26245966992457174.a, A055137.P4947269043486433817.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055137

/-! ## A055137.P12190421997582542133

`(1-A025581(n))*abs(A108086(n))`
-/

namespace A055137.P12190421997582542133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * |A108086 n|

end

end A055137.P12190421997582542133

namespace A055137

/-- `(1-A025581(n))*abs(A108086(n))` -/
def P12190421997582542133.Spec : Prop :=
  ∀ n, P12190421997582542133.a n = A055137 n

end A055137

/-! ## A055137.P6807714318541294216

`(1-A025581(n))*abs(A130595(n))`
-/

namespace A055137.P6807714318541294216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * |A130595 n|

end

end A055137.P6807714318541294216

namespace A055137

/-- `(1-A025581(n))*abs(A130595(n))` -/
def P6807714318541294216.Spec : Prop :=
  ∀ n, P6807714318541294216.a n = A055137 n

end A055137

/-! ## A055137.P12745518403176782156

`(1-A025581(n))*sqrt(A008459(n))`
-/

namespace A055137.P12745518403176782156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A055137.P12745518403176782156

namespace A055137

/-- `(1-A025581(n))*sqrt(A008459(n))` -/
def P12745518403176782156.Spec : Prop :=
  ∀ n, P12745518403176782156.a n = (A055137 n : ℝ)

end A055137

/-! ## A055137.P8444292092131242090

`(1-log2(A130321(n)))*A007318(n)`
-/

namespace A055137.P8444292092131242090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.logb 2 (A130321 n : ℝ)) * (A007318 n : ℝ)

end

end A055137.P8444292092131242090

namespace A055137

/-- `(1-log2(A130321(n)))*A007318(n)` -/
def P8444292092131242090.Spec : Prop :=
  ∀ n, P8444292092131242090.a n = (A055137 n : ℝ)

end A055137

/-! ## A055137.P8661289473206843886

`(1-A025581(n))*Δ[A102363(n)]`
-/

namespace A055137.P8661289473206843886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * (f1 (n + 1) - f1 n)

end

end A055137.P8661289473206843886

namespace A055137

/-- `(1-A025581(n))*Δ[A102363(n)]` -/
def P8661289473206843886.Spec : Prop :=
  ∀ n, P8661289473206843886.a n = A055137 n

end A055137

/-! ## A055137.P16500532585648328158

`(2-A004736(n+1))*A007318(n)`
-/

namespace A055137.P16500532585648328158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A007318 n

end

end A055137.P16500532585648328158

namespace A055137

/-- `(2-A004736(n+1))*A007318(n)` -/
def P16500532585648328158.Spec : Prop :=
  ∀ n, P16500532585648328158.a n = A055137 n

end A055137

/-! ## A055137.P4025047805711612973

`2*A007318(n)-A093375(n+1)`
-/

namespace A055137.P4025047805711612973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A093375 (n + 1)

end

end A055137.P4025047805711612973

namespace A055137

/-- `2*A007318(n)-A093375(n+1)` -/
def P4025047805711612973.Spec : Prop :=
  ∀ n, P4025047805711612973.a n = A055137 n

end A055137

/-! ## A055137.P11317386050767380720

`A093375(n+1)-2*A216973(n)`
-/

namespace A055137.P11317386050767380720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - 2 * A216973 n

end

end A055137.P11317386050767380720

namespace A055137

/-- `A093375(n+1)-2*A216973(n)` -/
def P11317386050767380720.Spec : Prop :=
  ∀ n, P11317386050767380720.a n = A055137 n

end A055137

/-! ## A055137.P919756790599791262

`(2-A004736(n+1))*abs(A108086(n))`
-/

namespace A055137.P919756790599791262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * |A108086 n|

end

end A055137.P919756790599791262

namespace A055137

/-- `(2-A004736(n+1))*abs(A108086(n))` -/
def P919756790599791262.Spec : Prop :=
  ∀ n, P919756790599791262.a n = A055137 n

end A055137

/-!
# A055138: Matrix inverse of Losanitsch's triangle A034851.

The programs for A055138, there is no canonical definition to state claims against.
-/

/-! ## A055138.P16470545634440916375

`Δ[A054635(A225117(n)-1)]`
-/

namespace A055138.P16470545634440916375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (A225117 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055138.P16470545634440916375

/-! ## A055138.P10976682417073257543

`Δ[-A000925(A268436(n))]`
-/

namespace A055138.P10976682417073257543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000925 (A268436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055138.P10976682417073257543

/-! ## A055138.P7980192866306464485

`Δ[A025466(n)-A000925(A268436(n))]`
-/

namespace A055138.P7980192866306464485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n - A000925 (A268436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055138.P7980192866306464485

/-! ## A055138.P8547809958905767674

`Δ[A034487(n+1)-A000925(A268436(n))]`
-/

namespace A055138.P8547809958905767674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034487 (n + 1) - A000925 (A268436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055138.P8547809958905767674

/-! ## A055138.P10550585787884765472

`A248805(A321372(n+1)+A001045(n))+A103910(n+1)`
-/

namespace A055138.P10550585787884765472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A321372 (n + 1) + A001045 n).toNat + A103910 (n + 1)

end

end A055138.P10550585787884765472

/-!
# A055139: Column 0 of triangle A055138.

The programs for A055139, there is no canonical definition to state claims against.
-/

/-! ## A055139.P8057725804741022063

`A055138(∑[n])`
-/

namespace A055139.P8057725804741022063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055138 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055139.P8057725804741022063

/-!
# A055140: Triangle read by rows: T(n, k) = number of matchings of 2n people with partners (of either sex) such that exactly k couples are left together.

The programs for A055140, the canonical program `A055140.P3323164083973272280` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055140 has offset 0).

The definition of A055140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055140.P3323164083973272280

`A053871(row(n)-col(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055140

/-- `A053871(row(n)-col(n))*C(row(n), col(n))` -/
def P3323164083973272280.Spec : Prop :=
  ∀ n, P3323164083973272280.a n = A055140 n

theorem P3323164083973272280.correct : P3323164083973272280.Spec := by
  intro n
  simp only [A055140]

end A055140

/-! ## A055140.P9230282072997253441

`A007318(n)*A053871(A025581(n))`
-/

namespace A055140.P9230282072997253441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A053871 (A025581 n).toNat

end

end A055140.P9230282072997253441

namespace A055140

/-- `A007318(n)*A053871(A025581(n))` -/
def P9230282072997253441.Spec : Prop :=
  ∀ n, P9230282072997253441.a n = A055140 n

end A055140

/-! ## A055140.P17558618185307080617

`sqrt(A008459(n))*A053871(A025581(n))`
-/

namespace A055140.P17558618185307080617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A053871 (A025581 n).toNat : ℝ)

end

end A055140.P17558618185307080617

namespace A055140

/-- `sqrt(A008459(n))*A053871(A025581(n))` -/
def P17558618185307080617.Spec : Prop :=
  ∀ n, P17558618185307080617.a n = (A055140 n : ℝ)

end A055140

/-! ## A055140.P11057170251300126666

`Δ[A102363(n)]*A053871(A025581(n))`
-/

namespace A055140.P11057170251300126666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053871 (A025581 n).toNat

end

end A055140.P11057170251300126666

namespace A055140

/-- `Δ[A102363(n)]*A053871(A025581(n))` -/
def P11057170251300126666.Spec : Prop :=
  ∀ n, P11057170251300126666.a n = A055140 n

end A055140

/-! ## A055140.P4737066512570766748

`(A014473(n)+1)*A053871(A025581(n))`
-/

namespace A055140.P4737066512570766748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A053871 (A025581 n).toNat

end

end A055140.P4737066512570766748

namespace A055140

/-- `(A014473(n)+1)*A053871(A025581(n))` -/
def P4737066512570766748.Spec : Prop :=
  ∀ n, P4737066512570766748.a n = A055140 n

end A055140

/-!
# A055141: Matrix inverse of triangle A055140.

The programs for A055141, there is no canonical definition to state claims against.
-/

/-! ## A055141.P10329685242181745107

`A007318(n)*A055142(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A055141.P10329685242181745107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055142 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A055141.P10329685242181745107

/-! ## A055141.P498618889084239745

`A028326(n)/2*A055142(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A055141.P498618889084239745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A055142 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ)

end

end A055141.P498618889084239745

/-! ## A055141.P7462033000816796300

`A007318(n)*A055142(A025581(n))`
-/

namespace A055141.P7462033000816796300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055142 (A025581 n).toNat

end

end A055141.P7462033000816796300

/-! ## A055141.P7145156169600521934

`abs(A117440(n))*A055142(A025581(n))`
-/

namespace A055141.P7145156169600521934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| * A055142 (A025581 n).toNat

end

end A055141.P7145156169600521934

/-! ## A055141.P9575074921724076001

`A007318(n)*A055142(val(A054582(n), 2))`
-/

namespace A055141.P9575074921724076001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055142 (SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A055141.P9575074921724076001

/-! ## A055141.P1861704182273129686

`A007318(n)*A055142(floor(log2(A130330(n))))`
-/

namespace A055141.P1861704182273129686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055142 (Nat.log 2 (A130330 n).toNat)

end

end A055141.P1861704182273129686

/-! ## A055141.P580043668993695258

`A007318(n)*A055142(A004736(n+1)-1)`
-/

namespace A055141.P580043668993695258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055142 (A004736 (n + 1) - 1).toNat

end

end A055141.P580043668993695258

/-! ## A055141.P12340548227320529766

`A007318(n)*A055142(sqrt(A055461(n+1))-1)`
-/

namespace A055141.P12340548227320529766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055142 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ) - 1)).toNat

end

end A055141.P12340548227320529766

/-! ## A055141.P16152500502240438231

`A007318(n)*A055142(A064801(n+1)-(2*n+1))`
-/

namespace A055141.P16152500502240438231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055142 (A064801 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A055141.P16152500502240438231

/-!
# A055142: Expansion of e.g.f.: exp(x)*sqrt(1-2x).

The programs for A055142, there is no canonical definition to state claims against.
-/

/-! ## A055142.P15306668884920990870

`(1-n)*2*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A055142.P15306668884920990870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (1 - (n : ℤ)) * (2 * (a (n - 2) - a (n - 1)))

end

end A055142.P15306668884920990870

/-! ## A055142.P230454584882689224

`A055141(∑[n])`
-/

namespace A055142.P230454584882689224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055142.P230454584882689224

/-! ## A055142.P5627338137679496104

`-record[-A055141(n)]`
-/

namespace A055142.P5627338137679496104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A055141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055142.P5627338137679496104

/-! ## A055142.P1410633877561146685

`a(n-1)-A084262(n-1)` with `a(0)=1`
-/

namespace A055142.P1410633877561146685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A084262 (n - 1)

end

end A055142.P1410633877561146685

/-! ## A055142.P9689581368066557203

`A084262(n)+1-∑[A084262(n)]`
-/

namespace A055142.P9689581368066557203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084262 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055142.P9689581368066557203

/-!
# A055143: The first n digits of the juxtaposition of the base-2 numbers converted to decimal.

The programs for A055143, there is no canonical definition to state claims against.
-/

/-! ## A055143.P13057649474528535837

`xor(2*a(n-1), Δ[A054633(n)])` with `a(0)=1`
-/

namespace A055143.P13057649474528535837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A055143.P13057649474528535837

/-! ## A055143.P16868889870163494565

`A030190(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A055143.P16868889870163494565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030190 (n + 1) + 2 * a (n - 1)

end

end A055143.P16868889870163494565

/-! ## A055143.P13182003835767103374

`A030302(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A055143.P13182003835767103374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030302 (n + 1) + 2 * a (n - 1)

end

end A055143.P13182003835767103374

/-! ## A055143.P11795783480042708341

`char[A030303(n+1)-1]+2*a(n-1)` with `a(0)=1`
-/

namespace A055143.P11795783480042708341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a (n - 1)

end

end A055143.P11795783480042708341

/-!
# A055144: The first n digits of the juxtaposition of the base-3 numbers converted to decimal.

The programs for A055144, there is no canonical definition to state claims against.
-/

/-! ## A055144.P5247626672179060528

`A003137(1+n)+3*a(n-1)` with `a(0)=1`
-/

namespace A055144.P5247626672179060528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003137 (1 + n) + 3 * a (n - 1)

end

end A055144.P5247626672179060528

/-! ## A055144.P2838755629256718012

`A054635(n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A055144.P2838755629256718012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054635 (n + 1) + 3 * a (n - 1)

end

end A055144.P2838755629256718012

/-! ## A055144.P9525008340440671174

`eq[1, A030335(n+1)]+1`
-/

namespace A055144.P9525008340440671174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055144.P9525008340440671174

/-! ## A055144.P8921503555174604591

`record[A000027(n+1)/A030335(n+1)]`
-/

namespace A055144.P8921503555174604591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A030335 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055144.P8921503555174604591

/-!
# A055145: The first n digits of the juxtaposition of the base-4 numbers converted to decimal.

The programs for A055145, there is no canonical definition to state claims against.
-/

/-! ## A055145.P7905408288024449882

`A030373(n+1)+4*a(n-1)` with `a(0)=1`
-/

namespace A055145.P7905408288024449882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030373 (n + 1) + 4 * a (n - 1)

end

end A055145.P7905408288024449882

/-! ## A055145.P13740715920248558425

`A003188(floor(sqrt(A144864(n+1))))`
-/

namespace A055145.P13740715920248558425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.sqrt (A144864 (n + 1))).toNat

end

end A055145.P13740715920248558425

/-!
# A055146: The first n digits of the juxtaposition of the base-5 numbers converted to decimal.

The programs for A055146, there is no canonical definition to state claims against.
-/

/-! ## A055146.P3740472731401224491

`A031219(n+1)+5*a(n-1)` with `a(0)=1`
-/

namespace A055146.P3740472731401224491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031219 (n + 1) + 5 * a (n - 1)

end

end A055146.P3740472731401224491

/-! ## A055146.P9507480080702135514

`5*a(n-1)+or(-A031251(n+1), A000007(n))+4` with `a(0)=1`
-/

namespace A055146.P9507480080702135514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (Int.lor (-A031251 (n + 1)) (A000007 n) + 4)

end

end A055146.P9507480080702135514

/-! ## A055146.P10776264692354749138

`A025581(A052905(n)+A031251(n+1))+5*a(n-1)` with `a(0)=1`
-/

namespace A055146.P10776264692354749138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025581 (A052905 n + A031251 (n + 1)).toNat + 5 * a (n - 1)

end

end A055146.P10776264692354749138

/-!
# A055147: The first n digits of the juxtaposition of the base-6 numbers converted to decimal.

The programs for A055147, there is no canonical definition to state claims against.
-/

/-! ## A055147.P1121911528230988797

`A030548(n+1)+6*a(n-1)` with `a(0)=1`
-/

namespace A055147.P1121911528230988797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030548 (n + 1) + 6 * a (n - 1)

end

end A055147.P1121911528230988797

/-! ## A055147.P12054795705285907037

`∑[∑[6^n]]-A006924(A006924(n))`
-/

namespace A055147.P12054795705285907037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006924 (A006924 n).toNat

end

end A055147.P12054795705285907037

/-!
# A055148: The first n digits of the juxtaposition of the base-7 numbers converted to decimal.

The programs for A055148, there is no canonical definition to state claims against.
-/

/-! ## A055148.P17890863212479245139

`A030998(n+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A055148.P17890863212479245139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030998 (n + 1) + 7 * a (n - 1)

end

end A055148.P17890863212479245139

/-! ## A055148.P8496896604517920618

`A048439(n+1)/A146735(A146728(n+1))`
-/

namespace A055148.P8496896604517920618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048439 (n + 1) : ℚ) / (A146735 (A146728 (n + 1)).toNat : ℚ)

end

end A055148.P8496896604517920618

/-! ## A055148.P4771343994465244774

`A048439(n+1)/A146735(A146743(n+1))`
-/

namespace A055148.P4771343994465244774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048439 (n + 1) : ℚ) / (A146735 (A146743 (n + 1)).toNat : ℚ)

end

end A055148.P4771343994465244774

/-!
# A055149: The first n digits of the juxtaposition of the base-8 numbers converted to decimal.

The programs for A055149, there is no canonical definition to state claims against.
-/

/-! ## A055149.P15134447567434934283

`A048440(n+1)/A008834(A000984(n))`
-/

namespace A055149.P15134447567434934283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048440 (n + 1) : ℚ) / (A008834 (A000984 n).toNat : ℚ)

end

end A055149.P15134447567434934283

/-! ## A055149.P6153300285576293186

`A048440(n+1)/A008834(A001764(n))`
-/

namespace A055149.P6153300285576293186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048440 (n + 1) : ℚ) / (A008834 (A001764 n).toNat : ℚ)

end

end A055149.P6153300285576293186

/-! ## A055149.P6145764814906858784

`A048440(n+1)/A181876(A099965(n))`
-/

namespace A055149.P6145764814906858784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048440 (n + 1) : ℚ) / (A181876 (A099965 n).toNat : ℚ)

end

end A055149.P6145764814906858784

/-! ## A055149.P10857334744224931789

`A048440(n+1)/A365297(A103941(n))`
-/

namespace A055149.P10857334744224931789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048440 (n + 1) : ℚ) / (A365297 (A103941 n).toNat : ℚ)

end

end A055149.P10857334744224931789

/-!
# A055150: The first n digits of the juxtaposition of the base 9 numbers converted to decimal.

The programs for A055150, there is no canonical definition to state claims against.
-/

/-! ## A055150.P8571706784404477086

`A031076(1+n)+9*a(n-1)` with `a(0)=1`
-/

namespace A055150.P8571706784404477086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031076 (1 + n) + 9 * a (n - 1)

end

end A055150.P8571706784404477086

/-! ## A055150.P18080085778152195281

`8-A031098(n+1)+9*a(n-1)` with `a(0)=1`
-/

namespace A055150.P18080085778152195281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - A031098 (n + 1) + 9 * a (n - 1)

end

end A055150.P18080085778152195281

/-! ## A055150.P17802520777651879063

`A048441(n+1)/A293474(A324097(n+2))`
-/

namespace A055150.P17802520777651879063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048441 (n + 1) : ℚ) / (A293474 (A324097 (n + 2)).toNat : ℚ)

end

end A055150.P17802520777651879063

/-!
# A055151: Triangular array of Motzkin polynomial coefficients.

The programs for A055151, the canonical program `A055151.P1770356931591867441` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055151 has offset 0).

The definition of A055151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055151.P7390158187743962820

`A359364(lt[0, A359364(n)])`
-/

namespace A055151.P7390158187743962820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A055151.P7390158187743962820

namespace A055151

/-- `A359364(lt[0, A359364(n)])` -/
def P7390158187743962820.Spec : Prop :=
  ∀ n, P7390158187743962820.a n = A055151 n

end A055151

/-! ## A055151.P1770356931591867441

`A391403(n)/A122197(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055151

/-- `A391403(n)/A122197(n+1)` -/
def P1770356931591867441.Spec : Prop :=
  ∀ n, P1770356931591867441.a n = (A055151 n : ℚ)

end A055151

/-! ## A055151.P3897668124958584350

`A080159(lt[0, A080159(n)])`
-/

namespace A055151.P3897668124958584350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A055151.P3897668124958584350

namespace A055151

/-- `A080159(lt[0, A080159(n)])` -/
def P3897668124958584350.Spec : Prop :=
  ∀ n, P3897668124958584350.a n = A055151 n

end A055151

/-! ## A055151.P14539734533664564611

`A088617(A091018(n))`
-/

namespace A055151.P14539734533664564611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A091018 n).toNat

end

end A055151.P14539734533664564611

namespace A055151

/-- `A088617(A091018(n))` -/
def P14539734533664564611.Spec : Prop :=
  ∀ n, P14539734533664564611.a n = A055151 n

end A055151

/-! ## A055151.P4636467213828572180

`A108263(A000037(n+1))+A108263(n)`
-/

namespace A055151.P4636467213828572180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108263 (A000037 (n + 1)).toNat + A108263 n

end

end A055151.P4636467213828572180

namespace A055151

/-- `A108263(A000037(n+1))+A108263(n)` -/
def P4636467213828572180.Spec : Prop :=
  ∀ n, P4636467213828572180.a n = A055151 n

end A055151

/-! ## A055151.P15951715738148691739

`A189913(2*n-A000196(n))`
-/

namespace A055151.P15951715738148691739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189913 ((2 * n : ℤ) - A000196 n).toNat

end

end A055151.P15951715738148691739

namespace A055151

/-- `A189913(2*n-A000196(n))` -/
def P15951715738148691739.Spec : Prop :=
  ∀ n, P15951715738148691739.a n = A055151 n

end A055151

/-! ## A055151.P17706711581842572271

`filter[A080159(n), A168181(#)]`
-/

namespace A055151.P17706711581842572271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A055151.P17706711581842572271

namespace A055151

/-- `filter[A080159(n), A168181(#)]` -/
def P17706711581842572271.Spec : Prop :=
  ∀ n, P17706711581842572271.a n = A055151 n

end A055151

/-! ## A055151.P13880580105416586328

`filter[A359364(n), A168181(#)]`
-/

namespace A055151.P13880580105416586328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A055151.P13880580105416586328

namespace A055151

/-- `filter[A359364(n), A168181(#)]` -/
def P13880580105416586328.Spec : Prop :=
  ∀ n, P13880580105416586328.a n = A055151 n

end A055151

/-!
# A055152: Proper covers of an unlabeled n-set.

The programs for A055152, there is no canonical definition to state claims against.
-/

/-! ## A055152.P12145326674786753405

`A002857(n+1)-A000612(n)`
-/

namespace A055152.P12145326674786753405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002857 (n + 1) - A000612 n

end

end A055152.P12145326674786753405

/-! ## A055152.P7653832714592167123

`∑[A318132(n+1)/2]`
-/

namespace A055152.P7653832714592167123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318132 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055152.P7653832714592167123

/-!
# A055153: Numbers k such that sigma(k) = 7k/2.

The programs for A055153, there is no canonical definition to state claims against.
-/

/-! ## A055153.P4346961899637254766

`A159907(lt[A216225(3*n), n²])`
-/

namespace A055153.P4346961899637254766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216225 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159907 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A055153.P4346961899637254766

/-! ## A055153.P12087123874491905329

`A242484(xor(floor((2*n+1)/3), A297607(n+2)))`
-/

namespace A055153.P12087123874491905329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242484 (Int.xor ⌊(2 * n + 1 : ℚ) / 3⌋ (A297607 (n + 2))).toNat

end

end A055153.P12087123874491905329

/-!
# A055155: a(n) = Sum_{d|n} gcd(d, n/d).

The programs for A055155, the canonical program `A055155.P11997759877346480704` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055155 has offset 1).

The definition of A055155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(#, (n+1)/#)]` (program `A055155.P11997759877346480704`, by `A055155.P11997759877346480704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055155.P11997759877346480704

`∑{d}[n+1, gcd(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055155

/-- `∑{d}[n+1, gcd(#, (n+1)/#)]` -/
def P11997759877346480704.Spec : Prop :=
  ∀ n, (P11997759877346480704.a n : ℤ) = A055155 (n + 1)

theorem P11997759877346480704.correct : P11997759877346480704.Spec := by
  intro n
  simp only [A055155, Nat.add_sub_cancel]

end A055155

/-! ## A055155.P10582548225032930478

`1/(n+1)*∑{#}[n, A000203(gcd(n+1, (#+1)²))]`
-/

namespace A055155.P10582548225032930478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), A000203 (Nat.gcd (n + 1) ((k + 1) ^ 2)) : ℤ) : ℚ)

end

end A055155.P10582548225032930478

namespace A055155

/-- `1/(n+1)*∑{#}[n, A000203(gcd(n+1, (#+1)²))]` -/
def P10582548225032930478.Spec : Prop :=
  ∀ n, P10582548225032930478.a n = (A055155 (n + 1) : ℚ)

end A055155

/-! ## A055155.P1869975117058252197

`∑{#}[n, gcd(gcd(n+1, #+1), (n+1)/gcd(n+1, #+1))/A000010((n+1)/gcd(n+1, #+1))]`
-/

namespace A055155.P1869975117058252197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Int.gcd (Nat.gcd (n + 1) (k + 1) : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (k + 1) : ℚ))) : ℚ) / (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (k + 1) : ℚ))).toNat : ℚ)

end

end A055155.P1869975117058252197

namespace A055155

/-- `∑{#}[n, gcd(gcd(n+1, #+1), (n+1)/gcd(n+1, #+1))/A000010((n+1)/gcd(n+1, #+1))]` -/
def P1869975117058252197.Spec : Prop :=
  ∀ n, P1869975117058252197.a n = (A055155 (n + 1) : ℚ)

end A055155

/-! ## A055155.P15408012459023280311

`∑{d}[1+n, A000188(#)]`
-/

namespace A055155.P15408012459023280311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d

end

end A055155.P15408012459023280311

namespace A055155

/-- `∑{d}[1+n, A000188(#)]` -/
def P15408012459023280311.Spec : Prop :=
  ∀ n, P15408012459023280311.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P14365831856662762537

`∑{d}[n+1, sqrt(A008833(#))]`
-/

namespace A055155.P14365831856662762537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A008833 d : ℝ)

end

end A055155.P14365831856662762537

namespace A055155

/-- `∑{d}[n+1, sqrt(A008833(#))]` -/
def P14365831856662762537.Spec : Prop :=
  ∀ n, P14365831856662762537.a n = (A055155 (n + 1) : ℝ)

end A055155

/-! ## A055155.P5499900558307799954

`∑{d}[n+1, A057918(#)+1]`
-/

namespace A055155.P5499900558307799954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A057918 d + 1)

end

end A055155.P5499900558307799954

namespace A055155

/-- `∑{d}[n+1, A057918(#)+1]` -/
def P5499900558307799954.Spec : Prop :=
  ∀ n, P5499900558307799954.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P16119978168135283481

`A347088(n+1)+Δ[A054519(n)]`
-/

namespace A055155.P16119978168135283481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347088 (n + 1) + (f1 (n + 1) - f1 n)

end

end A055155.P16119978168135283481

namespace A055155

/-- `A347088(n+1)+Δ[A054519(n)]` -/
def P16119978168135283481.Spec : Prop :=
  ∀ n, P16119978168135283481.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P15214450508276963510

`A347088(n+1)+A000005(n+1)`
-/

namespace A055155.P15214450508276963510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347088 (n + 1) + A000005 (n + 1)

end

end A055155.P15214450508276963510

namespace A055155

/-- `A347088(n+1)+A000005(n+1)` -/
def P15214450508276963510.Spec : Prop :=
  ∀ n, P15214450508276963510.a n = A055155 (n + 1)

theorem P15214450508276963510.correct : P15214450508276963510.Spec := by
  intro n
  simp only [A055155, Nat.add_sub_cancel, A055155.P15214450508276963510.a, A055155.P11997759877346480704.f1, A055155.P11997759877346480704.a, A000005, A000005.P16091521709108585461.a, A347088, A347088.P10760207860306131150.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055155

/-! ## A055155.P16056135398097539100

`A347088(n+1)+A320111(2*(n+1))`
-/

namespace A055155.P16056135398097539100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347088 (n + 1) + A320111 (2 * (n + 1))

end

end A055155.P16056135398097539100

namespace A055155

/-- `A347088(n+1)+A320111(2*(n+1))` -/
def P16056135398097539100.Spec : Prop :=
  ∀ n, P16056135398097539100.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P7156444451259798283

`∑{d}[n+1, A001616(#)*A010052((n+1)/#)]`
-/

namespace A055155.P7156444451259798283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001616 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055155.P7156444451259798283

namespace A055155

/-- `∑{d}[n+1, A001616(#)*A010052((n+1)/#)]` -/
def P7156444451259798283.Spec : Prop :=
  ∀ n, P7156444451259798283.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P9972951489959464106

`∑{d}[n+1, A034444(#)*A037213((n+1)/#)]`
-/

namespace A055155.P9972951489959464106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A037213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055155.P9972951489959464106

namespace A055155

/-- `∑{d}[n+1, A034444(#)*A037213((n+1)/#)]` -/
def P9972951489959464106.Spec : Prop :=
  ∀ n, P9972951489959464106.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P15043739321021723055

`∑{d}[n+1, A008966(#)*A069290((n+1)/#)]`
-/

namespace A055155.P15043739321021723055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A069290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055155.P15043739321021723055

namespace A055155

/-- `∑{d}[n+1, A008966(#)*A069290((n+1)/#)]` -/
def P15043739321021723055.Spec : Prop :=
  ∀ n, P15043739321021723055.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P839277268948097688

`∑{d}[n+1, A060724(#)*A178450((n+1)/#)]`
-/

namespace A055155.P839277268948097688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055155.P839277268948097688

namespace A055155

/-- `∑{d}[n+1, A060724(#)*A178450((n+1)/#)]` -/
def P839277268948097688.Spec : Prop :=
  ∀ n, P839277268948097688.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P7927642128792282435

`∑{d}[n+1, A124316(#)*A271102((n+1)/#)]`
-/

namespace A055155.P7927642128792282435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124316 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055155.P7927642128792282435

namespace A055155

/-- `∑{d}[n+1, A124316(#)*A271102((n+1)/#)]` -/
def P7927642128792282435.Spec : Prop :=
  ∀ n, P7927642128792282435.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P5387165301027366783

`∑{d}[n+1, A000034(#-1)*A229297((n+1)/#)]`
-/

namespace A055155.P5387165301027366783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A229297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055155.P5387165301027366783

namespace A055155

/-- `∑{d}[n+1, A000034(#-1)*A229297((n+1)/#)]` -/
def P5387165301027366783.Spec : Prop :=
  ∀ n, P5387165301027366783.a n = A055155 (n + 1)

end A055155

/-! ## A055155.P12671402550925949130

`∑{d}[n+1, A053164(#²)]`
-/

namespace A055155.P12671402550925949130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053164 (d ^ 2)

end

end A055155.P12671402550925949130

namespace A055155

/-- `∑{d}[n+1, A053164(#²)]` -/
def P12671402550925949130.Spec : Prop :=
  ∀ n, P12671402550925949130.a n = A055155 (n + 1)

end A055155

/-!
# A055156: Powers of 3 which are not powers of 3^3.

The programs for A055156, the canonical program `A055156.P8808555389053943486` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055156 has offset 0).

The definition of A055156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055156.P15578140945779915362

`ogf((3+9x)/(1-27x^2))`
-/

namespace A055156.P15578140945779915362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9] [1, 0, -27] n

end

end A055156.P15578140945779915362

namespace A055156

/-- `ogf((3+9x)/(1-27x^2))` -/
def P15578140945779915362.Spec : Prop :=
  ∀ n, P15578140945779915362.a n = A055156 n

end A055156

/-! ## A055156.P8808555389053943486

`27*a(n-2)` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055156

/-- `27*a(n-2)` -/
def P8808555389053943486.Spec : Prop :=
  ∀ n, (P8808555389053943486.a n : ℤ) = A055156 n

theorem P8808555389053943486.correct : P8808555389053943486.Spec := by
  intro n
  simp only [A055156]

end A055156

/-! ## A055156.P16563174043245128621

`3^A001651(n+1)`
-/

namespace A055156.P16563174043245128621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001651 (n + 1) : ℤ)

end

end A055156.P16563174043245128621

namespace A055156

/-- `3^A001651(n+1)` -/
def P16563174043245128621.Spec : Prop :=
  ∀ n, P16563174043245128621.a n = (A055156 n : ℚ)

end A055156

/-! ## A055156.P15094963418768184670

`3^comp[3*n]`
-/

namespace A055156.P15094963418768184670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055156.P15094963418768184670

namespace A055156

/-- `3^comp[3*n]` -/
def P15094963418768184670.Spec : Prop :=
  ∀ n, (P15094963418768184670.a n : ℤ) = A055156 n

end A055156

/-! ## A055156.P17130606151112110398

`∏[12-a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A055156.P17130606151112110398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055156.P17130606151112110398

namespace A055156

/-- `∏[12-a(n-1)]` -/
def P17130606151112110398.Spec : Prop :=
  ∀ n, P17130606151112110398.a n = A055156 n

end A055156

/-! ## A055156.P15226984556329940159

`record[3^(lcm(3, n+1)/3)]`
-/

namespace A055156.P15226984556329940159
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((Nat.lcm 3 (n + 1) : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055156.P15226984556329940159

namespace A055156

/-- `record[3^(lcm(3, n+1)/3)]` -/
def P15226984556329940159.Spec : Prop :=
  ∀ n, P15226984556329940159.a n = (A055156 n : ℝ)

end A055156

/-! ## A055156.P15807051023357157365

`3^comp[a(n-1)+3]` with `a(0)=0`
-/

namespace A055156.P15807051023357157365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A055156.P15807051023357157365

namespace A055156

/-- `3^comp[a(n-1)+3]` -/
def P15807051023357157365.Spec : Prop :=
  ∀ n, (P15807051023357157365.a n : ℤ) = A055156 n

end A055156

/-! ## A055156.P11693734120684186377

`3^∑[3-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A055156.P11693734120684186377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A055156.P11693734120684186377

namespace A055156

/-- `3^∑[3-a(n-1)]` -/
def P11693734120684186377.Spec : Prop :=
  ∀ n, P11693734120684186377.a n = (A055156 n : ℚ)

end A055156

/-! ## A055156.P16468858243862266348

`record[3^(n+2-gcd(3, n+1))]`
-/

namespace A055156.P16468858243862266348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n + 2 : ℤ) - (Nat.gcd 3 (n + 1) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055156.P16468858243862266348

namespace A055156

/-- `record[3^(n+2-gcd(3, n+1))]` -/
def P16468858243862266348.Spec : Prop :=
  ∀ n, P16468858243862266348.a n = (A055156 n : ℚ)

end A055156

/-! ## A055156.P11557491683286448237

`record[(3-val(n+1, 3))^(n+1)]`
-/

namespace A055156.P11557491683286448237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (SequenceMachineLib.valuation (n + 1) 3 : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055156.P11557491683286448237

namespace A055156

/-- `record[(3-val(n+1, 3))^(n+1)]` -/
def P11557491683286448237.Spec : Prop :=
  ∀ n, P11557491683286448237.a n = A055156 n

end A055156

/-! ## A055156.P18299756287835673810

`record[A273893(n+1)]`
-/

namespace A055156.P18299756287835673810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055156.P18299756287835673810

namespace A055156

/-- `record[A273893(n+1)]` -/
def P18299756287835673810.Spec : Prop :=
  ∀ n, P18299756287835673810.a n = A055156 n

end A055156

/-! ## A055156.P8214334911478725083

`A056449(3*n+1)`
-/

namespace A055156.P8214334911478725083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (3 * n + 1)

end

end A055156.P8214334911478725083

namespace A055156

/-- `A056449(3*n+1)` -/
def P8214334911478725083.Spec : Prop :=
  ∀ n, P8214334911478725083.a n = A055156 n

end A055156

/-! ## A055156.P14220003362158351623

`A108411(3*n+2)`
-/

namespace A055156.P14220003362158351623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (3 * n + 2)

end

end A055156.P14220003362158351623

namespace A055156

/-- `A108411(3*n+2)` -/
def P14220003362158351623.Spec : Prop :=
  ∀ n, P14220003362158351623.a n = A055156 n

end A055156

/-! ## A055156.P9354805050660173180

`3*A108411(3*n)`
-/

namespace A055156.P9354805050660173180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108411 (3 * n)

end

end A055156.P9354805050660173180

namespace A055156

/-- `3*A108411(3*n)` -/
def P9354805050660173180.Spec : Prop :=
  ∀ n, P9354805050660173180.a n = A055156 n

end A055156

/-! ## A055156.P11109425008738194955

`∏[dr(A245023(n+1))]`
-/

namespace A055156.P11109425008738194955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A245023 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055156.P11109425008738194955

namespace A055156

/-- `∏[dr(A245023(n+1))]` -/
def P11109425008738194955.Spec : Prop :=
  ∀ n, (P11109425008738194955.a n : ℤ) = A055156 n

end A055156

/-! ## A055156.P2350093196545149826

`record[abs(A000748(2*n+1))]`
-/

namespace A055156.P2350093196545149826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000748 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055156.P2350093196545149826

namespace A055156

/-- `record[abs(A000748(2*n+1))]` -/
def P2350093196545149826.Spec : Prop :=
  ∀ n, P2350093196545149826.a n = A055156 n

end A055156

/-! ## A055156.P17456986198784629851

`record[abs(A057083(2*n+1))]`
-/

namespace A055156.P17456986198784629851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057083 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055156.P17456986198784629851

namespace A055156

/-- `record[abs(A057083(2*n+1))]` -/
def P17456986198784629851.Spec : Prop :=
  ∀ n, P17456986198784629851.a n = A055156 n

end A055156

/-!
# A055157: n has distinct digits and n=a-b where a has the digits of n in descending order and b has the digits of n in ascending order (perhaps with leading zeros).

The programs for A055157, there is no canonical definition to state claims against.
-/

/-! ## A055157.P14097806689216440080

`A055158(n)-A055159(n)`
-/

namespace A055157.P14097806689216440080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055158 n - A055159 n

end

end A055157.P14097806689216440080

/-!
# A055158: n has distinct digits in descending order and n=a+b where a has the digits of n in another order and b has the digits of n in ascending order (perhaps with leading zeros).

The programs for A055158, there is no canonical definition to state claims against.
-/

/-! ## A055158.P16300945076624072653

`A055157(n)+A055159(n)`
-/

namespace A055158.P16300945076624072653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055157 n + A055159 n

end

end A055158.P16300945076624072653

/-!
# A055159: n has distinct digits in ascending order and n=a-b where a has the digits of n in descending order and b has the digits of n in another order (a and b perhaps with extra zeros).

The programs for A055159, there is no canonical definition to state claims against.
-/

/-! ## A055159.P4522840805453466953

`A055158(n)-A055157(n)`
-/

namespace A055159.P4522840805453466953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055158 n - A055157 n

end

end A055159.P4522840805453466953

/-!
# A055160: Numbers n with the property that n=a-b where a has the digits of n in descending order and b has the digits of n in ascending order (perhaps with leading zeros), ordered by a.

The programs for A055160, there is no canonical definition to state claims against.
-/

/-! ## A055160.P1480562969539403943

`A055161(n)-A055162(n+1)`
-/

namespace A055160.P1480562969539403943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055161 n - A055162 (n + 1)

end

end A055160.P1480562969539403943

/-! ## A055160.P1918998082437094759

`record[A099009(A224076(3*n+1)+1)]`
-/

namespace A055160.P1918998082437094759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099009 (A224076 (3 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055160.P1918998082437094759

/-!
# A055161: n has digits in descending order and n=a+b where a has the digits of n in another order and b has the digits of n in ascending order (perhaps with leading zeros).

The programs for A055161, there is no canonical definition to state claims against.
-/

/-! ## A055161.P3235540292711641919

`A055160(n+1)+A055162(n+1)`
-/

namespace A055161.P3235540292711641919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055160 (n + 1) + A055162 (n + 1)

end

end A055161.P3235540292711641919

/-!
# A055162: The number n has digits in ascending order and n=a-b where a has the digits of n in descending order and b has the digits of n in another order (a and b perhaps with extra zeros), ordered by a.

The programs for A055162, there is no canonical definition to state claims against.
-/

/-! ## A055162.P17397752558149760874

`A055161(n)-A055160(n+1)`
-/

namespace A055162.P17397752558149760874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055161 n - A055160 (n + 1)

end

end A055162.P17397752558149760874

/-! ## A055162.P888800514781660202

`A055161(n)%A055160(A291769(n))`
-/

namespace A055162.P888800514781660202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055161 n) (A055160 (A291769 n).toNat)

end

end A055162.P888800514781660202

/-! ## A055162.P16013976602263209405

`A055161(A118759(n))%A055160(n+1)`
-/

namespace A055162.P16013976602263209405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055161 (A118759 n).toNat) (A055160 (n + 1))

end

end A055162.P16013976602263209405

/-! ## A055162.P17466439668650302615

`A055161(A258009(n))%A055160(n+1)`
-/

namespace A055162.P17466439668650302615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055161 (A258009 n).toNat) (A055160 (n + 1))

end

end A055162.P17466439668650302615

/-! ## A055162.P16545890385014450314

`A055161(A328447(n))%A055160(n+1)`
-/

namespace A055162.P16545890385014450314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055161 (A328447 n).toNat) (A055160 (n + 1))

end

end A055162.P16545890385014450314

/-!
# A055163: Composite numbers k such that (k - phi(k)) | sigma(k).

The programs for A055163, there is no canonical definition to state claims against.
-/

/-! ## A055163.P16152308753521010182

`filter[A068422(1+n), A005171(#)]`
-/

namespace A055163.P16152308753521010182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A055163.P16152308753521010182

/-! ## A055163.P742405856562950264

`filter[A068422(1+n), A066247(#)]`
-/

namespace A055163.P742405856562950264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A055163.P742405856562950264

/-! ## A055163.P10371382534577798822

`filter[A068422(1+n), A202238(#)]`
-/

namespace A055163.P10371382534577798822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A055163.P10371382534577798822

/-! ## A055163.P11187057092491045231

`filter[A068422(n+1), A174898(#)]`
-/

namespace A055163.P11187057092491045231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A055163.P11187057092491045231

/-! ## A055163.P14350200886214130251

`∩[A002808(n+1), A068422(n+1)]`
-/

namespace A055163.P14350200886214130251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P14350200886214130251

/-! ## A055163.P1329177689893615464

`∩[A018252(n+1), A068422(n+1)]`
-/

namespace A055163.P1329177689893615464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P1329177689893615464

/-! ## A055163.P6663205550722301403

`∩[A068422(n+1), A141468(n+1)]`
-/

namespace A055163.P6663205550722301403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P6663205550722301403

/-! ## A055163.P7708754812070563619

`∩[A068422(n+1), A123240(n+1)]`
-/

namespace A055163.P7708754812070563619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P7708754812070563619

/-! ## A055163.P10613194636861465018

`∩[A068422(n+1), A174891(n+1)]`
-/

namespace A055163.P10613194636861465018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P10613194636861465018

/-! ## A055163.P746752770693635868

`∩[A068422(n+1), A080363(n+1)]`
-/

namespace A055163.P746752770693635868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P746752770693635868

/-! ## A055163.P9165810699805377259

`∩[A068422(n+1), A082092(n+1)]`
-/

namespace A055163.P9165810699805377259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P9165810699805377259

/-! ## A055163.P750491487983726546

`∩[A068422(n+1), A359870(n+1)]`
-/

namespace A055163.P750491487983726546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P750491487983726546

/-! ## A055163.P4240898442591196865

`∩[A068422(n+1), A389065(n+1)]`
-/

namespace A055163.P4240898442591196865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P4240898442591196865

/-! ## A055163.P12441837117588584533

`∩[A068422(n+1), A106543(n+1)]`
-/

namespace A055163.P12441837117588584533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P12441837117588584533

/-! ## A055163.P14548288686451944386

`∩[A068422(n+1), A241913(n+1)]`
-/

namespace A055163.P14548288686451944386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P14548288686451944386

/-! ## A055163.P9721530780833519849

`∩[A068422(n+1), A089229(n+1)]`
-/

namespace A055163.P9721530780833519849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P9721530780833519849

/-! ## A055163.P3411316674833654268

`∩[A024619(n+1), A068422(n+1)]`
-/

namespace A055163.P3411316674833654268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P3411316674833654268

/-! ## A055163.P6243412174075820526

`∩[A068422(n+1), A361102(n+1)]`
-/

namespace A055163.P6243412174075820526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P6243412174075820526

/-! ## A055163.P16585091157775578555

`∩[A068422(n+1), A080257(n+1)]`
-/

namespace A055163.P16585091157775578555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P16585091157775578555

/-! ## A055163.P1975598382579618792

`∩[A068422(n+1), A139118(n+1)]`
-/

namespace A055163.P1975598382579618792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055163.P1975598382579618792

/-!
# A055164: (n - phi(n)) | sigma(n) for composite n not congruent to 2 (mod 4).

The programs for A055164, there is no canonical definition to state claims against.
-/

/-! ## A055164.P16889701100363013333

`filter[A055163(n+1), A354108(#)]`
-/

namespace A055164.P16889701100363013333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A055164.P16889701100363013333

/-! ## A055164.P10269060470355570656

`filter[A055163(n+1), A105234(#)]`
-/

namespace A055164.P10269060470355570656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A055164.P10269060470355570656

/-! ## A055164.P10540807493356094755

`filter[A055163(n+1), A152822(#)]`
-/

namespace A055164.P10540807493356094755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A055164.P10540807493356094755

/-! ## A055164.P14030845186788492620

`filter[A068422(n+2), A354108(#)]`
-/

namespace A055164.P14030845186788492620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A055164.P14030845186788492620

/-! ## A055164.P8153104818704013338

`filter[A055163(n+1), A141260(#)]`
-/

namespace A055164.P8153104818704013338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A055164.P8153104818704013338

/-!
# A055165: Number of invertible n X n matrices with entries equal to 0 or 1.

The programs for A055165, there is no canonical definition to state claims against.
-/

/-! ## A055165.P16358259365493911714

`n!*A088389(n)`
-/

namespace A055165.P16358259365493911714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A088389 n

end

end A055165.P16358259365493911714

/-! ## A055165.P6764770790039926528

`A000142(n)*A088389(n)`
-/

namespace A055165.P6764770790039926528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A088389 n

end

end A055165.P6764770790039926528

/-! ## A055165.P16189330094245845085

`A056990(n+1)/A004171(n)`
-/

namespace A055165.P16189330094245845085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056990 (n + 1) : ℚ) / (A004171 n : ℚ)

end

end A055165.P16189330094245845085

/-! ## A055165.P12206758340338928807

`∑{#}[n, (-1)^(n-#)*A000522(#)*C(n, #)]*A088389(n)`
-/

namespace A055165.P12206758340338928807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000522 k : ℚ) * (Nat.choose n k : ℚ)) * (A088389 n : ℚ)

end

end A055165.P12206758340338928807

/-! ## A055165.P10272329923146367910

`A055601(n)-A116506(A028310(n))`
-/

namespace A055165.P10272329923146367910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055601 n - A116506 (A028310 n).toNat

end

end A055165.P10272329923146367910

/-!
# A055167: Number of optimal binary prefix-free codes with n words all ending in 1.

The programs for A055167, there is no canonical definition to state claims against.
-/

/-! ## A055167.P13955196342287535632

`A097992(record[A128664(n)])`
-/

namespace A055167.P13955196342287535632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055167.P13955196342287535632

/-!
# A055168: Cumulative counting sequence: method B (noun,adjective)-pairs with first term 0.

The programs for A055168, there is no canonical definition to state claims against.
-/

/-! ## A055168.P3351892831276000630

`A217760(A014681(n)+1)`
-/

namespace A055168.P3351892831276000630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217760 (A014681 n + 1).toNat

end

end A055168.P3351892831276000630

/-! ## A055168.P8604204818731121484

`A081603(A172383(n+1))`
-/

namespace A055168.P8604204818731121484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A172383 (n + 1)).toNat

end

end A055168.P8604204818731121484

/-! ## A055168.P10320290717971564735

`A308898(A235593(n+2))`
-/

namespace A055168.P10320290717971564735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308898 (A235593 (n + 2)).toNat

end

end A055168.P10320290717971564735

/-!
# A055169: Number of new numbers in n-th segment of A055168; see example line of A055168.

The programs for A055169, there is no canonical definition to state claims against.
-/

/-! ## A055169.P15579651960520643940

`gcd(A007705(n), A007720(A007734(2*n+3)))`
-/

namespace A055169.P15579651960520643940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007705 n) (A007720 (A007734 (2 * n + 3)).toNat)

end

end A055169.P15579651960520643940

/-! ## A055169.P39757581454414474

`A001222(A053416(n)+3*2^n-2)`
-/

namespace A055169.P39757581454414474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053416 n + ((3 * 2 ^ n : ℤ) - 2)).toNat

end

end A055169.P39757581454414474

/-! ## A055169.P7282860475434393929

`A088529(A286941(n+1)+A000055(n))`
-/

namespace A055169.P7282860475434393929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (A286941 (n + 1) + A000055 n).toNat

end

end A055169.P7282860475434393929

/-! ## A055169.P6359878727560889925

`gcd(A045940(A055204(n+1)), A308584(n+1))`
-/

namespace A055169.P6359878727560889925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045940 (A055204 (n + 1)).toNat) (A308584 (n + 1))

end

end A055169.P6359878727560889925

/-!
# A055171: Cumulative counting sequence: method B (noun,adjective)-pairs with first term 1.

The programs for A055171, there is no canonical definition to state claims against.
-/

/-! ## A055171.P7995960863769164320

`A217780(A014681(n)+1)`
-/

namespace A055171.P7995960863769164320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217780 (A014681 n + 1).toNat

end

end A055171.P7995960863769164320

/-!
# A055172: Number of new numbers in n-th segment of A055171; see example line of A055171.

The programs for A055172, there is no canonical definition to state claims against.
-/

/-! ## A055172.P16074681832832515233

`Δ[A030709(A028310(n))%(∑[n]+1)]`
-/

namespace A055172.P16074681832832515233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030709 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055172.P16074681832832515233

/-! ## A055172.P944700258053368445

`A000007(n)+Δ[A030709(A028310(n))]`
-/

namespace A055172.P944700258053368445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A055172.P944700258053368445

/-! ## A055172.P2865310252004441254

`Δ[A040000(n)+A030709(A028310(n))]`
-/

namespace A055172.P2865310252004441254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + A030709 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055172.P2865310252004441254

/-! ## A055172.P1670399233621708059

`Δ[A030709(A028310(n))-A054977(n)]`
-/

namespace A055172.P1670399233621708059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055172.P1670399233621708059

/-! ## A055172.P5052599257492277926

`A030709(n+1)+A000007(n)-A030709(A028310(n))`
-/

namespace A055172.P5052599257492277926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1) + (A000007 n - A030709 (A028310 n).toNat)

end

end A055172.P5052599257492277926

/-! ## A055172.P15995052017308594797

`A030709(n+1)+A030709(A028310(n))*A057428(n)`
-/

namespace A055172.P15995052017308594797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1) + A030709 (A028310 n).toNat * A057428 n

end

end A055172.P15995052017308594797

/-! ## A055172.P15744836050469126401

`A030709(n+1)*A054977(n)-A030709(A028310(n))`
-/

namespace A055172.P15744836050469126401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1) * A054977 n - A030709 (A028310 n).toNat

end

end A055172.P15744836050469126401

/-! ## A055172.P11928260443842251954

`A030709(n+1)-A030709(A028310(n))*A057427(n)`
-/

namespace A055172.P11928260443842251954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1) - A030709 (A028310 n).toNat * A057427 n

end

end A055172.P11928260443842251954

/-! ## A055172.P12637106351807529975

`A046094(2*(n+1))+Δ[A030709(A028310(n))]`
-/

namespace A055172.P12637106351807529975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A055172.P12637106351807529975

/-!
# A055174: Cumulative counting sequence: method B (noun,adjective)-pairs with first term 2.

The programs for A055174, there is no canonical definition to state claims against.
-/

/-! ## A055174.P7750948379341476987

`A055188(record[xor(1, n²)]-(n²+n))`
-/

namespace A055174.P7750948379341476987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 2 + n))

end

end A055174.P7750948379341476987

/-!
# A055175: Number of new numbers in n-th segment of A055174; see example line of A055174.

The programs for A055175, there is no canonical definition to state claims against.
-/

/-! ## A055175.P12639153435470183868

`floor(2/(n+2)+Δ[A030739(A028310(n))])`
-/

namespace A055175.P12639153435470183868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (n + 2 : ℚ) + (f1 (n + 1) - f1 n : ℚ)⌋

end

end A055175.P12639153435470183868

/-! ## A055175.P8366444775341495708

`A000007(n)+Δ[A030739(A028310(n))]`
-/

namespace A055175.P8366444775341495708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A055175.P8366444775341495708

/-! ## A055175.P9530000391112694066

`Δ[A040000(n)+A030739(A028310(n))]`
-/

namespace A055175.P9530000391112694066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + A030739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055175.P9530000391112694066

/-! ## A055175.P16088299043811030608

`Δ[A057427(n)+A030739(A028310(n))]`
-/

namespace A055175.P16088299043811030608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A030739 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055175.P16088299043811030608

/-! ## A055175.P13425424183494134801

`Δ[A030739(A028310(n))-A057428(n)]`
-/

namespace A055175.P13425424183494134801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030739 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055175.P13425424183494134801

/-! ## A055175.P9446138316976854545

`A030739(n+1)+A000007(n)-A030739(A028310(n))`
-/

namespace A055175.P9446138316976854545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030739 (n + 1) + (A000007 n - A030739 (A028310 n).toNat)

end

end A055175.P9446138316976854545

/-! ## A055175.P7174942864736091184

`A030739(n+1)+A030739(A028310(n))*A057428(n)`
-/

namespace A055175.P7174942864736091184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030739 (n + 1) + A030739 (A028310 n).toNat * A057428 n

end

end A055175.P7174942864736091184

/-! ## A055175.P1414052425537752200

`A030739(n+1)-A030739(A028310(n))*A057427(n)`
-/

namespace A055175.P1414052425537752200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030739 (n + 1) - A030739 (A028310 n).toNat * A057427 n

end

end A055175.P1414052425537752200

/-! ## A055175.P14531517047614984361

`Δ[A030739(A028310(n))%A000079(n)]`
-/

namespace A055175.P14531517047614984361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030739 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055175.P14531517047614984361

/-!
# A055176: n-th distinct number to appear in A055174; also the n-th to appear in A055190.

The programs for A055176, there is no canonical definition to state claims against.
-/

/-! ## A055176.P6874109842176866918

`A091987(A091981(3*n+2)+A007359(n))`
-/

namespace A055176.P6874109842176866918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091987 (A091981 (3 * n + 2) + A007359 n).toNat

end

end A055176.P6874109842176866918

/-!
# A055177: Cumulative counting sequence: method B (noun,adjective)-pairs with first term 3.

The programs for A055177, there is no canonical definition to state claims against.
-/

/-! ## A055177.P13672341012032126139

`A055189(record[xor(1, n²)]-(n²+n))`
-/

namespace A055177.P13672341012032126139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 2 + n))

end

end A055177.P13672341012032126139

/-!
# A055178: Number of new numbers in n-th segment of A055177; see example line of A055177.

The programs for A055178, there is no canonical definition to state claims against.
-/

/-! ## A055178.P435009105871950026

`Δ[A030729(A028310(n))%∑[n+1]]`
-/

namespace A055178.P435009105871950026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030729 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055178.P435009105871950026

/-! ## A055178.P1389179350608746009

`A000007(n)+Δ[A030729(A028310(n))]`
-/

namespace A055178.P1389179350608746009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030729 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A055178.P1389179350608746009

/-! ## A055178.P14751653326648740951

`Δ[A040000(n)+A030729(A028310(n))]`
-/

namespace A055178.P14751653326648740951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + A030729 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055178.P14751653326648740951

/-! ## A055178.P1279517424821068459

`Δ[A030729(A028310(n))-A054977(n)]`
-/

namespace A055178.P1279517424821068459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030729 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055178.P1279517424821068459

/-! ## A055178.P3545136759248380608

`A000118(n)%2+Δ[A030729(A028310(n))]`
-/

namespace A055178.P3545136759248380608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030729 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000118 n) 2 + (f1 (n + 1) - f1 n)

end

end A055178.P3545136759248380608

/-! ## A055178.P9412214104428454982

`A006093(n+1)%2+Δ[A030729(A028310(n))]`
-/

namespace A055178.P9412214104428454982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030729 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) 2 + (f1 (n + 1) - f1 n)

end

end A055178.P9412214104428454982

/-! ## A055178.P17580658636234321749

`Δ[A030729(A028310(n))]^A000045(n²%(n+1))`
-/

namespace A055178.P17580658636234321749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030729 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000045 (n ^ 2 % (n + 1)) : ℤ)

end

end A055178.P17580658636234321749

/-! ## A055178.P341313763442669527

`A030729(n+1)+A000007(n)-A030729(A028310(n))`
-/

namespace A055178.P341313763442669527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030729 (n + 1) + (A000007 n - A030729 (A028310 n).toNat)

end

end A055178.P341313763442669527

/-! ## A055178.P1643602847481748930

`A030729(n+1)*A054977(n)-A030729(A028310(n))`
-/

namespace A055178.P1643602847481748930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030729 (n + 1) * A054977 n - A030729 (A028310 n).toNat

end

end A055178.P1643602847481748930

/-!
# A055180: Cumulative counting sequence: method B (noun,adjective)-pairs with first term 4.

The programs for A055180, there is no canonical definition to state claims against.
-/

/-! ## A055180.P7030980017634195844

`A055190(record[xor(1, n²)]-(n²+n))`
-/

namespace A055180.P7030980017634195844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 2 + n))

end

end A055180.P7030980017634195844

/-!
# A055181: Number of new numbers in n-th segment of A055174; see example line of A055174.

The programs for A055181, there is no canonical definition to state claims against.
-/

/-! ## A055181.P9800926402113038128

`abs(Δ[A030749(abs(1-n)+1)])`
-/

namespace A055181.P9800926402113038128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030749 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A055181.P9800926402113038128

/-! ## A055181.P3641894627567276928

`Δ[A030749(A028310(n))%(n+1)²]`
-/

namespace A055181.P3641894627567276928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030749 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055181.P3641894627567276928

/-! ## A055181.P8352278684931957887

`A028310(Δ[A030749(A028310(n))])`
-/

namespace A055181.P8352278684931957887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030749 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A055181.P8352278684931957887

/-! ## A055181.P3265507442589705890

`runs[fp[A030749(n+1)]]`
-/

namespace A055181.P3265507442589705890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030749 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A055181.P3265507442589705890

/-! ## A055181.P14459427400785120559

`A325028(A035945(n+1))`
-/

namespace A055181.P14459427400785120559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325028 (A035945 (n + 1)).toNat

end

end A055181.P14459427400785120559

/-!
# A055183: Cumulative counting sequence: method B (noun,adjective)-pairs with first term 5.

The programs for A055183, there is no canonical definition to state claims against.
-/

/-! ## A055183.P15742209498119887831

`A055191(record[xor(1, n²)]-(n²+n))`
-/

namespace A055183.P15742209498119887831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055191 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 2 + n))

end

end A055183.P15742209498119887831

/-!
# A055186: Cumulative counting sequence: method A (adjective-before-noun)-pairs with first term 0.

The programs for A055186, there is no canonical definition to state claims against.
-/

/-! ## A055186.P4749818778251337210

`A217760(n+1)-A326291(A080412(A077661(n+1)))`
-/

namespace A055186.P4749818778251337210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217760 (n + 1) - A326291 (A080412 (A077661 (n + 1)).toNat).toNat

end

end A055186.P4749818778251337210

/-! ## A055186.P11668105990020225627

`A217760(1+n)`
-/

namespace A055186.P11668105990020225627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217760 (1 + n)

end

end A055186.P11668105990020225627

/-!
# A055187: Cumulative counting sequence: method A (adjective-before-noun)-pairs with first term 1.

The programs for A055187, there is no canonical definition to state claims against.
-/

/-! ## A055187.P16160159043936405254

`A217780(∑[A188587(A265755(n))])`
-/

namespace A055187.P16160159043936405254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188587 (A265755 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217780 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055187.P16160159043936405254

/-! ## A055187.P17563302366660341906

`A217780(n+1)^A052343(A078495(n))`
-/

namespace A055187.P17563302366660341906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217780 (n + 1) : ℚ) ^ (A052343 (A078495 n).toNat : ℤ)

end

end A055187.P17563302366660341906

/-! ## A055187.P12298893677451701030

`A217780(n+1)^A136705(A326532(n))`
-/

namespace A055187.P12298893677451701030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217780 (n + 1) : ℚ) ^ (A136705 (A326532 n).toNat : ℤ)

end

end A055187.P12298893677451701030

/-! ## A055187.P16159526388551952458

`A217780(n+1)%A039915(A277087(n))`
-/

namespace A055187.P16159526388551952458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217780 (n + 1)) (A039915 (A277087 n).toNat)

end

end A055187.P16159526388551952458

/-! ## A055187.P12467376206093141691

`gcd(A031347(A033431(n)), A217780(n+1))`
-/

namespace A055187.P12467376206093141691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031347 (A033431 n).toNat) (A217780 (n + 1))

end

end A055187.P12467376206093141691

/-!
# A055188: Cumulative counting sequence: method A (adjective-before-noun) pairs, starting with 2.

The programs for A055188, there is no canonical definition to state claims against.
-/

/-! ## A055188.P12039607499518445983

`A055174(A014681(n)+1)`
-/

namespace A055188.P12039607499518445983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055174 (A014681 n + 1).toNat

end

end A055188.P12039607499518445983

/-!
# A055189: Cumulative counting sequence: method A (adjective-before-noun)-pairs, starting with 3.

The programs for A055189, there is no canonical definition to state claims against.
-/

/-! ## A055189.P9025263970785190778

`A055177(A014681(n)+1)`
-/

namespace A055189.P9025263970785190778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055177 (A014681 n + 1).toNat

end

end A055189.P9025263970785190778

/-!
# A055190: Cumulative counting sequence: method A (adjective-before-noun) pairs, starting with 4.

The programs for A055190, there is no canonical definition to state claims against.
-/

/-! ## A055190.P2935049007588428102

`A055180(A014681(n)+1)`
-/

namespace A055190.P2935049007588428102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055180 (A014681 n + 1).toNat

end

end A055190.P2935049007588428102

/-!
# A055191: Cumulative counting sequence: method A (adjective-before-noun) pairs, starting with 5.

The programs for A055191, there is no canonical definition to state claims against.
-/

/-! ## A055191.P8952002765020616124

`A055183(A014681(n)+1)`
-/

namespace A055191.P8952002765020616124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055183 (A014681 n + 1).toNat

end

end A055191.P8952002765020616124

/-!
# A055192: Number of bipartite graphs with n vertices, no isolated vertices and a distinguished bipartite block, up to isomorphism.

The programs for A055192, there is no canonical definition to state claims against.
-/

/-! ## A055192.P11125746750382393342

`Δ[Δ[A049312(n)]]`
-/

namespace A055192.P11125746750382393342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055192.P11125746750382393342

/-! ## A055192.P8514925600315876607

`Δ[A048194(1+n)]`
-/

namespace A055192.P8514925600315876607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048194 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055192.P8514925600315876607

/-! ## A055192.P4553531970627286023

`A361957(A340266(n+1))`
-/

namespace A055192.P4553531970627286023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361957 (A340266 (n + 1)).toNat

end

end A055192.P4553531970627286023

/-! ## A055192.P16069612445439226070

`Δ[record[A048194(A126759(n))]]`
-/

namespace A055192.P16069612445439226070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048194 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055192.P16069612445439226070

/-! ## A055192.P2920783925198278742

`Δ[record[A048194(A133310(n))]]`
-/

namespace A055192.P2920783925198278742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048194 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055192.P2920783925198278742

/-!
# A055194: Number of 3 X n binary matrices with distinct rows, up to row and column permutation; (n,3)-hypergraphs (including empty hyperedge but excluding multiple hyperedges).

The programs for A055194, the canonical program `A055194.P5412580168373377015` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055194 has offset 2).

The definition of A055194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055194.P5412580168373377015

`ogf((3+4x-4x^3+2x^5+2x^6-x^8)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055194

/-- `ogf((3+4x-4x^3+2x^5+2x^6-x^8)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))` -/
def P5412580168373377015.Spec : Prop :=
  ∀ n, P5412580168373377015.a n = A055194 (n + 2)

theorem P5412580168373377015.correct : P5412580168373377015.Spec := by
  intro n
  simp only [A055194, Nat.add_sub_cancel]

end A055194

/-! ## A055194.P605748768065452868

`A055485(3+n)-A005783(n)`
-/

namespace A055194.P605748768065452868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055485 (3 + n) - A005783 n

end

end A055194.P605748768065452868

namespace A055194

/-- `A055485(3+n)-A005783(n)` -/
def P605748768065452868.Spec : Prop :=
  ∀ n, P605748768065452868.a n = A055194 (n + 2)

end A055194

/-! ## A055194.P15644718012097354281

`A055485(3+n)-∑[A050531(n)]`
-/

namespace A055194.P15644718012097354281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055485 (3 + n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055194.P15644718012097354281

namespace A055194

/-- `A055485(3+n)-∑[A050531(n)]` -/
def P15644718012097354281.Spec : Prop :=
  ∀ n, P15644718012097354281.a n = A055194 (n + 2)

end A055194

/-! ## A055194.P16976081745941547580

`A005745(n+2)-Δ[A001752(n)]`
-/

namespace A055194.P16976081745941547580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (n + 2) - (f1 (n + 1) - f1 n)

end

end A055194.P16976081745941547580

namespace A055194

/-- `A005745(n+2)-Δ[A001752(n)]` -/
def P16976081745941547580.Spec : Prop :=
  ∀ n, P16976081745941547580.a n = A055194 (n + 2)

end A055194

/-! ## A055194.P5438527949167708881

`A005745(n+2)-A002623(n+1)`
-/

namespace A055194.P5438527949167708881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (n + 2) - A002623 (n + 1)

end

end A055194.P5438527949167708881

namespace A055194

/-- `A005745(n+2)-A002623(n+1)` -/
def P5438527949167708881.Spec : Prop :=
  ∀ n, P5438527949167708881.a n = A055194 (n + 2)

end A055194

/-! ## A055194.P12956730242945302972

`∑[A005783(n+2)-A000217(n+3)]`
-/

namespace A055194.P12956730242945302972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 (n + 2) - A000217 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055194.P12956730242945302972

namespace A055194

/-- `∑[A005783(n+2)-A000217(n+3)]` -/
def P12956730242945302972.Spec : Prop :=
  ∀ n, P12956730242945302972.a n = A055194 (n + 2)

end A055194

/-! ## A055194.P1723048157884469613

`A005745(n+1)+A005745(n+2)-A002727(n+1)`
-/

namespace A055194.P1723048157884469613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (n + 1) + (A005745 (n + 2) - A002727 (n + 1))

end

end A055194.P1723048157884469613

namespace A055194

/-- `A005745(n+1)+A005745(n+2)-A002727(n+1)` -/
def P1723048157884469613.Spec : Prop :=
  ∀ n, P1723048157884469613.a n = A055194 (n + 2)

end A055194

/-! ## A055194.P3826786518921080621

`A002727(n+2)-A000292(n+3)`
-/

namespace A055194.P3826786518921080621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 (n + 2) - A000292 (n + 3)

end

end A055194.P3826786518921080621

namespace A055194

/-- `A002727(n+2)-A000292(n+3)` -/
def P3826786518921080621.Spec : Prop :=
  ∀ n, P3826786518921080621.a n = A055194 (n + 2)

end A055194

/-!
# A055195: Number of 3-covers of an unlabeled n-set.

The programs for A055195, the canonical program `A055195.P2800050513779902336` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055195 has offset 2).

The definition of A055195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055195.P2800050513779902336

`ogf((1+6x+3x^2-3x^3-5x^4-3x^5+6x^6+4x^7-3x^9-x^10+x^11)/(1-3x+x^2+3x^3+x^4-3x^5-6x^6+6x^7+3x^8-x^9-3x^10-x^11+3x^12-x^13))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055195

/-- `ogf((1+6x+3x^2-3x^3-5x^4-3x^5+6x^6+4x^7-3x^9-x^10+x^11)/(1-3x+x^2+3x^3+x^4-3x^5-6x^6+6x^7+3x^8-x^9-3x^10-x^11+3x^12-x^13))` -/
def P2800050513779902336.Spec : Prop :=
  ∀ n, P2800050513779902336.a n = A055195 (n + 2)

theorem P2800050513779902336.correct : P2800050513779902336.Spec := by
  intro n
  simp only [A055195, Nat.add_sub_cancel]

end A055195

/-! ## A055195.P5278862958052460360

`Δ[A005745(1+n)-A008778(n)]`
-/

namespace A055195.P5278862958052460360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (1 + n) - A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055195.P5278862958052460360

namespace A055195

/-- `Δ[A005745(1+n)-A008778(n)]` -/
def P5278862958052460360.Spec : Prop :=
  ∀ n, P5278862958052460360.a n = A055195 (n + 2)

end A055195

/-! ## A055195.P1213667737852562052

`A055609(2+n)-Δ[A008778(n)]`
-/

namespace A055195.P1213667737852562052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (2 + n) - (f1 (n + 1) - f1 n)

end

end A055195.P1213667737852562052

namespace A055195

/-- `A055609(2+n)-Δ[A008778(n)]` -/
def P1213667737852562052.Spec : Prop :=
  ∀ n, P1213667737852562052.a n = A055195 (n + 2)

end A055195

/-! ## A055195.P8357409666499206531

`A055609(n+2)-A034856(n+2)`
-/

namespace A055195.P8357409666499206531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 2) - A034856 (n + 2)

end

end A055195.P8357409666499206531

namespace A055195

/-- `A055609(n+2)-A034856(n+2)` -/
def P8357409666499206531.Spec : Prop :=
  ∀ n, P8357409666499206531.a n = A055195 (n + 2)

end A055195

/-! ## A055195.P14884638828906342776

`A055609(n+2)-(A052905(n)+3)`
-/

namespace A055195.P14884638828906342776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 2) - (A052905 n + 3)

end

end A055195.P14884638828906342776

namespace A055195

/-- `A055609(n+2)-(A052905(n)+3)` -/
def P14884638828906342776.Spec : Prop :=
  ∀ n, P14884638828906342776.a n = A055195 (n + 2)

end A055195

/-! ## A055195.P3102034828522917413

`Δ[A005745(n+1)]-(A052905(n)+3)`
-/

namespace A055195.P3102034828522917413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A052905 n + 3)

end

end A055195.P3102034828522917413

namespace A055195

/-- `Δ[A005745(n+1)]-(A052905(n)+3)` -/
def P3102034828522917413.Spec : Prop :=
  ∀ n, P3102034828522917413.a n = A055195 (n + 2)

end A055195

/-! ## A055195.P14150106421606862364

`record[A055609(A193738(n))-n]`
-/

namespace A055195.P14150106421606862364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (A193738 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055195.P14150106421606862364

namespace A055195

/-- `record[A055609(A193738(n))-n]` -/
def P14150106421606862364.Spec : Prop :=
  ∀ n, P14150106421606862364.a n = A055195 (n + 2)

end A055195

/-! ## A055195.P5859597178981389854

`A055609(n+2)+A001489(A052905(n)+3)`
-/

namespace A055195.P5859597178981389854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 2) + A001489 (A052905 n + 3).toNat

end

end A055195.P5859597178981389854

namespace A055195

/-- `A055609(n+2)+A001489(A052905(n)+3)` -/
def P5859597178981389854.Spec : Prop :=
  ∀ n, P5859597178981389854.a n = A055195 (n + 2)

end A055195

/-!
# A055196: Primitive numbers k that divide sigma(k)*phi(k).

The programs for A055196, there is no canonical definition to state claims against.
-/

/-! ## A055196.P6805956623773223618

`A071834(A006530((2*n)!))`
-/

namespace A055196.P6805956623773223618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (A006530 (Nat.factorial (2 * n))).toNat

end

end A055196.P6805956623773223618

/-!
# A055197: Numbers k such that A005728(k) is not prime.

The programs for A055197, the canonical program `A055197.P13692052277008560425` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055197 has offset 1).

The definition of A055197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055197.P13692052277008560425

`lt[1, A001222(A005728(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055197

/-- `lt[1, A001222(A005728(n))]` -/
def P13692052277008560425.Spec : Prop :=
  ∀ n, (P13692052277008560425.a n : ℤ) = A055197 (n + 1)

theorem P13692052277008560425.correct : P13692052277008560425.Spec := by
  intro n
  simp only [A055197, Nat.add_sub_cancel]

end A055197

/-! ## A055197.P9843263204637943482

`lt[2, A077462(A049643(n))]`
-/

namespace A055197.P9843263204637943482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A049643 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055197.P9843263204637943482

namespace A055197

/-- `lt[2, A077462(A049643(n))]` -/
def P9843263204637943482.Spec : Prop :=
  ∀ n, (P9843263204637943482.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P15184963879035821689

`A038567(A061560(2+n))-1`
-/

namespace A055197.P15184963879035821689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A061560 (2 + n)).toNat - 1

end

end A055197.P15184963879035821689

namespace A055197

/-- `A038567(A061560(2+n))-1` -/
def P15184963879035821689.Spec : Prop :=
  ∀ n, P15184963879035821689.a n = A055197 (n + 1)

end A055197

/-! ## A055197.P12764044410441827318

`lt[1, A001222(1+A002088(n))]`
-/

namespace A055197.P12764044410441827318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 + A002088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055197.P12764044410441827318

namespace A055197

/-- `lt[1, A001222(1+A002088(n))]` -/
def P12764044410441827318.Spec : Prop :=
  ∀ n, (P12764044410441827318.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P6309340417126057985

`lt[2, A000005(A002088(n)+1)]`
-/

namespace A055197.P6309340417126057985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002088 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055197.P6309340417126057985

namespace A055197

/-- `lt[2, A000005(A002088(n)+1)]` -/
def P6309340417126057985.Spec : Prop :=
  ∀ n, (P6309340417126057985.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P18088450520427493821

`lt[2, A000005(A049643(n+1))]+1`
-/

namespace A055197.P18088450520427493821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049643 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A055197.P18088450520427493821

namespace A055197

/-- `lt[2, A000005(A049643(n+1))]+1` -/
def P18088450520427493821.Spec : Prop :=
  ∀ n, (P18088450520427493821.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P4476596303414859445

`eq[0, A010051(∑[A000010(n+1)]+1)]+1`
-/

namespace A055197.P4476596303414859445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f3 j + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055197.P4476596303414859445

namespace A055197

/-- `eq[0, A010051(∑[A000010(n+1)]+1)]+1` -/
def P4476596303414859445.Spec : Prop :=
  ∀ n, (P4476596303414859445.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P13348213931546087996

`lt[A000010(A005728(n)), A002088(n)]`
-/

namespace A055197.P13348213931546087996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P13348213931546087996

namespace A055197

/-- `lt[A000010(A005728(n)), A002088(n)]` -/
def P13348213931546087996.Spec : Prop :=
  ∀ n, (P13348213931546087996.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P4299220043325140560

`lt[A000010(A002088(n)+1), A002088(n)]`
-/

namespace A055197.P4299220043325140560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002088 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P4299220043325140560

namespace A055197

/-- `lt[A000010(A002088(n)+1), A002088(n)]` -/
def P4299220043325140560.Spec : Prop :=
  ∀ n, (P4299220043325140560.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P16617419305613171739

`eq[A010051(2*(n+1)), A010051(A005728(n))]`
-/

namespace A055197.P16617419305613171739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A005728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055197.P16617419305613171739

namespace A055197

/-- `eq[A010051(2*(n+1)), A010051(A005728(n))]` -/
def P16617419305613171739.Spec : Prop :=
  ∀ n, (P16617419305613171739.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P5357043431409127651

`eq[1, A066247(A005728(n))]`
-/

namespace A055197.P5357043431409127651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A005728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055197.P5357043431409127651

namespace A055197

/-- `eq[1, A066247(A005728(n))]` -/
def P5357043431409127651.Spec : Prop :=
  ∀ n, (P5357043431409127651.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P1475714618418644252

`lt[4, A000005(A049632(n))]`
-/

namespace A055197.P1475714618418644252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055197.P1475714618418644252

namespace A055197

/-- `lt[4, A000005(A049632(n))]` -/
def P1475714618418644252.Spec : Prop :=
  ∀ n, (P1475714618418644252.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P15145774288930212878

`lt[2, A001222(A206297(n+1)+1)]`
-/

namespace A055197.P15145774288930212878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A206297 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055197.P15145774288930212878

namespace A055197

/-- `lt[2, A001222(A206297(n+1)+1)]` -/
def P15145774288930212878.Spec : Prop :=
  ∀ n, (P15145774288930212878.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P18139475678459179998

`lt[A006530(A049632(n)), A049643(n)]`
-/

namespace A055197.P18139475678459179998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P18139475678459179998

namespace A055197

/-- `lt[A006530(A049632(n)), A049643(n)]` -/
def P18139475678459179998.Spec : Prop :=
  ∀ n, (P18139475678459179998.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P16939916144752500645

`lt[A014963(A005728(n)), A030141(n+1)]`
-/

namespace A055197.P16939916144752500645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P16939916144752500645

namespace A055197

/-- `lt[A014963(A005728(n)), A030141(n+1)]` -/
def P16939916144752500645.Spec : Prop :=
  ∀ n, (P16939916144752500645.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P2624630561417202868

`lt[A014963(A005728(n)), A049806(n+1)]`
-/

namespace A055197.P2624630561417202868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P2624630561417202868

namespace A055197

/-- `lt[A014963(A005728(n)), A049806(n+1)]` -/
def P2624630561417202868.Spec : Prop :=
  ∀ n, (P2624630561417202868.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P18228571241818738647

`lt[A014963(A005728(n)), A049807(n+1)]`
-/

namespace A055197.P18228571241818738647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P18228571241818738647

namespace A055197

/-- `lt[A014963(A005728(n)), A049807(n+1)]` -/
def P18228571241818738647.Spec : Prop :=
  ∀ n, (P18228571241818738647.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P12055393155449462275

`lt[A014963(A005728(n)), A049809(n+1)]`
-/

namespace A055197.P12055393155449462275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P12055393155449462275

namespace A055197

/-- `lt[A014963(A005728(n)), A049809(n+1)]` -/
def P12055393155449462275.Spec : Prop :=
  ∀ n, (P12055393155449462275.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P17594526497829626379

`lt[A014963(A005728(n)), A179970(n+1)]`
-/

namespace A055197.P17594526497829626379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P17594526497829626379

namespace A055197

/-- `lt[A014963(A005728(n)), A179970(n+1)]` -/
def P17594526497829626379.Spec : Prop :=
  ∀ n, (P17594526497829626379.a n : ℤ) = A055197 (n + 1)

end A055197

/-! ## A055197.P12542231014031034576

`lt[A014963(A005728(n)), A185670(n+1)]`
-/

namespace A055197.P12542231014031034576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055197.P12542231014031034576

namespace A055197

/-- `lt[A014963(A005728(n)), A185670(n+1)]` -/
def P12542231014031034576.Spec : Prop :=
  ∀ n, (P12542231014031034576.a n : ℤ) = A055197 (n + 1)

end A055197

/-!
# A055198: Numbers n with property that n cycles to itself after sufficiently many iterations of "reverse decimal digits of (n+4)".

The programs for A055198, there is no canonical definition to state claims against.
-/

/-! ## A055198.P3948252676755598759

`eq[0, A117831(n+4)]`
-/

namespace A055198.P3948252676755598759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055198.P3948252676755598759

/-! ## A055198.P13442782761804710649

`lt[A117831(n+2), 1]-2`
-/

namespace A055198.P13442782761804710649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 2

end

end A055198.P13442782761804710649

/-! ## A055198.P2568183855013361317

`lt[A117831(A020705(n)), 1]`
-/

namespace A055198.P2568183855013361317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A020705 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055198.P2568183855013361317

/-! ## A055198.P9305393525658337685

`eq[0, A117831(A028310(n))]-4`
-/

namespace A055198.P9305393525658337685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 4

end

end A055198.P9305393525658337685

/-! ## A055198.P13521631620586571417

`A117827(n+1)-4`
-/

namespace A055198.P13521631620586571417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117827 (n + 1) - 4

end

end A055198.P13521631620586571417

/-! ## A055198.P9953962120292255406

`A023446(A117827(n+1))`
-/

namespace A055198.P9953962120292255406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A117827 (n + 1)).toNat

end

end A055198.P9953962120292255406

