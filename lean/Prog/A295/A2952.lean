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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A295200: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 4 1s.

The programs for A295200, the canonical program `A295200.P585733605363968833` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295200 has offset 1).

The definition of A295200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295200.P3506866950444877142

`ogf((1+x+3x^2-x^3-2x^4)/(1-2x+x^2-2x^3-x^4+2x^5))`
-/

namespace A295200.P3506866950444877142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, -1, -2] [1, -2, 1, -2, -1, 2] n

end

end A295200.P3506866950444877142

namespace A295200

/-- `ogf((1+x+3x^2-x^3-2x^4)/(1-2x+x^2-2x^3-x^4+2x^5))` -/
def P3506866950444877142.Spec : Prop :=
  ∀ n, P3506866950444877142.a n = A295200 (n + 1)

end A295200

/-! ## A295200.P585733605363968833

`2*a(n-1)-a(n-2)+2*a(n-3)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=14, a(4)=25`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295200

/-- `2*a(n-1)-a(n-2)+2*a(n-3)+a(n-4)-2*a(n-5)` -/
def P585733605363968833.Spec : Prop :=
  ∀ n, P585733605363968833.a n = A295200 (n + 1)

theorem P585733605363968833.correct : P585733605363968833.Spec := by
  intro n
  simp only [A295200, Nat.add_sub_cancel]

end A295200

/-! ## A295200.P1070759576000371479

`A295205(∑[n+2]+4)`
-/

namespace A295200.P1070759576000371479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295200.P1070759576000371479

namespace A295200

/-- `A295205(∑[n+2]+4)` -/
def P1070759576000371479.Spec : Prop :=
  ∀ n, P1070759576000371479.a n = A295200 (n + 1)

end A295200

/-! ## A295200.P13831298279277465952

`record[A295205(A167614(floor(n/(n%2+2))+1))]`
-/

namespace A295200.P13831298279277465952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A167614 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295200.P13831298279277465952

namespace A295200

/-- `record[A295205(A167614(floor(n/(n%2+2))+1))]` -/
def P13831298279277465952.Spec : Prop :=
  ∀ n, P13831298279277465952.a n = A295200 (n + 1)

end A295200

/-! ## A295200.P5086014901202878611

`A295205(A167614(n+1))%A001576(n)`
-/

namespace A295200.P5086014901202878611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295205 (A167614 (n + 1)).toNat) (A001576 n)

end

end A295200.P5086014901202878611

namespace A295200

/-- `A295205(A167614(n+1))%A001576(n)` -/
def P5086014901202878611.Spec : Prop :=
  ∀ n, P5086014901202878611.a n = A295200 (n + 1)

end A295200

/-!
# A295201: Number of n X 4 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 4 1s.

The programs for A295201, there is no canonical definition to state claims against.
-/

/-! ## A295201.P4291437375103275481

`A295205(A374004(n+1))`
-/

namespace A295201.P4291437375103275481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A374004 (n + 1)).toNat

end

end A295201.P4291437375103275481

/-! ## A295201.P8546368200741501731

`A295205(A141214(n)+7)`
-/

namespace A295201.P8546368200741501731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A141214 n + 7).toNat

end

end A295201.P8546368200741501731

/-! ## A295201.P17870072523309825591

`A295205(A167614(n+2)+1)`
-/

namespace A295201.P17870072523309825591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A167614 (n + 2) + 1).toNat

end

end A295201.P17870072523309825591

/-! ## A295201.P2660821975642965675

`A295205(A080036(A167614(n+1)))`
-/

namespace A295201.P2660821975642965675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A295201.P2660821975642965675

/-! ## A295201.P5658875736981155453

`A295205(A034856(n+1)+A020723(n))`
-/

namespace A295201.P5658875736981155453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A034856 (n + 1) + A020723 n).toNat

end

end A295201.P5658875736981155453

/-!
# A295202: Number of n X 5 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 4 1's.

The programs for A295202, there is no canonical definition to state claims against.
-/

/-! ## A295202.P13045191637002639630

`A295205(A374005(n+1))`
-/

namespace A295202.P13045191637002639630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A374005 (n + 1)).toNat

end

end A295202.P13045191637002639630

/-! ## A295202.P16164121039981983687

`A295205(A167499(n+3))`
-/

namespace A295202.P16164121039981983687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A167499 (n + 3)).toNat

end

end A295202.P16164121039981983687

/-! ## A295202.P15383377351805840745

`A295205(A000217(n+4)+5)`
-/

namespace A295202.P15383377351805840745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A000217 (n + 4) + 5).toNat

end

end A295202.P15383377351805840745

/-! ## A295202.P4922496857918541213

`A295205(A027379(n+2)+8)`
-/

namespace A295202.P4922496857918541213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A027379 (n + 2) + 8).toNat

end

end A295202.P4922496857918541213

/-! ## A295202.P17891310332484946319

`A295205(Δ[A000292(n+4)]-n)`
-/

namespace A295202.P17891310332484946319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A295202.P17891310332484946319

/-!
# A295203: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 4 1s.

The programs for A295203, there is no canonical definition to state claims against.
-/

/-! ## A295203.P1739831185075035554

`A295205(A374007(n+1))`
-/

namespace A295203.P1739831185075035554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A374007 (n + 1)).toNat

end

end A295203.P1739831185075035554

/-! ## A295203.P11732995232683970704

`A295205(A000124(n+5)+5)`
-/

namespace A295203.P11732995232683970704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A000124 (n + 5) + 5).toNat

end

end A295203.P11732995232683970704

/-! ## A295203.P4867779548769035608

`A295205(A000217(n+5)+6)`
-/

namespace A295203.P4867779548769035608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A000217 (n + 5) + 6).toNat

end

end A295203.P4867779548769035608

/-! ## A295203.P16496088233572718061

`A295205(A034856(n+4)+8)`
-/

namespace A295203.P16496088233572718061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A034856 (n + 4) + 8).toNat

end

end A295203.P16496088233572718061

/-! ## A295203.P12137071313788566529

`A295205(A000096(n+5)-(n-1))`
-/

namespace A295203.P12137071313788566529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A295203.P12137071313788566529

/-!
# A295204: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 4 1s.

The programs for A295204, there is no canonical definition to state claims against.
-/

/-! ## A295204.P9544929732624442986

`A295205(A374008(n+1))`
-/

namespace A295204.P9544929732624442986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A374008 (n + 1)).toNat

end

end A295204.P9544929732624442986

/-! ## A295204.P11803617747235077111

`A295205(A167499(n+5)+2)`
-/

namespace A295204.P11803617747235077111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A167499 (n + 5) + 2).toNat

end

end A295204.P11803617747235077111

/-! ## A295204.P5337814608988179189

`A295205(A000217(n+6)+7)`
-/

namespace A295204.P5337814608988179189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A000217 (n + 6) + 7).toNat

end

end A295204.P5337814608988179189

/-! ## A295204.P3446238825555626422

`A295205(A000124(n+7)-(n+1))`
-/

namespace A295204.P3446238825555626422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A295204.P3446238825555626422

/-! ## A295204.P5212551071704287090

`A295205(A133263(n+8)-A004275(n+6))`
-/

namespace A295204.P5212551071704287090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A133263 (n + 8) - A004275 (n + 6)).toNat

end

end A295204.P5212551071704287090

/-!
# A295205: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 4 1s.

The programs for A295205, there is no canonical definition to state claims against.
-/

/-! ## A295205.P16723959033042365611

`A100719(A001263(n+1)%A210895(n+1))`
-/

namespace A295205.P16723959033042365611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (Int.tmod (A001263 (n + 1)) (A210895 (n + 1))).toNat

end

end A295205.P16723959033042365611

/-! ## A295205.P12971905721215718775

`A184956(A176560(n)+2)`
-/

namespace A295205.P12971905721215718775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184956 (A176560 n + 2).toNat

end

end A295205.P12971905721215718775

/-! ## A295205.P2041591721786334840

`A048766(∑{d}[A168517(n), #])`
-/

namespace A295205.P2041591721786334840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A295205.P2041591721786334840

/-! ## A295205.P6969984685571298797

`A048766(A000203(A168517(n)))`
-/

namespace A295205.P6969984685571298797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000203 (A168517 n).toNat).toNat

end

end A295205.P6969984685571298797

/-! ## A295205.P2780398131832374907

`A196863(n+1)+A184159(A099594(n))`
-/

namespace A295205.P2780398131832374907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (n + 1) + A184159 (A099594 n).toNat

end

end A295205.P2780398131832374907

/-!
# A295207: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 3 1's.

The programs for A295207, there is no canonical definition to state claims against.
-/

/-! ## A295207.P17454455060883723221

`A295213(∑[4*n]+1)`
-/

namespace A295207.P17454455060883723221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295207.P17454455060883723221

/-! ## A295207.P11144036285291785379

`record[A115718(n)*A295213(n+1)]`
-/

namespace A295207.P11144036285291785379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A295213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295207.P11144036285291785379

/-! ## A295207.P1381311572515836354

`record[gcd(A295213(n+1), A347682(n+1))]`
-/

namespace A295207.P1381311572515836354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295213 (n + 1)) (A347682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295207.P1381311572515836354

/-! ## A295207.P6095669116958849741

`gcd(A151722(n), A295213(A001844(n)))`
-/

namespace A295207.P6095669116958849741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151722 n) (A295213 (A001844 n).toNat)

end

end A295207.P6095669116958849741

/-! ## A295207.P2565631235746471286

`A053164(n+1)*A295213(A001844(n))`
-/

namespace A295207.P2565631235746471286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1) * A295213 (A001844 n).toNat

end

end A295207.P2565631235746471286

/-!
# A295208: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 3 1's.

The programs for A295208, there is no canonical definition to state claims against.
-/

/-! ## A295208.P10093923718028470228

`A295213(∑[n+2]+4)`
-/

namespace A295208.P10093923718028470228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295208.P10093923718028470228

/-! ## A295208.P10959382817901950233

`A295213(A167614(n+1))^A178334(n)`
-/

namespace A295208.P10959382817901950233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295213 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A295208.P10959382817901950233

/-! ## A295208.P8947811073134078299

`lcm(A033999(n), A295213(A167614(n+1)))`
-/

namespace A295208.P8947811073134078299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295213 (A167614 (n + 1)).toNat)

end

end A295208.P8947811073134078299

/-! ## A295208.P574855296403145259

`gcd(A000038(n), A295213(A152950(n+3)))`
-/

namespace A295208.P574855296403145259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295213 (A152950 (n + 3)).toNat)

end

end A295208.P574855296403145259

/-! ## A295208.P10044289835044035507

`A033999(2*n)*A295213(A167614(n+1))`
-/

namespace A295208.P10044289835044035507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A295213 (A167614 (n + 1)).toNat

end

end A295208.P10044289835044035507

/-!
# A295209: Number of n X 4 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 3 1's.

The programs for A295209, there is no canonical definition to state claims against.
-/

/-! ## A295209.P2952429830014670204

`A295213(A374004(n+1))`
-/

namespace A295209.P2952429830014670204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A374004 (n + 1)).toNat

end

end A295209.P2952429830014670204

/-! ## A295209.P5308952399920581903

`A295213(A141214(n)+7)`
-/

namespace A295209.P5308952399920581903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A141214 n + 7).toNat

end

end A295209.P5308952399920581903

/-! ## A295209.P9546139444919528458

`A295213(A052905(n)+9)`
-/

namespace A295209.P9546139444919528458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A052905 n + 9).toNat

end

end A295209.P9546139444919528458

/-! ## A295209.P7928016986620351521

`A295213(A055999(n)+10)`
-/

namespace A295209.P7928016986620351521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A055999 n + 10).toNat

end

end A295209.P7928016986620351521

/-! ## A295209.P6119011517522488326

`A295213(A167614(n+2)+1)`
-/

namespace A295209.P6119011517522488326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A167614 (n + 2) + 1).toNat

end

end A295209.P6119011517522488326

/-!
# A295210: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 3 1s.

The programs for A295210, there is no canonical definition to state claims against.
-/

/-! ## A295210.P11459458163359340167

`A295213(A374005(n+1))`
-/

namespace A295210.P11459458163359340167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A374005 (n + 1)).toNat

end

end A295210.P11459458163359340167

/-! ## A295210.P13083132034744191668

`A295213(A167499(n+3))`
-/

namespace A295210.P13083132034744191668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A167499 (n + 3)).toNat

end

end A295210.P13083132034744191668

/-! ## A295210.P18266759023572745375

`A295213(A056000(n)+15)`
-/

namespace A295210.P18266759023572745375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A056000 n + 15).toNat

end

end A295210.P18266759023572745375

/-! ## A295210.P12639246571966635571

`A295213(eq[6, A135223(n+1)])`
-/

namespace A295210.P12639246571966635571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295210.P12639246571966635571

/-! ## A295210.P10609719598979352235

`A295213(A046691(n+3))`
-/

namespace A295210.P10609719598979352235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A046691 (n + 3)).toNat

end

end A295210.P10609719598979352235

/-!
# A295211: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 3 1s.

The programs for A295211, there is no canonical definition to state claims against.
-/

/-! ## A295211.P6703410412011266185

`A295213(A374007(n+1))`
-/

namespace A295211.P6703410412011266185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A374007 (n + 1)).toNat

end

end A295211.P6703410412011266185

/-! ## A295211.P1807330873366353174

`A295213(eq[6, A130270(n+1)])`
-/

namespace A295211.P1807330873366353174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295211.P1807330873366353174

/-! ## A295211.P13109987682485911761

`A295213(eq[7, A131818(n+1)])`
-/

namespace A295211.P13109987682485911761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295211.P13109987682485911761

/-! ## A295211.P9984211991274056372

`A295213(A052905(n+3))`
-/

namespace A295211.P9984211991274056372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A052905 (n + 3)).toNat

end

end A295211.P9984211991274056372

/-! ## A295211.P1565727558429651646

`A295213(A056119(n)+16)`
-/

namespace A295211.P1565727558429651646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A056119 n + 16).toNat

end

end A295211.P1565727558429651646

/-!
# A295212: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 3 1s.

The programs for A295212, there is no canonical definition to state claims against.
-/

/-! ## A295212.P12308888019330146121

`A295213(A374008(n+1))`
-/

namespace A295212.P12308888019330146121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A374008 (n + 1)).toNat

end

end A295212.P12308888019330146121

/-! ## A295212.P6524706435547671651

`A295213(A056119(n)+28)`
-/

namespace A295212.P6524706435547671651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A056119 n + 28).toNat

end

end A295212.P6524706435547671651

/-! ## A295212.P8062891701409847182

`A295213(A167614(n+5)+4)`
-/

namespace A295212.P8062891701409847182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A167614 (n + 5) + 4).toNat

end

end A295212.P8062891701409847182

/-! ## A295212.P9056953800838261804

`A295213(A046691(n+4)+11)`
-/

namespace A295212.P9056953800838261804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (A046691 (n + 4) + 11).toNat

end

end A295212.P9056953800838261804

/-! ## A295212.P4499962716860568222

`A295213(eq[8, A131818(n+1)])`
-/

namespace A295212.P4499962716860568222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295212.P4499962716860568222

/-!
# A295213: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 3 1s.

The programs for A295213, there is no canonical definition to state claims against.
-/

/-! ## A295213.P9925738434624475286

`ceil(sqrt(A128592(n)))%A121502(n+1)`
-/

namespace A295213.P9925738434624475286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A128592 n : ℝ)⌉ (A121502 (n + 1))

end

end A295213.P9925738434624475286

/-! ## A295213.P6374494577042325755

`A008621(A213257(A146767(n))+2)`
-/

namespace A295213.P6374494577042325755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A213257 (A146767 n).toNat + 2).toNat

end

end A295213.P6374494577042325755

/-! ## A295213.P7782943265042006675

`A003059(A128592(n)^∑[A151722(n)])`
-/

namespace A295213.P7782943265042006675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (SequenceMachineLib.roundAway ((A128592 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A295213.P7782943265042006675

/-! ## A295213.P5514964408473241582

`A003059(A128592(n))%A121502(n+1)`
-/

namespace A295213.P5514964408473241582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003059 (A128592 n).toNat) (A121502 (n + 1))

end

end A295213.P5514964408473241582

/-! ## A295213.P9782950746299332142

`A003059(A128592(n))^A000124(A151722(n+1))`
-/

namespace A295213.P9782950746299332142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003059 (A128592 n).toNat : ℚ) ^ (A000124 (A151722 (n + 1)).toNat : ℤ)

end

end A295213.P9782950746299332142

/-!
# A295214: Array T(m,n) read by antidiagonals: number of m X n rectangular patterns of precisely half black squares and half white squares that are tilable with black and white colored dominoes, for m >= 1, n >= 1.

The programs for A295214, there is no canonical definition to state claims against.
-/

/-! ## A295214.P8171185470399959898

`A295215(n+1)+A295216(n+1)`
-/

namespace A295214.P8171185470399959898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295215 (n + 1) + A295216 (n + 1)

end

end A295214.P8171185470399959898

/-!
# A295215: Array T(m,n) read by antidiagonals: number of m X n rectangular patterns of precisely half black squares and half white squares that are unambiguously tilable with black and white colored dominoes, for m >= 1, n >= 1.

The programs for A295215, there is no canonical definition to state claims against.
-/

/-! ## A295215.P10043637481175684439

`A295214(n+1)-A295216(n+1)`
-/

namespace A295215.P10043637481175684439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295214 (n + 1) - A295216 (n + 1)

end

end A295215.P10043637481175684439

/-! ## A295215.P5166463158312925368

`A221408(n+1)-and(86, A256910(A173917(n)))`
-/

namespace A295215.P5166463158312925368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (n + 1) - Int.land 86 (A256910 (A173917 n).toNat)

end

end A295215.P5166463158312925368

/-! ## A295215.P12863796574691392189

`A295214(n+1)-and(86, A256910(A173917(n)))`
-/

namespace A295215.P12863796574691392189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295214 (n + 1) - Int.land 86 (A256910 (A173917 n).toNat)

end

end A295215.P12863796574691392189

/-! ## A295215.P82752492813228711

`A056926((A221408(n+1)-A295216(n+1))²)`
-/

namespace A295215.P82752492813228711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((A221408 (n + 1) - A295216 (n + 1)) ^ 2).toNat

end

end A295215.P82752492813228711

/-! ## A295215.P2246084855549719567

`A221408(n+1)-2*A122083(A001285(n)*A174411(n))`
-/

namespace A295215.P2246084855549719567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (n + 1) - 2 * A122083 (A001285 n * A174411 n).toNat

end

end A295215.P2246084855549719567

/-!
# A295216: Array T(m,n) read by antidiagonals: number of m X n rectangular patterns of precisely half black squares and half white squares that are ambiguously tilable with black and white colored dominoes, for m >= 1, n >= 1.

The programs for A295216, there is no canonical definition to state claims against.
-/

/-! ## A295216.P12421533366996109541

`A295214(n+1)-A295215(n+1)`
-/

namespace A295216.P12421533366996109541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295214 (n + 1) - A295215 (n + 1)

end

end A295216.P12421533366996109541

/-! ## A295216.P9390925837314673526

`and(86, A256910(A173917(n)))`
-/

namespace A295216.P9390925837314673526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 86 (A256910 (A173917 n).toNat)

end

end A295216.P9390925837314673526

/-! ## A295216.P13315089335979983689

`A014963(A003242(A338934(n)))-1`
-/

namespace A295216.P13315089335979983689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003242 (A338934 n).toNat).toNat - 1

end

end A295216.P13315089335979983689

/-! ## A295216.P6027443504291560045

`2*A122083(A001285(n)*A174411(n))`
-/

namespace A295216.P6027443504291560045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122083 (A001285 n * A174411 n).toNat

end

end A295216.P6027443504291560045

/-! ## A295216.P12708590571546634869

`A195323(A345899(n+2))%A303888(n+1)`
-/

namespace A295216.P12708590571546634869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195323 (A345899 (n + 2)).toNat) (A303888 (n + 1))

end

end A295216.P12708590571546634869

/-!
# A295218: Number of partitions of 2*n-1 into four squares.

The programs for A295218, there is no canonical definition to state claims against.
-/

/-! ## A295218.P11324459888094637276

`A002635(Δ[n²])`
-/

namespace A295218.P11324459888094637276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A295218.P11324459888094637276

/-! ## A295218.P4892248825850602838

`or(char[1], A002635(2*n+1))`
-/

namespace A295218.P4892248825850602838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002635 (2 * n + 1))

end

end A295218.P4892248825850602838

/-! ## A295218.P1267297160394265417

`A000027(A002635(1+2*n))`
-/

namespace A295218.P1267297160394265417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002635 (1 + 2 * n)).toNat

end

end A295218.P1267297160394265417

/-! ## A295218.P3092719267194918725

`A004526(2*A002635(2*n+1))`
-/

namespace A295218.P3092719267194918725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A002635 (2 * n + 1)).toNat

end

end A295218.P3092719267194918725

/-! ## A295218.P6483031263670425885

`A014682(2*A002635(2*n+1))`
-/

namespace A295218.P6483031263670425885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A002635 (2 * n + 1)).toNat

end

end A295218.P6483031263670425885

/-! ## A295218.P9934596950149263844

`A026741(2*A002635(2*n+1))`
-/

namespace A295218.P9934596950149263844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A002635 (2 * n + 1)).toNat

end

end A295218.P9934596950149263844

/-! ## A295218.P18003744915173890308

`A110654(2*A002635(2*n+1))`
-/

namespace A295218.P18003744915173890308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A002635 (2 * n + 1)).toNat

end

end A295218.P18003744915173890308

/-! ## A295218.P5606389554089705736

`A166514(2*A002635(2*n+1))`
-/

namespace A295218.P5606389554089705736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (2 * A002635 (2 * n + 1)).toNat

end

end A295218.P5606389554089705736

/-! ## A295218.P6009365827354794350

`A273943(2*A002635(2*n+1))`
-/

namespace A295218.P6009365827354794350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * A002635 (2 * n + 1)).toNat

end

end A295218.P6009365827354794350

/-! ## A295218.P16688509772294349518

`A002635(2*n+1)*A059841(2*n)`
-/

namespace A295218.P16688509772294349518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (2 * n + 1) * A059841 (2 * n)

end

end A295218.P16688509772294349518

/-! ## A295218.P8226714016762774174

`A025428(2*n+1)+A000164(2*n+1)`
-/

namespace A295218.P8226714016762774174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (2 * n + 1) + A000164 (2 * n + 1)

end

end A295218.P8226714016762774174

/-! ## A295218.P15106076706664690428

`A000174(2*n+1)-A025429(2*n+1)`
-/

namespace A295218.P15106076706664690428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (2 * n + 1) - A025429 (2 * n + 1)

end

end A295218.P15106076706664690428

/-! ## A295218.P15701539508309637239

`(A029579(2*n)-n)*A002635(2*n+1)`
-/

namespace A295218.P15701539508309637239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029579 (2 * n) - (n : ℤ)) * A002635 (2 * n + 1)

end

end A295218.P15701539508309637239

/-! ## A295218.P15481169874018139811

`A000174(A295159(A002635(n+1+n)))`
-/

namespace A295218.P15481169874018139811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A295159 (A002635 (n + 1 + n)).toNat).toNat

end

end A295218.P15481169874018139811

/-! ## A295218.P17724752237743038440

`A002635(2*n+1)*A002635(Δ[A003623(n+2)])`
-/

namespace A295218.P17724752237743038440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (2 * n + 1) * A002635 (f1 (n + 1) - f1 n).toNat

end

end A295218.P17724752237743038440

/-! ## A295218.P17600858731618810367

`A002635(2*n+1)+A079998(n)*A079998(n+1)`
-/

namespace A295218.P17600858731618810367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (2 * n + 1) + A079998 n * A079998 (n + 1)

end

end A295218.P17600858731618810367

/-! ## A295218.P16620985625938593263

`A000161(2*n+1)+A025428(2*n+1)+A025427(2*n+1)`
-/

namespace A295218.P16620985625938593263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (2 * n + 1) + (A025428 (2 * n + 1) + A025427 (2 * n + 1))

end

end A295218.P16620985625938593263

/-! ## A295218.P14115615636563824205

`A002635(n+1+n)+A000161(A004215(n+1))`
-/

namespace A295218.P14115615636563824205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (n + 1 + n) + A000161 (A004215 (n + 1)).toNat

end

end A295218.P14115615636563824205

/-! ## A295218.P11685804888786730383

`A072401(A002635(n+1)²)+A002635(2*n+1)`
-/

namespace A295218.P11685804888786730383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (A002635 (n + 1) ^ 2).toNat + A002635 (2 * n + 1)

end

end A295218.P11685804888786730383

/-!
# A295220: a(n) = Sum_{i=1..floor(n/2)} floor((n+i)/i) - floor((n-i-1)/i).

The programs for A295220, the canonical program `A295220.P11121298602392157251` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295220 has offset 1).

The definition of A295220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor((n+1)/2)-1, floor((n+1+#+1)/(#+1))-floor((n+1-(#+1)-1)/(#+1))]` (program `A295220.P11121298602392157251`, by `A295220.P11121298602392157251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295220.P11121298602392157251

`∑{#}[floor((n+1)/2)-1, floor((n+1+#+1)/(#+1))-floor((n+1-(#+1)-1)/(#+1))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295220

/-- `∑{#}[floor((n+1)/2)-1, floor((n+1+#+1)/(#+1))-floor((n+1-(#+1)-1)/(#+1))]` -/
def P11121298602392157251.Spec : Prop :=
  ∀ n, P11121298602392157251.a n = A295220 (n + 1)

theorem P11121298602392157251.correct : P11121298602392157251.Spec := by
  intro n
  simp only [A295220, Nat.add_sub_cancel]

end A295220

/-! ## A295220.P11745955707613878228

`∑{d}[n+1, C(#, C(2, #))]+n`
-/

namespace A295220.P11745955707613878228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d (Nat.choose 2 d) + n

end

end A295220.P11745955707613878228

namespace A295220

/-- `∑{d}[n+1, C(#, C(2, #))]+n` -/
def P11745955707613878228.Spec : Prop :=
  ∀ n, (P11745955707613878228.a n : ℤ) = A295220 (n + 1)

end A295220

/-! ## A295220.P1621076454173055761

`∑{d}[n+1, dr(10%#²)]+n`
-/

namespace A295220.P1621076454173055761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.digitalRoot ((10 % d ^ 2 : ℕ) : ℤ) + n

end

end A295220.P1621076454173055761

namespace A295220

/-- `∑{d}[n+1, dr(10%#²)]+n` -/
def P1621076454173055761.Spec : Prop :=
  ∀ n, (P1621076454173055761.a n : ℤ) = A295220 (n + 1)

end A295220

/-! ## A295220.P7942722382350996160

`∑{d}[n+1, ceil(acot(#-2))]+n`
-/

namespace A295220.P7942722382350996160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot ((d : ℤ) - 2 : ℝ)⌉ + (n : ℤ)

end

end A295220.P7942722382350996160

namespace A295220

/-- `∑{d}[n+1, ceil(acot(#-2))]+n` -/
def P7942722382350996160.Spec : Prop :=
  ∀ n, P7942722382350996160.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P4066176325169842639

`∏{e}[n+1, #+1]-or(1, -n)`
-/

namespace A295220.P4066176325169842639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - Int.lor 1 (-(n : ℤ))

end

end A295220.P4066176325169842639

namespace A295220

/-- `∏{e}[n+1, #+1]-or(1, -n)` -/
def P4066176325169842639.Spec : Prop :=
  ∀ n, P4066176325169842639.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P12400003003795639613

`∑{d}[n+1, ceil(3/#)]+n-3`
-/

namespace A295220.P12400003003795639613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈3 / (d : ℚ)⌉ + ((n : ℤ) - 3)

end

end A295220.P12400003003795639613

namespace A295220

/-- `∑{d}[n+1, ceil(3/#)]+n-3` -/
def P12400003003795639613.Spec : Prop :=
  ∀ n, P12400003003795639613.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P8966443263285413135

`A062249(n+1)-gcd(2, n)`
-/

namespace A295220.P8966443263285413135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - (Nat.gcd 2 n : ℤ)

end

end A295220.P8966443263285413135

namespace A295220

/-- `A062249(n+1)-gcd(2, n)` -/
def P8966443263285413135.Spec : Prop :=
  ∀ n, P8966443263285413135.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P2660916840715436923

`A000005(n+1)-or(1, -n)`
-/

namespace A295220.P2660916840715436923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - Int.lor 1 (-(n : ℤ))

end

end A295220.P2660916840715436923

namespace A295220

/-- `A000005(n+1)-or(1, -n)` -/
def P2660916840715436923.Spec : Prop :=
  ∀ n, P2660916840715436923.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P8845711457219013698

`n-1+A000005(abs(xor(n, -1)))+n%2`
-/

namespace A295220.P8845711457219013698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A000005 |Int.xor (n : ℤ) (-1)|.toNat + ((n % 2 : ℕ) : ℤ))

end

end A295220.P8845711457219013698

namespace A295220

/-- `n-1+A000005(abs(xor(n, -1)))+n%2` -/
def P8845711457219013698.Spec : Prop :=
  ∀ n, P8845711457219013698.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P4766853944182819757

`A088922(n+1)+A030451(n)`
-/

namespace A295220.P4766853944182819757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) + A030451 n

end

end A295220.P4766853944182819757

namespace A295220

/-- `A088922(n+1)+A030451(n)` -/
def P4766853944182819757.Spec : Prop :=
  ∀ n, P4766853944182819757.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P6766318836064145616

`A014601(n)-A049820(n+1)`
-/

namespace A295220.P6766318836064145616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n - A049820 (n + 1)

end

end A295220.P6766318836064145616

namespace A295220

/-- `A014601(n)-A049820(n+1)` -/
def P6766318836064145616.Spec : Prop :=
  ∀ n, P6766318836064145616.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P11012229402710816486

`A076984(n+1)-A114285(n)`
-/

namespace A295220.P11012229402710816486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - A114285 n

end

end A295220.P11012229402710816486

namespace A295220

/-- `A076984(n+1)-A114285(n)` -/
def P11012229402710816486.Spec : Prop :=
  ∀ n, P11012229402710816486.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P821286018084032491

`A158907(n+1)-A059841(n)`
-/

namespace A295220.P821286018084032491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) - A059841 n

end

end A295220.P821286018084032491

namespace A295220

/-- `A158907(n+1)-A059841(n)` -/
def P821286018084032491.Spec : Prop :=
  ∀ n, P821286018084032491.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P3914934457846068830

`A088922(n+1)+A052938(n)-1`
-/

namespace A295220.P3914934457846068830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) + (A052938 n - 1)

end

end A295220.P3914934457846068830

namespace A295220

/-- `A088922(n+1)+A052938(n)-1` -/
def P3914934457846068830.Spec : Prop :=
  ∀ n, P3914934457846068830.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P2384353395603444297

`A007310(n+1)-A286002(n+1)`
-/

namespace A295220.P2384353395603444297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) - A286002 (n + 1)

end

end A295220.P2384353395603444297

namespace A295220

/-- `A007310(n+1)-A286002(n+1)` -/
def P2384353395603444297.Spec : Prop :=
  ∀ n, P2384353395603444297.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P676778891614800347

`A000005(n+1)+n-A059841(n)`
-/

namespace A295220.P676778891614800347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + ((n : ℤ) - A059841 n)

end

end A295220.P676778891614800347

namespace A295220

/-- `A000005(n+1)+n-A059841(n)` -/
def P676778891614800347.Spec : Prop :=
  ∀ n, P676778891614800347.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P3992506633017083883

`A001511(n+1)*A091954(n+1)+n`
-/

namespace A295220.P3992506633017083883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A091954 (n + 1) + (n : ℤ)

end

end A295220.P3992506633017083883

namespace A295220

/-- `A001511(n+1)*A091954(n+1)+n` -/
def P3992506633017083883.Spec : Prop :=
  ∀ n, P3992506633017083883.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P12780497108968112510

`A052928(n+1)+A032741(n+1)`
-/

namespace A295220.P12780497108968112510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (n + 1) + A032741 (n + 1)

end

end A295220.P12780497108968112510

namespace A295220

/-- `A052928(n+1)+A032741(n+1)` -/
def P12780497108968112510.Spec : Prop :=
  ∀ n, P12780497108968112510.a n = A295220 (n + 1)

end A295220

/-! ## A295220.P17670509276813449983

`A062249(n+1)+A023645(n+2)-A000005(n+2)`
-/

namespace A295220.P17670509276813449983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) + (A023645 (n + 2) - A000005 (n + 2))

end

end A295220.P17670509276813449983

namespace A295220

/-- `A062249(n+1)+A023645(n+2)-A000005(n+2)` -/
def P17670509276813449983.Spec : Prop :=
  ∀ n, P17670509276813449983.a n = A295220 (n + 1)

end A295220

/-!
# A295222: Array read by antidiagonals: T(n,k) is the number of nonequivalent dissections of a polygon into n k-gons by nonintersecting diagonals rooted at a cell up to rotation (k >= 3).

The programs for A295222, there is no canonical definition to state claims against.
-/

/-! ## A295222.P8190625102248173383

`2*A295259(n+1)-A370060(n+1)`
-/

namespace A295222.P8190625102248173383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295259 (n + 1) - A370060 (n + 1)

end

end A295222.P8190625102248173383

/-! ## A295222.P9106413527275420403

`A088314(A139601(n*A278657(n)))`
-/

namespace A295222.P9106413527275420403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 (A139601 ((n : ℤ) * A278657 n).toNat).toNat

end

end A295222.P9106413527275420403

/-! ## A295222.P11783045327000601748

`A088314(A139601(n)^A278657(n))`
-/

namespace A295222.P11783045327000601748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 (SequenceMachineLib.roundAway ((A139601 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A295222.P11783045327000601748

/-!
# A295223: Number of tilings of the n X n torus, using diagonal lines to connect the gridpoints.

The programs for A295223, there is no canonical definition to state claims against.
-/

/-! ## A295223.P1214629437349832288

`and(A157358(A000085(n+1)), A367533(n+1))`
-/

namespace A295223.P1214629437349832288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157358 (A000085 (n + 1)).toNat) (A367533 (n + 1))

end

end A295223.P1214629437349832288

/-!
# A295224: Array read by antidiagonals: T(n,k) = number of nonequivalent dissections of a polygon into n k-gons by nonintersecting diagonals up to rotation (k >= 3).

The programs for A295224, there is no canonical definition to state claims against.
-/

/-! ## A295224.P16545487132721896339

`2*A295260(n+1)-A370062(n+1)`
-/

namespace A295224.P16545487132721896339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295260 (n + 1) - A370062 (n + 1)

end

end A295224.P16545487132721896339

/-! ## A295224.P17246568231850593204

`A343378(A295222(n+1)-A093955(3*n+2))`
-/

namespace A295224.P17246568231850593204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A295222 (n + 1) - A093955 (3 * n + 2)).toNat

end

end A295224.P17246568231850593204

/-!
# A295225: Sum of antidiagonals of triangle of 2-Stirling numbers of the first kind.

The programs for A295225, there is no canonical definition to state claims against.
-/

/-! ## A295225.P8066799657019627883

`A343579(n+1)-a(n-A057427(n))` with `a(0)=0, a(1)=0`
-/

namespace A295225.P8066799657019627883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A343579 (n + 1) - a ((n : ℤ) - A057427 n).toNat

end

end A295225.P8066799657019627883

/-! ## A295225.P3278800496217346806

`A131190(a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A295225.P3278800496217346806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A131190 (a (n - 1)).toNat

end

end A295225.P3278800496217346806

/-! ## A295225.P2436415537177827200

`A002375(A004212(n))`
-/

namespace A295225.P2436415537177827200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A004212 n).toNat

end

end A295225.P2436415537177827200

/-!
# A295226: Sum of antidiagonals of triangle of 3-Stirling numbers of the first kind.

The programs for A295226, there is no canonical definition to state claims against.
-/

/-! ## A295226.P15879875680193426577

`A054897(4*A297204(n))`
-/

namespace A295226.P15879875680193426577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (4 * A297204 n).toNat

end

end A295226.P15879875680193426577

/-! ## A295226.P15329387555619665151

`A194698(∑[A000571(n)]²)`
-/

namespace A295226.P15329387555619665151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A295226.P15329387555619665151

/-! ## A295226.P8310441325551432011

`A194698(∑[A035053(n)]²)`
-/

namespace A295226.P8310441325551432011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A295226.P8310441325551432011

/-! ## A295226.P12271791644648176908

`A194698(∑[A237770(n)]²)`
-/

namespace A295226.P12271791644648176908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A295226.P12271791644648176908

/-!
# A295227: a(n) = sum_{k=0,...,[n/2]} s(n-k,k)^2, s = A048994, Stirling numbers of the first kind.

The programs for A295227, there is no canonical definition to state claims against.
-/

/-! ## A295227.P13968731898611723330

`A008280(n)+A002265(A323502(n))`
-/

namespace A295227.P13968731898611723330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n + A002265 (A323502 n).toNat

end

end A295227.P13968731898611723330

/-! ## A295227.P15248396687058156189

`or(A002265(A323502(n)), A323480(n+1))`
-/

namespace A295227.P15248396687058156189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002265 (A323502 n).toNat) (A323480 (n + 1))

end

end A295227.P15248396687058156189

/-!
# A295228: a(n) = sum_{k=0,...,[n/2]} |s(n-k,k)|^3, s = A048994, Stirling numbers of the first kind.

The programs for A295228, there is no canonical definition to state claims against.
-/

/-! ## A295228.P1496857660362445896

`A366738(xor(n, a(n-1)))` with `a(0)=1`
-/

namespace A295228.P1496857660362445896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366738 (Int.xor (n : ℤ) (a (n - 1))).toNat

end

end A295228.P1496857660362445896

/-! ## A295228.P13114432174557622130

`A319152(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A295228.P13114432174557622130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A319152 (a (n - 1)).toNat

end

end A295228.P13114432174557622130

/-!
# A295230: Numbers n such that there are precisely 2 groups of orders n and n + 1.

The programs for A295230, there is no canonical definition to state claims against.
-/

/-! ## A295230.P2853105199028589805

`∩[A054395(n+1)-1, A054395(n+1)]`
-/

namespace A295230.P2853105199028589805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295230.P2853105199028589805

/-! ## A295230.P140999287178525865

`A054395(eq[1, A054395(n+2)-A054395(n+1)]+1)`
-/

namespace A295230.P140999287178525865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 2) - A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A295230.P140999287178525865

/-! ## A295230.P8256658506538254696

`A054395(eq[1, A054395(n+2)%A054395(n+1)]+1)`
-/

namespace A295230.P8256658506538254696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054395 (n + 2)) (A054395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A295230.P8256658506538254696

/-! ## A295230.P13641577138282314021

`∩[A054395(n+1), A023443(A054395(n+1))]`
-/

namespace A295230.P13641577138282314021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054395 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295230.P13641577138282314021

/-! ## A295230.P8868940783653409462

`∩[A054395(n+1), A298912(n+1)]`
-/

namespace A295230.P8868940783653409462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295230.P8868940783653409462

/-!
# A295234: Expansion of Product_{k>=1} (1 - k*x^k)^(k^(k-1)).

The programs for A295234, there is no canonical definition to state claims against.
-/

/-! ## A295234.P3762883682937796585

`xor(A004198(A001653(n+1)), A292312(n))`
-/

namespace A295234.P3762883682937796585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004198 (A001653 (n + 1)).toNat) (A292312 n)

end

end A295234.P3762883682937796585

/-!
# A295235: Numbers k such that the positions of the ones in the binary representation of k are in arithmetic progression.

The programs for A295235, there is no canonical definition to state claims against.
-/

/-! ## A295235.P10755375297918558288

`∩[A057890(n+1), A333762(n+1)]`
-/

namespace A295235.P10755375297918558288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295235.P10755375297918558288

/-! ## A295235.P6717853960906523030

`eq[A326302(n), A333692(n)]`
-/

namespace A295235.P6717853960906523030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P6717853960906523030

/-! ## A295235.P10644710343944527642

`eq[n, A326302(A333692(n))]`
-/

namespace A295235.P10644710343944527642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 (A333692 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295235.P10644710343944527642

/-! ## A295235.P4423342545334960815

`eq[A030101(n), A348363(n)]`
-/

namespace A295235.P4423342545334960815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P4423342545334960815

/-! ## A295235.P17445587397807234990

`eq[A038573(n), A356354(n)]`
-/

namespace A295235.P17445587397807234990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P17445587397807234990

/-! ## A295235.P17055331543787293256

`eq[n, A326302(A333693(n))]`
-/

namespace A295235.P17055331543787293256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 (A333693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295235.P17055331543787293256

/-! ## A295235.P14062298288092863551

`eq[A325401(n), A348363(n)]`
-/

namespace A295235.P14062298288092863551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P14062298288092863551

/-! ## A295235.P5308835505125020893

`eq[A330717(n), A348363(n)]`
-/

namespace A295235.P5308835505125020893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P5308835505125020893

/-! ## A295235.P13647690767291987128

`eq[A331471(n), A348363(n)]`
-/

namespace A295235.P13647690767291987128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P13647690767291987128

/-! ## A295235.P16242698929465024721

`eq[A331804(n), A348363(n)]`
-/

namespace A295235.P16242698929465024721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P16242698929465024721

/-!
# A295236: Hemi-imperfect numbers: numbers such that the denominator of k/A206369(k) is equal to 2.

The programs for A295236, there is no canonical definition to state claims against.
-/

/-! ## A295236.P7916317322035109785

`eq[2, A294649(A028310(n))]`
-/

namespace A295236.P7916317322035109785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295236.P7916317322035109785

/-! ## A295236.P10427997179019632181

`A020725(eq[2, A294649(n+1)])`
-/

namespace A295236.P10427997179019632181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295236.P10427997179019632181

/-! ## A295236.P4329842398495890971

`A065475(eq[2, A294649(n+1)])`
-/

namespace A295236.P4329842398495890971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295236.P4329842398495890971

/-!
# A295237: Expansion of e.g.f. csc(x)*(1 - sqrt(1 - 4*sin(x)))/2.

The programs for A295237, there is no canonical definition to state claims against.
-/

/-! ## A295237.P2451406033579085067

`A196007(A023998(n))+A006882(n)`
-/

namespace A295237.P2451406033579085067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196007 (A023998 n).toNat + A006882 n

end

end A295237.P2451406033579085067

/-!
# A295238: Expansion of e.g.f. 2/(1 + sqrt(1 - 4*x*exp(x))).

The programs for A295238, the canonical program `A295238.P14459600459852190087` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295238 has offset 0).

The definition of A295238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295238.P14459600459852190087

`n!*∑{#}[n, #^(n-#)*C(2*#+1, #)/((2*#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295238

/-- `n!*∑{#}[n, #^(n-#)*C(2*#+1, #)/((2*#+1)*(n-#)!)]` -/
def P14459600459852190087.Spec : Prop :=
  ∀ n, P14459600459852190087.a n = (A295238 n : ℚ)

end A295238

/-! ## A295238.P14384483243998231305

`n!*∑{#}[n, #^(n-#)*A000108(#)/(n-#)!]`
-/

namespace A295238.P14384483243998231305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000108 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A295238.P14384483243998231305

namespace A295238

/-- `n!*∑{#}[n, #^(n-#)*A000108(#)/(n-#)!]` -/
def P14384483243998231305.Spec : Prop :=
  ∀ n, P14384483243998231305.a n = (A295238 n : ℚ)

end A295238

/-!
# A295240: Expansion of e.g.f. 1/(1 - x*exp(x)/(1 - 2*x*exp(x)/(1 - 3*x*exp(x)/(1 - 4*x*exp(x)/(1 - ...))))), a continued fraction.

The programs for A295240, there is no canonical definition to state claims against.
-/

/-! ## A295240.P9479172760328255875

`A335192(A365772(n)+2)`
-/

namespace A295240.P9479172760328255875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335192 (A365772 n + 2).toNat

end

end A295240.P9479172760328255875

/-!
# A295241: Expansion of e.g.f. 1/(1 - x*exp(x)/(1 - x*exp(2*x)/(1 - x*exp(3*x)/(1 - x*exp(4*x)/(1 - ...))))), a continued fraction.

The programs for A295241, there is no canonical definition to state claims against.
-/

/-! ## A295241.P12034143658531870733

`A039129(n!²+1)`
-/

namespace A295241.P12034143658531870733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (Nat.factorial n ^ 2 + 1)

end

end A295241.P12034143658531870733

/-!
# A295242: Expansion of e.g.f. 1/(1 - x*exp(x)/(1 - 2*x*exp(2*x)/(1 - 3*x*exp(3*x)/(1 - 4*x*exp(4*x)/(1 - ...))))), a continued fraction.

The programs for A295242, there is no canonical definition to state claims against.
-/

/-! ## A295242.P8032066342002202344

`A128552(∑{e}[A098695(n), #])`
-/

namespace A295242.P8032066342002202344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128552 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A295242.P8032066342002202344

/-!
# A295243: Sums of two numbers that are both consecutive and squarefree.

The programs for A295243, the canonical program `A295243.P15372038022055432916` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295243 has offset 1).

The definition of A295243 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295243.P15372038022055432916

`2*A007674(n+1)+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295243

/-- `2*A007674(n+1)+1` -/
def P15372038022055432916.Spec : Prop :=
  ∀ n, P15372038022055432916.a n = A295243 (n + 1)

theorem P15372038022055432916.correct : P15372038022055432916.Spec := by
  intro n
  simp only [A295243, Nat.add_sub_cancel]

end A295243

/-! ## A295243.P5966351669730398455

`1+2*A007674(n+1)`
-/

namespace A295243.P5966351669730398455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A007674 (n + 1)

end

end A295243.P5966351669730398455

namespace A295243

/-- `1+2*A007674(n+1)` -/
def P5966351669730398455.Spec : Prop :=
  ∀ n, P5966351669730398455.a n = A295243 (n + 1)

theorem P5966351669730398455.correct : P5966351669730398455.Spec := by
  intro n
  simp only [A295243, Nat.add_sub_cancel, A295243.P5966351669730398455.a, A295243.P15372038022055432916.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A295243

/-! ## A295243.P5569638693223651003

`2*floor(sqrt(A229882(n+1)))+1`
-/

namespace A295243.P5569638693223651003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A229882 (n + 1)) + 1

end

end A295243.P5569638693223651003

namespace A295243

/-- `2*floor(sqrt(A229882(n+1)))+1` -/
def P5569638693223651003.Spec : Prop :=
  ∀ n, P5569638693223651003.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P9265698775861373006

`record[2*A007947(A007947(n+1)+1)]-1`
-/

namespace A295243.P9265698775861373006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (A007947 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A295243.P9265698775861373006

namespace A295243

/-- `record[2*A007947(A007947(n+1)+1)]-1` -/
def P9265698775861373006.Spec : Prop :=
  ∀ n, P9265698775861373006.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P15610349186137737511

`A007947(A007674(n+1)+1)+A007674(n+1)`
-/

namespace A295243.P15610349186137737511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007674 (n + 1) + 1).toNat + A007674 (n + 1)

end

end A295243.P15610349186137737511

namespace A295243

/-- `A007947(A007674(n+1)+1)+A007674(n+1)` -/
def P15610349186137737511.Spec : Prop :=
  ∀ n, P15610349186137737511.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P12365988402785499322

`A007674(n+1)+A229882(n+1)/A007674(n+1)`
-/

namespace A295243.P12365988402785499322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007674 (n + 1) : ℚ) + (A229882 (n + 1) : ℚ) / (A007674 (n + 1) : ℚ)

end

end A295243.P12365988402785499322

namespace A295243

/-- `A007674(n+1)+A229882(n+1)/A007674(n+1)` -/
def P12365988402785499322.Spec : Prop :=
  ∀ n, P12365988402785499322.a n = (A295243 (n + 1) : ℚ)

end A295243

/-! ## A295243.P6940796954788674212

`A240603(A375927(n+1))`
-/

namespace A295243.P6940796954788674212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (A375927 (n + 1)).toNat

end

end A295243.P6940796954788674212

namespace A295243

/-- `A240603(A375927(n+1))` -/
def P6940796954788674212.Spec : Prop :=
  ∀ n, P6940796954788674212.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P13544997490623032488

`∩[A047621(n+1), A240603(n+1)]`
-/

namespace A295243.P13544997490623032488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295243.P13544997490623032488

namespace A295243

/-- `∩[A047621(n+1), A240603(n+1)]` -/
def P13544997490623032488.Spec : Prop :=
  ∀ n, (P13544997490623032488.a n : ℤ) = A295243 (n + 1)

end A295243

/-! ## A295243.P2484204872224908056

`2*eq[A105570(n), A126849(n+1)]+1`
-/

namespace A295243.P2484204872224908056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A295243.P2484204872224908056

namespace A295243

/-- `2*eq[A105570(n), A126849(n+1)]+1` -/
def P2484204872224908056.Spec : Prop :=
  ∀ n, (P2484204872224908056.a n : ℤ) = A295243 (n + 1)

end A295243

/-! ## A295243.P849739221541578946

`A007674(n+1)+A008966(A049097(n+1))+A007674(n+1)`
-/

namespace A295243.P849739221541578946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1) + (A008966 (A049097 (n + 1)).toNat + A007674 (n + 1))

end

end A295243.P849739221541578946

namespace A295243

/-- `A007674(n+1)+A008966(A049097(n+1))+A007674(n+1)` -/
def P849739221541578946.Spec : Prop :=
  ∀ n, P849739221541578946.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P4839750274283631560

`record[2*A190846(n+1)+1]`
-/

namespace A295243.P4839750274283631560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190846 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295243.P4839750274283631560

namespace A295243

/-- `record[2*A190846(n+1)+1]` -/
def P4839750274283631560.Spec : Prop :=
  ∀ n, P4839750274283631560.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P3793450253892796567

`2*record[A075424(n+2)]+3`
-/

namespace A295243.P3793450253892796567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075424 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A295243.P3793450253892796567

namespace A295243

/-- `2*record[A075424(n+2)]+3` -/
def P3793450253892796567.Spec : Prop :=
  ∀ n, P3793450253892796567.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P16608349609863779717

`2*record[A007947(∏{p}[n, #]+1)]-1`
-/

namespace A295243.P16608349609863779717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∏ p ∈ Nat.primeFactors (f2 n), p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A295243.P16608349609863779717

namespace A295243

/-- `2*record[A007947(∏{p}[n, #]+1)]-1` -/
def P16608349609863779717.Spec : Prop :=
  ∀ n, P16608349609863779717.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P10038305666354738380

`A047582(A007674(n+1))`
-/

namespace A295243.P10038305666354738380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047582 (A007674 (n + 1)).toNat

end

end A295243.P10038305666354738380

namespace A295243

/-- `A047582(A007674(n+1))` -/
def P10038305666354738380.Spec : Prop :=
  ∀ n, P10038305666354738380.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P4583810293661532979

`record[A075424(n+2)+A004443(n)+1]`
-/

namespace A295243.P4583810293661532979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075424 (n + 2) + (A004443 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295243.P4583810293661532979

namespace A295243

/-- `record[A075424(n+2)+A004443(n)+1]` -/
def P4583810293661532979.Spec : Prop :=
  ∀ n, P4583810293661532979.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P4994673616152669583

`A005408(eq[A285328(n+1), A285718(n+1)])`
-/

namespace A295243.P4994673616152669583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295243.P4994673616152669583

namespace A295243

/-- `A005408(eq[A285328(n+1), A285718(n+1)])` -/
def P4994673616152669583.Spec : Prop :=
  ∀ n, P4994673616152669583.a n = A295243 (n + 1)

end A295243

/-! ## A295243.P11063668301049872693

`eq[5, ∏{e}[(2*n)²-4, #]]`
-/

namespace A295243.P11063668301049872693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295243.P11063668301049872693

namespace A295243

/-- `eq[5, ∏{e}[(2*n)²-4, #]]` -/
def P11063668301049872693.Spec : Prop :=
  ∀ n, (P11063668301049872693.a n : ℤ) = A295243 (n + 1)

end A295243

/-!
# A295244: Expansion of Product_{k>=1} (1 + k^k*x^k)^k.

The programs for A295244, there is no canonical definition to state claims against.
-/

/-! ## A295244.P1866528593657721590

`A311410(floor((4-6/(n+1))*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A295244.P1866528593657721590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A311410 ⌊(4 - 6 / (n + 1 : ℚ)) * (a (n - 1) : ℚ)⌋.toNat

end

end A295244.P1866528593657721590

/-!
# A295245: Expansion of Product_{k>=1} 1/(1 + k^k*x^k)^k.

The programs for A295245, there is no canonical definition to state claims against.
-/

/-! ## A295245.P10813950640338638214

`A127180(n)-A127277(A133263(n))`
-/

namespace A295245.P10813950640338638214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127180 n - A127277 (A133263 n).toNat

end

end A295245.P10813950640338638214

/-!
# A295246: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1's.

The programs for A295246, there is no canonical definition to state claims against.
-/

/-! ## A295246.P137274383486686109

`A295253(∑[4*n]+1)`
-/

namespace A295246.P137274383486686109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295246.P137274383486686109

/-! ## A295246.P3153701065833802568

`record[gcd(A114327(n), A295253(n+1))]`
-/

namespace A295246.P3153701065833802568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A295253 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295246.P3153701065833802568

/-! ## A295246.P11016282583969944523

`A295253(A001844(n))+A025442(n)`
-/

namespace A295246.P11016282583969944523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A001844 n).toNat + A025442 n

end

end A295246.P11016282583969944523

/-! ## A295246.P13259871082294198318

`A295253(A001844(n))+A054900(n)`
-/

namespace A295246.P13259871082294198318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A001844 n).toNat + A054900 n

end

end A295246.P13259871082294198318

/-! ## A295246.P13605269421028829511

`A295253(A001844(n))+A008683(4*(n+1))`
-/

namespace A295246.P13605269421028829511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A295246.P13605269421028829511

/-!
# A295247: Number of n X 2 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1s.

The programs for A295247, the canonical program `A295247.P5929761002146165416` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295247 has offset 1).

The definition of A295247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295247.P12763622725507081118

`ogf((4+3x+x^2-x^3-x^4)/(1-2x-3x^2-x^3+x^5))`
-/

namespace A295247.P12763622725507081118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 1, -1, -1] [1, -2, -3, -1, 0, 1] n

end

end A295247.P12763622725507081118

namespace A295247

/-- `ogf((4+3x+x^2-x^3-x^4)/(1-2x-3x^2-x^3+x^5))` -/
def P12763622725507081118.Spec : Prop :=
  ∀ n, P12763622725507081118.a n = A295247 (n + 1)

end A295247

/-! ## A295247.P5929761002146165416

`2*a(n-1)+3*a(n-2)+a(n-3)-a(n-5)` with `a(0)=4, a(1)=11, a(2)=35, a(3)=106, a(4)=327`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295247

/-- `2*a(n-1)+3*a(n-2)+a(n-3)-a(n-5)` -/
def P5929761002146165416.Spec : Prop :=
  ∀ n, P5929761002146165416.a n = A295247 (n + 1)

theorem P5929761002146165416.correct : P5929761002146165416.Spec := by
  intro n
  simp only [A295247, Nat.add_sub_cancel]

end A295247

/-! ## A295247.P17322282289780730629

`A295253(∑[n+1]+2)`
-/

namespace A295247.P17322282289780730629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295247.P17322282289780730629

namespace A295247

/-- `A295253(∑[n+1]+2)` -/
def P17322282289780730629.Spec : Prop :=
  ∀ n, P17322282289780730629.a n = A295247 (n + 1)

end A295247

/-! ## A295247.P3572456542735255479

`A295652(∑[n+1]+2)`
-/

namespace A295247.P3572456542735255479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295247.P3572456542735255479

namespace A295247

/-- `A295652(∑[n+1]+2)` -/
def P3572456542735255479.Spec : Prop :=
  ∀ n, P3572456542735255479.a n = A295247 (n + 1)

end A295247

/-! ## A295247.P7480074249201438279

`A295652(A133263(n+1))+A076142(n+1)`
-/

namespace A295247.P7480074249201438279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A133263 (n + 1)).toNat + A076142 (n + 1)

end

end A295247.P7480074249201438279

namespace A295247

/-- `A295652(A133263(n+1))+A076142(n+1)` -/
def P7480074249201438279.Spec : Prop :=
  ∀ n, P7480074249201438279.a n = A295247 (n + 1)

end A295247

/-!
# A295248: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1s.

The programs for A295248, there is no canonical definition to state claims against.
-/

/-! ## A295248.P13895605237886386062

`A295253(∑[n+2]+4)`
-/

namespace A295248.P13895605237886386062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295248.P13895605237886386062

/-! ## A295248.P6654654261496269292

`or(floor(acot(n)), A295253(A167614(n+1)))`
-/

namespace A295248.P6654654261496269292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A295253 (A167614 (n + 1)).toNat)

end

end A295248.P6654654261496269292

/-! ## A295248.P10994513137100141241

`or(C(2, n+2), A295253(A152950(n+3)))`
-/

namespace A295248.P10994513137100141241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A295253 (A152950 (n + 3)).toNat)

end

end A295248.P10994513137100141241

/-! ## A295248.P11911899105492066333

`lcm(A213211(n), A295253(A167614(n+1)))`
-/

namespace A295248.P11911899105492066333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A213211 n) (A295253 (A167614 (n + 1)).toNat)

end

end A295248.P11911899105492066333

/-! ## A295248.P14652630998972587745

`or(A000038(n), A295253(A167614(n+1)))`
-/

namespace A295248.P14652630998972587745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A295253 (A167614 (n + 1)).toNat)

end

end A295248.P14652630998972587745

/-!
# A295249: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1s.

The programs for A295249, there is no canonical definition to state claims against.
-/

/-! ## A295249.P12835655112057700755

`A295253(A374004(n+1))`
-/

namespace A295249.P12835655112057700755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A374004 (n + 1)).toNat

end

end A295249.P12835655112057700755

/-! ## A295249.P16102646718266559129

`A295253(A052905(n)+9)`
-/

namespace A295249.P16102646718266559129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A052905 n + 9).toNat

end

end A295249.P16102646718266559129

/-! ## A295249.P4285387411957673314

`A295253(A055999(n)+10)`
-/

namespace A295249.P4285387411957673314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A055999 n + 10).toNat

end

end A295249.P4285387411957673314

/-! ## A295249.P5139627874723588079

`A295253(A167614(n+2)+1)`
-/

namespace A295249.P5139627874723588079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A167614 (n + 2) + 1).toNat

end

end A295249.P5139627874723588079

/-! ## A295249.P13128860355156622833

`A295253(Δ[A023545(n+1)-n²])`
-/

namespace A295249.P13128860355156622833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (f1 (n + 1) - f1 n).toNat

end

end A295249.P13128860355156622833

/-!
# A295250: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1s.

The programs for A295250, there is no canonical definition to state claims against.
-/

/-! ## A295250.P10766340928101429594

`A295253(A374005(n+1))`
-/

namespace A295250.P10766340928101429594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A374005 (n + 1)).toNat

end

end A295250.P10766340928101429594

/-! ## A295250.P5082133491658702185

`A295253(A167499(n+3))`
-/

namespace A295250.P5082133491658702185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A167499 (n + 3)).toNat

end

end A295250.P5082133491658702185

/-! ## A295250.P12690791102012748493

`A295253(eq[6, A131818(n+1)])`
-/

namespace A295250.P12690791102012748493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295250.P12690791102012748493

/-! ## A295250.P17854471924729407051

`A295253(A046691(n+3))`
-/

namespace A295250.P17854471924729407051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A046691 (n + 3)).toNat

end

end A295250.P17854471924729407051

/-! ## A295250.P11244940471178991395

`A295253(eq[4, A193592(n)])`
-/

namespace A295250.P11244940471178991395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295250.P11244940471178991395

/-!
# A295251: Number of n X 6 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1's.

The programs for A295251, there is no canonical definition to state claims against.
-/

/-! ## A295251.P6129745191056779316

`A295253(A374007(n+1))`
-/

namespace A295251.P6129745191056779316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A374007 (n + 1)).toNat

end

end A295251.P6129745191056779316

/-! ## A295251.P2682509605338450327

`A295253(eq[7, A131818(n+1)])`
-/

namespace A295251.P2682509605338450327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295251.P2682509605338450327

/-! ## A295251.P5248133009140790254

`A295253(A052905(n+3))`
-/

namespace A295251.P5248133009140790254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A052905 (n + 3)).toNat

end

end A295251.P5248133009140790254

/-! ## A295251.P13013396530747210568

`A295253(eq[5, A193592(n)])`
-/

namespace A295251.P13013396530747210568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295251.P13013396530747210568

/-! ## A295251.P2896810975191250031

`A295253(eq[5, A025581(n)]+1)`
-/

namespace A295251.P2896810975191250031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A295251.P2896810975191250031

/-!
# A295252: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1s.

The programs for A295252, there is no canonical definition to state claims against.
-/

/-! ## A295252.P2205894402477441298

`A295253(A374008(n+1))`
-/

namespace A295252.P2205894402477441298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A374008 (n + 1)).toNat

end

end A295252.P2205894402477441298

/-! ## A295252.P1457681430206807846

`A295253(eq[8, A131818(n+1)])`
-/

namespace A295252.P1457681430206807846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295252.P1457681430206807846

/-! ## A295252.P15772954236732021271

`A295253(A055999(n+4))`
-/

namespace A295252.P15772954236732021271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (A055999 (n + 4)).toNat

end

end A295252.P15772954236732021271

/-! ## A295252.P16860395384141151517

`A295253(eq[4, A219347(n)])`
-/

namespace A295252.P16860395384141151517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295252.P16860395384141151517

/-! ## A295252.P11477998064382052131

`A295253(eq[6, A193592(n)])`
-/

namespace A295252.P11477998064382052131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295252.P11477998064382052131

/-!
# A295253: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 3 1s.

The programs for A295253, there is no canonical definition to state claims against.
-/

/-! ## A295253.P9278686507433018017

`A295652(n+1)-A285006(A174545(n))`
-/

namespace A295253.P9278686507433018017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (n + 1) - A285006 (A174545 n).toNat

end

end A295253.P9278686507433018017

/-! ## A295253.P815563901363633214

`A295652(n+1)+A016389(A022166(n))`
-/

namespace A295253.P815563901363633214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (n + 1) + A016389 (A022166 n).toNat

end

end A295253.P815563901363633214

/-! ## A295253.P4092796997464936858

`A295652(n+1)+A016389(A027336(n))`
-/

namespace A295253.P4092796997464936858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (n + 1) + A016389 (A027336 n).toNat

end

end A295253.P4092796997464936858

/-! ## A295253.P9010726389985015592

`A295652(n+1)-A025466(A001296(n))`
-/

namespace A295253.P9010726389985015592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (n + 1) - A025466 (A001296 n).toNat

end

end A295253.P9010726389985015592

/-! ## A295253.P10708863172166384382

`A295652(n+1)-A014707(A022171(n))`
-/

namespace A295253.P10708863172166384382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (n + 1) - A014707 (A022171 n).toNat

end

end A295253.P10708863172166384382

/-!
# A295254: Expansion of e.g.f. csch(x)*(1 - sqrt(1 - 4*sinh(x)))/2.

The programs for A295254, there is no canonical definition to state claims against.
-/

/-! ## A295254.P14454005683371192621

`∑{#}[n, #!*C(2*#+1, #)/(2*#+1)*A136630(C(n+1, 2)+#)]`
-/

namespace A295254.P14454005683371192621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose (2 * k + 1) k : ℚ) / (2 * k + 1 : ℚ) * (A136630 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A295254.P14454005683371192621

/-!
# A295255: Expansion of e.g.f. 2/(1 + sqrt(1 - 4*x*cos(x))).

The programs for A295255, there is no canonical definition to state claims against.
-/

/-! ## A295255.P12932875676629684165

`A080677(A246523(n))*A085158(n)`
-/

namespace A295255.P12932875676629684165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (A246523 n).toNat * A085158 n

end

end A295255.P12932875676629684165

/-!
# A295256: Expansion of e.g.f. 2/(1 + sqrt(1 - 4*x*cosh(x))).

The programs for A295256, there is no canonical definition to state claims against.
-/

/-! ## A295256.P7064497495307955026

`and(A068228(A086348(n)), A193421(n))`
-/

namespace A295256.P7064497495307955026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068228 (A086348 n).toNat) (A193421 n)

end

end A295256.P7064497495307955026

/-!
# A295258: Expansion of e.g.f. coth(x)*(1 - sqrt(1 - 4*tanh(x)))/2.

The programs for A295258, there is no canonical definition to state claims against.
-/

/-! ## A295258.P1080059879175632599

`A362475(n)+A278483(A348805(n))`
-/

namespace A295258.P1080059879175632599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362475 n + A278483 (A348805 n).toNat

end

end A295258.P1080059879175632599

/-!
# A295259: Array read by antidiagonals: T(n,k) = number of nonequivalent dissections of a polygon into n k-gons by nonintersecting diagonals rooted at a cell up to rotation and reflection (k >= 3).

The programs for A295259, there is no canonical definition to state claims against.
-/

/-! ## A295259.P10631491416672833891

`A048766(A093995(A245397(n))²)`
-/

namespace A295259.P10631491416672833891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A093995 (A245397 n).toNat ^ 2).toNat

end

end A295259.P10631491416672833891

/-!
# A295260: Array read by antidiagonals: T(n,k) = number of nonequivalent dissections of a polygon into n k-gons by nonintersecting diagonals up to rotation and reflection (k >= 3).

The programs for A295260, there is no canonical definition to state claims against.
-/

/-! ## A295260.P14550959599600934992

`A342774(A295222(n+1))`
-/

namespace A295260.P14550959599600934992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342774 (A295222 (n + 1)).toNat

end

end A295260.P14550959599600934992

/-! ## A295260.P2454856132761020612

`A156877(5*A156953(n))`
-/

namespace A295260.P2454856132761020612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156877 (5 * A156953 n).toNat

end

end A295260.P2454856132761020612

/-! ## A295260.P15078090832042551583

`A065603(A295224(n+1)+1)`
-/

namespace A295260.P15078090832042551583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065603 (A295224 (n + 1) + 1).toNat

end

end A295260.P15078090832042551583

/-!
# A295261: Partitions into parts with frequency less than or equal to their place in the list of summands.

The programs for A295261, there is no canonical definition to state claims against.
-/

/-! ## A295261.P9356367771465535487

`A375134(n)+A098108(A185213(n))`
-/

namespace A295261.P9356367771465535487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375134 n + A098108 (A185213 n).toNat

end

end A295261.P9356367771465535487

/-! ## A295261.P15940391016383355840

`A375134(n)+A212618(A333988(n+4))`
-/

namespace A295261.P15940391016383355840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375134 n + A212618 (A333988 (n + 4)).toNat

end

end A295261.P15940391016383355840

/-!
# A295262: Primes for "Landau's trick" to prove Bertrand's postulate for n < 4000.

The programs for A295262, there is no canonical definition to state claims against.
-/

/-! ## A295262.P13682124270769236468

`∪[A078947(n+4), A080190(n)]`
-/

namespace A295262.P13682124270769236468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078947 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080190 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A295262.P13682124270769236468

/-! ## A295262.P1820650098221741600

`p?[A185231(n)%A142428(n+1)]`
-/

namespace A295262.P1820650098221741600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185231 n) (A142428 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295262.P1820650098221741600

/-! ## A295262.P13263550059579126887

`∪[A006992(n+1), A007623(A133870(n+1))]`
-/

namespace A295262.P13263550059579126887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A133870 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A295262.P13263550059579126887

/-! ## A295262.P7290377442427722728

`∪[A006992(n+1), A164368(A235229(n+1))]`
-/

namespace A295262.P7290377442427722728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (A235229 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A295262.P7290377442427722728

/-! ## A295262.P2775831152102740722

`∪[A006992(n+1), A181603(A007522(n+5))]`
-/

namespace A295262.P2775831152102740722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181603 (A007522 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A295262.P2775831152102740722

/-!
# A295263: Number of total cyclic orders Z on {1, ..., n+2} such that (i, i+1, i+2) in Z for 1 <= i <= n, and (n+1,n+2,1) in Z.

The programs for A295263, there is no canonical definition to state claims against.
-/

/-! ## A295263.P8034580607033157376

`A269371(or(A152636(n+1), A257465(n+1)))`
-/

namespace A295263.P8034580607033157376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (Int.lor (A152636 (n + 1)) (A257465 (n + 1))).toNat

end

end A295263.P8034580607033157376

/-! ## A295263.P6794356425532991978

`A227630(A219640(n!))`
-/

namespace A295263.P6794356425532991978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227630 (A219640 (Nat.factorial n)).toNat

end

end A295263.P6794356425532991978

/-!
# A295264: Number of total cyclic orders Z on {0, ..., n-1} such that (i, (i+1) mod n, (i+2) mod n) in Z for 0 <= i < n.

The programs for A295264, there is no canonical definition to state claims against.
-/

/-! ## A295264.P231662622898439271

`A002635(or(2, A243632(n)))`
-/

namespace A295264.P231662622898439271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.lor 2 (A243632 n)).toNat

end

end A295264.P231662622898439271

/-! ## A295264.P4486669436388994444

`A200322(xor(1, A274934(n)))`
-/

namespace A295264.P4486669436388994444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (Int.xor 1 (A274934 n)).toNat

end

end A295264.P4486669436388994444

/-! ## A295264.P17353497825322913497

`A025453(xor(4, A011367(n)))`
-/

namespace A295264.P17353497825322913497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (Int.xor 4 (A011367 n)).toNat

end

end A295264.P17353497825322913497

/-! ## A295264.P13232526783903758737

`A337144(or(5, A173271(n))²)`
-/

namespace A295264.P13232526783903758737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (Int.lor 5 (A173271 n) ^ 2).toNat

end

end A295264.P13232526783903758737

/-!
# A295265: Numbers m such that sum of its i first divisors equals the sum of its j first non-divisors for some i, j.

The programs for A295265, there is no canonical definition to state claims against.
-/

/-! ## A295265.P9086289682502877970

`lt[A230369(n+1), A342084(A092392(n+2))]`
-/

namespace A295265.P9086289682502877970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342084 (A092392 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295265.P9086289682502877970

/-!
# A295267: Expansion of e.g.f. 2/(1 + sqrt(1 + 4*LambertW(-x))).

The programs for A295267, there is no canonical definition to state claims against.
-/

/-! ## A295267.P4186935698697733659

`A005229((7*n-6)*a(n-1))` with `a(0)=1`
-/

namespace A295267.P4186935698697733659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005229 (((7 * n : ℤ) - 6) * a (n - 1)).toNat

end

end A295267.P4186935698697733659

/-!
# A295268: Expansion of e.g.f. 2/(1 + sqrt(1 - 4*LambertW(x))).

The programs for A295268, there is no canonical definition to state claims against.
-/

/-! ## A295268.P18160711832109642669

`A154122(A006896(n))-n`
-/

namespace A295268.P18160711832109642669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 (A006896 n).toNat - (n : ℤ)

end

end A295268.P18160711832109642669

/-! ## A295268.P9489181241242632488

`A219651(A006896(A000007(n)+n))`
-/

namespace A295268.P9489181241242632488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A006896 (A000007 n + (n : ℤ)).toNat).toNat

end

end A295268.P9489181241242632488

/-!
# A295269: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 4 1's.

The programs for A295269, there is no canonical definition to state claims against.
-/

/-! ## A295269.P1517476146643843510

`A295275(∑[4*n]+1)`
-/

namespace A295269.P1517476146643843510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295269.P1517476146643843510

/-! ## A295269.P856198249407852293

`record[gcd(A114327(n), A295275(n+1))]`
-/

namespace A295269.P856198249407852293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A295275 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295269.P856198249407852293

/-! ## A295269.P3284843610580367195

`A295275(A001844(n))+A184955(n)`
-/

namespace A295269.P3284843610580367195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A001844 n).toNat + A184955 n

end

end A295269.P3284843610580367195

/-! ## A295269.P13070959323657754004

`A295275(A001844(n))+A185044(n)`
-/

namespace A295269.P13070959323657754004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A001844 n).toNat + A185044 n

end

end A295269.P13070959323657754004

/-! ## A295269.P12974480484857956493

`gcd(A000038(n), A295275(A001844(n)))`
-/

namespace A295269.P12974480484857956493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295275 (A001844 n).toNat)

end

end A295269.P12974480484857956493

/-!
# A295270: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 4 1s.

The programs for A295270, there is no canonical definition to state claims against.
-/

/-! ## A295270.P11745981072765362267

`A295275(∑[n+2]+4)`
-/

namespace A295270.P11745981072765362267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295270.P11745981072765362267

/-! ## A295270.P1498698724400771389

`A295275(A167614(n+1))+A243832(n)`
-/

namespace A295270.P1498698724400771389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A167614 (n + 1)).toNat + A243832 n

end

end A295270.P1498698724400771389

/-! ## A295270.P15930407314671810358

`lcm(A033999(n), A295275(A167614(n+1)))`
-/

namespace A295270.P15930407314671810358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295275 (A167614 (n + 1)).toNat)

end

end A295270.P15930407314671810358

/-! ## A295270.P18399151295117156345

`or(A000007(n), A295275(A167614(n+1)))`
-/

namespace A295270.P18399151295117156345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295275 (A167614 (n + 1)).toNat)

end

end A295270.P18399151295117156345

/-! ## A295270.P5147713594708340923

`or(A000038(n), A295275(A167614(n+1)))`
-/

namespace A295270.P5147713594708340923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A295275 (A167614 (n + 1)).toNat)

end

end A295270.P5147713594708340923

/-!
# A295271: Number of n X 4 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 4 1s.

The programs for A295271, there is no canonical definition to state claims against.
-/

/-! ## A295271.P14557080272142399823

`A295275(A374004(n+1))`
-/

namespace A295271.P14557080272142399823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A374004 (n + 1)).toNat

end

end A295271.P14557080272142399823

/-! ## A295271.P6910137034946495893

`A295275(A052905(n)+9)`
-/

namespace A295271.P6910137034946495893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A052905 n + 9).toNat

end

end A295271.P6910137034946495893

/-! ## A295271.P5398917875172695774

`A295275(A055999(n)+10)`
-/

namespace A295271.P5398917875172695774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A055999 n + 10).toNat

end

end A295271.P5398917875172695774

/-! ## A295271.P6225968527482606253

`A295275(A167614(n+2)+1)`
-/

namespace A295271.P6225968527482606253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A167614 (n + 2) + 1).toNat

end

end A295271.P6225968527482606253

/-! ## A295271.P14763843570212092041

`A295275(Δ[A023545(n+1)-n²])`
-/

namespace A295271.P14763843570212092041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (f1 (n + 1) - f1 n).toNat

end

end A295271.P14763843570212092041

/-!
# A295272: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 4 1s.

The programs for A295272, there is no canonical definition to state claims against.
-/

/-! ## A295272.P1764434674804167456

`A295275(A374005(n+1))`
-/

namespace A295272.P1764434674804167456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A374005 (n + 1)).toNat

end

end A295272.P1764434674804167456

/-! ## A295272.P7438220572686951905

`A295275(A155212(n)+13)`
-/

namespace A295272.P7438220572686951905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A155212 n + 13).toNat

end

end A295272.P7438220572686951905

/-! ## A295272.P7562609008338865729

`A295275(eq[7, A066657(n)])`
-/

namespace A295272.P7562609008338865729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295272.P7562609008338865729

/-! ## A295272.P103471837585931050

`A295275(eq[2, A092921(n)])`
-/

namespace A295272.P103471837585931050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295272.P103471837585931050

/-! ## A295272.P837940233916585265

`A295275(eq[4, A193592(n)])`
-/

namespace A295272.P837940233916585265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295272.P837940233916585265

/-!
# A295273: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 4 1s.

The programs for A295273, there is no canonical definition to state claims against.
-/

/-! ## A295273.P11083985877331370228

`A295275(A374007(n+1))`
-/

namespace A295273.P11083985877331370228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A374007 (n + 1)).toNat

end

end A295273.P11083985877331370228

/-! ## A295273.P4339501147868463631

`A295275(eq[7, A131818(n+1)])`
-/

namespace A295273.P4339501147868463631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295273.P4339501147868463631

/-! ## A295273.P16429783117019510229

`A295275(A052905(n+3))`
-/

namespace A295273.P16429783117019510229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A052905 (n + 3)).toNat

end

end A295273.P16429783117019510229

/-! ## A295273.P3446543613965903653

`A295275(eq[3, A219347(n)])`
-/

namespace A295273.P3446543613965903653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295273.P3446543613965903653

/-! ## A295273.P1027391556986179207

`A295275(eq[5, A193592(n)])`
-/

namespace A295273.P1027391556986179207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295273.P1027391556986179207

/-!
# A295274: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 4 1s.

The programs for A295274, there is no canonical definition to state claims against.
-/

/-! ## A295274.P17541798388660744485

`A295275(A374008(n+1))`
-/

namespace A295274.P17541798388660744485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (A374008 (n + 1)).toNat

end

end A295274.P17541798388660744485

/-! ## A295274.P13430337639775831965

`A295275(eq[11, A066657(n)])`
-/

namespace A295274.P13430337639775831965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295274.P13430337639775831965

/-! ## A295274.P2054224983787620034

`A295275(eq[8, A131818(n+1)])`
-/

namespace A295274.P2054224983787620034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295274.P2054224983787620034

/-! ## A295274.P8345402184038287536

`A295275(eq[4, A219347(n)])`
-/

namespace A295274.P8345402184038287536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295274.P8345402184038287536

/-! ## A295274.P15023930130198835155

`A295275(eq[6, A193592(n)])`
-/

namespace A295274.P15023930130198835155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295274.P15023930130198835155

/-!
# A295275: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1 or 4 1s.

The programs for A295275, there is no canonical definition to state claims against.
-/

/-! ## A295275.P11516867293429636126

`A282996(n+1)+A037824(A022173(n))`
-/

namespace A295275.P11516867293429636126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1) + A037824 (A022173 n).toNat

end

end A295275.P11516867293429636126

/-! ## A295275.P6923137957288650137

`A282996(n+1)+A059778(A022171(n))`
-/

namespace A295275.P6923137957288650137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1) + A059778 (A022171 n).toNat

end

end A295275.P6923137957288650137

/-! ## A295275.P11287217115626782543

`A282996(n+1)+A102683(A000579(n))`
-/

namespace A295275.P11287217115626782543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1) + A102683 (A000579 n).toNat

end

end A295275.P11287217115626782543

/-! ## A295275.P17244689537442877570

`A282996(n+1)-A016389(A027336(n))`
-/

namespace A295275.P17244689537442877570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1) - A016389 (A027336 n).toNat

end

end A295275.P17244689537442877570

/-! ## A295275.P18113278768501854741

`A282996(n+1)+A055641(A215420(n+1))`
-/

namespace A295275.P18113278768501854741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1) + A055641 (A215420 (n + 1)).toNat

end

end A295275.P18113278768501854741

/-!
# A295276: a(n) = number of earlier terms (with multiplicity) that have no common one bit with n in binary representation.

The programs for A295276, there is no canonical definition to state claims against.
-/

/-! ## A295276.P10147338907581966530

`A343380(3*n+2)+A067029(A346108(n+1)-A346109(n+1))`
-/

namespace A295276.P10147338907581966530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (3 * n + 2) + A067029 (A346108 (n + 1) - A346109 (n + 1)).toNat

end

end A295276.P10147338907581966530

/-!
# A295277: a(n) = number of distinct earlier terms that have no common one bit with n in binary representation.

The programs for A295277, there is no canonical definition to state claims against.
-/

/-! ## A295277.P2530293660676808499

`A194548(n+1)+A124762(A046682(n))`
-/

namespace A295277.P2530293660676808499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (n + 1) + A124762 (A046682 n).toNat

end

end A295277.P2530293660676808499

/-! ## A295277.P8923925575943037306

`A008683(A100148(n+3))+A001055(n+1)`
-/

namespace A295277.P8923925575943037306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A100148 (n + 3)).toNat + A001055 (n + 1)

end

end A295277.P8923925575943037306

/-! ## A295277.P14258677857950412897

`A001221(A069156(n+1)+comp[2*n+3])`
-/

namespace A295277.P14258677857950412897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A069156 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A295277.P14258677857950412897

/-! ## A295277.P15606662640926016006

`A001221(or(A000566(n), A085734(n)))`
-/

namespace A295277.P15606662640926016006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A000566 n) (A085734 n)).toNat

end

end A295277.P15606662640926016006

/-! ## A295277.P24463687364047131

`A033676(A240219(n+1))%A277040(n)`
-/

namespace A295277.P24463687364047131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033676 (A240219 (n + 1)).toNat) (A277040 n)

end

end A295277.P24463687364047131

/-!
# A295278: Expansion of e.g.f. log(1 + x*sech(x))*exp(x).

The programs for A295278, there is no canonical definition to state claims against.
-/

/-! ## A295278.P15737853075366307872

`∑{#}[n, C(n, #)*A009443(#)]`
-/

namespace A295278.P15737853075366307872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A009443 k

end

end A295278.P15737853075366307872

/-!
# A295279: Number of strict tree-factorizations of n.

The programs for A295279, there is no canonical definition to state claims against.
-/

/-! ## A295279.P15865119894674493418

`A316784(n+1)-A343023(A092265(n+1))`
-/

namespace A295279.P15865119894674493418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (n + 1) - A343023 (A092265 (n + 1)).toNat

end

end A295279.P15865119894674493418

/-! ## A295279.P4114780306410756364

`A316784(n+1)-A088917(A345433(n+1))`
-/

namespace A295279.P4114780306410756364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (n + 1) - A088917 (A345433 (n + 1)).toNat

end

end A295279.P4114780306410756364

/-! ## A295279.P4993971956619908974

`A072378(A342084(n+1)%A102531(2*n+1))`
-/

namespace A295279.P4993971956619908974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (Int.tmod (A342084 (n + 1)) (A102531 (2 * n + 1))).toNat

end

end A295279.P4993971956619908974

/-! ## A295279.P7636147837262419816

`A072378(A342084(n+1)%A241234(n+3))`
-/

namespace A295279.P7636147837262419816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (Int.tmod (A342084 (n + 1)) (A241234 (n + 3))).toNat

end

end A295279.P7636147837262419816

/-! ## A295279.P12238498462212460273

`A072378(A342084(n+1))%A190022(n+5)`
-/

namespace A295279.P12238498462212460273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072378 (A342084 (n + 1)).toNat) (A190022 (n + 5))

end

end A295279.P12238498462212460273

/-!
# A295280: a(n) = 1 + the number of distinct earlier terms that are coprime to n.

The programs for A295280, there is no canonical definition to state claims against.
-/

/-! ## A295280.P7830118927142526205

`A067132(A278237(n+1)^A064839(n+1))`
-/

namespace A295280.P7830118927142526205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((A278237 (n + 1) : ℚ) ^ (A064839 (n + 1) : ℤ))).toNat

end

end A295280.P7830118927142526205

/-! ## A295280.P5150718137205485007

`A335516(A238745(n+1)^A064839(n+1))`
-/

namespace A295280.P5150718137205485007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (SequenceMachineLib.roundAway ((A238745 (n + 1) : ℚ) ^ (A064839 (n + 1) : ℤ))).toNat

end

end A295280.P5150718137205485007

/-! ## A295280.P15465745766264750002

`A067132(A278237(n+1)^A335286(n+1))`
-/

namespace A295280.P15465745766264750002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((A278237 (n + 1) : ℚ) ^ (A335286 (n + 1) : ℤ))).toNat

end

end A295280.P15465745766264750002

/-! ## A295280.P13549643214738191039

`A056239(n+1)+A020985(A296302(n+1))`
-/

namespace A295280.P13549643214738191039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A020985 (A296302 (n + 1)).toNat

end

end A295280.P13549643214738191039

/-! ## A295280.P10794565610488323447

`A353862(2*(n+1))+A344616(A046055(n+1))`
-/

namespace A295280.P10794565610488323447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (2 * (n + 1)) + A344616 (A046055 (n + 1)).toNat

end

end A295280.P10794565610488323447

/-!
# A295281: Number of complete strict tree-factorizations of n > 1.

The programs for A295281, there is no canonical definition to state claims against.
-/

/-! ## A295281.P13114690576244380027

`A316656(A181819(n+2))`
-/

namespace A295281.P13114690576244380027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316656 (A181819 (n + 2)).toNat

end

end A295281.P13114690576244380027

/-! ## A295281.P12540631716005139126

`A339884(A086222(n+2)+1)`
-/

namespace A295281.P12540631716005139126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339884 (A086222 (n + 2) + 1).toNat

end

end A295281.P12540631716005139126

/-! ## A295281.P16653748937073115739

`A298941(n+2)*A321892(A144757(n+2))`
-/

namespace A295281.P16653748937073115739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (n + 2) * A321892 (A144757 (n + 2)).toNat

end

end A295281.P16653748937073115739

/-! ## A295281.P14907011218831470492

`A000120(A294018(n+2)^A242767(n+2))`
-/

namespace A295281.P14907011218831470492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A294018 (n + 2) : ℚ) ^ (A242767 (n + 2) : ℤ))).toNat

end

end A295281.P14907011218831470492

/-! ## A295281.P5148528533219094931

`A294018(A318885(n+2))`
-/

namespace A295281.P5148528533219094931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294018 (A318885 (n + 2)).toNat

end

end A295281.P5148528533219094931

/-!
# A295282: a(n) > n is chosen to minimize the difference between ratios a(n):n and n:(a(n) - n), so that they are matching approximations to the golden ratio.

The programs for A295282, there is no canonical definition to state claims against.
-/

/-! ## A295282.P9532732571052175143

`round(ϕ/acot(n+1))`
-/

namespace A295282.P9532732571052175143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio / SequenceMachineLib.acot (n + 1 : ℝ))

end

end A295282.P9532732571052175143

/-! ## A295282.P9652225544305975767

`round(char[3]+ϕ*(n+1))`
-/

namespace A295282.P9652225544305975767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + Real.goldenRatio * (n + 1 : ℝ))

end

end A295282.P9652225544305975767

/-! ## A295282.P13479739886427146563

`char[3]-round(ϕ*xor(n, -1))`
-/

namespace A295282.P13479739886427146563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - SequenceMachineLib.roundAway (Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ))

end

end A295282.P13479739886427146563

/-! ## A295282.P8217508283485473186

`record[round(sqrt((ϕ*n-ϕ)²+1))]`
-/

namespace A295282.P8217508283485473186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Real.goldenRatio * (n : ℝ) - Real.goldenRatio) ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295282.P8217508283485473186

/-! ## A295282.P4842172185686989436

`ceil(floor(2/acot(ϕ*(n+1)))/2)`
-/

namespace A295282.P4842172185686989436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊2 / SequenceMachineLib.acot (Real.goldenRatio * (n + 1 : ℝ))⌋ : ℚ) / 2⌉

end

end A295282.P4842172185686989436

/-! ## A295282.P14464679786892677102

`floor((acot(2*n+1)+ϕ)*(n+1))`
-/

namespace A295282.P14464679786892677102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.acot (2 * n + 1 : ℝ) + Real.goldenRatio) * (n + 1 : ℝ)⌋

end

end A295282.P14464679786892677102

/-! ## A295282.P17195125105227599812

`ceil(ϕ*n*3^(1/a(n-1)))` with `a(0)=2`
-/

namespace A295282.P17195125105227599812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.goldenRatio * ((n : ℝ) * (3 : ℝ) ^ (1 / (a (n - 1) : ℚ) : ℝ))⌉

end

end A295282.P17195125105227599812

/-! ## A295282.P4378602132175748434

`ceil(sqrt((ϕ*(n+1))²-a(n-1)))` with `a(0)=2`
-/

namespace A295282.P4378602132175748434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.sqrt ((Real.goldenRatio * (n + 1 : ℝ)) ^ 2 - (a (n - 1) : ℝ))⌉

end

end A295282.P4378602132175748434

/-! ## A295282.P3333264740457539315

`2*(n+1)-A371627(n+1)`
-/

namespace A295282.P3333264740457539315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A371627 (n + 1)

end

end A295282.P3333264740457539315

/-! ## A295282.P16828558094013582535

`floor(sqrt(∑[2*A001950(n+1)]+1))`
-/

namespace A295282.P16828558094013582535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295282.P16828558094013582535

/-!
# A295283: a(n) = 1 + number of distinct earlier terms that have common one bits with n in binary representation.

The programs for A295283, there is no canonical definition to state claims against.
-/

/-! ## A295283.P3889150823119123402

`A110592(lcm(A153733(n), A309243(n+1)))`
-/

namespace A295283.P3889150823119123402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (Int.lcm (A153733 n) (A309243 (n + 1)))

end

end A295283.P3889150823119123402

/-! ## A295283.P16935472288855271336

`A358236(A000079(n))+A243055(n+1)`
-/

namespace A295283.P16935472288855271336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358236 (A000079 n).toNat + A243055 (n + 1)

end

end A295283.P16935472288855271336

/-! ## A295283.P15955943985414835421

`A181796(gcd(A181798(3*n+5), A181811(n+1)))`
-/

namespace A295283.P15955943985414835421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (Int.gcd (A181798 (3 * n + 5)) (A181811 (n + 1)))

end

end A295283.P15955943985414835421

/-! ## A295283.P4230798646009054713

`A002024(A000265(n+1)-A307597(A000079(n)))`
-/

namespace A295283.P4230798646009054713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000265 (n + 1) - A307597 (A000079 n).toNat).toNat

end

end A295283.P4230798646009054713

/-! ## A295283.P4771365551421043873

`A276134(A077812(n+1))`
-/

namespace A295283.P4771365551421043873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (A077812 (n + 1)).toNat

end

end A295283.P4771365551421043873

/-!
# A295284: Number of partitions of n into two distinct parts such that the larger part is nonsquarefree.

The programs for A295284, the canonical program `A295284.P13396563167845026793` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295284 has offset 1).

The definition of A295284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295284.P13396563167845026793

`∑{#}[floor(n/2)-1, 1-A008683(n+1-(#+1))²]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295284

/-- `∑{#}[floor(n/2)-1, 1-A008683(n+1-(#+1))²]` -/
def P13396563167845026793.Spec : Prop :=
  ∀ n, P13396563167845026793.a n = A295284 (n + 1)

theorem P13396563167845026793.correct : P13396563167845026793.Spec := by
  intro n
  simp only [A295284, Nat.add_sub_cancel]

end A295284

/-! ## A295284.P7498443830669095560

`A262869(n+1)+A004526(n)-A013928(n+1)`
-/

namespace A295284.P7498443830669095560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n + 1) + (A004526 n - A013928 (n + 1))

end

end A295284.P7498443830669095560

namespace A295284

/-- `A262869(n+1)+A004526(n)-A013928(n+1)` -/
def P7498443830669095560.Spec : Prop :=
  ∀ n, P7498443830669095560.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P8710758071389288168

`A262869(n+1)+A008619(n)-A107079(n+1)`
-/

namespace A295284.P8710758071389288168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n + 1) + (A008619 n - A107079 (n + 1))

end

end A295284.P8710758071389288168

namespace A295284

/-- `A262869(n+1)+A008619(n)-A107079(n+1)` -/
def P8710758071389288168.Spec : Prop :=
  ∀ n, P8710758071389288168.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P15282882058059058098

`A294235(n+1)-Δ[A294234(n)]`
-/

namespace A295284.P15282882058059058098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295284.P15282882058059058098

namespace A295284

/-- `A294235(n+1)-Δ[A294234(n)]` -/
def P15282882058059058098.Spec : Prop :=
  ∀ n, P15282882058059058098.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P17546680363377673560

`∑[(A007431(n)+n)%2]-Δ[A294234(n)]`
-/

namespace A295284.P17546680363377673560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007431 n + (n : ℤ)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A295284.P17546680363377673560

namespace A295284

/-- `∑[(A007431(n)+n)%2]-Δ[A294234(n)]` -/
def P17546680363377673560.Spec : Prop :=
  ∀ n, P17546680363377673560.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P1794228680375221136

`A294239(n+1)/(n+1)-Δ[A294234(n)]`
-/

namespace A295284.P1794228680375221136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294239 (n + 1) : ℚ) / (n + 1 : ℚ) - (f1 (n + 1) - f1 n : ℚ)

end

end A295284.P1794228680375221136

namespace A295284

/-- `A294239(n+1)/(n+1)-Δ[A294234(n)]` -/
def P1794228680375221136.Spec : Prop :=
  ∀ n, P1794228680375221136.a n = (A295284 (n + 1) : ℚ)

end A295284

/-! ## A295284.P14598231187297171693

`A294235(-xor(n, -1))-Δ[A294234(n)]%2`
-/

namespace A295284.P14598231187297171693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (-Int.xor (n : ℤ) (-1)).toNat - Int.tmod (f1 (n + 1) - f1 n) 2

end

end A295284.P14598231187297171693

namespace A295284

/-- `A294235(-xor(n, -1))-Δ[A294234(n)]%2` -/
def P14598231187297171693.Spec : Prop :=
  ∀ n, P14598231187297171693.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P9819971233693421168

`ceil(n/2-A262868(n+1))-Δ[A294234(n)]`
-/

namespace A295284.P9819971233693421168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A262868 (n + 1) : ℚ)⌉ - (f1 (n + 1) - f1 n)

end

end A295284.P9819971233693421168

namespace A295284

/-- `ceil(n/2-A262868(n+1))-Δ[A294234(n)]` -/
def P9819971233693421168.Spec : Prop :=
  ∀ n, P9819971233693421168.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P12747081212503125631

`A110654(n)-(A262868(n+1)+Δ[A294234(n)])`
-/

namespace A295284.P12747081212503125631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - (A262868 (n + 1) + (f1 (n + 1) - f1 n))

end

end A295284.P12747081212503125631

namespace A295284

/-- `A110654(n)-(A262868(n+1)+Δ[A294234(n)])` -/
def P12747081212503125631.Spec : Prop :=
  ∀ n, P12747081212503125631.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P16888423917343031054

`A294235(n+1)+A294234(n)-A294234(n+1)`
-/

namespace A295284.P16888423917343031054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (n + 1) + (A294234 n - A294234 (n + 1))

end

end A295284.P16888423917343031054

namespace A295284

/-- `A294235(n+1)+A294234(n)-A294234(n+1)` -/
def P16888423917343031054.Spec : Prop :=
  ∀ n, P16888423917343031054.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P2321616394643412067

`A294234(2*n)-A294234(n+1)`
-/

namespace A295284.P2321616394643412067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (2 * n) - A294234 (n + 1)

end

end A295284.P2321616394643412067

namespace A295284

/-- `A294234(2*n)-A294234(n+1)` -/
def P2321616394643412067.Spec : Prop :=
  ∀ n, P2321616394643412067.a n = A295284 (n + 1)

end A295284

/-! ## A295284.P2222742150699499208

`A004526(n)-(A294233(n+1)+A098236(n+1))`
-/

namespace A295284.P2222742150699499208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - (A294233 (n + 1) + A098236 (n + 1))

end

end A295284.P2222742150699499208

namespace A295284

/-- `A004526(n)-(A294233(n+1)+A098236(n+1))` -/
def P2222742150699499208.Spec : Prop :=
  ∀ n, P2222742150699499208.a n = A295284 (n + 1)

end A295284

/-!
# A295286: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the smaller part odd.

The programs for A295286, the canonical program `A295286.P12563632415591055737` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295286 has offset 1).

The definition of A295286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295286.P7773094284119311341

`ogf((x+x^2+x^3+x^4+7x^5+x^6+x^7+x^8+2x^9)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295286.P7773094284119311341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 7, 1, 1, 1, 2] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295286.P7773094284119311341

namespace A295286

/-- `ogf((x+x^2+x^3+x^4+7x^5+x^6+x^7+x^8+2x^9)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P7773094284119311341.Spec : Prop :=
  ∀ n, P7773094284119311341.a n = A295286 (n + 1)

end A295286

/-! ## A295286.P12563632415591055737

`∑[A001057(n)²]-A295320(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295286

/-- `∑[A001057(n)²]-A295320(n+1)` -/
def P12563632415591055737.Spec : Prop :=
  ∀ n, P12563632415591055737.a n = A295286 (n + 1)

theorem P12563632415591055737.correct : P12563632415591055737.Spec := by
  intro n
  simp only [A295286, Nat.add_sub_cancel]

end A295286

/-! ## A295286.P5426044135875068100

`∑[A110654(n)²]-A295320(n+1)`
-/

namespace A295286.P5426044135875068100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295320 (n + 1)

end

end A295286.P5426044135875068100

namespace A295286

/-- `∑[A110654(n)²]-A295320(n+1)` -/
def P5426044135875068100.Spec : Prop :=
  ∀ n, P5426044135875068100.a n = A295286 (n + 1)

end A295286

/-! ## A295286.P11435212739976452960

`A295321(n+1)+A000217(∑[A001057(n)])`
-/

namespace A295286.P11435212739976452960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295321 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295286.P11435212739976452960

namespace A295286

/-- `A295321(n+1)+A000217(∑[A001057(n)])` -/
def P11435212739976452960.Spec : Prop :=
  ∀ n, P11435212739976452960.a n = A295286 (n + 1)

end A295286

/-! ## A295286.P7813755958800917402

`A295292(n+1)+A295293(n+1)-A295287(n+1)`
-/

namespace A295286.P7813755958800917402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (n + 1) + (A295293 (n + 1) - A295287 (n + 1))

end

end A295286.P7813755958800917402

namespace A295286

/-- `A295292(n+1)+A295293(n+1)-A295287(n+1)` -/
def P7813755958800917402.Spec : Prop :=
  ∀ n, P7813755958800917402.a n = A295286 (n + 1)

end A295286

/-! ## A295286.P10197050881013140795

`A295321(n+1)+A295287(n+3)-A295320(n+3)`
-/

namespace A295286.P10197050881013140795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295321 (n + 1) + (A295287 (n + 3) - A295320 (n + 3))

end

end A295286.P10197050881013140795

namespace A295286

/-- `A295321(n+1)+A295287(n+3)-A295320(n+3)` -/
def P10197050881013140795.Spec : Prop :=
  ∀ n, P10197050881013140795.a n = A295286 (n + 1)

end A295286

/-! ## A295286.P7907124770346622191

`A295287(2*(n+1))/4-A295287(n+1)`
-/

namespace A295286.P7907124770346622191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295287 (2 * (n + 1)) : ℚ) / 4 - (A295287 (n + 1) : ℚ)

end

end A295286.P7907124770346622191

namespace A295286

/-- `A295287(2*(n+1))/4-A295287(n+1)` -/
def P7907124770346622191.Spec : Prop :=
  ∀ n, P7907124770346622191.a n = (A295286 (n + 1) : ℚ)

end A295286

/-! ## A295286.P3462580901996627903

`A293452(A000124(n))-A295287(n+1)`
-/

namespace A295286.P3462580901996627903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (A000124 n).toNat - A295287 (n + 1)

end

end A295286.P3462580901996627903

namespace A295286

/-- `A293452(A000124(n))-A295287(n+1)` -/
def P3462580901996627903.Spec : Prop :=
  ∀ n, P3462580901996627903.a n = A295286 (n + 1)

end A295286

/-!
# A295287: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the smaller part even.

The programs for A295287, the canonical program `A295287.P15776343000814745150` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295287 has offset 1).

The definition of A295287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295287.P16741249370955324255

`ogf((4x^3+2x^4+2x^5+2x^6+6x^7)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295287.P16741249370955324255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 4, 2, 2, 2, 6] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295287.P16741249370955324255

namespace A295287

/-- `ogf((4x^3+2x^4+2x^5+2x^6+6x^7)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P16741249370955324255.Spec : Prop :=
  ∀ n, P16741249370955324255.a n = A295287 (n + 1)

end A295287

/-! ## A295287.P15572465466243777188

`∑[A110660(n)]-A295321(n+1)`
-/

namespace A295287.P15572465466243777188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295321 (n + 1)

end

end A295287.P15572465466243777188

namespace A295287

/-- `∑[A110660(n)]-A295321(n+1)` -/
def P15572465466243777188.Spec : Prop :=
  ∀ n, P15572465466243777188.a n = A295287 (n + 1)

theorem P15572465466243777188.correct : P15572465466243777188.Spec := by
  intro n
  simp only [A295287, Nat.add_sub_cancel, A295287.P15572465466243777188.f1, A295287.P15572465466243777188.a, A295287.P15776343000814745150.f2, A295287.P15776343000814745150.f1, A295287.P15776343000814745150.a, A008621, A008621.P16254263843810723736.a, A110660, A110660.P9226895399142348914.a, A295321, A295321.P1307019648991377142.f1, A295321.P1307019648991377142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295287

/-! ## A295287.P18319330184098551890

`A295292(n+1)+A295293(n+1)-A295286(n+1)`
-/

namespace A295287.P18319330184098551890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (n + 1) + (A295293 (n + 1) - A295286 (n + 1))

end

end A295287.P18319330184098551890

namespace A295287

/-- `A295292(n+1)+A295293(n+1)-A295286(n+1)` -/
def P18319330184098551890.Spec : Prop :=
  ∀ n, P18319330184098551890.a n = A295287 (n + 1)

end A295287

/-! ## A295287.P6953840374371176276

`Δ[n/2*∑[A038714(n)]]`
-/

namespace A295287.P6953840374371176276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295287.P6953840374371176276

namespace A295287

/-- `Δ[n/2*∑[A038714(n)]]` -/
def P6953840374371176276.Spec : Prop :=
  ∀ n, P6953840374371176276.a n = (A295287 (n + 1) : ℚ)

end A295287

/-! ## A295287.P15776343000814745150

`Δ[n*∑[C(A008621(n), 2)]]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295287

/-- `Δ[n*∑[C(A008621(n), 2)]]` -/
def P15776343000814745150.Spec : Prop :=
  ∀ n, P15776343000814745150.a n = A295287 (n + 1)

theorem P15776343000814745150.correct : P15776343000814745150.Spec := by
  intro n
  simp only [A295287, Nat.add_sub_cancel]

end A295287

/-! ## A295287.P11449893374879019251

`Δ[n*∑[A101883(n+1)-(n+1)]]`
-/

namespace A295287.P11449893374879019251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101883 (n + 1) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295287.P11449893374879019251

namespace A295287

/-- `Δ[n*∑[A101883(n+1)-(n+1)]]` -/
def P11449893374879019251.Spec : Prop :=
  ∀ n, P11449893374879019251.a n = A295287 (n + 1)

end A295287

/-! ## A295287.P6091468874702030537

`Δ[n*∑[A000217(A002265(n))]]`
-/

namespace A295287.P6091468874702030537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002265 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295287.P6091468874702030537

namespace A295287

/-- `Δ[n*∑[A000217(A002265(n))]]` -/
def P6091468874702030537.Spec : Prop :=
  ∀ n, P6091468874702030537.a n = A295287 (n + 1)

end A295287

/-! ## A295287.P11795365429326906658

`A295318(n+2)-A038714(n+1)`
-/

namespace A295287.P11795365429326906658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295318 (n + 2) - A038714 (n + 1)

end

end A295287.P11795365429326906658

namespace A295287

/-- `A295318(n+2)-A038714(n+1)` -/
def P11795365429326906658.Spec : Prop :=
  ∀ n, P11795365429326906658.a n = A295287 (n + 1)

end A295287

/-!
# A295288: Binomial transform of the centered triangular numbers A005448.

The programs for A295288, the canonical program `A295288.P14648133198449351626` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295288 has offset 0).

The definition of A295288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295288.P17954387760506838826

`ogf((1-x+x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A295288.P17954387760506838826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -6, 12, -8] n

end

end A295288.P17954387760506838826

namespace A295288

/-- `ogf((1-x+x^2)/(1-6x+12x^2-8x^3))` -/
def P17954387760506838826.Spec : Prop :=
  ∀ n, P17954387760506838826.a n = A295288 n

end A295288

/-! ## A295288.P14648133198449351626

`(3*n²+9*n+8)*2^(n-3)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295288

/-- `(3*n²+9*n+8)*2^(n-3)` -/
def P14648133198449351626.Spec : Prop :=
  ∀ n, P14648133198449351626.a n = (A295288 n : ℚ)

end A295288

/-! ## A295288.P8927495604364084814

`(3*C(n+2, 2)+1)*2^(n-2)`
-/

namespace A295288.P8927495604364084814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 2 + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A295288.P8927495604364084814

namespace A295288

/-- `(3*C(n+2, 2)+1)*2^(n-2)` -/
def P8927495604364084814.Spec : Prop :=
  ∀ n, P8927495604364084814.a n = (A295288 n : ℚ)

end A295288

/-! ## A295288.P9920085084509923839

`A084858(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A295288.P9920085084509923839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084858 n + 2 * a (n - 1)

end

end A295288.P9920085084509923839

namespace A295288

/-- `A084858(n)+2*a(n-1)` -/
def P9920085084509923839.Spec : Prop :=
  ∀ n, P9920085084509923839.a n = A295288 n

end A295288

/-! ## A295288.P2981872576508588448

`∑[(n+1)*(n+4)*2^(n-2)-A049611(n)]`
-/

namespace A295288.P2981872576508588448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 4) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (A049611 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295288.P2981872576508588448

namespace A295288

/-- `∑[(n+1)*(n+4)*2^(n-2)-A049611(n)]` -/
def P2981872576508588448.Spec : Prop :=
  ∀ n, P2981872576508588448.a n = (A295288 n : ℚ)

end A295288

/-! ## A295288.P17347577548759866704

`A084851(n)+A001788(n)`
-/

namespace A295288.P17347577548759866704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n + A001788 n

end

end A295288.P17347577548759866704

namespace A295288

/-- `A084851(n)+A001788(n)` -/
def P17347577548759866704.Spec : Prop :=
  ∀ n, P17347577548759866704.a n = A295288 n

end A295288

/-! ## A295288.P2782860484846082533

`A089658(n)+A001792(n)`
-/

namespace A295288.P2782860484846082533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089658 n + A001792 n

end

end A295288.P2782860484846082533

namespace A295288

/-- `A089658(n)+A001792(n)` -/
def P2782860484846082533.Spec : Prop :=
  ∀ n, P2782860484846082533.a n = A295288 n

end A295288

/-! ## A295288.P16297192394096802895

`A176027(n)+A081908(n)`
-/

namespace A295288.P16297192394096802895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A081908 n

end

end A295288.P16297192394096802895

namespace A295288

/-- `A176027(n)+A081908(n)` -/
def P16297192394096802895.Spec : Prop :=
  ∀ n, P16297192394096802895.a n = A295288 n

end A295288

/-! ## A295288.P17375567728504790732

`A136530(n)-A001787(n)`
-/

namespace A295288.P17375567728504790732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n - A001787 n

end

end A295288.P17375567728504790732

namespace A295288

/-- `A136530(n)-A001787(n)` -/
def P17375567728504790732.Spec : Prop :=
  ∀ n, P17375567728504790732.a n = A295288 n

end A295288

/-! ## A295288.P7638871320110645180

`A049611(n+1)+A001788(n)`
-/

namespace A295288.P7638871320110645180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + A001788 n

end

end A295288.P7638871320110645180

namespace A295288

/-- `A049611(n+1)+A001788(n)` -/
def P7638871320110645180.Spec : Prop :=
  ∀ n, P7638871320110645180.a n = A295288 n

end A295288

/-! ## A295288.P157074000131581377

`A276289(n)+A001787(n+1)`
-/

namespace A295288.P157074000131581377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 n + A001787 (n + 1)

end

end A295288.P157074000131581377

namespace A295288

/-- `A276289(n)+A001787(n+1)` -/
def P157074000131581377.Spec : Prop :=
  ∀ n, P157074000131581377.a n = A295288 n

end A295288

/-! ## A295288.P4356378721041837801

`A084850(n)-A001815(n)/2`
-/

namespace A295288.P4356378721041837801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084850 n : ℚ) - (A001815 n : ℚ) / 2

end

end A295288.P4356378721041837801

namespace A295288

/-- `A084850(n)-A001815(n)/2` -/
def P4356378721041837801.Spec : Prop :=
  ∀ n, P4356378721041837801.a n = (A295288 n : ℚ)

end A295288

/-! ## A295288.P16455860736513334991

`A072863(n)+n*A045623(n)`
-/

namespace A295288.P16455860736513334991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n + (n : ℤ) * A045623 n

end

end A295288.P16455860736513334991

namespace A295288

/-- `A072863(n)+n*A045623(n)` -/
def P16455860736513334991.Spec : Prop :=
  ∀ n, P16455860736513334991.a n = A295288 n

end A295288

/-! ## A295288.P3948114265472581021

`A111297(n)+n*A106472(n)`
-/

namespace A295288.P3948114265472581021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n + (n : ℤ) * A106472 n

end

end A295288.P3948114265472581021

namespace A295288

/-- `A111297(n)+n*A106472(n)` -/
def P3948114265472581021.Spec : Prop :=
  ∀ n, P3948114265472581021.a n = A295288 n

end A295288

/-! ## A295288.P2674208553583911222

`Δ[A001788(n)]+A001815(n)/2`
-/

namespace A295288.P2674208553583911222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A001815 n : ℚ) / 2

end

end A295288.P2674208553583911222

namespace A295288

/-- `Δ[A001788(n)]+A001815(n)/2` -/
def P2674208553583911222.Spec : Prop :=
  ∀ n, P2674208553583911222.a n = (A295288 n : ℚ)

end A295288

/-! ## A295288.P16058005134464860183

`A001793(n+1)+A001815(n)/2`
-/

namespace A295288.P16058005134464860183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001793 (n + 1) : ℚ) + (A001815 n : ℚ) / 2

end

end A295288.P16058005134464860183

namespace A295288

/-- `A001793(n+1)+A001815(n)/2` -/
def P16058005134464860183.Spec : Prop :=
  ∀ n, P16058005134464860183.a n = (A295288 n : ℚ)

end A295288

/-! ## A295288.P13054555989222834062

`A084851(n)+∑[A084851(n)-A001792(n)]`
-/

namespace A295288.P13054555989222834062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295288.P13054555989222834062

namespace A295288

/-- `A084851(n)+∑[A084851(n)-A001792(n)]` -/
def P13054555989222834062.Spec : Prop :=
  ∀ n, P13054555989222834062.a n = A295288 n

end A295288

/-! ## A295288.P1430536575609146926

`A001788(n+1)+A001788(n)-A089658(n)`
-/

namespace A295288.P1430536575609146926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + (A001788 n - A089658 n)

end

end A295288.P1430536575609146926

namespace A295288

/-- `A001788(n+1)+A001788(n)-A089658(n)` -/
def P1430536575609146926.Spec : Prop :=
  ∀ n, P1430536575609146926.a n = A295288 n

end A295288

/-! ## A295288.P15588866950780502709

`A053220(n+1)+A084899(n)-A001788(n)`
-/

namespace A295288.P15588866950780502709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) + (A084899 n - A001788 n)

end

end A295288.P15588866950780502709

namespace A295288

/-- `A053220(n+1)+A084899(n)-A001788(n)` -/
def P15588866950780502709.Spec : Prop :=
  ∀ n, P15588866950780502709.a n = A295288 n

end A295288

/-! ## A295288.P6424621334675172073

`A190050(n+1)+A001788(n)-A000079(n)`
-/

namespace A295288.P6424621334675172073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 (n + 1) + (A001788 n - A000079 n)

end

end A295288.P6424621334675172073

namespace A295288

/-- `A190050(n+1)+A001788(n)-A000079(n)` -/
def P6424621334675172073.Spec : Prop :=
  ∀ n, P6424621334675172073.a n = A295288 n

end A295288

/-!
# A295291: Indices of primes in sequence A000700.

The programs for A295291, there is no canonical definition to state claims against.
-/

/-! ## A295291.P14469642659181377265

`eq[1, ∑{e}[A081362(n), #]]`
-/

namespace A295291.P14469642659181377265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295291.P14469642659181377265

/-! ## A295291.P15724475595059216350

`eq[0, A237053(A000700(n))]`
-/

namespace A295291.P15724475595059216350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295291.P15724475595059216350

/-! ## A295291.P480292042461912199

`lt[A237053(A000700(n)), A267936(n)]`
-/

namespace A295291.P480292042461912199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295291.P480292042461912199

/-! ## A295291.P16401900609520187189

`eq[0, A237053(A000041(n)-A330644(n))]`
-/

namespace A295291.P16401900609520187189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000041 n - A330644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295291.P16401900609520187189

/-! ## A295291.P214131758940230951

`lt[A237053(A000700(n)), A168399(3*n)]`
-/

namespace A295291.P214131758940230951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168399 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295291.P214131758940230951

/-!
# A295292: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the larger part odd.

The programs for A295292, the canonical program `A295292.P13783823336857499213` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295292 has offset 1).

The definition of A295292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295292.P13783823336857499213

`∑{#}[floor((n+1)/2)-1, (#+1)*(n+1-(#+1))*(n+1-(#+1))%2]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295292

/-- `∑{#}[floor((n+1)/2)-1, (#+1)*(n+1-(#+1))*(n+1-(#+1))%2]` -/
def P13783823336857499213.Spec : Prop :=
  ∀ n, P13783823336857499213.a n = A295292 (n + 1)

theorem P13783823336857499213.correct : P13783823336857499213.Spec := by
  intro n
  simp only [A295292, Nat.add_sub_cancel]

end A295292

/-! ## A295292.P8270753226744390807

`ogf((x-x^2+3x^3+3x^4+5x^5-x^6+3x^7+3x^8)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295292.P8270753226744390807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 3, 3, 5, -1, 3, 3] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295292.P8270753226744390807

namespace A295292

/-- `ogf((x-x^2+3x^3+3x^4+5x^5-x^6+3x^7+3x^8)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P8270753226744390807.Spec : Prop :=
  ∀ n, P8270753226744390807.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P4490344972093491667

`∑[A001057(n)²]-A295317(n+1)`
-/

namespace A295292.P4490344972093491667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295317 (n + 1)

end

end A295292.P4490344972093491667

namespace A295292

/-- `∑[A001057(n)²]-A295317(n+1)` -/
def P4490344972093491667.Spec : Prop :=
  ∀ n, P4490344972093491667.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P16871772411013517234

`∑[A110654(n)²]-A295317(n+1)`
-/

namespace A295292.P16871772411013517234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295317 (n + 1)

end

end A295292.P16871772411013517234

namespace A295292

/-- `∑[A110654(n)²]-A295317(n+1)` -/
def P16871772411013517234.Spec : Prop :=
  ∀ n, P16871772411013517234.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P2099053443370578540

`A295318(n+1)-∑[∑[A083392(n)]]`
-/

namespace A295292.P2099053443370578540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295318 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295292.P2099053443370578540

namespace A295292

/-- `A295318(n+1)-∑[∑[A083392(n)]]` -/
def P2099053443370578540.Spec : Prop :=
  ∀ n, P2099053443370578540.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P16401701881898573159

`A295320(n+1)+A195938(n+1)²`
-/

namespace A295292.P16401701881898573159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (n + 1) + A195938 (n + 1) ^ 2

end

end A295292.P16401701881898573159

namespace A295292

/-- `A295320(n+1)+A195938(n+1)²` -/
def P16401701881898573159.Spec : Prop :=
  ∀ n, P16401701881898573159.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P3923835868853716975

`A295318(n+1)+A000217(∑[A001057(n)])`
-/

namespace A295292.P3923835868853716975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295318 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295292.P3923835868853716975

namespace A295292

/-- `A295318(n+1)+A000217(∑[A001057(n)])` -/
def P3923835868853716975.Spec : Prop :=
  ∀ n, P3923835868853716975.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P1261667185197257488

`A049778(n+1)-(A295293(n+1)+A023855(n+1))`
-/

namespace A295292.P1261667185197257488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) - (A295293 (n + 1) + A023855 (n + 1))

end

end A295292.P1261667185197257488

namespace A295292

/-- `A049778(n+1)-(A295293(n+1)+A023855(n+1))` -/
def P1261667185197257488.Spec : Prop :=
  ∀ n, P1261667185197257488.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P18238459284911839189

`A295286(n+1)+A295287(n+1)-A295293(n+1)`
-/

namespace A295292.P18238459284911839189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 1) + (A295287 (n + 1) - A295293 (n + 1))

end

end A295292.P18238459284911839189

namespace A295292

/-- `A295286(n+1)+A295287(n+1)-A295293(n+1)` -/
def P18238459284911839189.Spec : Prop :=
  ∀ n, P18238459284911839189.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P12082060404896743176

`A295321(n+2)-A296141(n+2)`
-/

namespace A295292.P12082060404896743176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295321 (n + 2) - A296141 (n + 2)

end

end A295292.P12082060404896743176

namespace A295292

/-- `A295321(n+2)-A296141(n+2)` -/
def P12082060404896743176.Spec : Prop :=
  ∀ n, P12082060404896743176.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P1231922078284311334

`∑[A245288(n+1)]-A295293(n+1)`
-/

namespace A295292.P1231922078284311334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295293 (n + 1)

end

end A295292.P1231922078284311334

namespace A295292

/-- `∑[A245288(n+1)]-A295293(n+1)` -/
def P1231922078284311334.Spec : Prop :=
  ∀ n, P1231922078284311334.a n = A295292 (n + 1)

end A295292

/-! ## A295292.P11917451258617446712

`A293452(A000124(n))-A295293(n+1)`
-/

namespace A295292.P11917451258617446712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (A000124 n).toNat - A295293 (n + 1)

end

end A295292.P11917451258617446712

namespace A295292

/-- `A293452(A000124(n))-A295293(n+1)` -/
def P11917451258617446712.Spec : Prop :=
  ∀ n, P11917451258617446712.a n = A295292 (n + 1)

end A295292

/-!
# A295293: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the larger part even.

The programs for A295293, the canonical program `A295293.P9244574736305665220` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295293 has offset 1).

The definition of A295293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295293.P15889735388050692776

`ogf((2x^2+2x^3+4x^5+4x^6+4x^7-2x^8+2x^9)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295293.P15889735388050692776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2, 0, 4, 4, 4, -2, 2] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295293.P15889735388050692776

namespace A295293

/-- `ogf((2x^2+2x^3+4x^5+4x^6+4x^7-2x^8+2x^9)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P15889735388050692776.Spec : Prop :=
  ∀ n, P15889735388050692776.a n = A295293 (n + 1)

end A295293

/-! ## A295293.P9244574736305665220

`∑[A110660(n)]-A295318(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295293

/-- `∑[A110660(n)]-A295318(n+1)` -/
def P9244574736305665220.Spec : Prop :=
  ∀ n, P9244574736305665220.a n = A295293 (n + 1)

theorem P9244574736305665220.correct : P9244574736305665220.Spec := by
  intro n
  simp only [A295293, Nat.add_sub_cancel]

end A295293

/-! ## A295293.P13708325208803229223

`A295317(n+1)+A002620(n)-A123596(n)`
-/

namespace A295293.P13708325208803229223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (n + 1) + (A002620 n - A123596 n)

end

end A295293.P13708325208803229223

namespace A295293

/-- `A295317(n+1)+A002620(n)-A123596(n)` -/
def P13708325208803229223.Spec : Prop :=
  ∀ n, P13708325208803229223.a n = A295293 (n + 1)

end A295293

/-! ## A295293.P896308636449900124

`A049778(n+1)-(A295292(n+1)+A023855(n+1))`
-/

namespace A295293.P896308636449900124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) - (A295292 (n + 1) + A023855 (n + 1))

end

end A295293.P896308636449900124

namespace A295293

/-- `A049778(n+1)-(A295292(n+1)+A023855(n+1))` -/
def P896308636449900124.Spec : Prop :=
  ∀ n, P896308636449900124.a n = A295293 (n + 1)

end A295293

/-! ## A295293.P14270296153737425347

`A295286(n+1)+A295287(n+1)-A295292(n+1)`
-/

namespace A295293.P14270296153737425347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 1) + (A295287 (n + 1) - A295292 (n + 1))

end

end A295293.P14270296153737425347

namespace A295293

/-- `A295286(n+1)+A295287(n+1)-A295292(n+1)` -/
def P14270296153737425347.Spec : Prop :=
  ∀ n, P14270296153737425347.a n = A295293 (n + 1)

end A295293

/-! ## A295293.P1340846864508722204

`A295287(n+1)+A295317(n+1)-A295320(n+1)`
-/

namespace A295293.P1340846864508722204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 1) + (A295317 (n + 1) - A295320 (n + 1))

end

end A295293.P1340846864508722204

namespace A295293

/-- `A295287(n+1)+A295317(n+1)-A295320(n+1)` -/
def P1340846864508722204.Spec : Prop :=
  ∀ n, P1340846864508722204.a n = A295293 (n + 1)

end A295293

/-! ## A295293.P3951011560533834930

`A295320(n+2)-A296159(n+2)`
-/

namespace A295293.P3951011560533834930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (n + 2) - A296159 (n + 2)

end

end A295293.P3951011560533834930

namespace A295293

/-- `A295320(n+2)-A296159(n+2)` -/
def P3951011560533834930.Spec : Prop :=
  ∀ n, P3951011560533834930.a n = A295293 (n + 1)

end A295293

/-! ## A295293.P787950770071635342

`A295321(n+1)+Δ[A038714(n)]²`
-/

namespace A295293.P787950770071635342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295321 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A295293.P787950770071635342

namespace A295293

/-- `A295321(n+1)+Δ[A038714(n)]²` -/
def P787950770071635342.Spec : Prop :=
  ∀ n, P787950770071635342.a n = A295293 (n + 1)

theorem P787950770071635342.correct : P787950770071635342.Spec := by
  intro n
  simp only [A295293, Nat.add_sub_cancel, A295293.P787950770071635342.f1, A295293.P787950770071635342.a, A295293.P9244574736305665220.f1, A295293.P9244574736305665220.a, A038714, A038714.P12896136081027992850.a, A110660, A110660.P9226895399142348914.a, A295318, A295318.P11884600890367549118.f1, A295318.P11884600890367549118.a, A295321, A295321.P1307019648991377142.f1, A295321.P1307019648991377142.a, A295287, A295287.P15776343000814745150.f2, A295287.P15776343000814745150.f1, A295287.P15776343000814745150.a, A008621, A008621.P16254263843810723736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295293

/-! ## A295293.P936980794919235228

`∑[A038714(A005408(n))]-A295318(n+1)`
-/

namespace A295293.P936980794919235228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295318 (n + 1)

end

end A295293.P936980794919235228

namespace A295293

/-- `∑[A038714(A005408(n))]-A295318(n+1)` -/
def P936980794919235228.Spec : Prop :=
  ∀ n, P936980794919235228.a n = A295293 (n + 1)

end A295293

/-! ## A295293.P17531081303407507802

`A293452(A000124(n))-A295292(n+1)`
-/

namespace A295293.P17531081303407507802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (A000124 n).toNat - A295292 (n + 1)

end

end A295293.P17531081303407507802

namespace A295293

/-- `A293452(A000124(n))-A295292(n+1)` -/
def P17531081303407507802.Spec : Prop :=
  ∀ n, P17531081303407507802.a n = A295293 (n + 1)

end A295293

/-!
# A295294: Sum of the divisors of the powerful part of n: a(n) = A000203(A057521(n)).

The programs for A295294, the canonical program `A295294.P5934329699896356661` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295294 has offset 1).

The definition of A295294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A057521(n+1))` (program `A295294.P5934329699896356661`, by `A295294.P5934329699896356661.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295294.P5934329699896356661

`A000203(A057521(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295294

/-- `A000203(A057521(n+1))` -/
def P5934329699896356661.Spec : Prop :=
  ∀ n, P5934329699896356661.a n = A295294 (n + 1)

theorem P5934329699896356661.correct : P5934329699896356661.Spec := by
  intro n
  simp only [A295294, Nat.add_sub_cancel]

end A295294

/-! ## A295294.P6897836306640432770

`A000203(n+1)/A092261(n+1)`
-/

namespace A295294.P6897836306640432770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A295294.P6897836306640432770

namespace A295294

/-- `A000203(n+1)/A092261(n+1)` -/
def P6897836306640432770.Spec : Prop :=
  ∀ n, P6897836306640432770.a n = (A295294 (n + 1) : ℚ)

end A295294

/-! ## A295294.P14404861782338577662

`A000203(A064549(A003557(n+1)))`
-/

namespace A295294.P14404861782338577662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064549 (A003557 (n + 1)).toNat).toNat

end

end A295294.P14404861782338577662

namespace A295294

/-- `A000203(A064549(A003557(n+1)))` -/
def P14404861782338577662.Spec : Prop :=
  ∀ n, P14404861782338577662.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P542164974485922454

`∑{d}[gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]), #]`
-/

namespace A295294.P542164974485922454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A295294.P542164974485922454

namespace A295294

/-- `∑{d}[gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]), #]` -/
def P542164974485922454.Spec : Prop :=
  ∀ n, (P542164974485922454.a n : ℤ) = A295294 (n + 1)

end A295294

/-! ## A295294.P2833173649444243974

`∑{d}[n+1, #]/∑{d}[∏{p}[n+1, lcm(n+1, #²)/(n+1)], #]`
-/

namespace A295294.P2833173649444243974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d : ℕ) : ℚ)

end

end A295294.P2833173649444243974

namespace A295294

/-- `∑{d}[n+1, #]/∑{d}[∏{p}[n+1, lcm(n+1, #²)/(n+1)], #]` -/
def P2833173649444243974.Spec : Prop :=
  ∀ n, P2833173649444243974.a n = (A295294 (n + 1) : ℚ)

end A295294

/-! ## A295294.P10651219889276612190

`∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #], #]`
-/

namespace A295294.P10651219889276612190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A295294.P10651219889276612190

namespace A295294

/-- `∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #], #]` -/
def P10651219889276612190.Spec : Prop :=
  ∀ n, (P10651219889276612190.a n : ℤ) = A295294 (n + 1)

end A295294

/-! ## A295294.P14042193006432769701

`∑{d}[A057521(n+1), #]`
-/

namespace A295294.P14042193006432769701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A295294.P14042193006432769701

namespace A295294

/-- `∑{d}[A057521(n+1), #]` -/
def P14042193006432769701.Spec : Prop :=
  ∀ n, (P14042193006432769701.a n : ℤ) = A295294 (n + 1)

end A295294

/-! ## A295294.P12543948113545374786

`A000203(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A295294.P12543948113545374786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A295294.P12543948113545374786

namespace A295294

/-- `A000203(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P12543948113545374786.Spec : Prop :=
  ∀ n, P12543948113545374786.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P8237882648562499340

`A000203((n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A295294.P8237882648562499340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A295294.P8237882648562499340

namespace A295294

/-- `A000203((n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P8237882648562499340.Spec : Prop :=
  ∀ n, P8237882648562499340.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P4712752125282535968

`A000203(1-A326186(n+1)+n)`
-/

namespace A295294.P4712752125282535968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 - A326186 (n + 1) + (n : ℤ)).toNat

end

end A295294.P4712752125282535968

namespace A295294

/-- `A000203(1-A326186(n+1)+n)` -/
def P4712752125282535968.Spec : Prop :=
  ∀ n, P4712752125282535968.a n = A295294 (n + 1)

theorem P4712752125282535968.correct : P4712752125282535968.Spec := by
  intro n
  simp only [A295294, Nat.add_sub_cancel, A295294.P4712752125282535968.a, A295294.P5934329699896356661.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057521, A057521.P7284310941140114823.a, A326186, A326186.P460460233906349811.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295294

/-! ## A295294.P14891675151653960856

`A000203((n+1)/A055231(n+1))`
-/

namespace A295294.P14891675151653960856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A295294.P14891675151653960856

namespace A295294

/-- `A000203((n+1)/A055231(n+1))` -/
def P14891675151653960856.Spec : Prop :=
  ∀ n, P14891675151653960856.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P8705897387456395497

`A369717((n+1)/A055231(n+1))`
-/

namespace A295294.P8705897387456395497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A295294.P8705897387456395497

namespace A295294

/-- `A369717((n+1)/A055231(n+1))` -/
def P8705897387456395497.Spec : Prop :=
  ∀ n, P8705897387456395497.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P16925019714777361791

`A000203((n+1)²/A197863(n+1))`
-/

namespace A295294.P16925019714777361791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A197863 (n + 1) : ℚ))).toNat

end

end A295294.P16925019714777361791

namespace A295294

/-- `A000203((n+1)²/A197863(n+1))` -/
def P16925019714777361791.Spec : Prop :=
  ∀ n, P16925019714777361791.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P17283371790070643142

`A326187(A057521(n+1))+A003557(n+1)`
-/

namespace A295294.P17283371790070643142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326187 (A057521 (n + 1)).toNat + A003557 (n + 1)

end

end A295294.P17283371790070643142

namespace A295294

/-- `A326187(A057521(n+1))+A003557(n+1)` -/
def P17283371790070643142.Spec : Prop :=
  ∀ n, P17283371790070643142.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P12003059010735641032

`A000203(A000203(n+1)-A326184(n+1))`
-/

namespace A295294.P12003059010735641032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1) - A326184 (n + 1)).toNat

end

end A295294.P12003059010735641032

namespace A295294

/-- `A000203(A000203(n+1)-A326184(n+1))` -/
def P12003059010735641032.Spec : Prop :=
  ∀ n, P12003059010735641032.a n = A295294 (n + 1)

theorem P12003059010735641032.correct : P12003059010735641032.Spec := by
  intro n
  simp only [A295294, Nat.add_sub_cancel, A295294.P12003059010735641032.a, A295294.P5934329699896356661.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057521, A057521.P7284310941140114823.a, A326184, A326184.P15746824177980826123.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295294

/-! ## A295294.P8227216214640291386

`A000203(A001065(n+1)-A326185(n+1))`
-/

namespace A295294.P8227216214640291386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001065 (n + 1) - A326185 (n + 1)).toNat

end

end A295294.P8227216214640291386

namespace A295294

/-- `A000203(A001065(n+1)-A326185(n+1))` -/
def P8227216214640291386.Spec : Prop :=
  ∀ n, P8227216214640291386.a n = A295294 (n + 1)

theorem P8227216214640291386.correct : P8227216214640291386.Spec := by
  intro n
  simp only [A295294, Nat.add_sub_cancel, A295294.P8227216214640291386.a, A295294.P5934329699896356661.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A057521, A057521.P7284310941140114823.a, A326185, A326185.P12659005152761193395.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295294

/-! ## A295294.P8177841715757980896

`A000203(A003557(n+1)*A071773(n+1))`
-/

namespace A295294.P8177841715757980896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003557 (n + 1) * A071773 (n + 1)).toNat

end

end A295294.P8177841715757980896

namespace A295294

/-- `A000203(A003557(n+1)*A071773(n+1))` -/
def P8177841715757980896.Spec : Prop :=
  ∀ n, P8177841715757980896.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P11816361840285892098

`A344695(A057521(n+1))*A344696(n+1)`
-/

namespace A295294.P11816361840285892098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A057521 (n + 1)).toNat * A344696 (n + 1)

end

end A295294.P11816361840285892098

namespace A295294

/-- `A344695(A057521(n+1))*A344696(n+1)` -/
def P11816361840285892098.Spec : Prop :=
  ∀ n, P11816361840285892098.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P13639916410721682191

`A000203(A064549((n+1)/A007947(n+1)))`
-/

namespace A295294.P13639916410721682191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A295294.P13639916410721682191

namespace A295294

/-- `A000203(A064549((n+1)/A007947(n+1)))` -/
def P13639916410721682191.Spec : Prop :=
  ∀ n, P13639916410721682191.a n = A295294 (n + 1)

end A295294

/-! ## A295294.P12837039889212179667

`A274535(n+1)/A274535(A055231(n+1))`
-/

namespace A295294.P12837039889212179667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274535 (n + 1) : ℚ) / (A274535 (A055231 (n + 1)).toNat : ℚ)

end

end A295294.P12837039889212179667

namespace A295294

/-- `A274535(n+1)/A274535(A055231(n+1))` -/
def P12837039889212179667.Spec : Prop :=
  ∀ n, P12837039889212179667.a n = (A295294 (n + 1) : ℚ)

end A295294

/-!
# A295295: Sum of squarefree divisors of the powerful part of n: a(n) = A048250(A057521(n)).

The programs for A295295, the canonical program `A295295.P17200479442831636122` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295295 has offset 1).

The definition of A295295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A048250(A057521(n+1))` (program `A295295.P17200479442831636122`, by `A295295.P17200479442831636122.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295295.P17200479442831636122

`A048250(A057521(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295295

/-- `A048250(A057521(n+1))` -/
def P17200479442831636122.Spec : Prop :=
  ∀ n, P17200479442831636122.a n = A295295 (n + 1)

theorem P17200479442831636122.correct : P17200479442831636122.Spec := by
  intro n
  simp only [A295295, Nat.add_sub_cancel]

end A295295

/-! ## A295295.P10004718166773374383

`A048250(n+1)-A344137(n+1)`
-/

namespace A295295.P10004718166773374383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A344137 (n + 1)

end

end A295295.P10004718166773374383

namespace A295295

/-- `A048250(n+1)-A344137(n+1)` -/
def P10004718166773374383.Spec : Prop :=
  ∀ n, P10004718166773374383.a n = A295295 (n + 1)

theorem P10004718166773374383.correct : P10004718166773374383.Spec := by
  intro n
  simp only [A295295, Nat.add_sub_cancel, A295295.P10004718166773374383.a, A295295.P17200479442831636122.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A057521, A057521.P7284310941140114823.a, A344137, A344137.P296871737562835172.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295295

/-! ## A295295.P16435286395865266277

`A048250(n+1)/A092261(n+1)`
-/

namespace A295295.P16435286395865266277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A295295.P16435286395865266277

namespace A295295

/-- `A048250(n+1)/A092261(n+1)` -/
def P16435286395865266277.Spec : Prop :=
  ∀ n, P16435286395865266277.a n = (A295295 (n + 1) : ℚ)

end A295295

/-! ## A295295.P9213716226645119304

`A048250(A064549(A003557(n+1)))`
-/

namespace A295295.P9213716226645119304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A064549 (A003557 (n + 1)).toNat).toNat

end

end A295295.P9213716226645119304

namespace A295295

/-- `A048250(A064549(A003557(n+1)))` -/
def P9213716226645119304.Spec : Prop :=
  ∀ n, P9213716226645119304.a n = A295295 (n + 1)

end A295295

/-! ## A295295.P15469687030205521860

`∑{d}[∏{p}[ceil(n/∏{p}[n+1, #]), #], #]`
-/

namespace A295295.P15469687030205521860
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A295295.P15469687030205521860

namespace A295295

/-- `∑{d}[∏{p}[ceil(n/∏{p}[n+1, #]), #], #]` -/
def P15469687030205521860.Spec : Prop :=
  ∀ n, (P15469687030205521860.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P13195433127621515899

`∏{p}[(n+1)/∏{p}[n+1, #], #+1]`
-/

namespace A295295.P13195433127621515899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (p + 1)

end

end A295295.P13195433127621515899

namespace A295295

/-- `∏{p}[(n+1)/∏{p}[n+1, #], #+1]` -/
def P13195433127621515899.Spec : Prop :=
  ∀ n, (P13195433127621515899.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P9851087993794354930

`∑{d}[A071773(n+1), #]`
-/

namespace A295295.P9851087993794354930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A295295.P9851087993794354930

namespace A295295

/-- `∑{d}[A071773(n+1), #]` -/
def P9851087993794354930.Spec : Prop :=
  ∀ n, (P9851087993794354930.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P13958389086914739028

`∏{p}[A000188(n+1), #+1]`
-/

namespace A295295.P13958389086914739028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P13958389086914739028

namespace A295295

/-- `∏{p}[A000188(n+1), #+1]` -/
def P13958389086914739028.Spec : Prop :=
  ∀ n, (P13958389086914739028.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P18162764946121897745

`∏{p}[A000189(n+1), #+1]`
-/

namespace A295295.P18162764946121897745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P18162764946121897745

namespace A295295

/-- `∏{p}[A000189(n+1), #+1]` -/
def P18162764946121897745.Spec : Prop :=
  ∀ n, (P18162764946121897745.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P15290717352242442408

`∏{p}[A000190(n+1), #+1]`
-/

namespace A295295.P15290717352242442408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P15290717352242442408

namespace A295295

/-- `∏{p}[A000190(n+1), #+1]` -/
def P15290717352242442408.Spec : Prop :=
  ∀ n, (P15290717352242442408.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P7495793453105411031

`∏{p}[A008833(n+1), #+1]`
-/

namespace A295295.P7495793453105411031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P7495793453105411031

namespace A295295

/-- `∏{p}[A008833(n+1), #+1]` -/
def P7495793453105411031.Spec : Prop :=
  ∀ n, (P7495793453105411031.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P17957837396791104475

`∏{p}[A011264(n+1), #+1]`
-/

namespace A295295.P17957837396791104475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P17957837396791104475

namespace A295295

/-- `∏{p}[A011264(n+1), #+1]` -/
def P17957837396791104475.Spec : Prop :=
  ∀ n, (P17957837396791104475.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P9086465607106285204

`∏{p}[A085731(n+1), #+1]`
-/

namespace A295295.P9086465607106285204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P9086465607106285204

namespace A295295

/-- `∏{p}[A085731(n+1), #+1]` -/
def P9086465607106285204.Spec : Prop :=
  ∀ n, (P9086465607106285204.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P16970669970188435992

`∏{p}[A308993(n+1), #+1]`
-/

namespace A295295.P16970669970188435992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P16970669970188435992

namespace A295295

/-- `∏{p}[A308993(n+1), #+1]` -/
def P16970669970188435992.Spec : Prop :=
  ∀ n, (P16970669970188435992.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P6449527090167239367

`∏{p}[A358272(n+1), #+1]`
-/

namespace A295295.P6449527090167239367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P6449527090167239367

namespace A295295

/-- `∏{p}[A358272(n+1), #+1]` -/
def P6449527090167239367.Spec : Prop :=
  ∀ n, (P6449527090167239367.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P15464949108131720985

`∏{p}[A366993(n+1), #+1]`
-/

namespace A295295.P15464949108131720985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A295295.P15464949108131720985

namespace A295295

/-- `∏{p}[A366993(n+1), #+1]` -/
def P15464949108131720985.Spec : Prop :=
  ∀ n, (P15464949108131720985.a n : ℤ) = A295295 (n + 1)

end A295295

/-! ## A295295.P16628903120948229821

`A048250(A000188(n+1))`
-/

namespace A295295.P16628903120948229821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A000188 (n + 1)).toNat

end

end A295295.P16628903120948229821

namespace A295295

/-- `A048250(A000188(n+1))` -/
def P16628903120948229821.Spec : Prop :=
  ∀ n, P16628903120948229821.a n = A295295 (n + 1)

end A295295

/-! ## A295295.P12712283289310361825

`A048250(A000189(n+1))`
-/

namespace A295295.P12712283289310361825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A000189 (n + 1)).toNat

end

end A295295.P12712283289310361825

namespace A295295

/-- `A048250(A000189(n+1))` -/
def P12712283289310361825.Spec : Prop :=
  ∀ n, P12712283289310361825.a n = A295295 (n + 1)

end A295295

/-! ## A295295.P12325450400683954076

`A048250(A000190(n+1))`
-/

namespace A295295.P12325450400683954076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A000190 (n + 1)).toNat

end

end A295295.P12325450400683954076

namespace A295295

/-- `A048250(A000190(n+1))` -/
def P12325450400683954076.Spec : Prop :=
  ∀ n, P12325450400683954076.a n = A295295 (n + 1)

end A295295

/-! ## A295295.P6732911459806433181

`A048250(A003557(n+1))`
-/

namespace A295295.P6732911459806433181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A003557 (n + 1)).toNat

end

end A295295.P6732911459806433181

namespace A295295

/-- `A048250(A003557(n+1))` -/
def P6732911459806433181.Spec : Prop :=
  ∀ n, P6732911459806433181.a n = A295295 (n + 1)

end A295295

/-!
# A295296: Numbers n such that the sum of their divisors + the number of ones in their binary expansion = 2n; numbers for which A000203(n) + A000120(n) = 2n.

The programs for A295296, there is no canonical definition to state claims against.
-/

/-! ## A295296.P2802728627209065989

`eq[1, A318308(n+1)]+1`
-/

namespace A295296.P2802728627209065989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295296.P2802728627209065989

/-! ## A295296.P10499243137533169301

`eq[0, A294898(n+1)]+1`
-/

namespace A295296.P10499243137533169301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295296.P10499243137533169301

/-! ## A295296.P17694654612556835297

`eq[1, A295655(n+1)]+1`
-/

namespace A295296.P17694654612556835297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295296.P17694654612556835297

/-! ## A295296.P9624209510179385692

`eq[1, A295656(n+1)]+1`
-/

namespace A295296.P9624209510179385692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295296.P9624209510179385692

/-! ## A295296.P6008396274768032752

`lt[A294899(n+1), 1]+1`
-/

namespace A295296.P6008396274768032752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A295296.P6008396274768032752

/-!
# A295297: a(n) = (A000120(n) + A000203(n)) mod 2.

The programs for A295297, the canonical program `A295297.P15610912244864616743` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295297 has offset 1).

The definition of A295297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000120(n+1)+A000203(n+1))%2` (program `A295297.P15610912244864616743`, by `A295297.P15610912244864616743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295297.P6702425587483154128

`A294899(n+1)%2`
-/

namespace A295297.P6702425587483154128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294899 (n + 1)) 2

end

end A295297.P6702425587483154128

namespace A295297

/-- `A294899(n+1)%2` -/
def P6702425587483154128.Spec : Prop :=
  ∀ n, P6702425587483154128.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P15610912244864616743

`(A000120(n+1)+A000203(n+1))%2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A295297

/-- `(A000120(n+1)+A000203(n+1))%2` -/
def P15610912244864616743.Spec : Prop :=
  ∀ n, P15610912244864616743.a n = A295297 (n + 1)

theorem P15610912244864616743.correct : P15610912244864616743.Spec := by
  intro n
  simp only [A295297, Nat.add_sub_cancel]

end A295297

/-! ## A295297.P4945801185456246455

`A000035(A000120(n+1)+A000203(n+1))`
-/

namespace A295297.P4945801185456246455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000120 (n + 1) + A000203 (n + 1)).toNat

end

end A295297.P4945801185456246455

namespace A295297

/-- `A000035(A000120(n+1)+A000203(n+1))` -/
def P4945801185456246455.Spec : Prop :=
  ∀ n, P4945801185456246455.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P1747320813341835131

`A295875(A156552(n+1))`
-/

namespace A295297.P1747320813341835131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295875 (A156552 (n + 1)).toNat

end

end A295297.P1747320813341835131

namespace A295297

/-- `A295875(A156552(n+1))` -/
def P1747320813341835131.Spec : Prop :=
  ∀ n, P1747320813341835131.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P16234889513846944057

`and(1, ∑[val(n+1, 2)+1]-∑{d}[n+1, #])`
-/

namespace A295297.P16234889513846944057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

end

end A295297.P16234889513846944057

namespace A295297

/-- `and(1, ∑[val(n+1, 2)+1]-∑{d}[n+1, #])` -/
def P16234889513846944057.Spec : Prop :=
  ∀ n, P16234889513846944057.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P16808016749367184345

`abs((∑[val(n+1, 2)+1]-∑{d}[n+1, #])%2)`
-/

namespace A295297.P16808016749367184345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)) 2|

end

end A295297.P16808016749367184345

namespace A295297

/-- `abs((∑[val(n+1, 2)+1]-∑{d}[n+1, #])%2)` -/
def P16808016749367184345.Spec : Prop :=
  ∀ n, P16808016749367184345.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P4776234622180769621

`and(1, A294898(n+1))`
-/

namespace A295297.P4776234622180769621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A294898 (n + 1))

end

end A295297.P4776234622180769621

namespace A295297

/-- `and(1, A294898(n+1))` -/
def P4776234622180769621.Spec : Prop :=
  ∀ n, P4776234622180769621.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P17607527717378656846

`char[A295299(n+1)-1]`
-/

namespace A295297.P17607527717378656846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295299 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295297.P17607527717378656846

namespace A295297

/-- `char[A295299(n+1)-1]` -/
def P17607527717378656846.Spec : Prop :=
  ∀ n, (P17607527717378656846.a n : ℤ) = A295297 (n + 1)

end A295297

/-! ## A295297.P1625649216513521825

`and(1, A317844(2*(n+1)))`
-/

namespace A295297.P1625649216513521825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317844 (2 * (n + 1)))

end

end A295297.P1625649216513521825

namespace A295297

/-- `and(1, A317844(2*(n+1)))` -/
def P1625649216513521825.Spec : Prop :=
  ∀ n, P1625649216513521825.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P18315272094702903134

`and(1, ∑{d}[n+1, A297114(#)])`
-/

namespace A295297.P18315272094702903134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ d ∈ Nat.divisors (f1 n), A297114 d)

end

end A295297.P18315272094702903134

namespace A295297

/-- `and(1, ∑{d}[n+1, A297114(#)])` -/
def P18315272094702903134.Spec : Prop :=
  ∀ n, P18315272094702903134.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P11677577754426472100

`and(A043545(n), A294899(n+1))`
-/

namespace A295297.P11677577754426472100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043545 n) (A294899 (n + 1))

end

end A295297.P11677577754426472100

namespace A295297

/-- `and(A043545(n), A294899(n+1))` -/
def P11677577754426472100.Spec : Prop :=
  ∀ n, P11677577754426472100.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P18268052966600514307

`and(A054977(n), A294899(n+1))`
-/

namespace A295297.P18268052966600514307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A294899 (n + 1))

end

end A295297.P18268052966600514307

namespace A295297

/-- `and(A054977(n), A294899(n+1))` -/
def P18268052966600514307.Spec : Prop :=
  ∀ n, P18268052966600514307.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P14737506134681221029

`and(A057427(n), A294899(n+1))`
-/

namespace A295297.P14737506134681221029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A294899 (n + 1))

end

end A295297.P14737506134681221029

namespace A295297

/-- `and(A057427(n), A294899(n+1))` -/
def P14737506134681221029.Spec : Prop :=
  ∀ n, P14737506134681221029.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P6683127383012627895

`and(A060576(n), A294899(n+1))`
-/

namespace A295297.P6683127383012627895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A294899 (n + 1))

end

end A295297.P6683127383012627895

namespace A295297

/-- `and(A060576(n), A294899(n+1))` -/
def P6683127383012627895.Spec : Prop :=
  ∀ n, P6683127383012627895.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P17158962112466964184

`(A341916(n)+A326126(n+1))%2`
-/

namespace A295297.P17158962112466964184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341916 n + A326126 (n + 1)) 2

end

end A295297.P17158962112466964184

namespace A295297

/-- `(A341916(n)+A326126(n+1))%2` -/
def P17158962112466964184.Spec : Prop :=
  ∀ n, P17158962112466964184.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P13390621530275306434

`(A010060(n+1)-A093709(n+1))²`
-/

namespace A295297.P13390621530275306434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 (n + 1) - A093709 (n + 1)) ^ 2

end

end A295297.P13390621530275306434

namespace A295297

/-- `(A010060(n+1)-A093709(n+1))²` -/
def P13390621530275306434.Spec : Prop :=
  ∀ n, P13390621530275306434.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P14403797878077430269

`and(1, A000203(n+1)-A010060(n+1))`
-/

namespace A295297.P14403797878077430269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (n + 1) - A010060 (n + 1))

end

end A295297.P14403797878077430269

namespace A295297

/-- `and(1, A000203(n+1)-A010060(n+1))` -/
def P14403797878077430269.Spec : Prop :=
  ∀ n, P14403797878077430269.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P12779003728910925086

`((∑[A001222(n+1-and(n, n+1))]-A001065(n+1))%2)²`
-/

namespace A295297.P12779003728910925086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1 - Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A001065 (n + 1)) 2 ^ 2

end

end A295297.P12779003728910925086

namespace A295297

/-- `((∑[A001222(n+1-and(n, n+1))]-A001065(n+1))%2)²` -/
def P12779003728910925086.Spec : Prop :=
  ∀ n, P12779003728910925086.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P1017298247489744471

`A000035(A001227(n+1)+A000120(n+1))`
-/

namespace A295297.P1017298247489744471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001227 (n + 1) + A000120 (n + 1)).toNat

end

end A295297.P1017298247489744471

namespace A295297

/-- `A000035(A001227(n+1)+A000120(n+1))` -/
def P1017298247489744471.Spec : Prop :=
  ∀ n, P1017298247489744471.a n = A295297 (n + 1)

end A295297

/-! ## A295297.P9886527558507325252

`A000035(A010060(n+1)+A001227(n+1))`
-/

namespace A295297.P9886527558507325252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A010060 (n + 1) + A001227 (n + 1)).toNat

end

end A295297.P9886527558507325252

namespace A295297

/-- `A000035(A010060(n+1)+A001227(n+1))` -/
def P9886527558507325252.Spec : Prop :=
  ∀ n, P9886527558507325252.a n = A295297 (n + 1)

end A295297

/-!
# A295298: Numbers k for which sum of the divisors (A000203) and the binary weight of k (A000120) have the same parity.

The programs for A295298, the canonical program `A295298.P12146886332929648330` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295298 has offset 1).

The definition of A295298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295298.P11354753440326646242

`eq[0, A295297(n+1)]+1`
-/

namespace A295298.P11354753440326646242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295298.P11354753440326646242

namespace A295298

/-- `eq[0, A295297(n+1)]+1` -/
def P11354753440326646242.Spec : Prop :=
  ∀ n, (P11354753440326646242.a n : ℤ) = A295298 (n + 1)

end A295298

/-! ## A295298.P12146886332929648330

`eq[1, (A294899(n+1)+1)%2]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295298

/-- `eq[1, (A294899(n+1)+1)%2]+1` -/
def P12146886332929648330.Spec : Prop :=
  ∀ n, (P12146886332929648330.a n : ℤ) = A295298 (n + 1)

theorem P12146886332929648330.correct : P12146886332929648330.Spec := by
  intro n
  simp only [A295298, Nat.add_sub_cancel]

end A295298

/-! ## A295298.P2934188459129803088

`eq[A010060(n), A093709(n)]`
-/

namespace A295298.P2934188459129803088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295298.P2934188459129803088

namespace A295298

/-- `eq[A010060(n), A093709(n)]` -/
def P2934188459129803088.Spec : Prop :=
  ∀ n, (P2934188459129803088.a n : ℤ) = A295298 (n + 1)

end A295298

/-! ## A295298.P17381221539474951249

`eq[1, A093709(n)+A010059(n)]`
-/

namespace A295298.P17381221539474951249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n + A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295298.P17381221539474951249

namespace A295298

/-- `eq[1, A093709(n)+A010059(n)]` -/
def P17381221539474951249.Spec : Prop :=
  ∀ n, (P17381221539474951249.a n : ℤ) = A295298 (n + 1)

end A295298

/-! ## A295298.P10526739201647296771

`eq[A010060(n), A053866(A004277(n))]`
-/

namespace A295298.P10526739201647296771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295298.P10526739201647296771

namespace A295298

/-- `eq[A010060(n), A053866(A004277(n))]` -/
def P10526739201647296771.Spec : Prop :=
  ∀ n, (P10526739201647296771.a n : ℤ) = A295298 (n + 1)

end A295298

/-! ## A295298.P14325478662598417430

`eq[char[A115881(n+1)], A010060(n)]`
-/

namespace A295298.P14325478662598417430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115881 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295298.P14325478662598417430

namespace A295298

/-- `eq[char[A115881(n+1)], A010060(n)]` -/
def P14325478662598417430.Spec : Prop :=
  ∀ n, (P14325478662598417430.a n : ℤ) = A295298 (n + 1)

end A295298

/-!
# A295299: Numbers k such that the sum of the divisors (A000203) and the binary weight of k (A000120) have different parity.

The programs for A295299, the canonical program `A295299.P1082946531175352022` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295299 has offset 1).

The definition of A295299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295299.P5575560046774499815

`eq[1, A295297(1+n)]+1`
-/

namespace A295299.P5575560046774499815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295299.P5575560046774499815

namespace A295299

/-- `eq[1, A295297(1+n)]+1` -/
def P5575560046774499815.Spec : Prop :=
  ∀ n, (P5575560046774499815.a n : ℤ) = A295299 (n + 1)

end A295299

/-! ## A295299.P207079769968397267

`filter[A344180(n), A295297(#)]`
-/

namespace A295299.P207079769968397267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P207079769968397267

namespace A295299

/-- `filter[A344180(n), A295297(#)]` -/
def P207079769968397267.Spec : Prop :=
  ∀ n, P207079769968397267.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P14590347755026775243

`filter[A305810(n+1), A295297(#)]`
-/

namespace A295299.P14590347755026775243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P14590347755026775243

namespace A295299

/-- `filter[A305810(n+1), A295297(#)]` -/
def P14590347755026775243.Spec : Prop :=
  ∀ n, P14590347755026775243.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P11196324504830751388

`filter[A324400(n+1), A295297(#)]`
-/

namespace A295299.P11196324504830751388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P11196324504830751388

namespace A295299

/-- `filter[A324400(n+1), A295297(#)]` -/
def P11196324504830751388.Spec : Prop :=
  ∀ n, P11196324504830751388.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P2237243155694725793

`filter[A332900(n+3), A295297(#)]`
-/

namespace A295299.P2237243155694725793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P2237243155694725793

namespace A295299

/-- `filter[A332900(n+3), A295297(#)]` -/
def P2237243155694725793.Spec : Prop :=
  ∀ n, P2237243155694725793.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P15393788416587247682

`comp[A295298(n+1)-1]+1`
-/

namespace A295299.P15393788416587247682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295298 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A295299.P15393788416587247682

namespace A295299

/-- `comp[A295298(n+1)-1]+1` -/
def P15393788416587247682.Spec : Prop :=
  ∀ n, (P15393788416587247682.a n : ℤ) = A295299 (n + 1)

end A295299

/-! ## A295299.P1082946531175352022

`eq[1, A294899(n+1)%2]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295299

/-- `eq[1, A294899(n+1)%2]+1` -/
def P1082946531175352022.Spec : Prop :=
  ∀ n, (P1082946531175352022.a n : ℤ) = A295299 (n + 1)

theorem P1082946531175352022.correct : P1082946531175352022.Spec := by
  intro n
  simp only [A295299, Nat.add_sub_cancel]

end A295299

/-! ## A295299.P5278478576392676812

`eq[1, gcd(2, A294898(n+2))]+2`
-/

namespace A295299.P5278478576392676812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A294898 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A295299.P5278478576392676812

namespace A295299

/-- `eq[1, gcd(2, A294898(n+2))]+2` -/
def P5278478576392676812.Spec : Prop :=
  ∀ n, (P5278478576392676812.a n : ℤ) = A295299 (n + 1)

end A295299

/-! ## A295299.P9418761678026642725

`eq[1, and(1, A294898(n+1))]+1`
-/

namespace A295299.P9418761678026642725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A294898 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295299.P9418761678026642725

namespace A295299

/-- `eq[1, and(1, A294898(n+1))]+1` -/
def P9418761678026642725.Spec : Prop :=
  ∀ n, (P9418761678026642725.a n : ℤ) = A295299 (n + 1)

end A295299

/-! ## A295299.P15418525947028048728

`filter[A004169(n+1), A295297(#)]`
-/

namespace A295299.P15418525947028048728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P15418525947028048728

namespace A295299

/-- `filter[A004169(n+1), A295297(#)]` -/
def P15418525947028048728.Spec : Prop :=
  ∀ n, P15418525947028048728.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P7544745657481359818

`filter[A085837(n+1), A295297(#)]`
-/

namespace A295299.P7544745657481359818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P7544745657481359818

namespace A295299

/-- `filter[A085837(n+1), A295297(#)]` -/
def P7544745657481359818.Spec : Prop :=
  ∀ n, P7544745657481359818.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P14162884107537751977

`filter[A161992(n+1), A295297(#)]`
-/

namespace A295299.P14162884107537751977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P14162884107537751977

namespace A295299

/-- `filter[A161992(n+1), A295297(#)]` -/
def P14162884107537751977.Spec : Prop :=
  ∀ n, P14162884107537751977.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P12455481629265671102

`filter[A116451(n), A295297(#)]`
-/

namespace A295299.P12455481629265671102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P12455481629265671102

namespace A295299

/-- `filter[A116451(n), A295297(#)]` -/
def P12455481629265671102.Spec : Prop :=
  ∀ n, P12455481629265671102.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P6454853043467000652

`filter[A005767(n+1), A295297(#)]`
-/

namespace A295299.P6454853043467000652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P6454853043467000652

namespace A295299

/-- `filter[A005767(n+1), A295297(#)]` -/
def P6454853043467000652.Spec : Prop :=
  ∀ n, P6454853043467000652.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P6885325518716668469

`filter[A057716(n+1), A295297(#)]`
-/

namespace A295299.P6885325518716668469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P6885325518716668469

namespace A295299

/-- `filter[A057716(n+1), A295297(#)]` -/
def P6885325518716668469.Spec : Prop :=
  ∀ n, P6885325518716668469.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P18188236949743114949

`filter[A138591(n+1), A295297(#)]`
-/

namespace A295299.P18188236949743114949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P18188236949743114949

namespace A295299

/-- `filter[A138591(n+1), A295297(#)]` -/
def P18188236949743114949.Spec : Prop :=
  ∀ n, P18188236949743114949.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P18017111311356362481

`filter[A063992(n+1), A295297(#)]`
-/

namespace A295299.P18017111311356362481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P18017111311356362481

namespace A295299

/-- `filter[A063992(n+1), A295297(#)]` -/
def P18017111311356362481.Spec : Prop :=
  ∀ n, P18017111311356362481.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P11578993832216866830

`filter[A057717(n+1), A295297(#)]`
-/

namespace A295299.P11578993832216866830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A295299.P11578993832216866830

namespace A295299

/-- `filter[A057717(n+1), A295297(#)]` -/
def P11578993832216866830.Spec : Prop :=
  ∀ n, P11578993832216866830.a n = A295299 (n + 1)

end A295299

/-! ## A295299.P155099474920921080

`lt[0, A295297(A004277(n))]`
-/

namespace A295299.P155099474920921080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295299.P155099474920921080

namespace A295299

/-- `lt[0, A295297(A004277(n))]` -/
def P155099474920921080.Spec : Prop :=
  ∀ n, (P155099474920921080.a n : ℤ) = A295299 (n + 1)

end A295299

/-! ## A295299.P6752701333726764191

`lt[0, A295297(A028310(n))]`
-/

namespace A295299.P6752701333726764191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295299.P6752701333726764191

namespace A295299

/-- `lt[0, A295297(A028310(n))]` -/
def P6752701333726764191.Spec : Prop :=
  ∀ n, (P6752701333726764191.a n : ℤ) = A295299 (n + 1)

end A295299

