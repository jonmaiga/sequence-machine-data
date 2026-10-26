import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A205801: Expansion of e.g.f. exp( Sum_{n>=1} x^(n^2) / (n^2) ).

The programs for A205801, there is no canonical definition to state claims against.
-/

/-! ## A205801.P12642070620336397391

`A029576(n)+A000265(A118935(n))`
-/

namespace A205801.P12642070620336397391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029576 n + A000265 (A118935 n).toNat

end

end A205801.P12642070620336397391

/-! ## A205801.P12299441391818491010

`A118935(A082216(n))+A029576(n)`
-/

namespace A205801.P12299441391818491010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118935 (A082216 n).toNat + A029576 n

end

end A205801.P12299441391818491010

/-! ## A205801.P3872157333902404

`A141310(A061138(n))+A029576(n)`
-/

namespace A205801.P3872157333902404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A061138 n).toNat + A029576 n

end

end A205801.P3872157333902404

/-! ## A205801.P9697619797237491218

`A118935(A087051(n))+A029576(n)`
-/

namespace A205801.P9697619797237491218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118935 (A087051 n).toNat + A029576 n

end

end A205801.P9697619797237491218

/-! ## A205801.P10091794802829580582

`A000265(A246616(n)+A118935(n))`
-/

namespace A205801.P10091794802829580582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A246616 n + A118935 n).toNat

end

end A205801.P10091794802829580582

/-!
# A205802: Expansion of e.g.f. 1/( Sum_{n>=0} (-x)^(n^2) / (n^2)! ).

The programs for A205802, there is no canonical definition to state claims against.
-/

/-! ## A205802.P7209162175518462456

`A117226(n)-A308553(A322297(n))`
-/

namespace A205802.P7209162175518462456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117226 n - A308553 (A322297 n).toNat

end

end A205802.P7209162175518462456

/-! ## A205802.P7501014251846833401

`A117226(n)-A060763(A001229(n+1))`
-/

namespace A205802.P7501014251846833401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117226 n - A060763 (A001229 (n + 1)).toNat

end

end A205802.P7501014251846833401

/-! ## A205802.P6199746119448712522

`A117226(n)-A358331(A334705(n+1))`
-/

namespace A205802.P6199746119448712522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117226 n - A358331 (A334705 (n + 1)).toNat

end

end A205802.P6199746119448712522

/-! ## A205802.P16408385108040621532

`A117226(n)-A200505(A337893(n+2))`
-/

namespace A205802.P16408385108040621532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117226 n - A200505 (A337893 (n + 2)).toNat

end

end A205802.P16408385108040621532

/-!
# A205803: E.g.f.: -log( Sum_{n>=0} (-x)^(n*(n+1)/2) / (n*(n+1)/2)! ).

The programs for A205803, there is no canonical definition to state claims against.
-/

/-! ## A205803.P8681100405772329084

`A034887(A202216(n+1)+A177523(n))`
-/

namespace A205803.P8681100405772329084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A202216 (n + 1) + A177523 n).toNat

end

end A205803.P8681100405772329084

/-! ## A205803.P16559463013507332194

`A034887(A202216(n+1)+A202213(n))`
-/

namespace A205803.P16559463013507332194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A202216 (n + 1) + A202213 n).toNat

end

end A205803.P16559463013507332194

/-! ## A205803.P12054247937885508773

`A034887(A202236(n+1)+A202213(n))`
-/

namespace A205803.P12054247937885508773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A202236 (n + 1) + A202213 n).toNat

end

end A205803.P12054247937885508773

/-!
# A205804: E.g.f.: -log( Sum_{n>=0} (-x)^(n^2) / (n^2)! ).

The programs for A205804, there is no canonical definition to state claims against.
-/

/-! ## A205804.P13127244335231461744

`or(∑{d}[n+1, #%2], A188010(A014517(n)))`
-/

namespace A205804.P13127244335231461744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) (A188010 (A014517 n).toNat)

end

end A205804.P13127244335231461744

/-! ## A205804.P4382532247176651371

`A276798(A000055(2*(n+1))+n)`
-/

namespace A205804.P4382532247176651371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A000055 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A205804.P4382532247176651371

/-! ## A205804.P10376073188127666263

`A005378(n)+A002265(A052896(n))`
-/

namespace A205804.P10376073188127666263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n + A002265 (A052896 n).toNat

end

end A205804.P10376073188127666263

/-!
# A205806: E.g.f. A(x) satisfies: A( cos(x) - exp(-x) ) = x.

The programs for A205806, there is no canonical definition to state claims against.
-/

/-! ## A205806.P4708530178193950219

`A000452(A001669(n))+A000217(n)`
-/

namespace A205806.P4708530178193950219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A001669 n).toNat + A000217 n

end

end A205806.P4708530178193950219

/-!
# A205808: G.f.: Sum_{n=-oo..oo} q^(9*n^2 + 2*n).

The programs for A205808, the canonical program `A205808.P17930734996881992554` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205808 has offset 0).

The definition of A205808 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205808.P17930734996881992554

`A010052(9*n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A205808

/-- `A010052(9*n+1)` -/
def P17930734996881992554.Spec : Prop :=
  ∀ n, P17930734996881992554.a n = A205808 n

theorem P17930734996881992554.correct : P17930734996881992554.Spec := by
  intro n
  simp only [A205808]

end A205808

/-! ## A205808.P18429594197448927772

`∑{d}[9*n+1, #]%2`
-/

namespace A205808.P18429594197448927772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 2

end

end A205808.P18429594197448927772

namespace A205808

/-- `∑{d}[9*n+1, #]%2` -/
def P18429594197448927772.Spec : Prop :=
  ∀ n, (P18429594197448927772.a n : ℤ) = A205808 n

end A205808

/-! ## A205808.P311916588894255481

`∏{e}[9*n+1, #+1]%2`
-/

namespace A205808.P311916588894255481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % 2

end

end A205808.P311916588894255481

namespace A205808

/-- `∏{e}[9*n+1, #+1]%2` -/
def P311916588894255481.Spec : Prop :=
  ∀ n, (P311916588894255481.a n : ℤ) = A205808 n

end A205808

/-! ## A205808.P15565900335117685813

`and(1, ∏{e}[9*n+1, #+1])`
-/

namespace A205808.P15565900335117685813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A205808.P15565900335117685813

namespace A205808

/-- `and(1, ∏{e}[9*n+1, #+1])` -/
def P15565900335117685813.Spec : Prop :=
  ∀ n, (P15565900335117685813.a n : ℤ) = A205808 n

end A205808

/-! ## A205808.P15281471722440875812

`A281453(n)%2`
-/

namespace A205808.P15281471722440875812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281453 n) 2

end

end A205808.P15281471722440875812

namespace A205808

/-- `A281453(n)%2` -/
def P15281471722440875812.Spec : Prop :=
  ∀ n, P15281471722440875812.a n = A205808 n

end A205808

/-! ## A205808.P2164961242959833949

`abs(A290739(3*n))`
-/

namespace A205808.P2164961242959833949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290739 (3 * n)|

end

end A205808.P2164961242959833949

namespace A205808

/-- `abs(A290739(3*n))` -/
def P2164961242959833949.Spec : Prop :=
  ∀ n, P2164961242959833949.a n = A205808 n

end A205808

/-! ## A205808.P432279263063717150

`char[A132355(n+1)]`
-/

namespace A205808.P432279263063717150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205808.P432279263063717150

namespace A205808

/-- `char[A132355(n+1)]` -/
def P432279263063717150.Spec : Prop :=
  ∀ n, (P432279263063717150.a n : ℤ) = A205808 n

end A205808

/-! ## A205808.P9207822454925368513

`A000005(9*n+1)%2`
-/

namespace A205808.P9207822454925368513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (9 * n + 1)) 2

end

end A205808.P9207822454925368513

namespace A205808

/-- `A000005(9*n+1)%2` -/
def P9207822454925368513.Spec : Prop :=
  ∀ n, P9207822454925368513.a n = A205808 n

end A205808

/-! ## A205808.P12212293354376214715

`A000203(9*n+1)%2`
-/

namespace A205808.P12212293354376214715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (9 * n + 1)) 2

end

end A205808.P12212293354376214715

namespace A205808

/-- `A000203(9*n+1)%2` -/
def P12212293354376214715.Spec : Prop :=
  ∀ n, P12212293354376214715.a n = A205808 n

end A205808

/-! ## A205808.P13744273183181264240

`and(1, A000005(3*3*n+1))`
-/

namespace A205808.P13744273183181264240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000005 (3 * (3 * n) + 1))

end

end A205808.P13744273183181264240

namespace A205808

/-- `and(1, A000005(3*3*n+1))` -/
def P13744273183181264240.Spec : Prop :=
  ∀ n, P13744273183181264240.a n = A205808 n

end A205808

/-! ## A205808.P13253100937968280867

`and(1, A000203(8*n+n+1))`
-/

namespace A205808.P13253100937968280867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (8 * n + (n + 1)))

end

end A205808.P13253100937968280867

namespace A205808

/-- `and(1, A000203(8*n+n+1))` -/
def P13253100937968280867.Spec : Prop :=
  ∀ n, P13253100937968280867.a n = A205808 n

end A205808

/-! ## A205808.P5383341383132340899

`char[∑[n*A000040(gcd(n+1, n-1)²)]]`
-/

namespace A205808.P5383341383132340899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205808.P5383341383132340899

namespace A205808

/-- `char[∑[n*A000040(gcd(n+1, n-1)²)]]` -/
def P5383341383132340899.Spec : Prop :=
  ∀ n, (P5383341383132340899.a n : ℤ) = A205808 n

end A205808

/-! ## A205808.P11252649138391671939

`A000035(A281453(n))`
-/

namespace A205808.P11252649138391671939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A281453 n).toNat

end

end A205808.P11252649138391671939

namespace A205808

/-- `A000035(A281453(n))` -/
def P11252649138391671939.Spec : Prop :=
  ∀ n, P11252649138391671939.a n = A205808 n

end A205808

/-! ## A205808.P11705321810873561777

`and(A016760(n), A281453(n))`
-/

namespace A205808.P11705321810873561777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A281453 n)

end

end A205808.P11705321810873561777

namespace A205808

/-- `and(A016760(n), A281453(n))` -/
def P11705321810873561777.Spec : Prop :=
  ∀ n, P11705321810873561777.a n = A205808 n

end A205808

/-! ## A205808.P2624688597663691011

`A033684(9*n+1)`
-/

namespace A205808.P2624688597663691011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (9 * n + 1)

end

end A205808.P2624688597663691011

namespace A205808

/-- `A033684(9*n+1)` -/
def P2624688597663691011.Spec : Prop :=
  ∀ n, P2624688597663691011.a n = A205808 n

end A205808

/-! ## A205808.P12904736810956583444

`A115356(A161705(n))`
-/

namespace A205808.P12904736810956583444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (A161705 n).toNat

end

end A205808.P12904736810956583444

namespace A205808

/-- `A115356(A161705(n))` -/
def P12904736810956583444.Spec : Prop :=
  ∀ n, P12904736810956583444.a n = A205808 n

end A205808

/-! ## A205808.P15664593250639550986

`A089801(3*n)`
-/

namespace A205808.P15664593250639550986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (3 * n)

end

end A205808.P15664593250639550986

namespace A205808

/-- `A089801(3*n)` -/
def P15664593250639550986.Spec : Prop :=
  ∀ n, P15664593250639550986.a n = A205808 n

end A205808

/-! ## A205808.P6840661591718869811

`abs(A089802(3*n))`
-/

namespace A205808.P6840661591718869811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A089802 (3 * n)|

end

end A205808.P6840661591718869811

namespace A205808

/-- `abs(A089802(3*n))` -/
def P6840661591718869811.Spec : Prop :=
  ∀ n, P6840661591718869811.a n = A205808 n

end A205808

/-! ## A205808.P12825305011470297534

`A185124(3*n)²`
-/

namespace A205808.P12825305011470297534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (3 * n) ^ 2

end

end A205808.P12825305011470297534

namespace A205808

/-- `A185124(3*n)²` -/
def P12825305011470297534.Spec : Prop :=
  ∀ n, P12825305011470297534.a n = A205808 n

end A205808

/-!
# A205809: G.f.: Sum_{n=-oo..oo} q^(9n^2+4n).

The programs for A205809, the canonical program `A205809.P12507200340799352163` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205809 has offset 0).

The definition of A205809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205809.P12507200340799352163

`∑{d}[9*n+4, #]%2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205809

/-- `∑{d}[9*n+4, #]%2` -/
def P12507200340799352163.Spec : Prop :=
  ∀ n, (P12507200340799352163.a n : ℤ) = A205809 n

theorem P12507200340799352163.correct : P12507200340799352163.Spec := by
  intro n
  simp only [A205809]

end A205809

/-! ## A205809.P4783466526063392685

`and(1, ∑{d}[9*n+4, #])`
-/

namespace A205809.P4783466526063392685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A205809.P4783466526063392685

namespace A205809

/-- `and(1, ∑{d}[9*n+4, #])` -/
def P4783466526063392685.Spec : Prop :=
  ∀ n, (P4783466526063392685.a n : ℤ) = A205809 n

theorem P4783466526063392685.correct : P4783466526063392685.Spec := by
  intro n
  simp only [A205809, Nat.add_sub_cancel, A205809.P4783466526063392685.f1, A205809.P4783466526063392685.a, A205809.P12507200340799352163.f1, A205809.P12507200340799352163.a, SequenceMachineLib.memo_apply]
  try simp

end A205809

/-! ## A205809.P12774878773973525133

`char[∑[n*(n%2+4)]]`
-/

namespace A205809.P12774878773973525133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A205809.P12774878773973525133

namespace A205809

/-- `char[∑[n*(n%2+4)]]` -/
def P12774878773973525133.Spec : Prop :=
  ∀ n, (P12774878773973525133.a n : ℤ) = A205809 n

end A205809

/-! ## A205809.P4510180749294007392

`char[∑[lcm(2, n)+3*n]]`
-/

namespace A205809.P4510180749294007392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A205809.P4510180749294007392

namespace A205809

/-- `char[∑[lcm(2, n)+3*n]]` -/
def P4510180749294007392.Spec : Prop :=
  ∀ n, (P4510180749294007392.a n : ℤ) = A205809 n

end A205809

/-! ## A205809.P362576478935635883

`char[∑[n*(and(1, n)+4)]]`
-/

namespace A205809.P362576478935635883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A205809.P362576478935635883

namespace A205809

/-- `char[∑[n*(and(1, n)+4)]]` -/
def P362576478935635883.Spec : Prop :=
  ∀ n, (P362576478935635883.a n : ℤ) = A205809 n

end A205809

/-! ## A205809.P11494582200070416962

`A281452(n)%2`
-/

namespace A205809.P11494582200070416962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281452 n) 2

end

end A205809.P11494582200070416962

namespace A205809

/-- `A281452(n)%2` -/
def P11494582200070416962.Spec : Prop :=
  ∀ n, P11494582200070416962.a n = A205809 n

end A205809

/-! ## A205809.P15509401375773724693

`char[A185039(n+1)]`
-/

namespace A205809.P15509401375773724693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205809.P15509401375773724693

namespace A205809

/-- `char[A185039(n+1)]` -/
def P15509401375773724693.Spec : Prop :=
  ∀ n, (P15509401375773724693.a n : ℤ) = A205809 n

end A205809

/-! ## A205809.P8324364551039235772

`A000005(9*n+4)%2`
-/

namespace A205809.P8324364551039235772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (9 * n + 4)) 2

end

end A205809.P8324364551039235772

namespace A205809

/-- `A000005(9*n+4)%2` -/
def P8324364551039235772.Spec : Prop :=
  ∀ n, P8324364551039235772.a n = A205809 n

end A205809

/-! ## A205809.P210030431673855638

`A000203(9*n+4)%2`
-/

namespace A205809.P210030431673855638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (9 * n + 4)) 2

end

end A205809.P210030431673855638

namespace A205809

/-- `A000203(9*n+4)%2` -/
def P210030431673855638.Spec : Prop :=
  ∀ n, P210030431673855638.a n = A205809 n

end A205809

/-! ## A205809.P13069999652596627194

`and(1, A000005(8*n+4+n))`
-/

namespace A205809.P13069999652596627194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000005 (8 * n + 4 + n))

end

end A205809.P13069999652596627194

namespace A205809

/-- `and(1, A000005(8*n+4+n))` -/
def P13069999652596627194.Spec : Prop :=
  ∀ n, P13069999652596627194.a n = A205809 n

end A205809

/-! ## A205809.P3595744616209633020

`and(1, A000203(8*n+4+n))`
-/

namespace A205809.P3595744616209633020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (8 * n + 4 + n))

end

end A205809.P3595744616209633020

namespace A205809

/-- `and(1, A000203(8*n+4+n))` -/
def P3595744616209633020.Spec : Prop :=
  ∀ n, P3595744616209633020.a n = A205809 n

end A205809

/-! ## A205809.P7782645986004573548

`A000035(A281452(n))`
-/

namespace A205809.P7782645986004573548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A281452 n).toNat

end

end A205809.P7782645986004573548

namespace A205809

/-- `A000035(A281452(n))` -/
def P7782645986004573548.Spec : Prop :=
  ∀ n, P7782645986004573548.a n = A205809 n

end A205809

/-! ## A205809.P13291991886706475517

`and(A001492(n), A281452(n))`
-/

namespace A205809.P13291991886706475517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001492 n) (A281452 n)

end

end A205809.P13291991886706475517

namespace A205809

/-- `and(A001492(n), A281452(n))` -/
def P13291991886706475517.Spec : Prop :=
  ∀ n, P13291991886706475517.a n = A205809 n

end A205809

/-! ## A205809.P3065819429671753802

`and(A016760(n), A281452(n))`
-/

namespace A205809.P3065819429671753802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A281452 n)

end

end A205809.P3065819429671753802

namespace A205809

/-- `and(A016760(n), A281452(n))` -/
def P3065819429671753802.Spec : Prop :=
  ∀ n, P3065819429671753802.a n = A205809 n

end A205809

/-! ## A205809.P3963627195604953859

`char[A046092(n)+A001057(n)²]`
-/

namespace A205809.P3963627195604953859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A001057 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205809.P3963627195604953859

namespace A205809

/-- `char[A046092(n)+A001057(n)²]` -/
def P3963627195604953859.Spec : Prop :=
  ∀ n, (P3963627195604953859.a n : ℤ) = A205809 n

end A205809

/-! ## A205809.P1941667697625115590

`char[A046092(n)+A110654(n)²]`
-/

namespace A205809.P1941667697625115590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A110654 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205809.P1941667697625115590

namespace A205809

/-- `char[A046092(n)+A110654(n)²]` -/
def P1941667697625115590.Spec : Prop :=
  ∀ n, (P1941667697625115590.a n : ℤ) = A205809 n

end A205809

/-! ## A205809.P4430720995900546653

`A010052(A384688(n)+n+1)`
-/

namespace A205809.P4430720995900546653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A384688 n + (n + 1 : ℤ)).toNat

end

end A205809.P4430720995900546653

namespace A205809

/-- `A010052(A384688(n)+n+1)` -/
def P4430720995900546653.Spec : Prop :=
  ∀ n, P4430720995900546653.a n = A205809 n

end A205809

/-! ## A205809.P14746376674130032440

`A145377(8*n+4+n)`
-/

namespace A205809.P14746376674130032440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (8 * n + 4 + n)

end

end A205809.P14746376674130032440

namespace A205809

/-- `A145377(8*n+4+n)` -/
def P14746376674130032440.Spec : Prop :=
  ∀ n, P14746376674130032440.a n = A205809 n

end A205809

/-! ## A205809.P5065305252013725465

`val(A000203(Δ[(3*n)²]-1)²+1, 2)`
-/

namespace A205809.P5065305252013725465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat ^ 2 + 1).toNat 2

end

end A205809.P5065305252013725465

namespace A205809

/-- `val(A000203(Δ[(3*n)²]-1)²+1, 2)` -/
def P5065305252013725465.Spec : Prop :=
  ∀ n, (P5065305252013725465.a n : ℤ) = A205809 n

end A205809

/-! ## A205809.P2994304459760914193

`A281814(A161983(n))`
-/

namespace A205809.P2994304459760914193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281814 (A161983 n).toNat

end

end A205809.P2994304459760914193

namespace A205809

/-- `A281814(A161983(n))` -/
def P2994304459760914193.Spec : Prop :=
  ∀ n, P2994304459760914193.a n = A205809 n

end A205809

/-!
# A205810: Irregular triangle read by rows: Whitney numbers c_{n,k} (n >= 0, 0 <= k <= 2n) of Lucas lattices.

The programs for A205810, there is no canonical definition to state claims against.
-/

/-! ## A205810.P92972670903957618

`A118816(A235114(n)+2)`
-/

namespace A205810.P92972670903957618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118816 (A235114 n + 2).toNat

end

end A205810.P92972670903957618

/-! ## A205810.P12060716508759543284

`A225541(A143505(n+1)²+2)`
-/

namespace A205810.P12060716508759543284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A143505 (n + 1) ^ 2 + 2).toNat

end

end A205810.P12060716508759543284

/-! ## A205810.P14282293580795163994

`A277157(A003116(n))+A137278(n)`
-/

namespace A205810.P14282293580795163994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 (A003116 n).toNat + A137278 n

end

end A205810.P14282293580795163994

/-! ## A205810.P17073623138530343982

`A277157(A101529(n+1))+A137278(n)`
-/

namespace A205810.P17073623138530343982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 (A101529 (n + 1)).toNat + A137278 n

end

end A205810.P17073623138530343982

/-! ## A205810.P9381288591478247464

`A276134(or(A154283(n+1), A276134(n)))`
-/

namespace A205810.P9381288591478247464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (Int.lor (A154283 (n + 1)) (A276134 n)).toNat

end

end A205810.P9381288591478247464

/-!
# A205811: G.f.: Product_{n>=1} [ (1 - x^n) / (1 - (n+1)^n*x^n) ]^(1/n).

The programs for A205811, there is no canonical definition to state claims against.
-/

/-! ## A205811.P5351602988171184574

`A007948(xor(A348615(n), A351818(n)))`
-/

namespace A205811.P5351602988171184574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (Int.xor (A348615 n) (A351818 n)).toNat

end

end A205811.P5351602988171184574

/-!
# A205812: a(n) = Sum_{k=1..n} binomial(n,k) * sigma(n,k).

The programs for A205812, there is no canonical definition to state claims against.
-/

/-! ## A205812.P14519796887439764142

`A163190(n+1)-A000005(n+1)`
-/

namespace A205812.P14519796887439764142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163190 (n + 1) - A000005 (n + 1)

end

end A205812.P14519796887439764142

/-! ## A205812.P1935267021814028506

`∑{d}[n+1, (#+1)^(n+1)-1]`
-/

namespace A205812.P1935267021814028506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((d + 1) ^ (n + 1) : ℤ) - 1)

end

end A205812.P1935267021814028506

/-!
# A205813: Triangle T(n,k), read by rows, given by (0, 2, 1, 1, 1, 1, 1, 1, 1, ...) DELTA (1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A205813, there is no canonical definition to state claims against.
-/

/-! ## A205813.P396615484170478466

`A113221(A090238(n))`
-/

namespace A205813.P396615484170478466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A090238 n).toNat

end

end A205813.P396615484170478466

/-! ## A205813.P13518046388732315

`A170889(A122538(n))`
-/

namespace A205813.P13518046388732315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 (A122538 n).toNat

end

end A205813.P13518046388732315

/-! ## A205813.P11663256033719552698

`A089867(A127631(n)+1)-1`
-/

namespace A205813.P11663256033719552698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A127631 n + 1).toNat - 1

end

end A205813.P11663256033719552698

/-! ## A205813.P16391387829661422228

`A170889(A321537(n)+A127631(n))`
-/

namespace A205813.P16391387829661422228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 (A321537 n + A127631 n).toNat

end

end A205813.P16391387829661422228

/-! ## A205813.P1429479288712697602

`C(A275328(n), A275333(A275281(3*n)))`
-/

namespace A205813.P1429479288712697602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A275328 n).toNat (A275333 (A275281 (3 * n)).toNat).toNat

end

end A205813.P1429479288712697602

/-!
# A205814: G.f.: Product_{n>=1} [ (1 - 2^n*x^n) / (1 - (n+2)^n*x^n) ]^(1/n).

The programs for A205814, there is no canonical definition to state claims against.
-/

/-! ## A205814.P1714026007237541044

`A119471(2*n+1)+A022998(A266201(n))`
-/

namespace A205814.P1714026007237541044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119471 (2 * n + 1) + A022998 (A266201 n).toNat

end

end A205814.P1714026007237541044

/-!
# A205816: Number of (n+1) X (n+1) 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205816, there is no canonical definition to state claims against.
-/

/-! ## A205816.P4361183462150920151

`A205823(∑[4*n]+1)`
-/

namespace A205816.P4361183462150920151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205816.P4361183462150920151

/-! ## A205816.P6659391420204848285

`lcm(2, A205823(A001844(n)))`
-/

namespace A205816.P6659391420204848285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205823 (A001844 n).toNat)

end

end A205816.P6659391420204848285

/-! ## A205816.P10921340975794163536

`record[gcd(A003987(n), A205823(n+1))]`
-/

namespace A205816.P10921340975794163536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A205823 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205816.P10921340975794163536

/-! ## A205816.P6843366610591309720

`A205823(A001844(n))+and(1, 2*n)*A005117(n+1)`
-/

namespace A205816.P6843366610591309720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A001844 n).toNat + (Nat.land 1 (2 * n) : ℤ) * A005117 (n + 1)

end

end A205816.P6843366610591309720

/-! ## A205816.P13586453522291177277

`A007318(A014963(2*(n+1)))*A205823(A001844(n))`
-/

namespace A205816.P13586453522291177277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A205823 (A001844 n).toNat

end

end A205816.P13586453522291177277

/-!
# A205817: Number of (n+1) X 3 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205817, there is no canonical definition to state claims against.
-/

/-! ## A205817.P6156248029826085986

`A205823(∑[n+1]+2)`
-/

namespace A205817.P6156248029826085986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205817.P6156248029826085986

/-! ## A205817.P3785458716035334148

`record[A205823(A286237(n+1)+1)]`
-/

namespace A205817.P3785458716035334148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205817.P3785458716035334148

/-! ## A205817.P17578680681754061652

`lcm(2, A205823(A000096(n+1)))`
-/

namespace A205817.P17578680681754061652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205823 (A000096 (n + 1)).toNat)

end

end A205817.P17578680681754061652

/-! ## A205817.P17082085163359367849

`A205823(A000096(n+1))%A205818(n+1)`
-/

namespace A205817.P17082085163359367849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205823 (A000096 (n + 1)).toNat) (A205818 (n + 1))

end

end A205817.P17082085163359367849

/-! ## A205817.P11113906546010648861

`A014963(A053741(n))*A205823(A000096(n+1))`
-/

namespace A205817.P11113906546010648861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053741 n).toNat * A205823 (A000096 (n + 1)).toNat

end

end A205817.P11113906546010648861

/-!
# A205818: Number of (n+1) X 4 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205818, there is no canonical definition to state claims against.
-/

/-! ## A205818.P16353066349861259803

`A205823(∑[n+2]+4)`
-/

namespace A205818.P16353066349861259803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205818.P16353066349861259803

/-! ## A205818.P14407006586185250982

`lcm(2, A205823(A167614(n+1)))`
-/

namespace A205818.P14407006586185250982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205823 (A167614 (n + 1)).toNat)

end

end A205818.P14407006586185250982

/-! ## A205818.P6812152151851610504

`A205823(A167614(n+1))+A025469(n)`
-/

namespace A205818.P6812152151851610504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A167614 (n + 1)).toNat + A025469 n

end

end A205818.P6812152151851610504

/-! ## A205818.P17846978886815642164

`A036225(n)*A205823(A167614(n+1))`
-/

namespace A205818.P17846978886815642164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A205823 (A167614 (n + 1)).toNat

end

end A205818.P17846978886815642164

/-! ## A205818.P16785846442404797028

`A205823(A167614(n+1))*A304042(n)`
-/

namespace A205818.P16785846442404797028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A167614 (n + 1)).toNat * A304042 n

end

end A205818.P16785846442404797028

/-!
# A205819: Number of (n+1) X 5 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205819, there is no canonical definition to state claims against.
-/

/-! ## A205819.P14972909532395930283

`A205823(C(n+5, 2)-n)`
-/

namespace A205819.P14972909532395930283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (Nat.choose (n + 5) 2 - n)

end

end A205819.P14972909532395930283

/-! ## A205819.P1292311256233129891

`A205823(A374004(n+1))`
-/

namespace A205819.P1292311256233129891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A374004 (n + 1)).toNat

end

end A205819.P1292311256233129891

/-! ## A205819.P15162167421770921223

`A205823(A141214(n)+7)`
-/

namespace A205819.P15162167421770921223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A141214 n + 7).toNat

end

end A205819.P15162167421770921223

/-! ## A205819.P1146772681846707650

`A205823(A055999(n)+10)`
-/

namespace A205819.P1146772681846707650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A055999 n + 10).toNat

end

end A205819.P1146772681846707650

/-! ## A205819.P13292166966429987734

`A205823(A167614(n+2)+1)`
-/

namespace A205819.P13292166966429987734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A167614 (n + 2) + 1).toNat

end

end A205819.P13292166966429987734

/-!
# A205820: Number of (n+1) X 6 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205820, there is no canonical definition to state claims against.
-/

/-! ## A205820.P3863581840429610368

`A205823(A374005(n+1))`
-/

namespace A205820.P3863581840429610368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A374005 (n + 1)).toNat

end

end A205820.P3863581840429610368

/-! ## A205820.P737406945725911676

`A205823(A167499(n+3))`
-/

namespace A205820.P737406945725911676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A167499 (n + 3)).toNat

end

end A205820.P737406945725911676

/-! ## A205820.P9555341768611653073

`A205823(A155212(n)+13)`
-/

namespace A205820.P9555341768611653073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A155212 n + 13).toNat

end

end A205820.P9555341768611653073

/-! ## A205820.P17996311660938072457

`A205823(Δ[A264443(n)])`
-/

namespace A205820.P17996311660938072457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (f1 (n + 1) - f1 n).toNat

end

end A205820.P17996311660938072457

/-! ## A205820.P5273493438148299877

`A205823(A046691(n+3))`
-/

namespace A205820.P5273493438148299877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A046691 (n + 3)).toNat

end

end A205820.P5273493438148299877

/-!
# A205821: Number of (n+1) X 7 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205821, there is no canonical definition to state claims against.
-/

/-! ## A205821.P13670078728327557862

`A205823(A374007(n+1))`
-/

namespace A205821.P13670078728327557862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A374007 (n + 1)).toNat

end

end A205821.P13670078728327557862

/-! ## A205821.P4996778611563211850

`A205823(A000217(n+5)+6)`
-/

namespace A205821.P4996778611563211850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A000217 (n + 5) + 6).toNat

end

end A205821.P4996778611563211850

/-! ## A205821.P12069399342797718528

`A205823(A141214(n+2)+9)`
-/

namespace A205821.P12069399342797718528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A141214 (n + 2) + 9).toNat

end

end A205821.P12069399342797718528

/-! ## A205821.P4304201047001596466

`A205823(eq[3, A219347(n)])`
-/

namespace A205821.P4304201047001596466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205821.P4304201047001596466

/-! ## A205821.P8867540828309311175

`A205823(eq[5, A193592(n)])`
-/

namespace A205821.P8867540828309311175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205821.P8867540828309311175

/-!
# A205822: Number of (n+1) X 8 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205822, there is no canonical definition to state claims against.
-/

/-! ## A205822.P636473532700119432

`A205823(A374008(n+1))`
-/

namespace A205822.P636473532700119432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A374008 (n + 1)).toNat

end

end A205822.P636473532700119432

/-! ## A205822.P7541604403531456920

`A205823(eq[8, A131818(n+1)])`
-/

namespace A205822.P7541604403531456920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205822.P7541604403531456920

/-! ## A205822.P9497982508677278720

`A205823(A055999(n+4))`
-/

namespace A205822.P9497982508677278720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (A055999 (n + 4)).toNat

end

end A205822.P9497982508677278720

/-! ## A205822.P6820594831141324952

`A205823(eq[4, A219347(n)])`
-/

namespace A205822.P6820594831141324952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205822.P6820594831141324952

/-! ## A205822.P17098561814133733341

`A205823(eq[6, A193592(n)])`
-/

namespace A205822.P17098561814133733341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205822.P17098561814133733341

/-!
# A205823: T(n,k) = number of (n+1) X (k+1) 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A205823, there is no canonical definition to state claims against.
-/

/-! ## A205823.P6565401733005374561

`A008443(lcm(A160121(n+1), A254422(n+1)))`
-/

namespace A205823.P6565401733005374561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (Int.lcm (A160121 (n + 1)) (A254422 (n + 1)))

end

end A205823.P6565401733005374561

/-!
# A205824: (3n)!/[3n*n!*(n+1)!].

The programs for A205824, the canonical program `A205824.P16256847760604571645` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205824 has offset 1).

The definition of A205824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205824.P16256847760604571645

`(3*(n+1))!/(3*(n+1)*(n+1)!*(n+2)!)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205824

/-- `(3*(n+1))!/(3*(n+1)*(n+1)!*(n+2)!)` -/
def P16256847760604571645.Spec : Prop :=
  ∀ n, P16256847760604571645.a n = (A205824 (n + 1) : ℚ)

end A205824

/-! ## A205824.P7473354864900562529

`n!*A319578(n)`
-/

namespace A205824.P7473354864900562529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A319578 n

end

end A205824.P7473354864900562529

namespace A205824

/-- `n!*A319578(n)` -/
def P7473354864900562529.Spec : Prop :=
  ∀ n, P7473354864900562529.a n = A205824 (n + 1)

end A205824

/-! ## A205824.P15337667486262031317

`C(2*n+n+2, n)*A000108(n+1)*n!`
-/

namespace A205824.P15337667486262031317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + (n + 2)) n : ℤ) * A000108 (n + 1) * (Nat.factorial n : ℤ)

end

end A205824.P15337667486262031317

namespace A205824

/-- `C(2*n+n+2, n)*A000108(n+1)*n!` -/
def P15337667486262031317.Spec : Prop :=
  ∀ n, P15337667486262031317.a n = A205824 (n + 1)

end A205824

/-! ## A205824.P6475289897868012541

`∏[A028310(n)]*A319578(n)`
-/

namespace A205824.P6475289897868012541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A319578 n

end

end A205824.P6475289897868012541

namespace A205824

/-- `∏[A028310(n)]*A319578(n)` -/
def P6475289897868012541.Spec : Prop :=
  ∀ n, P6475289897868012541.a n = A205824 (n + 1)

end A205824

/-! ## A205824.P12805997274087086798

`(n+2)*(3*n+2)!/(n+2)!²`
-/

namespace A205824.P12805997274087086798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.factorial (3 * n + 2) : ℚ) / (Nat.factorial (n + 2) ^ 2 : ℚ)

end

end A205824.P12805997274087086798

namespace A205824

/-- `(n+2)*(3*n+2)!/(n+2)!²` -/
def P12805997274087086798.Spec : Prop :=
  ∀ n, P12805997274087086798.a n = (A205824 (n + 1) : ℚ)

end A205824

/-!
# A205825: a(n) = n!/ceiling(n/2)!.

The programs for A205825, the canonical program `A205825.P13637472685936994504` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205825 has offset 0).

The definition of A205825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205825.P13637472685936994504

`n!/ceil(n/2)!`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205825

/-- `n!/ceil(n/2)!` -/
def P13637472685936994504.Spec : Prop :=
  ∀ n, P13637472685936994504.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P12093054187758087018

`floor(n/2)!*C(n, floor(n/2))`
-/

namespace A205825.P12093054187758087018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat * Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

end

end A205825.P12093054187758087018

namespace A205825

/-- `floor(n/2)!*C(n, floor(n/2))` -/
def P12093054187758087018.Spec : Prop :=
  ∀ n, (P12093054187758087018.a n : ℤ) = A205825 n

end A205825

/-! ## A205825.P18308385695079943695

`floor(n/2)!*A001405(n)`
-/

namespace A205825.P18308385695079943695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A001405 n

end

end A205825.P18308385695079943695

namespace A205825

/-- `floor(n/2)!*A001405(n)` -/
def P18308385695079943695.Spec : Prop :=
  ∀ n, P18308385695079943695.a n = A205825 n

end A205825

/-! ## A205825.P12048273250716132512

`n/A152271(n)*a(n-1)` with `a(0)=1`
-/

namespace A205825.P12048273250716132512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A152271 n : ℚ) * a (n - 1)

end

end A205825.P12048273250716132512

namespace A205825

/-- `n/A152271(n)*a(n-1)` -/
def P12048273250716132512.Spec : Prop :=
  ∀ n, P12048273250716132512.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P14154476398651388410

`C(n, floor(n/2))*A000142(floor(n/2))`
-/

namespace A205825.P14154476398651388410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A000142 ⌊(n : ℚ) / 2⌋.toNat

end

end A205825.P14154476398651388410

namespace A205825

/-- `C(n, floor(n/2))*A000142(floor(n/2))` -/
def P14154476398651388410.Spec : Prop :=
  ∀ n, P14154476398651388410.a n = A205825 n

end A205825

/-! ## A205825.P15502819231271254058

`A001405(n)*A081123(n)`
-/

namespace A205825.P15502819231271254058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A081123 n

end

end A205825.P15502819231271254058

namespace A205825

/-- `A001405(n)*A081123(n)` -/
def P15502819231271254058.Spec : Prop :=
  ∀ n, P15502819231271254058.a n = A205825 n

end A205825

/-! ## A205825.P5387390498824452405

`A158416(n)*A262033(n)`
-/

namespace A205825.P5387390498824452405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n * A262033 n

end

end A205825.P5387390498824452405

namespace A205825

/-- `A158416(n)*A262033(n)` -/
def P5387390498824452405.Spec : Prop :=
  ∀ n, P5387390498824452405.a n = A205825 n

end A205825

/-! ## A205825.P15883553809757683986

`∏[A028310(n)/A152271(n)]`
-/

namespace A205825.P15883553809757683986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A205825.P15883553809757683986

namespace A205825

/-- `∏[A028310(n)/A152271(n)]` -/
def P15883553809757683986.Spec : Prop :=
  ∀ n, P15883553809757683986.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P7165339075824927956

`A000142(floor(n/2))*A001405(n)`
-/

namespace A205825.P7165339075824927956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ⌊(n : ℚ) / 2⌋.toNat * A001405 n

end

end A205825.P7165339075824927956

namespace A205825

/-- `A000142(floor(n/2))*A001405(n)` -/
def P7165339075824927956.Spec : Prop :=
  ∀ n, P7165339075824927956.a n = A205825 n

end A205825

/-! ## A205825.P2866050746664000949

`∏[A065033(2*n)/A152271(n)]`
-/

namespace A205825.P2866050746664000949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n) : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A205825.P2866050746664000949

namespace A205825

/-- `∏[A065033(2*n)/A152271(n)]` -/
def P2866050746664000949.Spec : Prop :=
  ∀ n, P2866050746664000949.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P17354142095440662062

`A008619(n+1)/(n+1)*A262033(n+1)`
-/

namespace A205825.P17354142095440662062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (n + 1) : ℚ) / (n + 1 : ℚ) * (A262033 (n + 1) : ℚ)

end

end A205825.P17354142095440662062

namespace A205825

/-- `A008619(n+1)/(n+1)*A262033(n+1)` -/
def P17354142095440662062.Spec : Prop :=
  ∀ n, P17354142095440662062.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P15698687618512707173

`n/C(A004526(n+1), A004526(n))*a(n-1)` with `a(0)=1`
-/

namespace A205825.P15698687618512707173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (Nat.choose (A004526 (n + 1)).toNat (A004526 n).toNat : ℚ) * a (n - 1)

end

end A205825.P15698687618512707173

namespace A205825

/-- `n/C(A004526(n+1), A004526(n))*a(n-1)` -/
def P15698687618512707173.Spec : Prop :=
  ∀ n, P15698687618512707173.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P13772747582176068781

`A007318(A194274(n))*A081123(n)`
-/

namespace A205825.P13772747582176068781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A194274 n).toNat * A081123 n

end

end A205825.P13772747582176068781

namespace A205825

/-- `A007318(A194274(n))*A081123(n)` -/
def P13772747582176068781.Spec : Prop :=
  ∀ n, P13772747582176068781.a n = A205825 n

end A205825

/-! ## A205825.P12540124077117357099

`A028310(n)*A262033(A028310(n)-1)`
-/

namespace A205825.P12540124077117357099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A262033 (A028310 n - 1).toNat

end

end A205825.P12540124077117357099

namespace A205825

/-- `A028310(n)*A262033(A028310(n)-1)` -/
def P12540124077117357099.Spec : Prop :=
  ∀ n, P12540124077117357099.a n = A205825 n

end A205825

/-! ## A205825.P5594704376412411023

`A001405(n)/A152271(n)*∏[A152271(n)]`
-/

namespace A205825.P5594704376412411023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A152271 n : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A205825.P5594704376412411023

namespace A205825

/-- `A001405(n)/A152271(n)*∏[A152271(n)]` -/
def P5594704376412411023.Spec : Prop :=
  ∀ n, P5594704376412411023.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P18037508553242939608

`∏[A028310(n)/A158416(n)]*A158416(n)`
-/

namespace A205825.P18037508553242939608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A158416 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (A158416 n : ℚ)

end

end A205825.P18037508553242939608

namespace A205825

/-- `∏[A028310(n)/A158416(n)]*A158416(n)` -/
def P18037508553242939608.Spec : Prop :=
  ∀ n, P18037508553242939608.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P1623271239770418786

`A124320(A165157(n+1))`
-/

namespace A205825.P1623271239770418786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (A165157 (n + 1)).toNat

end

end A205825.P1623271239770418786

namespace A205825

/-- `A124320(A165157(n+1))` -/
def P1623271239770418786.Spec : Prop :=
  ∀ n, P1623271239770418786.a n = A205825 n

end A205825

/-! ## A205825.P10177684173905198116

`A081125(n)/A152271(n)`
-/

namespace A205825.P10177684173905198116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (A152271 n : ℚ)

end

end A205825.P10177684173905198116

namespace A205825

/-- `A081125(n)/A152271(n)` -/
def P10177684173905198116.Spec : Prop :=
  ∀ n, P10177684173905198116.a n = (A205825 n : ℚ)

end A205825

/-! ## A205825.P5701320347728139327

`A124320(A101881(n+1)-1)`
-/

namespace A205825.P5701320347728139327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (A101881 (n + 1) - 1).toNat

end

end A205825.P5701320347728139327

namespace A205825

/-- `A124320(A101881(n+1)-1)` -/
def P5701320347728139327.Spec : Prop :=
  ∀ n, P5701320347728139327.a n = A205825 n

end A205825

/-! ## A205825.P17555823325792087963

`A037224(2*n+1)+A037224(2*(n+1))/(n+1)`
-/

namespace A205825.P17555823325792087963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037224 (2 * n + 1) : ℚ) + (A037224 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A205825.P17555823325792087963

namespace A205825

/-- `A037224(2*n+1)+A037224(2*(n+1))/(n+1)` -/
def P17555823325792087963.Spec : Prop :=
  ∀ n, P17555823325792087963.a n = (A205825 n : ℚ)

end A205825

/-!
# A205827: Primes prime(k) corresponding to the records in the sequence (prime(k+1)/prime(k))^k.

The programs for A205827, there is no canonical definition to state claims against.
-/

/-! ## A205827.P5096736180632173678

`A000040(A214935(n+1))`
-/

namespace A205827.P5096736180632173678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A214935 (n + 1)).toNat

end

end A205827.P5096736180632173678

/-! ## A205827.P523034961722864874

`A008578(A214935(n+1)+1)`
-/

namespace A205827.P523034961722864874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A214935 (n + 1) + 1).toNat

end

end A205827.P523034961722864874

/-! ## A205827.P4330549498188722576

`A182986(A214935(n+1)+1)`
-/

namespace A205827.P4330549498188722576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A214935 (n + 1) + 1).toNat

end

end A205827.P4330549498188722576

/-! ## A205827.P7052303285197570438

`∩[A002386(n+1), A386352(n+1)]`
-/

namespace A205827.P7052303285197570438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205827.P7052303285197570438

/-!
# A205828: Number of (n+1) X (n+1) 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A205828, there is no canonical definition to state claims against.
-/

/-! ## A205828.P6873030101156638873

`A205836(∑[4*n]+1)`
-/

namespace A205828.P6873030101156638873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205828.P6873030101156638873

/-! ## A205828.P1421223106150204325

`lcm(2, A205836(A001844(n)))`
-/

namespace A205828.P1421223106150204325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205836 (A001844 n).toNat)

end

end A205828.P1421223106150204325

/-! ## A205828.P4418410537092171951

`record[A003982(n)*A205836(n+1)]`
-/

namespace A205828.P4418410537092171951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205828.P4418410537092171951

/-! ## A205828.P6837847781105870933

`record[gcd(A114327(n), A205836(n+1))]`
-/

namespace A205828.P6837847781105870933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A205836 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205828.P6837847781105870933

/-! ## A205828.P2461999432735654461

`A007318(A007318(n))*A205836(A001844(n))`
-/

namespace A205828.P2461999432735654461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A205836 (A001844 n).toNat

end

end A205828.P2461999432735654461

/-!
# A205829: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A205829, the canonical program `A205829.P15528193157531173871` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205829 has offset 1).

The definition of A205829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205829.P15528193157531173871

`4*a(n-1)-a(n-2)+a(n-3)` with `a(0)=30, a(1)=111, a(2)=423`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205829

/-- `4*a(n-1)-a(n-2)+a(n-3)` -/
def P15528193157531173871.Spec : Prop :=
  ∀ n, P15528193157531173871.a n = A205829 (n + 1)

theorem P15528193157531173871.correct : P15528193157531173871.Spec := by
  intro n
  simp only [A205829, Nat.add_sub_cancel]

end A205829

/-! ## A205829.P9860213796576783354

`A205836(∑[n]+1)`
-/

namespace A205829.P9860213796576783354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205829.P9860213796576783354

namespace A205829

/-- `A205836(∑[n]+1)` -/
def P9860213796576783354.Spec : Prop :=
  ∀ n, P9860213796576783354.a n = A205829 (n + 1)

end A205829

/-! ## A205829.P10121975485829777848

`lcm(3, A205836(A000124(n)))`
-/

namespace A205829.P10121975485829777848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205836 (A000124 n).toNat)

end

end A205829.P10121975485829777848

namespace A205829

/-- `lcm(3, A205836(A000124(n)))` -/
def P10121975485829777848.Spec : Prop :=
  ∀ n, (P10121975485829777848.a n : ℤ) = A205829 (n + 1)

end A205829

/-! ## A205829.P5268366991525130064

`record[root(A205836(n+1), A055818(n))]`
-/

namespace A205829.P5268366991525130064
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205836 (n + 1) : ℝ) ^ (1 / (A055818 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205829.P5268366991525130064

namespace A205829

/-- `record[root(A205836(n+1), A055818(n))]` -/
def P5268366991525130064.Spec : Prop :=
  ∀ n, P5268366991525130064.a n = (A205829 (n + 1) : ℝ)

end A205829

/-! ## A205829.P3239703685692580505

`record[root(A205836(n+1), A078920(n))]`
-/

namespace A205829.P3239703685692580505
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205836 (n + 1) : ℝ) ^ (1 / (A078920 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205829.P3239703685692580505

namespace A205829

/-- `record[root(A205836(n+1), A078920(n))]` -/
def P3239703685692580505.Spec : Prop :=
  ∀ n, P3239703685692580505.a n = (A205829 (n + 1) : ℝ)

end A205829

/-!
# A205830: Number of (n+1) X 3 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A205830, there is no canonical definition to state claims against.
-/

/-! ## A205830.P12545856823856436877

`A205836(∑[n+1]+2)`
-/

namespace A205830.P12545856823856436877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205830.P12545856823856436877

/-! ## A205830.P1484419962964920742

`lcm(3, A205836(A133263(n+1)))`
-/

namespace A205830.P1484419962964920742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205836 (A133263 (n + 1)).toNat)

end

end A205830.P1484419962964920742

/-! ## A205830.P14819018730555177620

`A033999(n)²*A205836(A133263(n+1))`
-/

namespace A205830.P14819018730555177620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A205836 (A133263 (n + 1)).toNat

end

end A205830.P14819018730555177620

/-! ## A205830.P1949198077913075175

`A205836(A133263(n+1))%A021394(n+2)`
-/

namespace A205830.P1949198077913075175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205836 (A133263 (n + 1)).toNat) (A021394 (n + 2))

end

end A205830.P1949198077913075175

/-! ## A205830.P7042578178052136172

`A007318(C(2, n))*A205836(A133263(n+1))`
-/

namespace A205830.P7042578178052136172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A205836 (A133263 (n + 1)).toNat

end

end A205830.P7042578178052136172

/-!
# A205831: Number of (n+1) X 4 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A205831, there is no canonical definition to state claims against.
-/

/-! ## A205831.P16809106441612219500

`A205836(∑[n+2]+4)`
-/

namespace A205831.P16809106441612219500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205831.P16809106441612219500

/-! ## A205831.P17008594169431655462

`lcm(3, A205836(A167614(n+1)))`
-/

namespace A205831.P17008594169431655462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205836 (A167614 (n + 1)).toNat)

end

end A205831.P17008594169431655462

/-! ## A205831.P15197188799919394479

`A205836(A167614(n+1))+A025469(n)`
-/

namespace A205831.P15197188799919394479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A167614 (n + 1)).toNat + A025469 n

end

end A205831.P15197188799919394479

/-! ## A205831.P15247413202759934444

`A205836(A167614(n+1))+A185284(n)`
-/

namespace A205831.P15247413202759934444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A167614 (n + 1)).toNat + A185284 n

end

end A205831.P15247413202759934444

/-! ## A205831.P10755755099682610366

`A205836(A167614(n+1))+A192541(n)`
-/

namespace A205831.P10755755099682610366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A167614 (n + 1)).toNat + A192541 n

end

end A205831.P10755755099682610366

/-!
# A205832: Number of (n+1)X5 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A205832, there is no canonical definition to state claims against.
-/

/-! ## A205832.P9263378087934174612

`A205836(C(n+5, 2)-n)`
-/

namespace A205832.P9263378087934174612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (Nat.choose (n + 5) 2 - n)

end

end A205832.P9263378087934174612

/-! ## A205832.P8132299691756094163

`A205836(A374004(n+1))`
-/

namespace A205832.P8132299691756094163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A374004 (n + 1)).toNat

end

end A205832.P8132299691756094163

/-! ## A205832.P4664900313227243358

`A205836(A141214(n)+7)`
-/

namespace A205832.P4664900313227243358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A141214 n + 7).toNat

end

end A205832.P4664900313227243358

/-! ## A205832.P5213511385020235889

`A205836(A052905(n)+9)`
-/

namespace A205832.P5213511385020235889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A052905 n + 9).toNat

end

end A205832.P5213511385020235889

/-! ## A205832.P5374824098502600673

`A205836(A055999(n)+10)`
-/

namespace A205832.P5374824098502600673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A055999 n + 10).toNat

end

end A205832.P5374824098502600673

/-!
# A205833: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A205833, there is no canonical definition to state claims against.
-/

/-! ## A205833.P5132398085392277375

`A205836(A374005(n+1))`
-/

namespace A205833.P5132398085392277375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A374005 (n + 1)).toNat

end

end A205833.P5132398085392277375

/-! ## A205833.P6795249244308056201

`A205836(A167499(n+3))`
-/

namespace A205833.P6795249244308056201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A167499 (n + 3)).toNat

end

end A205833.P6795249244308056201

/-! ## A205833.P11457711706072694518

`A205836(A133263(n+4)+3)`
-/

namespace A205833.P11457711706072694518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A133263 (n + 4) + 3).toNat

end

end A205833.P11457711706072694518

/-! ## A205833.P14770606014417071661

`A205836(eq[6, A131818(n+1)])`
-/

namespace A205833.P14770606014417071661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205833.P14770606014417071661

/-! ## A205833.P17072787725518587304

`A205836(Δ[A264443(n)])`
-/

namespace A205833.P17072787725518587304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (f1 (n + 1) - f1 n).toNat

end

end A205833.P17072787725518587304

/-!
# A205834: Number of (n+1) X 7 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A205834, there is no canonical definition to state claims against.
-/

/-! ## A205834.P5725449897633182716

`A205836(A374007(n+1))`
-/

namespace A205834.P5725449897633182716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A374007 (n + 1)).toNat

end

end A205834.P5725449897633182716

/-! ## A205834.P7398883042304432570

`A205836(A000217(n+5)+6)`
-/

namespace A205834.P7398883042304432570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A000217 (n + 5) + 6).toNat

end

end A205834.P7398883042304432570

/-! ## A205834.P6095034634054106920

`A205836(eq[7, A131818(n+1)])`
-/

namespace A205834.P6095034634054106920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205834.P6095034634054106920

/-! ## A205834.P15336265976689870532

`A205836(eq[7, A004736(n+1)]-A005843(n))`
-/

namespace A205834.P15336265976689870532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005843 n).toNat

end

end A205834.P15336265976689870532

/-! ## A205834.P4064233040846814755

`A205836(A052905(n+3))`
-/

namespace A205834.P4064233040846814755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A052905 (n + 3)).toNat

end

end A205834.P4064233040846814755

/-!
# A205835: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A205835, there is no canonical definition to state claims against.
-/

/-! ## A205835.P5286584472568996249

`A205836(A374008(n+1))`
-/

namespace A205835.P5286584472568996249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A374008 (n + 1)).toNat

end

end A205835.P5286584472568996249

/-! ## A205835.P3105187965923883745

`A205836(eq[8, A131818(n+1)])`
-/

namespace A205835.P3105187965923883745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205835.P3105187965923883745

/-! ## A205835.P3429479509813887393

`A205836(A055999(n+4))`
-/

namespace A205835.P3429479509813887393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (A055999 (n + 4)).toNat

end

end A205835.P3429479509813887393

/-! ## A205835.P9343231219678255487

`A205836(eq[4, A219347(n)])`
-/

namespace A205835.P9343231219678255487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205835.P9343231219678255487

/-! ## A205835.P10537994834285656534

`A205836(eq[6, A193592(n)])`
-/

namespace A205835.P10537994834285656534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205835.P10537994834285656534

/-!
# A205836: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A205836, there is no canonical definition to state claims against.
-/

/-! ## A205836.P1210653241801080714

`A205909(n+1)-(A206054(n+1)+3)`
-/

namespace A205836.P1210653241801080714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (n + 1) - (A206054 (n + 1) + 3)

end

end A205836.P1210653241801080714

/-! ## A205836.P8884622478703904246

`A205909(A000027(n+1))%(A206054(n+1)+3)`
-/

namespace A205836.P8884622478703904246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205909 (A000027 (n + 1)).toNat) (A206054 (n + 1) + 3)

end

end A205836.P8884622478703904246

/-! ## A205836.P8084521452770976075

`A205909(n+1)%(A206054(n+1)+A131818(A167614(n+1)))`
-/

namespace A205836.P8084521452770976075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205909 (n + 1)) (A206054 (n + 1) + A131818 (A167614 (n + 1)).toNat)

end

end A205836.P8084521452770976075

/-! ## A205836.P3242283512211338655

`A205909(A038722(n+1))%(A206054(n+1)+3)`
-/

namespace A205836.P3242283512211338655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205909 (A038722 (n + 1)).toNat) (A206054 (n + 1) + 3)

end

end A205836.P3242283512211338655

/-!
# A205837: Numbers k for which 2 divides s(k)-s(j) for some j

The programs for A205837, the canonical program `A205837.P9311824850182704817` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205837 has offset 1).

The definition of A205837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205837.P9311824850182704817

`∑[char[∑[A009947(n)]]]+2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A205837

/-- `∑[char[∑[A009947(n)]]]+2` -/
def P9311824850182704817.Spec : Prop :=
  ∀ n, (P9311824850182704817.a n : ℤ) = A205837 (n + 1)

theorem P9311824850182704817.correct : P9311824850182704817.Spec := by
  intro n
  simp only [A205837, Nat.add_sub_cancel]

end A205837

/-! ## A205837.P14615560091035220370

`A057355(ceil(sqrt(A034096(n+1))))`
-/

namespace A205837.P14615560091035220370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 ⌈Real.sqrt (A034096 (n + 1) : ℝ)⌉.toNat

end

end A205837.P14615560091035220370

namespace A205837

/-- `A057355(ceil(sqrt(A034096(n+1))))` -/
def P14615560091035220370.Spec : Prop :=
  ∀ n, P14615560091035220370.a n = A205837 (n + 1)

end A205837

/-! ## A205837.P14422596751163114756

`comp[A140462(n+1)-A140462(n)]-n`
-/

namespace A205837.P14422596751163114756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140462 (n + 1) - A140462 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A205837.P14422596751163114756

namespace A205837

/-- `comp[A140462(n+1)-A140462(n)]-n` -/
def P14422596751163114756.Spec : Prop :=
  ∀ n, P14422596751163114756.a n = A205837 (n + 1)

end A205837

/-! ## A205837.P8111674795916183417

`A002024(A205556(n+1))+1`
-/

namespace A205837.P8111674795916183417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205556 (n + 1)).toNat + 1

end

end A205837.P8111674795916183417

namespace A205837

/-- `A002024(A205556(n+1))+1` -/
def P8111674795916183417.Spec : Prop :=
  ∀ n, P8111674795916183417.a n = A205837 (n + 1)

end A205837

/-! ## A205837.P6056749025662676611

`A003057(A205556(n+1)+1)`
-/

namespace A205837.P6056749025662676611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205556 (n + 1) + 1).toNat

end

end A205837.P6056749025662676611

namespace A205837

/-- `A003057(A205556(n+1)+1)` -/
def P6056749025662676611.Spec : Prop :=
  ∀ n, P6056749025662676611.a n = A205837 (n + 1)

end A205837

/-! ## A205837.P914621145413107170

`A205838(n+1)+A004736(A205556(n+1))`
-/

namespace A205837.P914621145413107170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205838 (n + 1) + A004736 (A205556 (n + 1)).toNat

end

end A205837.P914621145413107170

namespace A205837

/-- `A205838(n+1)+A004736(A205556(n+1))` -/
def P914621145413107170.Spec : Prop :=
  ∀ n, P914621145413107170.a n = A205837 (n + 1)

end A205837

/-! ## A205837.P14900649823580956301

`A004736(A205556(n+1)+A004736(A205556(n+1)))`
-/

namespace A205837.P14900649823580956301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A205556 (n + 1) + A004736 (A205556 (n + 1)).toNat).toNat

end

end A205837.P14900649823580956301

namespace A205837

/-- `A004736(A205556(n+1)+A004736(A205556(n+1)))` -/
def P14900649823580956301.Spec : Prop :=
  ∀ n, P14900649823580956301.a n = A205837 (n + 1)

end A205837

/-! ## A205837.P16250835989202069878

`A097285(2*A205556(n+1))`
-/

namespace A205837.P16250835989202069878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205556 (n + 1)).toNat

end

end A205837.P16250835989202069878

namespace A205837

/-- `A097285(2*A205556(n+1))` -/
def P16250835989202069878.Spec : Prop :=
  ∀ n, P16250835989202069878.a n = A205837 (n + 1)

end A205837

/-!
# A205838: The least number j such that 2 divides s(k)-s(j), where k(n)=A205720(n).

The programs for A205838, the canonical program `A205838.P10030448835299135618` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205838 has offset 1).

The definition of A205838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205838.P10030448835299135618

`A002260(A205556(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A205838

/-- `A002260(A205556(n+1))` -/
def P10030448835299135618.Spec : Prop :=
  ∀ n, P10030448835299135618.a n = A205838 (n + 1)

theorem P10030448835299135618.correct : P10030448835299135618.Spec := by
  intro n
  simp only [A205838, Nat.add_sub_cancel]

end A205838

/-! ## A205838.P9024849191179262511

`A205837(n+1)-A004736(A205556(n+1))`
-/

namespace A205838.P9024849191179262511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205837 (n + 1) - A004736 (A205556 (n + 1)).toNat

end

end A205838.P9024849191179262511

namespace A205838

/-- `A205837(n+1)-A004736(A205556(n+1))` -/
def P9024849191179262511.Spec : Prop :=
  ∀ n, P9024849191179262511.a n = A205838 (n + 1)

end A205838

/-! ## A205838.P10379602324432051129

`A003057(A205556(n+1)+1)-A004736(A205556(n+1))`
-/

namespace A205838.P10379602324432051129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205556 (n + 1) + 1).toNat - A004736 (A205556 (n + 1)).toNat

end

end A205838.P10379602324432051129

namespace A205838

/-- `A003057(A205556(n+1)+1)-A004736(A205556(n+1))` -/
def P10379602324432051129.Spec : Prop :=
  ∀ n, P10379602324432051129.a n = A205838 (n + 1)

end A205838

/-! ## A205838.P1285004218312955151

`A097285(2*A205556(n+1)-1)`
-/

namespace A205838.P1285004218312955151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205556 (n + 1) - 1).toNat

end

end A205838.P1285004218312955151

namespace A205838

/-- `A097285(2*A205556(n+1)-1)` -/
def P1285004218312955151.Spec : Prop :=
  ∀ n, P1285004218312955151.a n = A205838 (n + 1)

end A205838

/-! ## A205838.P4110338165257243469

`A097285(A205556(n+1)+A205556(n+1)-1)`
-/

namespace A205838.P4110338165257243469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205556 (n + 1) + (A205556 (n + 1) - 1)).toNat

end

end A205838.P4110338165257243469

namespace A205838

/-- `A097285(A205556(n+1)+A205556(n+1)-1)` -/
def P4110338165257243469.Spec : Prop :=
  ∀ n, P4110338165257243469.a n = A205838 (n + 1)

end A205838

/-!
# A205839: s(k)-s(j), where the pairs (k,j) are given by A205837 and A205838.

The programs for A205839, the canonical program `A205839.P13121133368626487098` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205839 has offset 1).

The definition of A205839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205839.P10334786371328619667

`2*A205840(n+1)`
-/

namespace A205839.P10334786371328619667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205840 (n + 1)

end

end A205839.P10334786371328619667

namespace A205839

/-- `2*A205840(n+1)` -/
def P10334786371328619667.Spec : Prop :=
  ∀ n, P10334786371328619667.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P18218565415484015477

`A205840(n+1)+A205840(-xor(n, -1))`
-/

namespace A205839.P18218565415484015477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205840 (n + 1) + A205840 (-Int.xor (n : ℤ) (-1)).toNat

end

end A205839.P18218565415484015477

namespace A205839

/-- `A205840(n+1)+A205840(-xor(n, -1))` -/
def P18218565415484015477.Spec : Prop :=
  ∀ n, P18218565415484015477.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P14946190297445949496

`A205840(A000027(n+1))+A205840(n+1)`
-/

namespace A205839.P14946190297445949496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205840 (A000027 (n + 1)).toNat + A205840 (n + 1)

end

end A205839.P14946190297445949496

namespace A205839

/-- `A205840(A000027(n+1))+A205840(n+1)` -/
def P14946190297445949496.Spec : Prop :=
  ∀ n, P14946190297445949496.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P5956754946045160291

`A205840(A028310(n+1))+A205840(n+1)`
-/

namespace A205839.P5956754946045160291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205840 (A028310 (n + 1)).toNat + A205840 (n + 1)

end

end A205839.P5956754946045160291

namespace A205839

/-- `A205840(A028310(n+1))+A205840(n+1)` -/
def P5956754946045160291.Spec : Prop :=
  ∀ n, P5956754946045160291.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P13121133368626487098

`A204922(A205556(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A205839

/-- `A204922(A205556(n+1))` -/
def P13121133368626487098.Spec : Prop :=
  ∀ n, P13121133368626487098.a n = A205839 (n + 1)

theorem P13121133368626487098.correct : P13121133368626487098.Spec := by
  intro n
  simp only [A205839, Nat.add_sub_cancel]

end A205839

/-! ## A205839.P670361621695799437

`A205840(n+1)+A205840(n+1)%A205823(n+1)`
-/

namespace A205839.P670361621695799437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205840 (n + 1) + Int.tmod (A205840 (n + 1)) (A205823 (n + 1))

end

end A205839.P670361621695799437

namespace A205839

/-- `A205840(n+1)+A205840(n+1)%A205823(n+1)` -/
def P670361621695799437.Spec : Prop :=
  ∀ n, P670361621695799437.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P18079665437732000086

`A004277(A205840(n+1))`
-/

namespace A205839.P18079665437732000086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A205840 (n + 1)).toNat

end

end A205839.P18079665437732000086

namespace A205839

/-- `A004277(A205840(n+1))` -/
def P18079665437732000086.Spec : Prop :=
  ∀ n, P18079665437732000086.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P9928801062011212341

`A005408(A205840(n+1))-A003557(A173971(n+1))`
-/

namespace A205839.P9928801062011212341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A205840 (n + 1)).toNat - A003557 (A173971 (n + 1)).toNat

end

end A205839.P9928801062011212341

namespace A205839

/-- `A005408(A205840(n+1))-A003557(A173971(n+1))` -/
def P9928801062011212341.Spec : Prop :=
  ∀ n, P9928801062011212341.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P11222395318421791264

`filter[A204922(n+1), A059841(#)]`
-/

namespace A205839.P11222395318421791264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A205839.P11222395318421791264

namespace A205839

/-- `filter[A204922(n+1), A059841(#)]` -/
def P11222395318421791264.Spec : Prop :=
  ∀ n, P11222395318421791264.a n = A205839 (n + 1)

end A205839

/-! ## A205839.P10331183768540021641

`A204928(A205840(n+1)+A205840(n+1))`
-/

namespace A205839.P10331183768540021641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204928 (A205840 (n + 1) + A205840 (n + 1)).toNat

end

end A205839.P10331183768540021641

namespace A205839

/-- `A204928(A205840(n+1)+A205840(n+1))` -/
def P10331183768540021641.Spec : Prop :=
  ∀ n, P10331183768540021641.a n = A205839 (n + 1)

end A205839

/-!
# A205840: [s(k)-s(j)]/2, where the pairs (k,j) are given by A205837 and A205838.

The programs for A205840, the canonical program `A205840.P6115930359801578087` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205840 has offset 1).

The definition of A205840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205840.P6115930359801578087

`A205839(n+1)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205840

/-- `A205839(n+1)/2` -/
def P6115930359801578087.Spec : Prop :=
  ∀ n, P6115930359801578087.a n = (A205840 (n + 1) : ℚ)

end A205840

/-! ## A205840.P16870536561124538580

`2^A008683(A020483(n))*A205839(n+1)`
-/

namespace A205840.P16870536561124538580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A205839 (n + 1) : ℚ)

end

end A205840.P16870536561124538580

namespace A205840

/-- `2^A008683(A020483(n))*A205839(n+1)` -/
def P16870536561124538580.Spec : Prop :=
  ∀ n, P16870536561124538580.a n = (A205840 (n + 1) : ℚ)

end A205840

/-! ## A205840.P9784082633755922504

`A204922(A205556(n+1))/2`
-/

namespace A205840.P9784082633755922504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205556 (n + 1)).toNat : ℚ) / 2

end

end A205840.P9784082633755922504

namespace A205840

/-- `A204922(A205556(n+1))/2` -/
def P9784082633755922504.Spec : Prop :=
  ∀ n, P9784082633755922504.a n = (A205840 (n + 1) : ℚ)

end A205840

/-! ## A205840.P15782136936762140145

`2^A008683(A020484(n))*A204922(A205556(n+1))`
-/

namespace A205840.P15782136936762140145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A204922 (A205556 (n + 1)).toNat : ℚ)

end

end A205840.P15782136936762140145

namespace A205840

/-- `2^A008683(A020484(n))*A204922(A205556(n+1))` -/
def P15782136936762140145.Spec : Prop :=
  ∀ n, P15782136936762140145.a n = (A205840 (n + 1) : ℚ)

end A205840

/-! ## A205840.P3706232581100677948

`2^A008683(record[A014963(n+2)])*A205839(n+1)`
-/

namespace A205840.P3706232581100677948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ) * (A205839 (n + 1) : ℚ)

end

end A205840.P3706232581100677948

namespace A205840

/-- `2^A008683(record[A014963(n+2)])*A205839(n+1)` -/
def P3706232581100677948.Spec : Prop :=
  ∀ n, P3706232581100677948.a n = (A205840 (n + 1) : ℚ)

end A205840

/-! ## A205840.P10248298354444619863

`A014682(A205839(n+1))`
-/

namespace A205840.P10248298354444619863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A205839 (n + 1)).toNat

end

end A205840.P10248298354444619863

namespace A205840

/-- `A014682(A205839(n+1))` -/
def P10248298354444619863.Spec : Prop :=
  ∀ n, P10248298354444619863.a n = A205840 (n + 1)

end A205840

/-! ## A205840.P7642041754978322356

`A273943(lcm(2, A205839(n+1)))`
-/

namespace A205840.P7642041754978322356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A205839 (n + 1)))

end

end A205840.P7642041754978322356

namespace A205840

/-- `A273943(lcm(2, A205839(n+1)))` -/
def P7642041754978322356.Spec : Prop :=
  ∀ n, P7642041754978322356.a n = A205840 (n + 1)

end A205840

/-! ## A205840.P12103560833947998234

`A273943(A205839(n+1)-A000007(n))`
-/

namespace A205840.P12103560833947998234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A205839 (n + 1) - A000007 n).toNat

end

end A205840.P12103560833947998234

namespace A205840

/-- `A273943(A205839(n+1)-A000007(n))` -/
def P12103560833947998234.Spec : Prop :=
  ∀ n, P12103560833947998234.a n = A205840 (n + 1)

end A205840

/-! ## A205840.P17136562158750517207

`A255591(3*A205839(n+1))`
-/

namespace A205840.P17136562158750517207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (3 * A205839 (n + 1)).toNat

end

end A205840.P17136562158750517207

namespace A205840

/-- `A255591(3*A205839(n+1))` -/
def P17136562158750517207.Spec : Prop :=
  ∀ n, P17136562158750517207.a n = A205840 (n + 1)

end A205840

/-! ## A205840.P11844634870919227133

`A117358(4*A205839(n+1))`
-/

namespace A205840.P11844634870919227133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A205839 (n + 1)).toNat

end

end A205840.P11844634870919227133

namespace A205840

/-- `A117358(4*A205839(n+1))` -/
def P11844634870919227133.Spec : Prop :=
  ∀ n, P11844634870919227133.a n = A205840 (n + 1)

end A205840

/-!
# A205841: Positions of multiples of 3 in A204922 (differences of Fibonacci numbers).

The programs for A205841, the canonical program `A205841.P12637503451452630609` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205841 has offset 1).

The definition of A205841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205841.P12637503451452630609

`eq[0, A204922(n+1)%3]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A205841

/-- `eq[0, A204922(n+1)%3]+1` -/
def P12637503451452630609.Spec : Prop :=
  ∀ n, (P12637503451452630609.a n : ℤ) = A205841 (n + 1)

theorem P12637503451452630609.correct : P12637503451452630609.Spec := by
  intro n
  simp only [A205841, Nat.add_sub_cancel]

end A205841

/-! ## A205841.P4713160287639810205

`lt[A204922(n+2)%3, 1]+2`
-/

namespace A205841.P4713160287639810205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A205841.P4713160287639810205

namespace A205841

/-- `lt[A204922(n+2)%3, 1]+2` -/
def P4713160287639810205.Spec : Prop :=
  ∀ n, (P4713160287639810205.a n : ℤ) = A205841 (n + 1)

end A205841

/-! ## A205841.P697017486976508532

`lt[A204922(A028310(n))%3, 1]`
-/

namespace A205841.P697017486976508532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (A028310 n).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205841.P697017486976508532

namespace A205841

/-- `lt[A204922(A028310(n))%3, 1]` -/
def P697017486976508532.Spec : Prop :=
  ∀ n, (P697017486976508532.a n : ℤ) = A205841 (n + 1)

end A205841

/-! ## A205841.P11752279923302475245

`A020725(lt[A204922(n+1)%3, 1])`
-/

namespace A205841.P11752279923302475245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A205841.P11752279923302475245

namespace A205841

/-- `A020725(lt[A204922(n+1)%3, 1])` -/
def P11752279923302475245.Spec : Prop :=
  ∀ n, P11752279923302475245.a n = A205841 (n + 1)

end A205841

/-! ## A205841.P15932695837284969028

`lt[A204922(A000038(n)+n)%3, 1]`
-/

namespace A205841.P15932695837284969028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (A000038 n + (n : ℤ)).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205841.P15932695837284969028

namespace A205841

/-- `lt[A204922(A000038(n)+n)%3, 1]` -/
def P15932695837284969028.Spec : Prop :=
  ∀ n, (P15932695837284969028.a n : ℤ) = A205841 (n + 1)

end A205841

/-! ## A205841.P15924933341217727219

`lt[2, gcd(3, A204922(A000007(n)+n))]`
-/

namespace A205841.P15924933341217727219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A204922 (A000007 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A205841.P15924933341217727219

namespace A205841

/-- `lt[2, gcd(3, A204922(A000007(n)+n))]` -/
def P15924933341217727219.Spec : Prop :=
  ∀ n, (P15924933341217727219.a n : ℤ) = A205841 (n + 1)

end A205841

/-!
# A205842: Numbers k for which 3 divides s(k)-s(j) for some j

The programs for A205842, the canonical program `A205842.P9868123877778087869` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205842 has offset 1).

The definition of A205842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205842.P9868123877778087869

`1+A002024(A205841(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205842

/-- `1+A002024(A205841(n+1))` -/
def P9868123877778087869.Spec : Prop :=
  ∀ n, P9868123877778087869.a n = A205842 (n + 1)

theorem P9868123877778087869.correct : P9868123877778087869.Spec := by
  intro n
  simp only [A205842, Nat.add_sub_cancel]

end A205842

/-! ## A205842.P8721426309742392632

`A003057(A205841(n+1)+1)`
-/

namespace A205842.P8721426309742392632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205841 (n + 1) + 1).toNat

end

end A205842.P8721426309742392632

namespace A205842

/-- `A003057(A205841(n+1)+1)` -/
def P8721426309742392632.Spec : Prop :=
  ∀ n, P8721426309742392632.a n = A205842 (n + 1)

end A205842

/-! ## A205842.P3060992177480467878

`∑{d}[A005145(A205841(n+1)), A064839(#)]`
-/

namespace A205842.P3060992177480467878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A205841 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064839 d

end

end A205842.P3060992177480467878

namespace A205842

/-- `∑{d}[A005145(A205841(n+1)), A064839(#)]` -/
def P3060992177480467878.Spec : Prop :=
  ∀ n, P3060992177480467878.a n = A205842 (n + 1)

end A205842

/-! ## A205842.P17182948737397452483

`A205843(n+1)+A004736(A205841(n+1))`
-/

namespace A205842.P17182948737397452483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205843 (n + 1) + A004736 (A205841 (n + 1)).toNat

end

end A205842.P17182948737397452483

namespace A205842

/-- `A205843(n+1)+A004736(A205841(n+1))` -/
def P17182948737397452483.Spec : Prop :=
  ∀ n, P17182948737397452483.a n = A205842 (n + 1)

end A205842

/-! ## A205842.P3168871916194451794

`A004736(A205841(n+1)+A004736(A205841(n+1)))`
-/

namespace A205842.P3168871916194451794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A205841 (n + 1) + A004736 (A205841 (n + 1)).toNat).toNat

end

end A205842.P3168871916194451794

namespace A205842

/-- `A004736(A205841(n+1)+A004736(A205841(n+1)))` -/
def P3168871916194451794.Spec : Prop :=
  ∀ n, P3168871916194451794.a n = A205842 (n + 1)

end A205842

/-! ## A205842.P9680178973882600177

`A002024(A014132(A205841(n+1)))`
-/

namespace A205842.P9680178973882600177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A205841 (n + 1)).toNat).toNat

end

end A205842.P9680178973882600177

namespace A205842

/-- `A002024(A014132(A205841(n+1)))` -/
def P9680178973882600177.Spec : Prop :=
  ∀ n, P9680178973882600177.a n = A205842 (n + 1)

end A205842

/-! ## A205842.P1937395128872090366

`A097285(2*A205841(n+1))`
-/

namespace A205842.P1937395128872090366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205841 (n + 1)).toNat

end

end A205842.P1937395128872090366

namespace A205842

/-- `A097285(2*A205841(n+1))` -/
def P1937395128872090366.Spec : Prop :=
  ∀ n, P1937395128872090366.a n = A205842 (n + 1)

end A205842

/-!
# A205843: The least number j such that 3 divides s(k)-s(j), where k(n)=A205842(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205843, the canonical program `A205843.P8111042110380671226` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205843 has offset 1).

The definition of A205843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205843.P8111042110380671226

`A002260(A205841(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205843

/-- `A002260(A205841(n+1))` -/
def P8111042110380671226.Spec : Prop :=
  ∀ n, P8111042110380671226.a n = A205843 (n + 1)

theorem P8111042110380671226.correct : P8111042110380671226.Spec := by
  intro n
  simp only [A205843, Nat.add_sub_cancel]

end A205843

/-! ## A205843.P1811627993750189671

`A002262(A205841(n+1)-1)+1`
-/

namespace A205843.P1811627993750189671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205841 (n + 1) - 1).toNat + 1

end

end A205843.P1811627993750189671

namespace A205843

/-- `A002262(A205841(n+1)-1)+1` -/
def P1811627993750189671.Spec : Prop :=
  ∀ n, P1811627993750189671.a n = A205843 (n + 1)

end A205843

/-! ## A205843.P15285278580400432461

`A205842(n+1)-A004736(A205841(n+1))`
-/

namespace A205843.P15285278580400432461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205842 (n + 1) - A004736 (A205841 (n + 1)).toNat

end

end A205843.P15285278580400432461

namespace A205843

/-- `A205842(n+1)-A004736(A205841(n+1))` -/
def P15285278580400432461.Spec : Prop :=
  ∀ n, P15285278580400432461.a n = A205843 (n + 1)

end A205843

/-! ## A205843.P15863622672693447574

`A097285(2*A205841(n+1)-1)`
-/

namespace A205843.P15863622672693447574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205841 (n + 1) - 1).toNat

end

end A205843.P15863622672693447574

namespace A205843

/-- `A097285(2*A205841(n+1)-1)` -/
def P15863622672693447574.Spec : Prop :=
  ∀ n, P15863622672693447574.a n = A205843 (n + 1)

end A205843

/-! ## A205843.P12691954556855721252

`A097285(A205841(n+1)+A205841(n+1)-1)`
-/

namespace A205843.P12691954556855721252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205841 (n + 1) + (A205841 (n + 1) - 1)).toNat

end

end A205843.P12691954556855721252

namespace A205843

/-- `A097285(A205841(n+1)+A205841(n+1)-1)` -/
def P12691954556855721252.Spec : Prop :=
  ∀ n, P12691954556855721252.a n = A205843 (n + 1)

end A205843

/-!
# A205844: s(k)-s(j), where the pairs (k,j) are given by A205842 and A205843, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205844, there is no canonical definition to state claims against.
-/

/-! ## A205844.P7570672593273548255

`3*A205845(n+1)`
-/

namespace A205844.P7570672593273548255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A205845 (n + 1)

end

end A205844.P7570672593273548255

/-! ## A205844.P4283473668268333548

`A204922(A205841(n+1))`
-/

namespace A205844.P4283473668268333548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205841 (n + 1)).toNat

end

end A205844.P4283473668268333548

/-! ## A205844.P15176327421797679756

`A204922(eq[0, A204922(n+1)%3]+1)`
-/

namespace A205844.P15176327421797679756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205844.P15176327421797679756

/-! ## A205844.P3720906341837104716

`A204922(lt[A204922(n+2)%3, 1]+2)`
-/

namespace A205844.P3720906341837104716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A205844.P3720906341837104716

/-! ## A205844.P9653005320520336104

`A008486(A205845(n+1))`
-/

namespace A205844.P9653005320520336104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A205845 (n + 1)).toNat

end

end A205844.P9653005320520336104

/-! ## A205844.P12777038249284820402

`or(A000038(n), A008585(A205845(n+1)))`
-/

namespace A205844.P12777038249284820402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A008585 (A205845 (n + 1)).toNat)

end

end A205844.P12777038249284820402

/-! ## A205844.P7600829720625868043

`A008585(A205845(n+1))+A000038(n+1)`
-/

namespace A205844.P7600829720625868043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A205845 (n + 1)).toNat + A000038 (n + 1)

end

end A205844.P7600829720625868043

/-! ## A205844.P13106469755229610534

`A008585(A205845(n+1))%A000041(n+7)`
-/

namespace A205844.P13106469755229610534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A205845 (n + 1)).toNat) (A000041 (n + 7))

end

end A205844.P13106469755229610534

/-! ## A205844.P12286307259229987921

`A008585(A205845(n+1))^A001222(A007918(n))`
-/

namespace A205844.P12286307259229987921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A205845 (n + 1)).toNat : ℚ) ^ (A001222 (A007918 n).toNat : ℤ)

end

end A205844.P12286307259229987921

/-!
# A205845: [s(k)-s(j)]/3, where the pairs (k,j) are given by A205842 and A205843, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205845, there is no canonical definition to state claims against.
-/

/-! ## A205845.P11963836055758276680

`A205844(n+1)/3`
-/

namespace A205845.P11963836055758276680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205844 (n + 1) : ℚ) / 3

end

end A205845.P11963836055758276680

/-! ## A205845.P11349503736140667263

`A204922(A205841(n+1))/3`
-/

namespace A205845.P11349503736140667263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205841 (n + 1)).toNat : ℚ) / 3

end

end A205845.P11349503736140667263

/-! ## A205845.P4455745655600637391

`A204922(eq[0, A204922(n+1)%3]+1)/3`
-/

namespace A205845.P4455745655600637391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 3

end

end A205845.P4455745655600637391

/-! ## A205845.P7994845314208867973

`A255591(2*A205844(n+1))`
-/

namespace A205845.P7994845314208867973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (2 * A205844 (n + 1)).toNat

end

end A205845.P7994845314208867973

/-! ## A205845.P17106250447700328468

`A255591(A205844(n+1)+A205844(n+1))`
-/

namespace A205845.P17106250447700328468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A205844 (n + 1) + A205844 (n + 1)).toNat

end

end A205845.P17106250447700328468

/-! ## A205845.P17969095096334671468

`A002264(A205844(n+1))`
-/

namespace A205845.P17969095096334671468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A205844 (n + 1)).toNat

end

end A205845.P17969095096334671468

/-! ## A205845.P11819129063694233109

`A008611(A205844(n+1)+1)`
-/

namespace A205845.P11819129063694233109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A205844 (n + 1) + 1).toNat

end

end A205845.P11819129063694233109

/-! ## A205845.P1660867790926051757

`A009947(A205844(n+1)+1)`
-/

namespace A205845.P1660867790926051757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A205844 (n + 1) + 1).toNat

end

end A205845.P1660867790926051757

/-! ## A205845.P14239191747281121099

`A008620(A205844(n+1)-1)`
-/

namespace A205845.P14239191747281121099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A205844 (n + 1) - 1).toNat

end

end A205845.P14239191747281121099

/-!
# A205846: Positions of multiples of 4 in A204922 (differences of Fibonacci numbers).

The programs for A205846, the canonical program `A205846.P12741801419809068897` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205846 has offset 1).

The definition of A205846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205846.P12741801419809068897

`eq[0, A204922(n+1)%4]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A205846

/-- `eq[0, A204922(n+1)%4]+1` -/
def P12741801419809068897.Spec : Prop :=
  ∀ n, (P12741801419809068897.a n : ℤ) = A205846 (n + 1)

theorem P12741801419809068897.correct : P12741801419809068897.Spec := by
  intro n
  simp only [A205846, Nat.add_sub_cancel]

end A205846

/-! ## A205846.P1623067943319604141

`lt[A204922(abs(1-n)+1)%4, 1]`
-/

namespace A205846.P1623067943319604141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (|1 - (n : ℤ)| + 1).toNat) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205846.P1623067943319604141

namespace A205846

/-- `lt[A204922(abs(1-n)+1)%4, 1]` -/
def P1623067943319604141.Spec : Prop :=
  ∀ n, (P1623067943319604141.a n : ℤ) = A205846 (n + 1)

end A205846

/-! ## A205846.P7355473395358755546

`eq[4, gcd(4, A204922(A028310(n)))]`
-/

namespace A205846.P7355473395358755546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A204922 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205846.P7355473395358755546

namespace A205846

/-- `eq[4, gcd(4, A204922(A028310(n)))]` -/
def P7355473395358755546.Spec : Prop :=
  ∀ n, (P7355473395358755546.a n : ℤ) = A205846 (n + 1)

end A205846

/-!
# A205847: Numbers k for which 4 divides s(k)-s(j) for some j

The programs for A205847, the canonical program `A205847.P17021187226599039684` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205847 has offset 1).

The definition of A205847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205847.P17021187226599039684

`A002024(A205846(n+1))+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205847

/-- `A002024(A205846(n+1))+1` -/
def P17021187226599039684.Spec : Prop :=
  ∀ n, P17021187226599039684.a n = A205847 (n + 1)

theorem P17021187226599039684.correct : P17021187226599039684.Spec := by
  intro n
  simp only [A205847, Nat.add_sub_cancel]

end A205847

/-! ## A205847.P4559330965014170007

`A003057(A205846(n+1)+1)`
-/

namespace A205847.P4559330965014170007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205846 (n + 1) + 1).toNat

end

end A205847.P4559330965014170007

namespace A205847

/-- `A003057(A205846(n+1)+1)` -/
def P4559330965014170007.Spec : Prop :=
  ∀ n, P4559330965014170007.a n = A205847 (n + 1)

end A205847

/-! ## A205847.P12625814370379176472

`A123578(A205846(n+1))+A000034(2*n)`
-/

namespace A205847.P12625814370379176472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205846 (n + 1)).toNat + A000034 (2 * n)

end

end A205847.P12625814370379176472

namespace A205847

/-- `A123578(A205846(n+1))+A000034(2*n)` -/
def P12625814370379176472.Spec : Prop :=
  ∀ n, P12625814370379176472.a n = A205847 (n + 1)

end A205847

/-! ## A205847.P8887812964238611655

`A123578(A205846(n+1))+A000035(2*n+1)`
-/

namespace A205847.P8887812964238611655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205846 (n + 1)).toNat + A000035 (2 * n + 1)

end

end A205847.P8887812964238611655

namespace A205847

/-- `A123578(A205846(n+1))+A000035(2*n+1)` -/
def P8887812964238611655.Spec : Prop :=
  ∀ n, P8887812964238611655.a n = A205847 (n + 1)

end A205847

/-! ## A205847.P7272812560498329323

`A123578(A205846(n+1))+A014963(A008458(n))`
-/

namespace A205847.P7272812560498329323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205846 (n + 1)).toNat + A014963 (A008458 n).toNat

end

end A205847.P7272812560498329323

namespace A205847

/-- `A123578(A205846(n+1))+A014963(A008458(n))` -/
def P7272812560498329323.Spec : Prop :=
  ∀ n, P7272812560498329323.a n = A205847 (n + 1)

end A205847

/-! ## A205847.P6668048666738333360

`A097285(2*A205846(n+1))`
-/

namespace A205847.P6668048666738333360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205846 (n + 1)).toNat

end

end A205847.P6668048666738333360

namespace A205847

/-- `A097285(2*A205846(n+1))` -/
def P6668048666738333360.Spec : Prop :=
  ∀ n, P6668048666738333360.a n = A205847 (n + 1)

end A205847

/-! ## A205847.P13095184901663856221

`A123578(A205846(n+1))+A007318(A000096(n))`
-/

namespace A205847.P13095184901663856221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205846 (n + 1)).toNat + A007318 (A000096 n).toNat

end

end A205847.P13095184901663856221

namespace A205847

/-- `A123578(A205846(n+1))+A007318(A000096(n))` -/
def P13095184901663856221.Spec : Prop :=
  ∀ n, P13095184901663856221.a n = A205847 (n + 1)

end A205847

/-! ## A205847.P3754692668818011543

`A123578(A205846(n+1))+A007318(A000217(n))`
-/

namespace A205847.P3754692668818011543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205846 (n + 1)).toNat + A007318 (A000217 n).toNat

end

end A205847.P3754692668818011543

namespace A205847

/-- `A123578(A205846(n+1))+A007318(A000217(n))` -/
def P3754692668818011543.Spec : Prop :=
  ∀ n, P3754692668818011543.a n = A205847 (n + 1)

end A205847

/-!
# A205848: The least number j such that 4 divides s(k)-s(j), where k(n)=A205847(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205848, the canonical program `A205848.P7474827148853857163` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205848 has offset 1).

The definition of A205848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205848.P7474827148853857163

`A002260(A205846(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205848

/-- `A002260(A205846(n+1))` -/
def P7474827148853857163.Spec : Prop :=
  ∀ n, P7474827148853857163.a n = A205848 (n + 1)

theorem P7474827148853857163.correct : P7474827148853857163.Spec := by
  intro n
  simp only [A205848, Nat.add_sub_cancel]

end A205848

/-! ## A205848.P9134784491854121175

`A002260(eq[0, A204922(n+1)%4]+1)`
-/

namespace A205848.P9134784491854121175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205848.P9134784491854121175

namespace A205848

/-- `A002260(eq[0, A204922(n+1)%4]+1)` -/
def P9134784491854121175.Spec : Prop :=
  ∀ n, P9134784491854121175.a n = A205848 (n + 1)

end A205848

/-! ## A205848.P6914657293563193330

`A205847(n+1)-A004736(A205846(n+1))`
-/

namespace A205848.P6914657293563193330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205847 (n + 1) - A004736 (A205846 (n + 1)).toNat

end

end A205848.P6914657293563193330

namespace A205848

/-- `A205847(n+1)-A004736(A205846(n+1))` -/
def P6914657293563193330.Spec : Prop :=
  ∀ n, P6914657293563193330.a n = A205848 (n + 1)

end A205848

/-! ## A205848.P833339110148483016

`A097285(2*A205846(n+1)-1)`
-/

namespace A205848.P833339110148483016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205846 (n + 1) - 1).toNat

end

end A205848.P833339110148483016

namespace A205848

/-- `A097285(2*A205846(n+1)-1)` -/
def P833339110148483016.Spec : Prop :=
  ∀ n, P833339110148483016.a n = A205848 (n + 1)

end A205848

/-! ## A205848.P4081642039092266056

`A097285(A205846(n+1)+A205846(n+1)-1)`
-/

namespace A205848.P4081642039092266056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205846 (n + 1) + (A205846 (n + 1) - 1)).toNat

end

end A205848.P4081642039092266056

namespace A205848

/-- `A097285(A205846(n+1)+A205846(n+1)-1)` -/
def P4081642039092266056.Spec : Prop :=
  ∀ n, P4081642039092266056.a n = A205848 (n + 1)

end A205848

/-!
# A205849: s(k)-s(j), where the pairs (k,j) are given by A205847 and A205848, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205849, there is no canonical definition to state claims against.
-/

/-! ## A205849.P3405876179447969193

`4*A205850(n+1)`
-/

namespace A205849.P3405876179447969193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A205850 (n + 1)

end

end A205849.P3405876179447969193

/-! ## A205849.P5056054963953224497

`A205850(C(n+1, n))/(1/2)²`
-/

namespace A205849.P5056054963953224497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205850 (Nat.choose (n + 1) n) : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A205849.P5056054963953224497

/-! ## A205849.P14557996244387461482

`A205850(A000027(n+1))/(1/2)²`
-/

namespace A205849.P14557996244387461482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205850 (A000027 (n + 1)).toNat : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A205849.P14557996244387461482

/-! ## A205849.P3268296711907221472

`A204922(A205846(n+1))`
-/

namespace A205849.P3268296711907221472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205846 (n + 1)).toNat

end

end A205849.P3268296711907221472

/-! ## A205849.P15389905772095362523

`A204922(eq[0, A204922(n+1)%4]+1)`
-/

namespace A205849.P15389905772095362523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205849.P15389905772095362523

/-! ## A205849.P9764012986089397825

`filter[A205839(n+1), A358680(#)]`
-/

namespace A205849.P9764012986089397825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A205849.P9764012986089397825

/-! ## A205849.P10197328669281924751

`filter[A205839(n+1), A374036(#)]`
-/

namespace A205849.P10197328669281924751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A205849.P10197328669281924751

/-! ## A205849.P11076759396954235306

`filter[A205839(n+1), A374045(#)]`
-/

namespace A205849.P11076759396954235306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A205849.P11076759396954235306

/-! ## A205849.P12778933096113284804

`filter[A205839(n+1), A073089(#)]`
-/

namespace A205849.P12778933096113284804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A205849.P12778933096113284804

/-! ## A205849.P2805966013625299216

`filter[A204922(n+1), A121262(#)]`
-/

namespace A205849.P2805966013625299216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A205849.P2805966013625299216

/-!
# A205850: [s(k)-s(j)]/4, where the pairs (k,j) are given by A205847 and A205848, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205850, there is no canonical definition to state claims against.
-/

/-! ## A205850.P11959872683553610372

`A205849(n+1)/4`
-/

namespace A205850.P11959872683553610372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205849 (n + 1) : ℚ) / 4

end

end A205850.P11959872683553610372

/-! ## A205850.P10428982616322654349

`A204922(A205846(n+1))/4`
-/

namespace A205850.P10428982616322654349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205846 (n + 1)).toNat : ℚ) / 4

end

end A205850.P10428982616322654349

/-! ## A205850.P17375425918406232691

`A204922(eq[0, A204922(n+1)%4]+1)/4`
-/

namespace A205850.P17375425918406232691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 4

end

end A205850.P17375425918406232691

/-! ## A205850.P16514385386553693834

`4^A033999(A016969(n))*A205849(n+1)`
-/

namespace A205850.P16514385386553693834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A033999 (A016969 n).toNat : ℤ) * (A205849 (n + 1) : ℚ)

end

end A205850.P16514385386553693834

/-! ## A205850.P15201543919483004378

`A117358(2*A205849(n+1))`
-/

namespace A205850.P15201543919483004378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A205849 (n + 1)).toNat

end

end A205850.P15201543919483004378

/-! ## A205850.P5118220896347978284

`A174571(A205849(n+1))`
-/

namespace A205850.P5118220896347978284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A205849 (n + 1)).toNat

end

end A205850.P5118220896347978284

/-! ## A205850.P10419341076910996038

`A002265(A205849(n+1)+1)`
-/

namespace A205850.P10419341076910996038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A205849 (n + 1) + 1).toNat

end

end A205850.P10419341076910996038

/-! ## A205850.P2781715199575987110

`A008624(A205849(n+1)+1)`
-/

namespace A205850.P2781715199575987110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A205849 (n + 1) + 1).toNat

end

end A205850.P2781715199575987110

/-! ## A205850.P9870766592872240399

`A025480(A205849(n+1)+1)`
-/

namespace A205850.P9870766592872240399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A205849 (n + 1) + 1).toNat

end

end A205850.P9870766592872240399

/-! ## A205850.P17672358414472814040

`A008621(A205849(n+1)-1)`
-/

namespace A205850.P17672358414472814040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A205849 (n + 1) - 1).toNat

end

end A205850.P17672358414472814040

/-!
# A205851: Positions of multiples of 5 in A204922 (differences of Fibonacci numbers).

The programs for A205851, the canonical program `A205851.P4676341939490958117` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205851 has offset 1).

The definition of A205851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205851.P4676341939490958117

`eq[0, A204922(n+1)%5]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A205851

/-- `eq[0, A204922(n+1)%5]+1` -/
def P4676341939490958117.Spec : Prop :=
  ∀ n, (P4676341939490958117.a n : ℤ) = A205851 (n + 1)

theorem P4676341939490958117.correct : P4676341939490958117.Spec := by
  intro n
  simp only [A205851, Nat.add_sub_cancel]

end A205851

/-! ## A205851.P8793859514581434037

`eq[0, A204922(or(n, C(2, n)))%5]`
-/

namespace A205851.P8793859514581434037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (Nat.lor n (Nat.choose 2 n))) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205851.P8793859514581434037

namespace A205851

/-- `eq[0, A204922(or(n, C(2, n)))%5]` -/
def P8793859514581434037.Spec : Prop :=
  ∀ n, (P8793859514581434037.a n : ℤ) = A205851 (n + 1)

end A205851

/-! ## A205851.P13900555000884874238

`lt[A204922(abs(1-n)+1)%5, 1]`
-/

namespace A205851.P13900555000884874238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (|1 - (n : ℤ)| + 1).toNat) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205851.P13900555000884874238

namespace A205851

/-- `lt[A204922(abs(1-n)+1)%5, 1]` -/
def P13900555000884874238.Spec : Prop :=
  ∀ n, (P13900555000884874238.a n : ℤ) = A205851 (n + 1)

end A205851

/-! ## A205851.P2853012472463809832

`eq[0, A204922(A000007(n)+n)%5]`
-/

namespace A205851.P2853012472463809832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (A000007 n + (n : ℤ)).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205851.P2853012472463809832

namespace A205851

/-- `eq[0, A204922(A000007(n)+n)%5]` -/
def P2853012472463809832.Spec : Prop :=
  ∀ n, (P2853012472463809832.a n : ℤ) = A205851 (n + 1)

end A205851

/-! ## A205851.P6669321163363343268

`eq[0, A204922(abs(A000007(n)-n))%5]`
-/

namespace A205851.P6669321163363343268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 |A000007 n - (n : ℤ)|.toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205851.P6669321163363343268

namespace A205851

/-- `eq[0, A204922(abs(A000007(n)-n))%5]` -/
def P6669321163363343268.Spec : Prop :=
  ∀ n, (P6669321163363343268.a n : ℤ) = A205851 (n + 1)

end A205851

/-!
# A205852: Numbers k for which 5 divides s(k)-s(j) for some j

The programs for A205852, the canonical program `A205852.P2970175676094598334` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205852 has offset 1).

The definition of A205852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205852.P9518564670893373350

`A351120(A205851(n+1))`
-/

namespace A205852.P9518564670893373350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (A205851 (n + 1)).toNat

end

end A205852.P9518564670893373350

namespace A205852

/-- `A351120(A205851(n+1))` -/
def P9518564670893373350.Spec : Prop :=
  ∀ n, P9518564670893373350.a n = A205852 (n + 1)

end A205852

/-! ## A205852.P2970175676094598334

`A003057(A205851(n+1)+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205852

/-- `A003057(A205851(n+1)+1)` -/
def P2970175676094598334.Spec : Prop :=
  ∀ n, P2970175676094598334.a n = A205852 (n + 1)

theorem P2970175676094598334.correct : P2970175676094598334.Spec := by
  intro n
  simp only [A205852, Nat.add_sub_cancel]

end A205852

/-! ## A205852.P8071243085097145629

`A205853(n+1)+A004736(A205851(n+1))`
-/

namespace A205852.P8071243085097145629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205853 (n + 1) + A004736 (A205851 (n + 1)).toNat

end

end A205852.P8071243085097145629

namespace A205852

/-- `A205853(n+1)+A004736(A205851(n+1))` -/
def P8071243085097145629.Spec : Prop :=
  ∀ n, P8071243085097145629.a n = A205852 (n + 1)

end A205852

/-! ## A205852.P4529605410609296281

`A097285(2*A205851(n+1))`
-/

namespace A205852.P4529605410609296281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205851 (n + 1)).toNat

end

end A205852.P4529605410609296281

namespace A205852

/-- `A097285(2*A205851(n+1))` -/
def P4529605410609296281.Spec : Prop :=
  ∀ n, P4529605410609296281.a n = A205852 (n + 1)

end A205852

/-!
# A205853: The least number j such that 5 divides s(k)-s(j), where k(n)=A205852(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205853, the canonical program `A205853.P5082704050672343864` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205853 has offset 1).

The definition of A205853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205853.P5082704050672343864

`A002260(A205851(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205853

/-- `A002260(A205851(n+1))` -/
def P5082704050672343864.Spec : Prop :=
  ∀ n, P5082704050672343864.a n = A205853 (n + 1)

theorem P5082704050672343864.correct : P5082704050672343864.Spec := by
  intro n
  simp only [A205853, Nat.add_sub_cancel]

end A205853

/-! ## A205853.P2942123197859918483

`A205852(n+1)-A004736(A205851(n+1))`
-/

namespace A205853.P2942123197859918483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205852 (n + 1) - A004736 (A205851 (n + 1)).toNat

end

end A205853.P2942123197859918483

namespace A205853

/-- `A205852(n+1)-A004736(A205851(n+1))` -/
def P2942123197859918483.Spec : Prop :=
  ∀ n, P2942123197859918483.a n = A205853 (n + 1)

end A205853

/-! ## A205853.P4335280708941849006

`A205852(n+1)-A004736(eq[0, A204922(n+1)%5]+1)`
-/

namespace A205853.P4335280708941849006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205852 (n + 1) - A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205853.P4335280708941849006

namespace A205853

/-- `A205852(n+1)-A004736(eq[0, A204922(n+1)%5]+1)` -/
def P4335280708941849006.Spec : Prop :=
  ∀ n, P4335280708941849006.a n = A205853 (n + 1)

end A205853

/-! ## A205853.P255444978449670399

`A003057(A205851(n+1)+1)-A004736(A205851(n+1))`
-/

namespace A205853.P255444978449670399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205851 (n + 1) + 1).toNat - A004736 (A205851 (n + 1)).toNat

end

end A205853.P255444978449670399

namespace A205853

/-- `A003057(A205851(n+1)+1)-A004736(A205851(n+1))` -/
def P255444978449670399.Spec : Prop :=
  ∀ n, P255444978449670399.a n = A205853 (n + 1)

end A205853

/-! ## A205853.P17864337998394071938

`A097285(2*A205851(n+1)-1)`
-/

namespace A205853.P17864337998394071938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205851 (n + 1) - 1).toNat

end

end A205853.P17864337998394071938

namespace A205853

/-- `A097285(2*A205851(n+1)-1)` -/
def P17864337998394071938.Spec : Prop :=
  ∀ n, P17864337998394071938.a n = A205853 (n + 1)

end A205853

/-! ## A205853.P1736899081101290633

`A097285(A205851(n+1)+A205851(n+1)-1)`
-/

namespace A205853.P1736899081101290633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205851 (n + 1) + (A205851 (n + 1) - 1)).toNat

end

end A205853.P1736899081101290633

namespace A205853

/-- `A097285(A205851(n+1)+A205851(n+1)-1)` -/
def P1736899081101290633.Spec : Prop :=
  ∀ n, P1736899081101290633.a n = A205853 (n + 1)

end A205853

/-!
# A205854: s(k)-s(j), where the pairs (k,j) are given by A205852 and A205853, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205854, there is no canonical definition to state claims against.
-/

/-! ## A205854.P999698364833762405

`5*A205855(n+1)`
-/

namespace A205854.P999698364833762405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A205855 (n + 1)

end

end A205854.P999698364833762405

/-! ## A205854.P6366026214385022369

`A204922(A205851(n+1))`
-/

namespace A205854.P6366026214385022369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205851 (n + 1)).toNat

end

end A205854.P6366026214385022369

/-! ## A205854.P16636631837653736414

`A204922(eq[0, A204922(n+1)%5]+1)`
-/

namespace A205854.P16636631837653736414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205854.P16636631837653736414

/-! ## A205854.P14093639432608390358

`A008587(A205855(n+1))`
-/

namespace A205854.P14093639432608390358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A205855 (n + 1)).toNat

end

end A205854.P14093639432608390358

/-! ## A205854.P16060149192046168836

`A135042(A205855(n+1)+1)`
-/

namespace A205854.P16060149192046168836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (A205855 (n + 1) + 1).toNat

end

end A205854.P16060149192046168836

/-!
# A205855: [s(k)-s(j)]/5, where the pairs (k,j) are given by A205852 and A205853, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205855, there is no canonical definition to state claims against.
-/

/-! ## A205855.P18259567622275115400

`A205854(n+1)/5`
-/

namespace A205855.P18259567622275115400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205854 (n + 1) : ℚ) / 5

end

end A205855.P18259567622275115400

/-! ## A205855.P1046336551870774337

`A204922(A205851(n+1))/5`
-/

namespace A205855.P1046336551870774337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205851 (n + 1)).toNat : ℚ) / 5

end

end A205855.P1046336551870774337

/-! ## A205855.P14141079334951415275

`A204922(eq[0, A204922(n+1)%5]+1)/5`
-/

namespace A205855.P14141079334951415275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 5

end

end A205855.P14141079334951415275

/-! ## A205855.P17830731763966306991

`A255590(A205854(n+1))`
-/

namespace A205855.P17830731763966306991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255590 (A205854 (n + 1)).toNat

end

end A205855.P17830731763966306991

/-! ## A205855.P5386392063104491560

`A002266(A205854(n+1)+1)`
-/

namespace A205855.P5386392063104491560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A205854 (n + 1) + 1).toNat

end

end A205855.P5386392063104491560

/-!
# A205856: Positions of multiples of 6 in A204922 (differences of Fibonacci numbers).

The programs for A205856, the canonical program `A205856.P9508475719355629558` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205856 has offset 1).

The definition of A205856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205856.P9508475719355629558

`∩[A205556(n+1), A205841(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205856

/-- `∩[A205556(n+1), A205841(n+1)]` -/
def P9508475719355629558.Spec : Prop :=
  ∀ n, (P9508475719355629558.a n : ℤ) = A205856 (n + 1)

theorem P9508475719355629558.correct : P9508475719355629558.Spec := by
  intro n
  simp only [A205856, Nat.add_sub_cancel]

end A205856

/-! ## A205856.P6779433409760004662

`lt[5, gcd(6, A204922(A028310(n)))+1]`
-/

namespace A205856.P6779433409760004662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A204922 (A028310 n).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A205856.P6779433409760004662

namespace A205856

/-- `lt[5, gcd(6, A204922(A028310(n)))+1]` -/
def P6779433409760004662.Spec : Prop :=
  ∀ n, (P6779433409760004662.a n : ℤ) = A205856 (n + 1)

end A205856

/-! ## A205856.P17031034812754670930

`∩[eq[0, A204922(n+1)%3]+1, A205556(n+1)]`
-/

namespace A205856.P17031034812754670930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A205856.P17031034812754670930

namespace A205856

/-- `∩[eq[0, A204922(n+1)%3]+1, A205556(n+1)]` -/
def P17031034812754670930.Spec : Prop :=
  ∀ n, (P17031034812754670930.a n : ℤ) = A205856 (n + 1)

end A205856

/-! ## A205856.P14830181914047030265

`∩[A205556(n+1), lt[A204922(n+2)%3, 1]+2]`
-/

namespace A205856.P14830181914047030265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 2)) 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A205856.P14830181914047030265

namespace A205856

/-- `∩[A205556(n+1), lt[A204922(n+2)%3, 1]+2]` -/
def P14830181914047030265.Spec : Prop :=
  ∀ n, (P14830181914047030265.a n : ℤ) = A205856 (n + 1)

end A205856

/-! ## A205856.P5558229087434807154

`eq[3, A020639(A204922(n+1)+3)]+1`
-/

namespace A205856.P5558229087434807154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A204922 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205856.P5558229087434807154

namespace A205856

/-- `eq[3, A020639(A204922(n+1)+3)]+1` -/
def P5558229087434807154.Spec : Prop :=
  ∀ n, (P5558229087434807154.a n : ℤ) = A205856 (n + 1)

end A205856

/-!
# A205857: Numbers k for which 6 divides s(k)-s(j) for some j

The programs for A205857, the canonical program `A205857.P17589815892520553844` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205857 has offset 1).

The definition of A205857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205857.P13300723071197414109

`A351120(A205856(n+1))`
-/

namespace A205857.P13300723071197414109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (A205856 (n + 1)).toNat

end

end A205857.P13300723071197414109

namespace A205857

/-- `A351120(A205856(n+1))` -/
def P13300723071197414109.Spec : Prop :=
  ∀ n, P13300723071197414109.a n = A205857 (n + 1)

end A205857

/-! ## A205857.P17589815892520553844

`A003057(A205856(n+1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205857

/-- `A003057(A205856(n+1)+1)` -/
def P17589815892520553844.Spec : Prop :=
  ∀ n, P17589815892520553844.a n = A205857 (n + 1)

theorem P17589815892520553844.correct : P17589815892520553844.Spec := by
  intro n
  simp only [A205857, Nat.add_sub_cancel]

end A205857

/-! ## A205857.P2825242049146848329

`A097285(2*A205856(n+1))`
-/

namespace A205857.P2825242049146848329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205856 (n + 1)).toNat

end

end A205857.P2825242049146848329

namespace A205857

/-- `A097285(2*A205856(n+1))` -/
def P2825242049146848329.Spec : Prop :=
  ∀ n, P2825242049146848329.a n = A205857 (n + 1)

end A205857

/-! ## A205857.P1712574964355719398

`A000194(2*A205856(n+1))+1`
-/

namespace A205857.P1712574964355719398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205856 (n + 1)).toNat + 1

end

end A205857.P1712574964355719398

namespace A205857

/-- `A000194(2*A205856(n+1))+1` -/
def P1712574964355719398.Spec : Prop :=
  ∀ n, P1712574964355719398.a n = A205857 (n + 1)

end A205857

/-! ## A205857.P6970775246956174522

`A261100(A325700(3*n+5)+A141136(n))`
-/

namespace A205857.P6970775246956174522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261100 (A325700 (3 * n + 5) + A141136 n).toNat

end

end A205857.P6970775246956174522

namespace A205857

/-- `A261100(A325700(3*n+5)+A141136(n))` -/
def P6970775246956174522.Spec : Prop :=
  ∀ n, P6970775246956174522.a n = A205857 (n + 1)

end A205857

/-!
# A205858: The least number j such that 6 divides s(k)-s(j), where k(n)=A205857(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205858, the canonical program `A205858.P7887194990483068320` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205858 has offset 1).

The definition of A205858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205858.P7887194990483068320

`A002260(A205856(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205858

/-- `A002260(A205856(n+1))` -/
def P7887194990483068320.Spec : Prop :=
  ∀ n, P7887194990483068320.a n = A205858 (n + 1)

theorem P7887194990483068320.correct : P7887194990483068320.Spec := by
  intro n
  simp only [A205858, Nat.add_sub_cancel]

end A205858

/-! ## A205858.P70179918686869916

`A002262(A205856(n+1)-1)+1`
-/

namespace A205858.P70179918686869916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205856 (n + 1) - 1).toNat + 1

end

end A205858.P70179918686869916

namespace A205858

/-- `A002262(A205856(n+1)-1)+1` -/
def P70179918686869916.Spec : Prop :=
  ∀ n, P70179918686869916.a n = A205858 (n + 1)

end A205858

/-! ## A205858.P1170161542530649770

`∑{d}[A037126(A205856(n+1)), A000720(#)]`
-/

namespace A205858.P1170161542530649770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A205858.P1170161542530649770

namespace A205858

/-- `∑{d}[A037126(A205856(n+1)), A000720(#)]` -/
def P1170161542530649770.Spec : Prop :=
  ∀ n, P1170161542530649770.a n = A205858 (n + 1)

end A205858

/-! ## A205858.P715739717657313007

`A205857(n+1)-A004736(A205856(n+1))`
-/

namespace A205858.P715739717657313007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205857 (n + 1) - A004736 (A205856 (n + 1)).toNat

end

end A205858.P715739717657313007

namespace A205858

/-- `A205857(n+1)-A004736(A205856(n+1))` -/
def P715739717657313007.Spec : Prop :=
  ∀ n, P715739717657313007.a n = A205858 (n + 1)

end A205858

/-! ## A205858.P13059257559025381305

`A003057(A205856(n+1)+1)-A004736(A205856(n+1))`
-/

namespace A205858.P13059257559025381305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205856 (n + 1) + 1).toNat - A004736 (A205856 (n + 1)).toNat

end

end A205858.P13059257559025381305

namespace A205858

/-- `A003057(A205856(n+1)+1)-A004736(A205856(n+1))` -/
def P13059257559025381305.Spec : Prop :=
  ∀ n, P13059257559025381305.a n = A205858 (n + 1)

end A205858

/-! ## A205858.P13358581995355754755

`A097285(2*A205856(n+1)-1)`
-/

namespace A205858.P13358581995355754755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205856 (n + 1) - 1).toNat

end

end A205858.P13358581995355754755

namespace A205858

/-- `A097285(2*A205856(n+1)-1)` -/
def P13358581995355754755.Spec : Prop :=
  ∀ n, P13358581995355754755.a n = A205858 (n + 1)

end A205858

/-! ## A205858.P13377691669392483451

`A097285(A205856(n+1)+A205856(n+1)-1)`
-/

namespace A205858.P13377691669392483451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205856 (n + 1) + (A205856 (n + 1) - 1)).toNat

end

end A205858.P13377691669392483451

namespace A205858

/-- `A097285(A205856(n+1)+A205856(n+1)-1)` -/
def P13377691669392483451.Spec : Prop :=
  ∀ n, P13377691669392483451.a n = A205858 (n + 1)

end A205858

/-! ## A205858.P612675447973797572

`A000194(2*A205856(n+1))+1-A004736(A205856(n+1))`
-/

namespace A205858.P612675447973797572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205856 (n + 1)).toNat + 1 - A004736 (A205856 (n + 1)).toNat

end

end A205858.P612675447973797572

namespace A205858

/-- `A000194(2*A205856(n+1))+1-A004736(A205856(n+1))` -/
def P612675447973797572.Spec : Prop :=
  ∀ n, P612675447973797572.a n = A205858 (n + 1)

end A205858

/-!
# A205859: s(k)-s(j), where the pairs (k,j) are given by A205857 and A205858, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205859, there is no canonical definition to state claims against.
-/

/-! ## A205859.P4086223973573312872

`6*A205860(n+1)`
-/

namespace A205859.P4086223973573312872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A205860 (n + 1)

end

end A205859.P4086223973573312872

/-! ## A205859.P13008983222275403045

`A205844(lt[A205844(n+1)%2+1, 2]+1)`
-/

namespace A205859.P13008983222275403045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205844 (n + 1)) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205844 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A205859.P13008983222275403045

/-! ## A205859.P2760937681691356196

`A204922(A205856(n+1))`
-/

namespace A205859.P2760937681691356196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205856 (n + 1)).toNat

end

end A205859.P2760937681691356196

/-! ## A205859.P9922308938513096942

`A204922(∩[A205556(n+1), A205841(n+1)])`
-/

namespace A205859.P9922308938513096942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205841 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A205859.P9922308938513096942

/-! ## A205859.P1847169182410771937

`filter[A205844(n+1), A294936(#)]`
-/

namespace A205859.P1847169182410771937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A205859.P1847169182410771937

/-!
# A205860: [s(k)-s(j)]/6, where the pairs (k,j) are given by A205857 and A205858, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205860, there is no canonical definition to state claims against.
-/

/-! ## A205860.P12638020671862825527

`A205859(n+1)/6`
-/

namespace A205860.P12638020671862825527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205859 (n + 1) : ℚ) / 6

end

end A205860.P12638020671862825527

/-! ## A205860.P14668461889630459158

`A204922(A205856(n+1))/6`
-/

namespace A205860.P14668461889630459158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205856 (n + 1)).toNat : ℚ) / 6

end

end A205860.P14668461889630459158

/-! ## A205860.P11450874633482464002

`A255591(A205859(n+1))`
-/

namespace A205860.P11450874633482464002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A205859 (n + 1)).toNat

end

end A205860.P11450874633482464002

/-! ## A205860.P17497443092837804467

`A008615(A205859(n+1)+1)`
-/

namespace A205860.P17497443092837804467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A205859 (n + 1) + 1).toNat

end

end A205860.P17497443092837804467

/-! ## A205860.P13744139176444886873

`A103221(A205859(n+1)+1)`
-/

namespace A205860.P13744139176444886873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A205859 (n + 1) + 1).toNat

end

end A205860.P13744139176444886873

/-!
# A205861: Positions of multiples of 7 in A204922 (differences of Fibonacci numbers).

The programs for A205861, the canonical program `A205861.P14361197420685489071` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205861 has offset 1).

The definition of A205861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205861.P14361197420685489071

`lt[A204922(n+1)%7, 1]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A205861

/-- `lt[A204922(n+1)%7, 1]+1` -/
def P14361197420685489071.Spec : Prop :=
  ∀ n, (P14361197420685489071.a n : ℤ) = A205861 (n + 1)

theorem P14361197420685489071.correct : P14361197420685489071.Spec := by
  intro n
  simp only [A205861, Nat.add_sub_cancel]

end A205861

/-! ## A205861.P11012270582674207385

`lt[A204922(xor(n, C(2, n)))%7, 1]`
-/

namespace A205861.P11012270582674207385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (Nat.xor n (Nat.choose 2 n))) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A205861.P11012270582674207385

namespace A205861

/-- `lt[A204922(xor(n, C(2, n)))%7, 1]` -/
def P11012270582674207385.Spec : Prop :=
  ∀ n, (P11012270582674207385.a n : ℤ) = A205861 (n + 1)

end A205861

/-!
# A205862: Numbers k for which 7 divides s(k)-s(j) for some j

The programs for A205862, the canonical program `A205862.P9229607814627541584` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205862 has offset 1).

The definition of A205862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205862.P9229607814627541584

`1+A002024(A205861(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205862

/-- `1+A002024(A205861(n+1))` -/
def P9229607814627541584.Spec : Prop :=
  ∀ n, P9229607814627541584.a n = A205862 (n + 1)

theorem P9229607814627541584.correct : P9229607814627541584.Spec := by
  intro n
  simp only [A205862, Nat.add_sub_cancel]

end A205862

/-! ## A205862.P934875191948635933

`A003057(A205861(n+1)+1)`
-/

namespace A205862.P934875191948635933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205861 (n + 1) + 1).toNat

end

end A205862.P934875191948635933

namespace A205862

/-- `A003057(A205861(n+1)+1)` -/
def P934875191948635933.Spec : Prop :=
  ∀ n, P934875191948635933.a n = A205862 (n + 1)

end A205862

/-! ## A205862.P12826348778920440259

`A020725(A002024(A205861(n+1)))`
-/

namespace A205862.P12826348778920440259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002024 (A205861 (n + 1)).toNat).toNat

end

end A205862.P12826348778920440259

namespace A205862

/-- `A020725(A002024(A205861(n+1)))` -/
def P12826348778920440259.Spec : Prop :=
  ∀ n, P12826348778920440259.a n = A205862 (n + 1)

end A205862

/-! ## A205862.P6019503484719237056

`A097285(2*A205861(n+1))`
-/

namespace A205862.P6019503484719237056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205861 (n + 1)).toNat

end

end A205862.P6019503484719237056

namespace A205862

/-- `A097285(2*A205861(n+1))` -/
def P6019503484719237056.Spec : Prop :=
  ∀ n, P6019503484719237056.a n = A205862 (n + 1)

end A205862

/-! ## A205862.P11434250418389174410

`A123578(A205861(n+1))+A001222(A005385(n+1))`
-/

namespace A205862.P11434250418389174410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205861 (n + 1)).toNat + A001222 (A005385 (n + 1)).toNat

end

end A205862.P11434250418389174410

namespace A205862

/-- `A123578(A205861(n+1))+A001222(A005385(n+1))` -/
def P11434250418389174410.Spec : Prop :=
  ∀ n, P11434250418389174410.a n = A205862 (n + 1)

end A205862

/-! ## A205862.P11683359810180711037

`A123578(A205861(n+1))+A001222(A089144(n+1))`
-/

namespace A205862.P11683359810180711037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205861 (n + 1)).toNat + A001222 (A089144 (n + 1)).toNat

end

end A205862.P11683359810180711037

namespace A205862

/-- `A123578(A205861(n+1))+A001222(A089144(n+1))` -/
def P11683359810180711037.Spec : Prop :=
  ∀ n, P11683359810180711037.a n = A205862 (n + 1)

end A205862

/-! ## A205862.P10982254384377181749

`A123578(A205861(n+1))+A007318(A179865(n+1))`
-/

namespace A205862.P10982254384377181749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205861 (n + 1)).toNat + A007318 (A179865 (n + 1)).toNat

end

end A205862.P10982254384377181749

namespace A205862

/-- `A123578(A205861(n+1))+A007318(A179865(n+1))` -/
def P10982254384377181749.Spec : Prop :=
  ∀ n, P10982254384377181749.a n = A205862 (n + 1)

end A205862

/-!
# A205863: The least number j such that 7 divides s(k)-s(j), where k(n)=A205862(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205863, the canonical program `A205863.P14284149530257843342` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205863 has offset 1).

The definition of A205863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205863.P14284149530257843342

`A002260(A205861(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205863

/-- `A002260(A205861(n+1))` -/
def P14284149530257843342.Spec : Prop :=
  ∀ n, P14284149530257843342.a n = A205863 (n + 1)

theorem P14284149530257843342.correct : P14284149530257843342.Spec := by
  intro n
  simp only [A205863, Nat.add_sub_cancel]

end A205863

/-! ## A205863.P16288589945958640691

`A205862(n+1)-A004736(A205861(n+1))`
-/

namespace A205863.P16288589945958640691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205862 (n + 1) - A004736 (A205861 (n + 1)).toNat

end

end A205863.P16288589945958640691

namespace A205863

/-- `A205862(n+1)-A004736(A205861(n+1))` -/
def P16288589945958640691.Spec : Prop :=
  ∀ n, P16288589945958640691.a n = A205863 (n + 1)

end A205863

/-! ## A205863.P5456121825020415225

`A003057(A205861(n+1)+1)-A004736(A205861(n+1))`
-/

namespace A205863.P5456121825020415225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205861 (n + 1) + 1).toNat - A004736 (A205861 (n + 1)).toNat

end

end A205863.P5456121825020415225

namespace A205863

/-- `A003057(A205861(n+1)+1)-A004736(A205861(n+1))` -/
def P5456121825020415225.Spec : Prop :=
  ∀ n, P5456121825020415225.a n = A205863 (n + 1)

end A205863

/-! ## A205863.P13515205226444305330

`A097285(2*A205861(n+1)-1)`
-/

namespace A205863.P13515205226444305330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205861 (n + 1) - 1).toNat

end

end A205863.P13515205226444305330

namespace A205863

/-- `A097285(2*A205861(n+1)-1)` -/
def P13515205226444305330.Spec : Prop :=
  ∀ n, P13515205226444305330.a n = A205863 (n + 1)

end A205863

/-! ## A205863.P4717119450522757701

`A097285(A205861(n+1)+A205861(n+1)-1)`
-/

namespace A205863.P4717119450522757701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205861 (n + 1) + (A205861 (n + 1) - 1)).toNat

end

end A205863.P4717119450522757701

namespace A205863

/-- `A097285(A205861(n+1)+A205861(n+1)-1)` -/
def P4717119450522757701.Spec : Prop :=
  ∀ n, P4717119450522757701.a n = A205863 (n + 1)

end A205863

/-! ## A205863.P9134458918728468200

`A123578(A205861(n+1))+A001222(A005385(n+2))-A004736(A205861(n+1))`
-/

namespace A205863.P9134458918728468200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205861 (n + 1)).toNat + A001222 (A005385 (n + 2)).toNat - A004736 (A205861 (n + 1)).toNat

end

end A205863.P9134458918728468200

namespace A205863

/-- `A123578(A205861(n+1))+A001222(A005385(n+2))-A004736(A205861(n+1))` -/
def P9134458918728468200.Spec : Prop :=
  ∀ n, P9134458918728468200.a n = A205863 (n + 1)

end A205863

/-! ## A205863.P16894697299639489207

`A123578(A205861(n+1))+A001222(A089144(n+1))-A004736(A205861(n+1))`
-/

namespace A205863.P16894697299639489207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205861 (n + 1)).toNat + A001222 (A089144 (n + 1)).toNat - A004736 (A205861 (n + 1)).toNat

end

end A205863.P16894697299639489207

namespace A205863

/-- `A123578(A205861(n+1))+A001222(A089144(n+1))-A004736(A205861(n+1))` -/
def P16894697299639489207.Spec : Prop :=
  ∀ n, P16894697299639489207.a n = A205863 (n + 1)

end A205863

/-!
# A205864: s(k)-s(j), where the pairs (k,j) are given by A205862 and A205863, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205864, there is no canonical definition to state claims against.
-/

/-! ## A205864.P9052407914012481196

`7*A205865(n+1)`
-/

namespace A205864.P9052407914012481196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A205865 (n + 1)

end

end A205864.P9052407914012481196

/-! ## A205864.P13719012760447345265

`A171730(A205862(n+1)+A205861(n+1))`
-/

namespace A205864.P13719012760447345265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (A205862 (n + 1) + A205861 (n + 1)).toNat

end

end A205864.P13719012760447345265

/-! ## A205864.P14545423070832311036

`A204922(A205861(n+1))`
-/

namespace A205864.P14545423070832311036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205861 (n + 1)).toNat

end

end A205864.P14545423070832311036

/-! ## A205864.P14160665298057400776

`A008589(A205865(n+1))`
-/

namespace A205864.P14160665298057400776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A205865 (n + 1)).toNat

end

end A205864.P14160665298057400776

/-!
# A205865: [s(k)-s(j)]/7, where the pairs (k,j) are given by A205862 and A205863, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205865, there is no canonical definition to state claims against.
-/

/-! ## A205865.P5039742727330163049

`A205864(n+1)/7`
-/

namespace A205865.P5039742727330163049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205864 (n + 1) : ℚ) / 7

end

end A205865.P5039742727330163049

/-! ## A205865.P17708287420917263967

`A204922(A205861(n+1))/7`
-/

namespace A205865.P17708287420917263967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205861 (n + 1)).toNat : ℚ) / 7

end

end A205865.P17708287420917263967

/-! ## A205865.P16922912478557692953

`A106608(A205864(n+1))`
-/

namespace A205865.P16922912478557692953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A205864 (n + 1)).toNat

end

end A205865.P16922912478557692953

/-! ## A205865.P7428941808113914941

`A132270(A205864(n+1)+1)`
-/

namespace A205865.P7428941808113914941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A205864 (n + 1) + 1).toNat

end

end A205865.P7428941808113914941

/-! ## A205865.P4842923924618146267

`A187185(A205864(n+1)-2)`
-/

namespace A205865.P4842923924618146267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A205864 (n + 1) - 2).toNat

end

end A205865.P4842923924618146267

/-!
# A205866: Positions of multiples of 8 in A204922 (differences of Fibonacci numbers).

The programs for A205866, there is no canonical definition to state claims against.
-/

/-! ## A205866.P17014533126435997632

`eq[0, A089002(A204922(n+1))]+1`
-/

namespace A205866.P17014533126435997632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (A204922 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205866.P17014533126435997632

/-!
# A205867: Numbers k for which 8 divides s(k)-s(j) for some j

The programs for A205867, there is no canonical definition to state claims against.
-/

/-! ## A205867.P11320681560756800451

`A351120(A205866(n+1))`
-/

namespace A205867.P11320681560756800451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (A205866 (n + 1)).toNat

end

end A205867.P11320681560756800451

/-! ## A205867.P17717341004623007691

`A003057(A205866(n+1)+1)`
-/

namespace A205867.P17717341004623007691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205866 (n + 1) + 1).toNat

end

end A205867.P17717341004623007691

/-! ## A205867.P9881561296679406710

`A123578(A205866(n+1))+A000034(2*n)`
-/

namespace A205867.P9881561296679406710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205866 (n + 1)).toNat + A000034 (2 * n)

end

end A205867.P9881561296679406710

/-! ## A205867.P8323716773913538434

`A123578(A205866(n+1))+A055396(2*(n+1))`
-/

namespace A205867.P8323716773913538434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205866 (n + 1)).toNat + A055396 (2 * (n + 1))

end

end A205867.P8323716773913538434

/-! ## A205867.P8845535789146159947

`A123578(A205866(n+1))+A001222(A002476(n+1))`
-/

namespace A205867.P8845535789146159947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205866 (n + 1)).toNat + A001222 (A002476 (n + 1)).toNat

end

end A205867.P8845535789146159947

/-! ## A205867.P12139880773567517962

`A097285(2*A205866(n+1))`
-/

namespace A205867.P12139880773567517962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205866 (n + 1)).toNat

end

end A205867.P12139880773567517962

/-! ## A205867.P17201369524649177286

`A123578(A205866(n+1))+A007318(A000217(n))`
-/

namespace A205867.P17201369524649177286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205866 (n + 1)).toNat + A007318 (A000217 n).toNat

end

end A205867.P17201369524649177286

/-! ## A205867.P12435332259961685762

`A123578(A205866(n+1))+A010054(∑[n])`
-/

namespace A205867.P12435332259961685762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205866 (n + 1)).toNat + A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205867.P12435332259961685762

/-!
# A205868: The least number j such that 8 divides s(k)-s(j), where k(n)=A205867(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205868, there is no canonical definition to state claims against.
-/

/-! ## A205868.P3339335937902666797

`A002260(A205866(n+1))`
-/

namespace A205868.P3339335937902666797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205866 (n + 1)).toNat

end

end A205868.P3339335937902666797

/-! ## A205868.P8613700002572978857

`A205867(n+1)-A004736(A205866(n+1))`
-/

namespace A205868.P8613700002572978857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205867 (n + 1) - A004736 (A205866 (n + 1)).toNat

end

end A205868.P8613700002572978857

/-! ## A205868.P10487580137454586607

`A003057(A205866(n+1)+1)-A004736(A205866(n+1))`
-/

namespace A205868.P10487580137454586607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205866 (n + 1) + 1).toNat - A004736 (A205866 (n + 1)).toNat

end

end A205868.P10487580137454586607

/-! ## A205868.P2532863073186612788

`A131818(A205866(n+1)+1)-1`
-/

namespace A205868.P2532863073186612788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A205866 (n + 1) + 1).toNat - 1

end

end A205868.P2532863073186612788

/-! ## A205868.P5490333143028312951

`A097285(2*A205866(n+1)-1)`
-/

namespace A205868.P5490333143028312951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205866 (n + 1) - 1).toNat

end

end A205868.P5490333143028312951

/-! ## A205868.P5995391579052088651

`A097285(A205866(n+1)+A205866(n+1)-1)`
-/

namespace A205868.P5995391579052088651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205866 (n + 1) + (A205866 (n + 1) - 1)).toNat

end

end A205868.P5995391579052088651

/-!
# A205869: s(k)-s(j), where the pairs (k,j) are given by A205867 and A205868, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205869, there is no canonical definition to state claims against.
-/

/-! ## A205869.P2947999181534025224

`8*A205870(n+1)`
-/

namespace A205869.P2947999181534025224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A205870 (n + 1)

end

end A205869.P2947999181534025224

/-! ## A205869.P14093485339403887235

`A205870(A000027(n+1))/(1/2)^3`
-/

namespace A205869.P14093485339403887235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205870 (A000027 (n + 1)).toNat : ℚ) / ((1 : ℚ) / 2) ^ 3

end

end A205869.P14093485339403887235

/-! ## A205869.P722753302124291319

`A204922(A205866(n+1))`
-/

namespace A205869.P722753302124291319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205866 (n + 1)).toNat

end

end A205869.P722753302124291319

/-! ## A205869.P15029184328937664210

`A008590(A205870(n+1))`
-/

namespace A205869.P15029184328937664210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A205870 (n + 1)).toNat

end

end A205869.P15029184328937664210

/-! ## A205869.P633522289974512678

`A022144(A205870(n+1)%A016971(n))`
-/

namespace A205869.P633522289974512678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.tmod (A205870 (n + 1)) (A016971 n)).toNat

end

end A205869.P633522289974512678

/-!
# A205870: [s(k)-s(j)]/8, where the pairs (k,j) are given by A205867 and A205868, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205870, there is no canonical definition to state claims against.
-/

/-! ## A205870.P654948503857353327

`A205869(n+1)/8`
-/

namespace A205870.P654948503857353327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205869 (n + 1) : ℚ) / 8

end

end A205870.P654948503857353327

/-! ## A205870.P2508766744012188015

`A204922(A205866(n+1))/8`
-/

namespace A205870.P2508766744012188015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205866 (n + 1)).toNat : ℚ) / 8

end

end A205870.P2508766744012188015

/-! ## A205870.P16869189484695041954

`A117358(A205869(n+1))`
-/

namespace A205870.P16869189484695041954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A205869 (n + 1)).toNat

end

end A205870.P16869189484695041954

/-! ## A205870.P6825174310092591123

`A025480(A205869(n+1)+3)`
-/

namespace A205870.P6825174310092591123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A205869 (n + 1) + 3).toNat

end

end A205870.P6825174310092591123

/-! ## A205870.P7409124804276453840

`A003602(A205869(n+1)-4)`
-/

namespace A205870.P7409124804276453840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A205869 (n + 1) - 4).toNat

end

end A205870.P7409124804276453840

/-!
# A205872: Numbers k for which 9 divides s(k)-s(j) for some j

The programs for A205872, there is no canonical definition to state claims against.
-/

/-! ## A205872.P30871441295456521

`A351120(A205871(n+1))`
-/

namespace A205872.P30871441295456521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (A205871 (n + 1)).toNat

end

end A205872.P30871441295456521

/-! ## A205872.P9330536530317391245

`A003057(A205871(n+1)+1)`
-/

namespace A205872.P9330536530317391245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205871 (n + 1) + 1).toNat

end

end A205872.P9330536530317391245

/-! ## A205872.P249822609942893682

`∑{d}[A005145(A205871(n+1)), A064839(#)]`
-/

namespace A205872.P249822609942893682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A205871 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064839 d

end

end A205872.P249822609942893682

/-! ## A205872.P16235080517469863867

`A097285(2*A205871(n+1))`
-/

namespace A205872.P16235080517469863867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205871 (n + 1)).toNat

end

end A205872.P16235080517469863867

/-! ## A205872.P8362187530290400407

`A000194(2*A205871(n+1))+1`
-/

namespace A205872.P8362187530290400407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205871 (n + 1)).toNat + 1

end

end A205872.P8362187530290400407

/-! ## A205872.P13515996789752239672

`A020725(A000194(2*A205871(n+1)))`
-/

namespace A205872.P13515996789752239672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000194 (2 * A205871 (n + 1)).toNat).toNat

end

end A205872.P13515996789752239672

/-!
# A205873: The least number j such that 9 divides s(k)-s(j), where k(n)=A205872(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205873, there is no canonical definition to state claims against.
-/

/-! ## A205873.P8120603864774018449

`A002260(A205871(n+1))`
-/

namespace A205873.P8120603864774018449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205871 (n + 1)).toNat

end

end A205873.P8120603864774018449

/-! ## A205873.P1150333721112731290

`A002262(A205871(n+1)-1)+1`
-/

namespace A205873.P1150333721112731290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205871 (n + 1) - 1).toNat + 1

end

end A205873.P1150333721112731290

/-! ## A205873.P4531694382423961240

`A205872(n+1)-A004736(A205871(n+1))`
-/

namespace A205873.P4531694382423961240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205872 (n + 1) - A004736 (A205871 (n + 1)).toNat

end

end A205873.P4531694382423961240

/-! ## A205873.P7657912190434045211

`A003057(A205871(n+1)+1)-A004736(A205871(n+1))`
-/

namespace A205873.P7657912190434045211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205871 (n + 1) + 1).toNat - A004736 (A205871 (n + 1)).toNat

end

end A205873.P7657912190434045211

/-! ## A205873.P11692454745661457497

`A097285(2*A205871(n+1)-1)`
-/

namespace A205873.P11692454745661457497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205871 (n + 1) - 1).toNat

end

end A205873.P11692454745661457497

/-! ## A205873.P2800871794379317341

`A097285(A205871(n+1)+A205871(n+1)-1)`
-/

namespace A205873.P2800871794379317341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205871 (n + 1) + (A205871 (n + 1) - 1)).toNat

end

end A205873.P2800871794379317341

/-!
# A205874: s(k)-s(j), where the pairs (k,j) are given by A205872 and A205873, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205874, there is no canonical definition to state claims against.
-/

/-! ## A205874.P15507610152704847335

`9*A205875(n+1)`
-/

namespace A205874.P15507610152704847335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A205875 (n + 1)

end

end A205874.P15507610152704847335

/-! ## A205874.P1208729894142919945

`A204922(A205871(n+1))`
-/

namespace A205874.P1208729894142919945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205871 (n + 1)).toNat

end

end A205874.P1208729894142919945

/-! ## A205874.P11418688406589951274

`A204922(record[A205871(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A205874.P11418688406589951274
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205871 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A205874.P11418688406589951274

/-! ## A205874.P17658999786419397945

`∑{d}[A205875(n+1), A008591(A000010(#))]`
-/

namespace A205874.P17658999786419397945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008591 (A000010 d).toNat

end

end A205874.P17658999786419397945

/-! ## A205874.P12373013018817577035

`A008591(A205875(n+1))`
-/

namespace A205874.P12373013018817577035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A205875 (n + 1)).toNat

end

end A205874.P12373013018817577035

/-!
# A205875: [s(k)-s(j)]/9, where the pairs (k,j) are given by A205872 and A205873, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205875, there is no canonical definition to state claims against.
-/

/-! ## A205875.P8409652881140236980

`A205874(n+1)/9`
-/

namespace A205875.P8409652881140236980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205874 (n + 1) : ℚ) / 9

end

end A205875.P8409652881140236980

/-! ## A205875.P18106454364485039180

`A204922(A205871(n+1))/9`
-/

namespace A205875.P18106454364485039180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205871 (n + 1)).toNat : ℚ) / 9

end

end A205875.P18106454364485039180

/-! ## A205875.P1061996584517521066

`A106610(A205874(n+1))`
-/

namespace A205875.P1061996584517521066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A205874 (n + 1)).toNat

end

end A205875.P1061996584517521066

/-! ## A205875.P3854073286653648904

`A343609(A205874(n+1)+1)`
-/

namespace A205875.P3854073286653648904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A205874 (n + 1) + 1).toNat

end

end A205875.P3854073286653648904

/-! ## A205875.P6414094474039549948

`A271800(lcm(3, A205874(n+1)))`
-/

namespace A205875.P6414094474039549948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (Int.lcm 3 (A205874 (n + 1)))

end

end A205875.P6414094474039549948

/-!
# A205876: Positions of multiples of 10 in A204922 (differences of Fibonacci numbers).

The programs for A205876, the canonical program `A205876.P8063870460233133950` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205876 has offset 1).

The definition of A205876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205876.P8063870460233133950

`∩[A205556(n+1), A205851(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205876

/-- `∩[A205556(n+1), A205851(n+1)]` -/
def P8063870460233133950.Spec : Prop :=
  ∀ n, (P8063870460233133950.a n : ℤ) = A205876 (n + 1)

theorem P8063870460233133950.correct : P8063870460233133950.Spec := by
  intro n
  simp only [A205876, Nat.add_sub_cancel]

end A205876

/-! ## A205876.P5887001810236261327

`lt[5, gcd(20, A204922(A028310(n)))]`
-/

namespace A205876.P5887001810236261327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 20 (A204922 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A205876.P5887001810236261327

namespace A205876

/-- `lt[5, gcd(20, A204922(A028310(n)))]` -/
def P5887001810236261327.Spec : Prop :=
  ∀ n, (P5887001810236261327.a n : ℤ) = A205876 (n + 1)

end A205876

/-!
# A205877: Numbers k for which 10 divides s(k)-s(j) for some j

The programs for A205877, the canonical program `A205877.P15389907545694943149` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205877 has offset 1).

The definition of A205877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205877.P7839745187148305985

`A351120(A205876(n+1))`
-/

namespace A205877.P7839745187148305985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (A205876 (n + 1)).toNat

end

end A205877.P7839745187148305985

namespace A205877

/-- `A351120(A205876(n+1))` -/
def P7839745187148305985.Spec : Prop :=
  ∀ n, P7839745187148305985.a n = A205877 (n + 1)

end A205877

/-! ## A205877.P15389907545694943149

`A003057(A205876(n+1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205877

/-- `A003057(A205876(n+1)+1)` -/
def P15389907545694943149.Spec : Prop :=
  ∀ n, P15389907545694943149.a n = A205877 (n + 1)

theorem P15389907545694943149.correct : P15389907545694943149.Spec := by
  intro n
  simp only [A205877, Nat.add_sub_cancel]

end A205877

/-! ## A205877.P7221335529503986702

`A123578(A205876(n+1)+A000038(n))+1`
-/

namespace A205877.P7221335529503986702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205876 (n + 1) + A000038 n).toNat + 1

end

end A205877.P7221335529503986702

namespace A205877

/-- `A123578(A205876(n+1)+A000038(n))+1` -/
def P7221335529503986702.Spec : Prop :=
  ∀ n, P7221335529503986702.a n = A205877 (n + 1)

end A205877

/-! ## A205877.P17349284673741103448

`A123578(A205876(n+1))+A057427(n+1)`
-/

namespace A205877.P17349284673741103448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205876 (n + 1)).toNat + A057427 (n + 1)

end

end A205877.P17349284673741103448

namespace A205877

/-- `A123578(A205876(n+1))+A057427(n+1)` -/
def P17349284673741103448.Spec : Prop :=
  ∀ n, P17349284673741103448.a n = A205877 (n + 1)

end A205877

/-! ## A205877.P12287725174402540804

`A205878(n+1)+A004736(A205876(n+1))`
-/

namespace A205877.P12287725174402540804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205878 (n + 1) + A004736 (A205876 (n + 1)).toNat

end

end A205877.P12287725174402540804

namespace A205877

/-- `A205878(n+1)+A004736(A205876(n+1))` -/
def P12287725174402540804.Spec : Prop :=
  ∀ n, P12287725174402540804.a n = A205877 (n + 1)

end A205877

/-! ## A205877.P17861132689812426952

`A097285(2*A205876(n+1))`
-/

namespace A205877.P17861132689812426952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205876 (n + 1)).toNat

end

end A205877.P17861132689812426952

namespace A205877

/-- `A097285(2*A205876(n+1))` -/
def P17861132689812426952.Spec : Prop :=
  ∀ n, P17861132689812426952.a n = A205877 (n + 1)

end A205877

/-!
# A205878: The least number j such that 10 divides s(k)-s(j), where k(n)=A205877(n) and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205878, the canonical program `A205878.P6519794814124573053` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205878 has offset 1).

The definition of A205878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205878.P6519794814124573053

`A002260(A205876(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205878

/-- `A002260(A205876(n+1))` -/
def P6519794814124573053.Spec : Prop :=
  ∀ n, P6519794814124573053.a n = A205878 (n + 1)

theorem P6519794814124573053.correct : P6519794814124573053.Spec := by
  intro n
  simp only [A205878, Nat.add_sub_cancel]

end A205878

/-! ## A205878.P13310755207500502515

`A131818(A205876(n+1)+1)-1`
-/

namespace A205878.P13310755207500502515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A205876 (n + 1) + 1).toNat - 1

end

end A205878.P13310755207500502515

namespace A205878

/-- `A131818(A205876(n+1)+1)-1` -/
def P13310755207500502515.Spec : Prop :=
  ∀ n, P13310755207500502515.a n = A205878 (n + 1)

end A205878

/-! ## A205878.P3176592900319178286

`A205877(n+1)-A004736(A205876(n+1))`
-/

namespace A205878.P3176592900319178286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205877 (n + 1) - A004736 (A205876 (n + 1)).toNat

end

end A205878.P3176592900319178286

namespace A205878

/-- `A205877(n+1)-A004736(A205876(n+1))` -/
def P3176592900319178286.Spec : Prop :=
  ∀ n, P3176592900319178286.a n = A205878 (n + 1)

end A205878

/-! ## A205878.P12574171921303505003

`A003057(A205876(n+1)+1)-A004736(A205876(n+1))`
-/

namespace A205878.P12574171921303505003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205876 (n + 1) + 1).toNat - A004736 (A205876 (n + 1)).toNat

end

end A205878.P12574171921303505003

namespace A205878

/-- `A003057(A205876(n+1)+1)-A004736(A205876(n+1))` -/
def P12574171921303505003.Spec : Prop :=
  ∀ n, P12574171921303505003.a n = A205878 (n + 1)

end A205878

/-! ## A205878.P16911996890287608722

`A097285(2*A205876(n+1)-1)`
-/

namespace A205878.P16911996890287608722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205876 (n + 1) - 1).toNat

end

end A205878.P16911996890287608722

namespace A205878

/-- `A097285(2*A205876(n+1)-1)` -/
def P16911996890287608722.Spec : Prop :=
  ∀ n, P16911996890287608722.a n = A205878 (n + 1)

end A205878

/-! ## A205878.P9683468145016576509

`A097285(A205876(n+1)+A205876(n+1)-1)`
-/

namespace A205878.P9683468145016576509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205876 (n + 1) + (A205876 (n + 1) - 1)).toNat

end

end A205878.P9683468145016576509

namespace A205878

/-- `A097285(A205876(n+1)+A205876(n+1)-1)` -/
def P9683468145016576509.Spec : Prop :=
  ∀ n, P9683468145016576509.a n = A205878 (n + 1)

end A205878

/-!
# A205879: s(k)-s(j), where the pairs (k,j) are given by A205877 and A205878, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205879, there is no canonical definition to state claims against.
-/

/-! ## A205879.P7063748679970674388

`10*A205880(n+1)`
-/

namespace A205879.P7063748679970674388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A205880 (n + 1)

end

end A205879.P7063748679970674388

/-! ## A205879.P1165625246925445382

`A204922(A205876(n+1))`
-/

namespace A205879.P1165625246925445382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A205876 (n + 1)).toNat

end

end A205879.P1165625246925445382

/-! ## A205879.P11218575572782036849

`A204922(∩[A205556(n+1), A205851(n+1)])`
-/

namespace A205879.P11218575572782036849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205851 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A205879.P11218575572782036849

/-! ## A205879.P12524959847206038154

`A008592(A205880(n+1))`
-/

namespace A205879.P12524959847206038154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A205880 (n + 1)).toNat

end

end A205879.P12524959847206038154

/-! ## A205879.P15710061937912926559

`filter[A205854(n+1), A353525(#)]`
-/

namespace A205879.P15710061937912926559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A205879.P15710061937912926559

/-!
# A205880: [s(k)-s(j)]/10, where the pairs (k,j) are given by A205877 and A205878, and s(k) denotes the (k+1)-st Fibonacci number.

The programs for A205880, there is no canonical definition to state claims against.
-/

/-! ## A205880.P18418453702975506795

`A205879(n+1)/10`
-/

namespace A205880.P18418453702975506795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205879 (n + 1) : ℚ) / 10

end

end A205880.P18418453702975506795

/-! ## A205880.P8389979735691174576

`A204922(A205876(n+1))/10`
-/

namespace A205880.P8389979735691174576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A205876 (n + 1)).toNat : ℚ) / 10

end

end A205880.P8389979735691174576

/-! ## A205880.P5229824814795885365

`A204922(∩[A205556(n+1), A205851(n+1)])/10`
-/

namespace A205880.P5229824814795885365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205851 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 10

end

end A205880.P5229824814795885365

/-! ## A205880.P10255987318163239562

`A004151(A205879(n+1))`
-/

namespace A205880.P10255987318163239562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A205879 (n + 1)).toNat

end

end A205880.P10255987318163239562

/-! ## A205880.P7069520201219792796

`A059995(A205879(n+1)+1)`
-/

namespace A205880.P7069520201219792796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A205879 (n + 1) + 1).toNat

end

end A205880.P7069520201219792796

/-!
# A205881: Second pentagonal numbers that are interprime.

The programs for A205881, there is no canonical definition to state claims against.
-/

/-! ## A205881.P14513038534560088894

`∩[A024675(n+1), A005449(n)]`
-/

namespace A205881.P14513038534560088894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205881.P14513038534560088894

/-! ## A205881.P9129062188995848243

`∩[A145025(n+1), A005449(n)]`
-/

namespace A205881.P9129062188995848243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205881.P9129062188995848243

/-! ## A205881.P12922308038038428316

`∩[A162735(n+1), A005449(n)]`
-/

namespace A205881.P12922308038038428316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205881.P12922308038038428316

/-! ## A205881.P3123064585994828819

`∩[A078444(n+1)+1, A005449(n)]`
-/

namespace A205881.P3123064585994828819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205881.P3123064585994828819

/-! ## A205881.P8377735532511616974

`∩[A024675(n+1), A000326(n)+n]`
-/

namespace A205881.P8377735532511616974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205881.P8377735532511616974

/-!
# A205882: a(n) = Fibonacci(n)*A109064(n) for n>=1 with a(0)=1.

The programs for A205882, there is no canonical definition to state claims against.
-/

/-! ## A205882.P13178401466455899033

`A109064(n)*A324969(n+1)`
-/

namespace A205882.P13178401466455899033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 n * A324969 (n + 1)

end

end A205882.P13178401466455899033

/-! ## A205882.P12873908817955442168

`A000045(A028310(n))*A109064(n)`
-/

namespace A205882.P12873908817955442168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A109064 n

end

end A205882.P12873908817955442168

/-! ## A205882.P5620619131345197439

`(A001611(n)-A057427(n))*A109064(n)`
-/

namespace A205882.P5620619131345197439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - A057427 n) * A109064 n

end

end A205882.P5620619131345197439

/-! ## A205882.P6786725618198988469

`A109064(n)/A034896(n)*A205971(n)`
-/

namespace A205882.P6786725618198988469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 n : ℚ) / (A034896 n : ℚ) * (A205971 n : ℚ)

end

end A205882.P6786725618198988469

/-! ## A205882.P472762140470153420

`A109064(n)/A008653(n)*A205967(n)`
-/

namespace A205882.P472762140470153420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 n : ℚ) / (A008653 n : ℚ) * (A205967 n : ℚ)

end

end A205882.P472762140470153420

/-! ## A205882.P14636424410877310846

`A205884(n)/A209451(n)*A205971(n)`
-/

namespace A205882.P14636424410877310846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205884 n : ℚ) / (A209451 n : ℚ) * (A205971 n : ℚ)

end

end A205882.P14636424410877310846

/-!
# A205883: Length of n-th run of A205600(n).

The programs for A205883, there is no canonical definition to state claims against.
-/

/-! ## A205883.P5735009544248574352

`∑[n*A205600(n+1)]+2`
-/

namespace A205883.P5735009544248574352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A205600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A205883.P5735009544248574352

/-! ## A205883.P1151756761798419850

`eq[1, A343953(A107750(n))]`
-/

namespace A205883.P1151756761798419850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343953 (A107750 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205883.P1151756761798419850

/-! ## A205883.P8767866170491453407

`∑[n*(A243252(n+1)%A001511(n+1)+1)]+2`
-/

namespace A205883.P8767866170491453407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod (A243252 (n + 1)) (A001511 (n + 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A205883.P8767866170491453407

/-! ## A205883.P6509211573728833557

`eq[A049600(A107750(n)), A063053(n)]`
-/

namespace A205883.P6509211573728833557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A107750 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205883.P6509211573728833557

/-! ## A205883.P11096688171491905129

`A140474(A140513(2*n+1))+A000217(n)`
-/

namespace A205883.P11096688171491905129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140474 (A140513 (2 * n + 1)).toNat + A000217 n

end

end A205883.P11096688171491905129

/-!
# A205884: a(n) = Pell(n)*A109064(n) for n >= 1 with a(0)=1.

The programs for A205884, there is no canonical definition to state claims against.
-/

/-! ## A205884.P16145098063084871349

`A109064(n)*A215928(n)`
-/

namespace A205884.P16145098063084871349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 n * A215928 n

end

end A205884.P16145098063084871349

/-! ## A205884.P17808276593347516136

`A109064(n)*A116560(A008458(n))`
-/

namespace A205884.P17808276593347516136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 n * A116560 (A008458 n).toNat

end

end A205884.P17808276593347516136

/-! ## A205884.P9263834775415724058

`A109064(n)/A034896(n)*A209451(n)`
-/

namespace A205884.P9263834775415724058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 n : ℚ) / (A034896 n : ℚ) * (A209451 n : ℚ)

end

end A205884.P9263834775415724058

/-! ## A205884.P17920341920230980282

`A205882(n)/A205971(n)*A209451(n)`
-/

namespace A205884.P17920341920230980282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205882 n : ℚ) / (A205971 n : ℚ) * (A209451 n : ℚ)

end

end A205884.P17920341920230980282

/-! ## A205884.P11663406330071947036

`A109064(n)/A008653(n)*A209447(n)`
-/

namespace A205884.P11663406330071947036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 n : ℚ) / (A008653 n : ℚ) * (A209447 n : ℚ)

end

end A205884.P11663406330071947036

/-! ## A205884.P15899271163969866825

`gcd(A000129(n), A209447(n))*A109064(n)`
-/

namespace A205884.P15899271163969866825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209447 n) : ℤ) * A109064 n

end

end A205884.P15899271163969866825

/-!
# A205886: E.g.f. satisfies: A(x) = x + arctanh(A(x))^2.

The programs for A205886, there is no canonical definition to state claims against.
-/

/-! ## A205886.P16140549579733241174

`A268241(A394769(n))`
-/

namespace A205886.P16140549579733241174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268241 (A394769 n).toNat

end

end A205886.P16140549579733241174

/-!
# A205887: Number of (n+1)X(n+1) 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205887, there is no canonical definition to state claims against.
-/

/-! ## A205887.P3607902309654549243

`A205894(∑[4*n]+1)`
-/

namespace A205887.P3607902309654549243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205887.P3607902309654549243

/-!
# A205888: Number of (n+1)X3 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205888, there is no canonical definition to state claims against.
-/

/-! ## A205888.P3051332656896605146

`A205894(∑[n+2])`
-/

namespace A205888.P3051332656896605146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205888.P3051332656896605146

/-! ## A205888.P12854653423967505658

`record[A205894(Δ[A003453(n+5)])]`
-/

namespace A205888.P12854653423967505658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205888.P12854653423967505658

/-! ## A205888.P8765842911109663351

`record[A205894(A000096(val(n+1, 2)+1))]`
-/

namespace A205888.P8765842911109663351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205888.P8765842911109663351

/-! ## A205888.P4678855704903720706

`record[root(A205894(n+2), A004736(n+3))]`
-/

namespace A205888.P4678855704903720706
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205894 (n + 2) : ℝ) ^ (1 / (A004736 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205888.P4678855704903720706

/-! ## A205888.P16970250133771605624

`record[gcd(A185782(n+3), A205894(n+2))]`
-/

namespace A205888.P16970250133771605624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185782 (n + 3)) (A205894 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205888.P16970250133771605624

/-!
# A205889: Number of (n+1)X4 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205889, there is no canonical definition to state claims against.
-/

/-! ## A205889.P7605672657402304295

`A205894(∑[n+3]+1)`
-/

namespace A205889.P7605672657402304295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205889.P7605672657402304295

/-! ## A205889.P6419208200216110990

`lcm(2, A205894(A034856(n+2)))`
-/

namespace A205889.P6419208200216110990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205894 (A034856 (n + 2)).toNat)

end

end A205889.P6419208200216110990

/-! ## A205889.P10302117601131915624

`A205894(A034856(n+2))+A161035(n+1)`
-/

namespace A205889.P10302117601131915624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A034856 (n + 2)).toNat + A161035 (n + 1)

end

end A205889.P10302117601131915624

/-! ## A205889.P18110580134800992279

`A205894(A034856(n+2))+A161061(n+1)`
-/

namespace A205889.P18110580134800992279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A034856 (n + 2)).toNat + A161061 (n + 1)

end

end A205889.P18110580134800992279

/-! ## A205889.P1938970947584153637

`A071222(2*n)*A205894(A034856(n+2))`
-/

namespace A205889.P1938970947584153637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (2 * n) * A205894 (A034856 (n + 2)).toNat

end

end A205889.P1938970947584153637

/-!
# A205890: Number of (n+1)X5 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205890, there is no canonical definition to state claims against.
-/

/-! ## A205890.P13758289012595878001

`A205894(A141214(n+1))`
-/

namespace A205890.P13758289012595878001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A141214 (n + 1)).toNat

end

end A205890.P13758289012595878001

/-! ## A205890.P13180412914823509114

`A205894(A155212(n)+5)`
-/

namespace A205890.P13180412914823509114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A155212 n + 5).toNat

end

end A205890.P13180412914823509114

/-! ## A205890.P7550752308264095367

`A205894(A056000(n)+7)`
-/

namespace A205890.P7550752308264095367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A056000 n + 7).toNat

end

end A205890.P7550752308264095367

/-! ## A205890.P9119408221233747661

`A205894(eq[2, A152157(n)])`
-/

namespace A205890.P9119408221233747661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205890.P9119408221233747661

/-! ## A205890.P3870425971333086972

`A205894(eq[3, A193592(n)])`
-/

namespace A205890.P3870425971333086972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205890.P3870425971333086972

/-!
# A205891: Number of (n+1)X6 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205891, there is no canonical definition to state claims against.
-/

/-! ## A205891.P16464879034590680100

`A205894(Δ[A264443(n)])`
-/

namespace A205891.P16464879034590680100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (f1 (n + 1) - f1 n).toNat

end

end A205891.P16464879034590680100

/-! ## A205891.P2476238460816000740

`A205894(A046691(n+3))`
-/

namespace A205891.P2476238460816000740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A046691 (n + 3)).toNat

end

end A205891.P2476238460816000740

/-! ## A205891.P9007011641875821903

`A205894(eq[3, A152157(n)])`
-/

namespace A205891.P9007011641875821903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205891.P9007011641875821903

/-! ## A205891.P13232019798824357073

`A205894(eq[4, A193592(n)])`
-/

namespace A205891.P13232019798824357073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205891.P13232019798824357073

/-!
# A205892: Number of (n+1)X7 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205892, there is no canonical definition to state claims against.
-/

/-! ## A205892.P14448456615469229325

`A205894(eq[8, A185782(n+1)])`
-/

namespace A205892.P14448456615469229325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205892.P14448456615469229325

/-! ## A205892.P17841286977040953182

`A205894(Δ[A264443(n+1)]-1)`
-/

namespace A205892.P17841286977040953182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (f1 (n + 1) - f1 n - 1).toNat

end

end A205892.P17841286977040953182

/-!
# A205893: 

The programs for A205893, there is no canonical definition to state claims against.
-/

/-! ## A205893.P14133087005989575045

`A205894(A052905(n+4)-1)`
-/

namespace A205893.P14133087005989575045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A052905 (n + 4) - 1).toNat

end

end A205893.P14133087005989575045

/-!
# A205895: Number of 3X(n+1) 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205895, there is no canonical definition to state claims against.
-/

/-! ## A205895.P9802051116173750519

`A205894(∑[n+1]+2)`
-/

namespace A205895.P9802051116173750519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205895.P9802051116173750519

/-! ## A205895.P138299462298017283

`A335446(n+1)+A205894(A152948(n+3))`
-/

namespace A205895.P138299462298017283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (n + 1) + A205894 (A152948 (n + 3)).toNat

end

end A205895.P138299462298017283

/-! ## A205895.P6178472750021050443

`A205894(A133263(n+1))*A266724(2*n+3)`
-/

namespace A205895.P6178472750021050443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A133263 (n + 1)).toNat * A266724 (2 * n + 3)

end

end A205895.P6178472750021050443

/-! ## A205895.P1275872365653648632

`A301295(A135680(n+1))+A205894(A152948(n+3))`
-/

namespace A205895.P1275872365653648632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301295 (A135680 (n + 1)).toNat + A205894 (A152948 (n + 3)).toNat

end

end A205895.P1275872365653648632

/-!
# A205896: Number of 4X(n+1) 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205896, there is no canonical definition to state claims against.
-/

/-! ## A205896.P15045685436888228080

`A205894(∑[n+2]+4)`
-/

namespace A205896.P15045685436888228080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205896.P15045685436888228080

/-! ## A205896.P6225323959194572901

`lcm(2, A205894(A167614(n+1)))`
-/

namespace A205896.P6225323959194572901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205894 (A167614 (n + 1)).toNat)

end

end A205896.P6225323959194572901

/-! ## A205896.P1973651157194374582

`A205894(A167614(n+1))+A185264(n)`
-/

namespace A205896.P1973651157194374582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A167614 (n + 1)).toNat + A185264 n

end

end A205896.P1973651157194374582

/-! ## A205896.P16517673186066165016

`A205894(A167614(n+1))*A261585(n)`
-/

namespace A205896.P16517673186066165016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A167614 (n + 1)).toNat * A261585 n

end

end A205896.P16517673186066165016

/-! ## A205896.P1593234581215113174

`A184348(n+1)*A205894(A167614(n+1))`
-/

namespace A205896.P1593234581215113174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 1) * A205894 (A167614 (n + 1)).toNat

end

end A205896.P1593234581215113174

/-!
# A205897: Number of 5X(n+1) 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205897, there is no canonical definition to state claims against.
-/

/-! ## A205897.P6061628456736489331

`A205894(A141214(n)+7)`
-/

namespace A205897.P6061628456736489331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A141214 n + 7).toNat

end

end A205897.P6061628456736489331

/-! ## A205897.P17037393238865479784

`A205894(A052905(n)+9)`
-/

namespace A205897.P17037393238865479784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A052905 n + 9).toNat

end

end A205897.P17037393238865479784

/-! ## A205897.P13759648652216829575

`A205894(A055999(n)+10)`
-/

namespace A205897.P13759648652216829575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A055999 n + 10).toNat

end

end A205897.P13759648652216829575

/-! ## A205897.P16620625983613113572

`A205894(A167614(n+2)+1)`
-/

namespace A205897.P16620625983613113572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A167614 (n + 2) + 1).toNat

end

end A205897.P16620625983613113572

/-! ## A205897.P3728400772624863342

`A205894(eq[5, A131818(n+1)])`
-/

namespace A205897.P3728400772624863342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205897.P3728400772624863342

/-!
# A205898: Number of 6 X (n+1) 0..2 arrays with 2 X 2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205898, there is no canonical definition to state claims against.
-/

/-! ## A205898.P2748353929032072180

`A205894(A056000(n)+15)`
-/

namespace A205898.P2748353929032072180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A056000 n + 15).toNat

end

end A205898.P2748353929032072180

/-!
# A205899: Number of 7X(n+1) 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205899, there is no canonical definition to state claims against.
-/

/-! ## A205899.P2823899582217817607

`A205894(eq[7, A131818(n+1)])`
-/

namespace A205899.P2823899582217817607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205899.P2823899582217817607

