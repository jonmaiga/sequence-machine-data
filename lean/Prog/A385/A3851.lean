import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A385101: E.g.f. A(x) satisfies A(x) = exp(x * A(x) + x^4/24 * A'''(x)).

The programs for A385101, there is no canonical definition to state claims against.
-/

/-! ## A385101.P10899232127695249007

`A055930(n^n)+1`
-/

namespace A385101.P10899232127695249007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (n ^ n) + 1

end

end A385101.P10899232127695249007

/-!
# A385103: Number of values of s, 0 < s < n, such that -(s^s) == s (mod n).

The programs for A385103, there is no canonical definition to state claims against.
-/

/-! ## A385103.P11326945444168676251

`A264394(A005940(n+1)*A123108(n))`
-/

namespace A385103.P11326945444168676251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264394 (A005940 (n + 1) * A123108 n).toNat

end

end A385103.P11326945444168676251

/-! ## A385103.P13805995551538256148

`A338898(n+1)%A212045(A122111(n+1))`
-/

namespace A385103.P13805995551538256148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338898 (n + 1)) (A212045 (A122111 (n + 1)).toNat)

end

end A385103.P13805995551538256148

/-! ## A385103.P1899989966236429932

`A123061(A038197(n))%A114731(3*n+4)`
-/

namespace A385103.P1899989966236429932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123061 (A038197 n).toNat) (A114731 (3 * n + 4))

end

end A385103.P1899989966236429932

/-!
# A385105: Harshad root of integer n: the largest integer produced by repeatedly dividing n by its digit sum until it fails to produce another integer or it reaches a power of 10.

The programs for A385105, there is no canonical definition to state claims against.
-/

/-! ## A385105.P854393054772292926

`A235600(A235600(n+1))/A226873(∑[n])`
-/

namespace A385105.P854393054772292926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235600 (A235600 (n + 1)).toNat : ℚ) / (A226873 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A385105.P854393054772292926

/-! ## A385105.P5707182127521794970

`A235600(A235600(n+1)%A124411(n+1))`
-/

namespace A385105.P5707182127521794970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235600 (Int.tmod (A235600 (n + 1)) (A124411 (n + 1))).toNat

end

end A385105.P5707182127521794970

/-! ## A385105.P13235661302065887009

`A235600(A235600(n+1))%A331765(n+1)`
-/

namespace A385105.P13235661302065887009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235600 (A235600 (n + 1)).toNat) (A331765 (n + 1))

end

end A385105.P13235661302065887009

/-! ## A385105.P4811960366668014652

`A235600(A235600(n+1)%A161807(n))`
-/

namespace A385105.P4811960366668014652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235600 (Int.tmod (A235600 (n + 1)) (A161807 n)).toNat

end

end A385105.P4811960366668014652

/-!
# A385106: a(n) = 3*a(n-1) - 3*a(n-2) + a(n-3) + a(n-4) with a(1) = 1, a(2) = 2, a(3) = 4, and a(4) = 7.

The programs for A385106, the canonical program `A385106.P9784392135801434795` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385106 has offset 1).

The definition of A385106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` (program `A385106.P9784392135801434795`, by `A385106.P9784392135801434795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385106.P16333440946132223452

`ogf((1-x+x^2)/(1-3x+3x^2-x^3-x^4))`
-/

namespace A385106.P16333440946132223452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 3, -1, -1] n

end

end A385106.P16333440946132223452

namespace A385106

/-- `ogf((1-x+x^2)/(1-3x+3x^2-x^3-x^4))` -/
def P16333440946132223452.Spec : Prop :=
  ∀ n, P16333440946132223452.a n = A385106 (n + 1)

end A385106

/-! ## A385106.P18313167157311016632

`A079398(3*(n+1))`
-/

namespace A385106.P18313167157311016632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (3 * (n + 1))

end

end A385106.P18313167157311016632

namespace A385106

/-- `A079398(3*(n+1))` -/
def P18313167157311016632.Spec : Prop :=
  ∀ n, P18313167157311016632.a n = A385106 (n + 1)

end A385106

/-! ## A385106.P9784392135801434795

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385106

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` -/
def P9784392135801434795.Spec : Prop :=
  ∀ n, P9784392135801434795.a n = A385106 (n + 1)

theorem P9784392135801434795.correct : P9784392135801434795.Spec := by
  intro n
  simp only [A385106, Nat.add_sub_cancel]

end A385106

/-! ## A385106.P2012765573826444161

`A122521(6*(n+1))`
-/

namespace A385106.P2012765573826444161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (6 * (n + 1))

end

end A385106.P2012765573826444161

namespace A385106

/-- `A122521(6*(n+1))` -/
def P2012765573826444161.Spec : Prop :=
  ∀ n, P2012765573826444161.a n = A385106 (n + 1)

end A385106

/-! ## A385106.P1844394941881963561

`Δ[A138653(n)]`
-/

namespace A385106.P1844394941881963561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385106.P1844394941881963561

namespace A385106

/-- `Δ[A138653(n)]` -/
def P1844394941881963561.Spec : Prop :=
  ∀ n, P1844394941881963561.a n = A385106 (n + 1)

end A385106

/-! ## A385106.P15385840528147523451

`A138653(n+1)-A138653(n)`
-/

namespace A385106.P15385840528147523451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138653 (n + 1) - A138653 n

end

end A385106.P15385840528147523451

namespace A385106

/-- `A138653(n+1)-A138653(n)` -/
def P15385840528147523451.Spec : Prop :=
  ∀ n, P15385840528147523451.a n = A385106 (n + 1)

end A385106

/-!
# A385107: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3) - a(n-4) + a(n-5) with a(1) = 1, a(2) = 2, a(3) = 4, a(4) = 8, and a(5) = 15.

The programs for A385107, the canonical program `A385107.P16588204817208836442` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385107 has offset 1).

The definition of A385107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` (program `A385107.P16588204817208836442`, by `A385107.P16588204817208836442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385107.P7241941462970604937

`ogf((1-2x+2x^2)/(1-4x+6x^2-4x^3+x^4-x^5))`
-/

namespace A385107.P7241941462970604937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -4, 6, -4, 1, -1] n

end

end A385107.P7241941462970604937

namespace A385107

/-- `ogf((1-2x+2x^2)/(1-4x+6x^2-4x^3+x^4-x^5))` -/
def P7241941462970604937.Spec : Prop :=
  ∀ n, P7241941462970604937.a n = A385107 (n + 1)

end A385107

/-! ## A385107.P17547940098234901129

`A103372(4*(n+1))`
-/

namespace A385107.P17547940098234901129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (4 * (n + 1))

end

end A385107.P17547940098234901129

namespace A385107

/-- `A103372(4*(n+1))` -/
def P17547940098234901129.Spec : Prop :=
  ∀ n, P17547940098234901129.a n = A385107 (n + 1)

end A385107

/-! ## A385107.P16588204817208836442

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=15`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385107

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` -/
def P16588204817208836442.Spec : Prop :=
  ∀ n, P16588204817208836442.a n = A385107 (n + 1)

theorem P16588204817208836442.correct : P16588204817208836442.Spec := by
  intro n
  simp only [A385107, Nat.add_sub_cancel]

end A385107

/-! ## A385107.P16268780931959443155

`record[A103372(n+4)^(floor(n/4)-floor((n-1)/4))]`
-/

namespace A385107.P16268780931959443155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103372 (n + 4) : ℚ) ^ (⌊(n : ℚ) / 4⌋ - ⌊((n : ℤ) - 1 : ℚ) / 4⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385107.P16268780931959443155

namespace A385107

/-- `record[A103372(n+4)^(floor(n/4)-floor((n-1)/4))]` -/
def P16268780931959443155.Spec : Prop :=
  ∀ n, P16268780931959443155.a n = (A385107 (n + 1) : ℚ)

end A385107

/-! ## A385107.P14914113612296390373

`A124789(A004767(n+1))`
-/

namespace A385107.P14914113612296390373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (A004767 (n + 1)).toNat

end

end A385107.P14914113612296390373

namespace A385107

/-- `A124789(A004767(n+1))` -/
def P14914113612296390373.Spec : Prop :=
  ∀ n, P14914113612296390373.a n = A385107 (n + 1)

end A385107

/-! ## A385107.P13804366961736081381

`A124789(A042948(2*(n+2))-1)`
-/

namespace A385107.P13804366961736081381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (A042948 (2 * (n + 2)) - 1).toNat

end

end A385107.P13804366961736081381

namespace A385107

/-- `A124789(A042948(2*(n+2))-1)` -/
def P13804366961736081381.Spec : Prop :=
  ∀ n, P13804366961736081381.a n = A385107 (n + 1)

end A385107

/-! ## A385107.P8477581670357032144

`A392489(2*n+1)+A392489(2*n)`
-/

namespace A385107.P8477581670357032144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392489 (2 * n + 1) + A392489 (2 * n)

end

end A385107.P8477581670357032144

namespace A385107

/-- `A392489(2*n+1)+A392489(2*n)` -/
def P8477581670357032144.Spec : Prop :=
  ∀ n, P8477581670357032144.a n = A385107 (n + 1)

end A385107

/-! ## A385107.P8295650829394148898

`Δ[A124789(4*(n+2))]`
-/

namespace A385107.P8295650829394148898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (4 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385107.P8295650829394148898

namespace A385107

/-- `Δ[A124789(4*(n+2))]` -/
def P8295650829394148898.Spec : Prop :=
  ∀ n, P8295650829394148898.a n = A385107 (n + 1)

end A385107

/-!
# A385108: Triangle a(n,k) read by antidiagonals: a(n,k) is the number of dots in the k-augmented centered triangle of order n, k>=0, n>=1.

The programs for A385108, the canonical program `A385108.P4617157348366069827` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385108 has offset 1).

The definition of A385108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385108.P4617157348366069827

`A033436(A376102(n))+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A385108

/-- `A033436(A376102(n))+1` -/
def P4617157348366069827.Spec : Prop :=
  ∀ n, P4617157348366069827.a n = A385108 (n + 1)

theorem P4617157348366069827.correct : P4617157348366069827.Spec := by
  intro n
  simp only [A385108, Nat.add_sub_cancel]

end A385108

/-!
# A385109: If n is 5 (mod 8) then apply n = (n-1)/4 until the result is not equivalent 5 (mod 8); otherwise a(n) = n.

The programs for A385109, the canonical program `A385109.P2569086919831927014` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385109 has offset 0).

The definition of A385109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385109.P11004638406084910552

`A005408(A350091(2*n))%A047239(n+1)`
-/

namespace A385109.P11004638406084910552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A350091 (2 * n)).toNat) (A047239 (n + 1))

end

end A385109.P11004638406084910552

namespace A385109

/-- `A005408(A350091(2*n))%A047239(n+1)` -/
def P11004638406084910552.Spec : Prop :=
  ∀ n, P11004638406084910552.a n = A385109 n

end A385109

/-! ## A385109.P11077623539106964866

`A347840(A005408(n))%A047239(n+1)`
-/

namespace A385109.P11077623539106964866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347840 (A005408 n).toNat) (A047239 (n + 1))

end

end A385109.P11077623539106964866

namespace A385109

/-- `A347840(A005408(n))%A047239(n+1)` -/
def P11077623539106964866.Spec : Prop :=
  ∀ n, P11077623539106964866.a n = A385109 n

end A385109

/-! ## A385109.P2569086919831927014

`n%A259445(3*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A385109

/-- `n%A259445(3*n+1)` -/
def P2569086919831927014.Spec : Prop :=
  ∀ n, P2569086919831927014.a n = A385109 n

theorem P2569086919831927014.correct : P2569086919831927014.Spec := by
  intro n
  simp only [A385109]

end A385109

/-! ## A385109.P12013931366262953892

`n%A004277(A067745(n+1))`
-/

namespace A385109.P12013931366262953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A004277 (A067745 (n + 1)).toNat)

end

end A385109.P12013931366262953892

namespace A385109

/-- `n%A004277(A067745(n+1))` -/
def P12013931366262953892.Spec : Prop :=
  ∀ n, P12013931366262953892.a n = A385109 n

end A385109

/-! ## A385109.P10091252757130435961

`A347840(2*n+1)%A076118(A001651(3*n+1))`
-/

namespace A385109.P10091252757130435961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347840 (2 * n + 1)) (A076118 (A001651 (3 * n + 1)).toNat)

end

end A385109.P10091252757130435961

namespace A385109

/-- `A347840(2*n+1)%A076118(A001651(3*n+1))` -/
def P10091252757130435961.Spec : Prop :=
  ∀ n, P10091252757130435961.a n = A385109 n

end A385109

/-!
# A385111: Triangle read by rows: T(n,k) is the least cardinality of a set of binary strings of length k such that any binary string of length n contains one of the strings in the set as a substring; 0 <= k <= n.

The programs for A385111, there is no canonical definition to state claims against.
-/

/-! ## A385111.P11777199909993899474

`A004526(A217839(n+1))%A186558(2*n+1)`
-/

namespace A385111.P11777199909993899474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A217839 (n + 1)).toNat) (A186558 (2 * n + 1))

end

end A385111.P11777199909993899474

/-! ## A385111.P16014573421963742924

`A059893(A141539(n)%A348483(3*n+5))`
-/

namespace A385111.P16014573421963742924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (Int.tmod (A141539 n) (A348483 (3 * n + 5))).toNat

end

end A385111.P16014573421963742924

/-! ## A385111.P11663230655315309780

`A059893(A141539(n))%A103172(n+4)`
-/

namespace A385111.P11663230655315309780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (A141539 n).toNat) (A103172 (n + 4))

end

end A385111.P11663230655315309780

/-! ## A385111.P16610728790878349608

`A111850(A307393(n))`
-/

namespace A385111.P16610728790878349608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A307393 n).toNat

end

end A385111.P16610728790878349608

/-! ## A385111.P13046545638463168789

`A283367(A143453(n))`
-/

namespace A385111.P13046545638463168789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283367 (A143453 n).toNat

end

end A385111.P13046545638463168789

/-!
# A385112: Powers of superprimorials that are not powers of 2.

The programs for A385112, there is no canonical definition to state claims against.
-/

/-! ## A385112.P16962681967067763451

`∩[A364710(n+1), A368507(n+1)]`
-/

namespace A385112.P16962681967067763451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385112.P16962681967067763451

/-! ## A385112.P9197096382706138290

`filter[A368507(n+1), A294936(#)]`
-/

namespace A385112.P9197096382706138290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A385112.P9197096382706138290

/-!
# A385113: a(1) = 0, a(n) = 1 + 2*[omega(n) > 1] + [bigomega(n) > omega(n)], Iverson brackets, where omega = A001221 and bigomega = A001222.

The programs for A385113, the canonical program `A385113.P9615886296806253472` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385113 has offset 1).

The definition of A385113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385113.P2964325515781928830

`A389905(n+1)+A389146(n+1)`
-/

namespace A385113.P2964325515781928830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389905 (n + 1) + A389146 (n + 1)

end

end A385113.P2964325515781928830

namespace A385113

/-- `A389905(n+1)+A389146(n+1)` -/
def P2964325515781928830.Spec : Prop :=
  ∀ n, P2964325515781928830.a n = A385113 (n + 1)

end A385113

/-! ## A385113.P9615886296806253472

`A106469(A309307(n+1))-A008966(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A385113

/-- `A106469(A309307(n+1))-A008966(n+1)` -/
def P9615886296806253472.Spec : Prop :=
  ∀ n, P9615886296806253472.a n = A385113 (n + 1)

theorem P9615886296806253472.correct : P9615886296806253472.Spec := by
  intro n
  simp only [A385113, Nat.add_sub_cancel]

end A385113

/-! ## A385113.P3961239539831205304

`A389146(A066638(n+1))`
-/

namespace A385113.P3961239539831205304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 (A066638 (n + 1)).toNat

end

end A385113.P3961239539831205304

namespace A385113

/-- `A389146(A066638(n+1))` -/
def P3961239539831205304.Spec : Prop :=
  ∀ n, P3961239539831205304.a n = A385113 (n + 1)

end A385113

/-! ## A385113.P17888981150669175189

`A389146(A285769(n+1))`
-/

namespace A385113.P17888981150669175189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 (A285769 (n + 1)).toNat

end

end A385113.P17888981150669175189

namespace A385113

/-- `A389146(A285769(n+1))` -/
def P17888981150669175189.Spec : Prop :=
  ∀ n, P17888981150669175189.a n = A385113 (n + 1)

end A385113

/-! ## A385113.P15730854589408125875

`A323014(A076078(n+1)^A353786(n+1))`
-/

namespace A385113.P15730854589408125875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (SequenceMachineLib.roundAway ((A076078 (n + 1) : ℚ) ^ (A353786 (n + 1) : ℤ))).toNat

end

end A385113.P15730854589408125875

namespace A385113

/-- `A323014(A076078(n+1)^A353786(n+1))` -/
def P15730854589408125875.Spec : Prop :=
  ∀ n, P15730854589408125875.a n = A385113 (n + 1)

end A385113

/-!
# A385116: Take the natural numbers, erase all occurrences of the digit "0," and shift all remaining digits leftward without changing the position of commas.

The programs for A385116, there is no canonical definition to state claims against.
-/

/-! ## A385116.P3199917462216303310

`A265541(A265557(n))+1`
-/

namespace A385116.P3199917462216303310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A265557 n).toNat + 1

end

end A385116.P3199917462216303310

/-! ## A385116.P11592772187318472582

`A338829(n)+A333254(A336140(n))`
-/

namespace A385116.P11592772187318472582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 n + A333254 (A336140 n).toNat

end

end A385116.P11592772187318472582

/-! ## A385116.P17862874350868139488

`A351563(A259180(n+1))+A265556(n)`
-/

namespace A385116.P17862874350868139488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (A259180 (n + 1)).toNat + A265556 n

end

end A385116.P17862874350868139488

/-! ## A385116.P10174361711105420889

`A265556(n)+A204697(A133900(n+5))`
-/

namespace A385116.P10174361711105420889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n + A204697 (A133900 (n + 5)).toNat

end

end A385116.P10174361711105420889

/-! ## A385116.P15673974199131281827

`A265556(n)-A057428(A276181(2*n+5))`
-/

namespace A385116.P15673974199131281827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n - A057428 (A276181 (2 * n + 5)).toNat

end

end A385116.P15673974199131281827

/-!
# A385117: G.f. A(x) satisfies A(x) = 1 + 9*x*A(x)^(2/3).

The programs for A385117, there is no canonical definition to state claims against.
-/

/-! ## A385117.P5685379749553093933

`A000005(A061742(n))*A022304(n)`
-/

namespace A385117.P5685379749553093933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061742 n).toNat * A022304 n

end

end A385117.P5685379749553093933

/-!
# A385120: Number of fixed tree-like polyedges on the square lattice with n edges, rooted at a vertex.

The programs for A385120, there is no canonical definition to state claims against.
-/

/-! ## A385120.P14130465613104168966

`A308409(n)*(n+1)`
-/

namespace A385120.P14130465613104168966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308409 n * (n + 1 : ℤ)

end

end A385120.P14130465613104168966

/-! ## A385120.P9541490940578657197

`(n+1)*A308409(n)`
-/

namespace A385120.P9541490940578657197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308409 n

end

end A385120.P9541490940578657197

/-!
# A385121: a(n+1) = 12*a(n) - a(n-1), a(0) = a(1) = 2, a(n) = a(1-n).

The programs for A385121, the canonical program `A385121.P7747440615414836135` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385121 has offset 0).

The definition of A385121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385121.P2969871260218131183

`ogf((2-22x)/(1-12x+x^2))`
-/

namespace A385121.P2969871260218131183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -22] [1, -12, 1] n

end

end A385121.P2969871260218131183

namespace A385121

/-- `ogf((2-22x)/(1-12x+x^2))` -/
def P2969871260218131183.Spec : Prop :=
  ∀ n, P2969871260218131183.a n = A385121 n

end A385121

/-! ## A385121.P7747440615414836135

`12*a(n-1)-a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385121

/-- `12*a(n-1)-a(n-2)` -/
def P7747440615414836135.Spec : Prop :=
  ∀ n, P7747440615414836135.a n = A385121 n

theorem P7747440615414836135.correct : P7747440615414836135.Spec := by
  intro n
  simp only [A385121]

end A385121

/-! ## A385121.P18162217798806186896

`2*A041059(A004275(n))`
-/

namespace A385121.P18162217798806186896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041059 (A004275 n).toNat

end

end A385121.P18162217798806186896

namespace A385121

/-- `2*A041059(A004275(n))` -/
def P18162217798806186896.Spec : Prop :=
  ∀ n, P18162217798806186896.a n = A385121 n

end A385121

/-! ## A385121.P16157062451100481

`(a(n-1)²+40)/a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A385121.P16157062451100481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (a (n - 1) ^ 2 + 40) / a (n - 2)

end

end A385121.P16157062451100481

namespace A385121

/-- `(a(n-1)²+40)/a(n-2)` -/
def P16157062451100481.Spec : Prop :=
  ∀ n, P16157062451100481.a n = (A385121 n : ℚ)

end A385121

/-!
# A385122: a(n) = d(phi(n)) - phi(d(n)) where d(n) = A000005(n) is the number of divisors and phi(n) = A000010(n) is the Euler totient function.

The programs for A385122, the canonical program `A385122.P7971090258386335497` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385122 has offset 1).

The definition of A385122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385122.P7971090258386335497

`A062821(n+1)-A163109(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385122

/-- `A062821(n+1)-A163109(n+1)` -/
def P7971090258386335497.Spec : Prop :=
  ∀ n, P7971090258386335497.a n = A385122 (n + 1)

theorem P7971090258386335497.correct : P7971090258386335497.Spec := by
  intro n
  simp only [A385122, Nat.add_sub_cancel]

end A385122

/-! ## A385122.P883934657248381848

`A000005(A000010(n+1))-A000010(A000005(n+1))`
-/

namespace A385122.P883934657248381848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat - A000010 (A000005 (n + 1)).toNat

end

end A385122.P883934657248381848

namespace A385122

/-- `A000005(A000010(n+1))-A000010(A000005(n+1))` -/
def P883934657248381848.Spec : Prop :=
  ∀ n, P883934657248381848.a n = A385122 (n + 1)

end A385122

/-! ## A385122.P10360447427177501741

`A062821(n+1)-A000010(∏{e}[n+1, #+1])`
-/

namespace A385122.P10360447427177501741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A000010 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A385122.P10360447427177501741

namespace A385122

/-- `A062821(n+1)-A000010(∏{e}[n+1, #+1])` -/
def P10360447427177501741.Spec : Prop :=
  ∀ n, P10360447427177501741.a n = A385122 (n + 1)

end A385122

/-! ## A385122.P4033805083780157184

`A062821(n+1)-A000010(A000005(n+1))`
-/

namespace A385122.P4033805083780157184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A000010 (A000005 (n + 1)).toNat

end

end A385122.P4033805083780157184

namespace A385122

/-- `A062821(n+1)-A000010(A000005(n+1))` -/
def P4033805083780157184.Spec : Prop :=
  ∀ n, P4033805083780157184.a n = A385122 (n + 1)

end A385122

/-! ## A385122.P2573196662425516001

`A000005(A000010(n+1))-A163109(n+1)`
-/

namespace A385122.P2573196662425516001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat - A163109 (n + 1)

end

end A385122.P2573196662425516001

namespace A385122

/-- `A000005(A000010(n+1))-A163109(n+1)` -/
def P2573196662425516001.Spec : Prop :=
  ∀ n, P2573196662425516001.a n = A385122 (n + 1)

end A385122

/-!
# A385124: Numbers k such that there are exactly 7 primes between 30*k and 30*k+30.

The programs for A385124, there is no canonical definition to state claims against.
-/

/-! ## A385124.P10993456445383225728

`eq[7, A098592(n)]`
-/

namespace A385124.P10993456445383225728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385124.P10993456445383225728

/-! ## A385124.P17420464046952251639

`lt[A025280(n+1), A158116(A098592(n))]`
-/

namespace A385124.P17420464046952251639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158116 (A098592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385124.P17420464046952251639

/-! ## A385124.P21985255156458114

`lt[A101296(n+1), A093101(A098592(n))]`
-/

namespace A385124.P21985255156458114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (A098592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385124.P21985255156458114

/-!
# A385125: Number of rooted ordered trees with n non-root nodes all labeled with numbers greater than 0 such that the labels of all groups of sibling nodes cover the same initial interval.

The programs for A385125, there is no canonical definition to state claims against.
-/

/-! ## A385125.P9123702370282009818

`A277814(A007559(n))`
-/

namespace A385125.P9123702370282009818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277814 (A007559 n).toNat

end

end A385125.P9123702370282009818

/-!
# A385126: Hereditarily evil prime powers: numbers of the form p^k where p is prime and p^j is evil for 1 <= j <= k.

The programs for A385126, the canonical program `A385126.P17427846659983412721` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385126 has offset 1).

The definition of A385126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385126.P17427846659983412721

`∩[A093688(n+1), A128603(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A385126

/-- `∩[A093688(n+1), A128603(n+1)]` -/
def P17427846659983412721.Spec : Prop :=
  ∀ n, (P17427846659983412721.a n : ℤ) = A385126 (n + 1)

theorem P17427846659983412721.correct : P17427846659983412721.Spec := by
  intro n
  simp only [A385126, Nat.add_sub_cancel]

end A385126

/-! ## A385126.P17833571237668187045

`∩[A093688(n+1), A283262(n+1)]`
-/

namespace A385126.P17833571237668187045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P17833571237668187045

namespace A385126

/-- `∩[A093688(n+1), A283262(n+1)]` -/
def P17833571237668187045.Spec : Prop :=
  ∀ n, (P17833571237668187045.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P4427183737636272253

`∩[A093688(n+1), A096165(n+1)]`
-/

namespace A385126.P4427183737636272253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P4427183737636272253

namespace A385126

/-- `∩[A093688(n+1), A096165(n+1)]` -/
def P4427183737636272253.Spec : Prop :=
  ∀ n, (P4427183737636272253.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P7762476738644075952

`∩[A093688(n+1), A185189(n+1)]`
-/

namespace A385126.P7762476738644075952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P7762476738644075952

namespace A385126

/-- `∩[A093688(n+1), A185189(n+1)]` -/
def P7762476738644075952.Spec : Prop :=
  ∀ n, (P7762476738644075952.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P11658932884954839257

`∩[A093688(n+1), A246655(n+1)]`
-/

namespace A385126.P11658932884954839257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P11658932884954839257

namespace A385126

/-- `∩[A093688(n+1), A246655(n+1)]` -/
def P11658932884954839257.Spec : Prop :=
  ∀ n, (P11658932884954839257.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P11474394657619362499

`filter[A093688(n+1), A069513(#)]`
-/

namespace A385126.P11474394657619362499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A385126.P11474394657619362499

namespace A385126

/-- `filter[A093688(n+1), A069513(#)]` -/
def P11474394657619362499.Spec : Prop :=
  ∀ n, P11474394657619362499.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P13393029327058348586

`filter[A093688(n+2), A354923(#)]`
-/

namespace A385126.P13393029327058348586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A385126.P13393029327058348586

namespace A385126

/-- `filter[A093688(n+2), A354923(#)]` -/
def P13393029327058348586.Spec : Prop :=
  ∀ n, P13393029327058348586.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P5059895578980592259

`filter[A093688(n+2), A354924(#)]`
-/

namespace A385126.P5059895578980592259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A385126.P5059895578980592259

namespace A385126

/-- `filter[A093688(n+2), A354924(#)]` -/
def P5059895578980592259.Spec : Prop :=
  ∀ n, P5059895578980592259.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P4864156399253561267

`∩[A071139(n+1), A093688(n+1)]`
-/

namespace A385126.P4864156399253561267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P4864156399253561267

namespace A385126

/-- `∩[A071139(n+1), A093688(n+1)]` -/
def P4864156399253561267.Spec : Prop :=
  ∀ n, (P4864156399253561267.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P14466896070010065143

`filter[A093688(n+1), A211487(#)]`
-/

namespace A385126.P14466896070010065143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A385126.P14466896070010065143

namespace A385126

/-- `filter[A093688(n+1), A211487(#)]` -/
def P14466896070010065143.Spec : Prop :=
  ∀ n, P14466896070010065143.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P17202904918847771307

`filter[A093688(n+1), A340373(#)]`
-/

namespace A385126.P17202904918847771307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A385126.P17202904918847771307

namespace A385126

/-- `filter[A093688(n+1), A340373(#)]` -/
def P17202904918847771307.Spec : Prop :=
  ∀ n, P17202904918847771307.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P15317437674642531328

`filter[A093688(n+2), A340363(#)]`
-/

namespace A385126.P15317437674642531328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A385126.P15317437674642531328

namespace A385126

/-- `filter[A093688(n+2), A340363(#)]` -/
def P15317437674642531328.Spec : Prop :=
  ∀ n, P15317437674642531328.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P15765177254635001382

`filter[A093688(n+2), A345950(#)]`
-/

namespace A385126.P15765177254635001382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A385126.P15765177254635001382

namespace A385126

/-- `filter[A093688(n+2), A345950(#)]` -/
def P15765177254635001382.Spec : Prop :=
  ∀ n, P15765177254635001382.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P11649508374717027437

`∩[A093688(n+1), A336101(n+1)]`
-/

namespace A385126.P11649508374717027437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P11649508374717027437

namespace A385126

/-- `∩[A093688(n+1), A336101(n+1)]` -/
def P11649508374717027437.Spec : Prop :=
  ∀ n, (P11649508374717027437.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P2862658392793955569

`∩[A070776(n+1), A093688(n+1)]`
-/

namespace A385126.P2862658392793955569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P2862658392793955569

namespace A385126

/-- `∩[A070776(n+1), A093688(n+1)]` -/
def P2862658392793955569.Spec : Prop :=
  ∀ n, (P2862658392793955569.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P17664474166142453192

`∩[A093688(n+1), A319151(n+1)]`
-/

namespace A385126.P17664474166142453192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P17664474166142453192

namespace A385126

/-- `∩[A093688(n+1), A319151(n+1)]` -/
def P17664474166142453192.Spec : Prop :=
  ∀ n, (P17664474166142453192.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P9460489377831768843

`filter[A237417(n+1), A069513(#)]`
-/

namespace A385126.P9460489377831768843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A385126.P9460489377831768843

namespace A385126

/-- `filter[A237417(n+1), A069513(#)]` -/
def P9460489377831768843.Spec : Prop :=
  ∀ n, P9460489377831768843.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P878518397534904145

`filter[A237417(n+1), A345950(#)]`
-/

namespace A385126.P878518397534904145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A385126.P878518397534904145

namespace A385126

/-- `filter[A237417(n+1), A345950(#)]` -/
def P878518397534904145.Spec : Prop :=
  ∀ n, P878518397534904145.a n = A385126 (n + 1)

end A385126

/-! ## A385126.P11014992106154890298

`∩[A237417(n+1), A061345(n)]`
-/

namespace A385126.P11014992106154890298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P11014992106154890298

namespace A385126

/-- `∩[A237417(n+1), A061345(n)]` -/
def P11014992106154890298.Spec : Prop :=
  ∀ n, (P11014992106154890298.a n : ℤ) = A385126 (n + 1)

end A385126

/-! ## A385126.P610255391598622892

`∩[A000961(n+1), A237417(n+1)]`
-/

namespace A385126.P610255391598622892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385126.P610255391598622892

namespace A385126

/-- `∩[A000961(n+1), A237417(n+1)]` -/
def P610255391598622892.Spec : Prop :=
  ∀ n, (P610255391598622892.a n : ℤ) = A385126 (n + 1)

end A385126

/-!
# A385128: The number of divisors of n whose maximum exponent in their prime factorization is even.

The programs for A385128, the canonical program `A385128.P3222418224828136052` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385128 has offset 1).

The definition of A385128 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385129, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385128.P5021019339873661509

`∑{d}[n+1, 1-A051903(#)%2]`
-/

namespace A385128.P5021019339873661509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - Int.tmod (A051903 d) 2)

end

end A385128.P5021019339873661509

namespace A385128

/-- `∑{d}[n+1, 1-A051903(#)%2]` -/
def P5021019339873661509.Spec : Prop :=
  ∀ n, P5021019339873661509.a n = A385128 (n + 1)

end A385128

/-! ## A385128.P3222418224828136052

`A000005(n+1)-A385129(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A385128

/-- `A000005(n+1)-A385129(n+1)` -/
def P3222418224828136052.Spec : Prop :=
  ∀ n, P3222418224828136052.a n = A385128 (n + 1)

theorem P3222418224828136052.correct : P3222418224828136052.Spec := by
  intro n
  simp only [A385128, Nat.add_sub_cancel]

end A385128

/-! ## A385128.P18253552863621222182

`∑{d}[n+1, A130054(#)*A385132((n+1)/#)]`
-/

namespace A385128.P18253552863621222182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A385132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385128.P18253552863621222182

namespace A385128

/-- `∑{d}[n+1, A130054(#)*A385132((n+1)/#)]` -/
def P18253552863621222182.Spec : Prop :=
  ∀ n, P18253552863621222182.a n = A385128 (n + 1)

end A385128

/-! ## A385128.P10149123595584924218

`A318928(2^A318952(n+1))`
-/

namespace A385128.P10149123595584924218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A318952 (n + 1) : ℤ))).toNat

end

end A385128.P10149123595584924218

namespace A385128

/-- `A318928(2^A318952(n+1))` -/
def P10149123595584924218.Spec : Prop :=
  ∀ n, P10149123595584924218.a n = A385128 (n + 1)

end A385128

/-! ## A385128.P15627966870568924812

`A237271(A331023(n+1)!+1)`
-/

namespace A385128.P15627966870568924812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (Nat.factorial (A331023 (n + 1)).toNat + 1)

end

end A385128.P15627966870568924812

namespace A385128

/-- `A237271(A331023(n+1)!+1)` -/
def P15627966870568924812.Spec : Prop :=
  ∀ n, P15627966870568924812.a n = A385128 (n + 1)

end A385128

/-!
# A385129: The number of divisors of n whose maximum exponent in their prime factorization is odd.

The programs for A385129, the canonical program `A385129.P11656046538311212658` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385129 has offset 1).

The definition of A385129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385129.P11656046538311212658

`∑{d}[n+1, A051903(#)%2]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A385129

/-- `∑{d}[n+1, A051903(#)%2]` -/
def P11656046538311212658.Spec : Prop :=
  ∀ n, P11656046538311212658.a n = A385129 (n + 1)

theorem P11656046538311212658.correct : P11656046538311212658.Spec := by
  intro n
  simp only [A385129, Nat.add_sub_cancel]

end A385129

/-! ## A385129.P15776720028736818196

`A000005(n+1)-A385128(n+1)`
-/

namespace A385129.P15776720028736818196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A385128 (n + 1)

end

end A385129.P15776720028736818196

namespace A385129

/-- `A000005(n+1)-A385128(n+1)` -/
def P15776720028736818196.Spec : Prop :=
  ∀ n, P15776720028736818196.a n = A385129 (n + 1)

theorem P15776720028736818196.correct : P15776720028736818196.Spec := by
  intro n
  simp only [A385129, Nat.add_sub_cancel, A385129.P15776720028736818196.a, A385129.P11656046538311212658.f1, A385129.P11656046538311212658.a, A000005, A000005.P16091521709108585461.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A385128, A385128.P3222418224828136052.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A385129

/-! ## A385129.P2695379974345596254

`∑{d}[n+1, A381955(#)]`
-/

namespace A385129.P2695379974345596254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A381955 d

end

end A385129.P2695379974345596254

namespace A385129

/-- `∑{d}[n+1, A381955(#)]` -/
def P2695379974345596254.Spec : Prop :=
  ∀ n, P2695379974345596254.a n = A385129 (n + 1)

end A385129

/-! ## A385129.P10049386215938578094

`∑{d}[n+1, A130054(#)*A385133((n+1)/#)]`
-/

namespace A385129.P10049386215938578094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A385133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385129.P10049386215938578094

namespace A385129

/-- `∑{d}[n+1, A130054(#)*A385133((n+1)/#)]` -/
def P10049386215938578094.Spec : Prop :=
  ∀ n, P10049386215938578094.a n = A385129 (n + 1)

end A385129

/-! ## A385129.P15199182022267259558

`A322483(n+1)-A143355(A001844(n))`
-/

namespace A385129.P15199182022267259558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (n + 1) - A143355 (A001844 n).toNat

end

end A385129.P15199182022267259558

namespace A385129

/-- `A322483(n+1)-A143355(A001844(n))` -/
def P15199182022267259558.Spec : Prop :=
  ∀ n, P15199182022267259558.a n = A385129 (n + 1)

end A385129

/-! ## A385129.P6899596897153631344

`A002113(A322483(n+1))%A206916(n)`
-/

namespace A385129.P6899596897153631344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (A322483 (n + 1)).toNat) (A206916 n)

end

end A385129.P6899596897153631344

namespace A385129

/-- `A002113(A322483(n+1))%A206916(n)` -/
def P6899596897153631344.Spec : Prop :=
  ∀ n, P6899596897153631344.a n = A385129 (n + 1)

end A385129

/-! ## A385129.P18437696914126159127

`A322483(n+1)-A001511(A039833(n+1))`
-/

namespace A385129.P18437696914126159127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (n + 1) - A001511 (A039833 (n + 1)).toNat

end

end A385129.P18437696914126159127

namespace A385129

/-- `A322483(n+1)-A001511(A039833(n+1))` -/
def P18437696914126159127.Spec : Prop :=
  ∀ n, P18437696914126159127.a n = A385129 (n + 1)

end A385129

/-! ## A385129.P16414554380522813303

`∏{e}[n+1, ceil(#/2)+1]-A057427(A138888(n+1))`
-/

namespace A385129.P16414554380522813303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉ + 1) - A057427 (A138888 (n + 1)).toNat

end

end A385129.P16414554380522813303

namespace A385129

/-- `∏{e}[n+1, ceil(#/2)+1]-A057427(A138888(n+1))` -/
def P16414554380522813303.Spec : Prop :=
  ∀ n, P16414554380522813303.a n = A385129 (n + 1)

end A385129

/-! ## A385129.P3123176822928886707

`A029956(∏{e}[n+1, ceil(#/2)+1])%A138888(n+1)`
-/

namespace A385129.P3123176822928886707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029956 (∏ p ∈ Nat.primeFactors (f1 n), (⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉ + 1)).toNat) (A138888 (n + 1))

end

end A385129.P3123176822928886707

namespace A385129

/-- `A029956(∏{e}[n+1, ceil(#/2)+1])%A138888(n+1)` -/
def P3123176822928886707.Spec : Prop :=
  ∀ n, P3123176822928886707.a n = A385129 (n + 1)

end A385129

/-! ## A385129.P13005791663529343359

`A322483(n+1)-A358346(A374458(n+1))`
-/

namespace A385129.P13005791663529343359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (n + 1) - A358346 (A374458 (n + 1)).toNat

end

end A385129.P13005791663529343359

namespace A385129

/-- `A322483(n+1)-A358346(A374458(n+1))` -/
def P13005791663529343359.Spec : Prop :=
  ∀ n, P13005791663529343359.a n = A385129 (n + 1)

end A385129

/-!
# A385130: The sum of divisors of n whose maximum exponent in their prime factorization is even.

The programs for A385130, the canonical program `A385130.P7942154568102987716` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385130 has offset 1).

The definition of A385130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385131, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385130.P8301388545349745631

`∑{d}[n+1, #*(1-A051903(#)%2)]`
-/

namespace A385130.P8301388545349745631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - Int.tmod (A051903 d) 2)

end

end A385130.P8301388545349745631

namespace A385130

/-- `∑{d}[n+1, #*(1-A051903(#)%2)]` -/
def P8301388545349745631.Spec : Prop :=
  ∀ n, P8301388545349745631.a n = A385130 (n + 1)

end A385130

/-! ## A385130.P7942154568102987716

`A000203(n+1)-A385131(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A385130

/-- `A000203(n+1)-A385131(n+1)` -/
def P7942154568102987716.Spec : Prop :=
  ∀ n, P7942154568102987716.a n = A385130 (n + 1)

theorem P7942154568102987716.correct : P7942154568102987716.Spec := by
  intro n
  simp only [A385130, Nat.add_sub_cancel]

end A385130

/-! ## A385130.P13227177383599729300

`A272027(n+1)/3-(A033634(n+1)-A057427(A003586(n+1)))`
-/

namespace A385130.P13227177383599729300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 - (A033634 (n + 1) - A057427 (A003586 (n + 1)).toNat : ℚ)

end

end A385130.P13227177383599729300

namespace A385130

/-- `A272027(n+1)/3-(A033634(n+1)-A057427(A003586(n+1)))` -/
def P13227177383599729300.Spec : Prop :=
  ∀ n, P13227177383599729300.a n = (A385130 (n + 1) : ℚ)

end A385130

/-! ## A385130.P6700402253084934115

`A272027(n+1)/3-(A033634(n+1)-A033630(A033665(3*n)))`
-/

namespace A385130.P6700402253084934115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 - (A033634 (n + 1) - A033630 (A033665 (3 * n)).toNat : ℚ)

end

end A385130.P6700402253084934115

namespace A385130

/-- `A272027(n+1)/3-(A033634(n+1)-A033630(A033665(3*n)))` -/
def P6700402253084934115.Spec : Prop :=
  ∀ n, P6700402253084934115.a n = (A385130 (n + 1) : ℚ)

end A385130

/-! ## A385130.P11705737618358650927

`A272027(n+1)/3-(A033634(n+1)-A362611(A007635(n+1)))`
-/

namespace A385130.P11705737618358650927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 - (A033634 (n + 1) - A362611 (A007635 (n + 1)).toNat : ℚ)

end

end A385130.P11705737618358650927

namespace A385130

/-- `A272027(n+1)/3-(A033634(n+1)-A362611(A007635(n+1)))` -/
def P11705737618358650927.Spec : Prop :=
  ∀ n, P11705737618358650927.a n = (A385130 (n + 1) : ℚ)

end A385130

/-! ## A385130.P6005293620022042719

`A272027(n+1)/3-(A365336((n+1)²)-A061704(A001001(n+1)))`
-/

namespace A385130.P6005293620022042719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 - (A365336 ((n + 1) ^ 2) - A061704 (A001001 (n + 1)).toNat : ℚ)

end

end A385130.P6005293620022042719

namespace A385130

/-- `A272027(n+1)/3-(A365336((n+1)²)-A061704(A001001(n+1)))` -/
def P6005293620022042719.Spec : Prop :=
  ∀ n, P6005293620022042719.a n = (A385130 (n + 1) : ℚ)

end A385130

/-!
# A385131: The sum of divisors of n whose maximum exponent in their prime factorization is odd.

The programs for A385131, the canonical program `A385131.P8764482673539843631` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385131 has offset 1).

The definition of A385131 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385131.P8764482673539843631

`∑{d}[n+1, #*A051903(#)%2]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A385131

/-- `∑{d}[n+1, #*A051903(#)%2]` -/
def P8764482673539843631.Spec : Prop :=
  ∀ n, P8764482673539843631.a n = A385131 (n + 1)

theorem P8764482673539843631.correct : P8764482673539843631.Spec := by
  intro n
  simp only [A385131, Nat.add_sub_cancel]

end A385131

/-! ## A385131.P14196424478368726586

`A000203(n+1)-A385130(n+1)`
-/

namespace A385131.P14196424478368726586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A385130 (n + 1)

end

end A385131.P14196424478368726586

namespace A385131

/-- `A000203(n+1)-A385130(n+1)` -/
def P14196424478368726586.Spec : Prop :=
  ∀ n, P14196424478368726586.a n = A385131 (n + 1)

theorem P14196424478368726586.correct : P14196424478368726586.Spec := by
  intro n
  simp only [A385131, Nat.add_sub_cancel, A385131.P14196424478368726586.a, A385131.P8764482673539843631.f1, A385131.P8764482673539843631.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A385130, A385130.P7942154568102987716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A385131

/-! ## A385131.P16204197689219964714

`∑{d}[n+1, #*A381955(#)]`
-/

namespace A385131.P16204197689219964714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A381955 d

end

end A385131.P16204197689219964714

namespace A385131

/-- `∑{d}[n+1, #*A381955(#)]` -/
def P16204197689219964714.Spec : Prop :=
  ∀ n, P16204197689219964714.a n = A385131 (n + 1)

end A385131

/-! ## A385131.P13078907738875313117

`A033634(n+1)-A057427(A078812(n))`
-/

namespace A385131.P13078907738875313117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (n + 1) - A057427 (A078812 n).toNat

end

end A385131.P13078907738875313117

namespace A385131

/-- `A033634(n+1)-A057427(A078812(n))` -/
def P13078907738875313117.Spec : Prop :=
  ∀ n, P13078907738875313117.a n = A385131 (n + 1)

end A385131

/-! ## A385131.P10535730613960097509

`A033634(n+1)-A004736(A161680(2*n+3))`
-/

namespace A385131.P10535730613960097509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (n + 1) - A004736 (A161680 (2 * n + 3)).toNat

end

end A385131.P10535730613960097509

namespace A385131

/-- `A033634(n+1)-A004736(A161680(2*n+3))` -/
def P10535730613960097509.Spec : Prop :=
  ∀ n, P10535730613960097509.a n = A385131 (n + 1)

end A385131

/-! ## A385131.P12024416944102767741

`(A033634(n+1)-1)%A202667(n+1)`
-/

namespace A385131.P12024416944102767741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033634 (n + 1) - 1) (A202667 (n + 1))

end

end A385131.P12024416944102767741

namespace A385131

/-- `(A033634(n+1)-1)%A202667(n+1)` -/
def P12024416944102767741.Spec : Prop :=
  ∀ n, P12024416944102767741.a n = A385131 (n + 1)

end A385131

/-! ## A385131.P12398590488401050768

`A033634(n+1)-A014963(A181797(n+1))`
-/

namespace A385131.P12398590488401050768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (n + 1) - A014963 (A181797 (n + 1)).toNat

end

end A385131.P12398590488401050768

namespace A385131

/-- `A033634(n+1)-A014963(A181797(n+1))` -/
def P12398590488401050768.Spec : Prop :=
  ∀ n, P12398590488401050768.a n = A385131 (n + 1)

end A385131

/-! ## A385131.P11068339560749552531

`A033634(n+1)-A131821(A001105(n+2))`
-/

namespace A385131.P11068339560749552531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (n + 1) - A131821 (A001105 (n + 2)).toNat

end

end A385131.P11068339560749552531

namespace A385131

/-- `A033634(n+1)-A131821(A001105(n+2))` -/
def P11068339560749552531.Spec : Prop :=
  ∀ n, P11068339560749552531.a n = A385131 (n + 1)

end A385131

/-! ## A385131.P10171475677172927992

`A033634(n+1)-A309892(A081256(2*n+1))`
-/

namespace A385131.P10171475677172927992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (n + 1) - A309892 (A081256 (2 * n + 1)).toNat

end

end A385131.P10171475677172927992

namespace A385131

/-- `A033634(n+1)-A309892(A081256(2*n+1))` -/
def P10171475677172927992.Spec : Prop :=
  ∀ n, P10171475677172927992.a n = A385131 (n + 1)

end A385131

/-! ## A385131.P2386145464157307583

`A033634(n+1)-A258257(A000217(2*(n+2)))`
-/

namespace A385131.P2386145464157307583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (n + 1) - A258257 (A000217 (2 * (n + 2))).toNat

end

end A385131.P2386145464157307583

namespace A385131

/-- `A033634(n+1)-A258257(A000217(2*(n+2)))` -/
def P2386145464157307583.Spec : Prop :=
  ∀ n, P2386145464157307583.a n = A385131 (n + 1)

end A385131

/-!
# A385132: The number of integers k from 1 to n such that gcd(n, k) has an even maximum exponent in its prime factorization.

The programs for A385132, the canonical program `A385132.P10498133729348376008` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385132 has offset 1).

The definition of A385132 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385132.P10498133729348376008

`n+1-A385133(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A385132

/-- `n+1-A385133(n+1)` -/
def P10498133729348376008.Spec : Prop :=
  ∀ n, P10498133729348376008.a n = A385132 (n + 1)

theorem P10498133729348376008.correct : P10498133729348376008.Spec := by
  intro n
  simp only [A385132, Nat.add_sub_cancel]

end A385132

/-! ## A385132.P16655574662020749733

`∑{#}[n, 1-A051903(gcd(n+1, #+1))%2]`
-/

namespace A385132.P16655574662020749733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 - Int.tmod (A051903 (Nat.gcd (n + 1) (k + 1))) 2)

end

end A385132.P16655574662020749733

namespace A385132

/-- `∑{#}[n, 1-A051903(gcd(n+1, #+1))%2]` -/
def P16655574662020749733.Spec : Prop :=
  ∀ n, P16655574662020749733.a n = A385132 (n + 1)

end A385132

/-! ## A385132.P12602413847510166302

`A373973(A172317(n))+A206369(n+1)`
-/

namespace A385132.P12602413847510166302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373973 (A172317 n).toNat + A206369 (n + 1)

end

end A385132.P12602413847510166302

namespace A385132

/-- `A373973(A172317(n))+A206369(n+1)` -/
def P12602413847510166302.Spec : Prop :=
  ∀ n, P12602413847510166302.a n = A385132 (n + 1)

end A385132

/-! ## A385132.P8186600499717597311

`or(A206369(n+1), A266716(A000079(n)))`
-/

namespace A385132.P8186600499717597311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A206369 (n + 1)) (A266716 (A000079 n).toNat)

end

end A385132.P8186600499717597311

namespace A385132

/-- `or(A206369(n+1), A266716(A000079(n)))` -/
def P8186600499717597311.Spec : Prop :=
  ∀ n, P8186600499717597311.a n = A385132 (n + 1)

end A385132

/-! ## A385132.P16187257927912046854

`A206369(n+1)+A025465(A172317(n+2))`
-/

namespace A385132.P16187257927912046854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 1) + A025465 (A172317 (n + 2)).toNat

end

end A385132.P16187257927912046854

namespace A385132

/-- `A206369(n+1)+A025465(A172317(n+2))` -/
def P16187257927912046854.Spec : Prop :=
  ∀ n, P16187257927912046854.a n = A385132 (n + 1)

end A385132

/-!
# A385133: The number of integers k from 1 to n such that gcd(n, k) has an odd maximum exponent in its prime factorization.

The programs for A385133, the canonical program `A385133.P14831130415972611969` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385133 has offset 1).

The definition of A385133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385133.P1111628795589885096

`n+1-A385132(n+1)`
-/

namespace A385133.P1111628795589885096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A385132 (n + 1)

end

end A385133.P1111628795589885096

namespace A385133

/-- `n+1-A385132(n+1)` -/
def P1111628795589885096.Spec : Prop :=
  ∀ n, P1111628795589885096.a n = A385133 (n + 1)

theorem P1111628795589885096.correct : P1111628795589885096.Spec := by
  intro n
  simp only [A385133, Nat.add_sub_cancel, A385133.P1111628795589885096.a, A385133.P14831130415972611969.f1, A385133.P14831130415972611969.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A385132, A385132.P10498133729348376008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A385133

/-! ## A385133.P14831130415972611969

`∑{#}[n, A051903(gcd(n+1, #+1))%2]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A385133

/-- `∑{#}[n, A051903(gcd(n+1, #+1))%2]` -/
def P14831130415972611969.Spec : Prop :=
  ∀ n, P14831130415972611969.a n = A385133 (n + 1)

theorem P14831130415972611969.correct : P14831130415972611969.Spec := by
  intro n
  simp only [A385133, Nat.add_sub_cancel]

end A385133

/-! ## A385133.P8884467150607010099

`∑{d}[n+1, A000010(#)*A381955((n+1)/#)]`
-/

namespace A385133.P8884467150607010099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A381955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385133.P8884467150607010099

namespace A385133

/-- `∑{d}[n+1, A000010(#)*A381955((n+1)/#)]` -/
def P8884467150607010099.Spec : Prop :=
  ∀ n, P8884467150607010099.a n = A385133 (n + 1)

end A385133

/-! ## A385133.P4245100770215403355

`A296074(n+1)-A363131(A218196(2*(n+1)))`
-/

namespace A385133.P4245100770215403355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296074 (n + 1) - A363131 (A218196 (2 * (n + 1))).toNat

end

end A385133.P4245100770215403355

namespace A385133

/-- `A296074(n+1)-A363131(A218196(2*(n+1)))` -/
def P4245100770215403355.Spec : Prop :=
  ∀ n, P4245100770215403355.a n = A385133 (n + 1)

end A385133

/-! ## A385133.P4366926251218057020

`A342001(n+1)-A342001(A344592(n+1))`
-/

namespace A385133.P4366926251218057020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) - A342001 (A344592 (n + 1)).toNat

end

end A385133.P4366926251218057020

namespace A385133

/-- `A342001(n+1)-A342001(A344592(n+1))` -/
def P4366926251218057020.Spec : Prop :=
  ∀ n, P4366926251218057020.a n = A385133 (n + 1)

end A385133

/-!
# A385134: The sum of divisors d of n such that n/d is a biquadratefree number (A046100).

The programs for A385134, the canonical program `A385134.P5150424696469773070` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385134 has offset 1).

The definition of A385134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385134.P5150424696469773070

`(n+1)*∑{d}[n+1, A307430(#)/#]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A385134

/-- `(n+1)*∑{d}[n+1, A307430(#)/#]` -/
def P5150424696469773070.Spec : Prop :=
  ∀ n, P5150424696469773070.a n = (A385134 (n + 1) : ℚ)

end A385134

/-! ## A385134.P13706302186625206475

`A062379(n+1)*A385006(n+1)`
-/

namespace A385134.P13706302186625206475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (n + 1) * A385006 (n + 1)

end

end A385134.P13706302186625206475

namespace A385134

/-- `A062379(n+1)*A385006(n+1)` -/
def P13706302186625206475.Spec : Prop :=
  ∀ n, P13706302186625206475.a n = A385134 (n + 1)

end A385134

/-! ## A385134.P1375483045794873093

`∑{d}[n+1, A001615(#)*A227291((n+1)/#)]`
-/

namespace A385134.P1375483045794873093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P1375483045794873093

namespace A385134

/-- `∑{d}[n+1, A001615(#)*A227291((n+1)/#)]` -/
def P1375483045794873093.Spec : Prop :=
  ∀ n, P1375483045794873093.a n = A385134 (n + 1)

end A385134

/-! ## A385134.P17130321930511577597

`∑{d}[n+1, A000010(#)*A252505((n+1)/#)]`
-/

namespace A385134.P17130321930511577597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A252505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P17130321930511577597

namespace A385134

/-- `∑{d}[n+1, A000010(#)*A252505((n+1)/#)]` -/
def P17130321930511577597.Spec : Prop :=
  ∀ n, P17130321930511577597.a n = A385134 (n + 1)

end A385134

/-! ## A385134.P6252950212908379649

`∑{d}[n+1, A007432(#)*A286779((n+1)/#)]`
-/

namespace A385134.P6252950212908379649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A286779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P6252950212908379649

namespace A385134

/-- `∑{d}[n+1, A007432(#)*A286779((n+1)/#)]` -/
def P6252950212908379649.Spec : Prop :=
  ∀ n, P6252950212908379649.a n = A385134 (n + 1)

end A385134

/-! ## A385134.P7757018746636396573

`∑{d}[n+1, A063659(#)*A323308((n+1)/#)]`
-/

namespace A385134.P7757018746636396573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A323308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P7757018746636396573

namespace A385134

/-- `∑{d}[n+1, A063659(#)*A323308((n+1)/#)]` -/
def P7757018746636396573.Spec : Prop :=
  ∀ n, P7757018746636396573.a n = A385134 (n + 1)

end A385134

/-! ## A385134.P9198461745592881966

`∑{d}[n+1, A060648(#)*A363552((n+1)/#)]`
-/

namespace A385134.P9198461745592881966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A363552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P9198461745592881966

namespace A385134

/-- `∑{d}[n+1, A060648(#)*A363552((n+1)/#)]` -/
def P9198461745592881966.Spec : Prop :=
  ∀ n, P9198461745592881966.a n = A385134 (n + 1)

end A385134

/-! ## A385134.P17499568471348855564

`∑{d}[n+1, A130107(#)*A322327((n+1)/#)]`
-/

namespace A385134.P17499568471348855564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A322327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P17499568471348855564

namespace A385134

/-- `∑{d}[n+1, A130107(#)*A322327((n+1)/#)]` -/
def P17499568471348855564.Spec : Prop :=
  ∀ n, P17499568471348855564.a n = A385134 (n + 1)

end A385134

/-! ## A385134.P17916253107453803211

`∑{d}[n+1, A254926(#)*A380395((n+1)/#)]`
-/

namespace A385134.P17916253107453803211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254926 d * A380395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P17916253107453803211

namespace A385134

/-- `∑{d}[n+1, A254926(#)*A380395((n+1)/#)]` -/
def P17916253107453803211.Spec : Prop :=
  ∀ n, P17916253107453803211.a n = A385134 (n + 1)

end A385134

/-!
# A385135: The sum of divisors d of n such that n/d is an exponentially odd number (A268335).

The programs for A385135, the canonical program `A385135.P2610461928447885844` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385135 has offset 1).

The definition of A385135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385135.P2775012450440344608

`∑{d}[n+1, A384041(#)]`
-/

namespace A385135.P2775012450440344608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384041 d

end

end A385135.P2775012450440344608

namespace A385135

/-- `∑{d}[n+1, A384041(#)]` -/
def P2775012450440344608.Spec : Prop :=
  ∀ n, P2775012450440344608.a n = A385135 (n + 1)

end A385135

/-! ## A385135.P2610461928447885844

`∑{d}[n+1, #*A295316((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385135

/-- `∑{d}[n+1, #*A295316((n+1)/#)]` -/
def P2610461928447885844.Spec : Prop :=
  ∀ n, P2610461928447885844.a n = A385135 (n + 1)

theorem P2610461928447885844.correct : P2610461928447885844.Spec := by
  intro n
  simp only [A385135, Nat.add_sub_cancel]

end A385135

/-! ## A385135.P13468761042287344972

`∑{d}[n+1, A056671(#)*A206369((n+1)/#)]`
-/

namespace A385135.P13468761042287344972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056671 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385135.P13468761042287344972

namespace A385135

/-- `∑{d}[n+1, A056671(#)*A206369((n+1)/#)]` -/
def P13468761042287344972.Spec : Prop :=
  ∀ n, P13468761042287344972.a n = A385135 (n + 1)

end A385135

/-! ## A385135.P15167720417430361440

`∑{d}[n+1, A076752(#)*A189021((n+1)/#)]`
-/

namespace A385135.P15167720417430361440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A189021 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385135.P15167720417430361440

namespace A385135

/-- `∑{d}[n+1, A076752(#)*A189021((n+1)/#)]` -/
def P15167720417430361440.Spec : Prop :=
  ∀ n, P15167720417430361440.a n = A385135 (n + 1)

end A385135

/-! ## A385135.P14680534437214353881

`∑{d}[n+1, A000010(#)*A322483((n+1)/#)]`
-/

namespace A385135.P14680534437214353881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385135.P14680534437214353881

namespace A385135

/-- `∑{d}[n+1, A000010(#)*A322483((n+1)/#)]` -/
def P14680534437214353881.Spec : Prop :=
  ∀ n, P14680534437214353881.a n = A385135 (n + 1)

end A385135

/-! ## A385135.P12859020570002986902

`∑{d}[n+1, A074722(#)*A343443((n+1)/#)]`
-/

namespace A385135.P12859020570002986902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A343443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385135.P12859020570002986902

namespace A385135

/-- `∑{d}[n+1, A074722(#)*A343443((n+1)/#)]` -/
def P12859020570002986902.Spec : Prop :=
  ∀ n, P12859020570002986902.a n = A385135 (n + 1)

end A385135

/-!
# A385136: The sum of divisors d of n such that n/d is a cubefull number (A036966).

The programs for A385136, the canonical program `A385136.P7441573335229270188` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385136 has offset 1).

The definition of A385136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385136.P7441573335229270188

`∑{d}[n+1, A384040(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A385136

/-- `∑{d}[n+1, A384040(#)]` -/
def P7441573335229270188.Spec : Prop :=
  ∀ n, P7441573335229270188.a n = A385136 (n + 1)

theorem P7441573335229270188.correct : P7441573335229270188.Spec := by
  intro n
  simp only [A385136, Nat.add_sub_cancel]

end A385136

/-! ## A385136.P18087634236386425267

`∑{d}[n+1, A000010(#)*A190867((n+1)/#)]`
-/

namespace A385136.P18087634236386425267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A190867 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385136.P18087634236386425267

namespace A385136

/-- `∑{d}[n+1, A000010(#)*A190867((n+1)/#)]` -/
def P18087634236386425267.Spec : Prop :=
  ∀ n, P18087634236386425267.a n = A385136 (n + 1)

end A385136

/-! ## A385136.P1899632462427288855

`∑{d}[n+1, A063659(#)*A365550((n+1)/#)]`
-/

namespace A385136.P1899632462427288855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A365550 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385136.P1899632462427288855

namespace A385136

/-- `∑{d}[n+1, A063659(#)*A365550((n+1)/#)]` -/
def P1899632462427288855.Spec : Prop :=
  ∀ n, P1899632462427288855.a n = A385136 (n + 1)

end A385136

/-! ## A385136.P12279481328056235918

`A325807(A069626(A069626(n+1)))+n`
-/

namespace A385136.P12279481328056235918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325807 (A069626 (A069626 (n + 1)).toNat).toNat + (n : ℤ)

end

end A385136.P12279481328056235918

namespace A385136

/-- `A325807(A069626(A069626(n+1)))+n` -/
def P12279481328056235918.Spec : Prop :=
  ∀ n, P12279481328056235918.a n = A385136 (n + 1)

end A385136

/-!
# A385137: The sum of divisors d of n such that n/d is a 3-smooth number (A003586).

The programs for A385137, the canonical program `A385137.P2568860053888881347` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385137 has offset 1).

The definition of A385137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385137.P15017260308253308421

`A064987(n+1)/A385138(n+1)`
-/

namespace A385137.P15017260308253308421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A385138 (n + 1) : ℚ)

end

end A385137.P15017260308253308421

namespace A385137

/-- `A064987(n+1)/A385138(n+1)` -/
def P15017260308253308421.Spec : Prop :=
  ∀ n, P15017260308253308421.a n = (A385137 (n + 1) : ℚ)

end A385137

/-! ## A385137.P2568860053888881347

`∑{d}[n+1, A372671(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385137

/-- `∑{d}[n+1, A372671(#)]` -/
def P2568860053888881347.Spec : Prop :=
  ∀ n, P2568860053888881347.a n = A385137 (n + 1)

theorem P2568860053888881347.correct : P2568860053888881347.Spec := by
  intro n
  simp only [A385137, Nat.add_sub_cancel]

end A385137

/-! ## A385137.P13221400061900800309

`∑{d}[n+1, #*A065333((n+1)/#)]`
-/

namespace A385137.P13221400061900800309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385137.P13221400061900800309

namespace A385137

/-- `∑{d}[n+1, #*A065333((n+1)/#)]` -/
def P13221400061900800309.Spec : Prop :=
  ∀ n, P13221400061900800309.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P11827179669294566636

`A065330(n+1)*A072079(n+1)`
-/

namespace A385137.P11827179669294566636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1) * A072079 (n + 1)

end

end A385137.P11827179669294566636

namespace A385137

/-- `A065330(n+1)*A072079(n+1)` -/
def P11827179669294566636.Spec : Prop :=
  ∀ n, P11827179669294566636.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P6584386350764753010

`∑{d}[n+1, A000010(#)*A072078((n+1)/#)]`
-/

namespace A385137.P6584386350764753010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A072078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385137.P6584386350764753010

namespace A385137

/-- `∑{d}[n+1, A000010(#)*A072078((n+1)/#)]` -/
def P6584386350764753010.Spec : Prop :=
  ∀ n, P6584386350764753010.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P3288492289712511434

`∑{d}[n+1, A051064(#)*A062570((n+1)/#)]`
-/

namespace A385137.P3288492289712511434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385137.P3288492289712511434

namespace A385137

/-- `∑{d}[n+1, A051064(#)*A062570((n+1)/#)]` -/
def P3288492289712511434.Spec : Prop :=
  ∀ n, P3288492289712511434.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P9257674962966017522

`∑{d}[n+1, A065330(#)*A065332((n+1)/#)]`
-/

namespace A385137.P9257674962966017522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065330 d * A065332 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385137.P9257674962966017522

namespace A385137

/-- `∑{d}[n+1, A065330(#)*A065332((n+1)/#)]` -/
def P9257674962966017522.Spec : Prop :=
  ∀ n, P9257674962966017522.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P12516178998037845330

`∑{d}[n+1, A001511(#)*A195459((n+1)/#)]`
-/

namespace A385137.P12516178998037845330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385137.P12516178998037845330

namespace A385137

/-- `∑{d}[n+1, A001511(#)*A195459((n+1)/#)]` -/
def P12516178998037845330.Spec : Prop :=
  ∀ n, P12516178998037845330.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P860653429212668592

`∑{d}[n+1, A000203(#)*A355688((n+1)/#)]`
-/

namespace A385137.P860653429212668592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A355688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385137.P860653429212668592

namespace A385137

/-- `∑{d}[n+1, A000203(#)*A355688((n+1)/#)]` -/
def P860653429212668592.Spec : Prop :=
  ∀ n, P860653429212668592.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P16906796682344686425

`∑{d}[n+1, A036987(#-1)*A327625((n+1)/#)]`
-/

namespace A385137.P16906796682344686425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385137.P16906796682344686425

namespace A385137

/-- `∑{d}[n+1, A036987(#-1)*A327625((n+1)/#)]` -/
def P16906796682344686425.Spec : Prop :=
  ∀ n, P16906796682344686425.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P7975380528016457874

`A000203(A065331(n+1))*A065330(n+1)`
-/

namespace A385137.P7975380528016457874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A385137.P7975380528016457874

namespace A385137

/-- `A000203(A065331(n+1))*A065330(n+1)` -/
def P7975380528016457874.Spec : Prop :=
  ∀ n, P7975380528016457874.a n = A385137 (n + 1)

end A385137

/-! ## A385137.P5809538581253581971

`A000203(n+1)*A065330(n+1)/A186099(n+1)`
-/

namespace A385137.P5809538581253581971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A065330 (n + 1) : ℚ) / (A186099 (n + 1) : ℚ)

end

end A385137.P5809538581253581971

namespace A385137

/-- `A000203(n+1)*A065330(n+1)/A186099(n+1)` -/
def P5809538581253581971.Spec : Prop :=
  ∀ n, P5809538581253581971.a n = (A385137 (n + 1) : ℚ)

end A385137

/-! ## A385137.P1893528577928150504

`A002131(n+1)*A129527(n+1)/A385138(n+1)`
-/

namespace A385137.P1893528577928150504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) * A129527 (n + 1) : ℚ) / (A385138 (n + 1) : ℚ)

end

end A385137.P1893528577928150504

namespace A385137

/-- `A002131(n+1)*A129527(n+1)/A385138(n+1)` -/
def P1893528577928150504.Spec : Prop :=
  ∀ n, P1893528577928150504.a n = (A385137 (n + 1) : ℚ)

end A385137

/-!
# A385138: The sum of divisors d of n such that n/d is a 5-rough number (A007310).

The programs for A385138, the canonical program `A385138.P14446959269686956335` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385138 has offset 1).

The definition of A385138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385138.P14446959269686956335

`A064987(n+1)/A385137(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A385138

/-- `A064987(n+1)/A385137(n+1)` -/
def P14446959269686956335.Spec : Prop :=
  ∀ n, P14446959269686956335.a n = (A385138 (n + 1) : ℚ)

end A385138

/-! ## A385138.P5095761389900551834

`∑{d}[n+1, A384042(#)]`
-/

namespace A385138.P5095761389900551834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384042 d

end

end A385138.P5095761389900551834

namespace A385138

/-- `∑{d}[n+1, A384042(#)]` -/
def P5095761389900551834.Spec : Prop :=
  ∀ n, P5095761389900551834.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P16768155977875049427

`∑{d}[n+1, #*A354354((n+1)/#)]`
-/

namespace A385138.P16768155977875049427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A354354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385138.P16768155977875049427

namespace A385138

/-- `∑{d}[n+1, #*A354354((n+1)/#)]` -/
def P16768155977875049427.Spec : Prop :=
  ∀ n, P16768155977875049427.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P12574772377070041964

`∑{d}[n+1, #*A232991((n+1)/#-1)]`
-/

namespace A385138.P12574772377070041964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A232991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A385138.P12574772377070041964

namespace A385138

/-- `∑{d}[n+1, #*A232991((n+1)/#-1)]` -/
def P12574772377070041964.Spec : Prop :=
  ∀ n, P12574772377070041964.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P138177692070238917

`A006519(n+1)*A121443(n+1)`
-/

namespace A385138.P138177692070238917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A121443 (n + 1)

end

end A385138.P138177692070238917

namespace A385138

/-- `A006519(n+1)*A121443(n+1)` -/
def P138177692070238917.Spec : Prop :=
  ∀ n, P138177692070238917.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P15086255239868357966

`A038500(n+1)*A111932(n+1)`
-/

namespace A385138.P15086255239868357966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A111932 (n + 1)

end

end A385138.P15086255239868357966

namespace A385138

/-- `A038500(n+1)*A111932(n+1)` -/
def P15086255239868357966.Spec : Prop :=
  ∀ n, P15086255239868357966.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P9269042231786115505

`A065331(n+1)*A186099(n+1)`
-/

namespace A385138.P9269042231786115505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) * A186099 (n + 1)

end

end A385138.P9269042231786115505

namespace A385138

/-- `A065331(n+1)*A186099(n+1)` -/
def P9269042231786115505.Spec : Prop :=
  ∀ n, P9269042231786115505.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P17927811209876741020

`A118827(n+1)*A226132(n+1)`
-/

namespace A385138.P17927811209876741020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1) * A226132 (n + 1)

end

end A385138.P17927811209876741020

namespace A385138

/-- `A118827(n+1)*A226132(n+1)` -/
def P17927811209876741020.Spec : Prop :=
  ∀ n, P17927811209876741020.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P5723405519190369797

`A228274(n+1)/A327625(n+1)`
-/

namespace A385138.P5723405519190369797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228274 (n + 1) : ℚ) / (A327625 (n + 1) : ℚ)

end

end A385138.P5723405519190369797

namespace A385138

/-- `A228274(n+1)/A327625(n+1)` -/
def P5723405519190369797.Spec : Prop :=
  ∀ n, P5723405519190369797.a n = (A385138 (n + 1) : ℚ)

end A385138

/-! ## A385138.P3164795161112527149

`lcm(A111932(n+1), A121443(n+1))`
-/

namespace A385138.P3164795161112527149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111932 (n + 1)) (A121443 (n + 1))

end

end A385138.P3164795161112527149

namespace A385138

/-- `lcm(A111932(n+1), A121443(n+1))` -/
def P3164795161112527149.Spec : Prop :=
  ∀ n, (P3164795161112527149.a n : ℤ) = A385138 (n + 1)

end A385138

/-! ## A385138.P6106385918763850731

`lcm(A121456(n+1), A226132(n+1))`
-/

namespace A385138.P6106385918763850731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121456 (n + 1)) (A226132 (n + 1))

end

end A385138.P6106385918763850731

namespace A385138

/-- `lcm(A121456(n+1), A226132(n+1))` -/
def P6106385918763850731.Spec : Prop :=
  ∀ n, (P6106385918763850731.a n : ℤ) = A385138 (n + 1)

end A385138

/-! ## A385138.P17254359453601122793

`∑{d}[n+1, A000010(#)*A035218((n+1)/#)]`
-/

namespace A385138.P17254359453601122793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385138.P17254359453601122793

namespace A385138

/-- `∑{d}[n+1, A000010(#)*A035218((n+1)/#)]` -/
def P17254359453601122793.Spec : Prop :=
  ∀ n, P17254359453601122793.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P6911797225923231807

`∑{d}[n+1, A113446(#)*A204617((n+1)/#)]`
-/

namespace A385138.P6911797225923231807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113446 d * A204617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385138.P6911797225923231807

namespace A385138

/-- `∑{d}[n+1, A113446(#)*A204617((n+1)/#)]` -/
def P6911797225923231807.Spec : Prop :=
  ∀ n, P6911797225923231807.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P6121995144395242768

`∑{d}[n+1, A035191(#)*A326305((n+1)/#)]`
-/

namespace A385138.P6121995144395242768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035191 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385138.P6121995144395242768

namespace A385138

/-- `∑{d}[n+1, A035191(#)*A326305((n+1)/#)]` -/
def P6121995144395242768.Spec : Prop :=
  ∀ n, P6121995144395242768.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P3854814777495409861

`∑{d}[n+1, A060789(#)*A318666((n+1)/#)]`
-/

namespace A385138.P3854814777495409861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060789 d * A318666 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385138.P3854814777495409861

namespace A385138

/-- `∑{d}[n+1, A060789(#)*A318666((n+1)/#)]` -/
def P3854814777495409861.Spec : Prop :=
  ∀ n, P3854814777495409861.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P4152403662881554629

`∑{d}[n+1, A244611(#)*A253629((n+1)/#)]`
-/

namespace A385138.P4152403662881554629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244611 d * A253629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385138.P4152403662881554629

namespace A385138

/-- `∑{d}[n+1, A244611(#)*A253629((n+1)/#)]` -/
def P4152403662881554629.Spec : Prop :=
  ∀ n, P4152403662881554629.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P5702855514023057917

`∑{d}[n+1, A162289(#)*A359100((n+1)/#)]`
-/

namespace A385138.P5702855514023057917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162289 d * A359100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385138.P5702855514023057917

namespace A385138

/-- `∑{d}[n+1, A162289(#)*A359100((n+1)/#)]` -/
def P5702855514023057917.Spec : Prop :=
  ∀ n, P5702855514023057917.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P18157609256776452091

`A000203(A065330(n+1))*A065331(n+1)`
-/

namespace A385138.P18157609256776452091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065330 (n + 1)).toNat * A065331 (n + 1)

end

end A385138.P18157609256776452091

namespace A385138

/-- `A000203(A065330(n+1))*A065331(n+1)` -/
def P18157609256776452091.Spec : Prop :=
  ∀ n, P18157609256776452091.a n = A385138 (n + 1)

end A385138

/-! ## A385138.P13197654145367892787

`A002131(n+1)/A000203(n+1)*A078708(n+1)`
-/

namespace A385138.P13197654145367892787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A078708 (n + 1) : ℚ)

end

end A385138.P13197654145367892787

namespace A385138

/-- `A002131(n+1)/A000203(n+1)*A078708(n+1)` -/
def P13197654145367892787.Spec : Prop :=
  ∀ n, P13197654145367892787.a n = (A385138 (n + 1) : ℚ)

end A385138

/-! ## A385138.P8789000318500444606

`A002131(n+1)*A129527(n+1)/A385137(n+1)`
-/

namespace A385138.P8789000318500444606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) * A129527 (n + 1) : ℚ) / (A385137 (n + 1) : ℚ)

end

end A385138.P8789000318500444606

namespace A385138

/-- `A002131(n+1)*A129527(n+1)/A385137(n+1)` -/
def P8789000318500444606.Spec : Prop :=
  ∀ n, P8789000318500444606.a n = (A385138 (n + 1) : ℚ)

end A385138

/-!
# A385139: The sum of divisors d of n such that n/d has exponents in its prime factorization that are all powers of 2 (A138302).

The programs for A385139, the canonical program `A385139.P2784818841424289045` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385139 has offset 1).

The definition of A385139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385139.P2784818841424289045

`∑{d}[n+1, #*A355823((n+1)/#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A385139

/-- `∑{d}[n+1, #*A355823((n+1)/#)]` -/
def P2784818841424289045.Spec : Prop :=
  ∀ n, P2784818841424289045.a n = A385139 (n + 1)

theorem P2784818841424289045.correct : P2784818841424289045.Spec := by
  intro n
  simp only [A385139, Nat.add_sub_cancel]

end A385139

/-! ## A385139.P9512090438360938128

`∑{d}[n+1, A000010(#)*A353898((n+1)/#)]`
-/

namespace A385139.P9512090438360938128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A353898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385139.P9512090438360938128

namespace A385139

/-- `∑{d}[n+1, A000010(#)*A353898((n+1)/#)]` -/
def P9512090438360938128.Spec : Prop :=
  ∀ n, P9512090438360938128.a n = A385139 (n + 1)

end A385139

/-! ## A385139.P1706166262701728245

`A000203(n+1)-A269250(A139752(n+1))`
-/

namespace A385139.P1706166262701728245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A269250 (A139752 (n + 1)).toNat

end

end A385139.P1706166262701728245

namespace A385139

/-- `A000203(n+1)-A269250(A139752(n+1))` -/
def P1706166262701728245.Spec : Prop :=
  ∀ n, P1706166262701728245.a n = A385139 (n + 1)

end A385139

/-! ## A385139.P17258344728755779841

`A254981(n+1)+A070204(A070144(3*n+4))`
-/

namespace A385139.P17258344728755779841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254981 (n + 1) + A070204 (A070144 (3 * n + 4)).toNat

end

end A385139.P17258344728755779841

namespace A385139

/-- `A254981(n+1)+A070204(A070144(3*n+4))` -/
def P17258344728755779841.Spec : Prop :=
  ∀ n, P17258344728755779841.a n = A385139 (n + 1)

end A385139

/-! ## A385139.P2590169222606448072

`A254981(n+1)+A010894(A254981(n+4))`
-/

namespace A385139.P2590169222606448072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254981 (n + 1) + A010894 ((A254981 (n + 4)).toNat + 21)

end

end A385139.P2590169222606448072

namespace A385139

/-- `A254981(n+1)+A010894(A254981(n+4))` -/
def P2590169222606448072.Spec : Prop :=
  ∀ n, P2590169222606448072.a n = A385139 (n + 1)

end A385139

/-!
# A385140: E.g.f. A(x) satisfies A(x) = exp(2*x*A(-x)^(1/2)).

The programs for A385140, the canonical program `A385140.P4503312312508436202` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385140 has offset 0).

The definition of A385140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385140.P4503312312508436202

`2*∑{#}[n, (n-#+2)^(#-1)*(-#)^(n-#)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385140

/-- `2*∑{#}[n, (n-#+2)^(#-1)*(-#)^(n-#)*C(n, #)]` -/
def P4503312312508436202.Spec : Prop :=
  ∀ n, P4503312312508436202.a n = (A385140 n : ℚ)

end A385140

/-!
# A385141: E.g.f. A(x) satisfies A(x) = exp(3*x*A(-x)^(1/3)).

The programs for A385141, the canonical program `A385141.P8008675978795729918` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385141 has offset 0).

The definition of A385141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385141.P8008675978795729918

`3*∑{#}[n, (n-#+3)^(#-1)*(-#)^(n-#)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385141

/-- `3*∑{#}[n, (n-#+3)^(#-1)*(-#)^(n-#)*C(n, #)]` -/
def P8008675978795729918.Spec : Prop :=
  ∀ n, P8008675978795729918.a n = (A385141 n : ℚ)

end A385141

/-!
# A385142: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3) - a(n-4) + a(n-5) with a(1) = a(2) = a(3) = 0, a(4) = 1, and a(5) = 3.

The programs for A385142, the canonical program `A385142.P8447580447115568887` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385142 has offset 1).

The definition of A385142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` (program `A385142.P8447580447115568887`, by `A385142.P8447580447115568887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385142.P6282622308127543726

`ogf((x^3-x^4)/(1-4x+6x^2-4x^3+x^4-x^5))`
-/

namespace A385142.P6282622308127543726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, -1] [1, -4, 6, -4, 1, -1] n

end

end A385142.P6282622308127543726

namespace A385142

/-- `ogf((x^3-x^4)/(1-4x+6x^2-4x^3+x^4-x^5))` -/
def P6282622308127543726.Spec : Prop :=
  ∀ n, P6282622308127543726.a n = A385142 (n + 1)

end A385142

/-! ## A385142.P8447580447115568887

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385142

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` -/
def P8447580447115568887.Spec : Prop :=
  ∀ n, P8447580447115568887.a n = A385142 (n + 1)

theorem P8447580447115568887.correct : P8447580447115568887.Spec := by
  intro n
  simp only [A385142, Nat.add_sub_cancel]

end A385142

/-! ## A385142.P1598305260790061325

`A127839(4*(n+1))`
-/

namespace A385142.P1598305260790061325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (4 * (n + 1))

end

end A385142.P1598305260790061325

namespace A385142

/-- `A127839(4*(n+1))` -/
def P1598305260790061325.Spec : Prop :=
  ∀ n, P1598305260790061325.a n = A385142 (n + 1)

end A385142

/-! ## A385142.P4475725194413050207

`A017827(A113127(n))`
-/

namespace A385142.P4475725194413050207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A113127 n).toNat

end

end A385142.P4475725194413050207

namespace A385142

/-- `A017827(A113127(n))` -/
def P4475725194413050207.Spec : Prop :=
  ∀ n, P4475725194413050207.a n = A385142 (n + 1)

end A385142

/-! ## A385142.P13967499270358201071

`A017827(A111284(n+1))`
-/

namespace A385142.P13967499270358201071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A111284 (n + 1)).toNat

end

end A385142.P13967499270358201071

namespace A385142

/-- `A017827(A111284(n+1))` -/
def P13967499270358201071.Spec : Prop :=
  ∀ n, P13967499270358201071.a n = A385142 (n + 1)

end A385142

/-! ## A385142.P8877397216993332878

`Δ[Δ[A005676(n)]]`
-/

namespace A385142.P8877397216993332878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005676 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385142.P8877397216993332878

namespace A385142

/-- `Δ[Δ[A005676(n)]]` -/
def P8877397216993332878.Spec : Prop :=
  ∀ n, P8877397216993332878.a n = A385142 (n + 1)

end A385142

/-! ## A385142.P1397704637534877470

`Δ[Δ[A392250(2*n)]]`
-/

namespace A385142.P1397704637534877470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392250 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385142.P1397704637534877470

namespace A385142

/-- `Δ[Δ[A392250(2*n)]]` -/
def P1397704637534877470.Spec : Prop :=
  ∀ n, P1397704637534877470.a n = A385142 (n + 1)

end A385142

/-! ## A385142.P15793743784294601984

`A385107(n+1)+A385107(n+1)-A385107(n+2)`
-/

namespace A385142.P15793743784294601984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385107 (n + 1) + (A385107 (n + 1) - A385107 (n + 2))

end

end A385142.P15793743784294601984

namespace A385142

/-- `A385107(n+1)+A385107(n+1)-A385107(n+2)` -/
def P15793743784294601984.Spec : Prop :=
  ∀ n, P15793743784294601984.a n = A385142 (n + 1)

end A385142

/-!
# A385145: Integers without 0 as a digit, with an odd number of digits, that are not repdigits, and such that the 2 products [d_1 d_2...dk]*[d_k+1 d_k+2...d_2k+1] and [d_1 d_2...d_k+1]*[d_k+2 d_k+2...d_2k+1] are equal.

The programs for A385145, there is no canonical definition to state claims against.
-/

/-! ## A385145.P13093484762203559329

`A245386(A036779(n+2))`
-/

namespace A385145.P13093484762203559329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245386 (A036779 (n + 2)).toNat

end

end A385145.P13093484762203559329

/-!
# A385146: Pentagonal numbers that are five times another pentagonal number.

The programs for A385146, there is no canonical definition to state claims against.
-/

/-! ## A385146.P10419490426105215276

`5*A385152(n+1)`
-/

namespace A385146.P10419490426105215276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A385152 (n + 1)

end

end A385146.P10419490426105215276

/-!
# A385147: a(n) = Sum_{i=1..n} 2^phi(i), where phi=A000010.

The programs for A385147, the canonical program `A385147.P13098067646068759981` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385147 has offset 1).

The definition of A385147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385147.P13098067646068759981

`∑[A066781(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385147

/-- `∑[A066781(n+1)]` -/
def P13098067646068759981.Spec : Prop :=
  ∀ n, P13098067646068759981.a n = A385147 (n + 1)

theorem P13098067646068759981.correct : P13098067646068759981.Spec := by
  intro n
  simp only [A385147, Nat.add_sub_cancel]

end A385147

/-! ## A385147.P7761326219621817036

`∑[A100371(n+1)+1]`
-/

namespace A385147.P7761326219621817036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P7761326219621817036

namespace A385147

/-- `∑[A100371(n+1)+1]` -/
def P7761326219621817036.Spec : Prop :=
  ∀ n, P7761326219621817036.a n = A385147 (n + 1)

theorem P7761326219621817036.correct : P7761326219621817036.Spec := by
  intro n
  simp only [A385147, Nat.add_sub_cancel, A385147.P7761326219621817036.f1, A385147.P7761326219621817036.a, A385147.P13098067646068759981.f1, A385147.P13098067646068759981.a, A066781, A066781.P13882244352398290553.a, A100371, A100371.P1765266703165715938.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A385147

/-! ## A385147.P3977077863259682296

`∑[A243305(n+1)-1]`
-/

namespace A385147.P3977077863259682296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P3977077863259682296

namespace A385147

/-- `∑[A243305(n+1)-1]` -/
def P3977077863259682296.Spec : Prop :=
  ∀ n, P3977077863259682296.a n = A385147 (n + 1)

theorem P3977077863259682296.correct : P3977077863259682296.Spec := by
  intro n
  simp only [A385147, Nat.add_sub_cancel, A385147.P3977077863259682296.f1, A385147.P3977077863259682296.a, A385147.P13098067646068759981.f1, A385147.P13098067646068759981.a, A066781, A066781.P13882244352398290553.a, A243305, A243305.P11485261021790212205.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A385147

/-! ## A385147.P6541731050208057488

`∑[2^A000010(n+1)]`
-/

namespace A385147.P6541731050208057488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P6541731050208057488

namespace A385147

/-- `∑[2^A000010(n+1)]` -/
def P6541731050208057488.Spec : Prop :=
  ∀ n, P6541731050208057488.a n = (A385147 (n + 1) : ℚ)

end A385147

/-! ## A385147.P12964423654740063090

`∑[2^A057828((n+1)²)]`
-/

namespace A385147.P12964423654740063090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057828 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P12964423654740063090

namespace A385147

/-- `∑[2^A057828((n+1)²)]` -/
def P12964423654740063090.Spec : Prop :=
  ∀ n, P12964423654740063090.a n = (A385147 (n + 1) : ℚ)

end A385147

/-! ## A385147.P7867060343106471517

`∑[2^A390752((n+1)²)]`
-/

namespace A385147.P7867060343106471517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A390752 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P7867060343106471517

namespace A385147

/-- `∑[2^A390752((n+1)²)]` -/
def P7867060343106471517.Spec : Prop :=
  ∀ n, P7867060343106471517.a n = (A385147 (n + 1) : ℚ)

end A385147

/-! ## A385147.P16010780697250693711

`∑[A054372(2*(n+1)²)]`
-/

namespace A385147.P16010780697250693711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054372 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P16010780697250693711

namespace A385147

/-- `∑[A054372(2*(n+1)²)]` -/
def P16010780697250693711.Spec : Prop :=
  ∀ n, P16010780697250693711.a n = A385147 (n + 1)

end A385147

/-!
# A385148: a(n) = A001065(A346878(n)).

The programs for A385148, the canonical program `A385148.P6659841522934302944` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385148 has offset 1).

The definition of A385148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385148.P6659841522934302944

`A001065(A346878(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385148

/-- `A001065(A346878(n+1))` -/
def P6659841522934302944.Spec : Prop :=
  ∀ n, P6659841522934302944.a n = A385148 (n + 1)

theorem P6659841522934302944.correct : P6659841522934302944.Spec := by
  intro n
  simp only [A385148, Nat.add_sub_cancel]

end A385148

/-! ## A385148.P18437845061385765777

`A178601(2*(n+1))`
-/

namespace A385148.P18437845061385765777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178601 (2 * (n + 1))

end

end A385148.P18437845061385765777

namespace A385148

/-- `A178601(2*(n+1))` -/
def P18437845061385765777.Spec : Prop :=
  ∀ n, P18437845061385765777.a n = A385148 (n + 1)

end A385148

/-! ## A385148.P14807349842888837253

`A001065(A346880(n+1)+1)`
-/

namespace A385148.P14807349842888837253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A346880 (n + 1) + 1).toNat

end

end A385148.P14807349842888837253

namespace A385148

/-- `A001065(A346880(n+1)+1)` -/
def P14807349842888837253.Spec : Prop :=
  ∀ n, P14807349842888837253.a n = A385148 (n + 1)

theorem P14807349842888837253.correct : P14807349842888837253.Spec := by
  intro n
  simp only [A385148, Nat.add_sub_cancel, A385148.P14807349842888837253.a, A385148.P6659841522934302944.a, A001065, A001065.P4097147489331274860.a, A346878, A346878.P5483888305537072488.a, A346880, A346880.P3202443241792394982.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048050, A048050.P12972569362416034982.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A385148

/-! ## A385148.P8491847592288125827

`A001065(A001065(2*(n+1)))`
-/

namespace A385148.P8491847592288125827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001065 (2 * (n + 1))).toNat

end

end A385148.P8491847592288125827

namespace A385148

/-- `A001065(A001065(2*(n+1)))` -/
def P8491847592288125827.Spec : Prop :=
  ∀ n, P8491847592288125827.a n = A385148 (n + 1)

end A385148

/-! ## A385148.P4214213174015047742

`A001065(A173455(n+2+n))`
-/

namespace A385148.P4214213174015047742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A173455 (n + 2 + n)).toNat

end

end A385148.P4214213174015047742

namespace A385148

/-- `A001065(A173455(n+2+n))` -/
def P4214213174015047742.Spec : Prop :=
  ∀ n, P4214213174015047742.a n = A385148 (n + 1)

end A385148

/-!
# A385149: Number of chiral pairs of asymmetric polyominoes with n cells of the hyperbolic regular tiling with Schläfli symbol {4,oo}.

The programs for A385149, there is no canonical definition to state claims against.
-/

/-! ## A385149.P7637583292215611826

`A025428(A213227(n)-A010815(n))`
-/

namespace A385149.P7637583292215611826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A213227 n - A010815 n).toNat

end

end A385149.P7637583292215611826

/-! ## A385149.P10883255234242654309

`A214460(n)-A345199(A185293(n+4))`
-/

namespace A385149.P10883255234242654309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214460 n - A345199 (A185293 (n + 4)).toNat

end

end A385149.P10883255234242654309

/-! ## A385149.P14657520169588258066

`A185711(A153583(3*(n+1))+A056484(2*(n+2)))`
-/

namespace A385149.P14657520169588258066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A153583 (3 * (n + 1)) + A056484 (2 * (n + 2))).toNat

end

end A385149.P14657520169588258066

/-!
# A385151: a(n) is the least possible difference between the largest and smallest volumes of distinct three-cuboid combination filling an n X n X n cube.

The programs for A385151, there is no canonical definition to state claims against.
-/

/-! ## A385151.P5216001315527053546

`(n+3)*A390007(n+3)`
-/

namespace A385151.P5216001315527053546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A390007 (n + 3)

end

end A385151.P5216001315527053546

/-! ## A385151.P14756050181672497005

`A386297(A134869(n+2))`
-/

namespace A385151.P14756050181672497005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386297 (A134869 (n + 2)).toNat

end

end A385151.P14756050181672497005

/-! ## A385151.P10645273794289477001

`A386297(A254835(n+2))`
-/

namespace A385151.P10645273794289477001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386297 (A254835 (n + 2)).toNat

end

end A385151.P10645273794289477001

/-!
# A385152: Pentagonal numbers that are one-fifth of another pentagonal number.

The programs for A385152, there is no canonical definition to state claims against.
-/

/-! ## A385152.P11201590911837698120

`A385146(n+1)/5`
-/

namespace A385152.P11201590911837698120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385146 (n + 1) : ℚ) / 5

end

end A385152.P11201590911837698120

/-!
# A385153: a(n) is the least possible difference between the largest and smallest volumes of distinct four-cuboid combinations filling an n X n X n cube.

The programs for A385153, there is no canonical definition to state claims against.
-/

/-! ## A385153.P2253574674688065386

`A386297(A115744(n+1))`
-/

namespace A385153.P2253574674688065386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386297 (A115744 (n + 1)).toNat

end

end A385153.P2253574674688065386

/-! ## A385153.P7245075320843183037

`A386297(A034856(n+2)+2)`
-/

namespace A385153.P7245075320843183037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386297 (A034856 (n + 2) + 2).toNat

end

end A385153.P7245075320843183037

/-!
# A385158: Numbers k such that the sum of the digits of k is a number that appears as a substring of k, and every nonzero digit of k appears in that sum.

The programs for A385158, there is no canonical definition to state claims against.
-/

/-! ## A385158.P11920151453105879215

`∩[A052018(n+1), A343131(n+1)]`
-/

namespace A385158.P11920151453105879215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385158.P11920151453105879215

/-! ## A385158.P10912153856430217585

`∩[A070958(n+1), A343131(n+1)]`
-/

namespace A385158.P10912153856430217585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385158.P10912153856430217585

/-! ## A385158.P3450129069904968310

`∩[A343131(n+1), A352461(n+1)]`
-/

namespace A385158.P3450129069904968310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385158.P3450129069904968310

/-!
# A385160: Place a point on the integer coordinates, up to |n|, along all four axial directions on a Cartesian plane, and then join a circle through every unordered triple of non-collinear points: a(n) is the number of distinct points where circles intersect.

The programs for A385160, there is no canonical definition to state claims against.
-/

/-! ## A385160.P16224755106209116365

`A385162(n+1)-A385161(n+1)+1`
-/

namespace A385160.P16224755106209116365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385162 (n + 1) - A385161 (n + 1) + 1

end

end A385160.P16224755106209116365

/-!
# A385161: Place a point on the integer coordinates, up to |n|, along all four axial directions on a Cartesian plane, and then join a circle through every unordered triple of non-collinear points: a(n) is the number of distinct (finite) regions created.

The programs for A385161, there is no canonical definition to state claims against.
-/

/-! ## A385161.P16266799008386745418

`A385162(n+1)-A385160(n+1)+1`
-/

namespace A385161.P16266799008386745418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385162 (n + 1) - A385160 (n + 1) + 1

end

end A385161.P16266799008386745418

/-!
# A385162: Place a point on the integer coordinates, up to |n|, along all four axial directions on a Cartesian plane, and then join a circle through every unordered triple of non-collinear points: a(n) is the number of distinct (curved) edges formed from the intersections of the circles.

The programs for A385162, there is no canonical definition to state claims against.
-/

/-! ## A385162.P3227479859528887340

`A385160(n+1)+A385161(n+1)-1`
-/

namespace A385162.P3227479859528887340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385160 (n + 1) + A385161 (n + 1) - 1

end

end A385162.P3227479859528887340

/-!
# A385163: Let p = A002145(n) be the n-th prime == 3 (mod 4); a(n) is the multiplicative order of 1+-i modulo p in Gaussian integers.

The programs for A385163, there is no canonical definition to state claims against.
-/

/-! ## A385163.P7388099364346773810

`8*A385164(n+1)`
-/

namespace A385163.P7388099364346773810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A385164 (n + 1)

end

end A385163.P7388099364346773810

/-! ## A385163.P4008007531544110192

`A008590(A385164(n+1))`
-/

namespace A385163.P4008007531544110192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A385164 (n + 1)).toNat

end

end A385163.P4008007531544110192

/-!
# A385164: Let p = A002145(n) be the n-th prime == 3 (mod 4); 8*a(n) is the multiplicative order of 1+-i modulo p in Gaussian integers.

The programs for A385164, there is no canonical definition to state claims against.
-/

/-! ## A385164.P13975437280677147691

`A385163(n+1)/8`
-/

namespace A385164.P13975437280677147691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385163 (n + 1) : ℚ) / 8

end

end A385164.P13975437280677147691

/-! ## A385164.P299706544806048289

`gcd(A104635(n+1), A385163(n+1))`
-/

namespace A385164.P299706544806048289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104635 (n + 1)) (A385163 (n + 1))

end

end A385164.P299706544806048289

/-! ## A385164.P10333581098250827136

`A082654(A080148(n+1))`
-/

namespace A385164.P10333581098250827136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (A080148 (n + 1)).toNat

end

end A385164.P10333581098250827136

/-! ## A385164.P15058212478827464900

`A003574(A005099(n+1))`
-/

namespace A385164.P15058212478827464900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003574 (A005099 (n + 1)).toNat

end

end A385164.P15058212478827464900

/-! ## A385164.P11883590103301139315

`A294673(A095278(n+1))`
-/

namespace A385164.P11883590103301139315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 (A095278 (n + 1)).toNat

end

end A385164.P11883590103301139315

/-! ## A385164.P897500001002663397

`A000265(A385163(n+1))`
-/

namespace A385164.P897500001002663397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A385163 (n + 1)).toNat

end

end A385164.P897500001002663397

/-! ## A385164.P11750182044582317380

`A003558(A104635(n+1))`
-/

namespace A385164.P11750182044582317380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A104635 (n + 1)).toNat

end

end A385164.P11750182044582317380

/-! ## A385164.P5672750863842617886

`A007735(A002145(n+1))`
-/

namespace A385164.P5672750863842617886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A002145 (n + 1)).toNat

end

end A385164.P5672750863842617886

/-! ## A385164.P15217024171494550522

`A007735(A045326(n+2))`
-/

namespace A385164.P15217024171494550522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A045326 (n + 2)).toNat

end

end A385164.P15217024171494550522

/-!
# A385167: Primes p == 3 (mod 4) such that (p+1) * ord(5,p) / ord(2+-i,p) is even. Here ord(a,m) is the multiplicative order of a modulo m.

The programs for A385167, the canonical program `A385167.P4826086116355619044` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385167 has offset 1).

The definition of A385167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385167.P4826086116355619044

`∪[A142187(n+1), A142198(n+1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A385167

/-- `∪[A142187(n+1), A142198(n+1)]` -/
def P4826086116355619044.Spec : Prop :=
  ∀ n, (P4826086116355619044.a n : ℤ) = A385167 (n + 1)

theorem P4826086116355619044.correct : P4826086116355619044.Spec := by
  intro n
  simp only [A385167, Nat.add_sub_cancel]

end A385167

/-! ## A385167.P15745581996404791716

`filter[A064718(2*(n+1)), A079261(#)]`
-/

namespace A385167.P15745581996404791716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064718 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079261 (f1 j).toNat = 1) n)

end

end A385167.P15745581996404791716

namespace A385167

/-- `filter[A064718(2*(n+1)), A079261(#)]` -/
def P15745581996404791716.Spec : Prop :=
  ∀ n, P15745581996404791716.a n = A385167 (n + 1)

end A385167

/-!
# A385168: Primes p == 3 (mod 4) such that (p+1) * ord(5,p) / ord(2+-i,p) > 1. Here ord(a,m) is the multiplicative order of a modulo m.

The programs for A385168, there is no canonical definition to state claims against.
-/

/-! ## A385168.P13143285412464280560

`A333854(A321701(n+1))`
-/

namespace A385168.P13143285412464280560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333854 (A321701 (n + 1)).toNat

end

end A385168.P13143285412464280560

/-!
# A385169: Primes p == 3 (mod 4) such that the multiplicative order of 2+-i modulo p in Gaussian integers (A385165) is odd.

The programs for A385169, there is no canonical definition to state claims against.
-/

/-! ## A385169.P48796396303828288

`A385180(lt[A002183(n+1), A300841(n+1)])`
-/

namespace A385169.P48796396303828288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385180 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385169.P48796396303828288

/-! ## A385169.P15012113523702493502

`A385180(lt[A028815(n), A181894(3*n+2)])`
-/

namespace A385169.P15012113523702493502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385180 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385169.P15012113523702493502

/-!
# A385170: a(n) is the integer part of the reciprocal of the distance of x_n from its nearest integer, where x_n is the n-th extrema of gamma(x).

The programs for A385170, there is no canonical definition to state claims against.
-/

/-! ## A385170.P7202509857943733714

`∑[char[A374856(n+1)]]`
-/

namespace A385170.P7202509857943733714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374856 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385170.P7202509857943733714

/-! ## A385170.P9967160686796276850

`A110592(∑[A004736(3*n+4)])`
-/

namespace A385170.P9967160686796276850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385170.P9967160686796276850

/-! ## A385170.P16674132696522847407

`A081604(lt[A344869(n), A344876(3*(n+1))])`
-/

namespace A385170.P16674132696522847407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385170.P16674132696522847407

/-! ## A385170.P11763995585249663099

`lt[1, A001222(A356867(3*n+4))]-n`
-/

namespace A385170.P11763995585249663099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A356867 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A385170.P11763995585249663099

/-! ## A385170.P6549186447054608167

`A062153(A007969(2*n+1)+4)`
-/

namespace A385170.P6549186447054608167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A007969 (2 * n + 1) + 4).toNat

end

end A385170.P6549186447054608167

/-! ## A385170.P8989605203698521497

`A102572(A358530(n+1)-A358476(n+1))`
-/

namespace A385170.P8989605203698521497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A358530 (n + 1) - A358476 (n + 1)).toNat

end

end A385170.P8989605203698521497

/-! ## A385170.P2940484833732876925

`A390767((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A385170.P2940484833732876925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390767 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A385170.P2940484833732876925

/-! ## A385170.P14248160998592380655

`A081604(lt[A285573(n+4), A057501(n+1)])`
-/

namespace A385170.P14248160998592380655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385170.P14248160998592380655

/-! ## A385170.P766211865060528412

`A081604(lt[A272026(n+3), A005940(3*n+5)])`
-/

namespace A385170.P766211865060528412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272026 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385170.P766211865060528412

/-! ## A385170.P17378494824067786397

`comp[lt[n, A175506(n+1)]]-n`
-/

namespace A385170.P17378494824067786397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A385170.P17378494824067786397

/-!
# A385173: Smallest number of vertices for which there exist exactly n nonisomorphic connected cubic symmetric graphs.

The programs for A385173, there is no canonical definition to state claims against.
-/

/-! ## A385173.P3250105593395896557

`A133428(A192627(n+1))`
-/

namespace A385173.P3250105593395896557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133428 (A192627 (n + 1)).toNat

end

end A385173.P3250105593395896557

/-!
# A385174: Indices k such that P(k-1) < Q(n) <= P(k), where primorial P = A002110 and superprimorial Q = A006939.

The programs for A385174, there is no canonical definition to state claims against.
-/

/-! ## A385174.P8979775671915905584

`A124757(A019300(n+1))`
-/

namespace A385174.P8979775671915905584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A019300 (n + 1)).toNat

end

end A385174.P8979775671915905584

/-! ## A385174.P8261690563538971858

`∑[∑[A357448(A325535(3*n))]]`
-/

namespace A385174.P8261690563538971858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357448 (A325535 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385174.P8261690563538971858

/-! ## A385174.P15752800998346243609

`∑[∑[A010060(A367342(2*n+5))]]`
-/

namespace A385174.P15752800998346243609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A367342 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385174.P15752800998346243609

/-! ## A385174.P9990306893999799270

`∑[∑[A010060(n+1)]-1]%A096759(n+1)`
-/

namespace A385174.P9990306893999799270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A096759 (n + 1))

end

end A385174.P9990306893999799270

/-! ## A385174.P15818708854774281457

`A121900((n+1)*∑[n²])`
-/

namespace A385174.P15818708854774281457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A385174.P15818708854774281457

/-!
# A385175: Cubes using at most three distinct digits, not ending in 0.

The programs for A385175, there is no canonical definition to state claims against.
-/

/-! ## A385175.P4240509973072889223

`A202940(n+1)^3`
-/

namespace A385175.P4240509973072889223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202940 (n + 1) ^ 3

end

end A385175.P4240509973072889223

/-! ## A385175.P11095809823965993875

`A000578(A202940(n+1))`
-/

namespace A385175.P11095809823965993875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A202940 (n + 1)).toNat

end

end A385175.P11095809823965993875

/-! ## A385175.P12232666311711929757

`record[A048763(A297431(n+1))]`
-/

namespace A385175.P12232666311711929757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A297431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385175.P12232666311711929757

/-! ## A385175.P2728361982623652944

`filter[A030295(n+1), A168046(#)]`
-/

namespace A385175.P2728361982623652944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A385175.P2728361982623652944

/-! ## A385175.P269000069839077517

`filter[A030295(n+1), A168184(#)]`
-/

namespace A385175.P269000069839077517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A385175.P269000069839077517

/-!
# A385177: a(n) = Sum_{k=1..n} ceiling(k/phi), where phi is the golden ratio (A001622).

The programs for A385177, the canonical program `A385177.P2434834977820488632` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385177 has offset 1).

The definition of A385177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183136, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385177.P2434834977820488632

`A183136(n+1)+n+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A385177

/-- `A183136(n+1)+n+1` -/
def P2434834977820488632.Spec : Prop :=
  ∀ n, P2434834977820488632.a n = A385177 (n + 1)

theorem P2434834977820488632.correct : P2434834977820488632.Spec := by
  intro n
  simp only [A385177, Nat.add_sub_cancel]

end A385177

/-! ## A385177.P121639378982844551

`∑[ceil((n+1)/ϕ)]`
-/

namespace A385177.P121639378982844551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385177.P121639378982844551

namespace A385177

/-- `∑[ceil((n+1)/ϕ)]` -/
def P121639378982844551.Spec : Prop :=
  ∀ n, P121639378982844551.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P4624896612376039058

`ceil(a(n-1)+(n+1)/ϕ)` with `a(0)=1`
-/

namespace A385177.P4624896612376039058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A385177.P4624896612376039058

namespace A385177

/-- `ceil(a(n-1)+(n+1)/ϕ)` -/
def P4624896612376039058.Spec : Prop :=
  ∀ n, P4624896612376039058.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P14023647776798853812

`∑[n-a(a(n-1))]+n` with `a(0)=1, a(1)=1`
-/

namespace A385177.P14023647776798853812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A385177.P14023647776798853812

namespace A385177

/-- `∑[n-a(a(n-1))]+n` -/
def P14023647776798853812.Spec : Prop :=
  ∀ n, P14023647776798853812.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P14931265800535574150

`floor(a(n-1)+n/ϕ+ϕ)` with `a(0)=1`
-/

namespace A385177.P14931265800535574150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) / Real.goldenRatio + Real.goldenRatio)⌋

end

end A385177.P14931265800535574150

namespace A385177

/-- `floor(a(n-1)+n/ϕ+ϕ)` -/
def P14931265800535574150.Spec : Prop :=
  ∀ n, P14931265800535574150.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P13514443101971226122

`∑[floor(ϕ*(n+1))]-C(n+1, 2)`
-/

namespace A385177.P13514443101971226122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 1) 2 : ℤ)

end

end A385177.P13514443101971226122

namespace A385177

/-- `∑[floor(ϕ*(n+1))]-C(n+1, 2)` -/
def P13514443101971226122.Spec : Prop :=
  ∀ n, P13514443101971226122.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P6667934343261504686

`∑[floor(C(n+1, n)/ϕ)]+n+1`
-/

namespace A385177.P6667934343261504686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A385177.P6667934343261504686

namespace A385177

/-- `∑[floor(C(n+1, n)/ϕ)]+n+1` -/
def P6667934343261504686.Spec : Prop :=
  ∀ n, P6667934343261504686.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P2877167165164169875

`a(n-1)-floor((n+1)*(1-ϕ))` with `a(0)=1`
-/

namespace A385177.P2877167165164169875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(n + 1 : ℝ) * (1 - Real.goldenRatio)⌋

end

end A385177.P2877167165164169875

namespace A385177

/-- `a(n-1)-floor((n+1)*(1-ϕ))` -/
def P2877167165164169875.Spec : Prop :=
  ∀ n, P2877167165164169875.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P11097034635815030596

`A054347(n+1)-∑[n]`
-/

namespace A385177.P11097034635815030596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A385177.P11097034635815030596

namespace A385177

/-- `A054347(n+1)-∑[n]` -/
def P11097034635815030596.Spec : Prop :=
  ∀ n, P11097034635815030596.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P17402616651954286638

`∑[A001950(n+1)]-(n+1)²`
-/

namespace A385177.P17402616651954286638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A385177.P17402616651954286638

namespace A385177

/-- `∑[A001950(n+1)]-(n+1)²` -/
def P17402616651954286638.Spec : Prop :=
  ∀ n, P17402616651954286638.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P8638042660059661228

`(n+1)²-∑[A063732(n+1)]`
-/

namespace A385177.P8638042660059661228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385177.P8638042660059661228

namespace A385177

/-- `(n+1)²-∑[A063732(n+1)]` -/
def P8638042660059661228.Spec : Prop :=
  ∀ n, P8638042660059661228.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P7729752343145085929

`A194126(n+1)-A005563(n)`
-/

namespace A385177.P7729752343145085929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194126 (n + 1) - A005563 n

end

end A385177.P7729752343145085929

namespace A385177

/-- `A194126(n+1)-A005563(n)` -/
def P7729752343145085929.Spec : Prop :=
  ∀ n, P7729752343145085929.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P9717156363277685190

`A054347(n+1)+A054347(n)-A088207(n)`
-/

namespace A385177.P9717156363277685190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 (n + 1) + A054347 n - A088207 n

end

end A385177.P9717156363277685190

namespace A385177

/-- `A054347(n+1)+A054347(n)-A088207(n)` -/
def P9717156363277685190.Spec : Prop :=
  ∀ n, P9717156363277685190.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P14022794973676319219

`A088207(n+1)-(n+1)²`
-/

namespace A385177.P14022794973676319219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A385177.P14022794973676319219

namespace A385177

/-- `A088207(n+1)-(n+1)²` -/
def P14022794973676319219.Spec : Prop :=
  ∀ n, P14022794973676319219.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P16543500060720561596

`A255977(n+1)+A005206(n)`
-/

namespace A385177.P16543500060720561596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255977 (n + 1) + A005206 n

end

end A385177.P16543500060720561596

namespace A385177

/-- `A255977(n+1)+A005206(n)` -/
def P16543500060720561596.Spec : Prop :=
  ∀ n, P16543500060720561596.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P11512242678480821664

`A255977(n+2)-1`
-/

namespace A385177.P11512242678480821664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255977 (n + 2) - 1

end

end A385177.P11512242678480821664

namespace A385177

/-- `A255977(n+2)-1` -/
def P11512242678480821664.Spec : Prop :=
  ∀ n, P11512242678480821664.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P16140039073239127200

`A023443(A255977(n+2))`
-/

namespace A385177.P16140039073239127200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A255977 (n + 2)).toNat

end

end A385177.P16140039073239127200

namespace A385177

/-- `A023443(A255977(n+2))` -/
def P16140039073239127200.Spec : Prop :=
  ∀ n, P16140039073239127200.a n = A385177 (n + 1)

end A385177

/-! ## A385177.P16011868749005068590

`eq[A054977(n), A084532(n+1)]`
-/

namespace A385177.P16011868749005068590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385177.P16011868749005068590

namespace A385177

/-- `eq[A054977(n), A084532(n+1)]` -/
def P16011868749005068590.Spec : Prop :=
  ∀ n, (P16011868749005068590.a n : ℤ) = A385177 (n + 1)

end A385177

/-! ## A385177.P16074795558029698935

`eq[A057427(n), A084532(n+1)]`
-/

namespace A385177.P16074795558029698935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385177.P16074795558029698935

namespace A385177

/-- `eq[A057427(n), A084532(n+1)]` -/
def P16074795558029698935.Spec : Prop :=
  ∀ n, (P16074795558029698935.a n : ℤ) = A385177 (n + 1)

end A385177

/-! ## A385177.P8292899220986964815

`eq[A084532(n+1), A158388(n)]`
-/

namespace A385177.P8292899220986964815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385177.P8292899220986964815

namespace A385177

/-- `eq[A084532(n+1), A158388(n)]` -/
def P8292899220986964815.Spec : Prop :=
  ∀ n, (P8292899220986964815.a n : ℤ) = A385177 (n + 1)

end A385177

/-!
# A385178: Triangle T(n,k) read by rows in which the n-th diagonal lists the n-th differences of A001047, 0 <= k <= n.

The programs for A385178, the canonical program `A385178.P2732975976909135838` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385178 has offset 0).

The definition of A385178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385178.P2732975976909135838

`2^(row(n)-col(n))*3^col(n)-2^col(n)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385178

/-- `2^(row(n)-col(n))*3^col(n)-2^col(n)` -/
def P2732975976909135838.Spec : Prop :=
  ∀ n, P2732975976909135838.a n = (A385178 n : ℚ)

end A385178

/-! ## A385178.P5997249845905668819

`A036561(n)-A059268(n)`
-/

namespace A385178.P5997249845905668819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - A059268 n

end

end A385178.P5997249845905668819

namespace A385178

/-- `A036561(n)-A059268(n)` -/
def P5997249845905668819.Spec : Prop :=
  ∀ n, P5997249845905668819.a n = A385178 n

end A385178

/-! ## A385178.P1689706278991990638

`A036561(n)-A000079(A002262(n))`
-/

namespace A385178.P1689706278991990638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - A000079 (A002262 n).toNat

end

end A385178.P1689706278991990638

namespace A385178

/-- `A036561(n)-A000079(A002262(n))` -/
def P1689706278991990638.Spec : Prop :=
  ∀ n, P1689706278991990638.a n = A385178 n

end A385178

/-! ## A385178.P11511026402298340141

`A036561(n)-A036561(A112367(n))`
-/

namespace A385178.P11511026402298340141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - A036561 (A112367 n).toNat

end

end A385178.P11511026402298340141

namespace A385178

/-- `A036561(n)-A036561(A112367(n))` -/
def P11511026402298340141.Spec : Prop :=
  ∀ n, P11511026402298340141.a n = A385178 n

end A385178

/-! ## A385178.P3709433370241526115

`A036561(n)-A130321(A061579(n))`
-/

namespace A385178.P3709433370241526115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - A130321 (A061579 n).toNat

end

end A385178.P3709433370241526115

namespace A385178

/-- `A036561(n)-A130321(A061579(n))` -/
def P3709433370241526115.Spec : Prop :=
  ∀ n, P3709433370241526115.a n = A385178 n

end A385178

/-! ## A385178.P8479166128582241285

`A175840(A061579(n))-A059268(n)`
-/

namespace A385178.P8479166128582241285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A061579 n).toNat - A059268 n

end

end A385178.P8479166128582241285

namespace A385178

/-- `A175840(A061579(n))-A059268(n)` -/
def P8479166128582241285.Spec : Prop :=
  ∀ n, P8479166128582241285.a n = A385178 n

end A385178

/-! ## A385178.P10180941167629761675

`A014682(A081954(n+1))-A059268(n)`
-/

namespace A385178.P10180941167629761675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A081954 (n + 1)).toNat - A059268 n

end

end A385178.P10180941167629761675

namespace A385178

/-- `A014682(A081954(n+1))-A059268(n)` -/
def P10180941167629761675.Spec : Prop :=
  ∀ n, P10180941167629761675.a n = A385178 n

end A385178

/-! ## A385178.P14015149602487489297

`A322582(A036561(n))`
-/

namespace A385178.P14015149602487489297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (A036561 n).toNat

end

end A385178.P14015149602487489297

namespace A385178

/-- `A322582(A036561(n))` -/
def P14015149602487489297.Spec : Prop :=
  ∀ n, P14015149602487489297.a n = A385178 n

end A385178

/-!
# A385180: Primes p == 3 (mod 4) such that (p+1) * ord(5,p) / ord(2+-i,p) is divisible by 4. Here ord(a,m) is the multiplicative order of a modulo m.

The programs for A385180, there is no canonical definition to state claims against.
-/

/-! ## A385180.P2579112124560658902

`A112417(A385169(n+1))`
-/

namespace A385180.P2579112124560658902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A385169 (n + 1)).toNat

end

end A385180.P2579112124560658902

/-!
# A385181: Number of disconnected cubic symmetric graphs on 2n vertices.

The programs for A385181, there is no canonical definition to state claims against.
-/

/-! ## A385181.P4887545064410602695

`∑{d}[n+1, A059282(#)*A323022((n+1)/#)]`
-/

namespace A385181.P4887545064410602695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059282 d * A323022 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385181.P4887545064410602695

/-! ## A385181.P8308458801266761396

`∑{d}[n+1, A059282(#)*A178334((n+1)/#-1)]`
-/

namespace A385181.P8308458801266761396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059282 d * A178334 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A385181.P8308458801266761396

/-! ## A385181.P8843282035660702077

`A276806(A300834(n+1))`
-/

namespace A385181.P8843282035660702077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276806 (A300834 (n + 1)).toNat

end

end A385181.P8843282035660702077

/-! ## A385181.P6236248182016140183

`A333525(A323774(n+1))`
-/

namespace A385181.P6236248182016140183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333525 (A323774 (n + 1)).toNat

end

end A385181.P6236248182016140183

/-! ## A385181.P13867297248327780845

`A332780(∏{e}[n+1, #+1]%A363264(3*(n+1)))`
-/

namespace A385181.P13867297248327780845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332780 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A363264 (3 * (n + 1)))).toNat

end

end A385181.P13867297248327780845

/-!
# A385182: Values of u in the quartets (1,u,v,w); i.e., values of u for solutions to (1+u) = v*(v+w), in positive integers, with v>1, sorted by nondecreasing values of u; see Comments.

The programs for A385182, the canonical program `A385182.P1223750767979018473` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385182 has offset 1).

The definition of A385182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385182.P1223750767979018473

`comp[A181972(n+1)]-n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A385182

/-- `comp[A181972(n+1)]-n` -/
def P1223750767979018473.Spec : Prop :=
  ∀ n, P1223750767979018473.a n = A385182 (n + 1)

theorem P1223750767979018473.correct : P1223750767979018473.Spec := by
  intro n
  simp only [A385182, Nat.add_sub_cancel]

end A385182

/-! ## A385182.P8910317292417605631

`comp[A211264(n+1)]-n`
-/

namespace A385182.P8910317292417605631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385182.P8910317292417605631

namespace A385182

/-- `comp[A211264(n+1)]-n` -/
def P8910317292417605631.Spec : Prop :=
  ∀ n, P8910317292417605631.a n = A385182 (n + 1)

end A385182

/-! ## A385182.P3099993364071030716

`comp[∑[A056924(n+1)]]-n`
-/

namespace A385182.P3099993364071030716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385182.P3099993364071030716

namespace A385182

/-- `comp[∑[A056924(n+1)]]-n` -/
def P3099993364071030716.Spec : Prop :=
  ∀ n, P3099993364071030716.a n = A385182 (n + 1)

end A385182

/-! ## A385182.P11208748595929206279

`comp[A211265(n+1)]-n+1`
-/

namespace A385182.P11208748595929206279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A385182.P11208748595929206279

namespace A385182

/-- `comp[A211265(n+1)]-n+1` -/
def P11208748595929206279.Spec : Prop :=
  ∀ n, P11208748595929206279.a n = A385182 (n + 1)

end A385182

/-! ## A385182.P17495364624097378639

`comp[∑[A110654(A000005(n+1)-1)]]-n`
-/

namespace A385182.P17495364624097378639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000005 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385182.P17495364624097378639

namespace A385182

/-- `comp[∑[A110654(A000005(n+1)-1)]]-n` -/
def P17495364624097378639.Spec : Prop :=
  ∀ n, P17495364624097378639.a n = A385182 (n + 1)

end A385182

/-! ## A385182.P4845804953256069234

`comp[∑[A000005(n+1)-A038548(n+1)]]-n`
-/

namespace A385182.P4845804953256069234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A038548 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385182.P4845804953256069234

namespace A385182

/-- `comp[∑[A000005(n+1)-A038548(n+1)]]-n` -/
def P4845804953256069234.Spec : Prop :=
  ∀ n, P4845804953256069234.a n = A385182 (n + 1)

end A385182

/-!
# A385183: The v sequence in quartets (1,u,v,w); see A385182.

The programs for A385183, there is no canonical definition to state claims against.
-/

/-! ## A385183.P3479611663470287683

`A115576(A032890(2*(n+1)))+A115576(n+5)`
-/

namespace A385183.P3479611663470287683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (A032890 (2 * (n + 1))).toNat + A115576 (n + 5)

end

end A385183.P3479611663470287683

/-! ## A385183.P17278557430271475104

`A327390(A036961(n+1))`
-/

namespace A385183.P17278557430271475104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (A036961 (n + 1)).toNat

end

end A385183.P17278557430271475104

/-! ## A385183.P6613751952650227991

`A196563(A333743(2*(n+1))+3)`
-/

namespace A385183.P6613751952650227991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A333743 (2 * (n + 1)) + 3).toNat

end

end A385183.P6613751952650227991

/-! ## A385183.P17691888300661464125

`A001221(A235679(n+1)-A118851(n+1))`
-/

namespace A385183.P17691888300661464125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A235679 (n + 1) - A118851 (n + 1)).toNat

end

end A385183.P17691888300661464125

/-! ## A385183.P4626255293499878134

`A344888(A350304(n+1)%A316413(n+1))`
-/

namespace A385183.P4626255293499878134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344888 (Int.tmod (A350304 (n + 1)) (A316413 (n + 1))).toNat

end

end A385183.P4626255293499878134

/-!
# A385184: The w sequence in quartets (1,u,v,w); see A385182.

The programs for A385184, there is no canonical definition to state claims against.
-/

/-! ## A385184.P2680591930452190762

`A386630(n+1)-A001222(A076201(n+1))`
-/

namespace A385184.P2680591930452190762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386630 (n + 1) - A001222 (A076201 (n + 1)).toNat

end

end A385184.P2680591930452190762

/-! ## A385184.P16929348593836071428

`A386630(n+1)-A349618(A335325(n+1))`
-/

namespace A385184.P16929348593836071428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386630 (n + 1) - A349618 (A335325 (n + 1)).toNat

end

end A385184.P16929348593836071428

/-! ## A385184.P10176019283443646614

`A386630(n+1)-A293897(A293861(n+4))`
-/

namespace A385184.P10176019283443646614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386630 (n + 1) - A293897 (A293861 (n + 4)).toNat

end

end A385184.P10176019283443646614

/-! ## A385184.P9799584735886950678

`A386630(n+1)-A001221(A084667(n+5))`
-/

namespace A385184.P9799584735886950678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386630 (n + 1) - A001221 (A084667 (n + 5)).toNat

end

end A385184.P9799584735886950678

/-! ## A385184.P15955302924440431770

`A386630(n+1)-A158577(A386632(2*(n+1)))`
-/

namespace A385184.P15955302924440431770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386630 (n + 1) - A158577 (A386632 (2 * (n + 1))).toNat

end

end A385184.P15955302924440431770

/-!
# A385185: Number of permutations of 0..n-1 which are binary Gray codes.

The programs for A385185, there is no canonical definition to state claims against.
-/

/-! ## A385185.P7314328505004946517

`A347388(A103839(n+1))`
-/

namespace A385185.P7314328505004946517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347388 (A103839 (n + 1)).toNat

end

end A385185.P7314328505004946517

/-! ## A385185.P813005716064251293

`A001223(n+1)*A002487(-∏[n-C(2, n+2)])`
-/

namespace A385185.P813005716064251293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A002487 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A385185.P813005716064251293

/-! ## A385185.P17084520898947036050

`A001223(n+1)*A002487(A000142(n))`
-/

namespace A385185.P17084520898947036050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A002487 (A000142 n).toNat

end

end A385185.P17084520898947036050

/-! ## A385185.P8989716250196099406

`A001223(n+1)*A002487(A369833(n))`
-/

namespace A385185.P8989716250196099406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A002487 (A369833 n).toNat

end

end A385185.P8989716250196099406

/-!
# A385186: Oblong numbers of the form k*(k + 1) such that at least one of k and k + 1 is prime.

The programs for A385186, the canonical program `A385186.P4786045568556836293` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385186 has offset 1).

The definition of A385186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385186.P4786045568556836293

`2*A147846(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385186

/-- `2*A147846(n+1)` -/
def P4786045568556836293.Spec : Prop :=
  ∀ n, P4786045568556836293.a n = A385186 (n + 1)

theorem P4786045568556836293.correct : P4786045568556836293.Spec := by
  intro n
  simp only [A385186, Nat.add_sub_cancel]

end A385186

/-! ## A385186.P14539120920617194325

`A093515(n+1)*A173919(n+1)`
-/

namespace A385186.P14539120920617194325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) * A173919 (n + 1)

end

end A385186.P14539120920617194325

namespace A385186

/-- `A093515(n+1)*A173919(n+1)` -/
def P14539120920617194325.Spec : Prop :=
  ∀ n, P14539120920617194325.a n = A385186 (n + 1)

end A385186

/-! ## A385186.P16681162424502613295

`∪[A036689(n+1), A036690(n+1)]`
-/

namespace A385186.P16681162424502613295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P16681162424502613295

namespace A385186

/-- `∪[A036689(n+1), A036690(n+1)]` -/
def P16681162424502613295.Spec : Prop :=
  ∀ n, (P16681162424502613295.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P7281925765807356950

`2*A000217(A173919(n+1))`
-/

namespace A385186.P7281925765807356950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A173919 (n + 1)).toNat

end

end A385186.P7281925765807356950

namespace A385186

/-- `2*A000217(A173919(n+1))` -/
def P7281925765807356950.Spec : Prop :=
  ∀ n, P7281925765807356950.a n = A385186 (n + 1)

end A385186

/-! ## A385186.P1533252904085650932

`A147846(n+1)+A000217(A173919(n+1))`
-/

namespace A385186.P1533252904085650932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 1) + A000217 (A173919 (n + 1)).toNat

end

end A385186.P1533252904085650932

namespace A385186

/-- `A147846(n+1)+A000217(A173919(n+1))` -/
def P1533252904085650932.Spec : Prop :=
  ∀ n, P1533252904085650932.a n = A385186 (n + 1)

end A385186

/-! ## A385186.P13781066672375091920

`A002378(A173919(n+1))`
-/

namespace A385186.P13781066672375091920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A173919 (n + 1)).toNat

end

end A385186.P13781066672375091920

namespace A385186

/-- `A002378(A173919(n+1))` -/
def P13781066672375091920.Spec : Prop :=
  ∀ n, P13781066672375091920.a n = A385186 (n + 1)

end A385186

/-! ## A385186.P9978529900715115006

`A103505(A093515(n+1))`
-/

namespace A385186.P9978529900715115006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A093515 (n + 1)).toNat

end

end A385186.P9978529900715115006

namespace A385186

/-- `A103505(A093515(n+1))` -/
def P9978529900715115006.Spec : Prop :=
  ∀ n, P9978529900715115006.a n = A385186 (n + 1)

end A385186

/-! ## A385186.P6588532113777965900

`∩[A036441(n+1), A002378(n)]`
-/

namespace A385186.P6588532113777965900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P6588532113777965900

namespace A385186

/-- `∩[A036441(n+1), A002378(n)]` -/
def P6588532113777965900.Spec : Prop :=
  ∀ n, (P6588532113777965900.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P1549035003569866685

`∩[A076271(n+1), A002378(n)]`
-/

namespace A385186.P1549035003569866685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P1549035003569866685

namespace A385186

/-- `∩[A076271(n+1), A002378(n)]` -/
def P1549035003569866685.Spec : Prop :=
  ∀ n, (P1549035003569866685.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P14269932663457129772

`∩[A036441(n+1), A057895(n)]`
-/

namespace A385186.P14269932663457129772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P14269932663457129772

namespace A385186

/-- `∩[A036441(n+1), A057895(n)]` -/
def P14269932663457129772.Spec : Prop :=
  ∀ n, (P14269932663457129772.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P3452414283529955702

`∩[A028690(n+1), A036441(n+1)]`
-/

namespace A385186.P3452414283529955702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P3452414283529955702

namespace A385186

/-- `∩[A028690(n+1), A036441(n+1)]` -/
def P3452414283529955702.Spec : Prop :=
  ∀ n, (P3452414283529955702.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P15001648388835031953

`∩[A036441(n+1), A045619(n+1)]`
-/

namespace A385186.P15001648388835031953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P15001648388835031953

namespace A385186

/-- `∩[A036441(n+1), A045619(n+1)]` -/
def P15001648388835031953.Spec : Prop :=
  ∀ n, (P15001648388835031953.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P18347412291004371791

`∩[A045619(n+1), A076271(n+1)]`
-/

namespace A385186.P18347412291004371791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P18347412291004371791

namespace A385186

/-- `∩[A045619(n+1), A076271(n+1)]` -/
def P18347412291004371791.Spec : Prop :=
  ∀ n, (P18347412291004371791.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P8232492753091060461

`∩[A036441(n+1), A130404(n+1)]`
-/

namespace A385186.P8232492753091060461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P8232492753091060461

namespace A385186

/-- `∩[A036441(n+1), A130404(n+1)]` -/
def P8232492753091060461.Spec : Prop :=
  ∀ n, (P8232492753091060461.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P16433981272578473019

`∩[A036441(n+1), A140144(n+1)]`
-/

namespace A385186.P16433981272578473019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P16433981272578473019

namespace A385186

/-- `∩[A036441(n+1), A140144(n+1)]` -/
def P16433981272578473019.Spec : Prop :=
  ∀ n, (P16433981272578473019.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P2987442933668869412

`∩[A036441(n+1), A253913(n+1)]`
-/

namespace A385186.P2987442933668869412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P2987442933668869412

namespace A385186

/-- `∩[A036441(n+1), A253913(n+1)]` -/
def P2987442933668869412.Spec : Prop :=
  ∀ n, (P2987442933668869412.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P4179075818739954022

`∩[A076271(n+1), A253913(n+1)]`
-/

namespace A385186.P4179075818739954022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P4179075818739954022

namespace A385186

/-- `∩[A076271(n+1), A253913(n+1)]` -/
def P4179075818739954022.Spec : Prop :=
  ∀ n, (P4179075818739954022.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P8229224218974069012

`∩[A036441(n+1), A376313(n+2)]`
-/

namespace A385186.P8229224218974069012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P8229224218974069012

namespace A385186

/-- `∩[A036441(n+1), A376313(n+2)]` -/
def P8229224218974069012.Spec : Prop :=
  ∀ n, (P8229224218974069012.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P763372086617262955

`∩[A076271(n+1), A376313(n+2)]`
-/

namespace A385186.P763372086617262955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P763372086617262955

namespace A385186

/-- `∩[A076271(n+1), A376313(n+2)]` -/
def P763372086617262955.Spec : Prop :=
  ∀ n, (P763372086617262955.a n : ℤ) = A385186 (n + 1)

end A385186

/-! ## A385186.P9475730604263035356

`∩[A036441(n+1), A339267(n+1)]`
-/

namespace A385186.P9475730604263035356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385186.P9475730604263035356

namespace A385186

/-- `∩[A036441(n+1), A339267(n+1)]` -/
def P9475730604263035356.Spec : Prop :=
  ∀ n, (P9475730604263035356.a n : ℤ) = A385186 (n + 1)

end A385186

/-!
# A385187: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A002378(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A385187, the canonical program `A385187.P11356501436207310025` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385187 has offset 0).

The definition of A385187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385187.P6882095300416009458

`ogf((6x+288x^2+852x^3+288x^4+6x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A385187.P6882095300416009458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 288, 852, 288, 6] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A385187.P6882095300416009458

namespace A385187

/-- `ogf((6x+288x^2+852x^3+288x^4+6x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P6882095300416009458.Spec : Prop :=
  ∀ n, P6882095300416009458.a n = A385187 n

end A385187

/-! ## A385187.P11356501436207310025

`n*(n+1)*(n²+n-1)*(2*n²+2*n-1)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A385187

/-- `n*(n+1)*(n²+n-1)*(2*n²+2*n-1)` -/
def P11356501436207310025.Spec : Prop :=
  ∀ n, P11356501436207310025.a n = A385187 n

theorem P11356501436207310025.correct : P11356501436207310025.Spec := by
  intro n
  simp only [A385187]

end A385187

/-! ## A385187.P15169857608536100339

`A212133(A002378(n))-A002378(n)`
-/

namespace A385187.P15169857608536100339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 (A002378 n).toNat - A002378 n

end

end A385187.P15169857608536100339

namespace A385187

/-- `A212133(A002378(n))-A002378(n)` -/
def P15169857608536100339.Spec : Prop :=
  ∀ n, P15169857608536100339.a n = A385187 n

end A385187

/-! ## A385187.P5537159323907044935

`A011886(∑[4*n])`
-/

namespace A385187.P5537159323907044935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385187.P5537159323907044935

namespace A385187

/-- `A011886(∑[4*n])` -/
def P5537159323907044935.Spec : Prop :=
  ∀ n, P5537159323907044935.a n = A385187 n

end A385187

/-! ## A385187.P6544785541996076748

`A276670(A132209(n))`
-/

namespace A385187.P6544785541996076748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276670 (A132209 n).toNat

end

end A385187.P6544785541996076748

namespace A385187

/-- `A276670(A132209(n))` -/
def P6544785541996076748.Spec : Prop :=
  ∀ n, P6544785541996076748.a n = A385187 n

end A385187

/-! ## A385187.P17638328457365081088

`A007531(A046092(n))/4`
-/

namespace A385187.P17638328457365081088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (A046092 n).toNat : ℚ) / 4

end

end A385187.P17638328457365081088

namespace A385187

/-- `A007531(A046092(n))/4` -/
def P17638328457365081088.Spec : Prop :=
  ∀ n, P17638328457365081088.a n = (A385187 n : ℚ)

end A385187

/-!
# A385189: Intersection of A055932 and A002378.

The programs for A385189, there is no canonical definition to state claims against.
-/

/-! ## A385189.P1561172881531027627

`A141399(n+1)+A141399(n+1)²`
-/

namespace A385189.P1561172881531027627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141399 (n + 1) + A141399 (n + 1) ^ 2

end

end A385189.P1561172881531027627

/-! ## A385189.P17586694613746465276

`2*A000217(A141399(n+1))`
-/

namespace A385189.P17586694613746465276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A141399 (n + 1)).toNat

end

end A385189.P17586694613746465276

/-! ## A385189.P7295291487528549013

`A002378(A141399(n+1))`
-/

namespace A385189.P7295291487528549013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A141399 (n + 1)).toNat

end

end A385189.P7295291487528549013

/-! ## A385189.P2992443210592303607

`∩[A055932(n+1), A002378(n)]`
-/

namespace A385189.P2992443210592303607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385189.P2992443210592303607

/-! ## A385189.P15514756084138853538

`∩[A002378(n), A137895(n+1)]`
-/

namespace A385189.P15514756084138853538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385189.P15514756084138853538

/-!
# A385190: Primes p == 3 (mod 4), p > 3 such that 1+-i are 24th powers modulo p.

The programs for A385190, there is no canonical definition to state claims against.
-/

/-! ## A385190.P137239729694051686

`∩[A040992(n+1), A127578(n+1)]`
-/

namespace A385190.P137239729694051686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P137239729694051686

/-! ## A385190.P12153826474586783600

`∩[A040992(n+1), A239128(n+1)]`
-/

namespace A385190.P12153826474586783600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P12153826474586783600

/-! ## A385190.P14813930196651189860

`∩[A049544(n+1), A127578(n+1)]`
-/

namespace A385190.P14813930196651189860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P14813930196651189860

/-! ## A385190.P15214743685102198435

`∩[A049544(n+1), A239128(n+1)]`
-/

namespace A385190.P15214743685102198435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P15214743685102198435

/-! ## A385190.P1231383869469573087

`∩[A049556(n+1), A127578(n+1)]`
-/

namespace A385190.P1231383869469573087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P1231383869469573087

/-! ## A385190.P16215889821552037031

`∩[A049556(n+1), A239128(n+1)]`
-/

namespace A385190.P16215889821552037031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P16215889821552037031

/-! ## A385190.P9865702125431696936

`∩[A040028(n+1), A127578(n+1)]`
-/

namespace A385190.P9865702125431696936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P9865702125431696936

/-! ## A385190.P5030025268940164411

`∩[A040028(n+1), A239128(n+1)]`
-/

namespace A385190.P5030025268940164411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P5030025268940164411

/-! ## A385190.P13760958252640461571

`∩[A049580(n+1), A127578(n+1)]`
-/

namespace A385190.P13760958252640461571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P13760958252640461571

/-! ## A385190.P2950824151196312528

`∩[A049580(n+1), A239128(n+1)]`
-/

namespace A385190.P2950824151196312528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385190.P2950824151196312528

/-!
# A385192: Primes p such that multiplicative order of 5 modulo p is odd.

The programs for A385192, there is no canonical definition to state claims against.
-/

/-! ## A385192.P16634611944035636407

`∩[A040105(n+1), A138889(n+1)]`
-/

namespace A385192.P16634611944035636407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385192.P16634611944035636407

/-! ## A385192.P2927697402202985680

`∩[A040105(n+1), A173135(n+1)]`
-/

namespace A385192.P2927697402202985680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385192.P2927697402202985680

/-! ## A385192.P8256928534868086850

`∩[A040105(n+1), A331417(n)]`
-/

namespace A385192.P8256928534868086850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331417 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385192.P8256928534868086850

/-! ## A385192.P3744676166568513000

`∩[A040105(n+1), A113626(n+1)]`
-/

namespace A385192.P3744676166568513000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385192.P3744676166568513000

/-! ## A385192.P4871706824562612796

`∩[A040105(n+1), A104109(n+1)]`
-/

namespace A385192.P4871706824562612796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385192.P4871706824562612796

/-!
# A385193: Odd multiplicative orders of 5 modulo primes.

The programs for A385193, there is no canonical definition to state claims against.
-/

/-! ## A385193.P3832368074041187644

`A007736(A385192(n+1))`
-/

namespace A385193.P3832368074041187644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A385192 (n + 1)).toNat

end

end A385193.P3832368074041187644

/-! ## A385193.P12684742759609325463

`filter[A211241(n+1), A000035(#)]`
-/

namespace A385193.P12684742759609325463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385193.P12684742759609325463

/-!
# A385195: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is either 1 or 2.

The programs for A385195, the canonical program `A385195.P13869607100043770004` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385195 has offset 1).

The definition of A385195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385195.P13869607100043770004

`A138191(n+1)*A047994(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385195

/-- `A138191(n+1)*A047994(n+1)` -/
def P13869607100043770004.Spec : Prop :=
  ∀ n, P13869607100043770004.a n = A385195 (n + 1)

theorem P13869607100043770004.correct : P13869607100043770004.Spec := by
  intro n
  simp only [A385195, Nat.add_sub_cancel]

end A385195

/-! ## A385195.P8195888134269705939

`A047994(n+1)*A138191(n+1)`
-/

namespace A385195.P8195888134269705939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A138191 (n + 1)

end

end A385195.P8195888134269705939

namespace A385195

/-- `A047994(n+1)*A138191(n+1)` -/
def P8195888134269705939.Spec : Prop :=
  ∀ n, P8195888134269705939.a n = A385195 (n + 1)

theorem P8195888134269705939.correct : P8195888134269705939.Spec := by
  intro n
  simp only [A385195, Nat.add_sub_cancel, A385195.P8195888134269705939.a, A385195.P13869607100043770004.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A385195

/-! ## A385195.P1305609687950790485

`(A385197(n+1)-A385196(n+1))*A138191(n+1)`
-/

namespace A385195.P1305609687950790485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A385197 (n + 1) - A385196 (n + 1)) * A138191 (n + 1)

end

end A385195.P1305609687950790485

namespace A385195

/-- `(A385197(n+1)-A385196(n+1))*A138191(n+1)` -/
def P1305609687950790485.Spec : Prop :=
  ∀ n, P1305609687950790485.a n = A385195 (n + 1)

end A385195

/-! ## A385195.P4872833291910138155

`(A385199(n+1)-A385198(n+1))*A138191(n+1)`
-/

namespace A385195.P4872833291910138155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A385199 (n + 1) - A385198 (n + 1)) * A138191 (n + 1)

end

end A385195.P4872833291910138155

namespace A385195

/-- `(A385199(n+1)-A385198(n+1))*A138191(n+1)` -/
def P4872833291910138155.Spec : Prop :=
  ∀ n, P4872833291910138155.a n = A385195 (n + 1)

end A385195

/-! ## A385195.P8688530602624195497

`A173557(n+1)*A335341(n+1)*A138191(n+1)`
-/

namespace A385195.P8688530602624195497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A335341 (n + 1) * A138191 (n + 1)

end

end A385195.P8688530602624195497

namespace A385195

/-- `A173557(n+1)*A335341(n+1)*A138191(n+1)` -/
def P8688530602624195497.Spec : Prop :=
  ∀ n, P8688530602624195497.a n = A385195 (n + 1)

end A385195

/-! ## A385195.P14166910886585103652

`A319676(n+1)*A323409(n+1)*A138191(n+1)`
-/

namespace A385195.P14166910886585103652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319676 (n + 1) * A323409 (n + 1) * A138191 (n + 1)

end

end A385195.P14166910886585103652

namespace A385195

/-- `A319676(n+1)*A323409(n+1)*A138191(n+1)` -/
def P14166910886585103652.Spec : Prop :=
  ∀ n, P14166910886585103652.a n = A385195 (n + 1)

end A385195

/-! ## A385195.P17846882466092409505

`A191414(n+1)/A034448(n+1)*A138191(n+1)`
-/

namespace A385195.P17846882466092409505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ) * (A138191 (n + 1) : ℚ)

end

end A385195.P17846882466092409505

namespace A385195

/-- `A191414(n+1)/A034448(n+1)*A138191(n+1)` -/
def P17846882466092409505.Spec : Prop :=
  ∀ n, P17846882466092409505.a n = (A385195 (n + 1) : ℚ)

end A385195

/-! ## A385195.P15362233799889418719

`∑{d}[A003557(n+1), A000010(n+1)/#]*A138191(n+1)`
-/

namespace A385195.P15362233799889418719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 (n + 1) : ℚ) / (d : ℚ)) * (A138191 (n + 1) : ℚ)

end

end A385195.P15362233799889418719

namespace A385195

/-- `∑{d}[A003557(n+1), A000010(n+1)/#]*A138191(n+1)` -/
def P15362233799889418719.Spec : Prop :=
  ∀ n, P15362233799889418719.a n = (A385195 (n + 1) : ℚ)

end A385195

/-! ## A385195.P7879667255624392746

`A001511(A014673(n+3))*A047994(n+1)`
-/

namespace A385195.P7879667255624392746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A014673 (n + 3)).toNat * A047994 (n + 1)

end

end A385195.P7879667255624392746

namespace A385195

/-- `A001511(A014673(n+3))*A047994(n+1)` -/
def P7879667255624392746.Spec : Prop :=
  ∀ n, P7879667255624392746.a n = A385195 (n + 1)

end A385195

/-! ## A385195.P184780085693166124

`A047994(n+1)*A177704(3*n+4)`
-/

namespace A385195.P184780085693166124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A177704 (3 * n + 4)

end

end A385195.P184780085693166124

namespace A385195

/-- `A047994(n+1)*A177704(3*n+4)` -/
def P184780085693166124.Spec : Prop :=
  ∀ n, P184780085693166124.a n = A385195 (n + 1)

end A385195

/-!
# A385196: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a prime number.

The programs for A385196, there is no canonical definition to state claims against.
-/

/-! ## A385196.P13900447797035541566

`A385197(n+1)-A047994(n+1)`
-/

namespace A385196.P13900447797035541566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385197 (n + 1) - A047994 (n + 1)

end

end A385196.P13900447797035541566

/-! ## A385196.P13218215243421425551

`A385197(n+1)-(A385199(n+1)-A385198(n+1))`
-/

namespace A385196.P13218215243421425551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385197 (n + 1) - (A385199 (n + 1) - A385198 (n + 1))

end

end A385196.P13218215243421425551

/-! ## A385196.P10892034913539568300

`A385197(n+1)-A173557(n+1)*A335341(n+1)`
-/

namespace A385196.P10892034913539568300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385197 (n + 1) - A173557 (n + 1) * A335341 (n + 1)

end

end A385196.P10892034913539568300

/-! ## A385196.P12370015919807529903

`A385197(n+1)-A319676(n+1)*A323409(n+1)`
-/

namespace A385196.P12370015919807529903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385197 (n + 1) - A319676 (n + 1) * A323409 (n + 1)

end

end A385196.P12370015919807529903

/-! ## A385196.P4528042359473923845

`A385197(n+1)-A191414(n+1)/A034448(n+1)`
-/

namespace A385196.P4528042359473923845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385197 (n + 1) : ℚ) - (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A385196.P4528042359473923845

/-! ## A385196.P5633219159506018322

`A385197(n+1)-A385195(n+1)/A138191(n+1)`
-/

namespace A385196.P5633219159506018322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385197 (n + 1) : ℚ) - (A385195 (n + 1) : ℚ) / (A138191 (n + 1) : ℚ)

end

end A385196.P5633219159506018322

/-! ## A385196.P12056483707242415838

`A385197(n+1)-∑{d}[A003557(n+1), A000010(n+1)/#]`
-/

namespace A385196.P12056483707242415838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385197 (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 (n + 1) : ℚ) / (d : ℚ)

end

end A385196.P12056483707242415838

/-!
# A385197: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a noncomposite number.

The programs for A385197, there is no canonical definition to state claims against.
-/

/-! ## A385197.P5202894861370830812

`A385196(n+1)+A047994(n+1)`
-/

namespace A385197.P5202894861370830812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + A047994 (n + 1)

end

end A385197.P5202894861370830812

/-! ## A385197.P12604933874488029514

`A385196(n+1)+1-A323410(n+1)+n`
-/

namespace A385197.P12604933874488029514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + (1 - A323410 (n + 1) + (n : ℤ))

end

end A385197.P12604933874488029514

/-! ## A385197.P1799101456593077987

`A385196(n+1)+A344875(A026741(n+1))`
-/

namespace A385197.P1799101456593077987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + A344875 (A026741 (n + 1)).toNat

end

end A385197.P1799101456593077987

/-! ## A385197.P12082251645233806336

`A385196(n+1)+A346607(n+1)+A344005(n+1)`
-/

namespace A385197.P12082251645233806336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + (A346607 (n + 1) + A344005 (n + 1))

end

end A385197.P12082251645233806336

/-! ## A385197.P11948532705104257358

`A385196(n+1)+A385199(n+1)-A385198(n+1)`
-/

namespace A385197.P11948532705104257358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + (A385199 (n + 1) - A385198 (n + 1))

end

end A385197.P11948532705104257358

/-! ## A385197.P7595405838533861566

`A385196(n+1)+A319676(n+1)*A323409(n+1)`
-/

namespace A385197.P7595405838533861566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + A319676 (n + 1) * A323409 (n + 1)

end

end A385197.P7595405838533861566

/-! ## A385197.P13684122533752246044

`A385196(n+1)+A191414(n+1)/A034448(n+1)`
-/

namespace A385197.P13684122533752246044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385196 (n + 1) : ℚ) + (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A385197.P13684122533752246044

/-! ## A385197.P7106181525822242758

`A385196(n+1)+A333557(n+1)/A034444(n+1)`
-/

namespace A385197.P7106181525822242758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385196 (n + 1) : ℚ) + (A333557 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A385197.P7106181525822242758

/-! ## A385197.P10492696040127857238

`A385196(n+1)+A385195(n+1)/A138191(n+1)`
-/

namespace A385197.P10492696040127857238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385196 (n + 1) : ℚ) + (A385195 (n + 1) : ℚ) / (A138191 (n + 1) : ℚ)

end

end A385197.P10492696040127857238

/-! ## A385197.P13704694115090790228

`A385196(n+1)+lcm(A319676(n+1), A345938(n+1))`
-/

namespace A385197.P13704694115090790228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + (Int.lcm (A319676 (n + 1)) (A345938 (n + 1)) : ℤ)

end

end A385197.P13704694115090790228

/-! ## A385197.P2197991512878338200

`A385196(n+1)+∑{d}[A003557(n+1), #*A173557(n+1)]`
-/

namespace A385197.P2197991512878338200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385196 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A173557 (n + 1)

end

end A385197.P2197991512878338200

/-!
# A385198: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a prime power (A246655).

The programs for A385198, there is no canonical definition to state claims against.
-/

/-! ## A385198.P1262167387002328367

`A385199(n+1)-A047994(n+1)`
-/

namespace A385198.P1262167387002328367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - A047994 (n + 1)

end

end A385198.P1262167387002328367

/-! ## A385198.P6687724605842366883

`A385199(n+1)-(1-A323410(n+1)+n)`
-/

namespace A385198.P6687724605842366883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - (1 - A323410 (n + 1) + (n : ℤ))

end

end A385198.P6687724605842366883

/-! ## A385198.P18187565058966368152

`A385199(n+1)-A344875(A026741(n+1))`
-/

namespace A385198.P18187565058966368152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - A344875 (A026741 (n + 1)).toNat

end

end A385198.P18187565058966368152

/-! ## A385198.P8112743804684472223

`A385199(n+1)-(A346607(n+1)+A344005(n+1))`
-/

namespace A385198.P8112743804684472223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - (A346607 (n + 1) + A344005 (n + 1))

end

end A385198.P8112743804684472223

/-! ## A385198.P9228665703572293311

`A385199(n+1)-A173557(n+1)*A335341(n+1)`
-/

namespace A385198.P9228665703572293311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - A173557 (n + 1) * A335341 (n + 1)

end

end A385198.P9228665703572293311

/-! ## A385198.P6237644386530201648

`A385199(n+1)-A319676(n+1)*A323409(n+1)`
-/

namespace A385198.P6237644386530201648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - A319676 (n + 1) * A323409 (n + 1)

end

end A385198.P6237644386530201648

/-! ## A385198.P5791458856714475553

`A385199(n+1)-A191414(n+1)/A034448(n+1)`
-/

namespace A385198.P5791458856714475553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385199 (n + 1) : ℚ) - (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A385198.P5791458856714475553

/-! ## A385198.P2443718808368938111

`A385199(n+1)-A333557(n+1)/A034444(n+1)`
-/

namespace A385198.P2443718808368938111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385199 (n + 1) : ℚ) - (A333557 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A385198.P2443718808368938111

/-! ## A385198.P15228542394028189751

`A385199(n+1)-A385195((n+1)/A138191(n+1))`
-/

namespace A385198.P15228542394028189751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - A385195 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A138191 (n + 1) : ℚ))).toNat

end

end A385198.P15228542394028189751

/-! ## A385198.P10297361175524273440

`A385199(n+1)-∑{d}[A003557(n+1), A000010(n+1)/#]`
-/

namespace A385198.P10297361175524273440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385199 (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 (n + 1) : ℚ) / (d : ℚ)

end

end A385198.P10297361175524273440

/-!
# A385199: The number of integers k from 1 to n such that the greatest divisor of k that is either 1 or a prime power (A000961).

The programs for A385199, there is no canonical definition to state claims against.
-/

/-! ## A385199.P17912275194782760665

`A385198(n+1)+A047994(n+1)`
-/

namespace A385199.P17912275194782760665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385198 (n + 1) + A047994 (n + 1)

end

end A385199.P17912275194782760665

/-! ## A385199.P13017822903478450397

`A385198(n+1)+∑{d}[n+1, A023900(#)*A062355((n+1)/#)]`
-/

namespace A385199.P13017822903478450397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385198 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A023900 d * A062355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385199.P13017822903478450397

/-! ## A385199.P15074261163753508410

`A008966(∏{d}[∏{p}[n+1, #], #])+n`
-/

namespace A385199.P15074261163753508410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (∏ d ∈ Nat.divisors (f1 n), d) + (n : ℤ)

end

end A385199.P15074261163753508410

/-! ## A385199.P11022750512992884455

`A295316(∏{d}[∏{p}[n+1, #], #])+n`
-/

namespace A385199.P11022750512992884455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (∏ d ∈ Nat.divisors (f1 n), d) + (n : ℤ)

end

end A385199.P11022750512992884455

/-! ## A385199.P2313365327053907116

`A057994(∏{p}[n+1, 2%#²]-1)+n`
-/

namespace A385199.P2313365327053907116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057994 (∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 - 1) + (n : ℤ)

end

end A385199.P2313365327053907116

