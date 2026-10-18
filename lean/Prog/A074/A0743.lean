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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A074301: Numbers n such that (i) the largest prime factor of n is not a palindrome and (ii) the sum of the factorials of the digits of n is equal to the largest prime factor of n reversed.

The programs for A074301, there is no canonical definition to state claims against.
-/

/-! ## A074301.P16627174568514939872

`A111185(∑[∑[A111332(n)]])`
-/

namespace A074301.P16627174568514939872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111185 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074301.P16627174568514939872

/-! ## A074301.P8665990265472702511

`A111185(A111332(n)!+n)`
-/

namespace A074301.P8665990265472702511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111185 (Nat.factorial (A111332 n).toNat + n)

end

end A074301.P8665990265472702511

/-! ## A074301.P7240605406386564411

`A111185(or(1, A111332(n))+n)`
-/

namespace A074301.P7240605406386564411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111185 (Int.lor 1 (A111332 n) + (n : ℤ)).toNat

end

end A074301.P7240605406386564411

/-! ## A074301.P12211343618145294060

`A111185(n+1)%A053170(comp[∑[n]])`
-/

namespace A074301.P12211343618145294060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111185 (n + 1)) (A053170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A074301.P12211343618145294060

/-! ## A074301.P3293322869695378711

`A111185(n+1)+A008683(A173961(n+1))`
-/

namespace A074301.P3293322869695378711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111185 (n + 1) + A008683 (A173961 (n + 1)).toNat

end

end A074301.P3293322869695378711

/-!
# A074302: Sum of squares of digits of n is equal to the largest prime factor of n.

The programs for A074302, there is no canonical definition to state claims against.
-/

/-! ## A074302.P14701240193292473613

`eq[A006530(A028310(n)), A003132(n)]`
-/

namespace A074302.P14701240193292473613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074302.P14701240193292473613

/-! ## A074302.P5694478253912403379

`eq[A006530(A257088(n)), A003132(n)]`
-/

namespace A074302.P5694478253912403379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074302.P5694478253912403379

/-!
# A074304: Numbers k such that Lucas(2k)/3 is prime.

The programs for A074304, there is no canonical definition to state claims against.
-/

/-! ## A074304.P6034129737950000829

`2*A355980(n+1)+1`
-/

namespace A074304.P6034129737950000829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355980 (n + 1) + 1

end

end A074304.P6034129737950000829

/-! ## A074304.P15416117937706013993

`p?[A061445(n+1)-A006530(A061445(n+1))]`
-/

namespace A074304.P15416117937706013993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061445 (n + 1) - A006530 (A061445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074304.P15416117937706013993

/-! ## A074304.P4415369226663906625

`A005843(A355980(n+1))+1`
-/

namespace A074304.P4415369226663906625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A355980 (n + 1)).toNat + 1

end

end A074304.P4415369226663906625

/-! ## A074304.P11938399682674586362

`p?[A001281(A061445(n+1))]`
-/

namespace A074304.P11938399682674586362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A061445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074304.P11938399682674586362

/-! ## A074304.P11830020325998515191

`p?[A029578(A061445(n+2))]`
-/

namespace A074304.P11830020325998515191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A061445 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074304.P11830020325998515191

/-!
# A074305: a(3m) = 2m, a(3m+1) = 4m+3, a(3m+2) = 4m+1.

The programs for A074305, the canonical program `A074305.P5357194369425951576` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074305 has offset 0).

The definition of A074305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074305.P5357194369425951576

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=7, a(5)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074305

/-- `2*a(n-3)-a(n-6)` -/
def P5357194369425951576.Spec : Prop :=
  ∀ n, P5357194369425951576.a n = A074305 n

theorem P5357194369425951576.correct : P5357194369425951576.Spec := by
  intro n
  simp only [A074305]

end A074305

/-! ## A074305.P1088567574253320087

`xor(1, a(n-3)+3)` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A074305.P1088567574253320087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  Nat.xor 1 (a (n - 3) + 3)

end

end A074305.P1088567574253320087

namespace A074305

/-- `xor(1, a(n-3)+3)` -/
def P1088567574253320087.Spec : Prop :=
  ∀ n, (P1088567574253320087.a n : ℤ) = A074305 n

end A074305

/-! ## A074305.P896661460522098657

`3-xor(1, -a(n-3))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A074305.P896661460522098657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  3 - Int.xor 1 (-a (n - 3))

end

end A074305.P896661460522098657

namespace A074305

/-- `3-xor(1, -a(n-3))` -/
def P896661460522098657.Spec : Prop :=
  ∀ n, P896661460522098657.a n = A074305 n

end A074305

/-! ## A074305.P14568346935635773704

`5-xor(1, 2-a(n-3))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A074305.P14568346935635773704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  5 - Int.xor 1 (2 - a (n - 3))

end

end A074305.P14568346935635773704

namespace A074305

/-- `5-xor(1, 2-a(n-3))` -/
def P14568346935635773704.Spec : Prop :=
  ∀ n, P14568346935635773704.a n = A074305 n

end A074305

/-! ## A074305.P6048994912433721946

`a(n-3)-gcd(3, n)+5` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A074305.P6048994912433721946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  a (n - 3) - (Nat.gcd 3 n : ℤ) + 5

end

end A074305.P6048994912433721946

namespace A074305

/-- `a(n-3)-gcd(3, n)+5` -/
def P6048994912433721946.Spec : Prop :=
  ∀ n, P6048994912433721946.a n = A074305 n

end A074305

/-! ## A074305.P18391014800218293120

`a(n-3)+3-(-1)^a(n-3)` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A074305.P18391014800218293120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  a (n - 3) + 3 - (-1 : ℝ) ^ (a (n - 3))

end

end A074305.P18391014800218293120

namespace A074305

/-- `a(n-3)+3-(-1)^a(n-3)` -/
def P18391014800218293120.Spec : Prop :=
  ∀ n, P18391014800218293120.a n = (A074305 n : ℝ)

end A074305

/-! ## A074305.P14086916651492400735

`3-((-1)^a(n-3)-a(n-3))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A074305.P14086916651492400735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  3 - ((-1 : ℝ) ^ (a (n - 3)) - a (n - 3))

end

end A074305.P14086916651492400735

namespace A074305

/-- `3-((-1)^a(n-3)-a(n-3))` -/
def P14086916651492400735.Spec : Prop :=
  ∀ n, P14086916651492400735.a n = (A074305 n : ℝ)

end A074305

/-! ## A074305.P16392452799753364147

`A006369(A064429(n))`
-/

namespace A074305.P16392452799753364147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A064429 n).toNat

end

end A074305.P16392452799753364147

namespace A074305

/-- `A006369(A064429(n))` -/
def P16392452799753364147.Spec : Prop :=
  ∀ n, P16392452799753364147.a n = A074305 n

end A074305

/-! ## A074305.P10966565836211314270

`A006369(A102283(n)+n)`
-/

namespace A074305.P10966565836211314270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A102283 n + (n : ℤ)).toNat

end

end A074305.P10966565836211314270

namespace A074305

/-- `A006369(A102283(n)+n)` -/
def P10966565836211314270.Spec : Prop :=
  ∀ n, P10966565836211314270.a n = A074305 n

end A074305

/-! ## A074305.P6092862064571220508

`A006369(n-A057078(n+1))`
-/

namespace A074305.P6092862064571220508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 ((n : ℤ) - A057078 (n + 1)).toNat

end

end A074305.P6092862064571220508

namespace A074305

/-- `A006369(n-A057078(n+1))` -/
def P6092862064571220508.Spec : Prop :=
  ∀ n, P6092862064571220508.a n = A074305 n

end A074305

/-! ## A074305.P10614094192520992549

`A006369(3*A004396(n)-n)`
-/

namespace A074305.P10614094192520992549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (3 * A004396 n - (n : ℤ)).toNat

end

end A074305.P10614094192520992549

namespace A074305

/-- `A006369(3*A004396(n)-n)` -/
def P10614094192520992549.Spec : Prop :=
  ∀ n, P10614094192520992549.a n = A074305 n

end A074305

/-! ## A074305.P5020755405827860986

`A006369(A047342(n+1)-comp[4*n+2])`
-/

namespace A074305.P5020755405827860986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A047342 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A074305.P5020755405827860986

namespace A074305

/-- `A006369(A047342(n+1)-comp[4*n+2])` -/
def P5020755405827860986.Spec : Prop :=
  ∀ n, P5020755405827860986.a n = A074305 n

end A074305

/-! ## A074305.P10585713750817140759

`A004442(a(n-3)+3)` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A074305.P10585713750817140759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  A004442 (a (n - 3) + 3).toNat

end

end A074305.P10585713750817140759

namespace A074305

/-- `A004442(a(n-3)+3)` -/
def P10585713750817140759.Spec : Prop :=
  ∀ n, P10585713750817140759.a n = A074305 n

end A074305

/-! ## A074305.P4936988562597922232

`A159966(A006369(n))`
-/

namespace A074305.P4936988562597922232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A006369 n).toNat

end

end A074305.P4936988562597922232

namespace A074305

/-- `A159966(A006369(n))` -/
def P4936988562597922232.Spec : Prop :=
  ∀ n, P4936988562597922232.a n = A074305 n

end A074305

/-! ## A074305.P245241921562939089

`A074307(A074306(n))`
-/

namespace A074305.P245241921562939089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074307 (A074306 n).toNat

end

end A074305.P245241921562939089

namespace A074305

/-- `A074307(A074306(n))` -/
def P245241921562939089.Spec : Prop :=
  ∀ n, P245241921562939089.a n = A074305 n

end A074305

/-! ## A074305.P5290925868591628733

`A006369(A128834(2*n)+n)`
-/

namespace A074305.P5290925868591628733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A128834 (2 * n) + (n : ℤ)).toNat

end

end A074305.P5290925868591628733

namespace A074305

/-- `A006369(A128834(2*n)+n)` -/
def P5290925868591628733.Spec : Prop :=
  ∀ n, P5290925868591628733.a n = A074305 n

end A074305

/-! ## A074305.P11266827370407558459

`A006369(n-A102283(2*n))`
-/

namespace A074305.P11266827370407558459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 ((n : ℤ) - A102283 (2 * n)).toNat

end

end A074305.P11266827370407558459

namespace A074305

/-- `A006369(n-A102283(2*n))` -/
def P11266827370407558459.Spec : Prop :=
  ∀ n, P11266827370407558459.a n = A074305 n

end A074305

/-! ## A074305.P3681531850839951846

`A006369(A057078(2*n+1)+n)`
-/

namespace A074305.P3681531850839951846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A057078 (2 * n + 1) + (n : ℤ)).toNat

end

end A074305.P3681531850839951846

namespace A074305

/-- `A006369(A057078(2*n+1)+n)` -/
def P3681531850839951846.Spec : Prop :=
  ∀ n, P3681531850839951846.a n = A074305 n

end A074305

/-! ## A074305.P103533483813063255

`A026741(A131452(2*n+1)-A131452(n+1))`
-/

namespace A074305.P103533483813063255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A131452 (2 * n + 1) - A131452 (n + 1)).toNat

end

end A074305.P103533483813063255

namespace A074305

/-- `A026741(A131452(2*n+1)-A131452(n+1))` -/
def P103533483813063255.Spec : Prop :=
  ∀ n, P103533483813063255.a n = A074305 n

end A074305

/-! ## A074305.P3731635100515368257

`A006369(A147534(2*(n+1))-A147534(n+2))`
-/

namespace A074305.P3731635100515368257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A147534 (2 * (n + 1)) - A147534 (n + 2)).toNat

end

end A074305.P3731635100515368257

namespace A074305

/-- `A006369(A147534(2*(n+1))-A147534(n+2))` -/
def P3731635100515368257.Spec : Prop :=
  ∀ n, P3731635100515368257.a n = A074305 n

end A074305

/-!
# A074306: Inverse of permutation in A074305.

The programs for A074306, the canonical program `A074306.P16284750889114431825` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074306 has offset 0).

The definition of A074306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074306.P16284750889114431825

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1, a(4)=6, a(5)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074306

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P16284750889114431825.Spec : Prop :=
  ∀ n, P16284750889114431825.a n = A074306 n

theorem P16284750889114431825.correct : P16284750889114431825.Spec := by
  intro n
  simp only [A074306]

end A074306

/-! ## A074306.P1690052948746340603

`a(xor(1, n)-3)+3` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A074306.P1690052948746340603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n a =>
  a (Nat.xor 1 n - 3) + 3

end

end A074306.P1690052948746340603

namespace A074306

/-- `a(xor(1, n)-3)+3` -/
def P1690052948746340603.Spec : Prop :=
  ∀ n, (P1690052948746340603.a n : ℤ) = A074306 n

end A074306

/-! ## A074306.P850667774058222777

`a(n-2)-xor(3, (a(n-2)%3)²-2)` with `a(0)=0, a(1)=2`
-/

namespace A074306.P850667774058222777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - Int.xor 3 (Int.tmod (a (n - 2)) 3 ^ 2 - 2)

end

end A074306.P850667774058222777

namespace A074306

/-- `a(n-2)-xor(3, (a(n-2)%3)²-2)` -/
def P850667774058222777.Spec : Prop :=
  ∀ n, P850667774058222777.a n = A074306 n

end A074306

/-! ## A074306.P10938662514104662332

`floor(lcm(2, 3*n+1)/4)-(1-and(2, n+1))%(3^(n%2))`
-/

namespace A074306.P10938662514104662332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋ - Int.tmod (1 - (Nat.land 2 (n + 1) : ℤ)) (3 ^ (n % 2) : ℤ)

end

end A074306.P10938662514104662332

namespace A074306

/-- `floor(lcm(2, 3*n+1)/4)-(1-and(2, n+1))%(3^(n%2))` -/
def P10938662514104662332.Spec : Prop :=
  ∀ n, P10938662514104662332.a n = A074306 n

end A074306

/-! ## A074306.P15416988839264061019

`A006368(xor(n, Δ[or(1, n)]))`
-/

namespace A074306.P15416988839264061019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A074306.P15416988839264061019

namespace A074306

/-- `A006368(xor(n, Δ[or(1, n)]))` -/
def P15416988839264061019.Spec : Prop :=
  ∀ n, P15416988839264061019.a n = A074306 n

end A074306

/-! ## A074306.P10085046017247161821

`A006368(xor(n, 2*and(1, n)))`
-/

namespace A074306.P10085046017247161821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Nat.xor n (2 * Nat.land 1 n))

end

end A074306.P10085046017247161821

namespace A074306

/-- `A006368(xor(n, 2*and(1, n)))` -/
def P10085046017247161821.Spec : Prop :=
  ∀ n, P10085046017247161821.a n = A074306 n

end A074306

/-! ## A074306.P2136229528293848251

`A006368(A159966(n))`
-/

namespace A074306.P2136229528293848251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A159966 n).toNat

end

end A074306.P2136229528293848251

namespace A074306

/-- `A006368(A159966(n))` -/
def P2136229528293848251.Spec : Prop :=
  ∀ n, P2136229528293848251.a n = A074306 n

end A074306

/-! ## A074306.P4450321838541519727

`A101455(n)+A006368(n)`
-/

namespace A074306.P4450321838541519727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n + A006368 n

end

end A074306.P4450321838541519727

namespace A074306

/-- `A101455(n)+A006368(n)` -/
def P4450321838541519727.Spec : Prop :=
  ∀ n, P4450321838541519727.a n = A074306 n

end A074306

/-! ## A074306.P13614458820908063304

`A006368(xor(n, A010673(n)))`
-/

namespace A074306.P13614458820908063304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.xor (n : ℤ) (A010673 n)).toNat

end

end A074306.P13614458820908063304

namespace A074306

/-- `A006368(xor(n, A010673(n)))` -/
def P13614458820908063304.Spec : Prop :=
  ∀ n, P13614458820908063304.a n = A074306 n

end A074306

/-! ## A074306.P7670188672306676954

`A006368(n)+A009531(n)%2`
-/

namespace A074306.P7670188672306676954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n + Int.tmod (A009531 n) 2

end

end A074306.P7670188672306676954

namespace A074306

/-- `A006368(n)+A009531(n)%2` -/
def P7670188672306676954.Spec : Prop :=
  ∀ n, P7670188672306676954.a n = A074306 n

end A074306

/-! ## A074306.P119274653817955185

`A249693(A124356(n+1)/2)-2`
-/

namespace A074306.P119274653817955185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 (SequenceMachineLib.roundAway ((A124356 (n + 1) : ℚ) / 2)).toNat - 2

end

end A074306.P119274653817955185

namespace A074306

/-- `A249693(A124356(n+1)/2)-2` -/
def P119274653817955185.Spec : Prop :=
  ∀ n, P119274653817955185.a n = A074306 n

end A074306

/-! ## A074306.P15100886632944058960

`A074308(A074305(n))`
-/

namespace A074306.P15100886632944058960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074308 (A074305 n).toNat

end

end A074306.P15100886632944058960

namespace A074306

/-- `A074308(A074305(n))` -/
def P15100886632944058960.Spec : Prop :=
  ∀ n, P15100886632944058960.a n = A074306 n

end A074306

/-! ## A074306.P3366843541556732206

`A064429(A006368(n))`
-/

namespace A074306.P3366843541556732206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A006368 n).toNat

end

end A074306.P3366843541556732206

namespace A074306

/-- `A064429(A006368(n))` -/
def P3366843541556732206.Spec : Prop :=
  ∀ n, P3366843541556732206.a n = A074306 n

end A074306

/-! ## A074306.P11013603383183114011

`A080782(A006368(n)+1)-1`
-/

namespace A074306.P11013603383183114011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A006368 n + 1).toNat - 1

end

end A074306.P11013603383183114011

namespace A074306

/-- `A080782(A006368(n)+1)-1` -/
def P11013603383183114011.Spec : Prop :=
  ∀ n, P11013603383183114011.a n = A074306 n

end A074306

/-! ## A074306.P18183516698645670985

`A249693(A047615(n+1)-n)-A249693(n)`
-/

namespace A074306.P18183516698645670985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 (A047615 (n + 1) - (n : ℤ)).toNat - A249693 n

end

end A074306.P18183516698645670985

namespace A074306

/-- `A249693(A047615(n+1)-n)-A249693(n)` -/
def P18183516698645670985.Spec : Prop :=
  ∀ n, P18183516698645670985.a n = A074306 n

end A074306

/-!
# A074307: Square of permutation in A074305.

The programs for A074307, the canonical program `A074307.P15096553677735678095` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074307 has offset 0).

The definition of A074307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074307.P15096553677735678095

`A074305(A074305(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074307

/-- `A074305(A074305(n))` -/
def P15096553677735678095.Spec : Prop :=
  ∀ n, P15096553677735678095.a n = A074307 n

theorem P15096553677735678095.correct : P15096553677735678095.Spec := by
  intro n
  simp only [A074307]

end A074307

/-!
# A074308: Inverse of permutation in A074307.

The programs for A074308, the canonical program `A074308.P12421467784667547018` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074308 has offset 0).

The definition of A074308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074308.P4888612892942772763

`A074306(floor(lcm(2, 3*n+1)/4)-(1-and(2, n+1))%(3^(n%2)))`
-/

namespace A074308.P4888612892942772763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋ - Int.tmod (1 - (Nat.land 2 (n + 1) : ℤ)) (3 ^ (n % 2) : ℤ)).toNat

end

end A074308.P4888612892942772763

namespace A074308

/-- `A074306(floor(lcm(2, 3*n+1)/4)-(1-and(2, n+1))%(3^(n%2)))` -/
def P4888612892942772763.Spec : Prop :=
  ∀ n, P4888612892942772763.a n = A074308 n

end A074308

/-! ## A074308.P12421467784667547018

`A074306(A074306(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074308

/-- `A074306(A074306(n))` -/
def P12421467784667547018.Spec : Prop :=
  ∀ n, P12421467784667547018.a n = A074308 n

theorem P12421467784667547018.correct : P12421467784667547018.Spec := by
  intro n
  simp only [A074308]

end A074308

/-!
# A074309: Sum of next n terms of the form i^i.

The programs for A074309, there is no canonical definition to state claims against.
-/

/-! ## A074309.P1926621426481776642

`A062970(2*(n+1))-A062970(n+1)`
-/

namespace A074309.P1926621426481776642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 (2 * (n + 1)) - A062970 (n + 1)

end

end A074309.P1926621426481776642

/-! ## A074309.P8380400635602282430

`A001923(2*n+2)-A001923(n+1)`
-/

namespace A074309.P8380400635602282430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 (2 * n + 2) - A001923 (n + 1)

end

end A074309.P8380400635602282430

/-!
# A074310: Digital sum of n = sum of palindromes from the smallest prime factor of n to the largest prime factor of n.

The programs for A074310, there is no canonical definition to state claims against.
-/

/-! ## A074310.P545201850769433149

`A032742((A048784(n)+1)*(n!+1))`
-/

namespace A074310.P545201850769433149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((A048784 n + 1) * (Nat.factorial n + 1 : ℤ)).toNat

end

end A074310.P545201850769433149

/-! ## A074310.P10182600354110695286

`A017666(A329667(n)+A006125(n))`
-/

namespace A074310.P10182600354110695286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A329667 n + A006125 n).toNat

end

end A074310.P10182600354110695286

/-!
# A074311: a(1) = 1; a(2) = 2; a(n) = smallest number greater than the previous term such that the average of three successive terms is a prime.

The programs for A074311, there is no canonical definition to state claims against.
-/

/-! ## A074311.P9424168889405026103

`eq[A162663(A105306(n+1)), A284259(n+1)]`
-/

namespace A074311.P9424168889405026103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A105306 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074311.P9424168889405026103

/-!
# A074312: Numbers k such that the product of the digits of k equals the number of divisors of k.

The programs for A074312, there is no canonical definition to state claims against.
-/

/-! ## A074312.P4200942687793505543

`∩[A066613(n+1), A214678(n+1)]`
-/

namespace A074312.P4200942687793505543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074312.P4200942687793505543

/-! ## A074312.P1076844086371209605

`∩[A052382(n+1), A066613(n+1)]`
-/

namespace A074312.P1076844086371209605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074312.P1076844086371209605

/-! ## A074312.P7432977982612090384

`record[A004719(A066613(n+1))]`
-/

namespace A074312.P7432977982612090384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A066613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074312.P7432977982612090384

/-! ## A074312.P15725717615472756151

`filter[A066613(n+1), A168046(#)]`
-/

namespace A074312.P15725717615472756151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A074312.P15725717615472756151

/-! ## A074312.P12102597640574656100

`eq[A032741(n)+1, A007954(n)]`
-/

namespace A074312.P12102597640574656100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074312.P12102597640574656100

/-!
# A074313: a(n) = the maximal length of a sequence of primes {s_1 = prime(n), s_2 = f(s1), s_3 = f(s_2), ....} formed by repeated application of f(m) = Floor(m/2) on prime(n).

The programs for A074313, the canonical program `A074313.P3730083430334687260` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074313 has offset 1).

The definition of A074313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074313.P3730083430334687260

`A292936(p?[xor(1, n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074313

/-- `A292936(p?[xor(1, n)])` -/
def P3730083430334687260.Spec : Prop :=
  ∀ n, P3730083430334687260.a n = A074313 (n + 1)

theorem P3730083430334687260.correct : P3730083430334687260.Spec := by
  intro n
  simp only [A074313, Nat.add_sub_cancel]

end A074313

/-! ## A074313.P4072783768052585060

`∏{p}[3*p?[round(8*n/7)], A292936(#)]`
-/

namespace A074313.P4072783768052585060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A292936 p

end

end A074313.P4072783768052585060

namespace A074313

/-- `∏{p}[3*p?[round(8*n/7)], A292936(#)]` -/
def P4072783768052585060.Spec : Prop :=
  ∀ n, P4072783768052585060.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P9540970274556608244

`A292936(Δ[A007504(n)])`
-/

namespace A074313.P9540970274556608244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (n + 1) - f1 n).toNat

end

end A074313.P9540970274556608244

namespace A074313

/-- `A292936(Δ[A007504(n)])` -/
def P9540970274556608244.Spec : Prop :=
  ∀ n, P9540970274556608244.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P14450990830119954188

`A292936(A000040(n+1))`
-/

namespace A074313.P14450990830119954188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A000040 (n + 1)).toNat

end

end A074313.P14450990830119954188

namespace A074313

/-- `A292936(A000040(n+1))` -/
def P14450990830119954188.Spec : Prop :=
  ∀ n, P14450990830119954188.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P2906573364013027926

`A292936(A008578(n+2))`
-/

namespace A074313.P2906573364013027926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A008578 (n + 2)).toNat

end

end A074313.P2906573364013027926

namespace A074313

/-- `A292936(A008578(n+2))` -/
def P2906573364013027926.Spec : Prop :=
  ∀ n, P2906573364013027926.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P11373166511248721607

`A292936(A182986(n+2))`
-/

namespace A074313.P11373166511248721607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A182986 (n + 2)).toNat

end

end A074313.P11373166511248721607

namespace A074313

/-- `A292936(A182986(n+2))` -/
def P11373166511248721607.Spec : Prop :=
  ∀ n, P11373166511248721607.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P932373272383623803

`A292936(record[A006530(n+2)])`
-/

namespace A074313.P932373272383623803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074313.P932373272383623803

namespace A074313

/-- `A292936(record[A006530(n+2)])` -/
def P932373272383623803.Spec : Prop :=
  ∀ n, P932373272383623803.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P5878388748655239376

`A292936(record[A020639(n+2)])`
-/

namespace A074313.P5878388748655239376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074313.P5878388748655239376

namespace A074313

/-- `A292936(record[A020639(n+2)])` -/
def P5878388748655239376.Spec : Prop :=
  ∀ n, P5878388748655239376.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P15583789934994703627

`A292936(A007504(n+1)-A007504(n))`
-/

namespace A074313.P15583789934994703627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A007504 (n + 1) - A007504 n).toNat

end

end A074313.P15583789934994703627

namespace A074313

/-- `A292936(A007504(n+1)-A007504(n))` -/
def P15583789934994703627.Spec : Prop :=
  ∀ n, P15583789934994703627.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P18050349343777534012

`A292936(record[p?[A007913(n+1)]])`
-/

namespace A074313.P18050349343777534012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074313.P18050349343777534012

namespace A074313

/-- `A292936(record[p?[A007913(n+1)]])` -/
def P18050349343777534012.Spec : Prop :=
  ∀ n, P18050349343777534012.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P12522735630844974262

`A292936(record[p?[A055231(n+1)]])`
-/

namespace A074313.P12522735630844974262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074313.P12522735630844974262

namespace A074313

/-- `A292936(record[p?[A055231(n+1)]])` -/
def P12522735630844974262.Spec : Prop :=
  ∀ n, P12522735630844974262.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P12481244676309053386

`A292936(record[A014963(n+2)])`
-/

namespace A074313.P12481244676309053386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074313.P12481244676309053386

namespace A074313

/-- `A292936(record[A014963(n+2)])` -/
def P12481244676309053386.Spec : Prop :=
  ∀ n, P12481244676309053386.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P11696144803794291547

`A292936(p?[record[A336965(n+1)]])`
-/

namespace A074313.P11696144803794291547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074313.P11696144803794291547

namespace A074313

/-- `A292936(p?[record[A336965(n+1)]])` -/
def P11696144803794291547.Spec : Prop :=
  ∀ n, P11696144803794291547.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P1357441914804828337

`A292936(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A074313.P1357441914804828337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A074313.P1357441914804828337

namespace A074313

/-- `A292936(∑{p}[p?[round(8*n/7)]², #])` -/
def P1357441914804828337.Spec : Prop :=
  ∀ n, P1357441914804828337.a n = A074313 (n + 1)

end A074313

/-! ## A074313.P14247270727937907314

`A292936(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A074313.P14247270727937907314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A074313.P14247270727937907314

namespace A074313

/-- `A292936(∏{p}[p?[round(8*n/7)]², #])` -/
def P14247270727937907314.Spec : Prop :=
  ∀ n, P14247270727937907314.a n = A074313 (n + 1)

end A074313

/-!
# A074314: Deficient triangular numbers.

The programs for A074314, the canonical program `A074314.P16594839120600450012` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074314 has offset 1).

The definition of A074314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074314.P10391448759358919126

`record[A125746(∑[n+1])]`
-/

namespace A074314.P10391448759358919126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074314.P10391448759358919126

namespace A074314

/-- `record[A125746(∑[n+1])]` -/
def P10391448759358919126.Spec : Prop :=
  ∀ n, P10391448759358919126.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P16594839120600450012

`filter[A000217(n+1), A294934(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074314

/-- `filter[A000217(n+1), A294934(#)]` -/
def P16594839120600450012.Spec : Prop :=
  ∀ n, P16594839120600450012.a n = A074314 (n + 1)

theorem P16594839120600450012.correct : P16594839120600450012.Spec := by
  intro n
  simp only [A074314, Nat.add_sub_cancel]

end A074314

/-! ## A074314.P17893660284319474642

`filter[A161680(n+2), A294934(#)]`
-/

namespace A074314.P17893660284319474642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P17893660284319474642

namespace A074314

/-- `filter[A161680(n+2), A294934(#)]` -/
def P17893660284319474642.Spec : Prop :=
  ∀ n, P17893660284319474642.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P8023544704464168234

`filter[A179865(n+2), A294934(#)]`
-/

namespace A074314.P8023544704464168234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P8023544704464168234

namespace A074314

/-- `filter[A179865(n+2), A294934(#)]` -/
def P8023544704464168234.Spec : Prop :=
  ∀ n, P8023544704464168234.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P12348819389701725338

`filter[A001972(2*n), A294934(#)]`
-/

namespace A074314.P12348819389701725338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P12348819389701725338

namespace A074314

/-- `filter[A001972(2*n), A294934(#)]` -/
def P12348819389701725338.Spec : Prop :=
  ∀ n, P12348819389701725338.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P3095045601738134198

`filter[A008795(2*n), A294934(#)]`
-/

namespace A074314.P3095045601738134198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P3095045601738134198

namespace A074314

/-- `filter[A008795(2*n), A294934(#)]` -/
def P3095045601738134198.Spec : Prop :=
  ∀ n, P3095045601738134198.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P5624973254356593403

`filter[A008805(2*n), A294934(#)]`
-/

namespace A074314.P5624973254356593403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P5624973254356593403

namespace A074314

/-- `filter[A008805(2*n), A294934(#)]` -/
def P5624973254356593403.Spec : Prop :=
  ∀ n, P5624973254356593403.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P8349257565997511057

`filter[A260220(2*n), A294934(#)]`
-/

namespace A074314.P8349257565997511057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P8349257565997511057

namespace A074314

/-- `filter[A260220(2*n), A294934(#)]` -/
def P8349257565997511057.Spec : Prop :=
  ∀ n, P8349257565997511057.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P8256426465749844456

`filter[A267322(3*n), A294934(#)]`
-/

namespace A074314.P8256426465749844456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267322 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P8256426465749844456

namespace A074314

/-- `filter[A267322(3*n), A294934(#)]` -/
def P8256426465749844456.Spec : Prop :=
  ∀ n, P8256426465749844456.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P3678988423798109957

`filter[A061727(2*n+1), A294934(#)]`
-/

namespace A074314.P3678988423798109957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061727 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P3678988423798109957

namespace A074314

/-- `filter[A061727(2*n+1), A294934(#)]` -/
def P3678988423798109957.Spec : Prop :=
  ∀ n, P3678988423798109957.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P12441887145895115653

`filter[A117142(2*n+1), A294934(#)]`
-/

namespace A074314.P12441887145895115653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P12441887145895115653

namespace A074314

/-- `filter[A117142(2*n+1), A294934(#)]` -/
def P12441887145895115653.Spec : Prop :=
  ∀ n, P12441887145895115653.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P10099210028107951201

`filter[A134519(2*n+1), A294934(#)]`
-/

namespace A074314.P10099210028107951201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P10099210028107951201

namespace A074314

/-- `filter[A134519(2*n+1), A294934(#)]` -/
def P10099210028107951201.Spec : Prop :=
  ∀ n, P10099210028107951201.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P6346134695338627582

`filter[A209268(2*n+1), A294934(#)]`
-/

namespace A074314.P6346134695338627582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P6346134695338627582

namespace A074314

/-- `filter[A209268(2*n+1), A294934(#)]` -/
def P6346134695338627582.Spec : Prop :=
  ∀ n, P6346134695338627582.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P13239652183478239282

`filter[A246274(2*n+1), A294934(#)]`
-/

namespace A074314.P13239652183478239282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P13239652183478239282

namespace A074314

/-- `filter[A246274(2*n+1), A294934(#)]` -/
def P13239652183478239282.Spec : Prop :=
  ∀ n, P13239652183478239282.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P9314794160259494391

`filter[A250252(2*n+1), A294934(#)]`
-/

namespace A074314.P9314794160259494391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P9314794160259494391

namespace A074314

/-- `filter[A250252(2*n+1), A294934(#)]` -/
def P9314794160259494391.Spec : Prop :=
  ∀ n, P9314794160259494391.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P15750925637056116151

`filter[A286388(2*(n+1)), A294934(#)]`
-/

namespace A074314.P15750925637056116151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286388 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P15750925637056116151

namespace A074314

/-- `filter[A286388(2*(n+1)), A294934(#)]` -/
def P15750925637056116151.Spec : Prop :=
  ∀ n, P15750925637056116151.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P15815781656928823964

`record[A179865(n+1)*A294934(A179865(n+1))]`
-/

namespace A074314.P15815781656928823964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) * A294934 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074314.P15815781656928823964

namespace A074314

/-- `record[A179865(n+1)*A294934(A179865(n+1))]` -/
def P15815781656928823964.Spec : Prop :=
  ∀ n, P15815781656928823964.a n = A074314 (n + 1)

end A074314

/-! ## A074314.P18285649508381811146

`record[A125746(A000217(n)+n+1)]%A285017(n+1)`
-/

namespace A074314.P18285649508381811146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A000217 n + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A285017 (n + 1))

end

end A074314.P18285649508381811146

namespace A074314

/-- `record[A125746(A000217(n)+n+1)]%A285017(n+1)` -/
def P18285649508381811146.Spec : Prop :=
  ∀ n, P18285649508381811146.a n = A074314 (n + 1)

end A074314

/-!
# A074315: Abundant triangular numbers.

The programs for A074315, the canonical program `A074315.P17848923822781647351` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074315 has offset 1).

The definition of A074315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074315.P17848923822781647351

`record[A000217(n+8)%A152989(n+8)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A074315

/-- `record[A000217(n+8)%A152989(n+8)]` -/
def P17848923822781647351.Spec : Prop :=
  ∀ n, P17848923822781647351.a n = A074315 (n + 1)

theorem P17848923822781647351.correct : P17848923822781647351.Spec := by
  intro n
  simp only [A074315, Nat.add_sub_cancel]

end A074315

/-! ## A074315.P4356112671235489187

`A253145(lt[A253145(n), A152989(n+1)])`
-/

namespace A074315.P4356112671235489187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074315.P4356112671235489187

namespace A074315

/-- `A253145(lt[A253145(n), A152989(n+1)])` -/
def P4356112671235489187.Spec : Prop :=
  ∀ n, P4356112671235489187.a n = A074315 (n + 1)

end A074315

/-! ## A074315.P7241449554204224264

`∩[A005101(n+1), A000217(n)]`
-/

namespace A074315.P7241449554204224264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074315.P7241449554204224264

namespace A074315

/-- `∩[A005101(n+1), A000217(n)]` -/
def P7241449554204224264.Spec : Prop :=
  ∀ n, (P7241449554204224264.a n : ℤ) = A074315 (n + 1)

end A074315

/-! ## A074315.P6846975709927141176

`∩[A005101(n+1), A253145(n)]`
-/

namespace A074315.P6846975709927141176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074315.P6846975709927141176

namespace A074315

/-- `∩[A005101(n+1), A253145(n)]` -/
def P6846975709927141176.Spec : Prop :=
  ∀ n, (P6846975709927141176.a n : ℤ) = A074315 (n + 1)

end A074315

/-! ## A074315.P11914365493551778411

`∩[A005101(n+1), A186783(n+1)]`
-/

namespace A074315.P11914365493551778411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074315.P11914365493551778411

namespace A074315

/-- `∩[A005101(n+1), A186783(n+1)]` -/
def P11914365493551778411.Spec : Prop :=
  ∀ n, (P11914365493551778411.a n : ℤ) = A074315 (n + 1)

end A074315

/-! ## A074315.P6263457897978144693

`∩[A005101(n+1), A350295(n+3)]`
-/

namespace A074315.P6263457897978144693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074315.P6263457897978144693

namespace A074315

/-- `∩[A005101(n+1), A350295(n+3)]` -/
def P6263457897978144693.Spec : Prop :=
  ∀ n, (P6263457897978144693.a n : ℤ) = A074315 (n + 1)

end A074315

/-! ## A074315.P9823590988465200961

`∩[A376834(n+1), A376997(n+1)]`
-/

namespace A074315.P9823590988465200961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074315.P9823590988465200961

namespace A074315

/-- `∩[A376834(n+1), A376997(n+1)]` -/
def P9823590988465200961.Spec : Prop :=
  ∀ n, (P9823590988465200961.a n : ℤ) = A074315 (n + 1)

end A074315

/-!
# A074316: Abundant Fibonacci numbers.

The programs for A074316, there is no canonical definition to state claims against.
-/

/-! ## A074316.P15762654608135234107

`A000045(A074726(n+1))`
-/

namespace A074316.P15762654608135234107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A074726 (n + 1)).toNat

end

end A074316.P15762654608135234107

/-! ## A074316.P8908644751692204973

`A212804(A074726(n+1)+1)`
-/

namespace A074316.P8908644751692204973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A074726 (n + 1) + 1).toNat

end

end A074316.P8908644751692204973

/-! ## A074316.P12748869577062678239

`A103609(2*A074726(n+1))`
-/

namespace A074316.P12748869577062678239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A074726 (n + 1)).toNat

end

end A074316.P12748869577062678239

/-! ## A074316.P18065077581660134764

`∑{d}[A074726(n+1), A007436(#)]`
-/

namespace A074316.P18065077581660134764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A074316.P18065077581660134764

/-! ## A074316.P13338622143034275693

`A103609(A074726(n+1)+A074726(n+1)+1)`
-/

namespace A074316.P13338622143034275693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A074726 (n + 1) + (A074726 (n + 1) + 1)).toNat

end

end A074316.P13338622143034275693

/-! ## A074316.P11561574505018561366

`A053602(2*A074726(n+1))`
-/

namespace A074316.P11561574505018561366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A074726 (n + 1)).toNat

end

end A074316.P11561574505018561366

/-! ## A074316.P8733920007951126519

`A053602(A074726(n+1)+A074726(n+1))`
-/

namespace A074316.P8733920007951126519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A074726 (n + 1) + A074726 (n + 1)).toNat

end

end A074316.P8733920007951126519

/-!
# A074317: Deficient Fibonacci numbers.

The programs for A074317, there is no canonical definition to state claims against.
-/

/-! ## A074317.P2766143377788193154

`A000045(lt[A331980(n), A332002(n)])`
-/

namespace A074317.P2766143377788193154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074317.P2766143377788193154

/-! ## A074317.P17905750069941258506

`A000045(lt[A341270(n), A341270(n+1)]+1)`
-/

namespace A074317.P17905750069941258506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A074317.P17905750069941258506

/-! ## A074317.P9197566782919459923

`A000045(lt[A074811(n+1), A074786(n+1)]+1)`
-/

namespace A074317.P9197566782919459923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A074317.P9197566782919459923

/-! ## A074317.P585625121214889956

`A000045(lt[A351977(2*n+1), A348950(n)])`
-/

namespace A074317.P585625121214889956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351977 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074317.P585625121214889956

/-! ## A074317.P17014997423518159062

`filter[A000045(n+2), A294934(#)]`
-/

namespace A074317.P17014997423518159062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074317.P17014997423518159062

/-!
# A074319: 

The programs for A074319, there is no canonical definition to state claims against.
-/

/-! ## A074319.P9934567435602509006

`∏[(2*n+1)!*∏[2*(2*n+1)]]`
-/

namespace A074319.P9934567435602509006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074319.P9934567435602509006

/-! ## A074319.P5255865567626426863

`A093883(n+1)*A098694(n+1)`
-/

namespace A074319.P5255865567626426863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093883 (n + 1) * A098694 (n + 1)

end

end A074319.P5255865567626426863

/-!
# A074320: a(n) = sum of smallest and largest prime factors of n, for n>1; a(1)=2.

The programs for A074320, there is no canonical definition to state claims against.
-/

/-! ## A074320.P9286289642036818430

`A020639(n+1)+A006530(n+1)`
-/

namespace A074320.P9286289642036818430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A006530 (n + 1)

end

end A074320.P9286289642036818430

/-! ## A074320.P17015624390078623170

`A006530(n+1)+sqrt(A088377(n+1))`
-/

namespace A074320.P17015624390078623170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℝ) + Real.sqrt (A088377 (n + 1) : ℝ)

end

end A074320.P17015624390078623170

/-! ## A074320.P18140995354292199897

`A046665(n+1)+2*A020639(n+1)`
-/

namespace A074320.P18140995354292199897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + 2 * A020639 (n + 1)

end

end A074320.P18140995354292199897

/-! ## A074320.P1315974400772659480

`2*A006530(n+1)-A046665(n+1)`
-/

namespace A074320.P1315974400772659480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1) - A046665 (n + 1)

end

end A074320.P1315974400772659480

/-! ## A074320.P8287226562600129581

`A020639(n+1)+A053585(∏{p}[n+1, #])`
-/

namespace A074320.P8287226562600129581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A074320.P8287226562600129581

/-! ## A074320.P2829483448026293919

`A006530(n+1)+∏{p}[A068794(n+1), #]`
-/

namespace A074320.P2829483448026293919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A074320.P2829483448026293919

/-! ## A074320.P8141975700074050442

`A006530(n+1)+(n+1)/A032742(n+1)`
-/

namespace A074320.P8141975700074050442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) + (n + 1 : ℚ) / (A032742 (n + 1) : ℚ)

end

end A074320.P8141975700074050442

/-! ## A074320.P11436705645156210682

`A020639(n+1)+(n+1)/A052126(n+1)`
-/

namespace A074320.P11436705645156210682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) + (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A074320.P11436705645156210682

/-! ## A074320.P17285478726852273559

`A006530(n+1)+(n+1)/gcd(n+1, A060681(n+1))`
-/

namespace A074320.P17285478726852273559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) + (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ)

end

end A074320.P17285478726852273559

/-! ## A074320.P8868575414985965560

`A006530(n+1)+A006530(A028233(n+1))`
-/

namespace A074320.P8868575414985965560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A006530 (A028233 (n + 1)).toNat

end

end A074320.P8868575414985965560

/-! ## A074320.P16521185897512966543

`A006530(n+1)+A006530(A068794(n+1))`
-/

namespace A074320.P16521185897512966543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A006530 (A068794 (n + 1)).toNat

end

end A074320.P16521185897512966543

/-! ## A074320.P3220092084164764363

`A006530(n+1)+A006530(A074828(n+1))`
-/

namespace A074320.P3220092084164764363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A006530 (A074828 (n + 1)).toNat

end

end A074320.P3220092084164764363

/-! ## A074320.P6804154841313655555

`A020639(n+1)+A020639(A053585(n+1))`
-/

namespace A074320.P6804154841313655555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A020639 (A053585 (n + 1)).toNat

end

end A074320.P6804154841313655555

/-! ## A074320.P5167923993176494278

`A020639(n+1)+A008578(A159081(n+1))`
-/

namespace A074320.P5167923993176494278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A008578 (A159081 (n + 1)).toNat

end

end A074320.P5167923993176494278

/-! ## A074320.P11418920805298737645

`A079068(A117367(n+1))+A006530(n+1)`
-/

namespace A074320.P11418920805298737645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A117367 (n + 1)).toNat + A006530 (n + 1)

end

end A074320.P11418920805298737645

/-! ## A074320.P1359239811276594696

`A006530(n+1)+A006530(A304181(n+1))`
-/

namespace A074320.P1359239811276594696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A006530 (A304181 (n + 1)).toNat

end

end A074320.P1359239811276594696

/-! ## A074320.P5018854420922458537

`A006530(n+1)+A006530(A323130(n+1))`
-/

namespace A074320.P5018854420922458537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A006530 (A323130 (n + 1)).toNat

end

end A074320.P5018854420922458537

/-! ## A074320.P4129355261624447533

`A020639(n+1)+A020639(A323129(n+1))`
-/

namespace A074320.P4129355261624447533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A020639 (A323129 (n + 1)).toNat

end

end A074320.P4129355261624447533

/-! ## A074320.P17500753845204928787

`A020639(n+1)+A020639(A345941(n+1))`
-/

namespace A074320.P17500753845204928787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A020639 (A345941 (n + 1)).toNat

end

end A074320.P17500753845204928787

/-! ## A074320.P16999887279156087451

`A005843(A006530(n+1))-A046665(n+1)`
-/

namespace A074320.P16999887279156087451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A006530 (n + 1)).toNat - A046665 (n + 1)

end

end A074320.P16999887279156087451

/-!
# A074321: Numbers n such that n-th perfect power + n is prime: n + A001597(n) is prime.

The programs for A074321, there is no canonical definition to state claims against.
-/

/-! ## A074321.P13804859595609018080

`eq[2, A000005(A001597(n+1)+1+n)]+1`
-/

namespace A074321.P13804859595609018080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001597 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074321.P13804859595609018080

/-! ## A074321.P17605068890414096182

`record[(n+1)*A069513(A001597(n+1)+n+1)]`
-/

namespace A074321.P17605068890414096182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069513 (A001597 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074321.P17605068890414096182

/-! ## A074321.P5065414627138358190

`record[(n+1)/A001221(A001597(n+1)+n+1)]`
-/

namespace A074321.P5065414627138358190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001221 (A001597 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074321.P5065414627138358190

/-! ## A074321.P17329078974679033366

`record[(n+1)/A001222(A001597(n+1)+n+1)]`
-/

namespace A074321.P17329078974679033366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A001597 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074321.P17329078974679033366

/-! ## A074321.P15751280206636442176

`record[(n+1)/A318827(A001597(n+1)+n+1)]`
-/

namespace A074321.P15751280206636442176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A318827 (A001597 (n + 1) + (n : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074321.P15751280206636442176

/-!
# A074323: Coefficient of the highest power of q in the expansion of nu(0)=1, nu(1)=b and for n>=2, nu(n)=b*nu(n-1)+lambda*(n-1)_q*nu(n-2) with (b,lambda)=(1,2), where (n)_q=(1+q+...+q^(n-1)) and q is a root of unity.

The programs for A074323, the canonical program `A074323.P13769595008896007528` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074323 has offset 0).

The definition of A074323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074323.P13769595008896007528

`2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074323

/-- `2*a(n-2)` -/
def P13769595008896007528.Spec : Prop :=
  ∀ n, (P13769595008896007528.a n : ℤ) = A074323 n

theorem P13769595008896007528.correct : P13769595008896007528.Spec := by
  intro n
  simp only [A074323]

end A074323

/-! ## A074323.P6638590417783275661

`∏[2/a(n-1)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A074323.P6638590417783275661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074323.P6638590417783275661

namespace A074323

/-- `∏[2/a(n-1)]` -/
def P6638590417783275661.Spec : Prop :=
  ∀ n, P6638590417783275661.a n = (A074323 n : ℚ)

end A074323

/-! ## A074323.P9461808618511921518

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A074323.P9461808618511921518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) + a (n - 2)

end

end A074323.P9461808618511921518

namespace A074323

/-- `a(n-2)+a(n-2)` -/
def P9461808618511921518.Spec : Prop :=
  ∀ n, (P9461808618511921518.a n : ℤ) = A074323 n

theorem P9461808618511921518.correct : P9461808618511921518.Spec := by
  intro n
  simp only [A074323, Nat.add_sub_cancel, A074323.P9461808618511921518.a, A074323.P13769595008896007528.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074323

/-! ## A074323.P9940319075054253762

`a(n-2)/(1-1/2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A074323.P9940319075054253762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A074323.P9940319075054253762

namespace A074323

/-- `a(n-2)/(1-1/2)` -/
def P9940319075054253762.Spec : Prop :=
  ∀ n, P9940319075054253762.a n = (A074323 n : ℚ)

end A074323

/-! ## A074323.P15443498261927485047

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A074323.P15443498261927485047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A074323.P15443498261927485047

namespace A074323

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P15443498261927485047.Spec : Prop :=
  ∀ n, P15443498261927485047.a n = A074323 n

end A074323

/-! ## A074323.P11543029829223369277

`abs(Δ[A076736(n+3)])`
-/

namespace A074323.P11543029829223369277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A074323.P11543029829223369277

namespace A074323

/-- `abs(Δ[A076736(n+3)])` -/
def P11543029829223369277.Spec : Prop :=
  ∀ n, P11543029829223369277.a n = A074323 n

end A074323

/-! ## A074323.P326492857716842352

`A137206(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A074323.P326492857716842352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137206 (n - 1) + a (n - 1)

end

end A074323.P326492857716842352

namespace A074323

/-- `A137206(n-1)+a(n-1)` -/
def P326492857716842352.Spec : Prop :=
  ∀ n, P326492857716842352.a n = A074323 n

end A074323

/-! ## A074323.P18036977945124667475

`A164073(A028310(n))`
-/

namespace A074323.P18036977945124667475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A028310 n).toNat

end

end A074323.P18036977945124667475

namespace A074323

/-- `A164073(A028310(n))` -/
def P18036977945124667475.Spec : Prop :=
  ∀ n, P18036977945124667475.a n = A074323 n

end A074323

/-! ## A074323.P8591357039479003863

`A164073(A004277(n)-n)`
-/

namespace A074323.P8591357039479003863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A004277 n - (n : ℤ)).toNat

end

end A074323.P8591357039479003863

namespace A074323

/-- `A164073(A004277(n)-n)` -/
def P8591357039479003863.Spec : Prop :=
  ∀ n, P8591357039479003863.a n = A074323 n

end A074323

/-! ## A074323.P15436106922241918543

`A164073(gcd(n, A004277(n)))`
-/

namespace A074323.P15436106922241918543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (Int.gcd (n : ℤ) (A004277 n))

end

end A074323.P15436106922241918543

namespace A074323

/-- `A164073(gcd(n, A004277(n)))` -/
def P15436106922241918543.Spec : Prop :=
  ∀ n, P15436106922241918543.a n = A074323 n

end A074323

/-! ## A074323.P9210915978107704238

`A164073(A063524(n+1)+n)`
-/

namespace A074323.P9210915978107704238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A063524 (n + 1) + (n : ℤ)).toNat

end

end A074323.P9210915978107704238

namespace A074323

/-- `A164073(A063524(n+1)+n)` -/
def P9210915978107704238.Spec : Prop :=
  ∀ n, P9210915978107704238.a n = A074323 n

end A074323

/-! ## A074323.P14904284886208649712

`A029744(n+1)/A000034(n)`
-/

namespace A074323.P14904284886208649712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A074323.P14904284886208649712

namespace A074323

/-- `A029744(n+1)/A000034(n)` -/
def P14904284886208649712.Spec : Prop :=
  ∀ n, P14904284886208649712.a n = (A074323 n : ℚ)

end A074323

/-! ## A074323.P16601435208613137279

`A164073(A204689(2*n)+n)`
-/

namespace A074323.P16601435208613137279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A204689 (2 * n) + (n : ℤ)).toNat

end

end A074323.P16601435208613137279

namespace A074323

/-- `A164073(A204689(2*n)+n)` -/
def P16601435208613137279.Spec : Prop :=
  ∀ n, P16601435208613137279.a n = A074323 n

end A074323

/-! ## A074323.P15899381955795399932

`gcd(A029744(n+1), A131575(n))`
-/

namespace A074323.P15899381955795399932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029744 (n + 1)) (A131575 n)

end

end A074323.P15899381955795399932

namespace A074323

/-- `gcd(A029744(n+1), A131575(n))` -/
def P15899381955795399932.Spec : Prop :=
  ∀ n, (P15899381955795399932.a n : ℤ) = A074323 n

end A074323

/-! ## A074323.P4023160421380381176

`lcm(A117575(n), A153284(n+1))`
-/

namespace A074323.P4023160421380381176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117575 n) (A153284 (n + 1))

end

end A074323.P4023160421380381176

namespace A074323

/-- `lcm(A117575(n), A153284(n+1))` -/
def P4023160421380381176.Spec : Prop :=
  ∀ n, (P4023160421380381176.a n : ℤ) = A074323 n

end A074323

/-! ## A074323.P17573938344890702303

`A164073(and(1, A028599(n))+n)`
-/

namespace A074323.P17573938344890702303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (Int.land 1 (A028599 n) + (n : ℤ)).toNat

end

end A074323.P17573938344890702303

namespace A074323

/-- `A164073(and(1, A028599(n))+n)` -/
def P17573938344890702303.Spec : Prop :=
  ∀ n, P17573938344890702303.a n = A074323 n

end A074323

/-! ## A074323.P532743158075072108

`A060546(n+1)-A158780(n+1)`
-/

namespace A074323.P532743158075072108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A158780 (n + 1)

end

end A074323.P532743158075072108

namespace A074323

/-- `A060546(n+1)-A158780(n+1)` -/
def P532743158075072108.Spec : Prop :=
  ∀ n, P532743158075072108.a n = A074323 n

end A074323

/-! ## A074323.P14487028034054136097

`A016116(n+2)-A158780(n+1)`
-/

namespace A074323.P14487028034054136097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 2) - A158780 (n + 1)

end

end A074323.P14487028034054136097

namespace A074323

/-- `A016116(n+2)-A158780(n+1)` -/
def P14487028034054136097.Spec : Prop :=
  ∀ n, P14487028034054136097.a n = A074323 n

end A074323

/-! ## A074323.P13409569214915072764

`A131572(n+2)-A158780(n+1)`
-/

namespace A074323.P13409569214915072764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 2) - A158780 (n + 1)

end

end A074323.P13409569214915072764

namespace A074323

/-- `A131572(n+2)-A158780(n+1)` -/
def P13409569214915072764.Spec : Prop :=
  ∀ n, P13409569214915072764.a n = A074323 n

end A074323

/-!
# A074324: a(2n+1) = 3^n, a(2n) = 4*3^(n-1) except for a(0) = 1.

The programs for A074324, the canonical program `A074324.P13461627503322986304` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074324 has offset 0).

The definition of A074324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074324.P13461627503322986304

`3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074324

/-- `3*a(n-2)` -/
def P13461627503322986304.Spec : Prop :=
  ∀ n, (P13461627503322986304.a n : ℤ) = A074324 n

theorem P13461627503322986304.correct : P13461627503322986304.Spec := by
  intro n
  simp only [A074324]

end A074324

/-! ## A074324.P18393787266794475311

`∏[3/a(n-1)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A074324.P18393787266794475311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074324.P18393787266794475311

namespace A074324

/-- `∏[3/a(n-1)]` -/
def P18393787266794475311.Spec : Prop :=
  ∀ n, P18393787266794475311.a n = (A074324 n : ℚ)

end A074324

/-! ## A074324.P7729445796265112369

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A074324.P7729445796265112369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A074324.P7729445796265112369

namespace A074324

/-- `a(n-2)/(1-2/3)` -/
def P7729445796265112369.Spec : Prop :=
  ∀ n, P7729445796265112369.a n = (A074324 n : ℚ)

end A074324

/-! ## A074324.P12992167934373363485

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A074324.P12992167934373363485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A074324.P12992167934373363485

namespace A074324

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P12992167934373363485.Spec : Prop :=
  ∀ n, (P12992167934373363485.a n : ℤ) = A074324 n

theorem P12992167934373363485.correct : P12992167934373363485.Spec := by
  intro n
  simp only [A074324, Nat.add_sub_cancel, A074324.P12992167934373363485.a, A074324.P13461627503322986304.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074324

/-! ## A074324.P7225089351830725724

`A166552((2*n)%(n+1)+1)`
-/

namespace A074324.P7225089351830725724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (2 * n % (n + 1) + 1)

end

end A074324.P7225089351830725724

namespace A074324

/-- `A166552((2*n)%(n+1)+1)` -/
def P7225089351830725724.Spec : Prop :=
  ∀ n, P7225089351830725724.a n = A074324 n

end A074324

/-! ## A074324.P5569973541371552511

`A162852(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A074324.P5569973541371552511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A162852 (n - 1) + a (n - 1)

end

end A074324.P5569973541371552511

namespace A074324

/-- `A162852(n-1)+a(n-1)` -/
def P5569973541371552511.Spec : Prop :=
  ∀ n, P5569973541371552511.a n = A074324 n

end A074324

/-! ## A074324.P4181391004653098423

`A166552(A028310(n))`
-/

namespace A074324.P4181391004653098423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (A028310 n).toNat

end

end A074324.P4181391004653098423

namespace A074324

/-- `A166552(A028310(n))` -/
def P4181391004653098423.Spec : Prop :=
  ∀ n, P4181391004653098423.a n = A074324 n

end A074324

/-! ## A074324.P5352935548751753439

`A040001(n)*A182522(n)`
-/

namespace A074324.P5352935548751753439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A182522 n

end

end A074324.P5352935548751753439

namespace A074324

/-- `A040001(n)*A182522(n)` -/
def P5352935548751753439.Spec : Prop :=
  ∀ n, P5352935548751753439.a n = A074324 n

end A074324

/-! ## A074324.P4056069783118252223

`A000792(3*n+4-A168200(n+2))`
-/

namespace A074324.P4056069783118252223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 ((3 * n + 4 : ℤ) - A168200 (n + 2)).toNat

end

end A074324.P4056069783118252223

namespace A074324

/-- `A000792(3*n+4-A168200(n+2))` -/
def P4056069783118252223.Spec : Prop :=
  ∀ n, P4056069783118252223.a n = A074324 n

end A074324

/-! ## A074324.P18428949163419657094

`A182522(n)*A238377(val(A182522(n), 2))`
-/

namespace A074324.P18428949163419657094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n * A238377 (SequenceMachineLib.valuation (A182522 n).toNat 2)

end

end A074324.P18428949163419657094

namespace A074324

/-- `A182522(n)*A238377(val(A182522(n), 2))` -/
def P18428949163419657094.Spec : Prop :=
  ∀ n, P18428949163419657094.a n = A074324 n

end A074324

/-! ## A074324.P9863456061633413102

`A108411(n)+A108411(n)-A182522(n)`
-/

namespace A074324.P9863456061633413102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n + (A108411 n - A182522 n)

end

end A074324.P9863456061633413102

namespace A074324

/-- `A108411(n)+A108411(n)-A182522(n)` -/
def P9863456061633413102.Spec : Prop :=
  ∀ n, P9863456061633413102.a n = A074324 n

end A074324

/-! ## A074324.P2158802432431281937

`A068911(n)/gcd(2, n+1)`
-/

namespace A074324.P2158802432431281937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A074324.P2158802432431281937

namespace A074324

/-- `A068911(n)/gcd(2, n+1)` -/
def P2158802432431281937.Spec : Prop :=
  ∀ n, P2158802432431281937.a n = (A074324 n : ℚ)

end A074324

/-! ## A074324.P11618418607782477372

`A122164(A047209(n+1))`
-/

namespace A074324.P11618418607782477372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A047209 (n + 1)).toNat

end

end A074324.P11618418607782477372

namespace A074324

/-- `A122164(A047209(n+1))` -/
def P11618418607782477372.Spec : Prop :=
  ∀ n, P11618418607782477372.a n = A074324 n

end A074324

/-! ## A074324.P3277562797324228610

`A068911(n)/A000034(n)`
-/

namespace A074324.P3277562797324228610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 n : ℚ) / (A000034 n : ℚ)

end

end A074324.P3277562797324228610

namespace A074324

/-- `A068911(n)/A000034(n)` -/
def P3277562797324228610.Spec : Prop :=
  ∀ n, P3277562797324228610.a n = (A074324 n : ℚ)

end A074324

/-! ## A074324.P7978601478717151993

`A122164(A047219(n+2)-2)`
-/

namespace A074324.P7978601478717151993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A047219 (n + 2) - 2).toNat

end

end A074324.P7978601478717151993

namespace A074324

/-- `A122164(A047219(n+2)-2)` -/
def P7978601478717151993.Spec : Prop :=
  ∀ n, P7978601478717151993.a n = A074324 n

end A074324

/-! ## A074324.P17597462890801303528

`A211221(n+1)/A010684(n)`
-/

namespace A074324.P17597462890801303528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211221 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A074324.P17597462890801303528

namespace A074324

/-- `A211221(n+1)/A010684(n)` -/
def P17597462890801303528.Spec : Prop :=
  ∀ n, P17597462890801303528.a n = (A074324 n : ℚ)

end A074324

/-! ## A074324.P9757360079030979263

`A016116(n)/A016116(n+1)*A068911(n)`
-/

namespace A074324.P9757360079030979263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A016116 (n + 1) : ℚ) * (A068911 n : ℚ)

end

end A074324.P9757360079030979263

namespace A074324

/-- `A016116(n)/A016116(n+1)*A068911(n)` -/
def P9757360079030979263.Spec : Prop :=
  ∀ n, P9757360079030979263.a n = (A074324 n : ℚ)

end A074324

/-! ## A074324.P12555663528772647167

`A117855(n+1)-A182522(n)`
-/

namespace A074324.P12555663528772647167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 1) - A182522 n

end

end A074324.P12555663528772647167

namespace A074324

/-- `A117855(n+1)-A182522(n)` -/
def P12555663528772647167.Spec : Prop :=
  ∀ n, P12555663528772647167.a n = A074324 n

end A074324

/-!
# A074325: Difference between (1+2^n)-th and (2^n)-th primes. Also number of terms in blocks of A073798.

The programs for A074325, the canonical program `A074325.P346685710110645117` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074325 has offset 0).

The definition of A074325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074325.P2767625988003108923

`A051439(n)-A033844(n)`
-/

namespace A074325.P2767625988003108923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051439 n - A033844 n

end

end A074325.P2767625988003108923

namespace A074325

/-- `A051439(n)-A033844(n)` -/
def P2767625988003108923.Spec : Prop :=
  ∀ n, P2767625988003108923.a n = A074325 n

end A074325

/-! ## A074325.P346685710110645117

`A001223(A000079(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074325

/-- `A001223(A000079(n))` -/
def P346685710110645117.Spec : Prop :=
  ∀ n, P346685710110645117.a n = A074325 n

theorem P346685710110645117.correct : P346685710110645117.Spec := by
  intro n
  simp only [A074325]

end A074325

/-! ## A074325.P12352054275964575707

`A000027(A051439(n)%A033844(n))`
-/

namespace A074325.P12352054275964575707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A051439 n) (A033844 n)).toNat

end

end A074325.P12352054275964575707

namespace A074325

/-- `A000027(A051439(n)%A033844(n))` -/
def P12352054275964575707.Spec : Prop :=
  ∀ n, P12352054275964575707.a n = A074325 n

end A074325

/-! ## A074325.P9287770313893334940

`A051439(A028310(n))%A033844(n)`
-/

namespace A074325.P9287770313893334940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051439 (A028310 n).toNat) (A033844 n)

end

end A074325.P9287770313893334940

namespace A074325

/-- `A051439(A028310(n))%A033844(n)` -/
def P9287770313893334940.Spec : Prop :=
  ∀ n, P9287770313893334940.a n = A074325 n

end A074325

/-! ## A074325.P18243778573057821605

`A051439(log2(A000079(n)))%A033844(n)`
-/

namespace A074325.P18243778573057821605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051439 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat) (A033844 n)

end

end A074325.P18243778573057821605

namespace A074325

/-- `A051439(log2(A000079(n)))%A033844(n)` -/
def P18243778573057821605.Spec : Prop :=
  ∀ n, P18243778573057821605.a n = A074325 n

end A074325

/-! ## A074325.P9391773943698905067

`A051439(val(A000079(n), 2))%A033844(n)`
-/

namespace A074325.P9391773943698905067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051439 (SequenceMachineLib.valuation (A000079 n).toNat 2)) (A033844 n)

end

end A074325.P9391773943698905067

namespace A074325

/-- `A051439(val(A000079(n), 2))%A033844(n)` -/
def P9391773943698905067.Spec : Prop :=
  ∀ n, P9391773943698905067.a n = A074325 n

end A074325

/-! ## A074325.P16109825543205463930

`or(A000007(n), A051439(n))%A033844(n)`
-/

namespace A074325.P16109825543205463930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A000007 n) (A051439 n)) (A033844 n)

end

end A074325.P16109825543205463930

namespace A074325

/-- `or(A000007(n), A051439(n))%A033844(n)` -/
def P16109825543205463930.Spec : Prop :=
  ∀ n, P16109825543205463930.a n = A074325 n

end A074325

/-!
# A074326: Numbers n such that difference between (1+2^n)-th and (2^n)-th primes is 2.

The programs for A074326, there is no canonical definition to state claims against.
-/

/-! ## A074326.P9554331434130016940

`eq[2, A074325(n)]`
-/

namespace A074326.P9554331434130016940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074326.P9554331434130016940

/-! ## A074326.P2798134065007597743

`lt[A074325(n+1), 3]+1`
-/

namespace A074326.P2798134065007597743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074326.P2798134065007597743

/-! ## A074326.P16688053723242731591

`eq[2, A051439(n)-A033844(n)]`
-/

namespace A074326.P16688053723242731591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051439 n - A033844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074326.P16688053723242731591

/-! ## A074326.P13017844399626126546

`record[floor(A005408(n)/A074325(n))]`
-/

namespace A074326.P13017844399626126546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005408 n : ℚ) / (A074325 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074326.P13017844399626126546

/-!
# A074327: Smaller of twin primes arising in A074326.

The programs for A074327, there is no canonical definition to state claims against.
-/

/-! ## A074327.P14312719121166826333

`A033844(A074326(n+1))`
-/

namespace A074327.P14312719121166826333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A074326 (n + 1)).toNat

end

end A074327.P14312719121166826333

/-! ## A074327.P5571835350640870954

`A033844(eq[2, A074325(n)])`
-/

namespace A074327.P5571835350640870954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074327.P5571835350640870954

/-! ## A074327.P6185753444624277699

`A073799(A074326(n+1))+A000007(n)`
-/

namespace A074327.P6185753444624277699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A074326 (n + 1)).toNat + A000007 n

end

end A074327.P6185753444624277699

/-! ## A074327.P15176158556893397776

`or(A036225(n), A073799(A074326(n+1)))`
-/

namespace A074327.P15176158556893397776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036225 n) (A073799 (A074326 (n + 1)).toNat)

end

end A074327.P15176158556893397776

/-! ## A074327.P7211136422739129343

`or(A072345(n), A073799(A074326(n+1)))`
-/

namespace A074327.P7211136422739129343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072345 n) (A073799 (A074326 (n + 1)).toNat)

end

end A074327.P7211136422739129343

/-!
# A074328: Numbers m such that prime(m^2+1)-prime(m^2)=2, where prime(j) is the j-th prime.

The programs for A074328, there is no canonical definition to state claims against.
-/

/-! ## A074328.P4178257320986631373

`sqrt(∩[A029707(n+1), n²])`
-/

namespace A074328.P4178257320986631373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A074328.P4178257320986631373

/-! ## A074328.P12583586486853043373

`eq[2, A001223((n+1)²)]+1`
-/

namespace A074328.P12583586486853043373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074328.P12583586486853043373

/-! ## A074328.P5158132660051606325

`eq[2, A001223(n^(2%(n+1)))]`
-/

namespace A074328.P5158132660051606325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n ^ (2 % (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074328.P5158132660051606325

/-! ## A074328.P2672599871650243819

`eq[2, A001223(A253909(n))]`
-/

namespace A074328.P2672599871650243819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074328.P2672599871650243819

/-! ## A074328.P15907185816561415211

`eq[2, A001223(A028310(n)²)]`
-/

namespace A074328.P15907185816561415211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074328.P15907185816561415211

/-!
# A074329: The n-th highly composite number equals the a(n)-th composite number, for n >= 3.

The programs for A074329, there is no canonical definition to state claims against.
-/

/-! ## A074329.P12658872188807395140

`A002182(n+1)-A000720(A002182(n+1))-1`
-/

namespace A074329.P12658872188807395140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) - A000720 (A002182 (n + 1)).toNat - 1

end

end A074329.P12658872188807395140

/-! ## A074329.P16620869549631464849

`A305800(A002182(n+1))-ceil(atan(n+1))`
-/

namespace A074329.P16620869549631464849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A002182 (n + 1)).toNat - ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A074329.P16620869549631464849

/-!
# A074330: a(n) = Sum_{k=1..n} 2^b(k) where b(k) denotes the number of 1's in the binary representation of k.

The programs for A074330, the canonical program `A074330.P14277451581150842213` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074330 has offset 1).

The definition of A074330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074330.P8646196487925293116

`∑[2^∑[1-val(n+1, 2)]]`
-/

namespace A074330.P8646196487925293116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P8646196487925293116

namespace A074330

/-- `∑[2^∑[1-val(n+1, 2)]]` -/
def P8646196487925293116.Spec : Prop :=
  ∀ n, P8646196487925293116.a n = (A074330 (n + 1) : ℚ)

end A074330

/-! ## A074330.P15099904347273397137

`∑[2*lcm(n+1, a(n-1))/(n+1)]` with `a(0)=2`
-/

namespace A074330.P15099904347273397137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * ((Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P15099904347273397137

namespace A074330

/-- `∑[2*lcm(n+1, a(n-1))/(n+1)]` -/
def P15099904347273397137.Spec : Prop :=
  ∀ n, P15099904347273397137.a n = (A074330 (n + 1) : ℚ)

end A074330

/-! ## A074330.P5839376906426264908

`∑[2*a(n-1)/and(n+1, -(n+1))]` with `a(0)=2`
-/

namespace A074330.P5839376906426264908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P5839376906426264908

namespace A074330

/-- `∑[2*a(n-1)/and(n+1, -(n+1))]` -/
def P5839376906426264908.Spec : Prop :=
  ∀ n, P5839376906426264908.a n = (A074330 (n + 1) : ℚ)

end A074330

/-! ## A074330.P11152611288356659878

`∑[2/gcd(n+1, a(n-1))*a(n-1)]` with `a(0)=2`
-/

namespace A074330.P11152611288356659878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  2 / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P11152611288356659878

namespace A074330

/-- `∑[2/gcd(n+1, a(n-1))*a(n-1)]` -/
def P11152611288356659878.Spec : Prop :=
  ∀ n, P11152611288356659878.a n = (A074330 (n + 1) : ℚ)

end A074330

/-! ## A074330.P14277451581150842213

`∑[A001316(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074330

/-- `∑[A001316(n+1)]` -/
def P14277451581150842213.Spec : Prop :=
  ∀ n, P14277451581150842213.a n = A074330 (n + 1)

theorem P14277451581150842213.correct : P14277451581150842213.Spec := by
  intro n
  simp only [A074330, Nat.add_sub_cancel]

end A074330

/-! ## A074330.P11734383439685331590

`∑[A071055(n)+2]`
-/

namespace A074330.P11734383439685331590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P11734383439685331590

namespace A074330

/-- `∑[A071055(n)+2]` -/
def P11734383439685331590.Spec : Prop :=
  ∀ n, P11734383439685331590.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P10426037571431326757

`∑[2*A048896(n)]`
-/

namespace A074330.P10426037571431326757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P10426037571431326757

namespace A074330

/-- `∑[2*A048896(n)]` -/
def P10426037571431326757.Spec : Prop :=
  ∀ n, P10426037571431326757.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P18442111613188404692

`A006046(n+2)-1`
-/

namespace A074330.P18442111613188404692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 2) - 1

end

end A074330.P18442111613188404692

namespace A074330

/-- `A006046(n+2)-1` -/
def P18442111613188404692.Spec : Prop :=
  ∀ n, P18442111613188404692.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P155237794906053509

`2*A193494(n+1)`
-/

namespace A074330.P155237794906053509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193494 (n + 1)

end

end A074330.P155237794906053509

namespace A074330

/-- `2*A193494(n+1)` -/
def P155237794906053509.Spec : Prop :=
  ∀ n, P155237794906053509.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P16861873058581656792

`∑[sqrt(A102376(n+1))]`
-/

namespace A074330.P16861873058581656792
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P16861873058581656792

namespace A074330

/-- `∑[sqrt(A102376(n+1))]` -/
def P16861873058581656792.Spec : Prop :=
  ∀ n, P16861873058581656792.a n = (A074330 (n + 1) : ℝ)

end A074330

/-! ## A074330.P3418952067153856294

`∑[∑[A151930(n)]+1]`
-/

namespace A074330.P3418952067153856294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P3418952067153856294

namespace A074330

/-- `∑[∑[A151930(n)]+1]` -/
def P3418952067153856294.Spec : Prop :=
  ∀ n, P3418952067153856294.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P16944237814091205898

`∑[2*Δ[A193494(n)]]`
-/

namespace A074330.P16944237814091205898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P16944237814091205898

namespace A074330

/-- `∑[2*Δ[A193494(n)]]` -/
def P16944237814091205898.Spec : Prop :=
  ∀ n, P16944237814091205898.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P18394736867227144562

`∑[A060632(2*(n+1))]`
-/

namespace A074330.P18394736867227144562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P18394736867227144562

namespace A074330

/-- `∑[A060632(2*(n+1))]` -/
def P18394736867227144562.Spec : Prop :=
  ∀ n, P18394736867227144562.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P8532129172748762960

`∑[A167275(n+1)/2]`
-/

namespace A074330.P8532129172748762960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167275 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P8532129172748762960

namespace A074330

/-- `∑[A167275(n+1)/2]` -/
def P8532129172748762960.Spec : Prop :=
  ∀ n, P8532129172748762960.a n = (A074330 (n + 1) : ℚ)

end A074330

/-! ## A074330.P8413585056264100664

`∑[2^A000120(n+1)]`
-/

namespace A074330.P8413585056264100664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P8413585056264100664

namespace A074330

/-- `∑[2^A000120(n+1)]` -/
def P8413585056264100664.Spec : Prop :=
  ∀ n, P8413585056264100664.a n = (A074330 (n + 1) : ℚ)

end A074330

/-! ## A074330.P4848781942054071439

`A267610(n)+2*(n+1)`
-/

namespace A074330.P4848781942054071439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267610 n + (2 * (n + 1) : ℤ)

end

end A074330.P4848781942054071439

namespace A074330

/-- `A267610(n)+2*(n+1)` -/
def P4848781942054071439.Spec : Prop :=
  ∀ n, P4848781942054071439.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P17044747272555997147

`∑[n+2-A048967(n+1)]`
-/

namespace A074330.P17044747272555997147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A048967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P17044747272555997147

namespace A074330

/-- `∑[n+2-A048967(n+1)]` -/
def P17044747272555997147.Spec : Prop :=
  ∀ n, P17044747272555997147.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P18124616675436184269

`∑[A101925(A048896(n))]`
-/

namespace A074330.P18124616675436184269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (A048896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P18124616675436184269

namespace A074330

/-- `∑[A101925(A048896(n))]` -/
def P18124616675436184269.Spec : Prop :=
  ∀ n, P18124616675436184269.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P11806163741260788055

`∑[A000079(A000120(n+1))]`
-/

namespace A074330.P11806163741260788055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P11806163741260788055

namespace A074330

/-- `∑[A000079(A000120(n+1))]` -/
def P11806163741260788055.Spec : Prop :=
  ∀ n, P11806163741260788055.a n = A074330 (n + 1)

end A074330

/-! ## A074330.P8330641178329298785

`∑[A000069(A048896(n)+1)]`
-/

namespace A074330.P8330641178329298785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A048896 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P8330641178329298785

namespace A074330

/-- `∑[A000069(A048896(n)+1)]` -/
def P8330641178329298785.Spec : Prop :=
  ∀ n, P8330641178329298785.a n = A074330 (n + 1)

end A074330

/-!
# A074331: a(n) = Fibonacci(n+1) - (1 + (-1)^n)/2.

The programs for A074331, the canonical program `A074331.P15331780069514350859` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074331 has offset 0).

The definition of A074331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074331.P15331780069514350859

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074331

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P15331780069514350859.Spec : Prop :=
  ∀ n, P15331780069514350859.a n = A074331 n

theorem P15331780069514350859.correct : P15331780069514350859.Spec := by
  intro n
  simp only [A074331]

end A074331

/-! ## A074331.P17543772280216310659

`∑[a(n-3)+2*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A074331.P17543772280216310659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074331.P17543772280216310659

namespace A074331

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P17543772280216310659.Spec : Prop :=
  ∀ n, (P17543772280216310659.a n : ℤ) = A074331 n

end A074331

/-! ## A074331.P17397430283699994151

`a(n-1)+a(n-2)+n%2` with `a(0)=0, a(1)=1`
-/

namespace A074331.P17397430283699994151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + n % 2)

end

end A074331.P17397430283699994151

namespace A074331

/-- `a(n-1)+a(n-2)+n%2` -/
def P17397430283699994151.Spec : Prop :=
  ∀ n, (P17397430283699994151.a n : ℤ) = A074331 n

end A074331

/-! ## A074331.P17854136968367843235

`and(1, n)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A074331.P17854136968367843235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.land 1 n + (a (n - 1) + a (n - 2))

end

end A074331.P17854136968367843235

namespace A074331

/-- `and(1, n)+a(n-1)+a(n-2)` -/
def P17854136968367843235.Spec : Prop :=
  ∀ n, (P17854136968367843235.a n : ℤ) = A074331 n

end A074331

/-! ## A074331.P595840339599726026

`2*a(n-2)+a(n-3)+1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A074331.P595840339599726026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 1)

end

end A074331.P595840339599726026

namespace A074331

/-- `2*a(n-2)+a(n-3)+1` -/
def P595840339599726026.Spec : Prop :=
  ∀ n, (P595840339599726026.a n : ℤ) = A074331 n

end A074331

/-! ## A074331.P6607625231390116799

`∑[a(n-1)+a(n-2)-(-1)^n]` with `a(0)=0, a(1)=1`
-/

namespace A074331.P6607625231390116799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074331.P6607625231390116799

namespace A074331

/-- `∑[a(n-1)+a(n-2)-(-1)^n]` -/
def P6607625231390116799.Spec : Prop :=
  ∀ n, P6607625231390116799.a n = A074331 n

end A074331

/-! ## A074331.P8344094478244056768

`∑[a(n-1)-((-1)^n-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A074331.P8344094478244056768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - ((-1) ^ n - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074331.P8344094478244056768

namespace A074331

/-- `∑[a(n-1)-((-1)^n-a(n-2))]` -/
def P8344094478244056768.Spec : Prop :=
  ∀ n, P8344094478244056768.a n = A074331 n

end A074331

/-! ## A074331.P9677657190344999401

`2-gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A074331.P9677657190344999401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (Nat.gcd 2 n : ℤ) + (a (n - 1) + a (n - 2))

end

end A074331.P9677657190344999401

namespace A074331

/-- `2-gcd(2, n)+a(n-1)+a(n-2)` -/
def P9677657190344999401.Spec : Prop :=
  ∀ n, P9677657190344999401.a n = A074331 n

end A074331

/-! ## A074331.P11264010985444712530

`a(n-1)-((2-n)%2-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A074331.P11264010985444712530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (Int.tmod (2 - (n : ℤ)) 2 - a (n - 2))

end

end A074331.P11264010985444712530

namespace A074331

/-- `a(n-1)-((2-n)%2-a(n-2))` -/
def P11264010985444712530.Spec : Prop :=
  ∀ n, P11264010985444712530.a n = A074331 n

end A074331

/-! ## A074331.P61310194972923748

`a(n-2)+1+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A074331.P61310194972923748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + 1 + (a (n - 2) + a (n - 3))

end

end A074331.P61310194972923748

namespace A074331

/-- `a(n-2)+1+a(n-2)+a(n-3)` -/
def P61310194972923748.Spec : Prop :=
  ∀ n, (P61310194972923748.a n : ℤ) = A074331 n

end A074331

/-! ## A074331.P6224639877430754549

`A127968(n)-1`
-/

namespace A074331.P6224639877430754549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n - 1

end

end A074331.P6224639877430754549

namespace A074331

/-- `A127968(n)-1` -/
def P6224639877430754549.Spec : Prop :=
  ∀ n, P6224639877430754549.a n = A074331 n

end A074331

/-! ## A074331.P2018872603184534501

`∑[abs(A119282(n))]`
-/

namespace A074331.P2018872603184534501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074331.P2018872603184534501

namespace A074331

/-- `∑[abs(A119282(n))]` -/
def P2018872603184534501.Spec : Prop :=
  ∀ n, P2018872603184534501.a n = A074331 n

end A074331

/-! ## A074331.P8393978484409374364

`∑[A247050(3*n)]`
-/

namespace A074331.P8393978484409374364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074331.P8393978484409374364

namespace A074331

/-- `∑[A247050(3*n)]` -/
def P8393978484409374364.Spec : Prop :=
  ∀ n, P8393978484409374364.a n = A074331 n

end A074331

/-! ## A074331.P8056854335536020252

`A081659(n)-or(1, n)`
-/

namespace A074331.P8056854335536020252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - (Nat.lor 1 n : ℤ)

end

end A074331.P8056854335536020252

namespace A074331

/-- `A081659(n)-or(1, n)` -/
def P8056854335536020252.Spec : Prop :=
  ∀ n, P8056854335536020252.a n = A074331 n

end A074331

/-! ## A074331.P4093848200465528210

`∑[A008346(abs(1-n))]`
-/

namespace A074331.P4093848200465528210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074331.P4093848200465528210

namespace A074331

/-- `∑[A008346(abs(1-n))]` -/
def P4093848200465528210.Spec : Prop :=
  ∀ n, P4093848200465528210.a n = A074331 n

end A074331

/-! ## A074331.P18297174719535716686

`A000071(n+1)+and(1, n)`
-/

namespace A074331.P18297174719535716686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (Nat.land 1 n : ℤ)

end

end A074331.P18297174719535716686

namespace A074331

/-- `A000071(n+1)+and(1, n)` -/
def P18297174719535716686.Spec : Prop :=
  ∀ n, P18297174719535716686.a n = A074331 n

end A074331

/-! ## A074331.P5459144391270178011

`a(n-2)+A000045(n)` with `a(0)=0, a(1)=1`
-/

namespace A074331.P5459144391270178011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A000045 n

end

end A074331.P5459144391270178011

namespace A074331

/-- `a(n-2)+A000045(n)` -/
def P5459144391270178011.Spec : Prop :=
  ∀ n, P5459144391270178011.a n = A074331 n

end A074331

/-! ## A074331.P18434476747330877260

`A000045(n+1)-char[2*n]`
-/

namespace A074331.P18434476747330877260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074331.P18434476747330877260

namespace A074331

/-- `A000045(n+1)-char[2*n]` -/
def P18434476747330877260.Spec : Prop :=
  ∀ n, P18434476747330877260.a n = A074331 n

end A074331

/-!
# A074332: Direction from n-th perfect power to closest prime (-1 if down, 1 if up, 0 if two primes are closest).

The programs for A074332, there is no canonical definition to state claims against.
-/

/-! ## A074332.P13101595217150743018

`A008683(A266623(n)+A000051(n))`
-/

namespace A074332.P13101595217150743018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A266623 n + A000051 n).toNat

end

end A074332.P13101595217150743018

/-! ## A074332.P12349233047632707346

`A008683(A068431(n+1)+A000051(n))`
-/

namespace A074332.P12349233047632707346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A068431 (n + 1) + A000051 n).toNat

end

end A074332.P12349233047632707346

/-! ## A074332.P9740031609051655348

`A008683(A062709(n)-A276948(n+1))`
-/

namespace A074332.P9740031609051655348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062709 n - A276948 (n + 1)).toNat

end

end A074332.P9740031609051655348

/-! ## A074332.P10015591639479145714

`A008683(A160508(n+1)-A342217(n))`
-/

namespace A074332.P10015591639479145714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A160508 (n + 1) - A342217 n).toNat

end

end A074332.P10015591639479145714

/-! ## A074332.P10143712714185672181

`A100047(A286610(2*n+5)+A101854(n+2))`
-/

namespace A074332.P10143712714185672181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A286610 (2 * n + 5) + A101854 (n + 2)).toNat

end

end A074332.P10143712714185672181

/-!
# A074333: a(n) = a(n-1) + a(n-1)^3 with a(0) = 1.

The programs for A074333, the canonical program `A074333.P6732785529276989071` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074333 has offset 0).

The definition of A074333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074333.P6732785529276989071

`a(n-1)+a(n-1)^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074333

/-- `a(n-1)+a(n-1)^3` -/
def P6732785529276989071.Spec : Prop :=
  ∀ n, (P6732785529276989071.a n : ℤ) = A074333 n

theorem P6732785529276989071.correct : P6732785529276989071.Spec := by
  intro n
  simp only [A074333]

end A074333

/-! ## A074333.P12165838344348373132

`(a(n-1)²+1)*a(n-1)` with `a(0)=1`
-/

namespace A074333.P12165838344348373132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) ^ 2 + 1) * a (n - 1)

end

end A074333.P12165838344348373132

namespace A074333

/-- `(a(n-1)²+1)*a(n-1)` -/
def P12165838344348373132.Spec : Prop :=
  ∀ n, (P12165838344348373132.a n : ℤ) = A074333 n

theorem P12165838344348373132.correct : P12165838344348373132.Spec := by
  intro n
  simp only [A074333, Nat.add_sub_cancel, A074333.P12165838344348373132.a, A074333.P6732785529276989071.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074333

/-! ## A074333.P1261548312406659934

`lcm(a(n-1)²+1, a(n-1))` with `a(0)=1`
-/

namespace A074333.P1261548312406659934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1) ^ 2 + 1) (a (n - 1))

end

end A074333.P1261548312406659934

namespace A074333

/-- `lcm(a(n-1)²+1, a(n-1))` -/
def P1261548312406659934.Spec : Prop :=
  ∀ n, (P1261548312406659934.a n : ℤ) = A074333 n

end A074333

/-!
# A074334: a(n) = Sum_{r=1..n} r^4*binomial(n,r)^2.

The programs for A074334, there is no canonical definition to state claims against.
-/

/-! ## A074334.P9108339251252622652

`n*A125212(A014068(n))`
-/

namespace A074334.P9108339251252622652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125212 (A014068 n).toNat

end

end A074334.P9108339251252622652

/-!
# A074335: In music, with 0 = C natural, 1 = C#, etc.: The unfolding of a semitonal interval cycle, alternating the ascending and descending aspects of the cycle from a common point or axis of symmetry. Any regularly occurring alignment may be used, with predictable even or odd results.

The programs for A074335, there is no canonical definition to state claims against.
-/

/-! ## A074335.P3480202384617546077

`∑[xor(1, -a(n-1))]%12` with `a(0)=0, a(1)=12`
-/

namespace A074335.P3480202384617546077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  Int.xor 1 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 12

end

end A074335.P3480202384617546077

/-! ## A074335.P1609365501126917578

`a(n-2)+(-1)^n` with `a(0)=0, a(1)=0, a(2)=1, a(3)=11`
-/

namespace A074335.P1609365501126917578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 11] fun n a =>
  a (n - 2) + (-1) ^ n

end

end A074335.P1609365501126917578

/-! ## A074335.P9343250523580594390

`∑[(-1)^n-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=10`
-/

namespace A074335.P9343250523580594390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 10] fun n f1 =>
  (-1) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074335.P9343250523580594390

/-! ## A074335.P10912112464357860264

`(a(n-2)+10^n)%11` with `a(0)=0, a(1)=0, a(2)=1, a(3)=11`
-/

namespace A074335.P10912112464357860264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 11] fun n a =>
  (a (n - 2) + 10 ^ n) % 11

end

end A074335.P10912112464357860264

/-! ## A074335.P13658497777962058947

`∑[10*a(n-1)-a(n-2)]%12` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A074335.P13658497777962058947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 12

end

end A074335.P13658497777962058947

/-!
# A074336: a(1) = 1; a(n) is smallest number > a(n-1) such that the juxtaposition a(1)a(2)...a(n) is a prime.

The programs for A074336, there is no canonical definition to state claims against.
-/

/-! ## A074336.P456968990813137728

`A086475(n+1)-A160382(A160365(n+1))`
-/

namespace A074336.P456968990813137728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086475 (n + 1) - A160382 (A160365 (n + 1)).toNat

end

end A074336.P456968990813137728

/-! ## A074336.P8278607599239084123

`A086475(A010352(n+1))`
-/

namespace A074336.P8278607599239084123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086475 (A010352 (n + 1)).toNat

end

end A074336.P8278607599239084123

/-! ## A074336.P9421773214697653349

`A086475(A024653(n+1))`
-/

namespace A074336.P9421773214697653349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086475 (A024653 (n + 1)).toNat

end

end A074336.P9421773214697653349

/-! ## A074336.P11784711610741978035

`A086475(A024654(n+1))`
-/

namespace A074336.P11784711610741978035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086475 (A024654 (n + 1)).toNat

end

end A074336.P11784711610741978035

/-!
# A074339: a(1) = 3; a(n) is smallest number > a(n-1) such that the juxtaposition a(1)a(2)...a(n) is a prime.

The programs for A074339, there is no canonical definition to state claims against.
-/

/-! ## A074339.P7781140620010576326

`or((n+1)², A051209(A020607(n+1)))`
-/

namespace A074339.P7781140620010576326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 1) ^ 2 : ℤ) (A051209 (A020607 (n + 1)).toNat)

end

end A074339.P7781140620010576326

/-!
# A074344: a(1) = 8; a(n) is smallest number > a(n-1) such that the juxtaposition a(1)a(2)...a(n) is a prime.

The programs for A074344, there is no canonical definition to state claims against.
-/

/-! ## A074344.P2887671114120694927

`or(A025457(A000079(n)), A046258(n+1))`
-/

namespace A074344.P2887671114120694927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025457 (A000079 n).toNat) (A046258 (n + 1))

end

end A074344.P2887671114120694927

/-! ## A074344.P7417940812075115539

`or(A046258(n+1), A341026(A019565(n)))`
-/

namespace A074344.P7417940812075115539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046258 (n + 1)) (A341026 ((A019565 n).toNat + 165))

end

end A074344.P7417940812075115539

/-! ## A074344.P10720133858319802430

`A046258(n+1)+A000122(A077428(n+1))`
-/

namespace A074344.P10720133858319802430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046258 (n + 1) + A000122 (A077428 (n + 1)).toNat

end

end A074344.P10720133858319802430

/-! ## A074344.P18126645480937442454

`or(A046258(n+1), A111818(A007031(n+1)))`
-/

namespace A074344.P18126645480937442454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046258 (n + 1)) (A111818 (A007031 (n + 1)).toNat)

end

end A074344.P18126645480937442454

/-! ## A074344.P6806304387355534789

`or(A025457(A007031(n+4)), A046258(n+1))`
-/

namespace A074344.P6806304387355534789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025457 (A007031 (n + 4)).toNat) (A046258 (n + 1))

end

end A074344.P6806304387355534789

/-!
# A074346: a(1) = 10; a(n) is smallest number > a(n-1) such that the juxtaposition a(1)a(2)...a(n) is a prime.

The programs for A074346, there is no canonical definition to state claims against.
-/

/-! ## A074346.P9023102787214183514

`A111524(A156136(∑[n]))`
-/

namespace A074346.P9023102787214183514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111524 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074346.P9023102787214183514

/-! ## A074346.P4682847638695317879

`A111524(A062399(n+1))`
-/

namespace A074346.P4682847638695317879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111524 (A062399 (n + 1)).toNat

end

end A074346.P4682847638695317879

/-! ## A074346.P1725044420705077946

`A111524(A087051(n)+1)`
-/

namespace A074346.P1725044420705077946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111524 (A087051 n + 1).toNat

end

end A074346.P1725044420705077946

/-! ## A074346.P7705607154355086795

`A111524(A120126(n+1))`
-/

namespace A074346.P7705607154355086795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111524 (A120126 (n + 1)).toNat

end

end A074346.P7705607154355086795

/-! ## A074346.P15681732488334531777

`A111524(A351870(n+1))`
-/

namespace A074346.P15681732488334531777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111524 (A351870 (n + 1)).toNat

end

end A074346.P15681732488334531777

/-!
# A074350: Numbers n such that n and the n-th prime have the same digits.

The programs for A074350, there is no canonical definition to state claims against.
-/

/-! ## A074350.P15130075842014729638

`A000720(p?[A355418(n+1)])`
-/

namespace A074350.P15130075842014729638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074350.P15130075842014729638

/-! ## A074350.P15245267402098071870

`A354871(p?[A355418(n+1)])`
-/

namespace A074350.P15245267402098071870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354871 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074350.P15245267402098071870

/-!
# A074351: Number of elements of S_n having order n.

The programs for A074351, there is no canonical definition to state claims against.
-/

/-! ## A074351.P13607925923481822398

`Δ[A002088(n)]*A074880(n+1)`
-/

namespace A074351.P13607925923481822398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074880 (n + 1)

end

end A074351.P13607925923481822398

/-! ## A074351.P2289085165444909192

`Δ[A005728(n)]*A074880(n+1)`
-/

namespace A074351.P2289085165444909192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074880 (n + 1)

end

end A074351.P2289085165444909192

/-! ## A074351.P8923037801274866662

`A000010(n+1)*A074880(n+1)`
-/

namespace A074351.P8923037801274866662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A074880 (n + 1)

end

end A074351.P8923037801274866662

/-! ## A074351.P11938458189369566390

`A057731(∑[A000793(n)]+n)`
-/

namespace A074351.P11938458189369566390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057731 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A074351.P11938458189369566390

/-! ## A074351.P1760572963992127048

`A057731(∑[A000793(n)-A057428(n)])`
-/

namespace A074351.P1760572963992127048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057731 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074351.P1760572963992127048

/-!
# A074352: Coefficient of q^1 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,2).

The programs for A074352, the canonical program `A074352.P92644256259201517` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074352 has offset 0).

The definition of A074352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074352.P92644256259201517

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=8`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074352

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P92644256259201517.Spec : Prop :=
  ∀ n, P92644256259201517.a n = A074352 n

theorem P92644256259201517.correct : P92644256259201517.Spec := by
  intro n
  simp only [A074352]

end A074352

/-! ## A074352.P12568682673871612059

`A062157(n)+∑[abs(A322039(n))]-2^n`
-/

namespace A074352.P12568682673871612059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322039 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + (∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ))

end

end A074352.P12568682673871612059

namespace A074352

/-- `A062157(n)+∑[abs(A322039(n))]-2^n` -/
def P12568682673871612059.Spec : Prop :=
  ∀ n, P12568682673871612059.a n = A074352 n

end A074352

/-! ## A074352.P2278895726515990317

`2*floor((2*A091596(n)-A000225(n))/2)`
-/

namespace A074352.P2278895726515990317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(2 * A091596 n - A000225 n : ℚ) / 2⌋

end

end A074352.P2278895726515990317

namespace A074352

/-- `2*floor((2*A091596(n)-A000225(n))/2)` -/
def P2278895726515990317.Spec : Prop :=
  ∀ n, P2278895726515990317.a n = A074352 n

end A074352

/-! ## A074352.P6127994648443593732

`2*A091596(n)-(A000225(n)+A000035(A000040(n+1)))`
-/

namespace A074352.P6127994648443593732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091596 n - (A000225 n + A000035 (A000040 (n + 1)).toNat)

end

end A074352.P6127994648443593732

namespace A074352

/-- `2*A091596(n)-(A000225(n)+A000035(A000040(n+1)))` -/
def P6127994648443593732.Spec : Prop :=
  ∀ n, P6127994648443593732.a n = A074352 n

end A074352

/-! ## A074352.P394163221226347280

`(A095977(n+1)-A078008(n))%A059570(n+1)`
-/

namespace A074352.P394163221226347280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095977 (n + 1) - A078008 n) (A059570 (n + 1))

end

end A074352.P394163221226347280

namespace A074352

/-- `(A095977(n+1)-A078008(n))%A059570(n+1)` -/
def P394163221226347280.Spec : Prop :=
  ∀ n, P394163221226347280.a n = A074352 n

end A074352

/-! ## A074352.P15201415749124431231

`(A102713(n+1)-A078008(n))%A059570(n+1)`
-/

namespace A074352.P15201415749124431231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102713 (n + 1) - A078008 n) (A059570 (n + 1))

end

end A074352.P15201415749124431231

namespace A074352

/-- `(A102713(n+1)-A078008(n))%A059570(n+1)` -/
def P15201415749124431231.Spec : Prop :=
  ∀ n, P15201415749124431231.a n = A074352 n

end A074352

/-! ## A074352.P15888477617733433573

`(A095977(A289207(n)+1)-A078008(n))%A264529(n+1)`
-/

namespace A074352.P15888477617733433573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095977 (A289207 n + 1).toNat - A078008 n) (A264529 (n + 1))

end

end A074352.P15888477617733433573

namespace A074352

/-- `(A095977(A289207(n)+1)-A078008(n))%A264529(n+1)` -/
def P15888477617733433573.Spec : Prop :=
  ∀ n, P15888477617733433573.a n = A074352 n

end A074352

/-!
# A074353: Coefficient of q^2 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,2).

The programs for A074353, there is no canonical definition to state claims against.
-/

/-! ## A074353.P13963460939511325662

`A317582(A180829(n+1)+1)`
-/

namespace A074353.P13963460939511325662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317582 (A180829 (n + 1) + 1).toNat

end

end A074353.P13963460939511325662

/-! ## A074353.P2650500599451426811

`A325272(A076739(n))*A335548(n)`
-/

namespace A074353.P2650500599451426811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325272 (A076739 n).toNat * A335548 n

end

end A074353.P2650500599451426811

/-! ## A074353.P2129405905204966698

`A001222(A154638(n+1))*A335548(n)`
-/

namespace A074353.P2129405905204966698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154638 (n + 1)).toNat * A335548 n

end

end A074353.P2129405905204966698

/-! ## A074353.P18304603448952595283

`A121902(A174073(n))*A239931(n+1)`
-/

namespace A074353.P18304603448952595283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A174073 n).toNat * A239931 (n + 1)

end

end A074353.P18304603448952595283

/-!
# A074354: Coefficient of q^3 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,2).

The programs for A074354, there is no canonical definition to state claims against.
-/

/-! ## A074354.P473865725797562846

`A054951(n+1)%A076707(A001405(n))`
-/

namespace A074354.P473865725797562846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054951 (n + 1)) (A076707 (A001405 n).toNat)

end

end A074354.P473865725797562846

/-! ## A074354.P9902417265329488170

`A302174(A002131(n+1))%A202705(n)`
-/

namespace A074354.P9902417265329488170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302174 (A002131 (n + 1)).toNat) (A202705 n)

end

end A074354.P9902417265329488170

/-! ## A074354.P11312074391208110195

`A306392(n)%A008675(A243783(n+1))`
-/

namespace A074354.P11312074391208110195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306392 n) (A008675 (A243783 (n + 1)).toNat)

end

end A074354.P11312074391208110195

/-! ## A074354.P2127780667053531425

`A007590(A352878(n))%A245900(n+1)`
-/

namespace A074354.P2127780667053531425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007590 (A352878 n).toNat) (A245900 (n + 1))

end

end A074354.P2127780667053531425

/-!
# A074355: Coefficient of q^1 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,3).

The programs for A074355, there is no canonical definition to state claims against.
-/

/-! ## A074355.P2480328912897453487

`A217368(3*n+4)%n!`
-/

namespace A074355.P2480328912897453487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217368 (3 * n + 4)) (Nat.factorial n : ℤ)

end

end A074355.P2480328912897453487

/-! ## A074355.P4954912948991554339

`A261514(A159349(n))`
-/

namespace A074355.P4954912948991554339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A159349 n).toNat

end

end A074355.P4954912948991554339

/-! ## A074355.P14834976760737814390

`A172366(A116914(n+2))`
-/

namespace A074355.P14834976760737814390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172366 (A116914 (n + 2)).toNat

end

end A074355.P14834976760737814390

/-!
# A074356: Coefficient of q^2 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,3).

The programs for A074356, there is no canonical definition to state claims against.
-/

/-! ## A074356.P12777921007616128459

`A003056(A292293(n))*A014689(n+1)`
-/

namespace A074356.P12777921007616128459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A292293 n).toNat * A014689 (n + 1)

end

end A074356.P12777921007616128459

/-! ## A074356.P574305291295580083

`A065461(ceil(3^(n-1)))%ceil(3^(n-1))`
-/

namespace A074356.P574305291295580083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065461 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A074356.P574305291295580083

/-! ## A074356.P14502318265408969556

`floor((n²-n)/11)*A274779(ceil(2^(n-1)))`
-/

namespace A074356.P14502318265408969556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 11⌋ * A274779 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A074356.P14502318265408969556

/-!
# A074357: Coefficient of q^3 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(1,3).

The programs for A074357, there is no canonical definition to state claims against.
-/

/-! ## A074357.P5383657436347875290

`∑[2*n]*A137579(2^n-1)`
-/

namespace A074357.P5383657436347875290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A137579 (2 ^ n - 1)

end

end A074357.P5383657436347875290

/-! ## A074357.P17193323226047831796

`A129533(A027556(n))`
-/

namespace A074357.P17193323226047831796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (A027556 n).toNat

end

end A074357.P17193323226047831796

/-! ## A074357.P13212961196284950945

`A112239(A097121(n))`
-/

namespace A074357.P13212961196284950945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112239 (A097121 n).toNat

end

end A074357.P13212961196284950945

/-!
# A074358: Coefficient of q^1 in nu(n), where nu(0)=1, nu(1)=b and, for n >= 2, nu(n) = b*nu(n-1) + lambda*(1 + q + q^2 + ... + q^(n-2))*nu(n-2) with (b,lambda)=(2,2).

The programs for A074358, the canonical program `A074358.P13671459961587697184` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074358 has offset 0).

The definition of A074358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074358.P13671459961587697184

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=4, a(4)=20`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074358

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P13671459961587697184.Spec : Prop :=
  ∀ n, P13671459961587697184.a n = A074358 n

theorem P13671459961587697184.correct : P13671459961587697184.Spec := by
  intro n
  simp only [A074358]

end A074358

/-! ## A074358.P11756467870118633927

`A293007(n)+2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A074358.P11756467870118633927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A293007 n + 2 * (a (n - 1) + a (n - 2))

end

end A074358.P11756467870118633927

namespace A074358

/-- `A293007(n)+2*(a(n-1)+a(n-2))` -/
def P11756467870118633927.Spec : Prop :=
  ∀ n, P11756467870118633927.a n = A074358 n

end A074358

/-! ## A074358.P14264792906733458554

`A331320(n)-A028859(n)`
-/

namespace A074358.P14264792906733458554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331320 n - A028859 n

end

end A074358.P14264792906733458554

namespace A074358

/-- `A331320(n)-A028859(n)` -/
def P14264792906733458554.Spec : Prop :=
  ∀ n, P14264792906733458554.a n = A074358 n

end A074358

/-! ## A074358.P9738833212745834915

`A331320(n)-∑[A052945(n)]`
-/

namespace A074358.P9738833212745834915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331320 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074358.P9738833212745834915

namespace A074358

/-- `A331320(n)-∑[A052945(n)]` -/
def P9738833212745834915.Spec : Prop :=
  ∀ n, P9738833212745834915.a n = A074358 n

end A074358

/-! ## A074358.P2642030731075331775

`A331320(n)-Δ[A057960(n)]`
-/

namespace A074358.P2642030731075331775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331320 n - (f1 (n + 1) - f1 n)

end

end A074358.P2642030731075331775

namespace A074358

/-- `A331320(n)-Δ[A057960(n)]` -/
def P2642030731075331775.Spec : Prop :=
  ∀ n, P2642030731075331775.a n = A074358 n

end A074358

/-! ## A074358.P13720074869510974144

`A152035(n)+A331319(n)-A028859(n)`
-/

namespace A074358.P13720074869510974144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 n + (A331319 n - A028859 n)

end

end A074358.P13720074869510974144

namespace A074358

/-- `A152035(n)+A331319(n)-A028859(n)` -/
def P13720074869510974144.Spec : Prop :=
  ∀ n, P13720074869510974144.a n = A074358 n

end A074358

/-!
# A074359: Coefficient of q^2 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(2,2).

The programs for A074359, there is no canonical definition to state claims against.
-/

/-! ## A074359.P12853198307044807972

`A343722(xor(A022292(n), A131203(n))+1)`
-/

namespace A074359.P12853198307044807972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343722 (Int.xor (A022292 n) (A131203 n) + 1).toNat

end

end A074359.P12853198307044807972

/-! ## A074359.P5730311418961375986

`A378174(A249665(n+1))`
-/

namespace A074359.P5730311418961375986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378174 (A249665 (n + 1)).toNat

end

end A074359.P5730311418961375986

/-! ## A074359.P13241406297960726973

`A257684(6*A235385(n))`
-/

namespace A074359.P13241406297960726973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (6 * A235385 n).toNat

end

end A074359.P13241406297960726973

/-!
# A074360: Coefficient of q^3 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(2,2).

The programs for A074360, there is no canonical definition to state claims against.
-/

/-! ## A074360.P1091244368476356557

`and(A016933(A343737(n+1)), A296050(n))`
-/

namespace A074360.P1091244368476356557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016933 (A343737 (n + 1)).toNat) (A296050 n)

end

end A074360.P1091244368476356557

/-! ## A074360.P6366459680131964615

`and(232, A260161(n+1))`
-/

namespace A074360.P6366459680131964615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 232 (A260161 (n + 1))

end

end A074360.P6366459680131964615

/-! ## A074360.P9534600697615038781

`A357236(A129694(n+1))`
-/

namespace A074360.P9534600697615038781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357236 (A129694 (n + 1)).toNat

end

end A074360.P9534600697615038781

/-!
# A074361: Coefficient of q^1 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(3,1).

The programs for A074361, the canonical program `A074361.P11293865672913824505` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074361 has offset 0).

The definition of A074361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074361.P11293865672913824505

`6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074361

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` -/
def P11293865672913824505.Spec : Prop :=
  ∀ n, P11293865672913824505.a n = A074361 n

theorem P11293865672913824505.correct : P11293865672913824505.Spec := by
  intro n
  simp only [A074361]

end A074361

/-! ## A074361.P7912168875707304367

`∑[A027870(A061152(n)²)]`
-/

namespace A074361.P7912168875707304367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A061152 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074361.P7912168875707304367

namespace A074361

/-- `∑[A027870(A061152(n)²)]` -/
def P7912168875707304367.Spec : Prop :=
  ∀ n, P7912168875707304367.a n = A074361 n

end A074361

/-! ## A074361.P4986249803256187998

`A266193(2*A349053(2*n))`
-/

namespace A074361.P4986249803256187998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (2 * A349053 (2 * n)).toNat

end

end A074361.P4986249803256187998

namespace A074361

/-- `A266193(2*A349053(2*n))` -/
def P4986249803256187998.Spec : Prop :=
  ∀ n, P4986249803256187998.a n = A074361 n

end A074361

/-!
# A074362: Coefficient of q^2 in nu(n), where nu(0) = 1, nu(1) = b and, for n >= 2, nu(n) = b*nu(n-1) + lambda*(1 + q + q^2 + ... + q^(n-2))*nu(n-2) with (b,lambda) = (3,1).

The programs for A074362, there is no canonical definition to state claims against.
-/

/-! ## A074362.P13474473606785456051

`∑[∑[(n+1)²]]%A272906(n)`
-/

namespace A074362.P13474473606785456051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A272906 n)

end

end A074362.P13474473606785456051

/-! ## A074362.P6375616883366361019

`A333535(A232639(n!))`
-/

namespace A074362.P6375616883366361019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (A232639 (Nat.factorial n)).toNat

end

end A074362.P6375616883366361019

/-! ## A074362.P2527410373060732593

`2*A065714(A108524(n+1))`
-/

namespace A074362.P2527410373060732593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065714 (A108524 (n + 1)).toNat

end

end A074362.P2527410373060732593

/-!
# A074363: Coefficient of q^3 in nu(n), where nu(0)=1, nu(1)=b and, for n>=2, nu(n)=b*nu(n-1)+lambda*(1+q+q^2+...+q^(n-2))*nu(n-2) with (b,lambda)=(3,1).

The programs for A074363, there is no canonical definition to state claims against.
-/

/-! ## A074363.P5742594959431385604

`A212096(A267192(n))`
-/

namespace A074363.P5742594959431385604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212096 (A267192 n).toNat

end

end A074363.P5742594959431385604

/-! ## A074363.P5457922005431734909

`A374361(A243647(n))`
-/

namespace A074363.P5457922005431734909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374361 (A243647 n).toNat

end

end A074363.P5457922005431734909

/-! ## A074363.P14445771783157112219

`A256664(A361699(n+1))`
-/

namespace A074363.P14445771783157112219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256664 (A361699 (n + 1)).toNat

end

end A074363.P14445771783157112219

/-!
# A074364: Semi-tribonacci numbers, from tribonacci by analogy with semi-Fibonacci sequence.

The programs for A074364, there is no canonical definition to state claims against.
-/

/-! ## A074364.P10905928008419171382

`A056811(A000586(lcm(16, n))+1)`
-/

namespace A074364.P10905928008419171382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A000586 (Nat.lcm 16 n) + 1).toNat

end

end A074364.P10905928008419171382

/-!
# A074367: (p^2-5)/4 for odd primes p.

The programs for A074367, the canonical program `A074367.P16861456900416543480` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074367 has offset 1).

The definition of A074367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074367.P13601983901769540787

`floor(sinh(log(p?[2*n+1]))²)`
-/

namespace A074367.P13601983901769540787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)) ^ 2⌋

end

end A074367.P13601983901769540787

namespace A074367

/-- `floor(sinh(log(p?[2*n+1]))²)` -/
def P13601983901769540787.Spec : Prop :=
  ∀ n, P13601983901769540787.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P16861456900416543480

`floor((p?[2*n+1]/2)²)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074367

/-- `floor((p?[2*n+1]/2)²)-1` -/
def P16861456900416543480.Spec : Prop :=
  ∀ n, P16861456900416543480.a n = A074367 (n + 1)

theorem P16861456900416543480.correct : P16861456900416543480.Spec := by
  intro n
  simp only [A074367, Nat.add_sub_cancel]

end A074367

/-! ## A074367.P4771875244645877907

`(ceil(p?[2*n+1]²/2)-3)/2`
-/

namespace A074367.P4771875244645877907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 2⌉ - 3 : ℚ) / 2

end

end A074367.P4771875244645877907

namespace A074367

/-- `(ceil(p?[2*n+1]²/2)-3)/2` -/
def P4771875244645877907.Spec : Prop :=
  ∀ n, P4771875244645877907.a n = (A074367 (n + 1) : ℚ)

end A074367

/-! ## A074367.P13004789486316000852

`((p?[2*n+1]²-3)/2-1)/2`
-/

namespace A074367.P13004789486316000852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) - 3 : ℚ) / 2 - 1) / 2

end

end A074367.P13004789486316000852

namespace A074367

/-- `((p?[2*n+1]²-3)/2-1)/2` -/
def P13004789486316000852.Spec : Prop :=
  ∀ n, P13004789486316000852.a n = (A074367 (n + 1) : ℚ)

end A074367

/-! ## A074367.P17961599902343316795

`or(1, floor((p?[abs(1-2*n)]/2)²)-2)`
-/

namespace A074367.P17961599902343316795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2) ^ 2⌋ - 2)

end

end A074367.P17961599902343316795

namespace A074367

/-- `or(1, floor((p?[abs(1-2*n)]/2)²)-2)` -/
def P17961599902343316795.Spec : Prop :=
  ∀ n, P17961599902343316795.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P14428605461553549757

`xor(1, floor((p?[abs(1-2*n)]/2)²)-2)`
-/

namespace A074367.P14428605461553549757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2) ^ 2⌋ - 2)

end

end A074367.P14428605461553549757

namespace A074367

/-- `xor(1, floor((p?[abs(1-2*n)]/2)²)-2)` -/
def P14428605461553549757.Spec : Prop :=
  ∀ n, P14428605461553549757.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P4711345876223443814

`A024701(n+1)-1`
-/

namespace A074367.P4711345876223443814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 1) - 1

end

end A074367.P4711345876223443814

namespace A074367

/-- `A024701(n+1)-1` -/
def P4711345876223443814.Spec : Prop :=
  ∀ n, P4711345876223443814.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P8655780516264244674

`A222963(n+2)+1`
-/

namespace A074367.P8655780516264244674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222963 (n + 2) + 1

end

end A074367.P8655780516264244674

namespace A074367

/-- `A222963(n+2)+1` -/
def P8655780516264244674.Spec : Prop :=
  ∀ n, P8655780516264244674.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P3190999516717276859

`∑[A062046(n+1)]+1`
-/

namespace A074367.P3190999516717276859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074367.P3190999516717276859

namespace A074367

/-- `∑[A062046(n+1)]+1` -/
def P3190999516717276859.Spec : Prop :=
  ∀ n, P3190999516717276859.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P16587304576868557134

`2*A061066(n+2)-1`
-/

namespace A074367.P16587304576868557134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061066 (n + 2) - 1

end

end A074367.P16587304576868557134

namespace A074367

/-- `2*A061066(n+2)-1` -/
def P16587304576868557134.Spec : Prop :=
  ∀ n, P16587304576868557134.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P18335144987387582187

`(A243887(n+1)-1)/2`
-/

namespace A074367.P18335144987387582187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243887 (n + 1) - 1 : ℚ) / 2

end

end A074367.P18335144987387582187

namespace A074367

/-- `(A243887(n+1)-1)/2` -/
def P18335144987387582187.Spec : Prop :=
  ∀ n, P18335144987387582187.a n = (A074367 (n + 1) : ℚ)

end A074367

/-! ## A074367.P11426011329927856649

`A216244(n+2)/2-1`
-/

namespace A074367.P11426011329927856649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216244 (n + 2) : ℚ) / 2 - 1

end

end A074367.P11426011329927856649

namespace A074367

/-- `A216244(n+2)/2-1` -/
def P11426011329927856649.Spec : Prop :=
  ∀ n, P11426011329927856649.a n = (A074367 (n + 1) : ℚ)

end A074367

/-! ## A074367.P11152902137186371717

`(A066885(n+2)-3)/2`
-/

namespace A074367.P11152902137186371717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066885 (n + 2) - 3 : ℚ) / 2

end

end A074367.P11152902137186371717

namespace A074367

/-- `(A066885(n+2)-3)/2` -/
def P11152902137186371717.Spec : Prop :=
  ∀ n, P11152902137186371717.a n = (A074367 (n + 1) : ℚ)

end A074367

/-! ## A074367.P7283156935216645642

`A243887(n+1)%A024701(n+1)`
-/

namespace A074367.P7283156935216645642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243887 (n + 1)) (A024701 (n + 1))

end

end A074367.P7283156935216645642

namespace A074367

/-- `A243887(n+1)%A024701(n+1)` -/
def P7283156935216645642.Spec : Prop :=
  ∀ n, P7283156935216645642.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P11558174425311824826

`A067076(n+1)+A005097(n+1)²`
-/

namespace A074367.P11558174425311824826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + A005097 (n + 1) ^ 2

end

end A074367.P11558174425311824826

namespace A074367

/-- `A067076(n+1)+A005097(n+1)²` -/
def P11558174425311824826.Spec : Prop :=
  ∀ n, P11558174425311824826.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P17215478362102877117

`A067076(n+1)*A098090(n+1)+1`
-/

namespace A074367.P17215478362102877117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) * A098090 (n + 1) + 1

end

end A074367.P17215478362102877117

namespace A074367

/-- `A067076(n+1)*A098090(n+1)+1` -/
def P17215478362102877117.Spec : Prop :=
  ∀ n, P17215478362102877117.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P12311485777973174809

`A005097(n+1)*A006254(n+1)-1`
-/

namespace A074367.P12311485777973174809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A006254 (n + 1) - 1

end

end A074367.P12311485777973174809

namespace A074367

/-- `A005097(n+1)*A006254(n+1)-1` -/
def P12311485777973174809.Spec : Prop :=
  ∀ n, P12311485777973174809.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P15635457047028235706

`A006254(n+1)*A006254(n+1)-A098090(n+1)`
-/

namespace A074367.P15635457047028235706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) * A006254 (n + 1) - A098090 (n + 1)

end

end A074367.P15635457047028235706

namespace A074367

/-- `A006254(n+1)*A006254(n+1)-A098090(n+1)` -/
def P15635457047028235706.Spec : Prop :=
  ∀ n, P15635457047028235706.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P6847596298176698049

`A243887(n+1)-A061066(n+2)-A061066(n+2)`
-/

namespace A074367.P6847596298176698049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243887 (n + 1) - A061066 (n + 2) - A061066 (n + 2)

end

end A074367.P6847596298176698049

namespace A074367

/-- `A243887(n+1)-A061066(n+2)-A061066(n+2)` -/
def P6847596298176698049.Spec : Prop :=
  ∀ n, P6847596298176698049.a n = A074367 (n + 1)

end A074367

/-! ## A074367.P13293672127960398531

`A067076(n+1)+A102781(n+2)*A102781(n+2)`
-/

namespace A074367.P13293672127960398531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + A102781 (n + 2) * A102781 (n + 2)

end

end A074367.P13293672127960398531

namespace A074367

/-- `A067076(n+1)+A102781(n+2)*A102781(n+2)` -/
def P13293672127960398531.Spec : Prop :=
  ∀ n, P13293672127960398531.a n = A074367 (n + 1)

end A074367

/-!
# A074368: Rearrangement of odd numbers such that a(k) + a(k+1) + 1 is a prime for all k.

The programs for A074368, there is no canonical definition to state claims against.
-/

/-! ## A074368.P12180465199692304924

`floor(A086517(n+2)/2)`
-/

namespace A074368.P12180465199692304924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086517 (n + 2) : ℚ) / 2⌋

end

end A074368.P12180465199692304924

/-! ## A074368.P14348106725204246664

`∑[Δ[A086517(n+1)]/2]`
-/

namespace A074368.P14348106725204246664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086517 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074368.P14348106725204246664

/-! ## A074368.P2482167682143640599

`A000265(A086517(n+2)-1)`
-/

namespace A074368.P2482167682143640599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A086517 (n + 2) - 1).toNat

end

end A074368.P2482167682143640599

/-! ## A074368.P6192183955610252737

`A004524(A086517(n+2))`
-/

namespace A074368.P6192183955610252737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A086517 (n + 2)).toNat

end

end A074368.P6192183955610252737

/-! ## A074368.P14048870482118539097

`A004525(A086517(n+2)-1)`
-/

namespace A074368.P14048870482118539097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A086517 (n + 2) - 1).toNat

end

end A074368.P14048870482118539097

/-! ## A074368.P3590860105515419286

`A004526(A086517(n+2)-1)`
-/

namespace A074368.P3590860105515419286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086517 (n + 2) - 1).toNat

end

end A074368.P3590860105515419286

/-! ## A074368.P17898244186390496990

`A026741(A086517(n+2)-1)`
-/

namespace A074368.P17898244186390496990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A086517 (n + 2) - 1).toNat

end

end A074368.P17898244186390496990

/-! ## A074368.P10018477880668122549

`A029578(A086517(n+2)-1)`
-/

namespace A074368.P10018477880668122549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A086517 (n + 2) - 1).toNat

end

end A074368.P10018477880668122549

/-! ## A074368.P547942107689444016

`A110654(A086517(n+2)-1)`
-/

namespace A074368.P547942107689444016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A086517 (n + 2) - 1).toNat

end

end A074368.P547942107689444016

/-! ## A074368.P406418365289599467

`A123108(A086517(n+2)-1)`
-/

namespace A074368.P406418365289599467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A086517 (n + 2) - 1).toNat

end

end A074368.P406418365289599467

/-!
# A074369: Number of divisors of Sum_{i=1..n} prime(i).

The programs for A074369, the canonical program `A074369.P8450492352750418475` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074369 has offset 1).

The definition of A074369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074369.P8450492352750418475

`A000005(A007504(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A074369

/-- `A000005(A007504(n+1))` -/
def P8450492352750418475.Spec : Prop :=
  ∀ n, P8450492352750418475.a n = A074369 (n + 1)

theorem P8450492352750418475.correct : P8450492352750418475.Spec := by
  intro n
  simp only [A074369, Nat.add_sub_cancel]

end A074369

/-! ## A074369.P14166221620174401831

`∏{e}[∑[p?[xor(1, n)+1]], #+1]`
-/

namespace A074369.P14166221620174401831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A074369.P14166221620174401831

namespace A074369

/-- `∏{e}[∑[p?[xor(1, n)+1]], #+1]` -/
def P14166221620174401831.Spec : Prop :=
  ∀ n, (P14166221620174401831.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P14865590391492834874

`∏{e}[∑[p?[A259153(n)]], #+1]`
-/

namespace A074369.P14865590391492834874
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074369.P14865590391492834874

namespace A074369

/-- `∏{e}[∑[p?[A259153(n)]], #+1]` -/
def P14865590391492834874.Spec : Prop :=
  ∀ n, (P14865590391492834874.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P9366846232921442746

`∏{e}[∑[A000040(n+1)], #+1]`
-/

namespace A074369.P9366846232921442746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074369.P9366846232921442746

namespace A074369

/-- `∏{e}[∑[A000040(n+1)], #+1]` -/
def P9366846232921442746.Spec : Prop :=
  ∀ n, (P9366846232921442746.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P7617208952406033381

`∑{d}[∑[A008578(n+2)], ceil(1/#)]`
-/

namespace A074369.P7617208952406033381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈1 / (d : ℚ)⌉

end

end A074369.P7617208952406033381

namespace A074369

/-- `∑{d}[∑[A008578(n+2)], ceil(1/#)]` -/
def P7617208952406033381.Spec : Prop :=
  ∀ n, P7617208952406033381.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P120371315948840252

`∏{e}[∑[record[A006530(n+2)]], #+1]`
-/

namespace A074369.P120371315948840252
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074369.P120371315948840252

namespace A074369

/-- `∏{e}[∑[record[A006530(n+2)]], #+1]` -/
def P120371315948840252.Spec : Prop :=
  ∀ n, (P120371315948840252.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P5233018203493663588

`∏{e}[∑[A008864(n+1)-1], #+1]`
-/

namespace A074369.P5233018203493663588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074369.P5233018203493663588

namespace A074369

/-- `∏{e}[∑[A008864(n+1)-1], #+1]` -/
def P5233018203493663588.Spec : Prop :=
  ∀ n, (P5233018203493663588.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P1981514806039942116

`∏{e}[∑[A040976(n+1)+2], #+1]`
-/

namespace A074369.P1981514806039942116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074369.P1981514806039942116

namespace A074369

/-- `∏{e}[∑[A040976(n+1)+2], #+1]` -/
def P1981514806039942116.Spec : Prop :=
  ∀ n, (P1981514806039942116.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P10015187473789398503

`∏{e}[A034387(p?[xor(1, n)+1]), #+1]`
-/

namespace A074369.P10015187473789398503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074369.P10015187473789398503

namespace A074369

/-- `∏{e}[A034387(p?[xor(1, n)+1]), #+1]` -/
def P10015187473789398503.Spec : Prop :=
  ∀ n, (P10015187473789398503.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P6934799936459003414

`∏{e}[∑[∑{d}[n+1, A007444(#)]], #+1]`
-/

namespace A074369.P6934799936459003414
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A007444 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074369.P6934799936459003414

namespace A074369

/-- `∏{e}[∑[∑{d}[n+1, A007444(#)]], #+1]` -/
def P6934799936459003414.Spec : Prop :=
  ∀ n, (P6934799936459003414.a n : ℤ) = A074369 (n + 1)

end A074369

/-! ## A074369.P16548937167999790792

`A000005(∑[p?[xor(1, n)]])`
-/

namespace A074369.P16548937167999790792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074369.P16548937167999790792

namespace A074369

/-- `A000005(∑[p?[xor(1, n)]])` -/
def P16548937167999790792.Spec : Prop :=
  ∀ n, P16548937167999790792.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P11830564817540475845

`A000005(∑[p?[comp[n²]]])`
-/

namespace A074369.P11830564817540475845
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074369.P11830564817540475845

namespace A074369

/-- `A000005(∑[p?[comp[n²]]])` -/
def P11830564817540475845.Spec : Prop :=
  ∀ n, P11830564817540475845.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P17145562262116386036

`A000005(∑[record[∑{p}[n+2, #]]])`
-/

namespace A074369.P17145562262116386036
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074369.P17145562262116386036

namespace A074369

/-- `A000005(∑[record[∑{p}[n+2, #]]])` -/
def P17145562262116386036.Spec : Prop :=
  ∀ n, P17145562262116386036.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P5163357663309558015

`A000005(∑[A000040(n+1)])`
-/

namespace A074369.P5163357663309558015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074369.P5163357663309558015

namespace A074369

/-- `A000005(∑[A000040(n+1)])` -/
def P5163357663309558015.Spec : Prop :=
  ∀ n, P5163357663309558015.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P8963187523596725850

`A000005(∑[A008578(n+2)])`
-/

namespace A074369.P8963187523596725850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074369.P8963187523596725850

namespace A074369

/-- `A000005(∑[A008578(n+2)])` -/
def P8963187523596725850.Spec : Prop :=
  ∀ n, P8963187523596725850.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P1991649302080632895

`A000005(∑[A182986(n+2)])`
-/

namespace A074369.P1991649302080632895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074369.P1991649302080632895

namespace A074369

/-- `A000005(∑[A182986(n+2)])` -/
def P1991649302080632895.Spec : Prop :=
  ∀ n, P1991649302080632895.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P4562487503113718657

`A000005(∑[A158611(n+3)])`
-/

namespace A074369.P4562487503113718657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074369.P4562487503113718657

namespace A074369

/-- `A000005(∑[A158611(n+3)])` -/
def P4562487503113718657.Spec : Prop :=
  ∀ n, P4562487503113718657.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P13234503659378606581

`A000005(record[A160793(n+2)])`
-/

namespace A074369.P13234503659378606581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074369.P13234503659378606581

namespace A074369

/-- `A000005(record[A160793(n+2)])` -/
def P13234503659378606581.Spec : Prop :=
  ∀ n, P13234503659378606581.a n = A074369 (n + 1)

end A074369

/-! ## A074369.P2550119182656304522

`A000005(A160793(2*(n+1)))`
-/

namespace A074369.P2550119182656304522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A160793 (2 * (n + 1))).toNat

end

end A074369.P2550119182656304522

namespace A074369

/-- `A000005(A160793(2*(n+1)))` -/
def P2550119182656304522.Spec : Prop :=
  ∀ n, P2550119182656304522.a n = A074369 (n + 1)

end A074369

/-!
# A074370: Sum of the divisors of Sum_{i=1..n} prime(i).

The programs for A074370, the canonical program `A074370.P10376428531819324136` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074370 has offset 1).

The definition of A074370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074370.P10376428531819324136

`A000203(A007504(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A074370

/-- `A000203(A007504(n+1))` -/
def P10376428531819324136.Spec : Prop :=
  ∀ n, P10376428531819324136.a n = A074370 (n + 1)

theorem P10376428531819324136.correct : P10376428531819324136.Spec := by
  intro n
  simp only [A074370, Nat.add_sub_cancel]

end A074370

/-! ## A074370.P6464987226788416882

`∑{d}[∑[eq[n+1, ∑{d}[n, #]]], #]`
-/

namespace A074370.P6464987226788416882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A074370.P6464987226788416882

namespace A074370

/-- `∑{d}[∑[eq[n+1, ∑{d}[n, #]]], #]` -/
def P6464987226788416882.Spec : Prop :=
  ∀ n, (P6464987226788416882.a n : ℤ) = A074370 (n + 1)

end A074370

/-! ## A074370.P18090514272954993024

`∑{d}[∑[A000040(n+1)], #]`
-/

namespace A074370.P18090514272954993024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A074370.P18090514272954993024

namespace A074370

/-- `∑{d}[∑[A000040(n+1)], #]` -/
def P18090514272954993024.Spec : Prop :=
  ∀ n, (P18090514272954993024.a n : ℤ) = A074370 (n + 1)

end A074370

/-! ## A074370.P16314641263355821649

`∑{d}[∑[A008578(n+2)], #]`
-/

namespace A074370.P16314641263355821649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A074370.P16314641263355821649

namespace A074370

/-- `∑{d}[∑[A008578(n+2)], #]` -/
def P16314641263355821649.Spec : Prop :=
  ∀ n, (P16314641263355821649.a n : ℤ) = A074370 (n + 1)

end A074370

/-! ## A074370.P13599007866490151728

`∑{d}[∑[sqrt(A001248(n+1))], #]`
-/

namespace A074370.P13599007866490151728
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A074370.P13599007866490151728

namespace A074370

/-- `∑{d}[∑[sqrt(A001248(n+1))], #]` -/
def P13599007866490151728.Spec : Prop :=
  ∀ n, (P13599007866490151728.a n : ℤ) = A074370 (n + 1)

end A074370

/-! ## A074370.P17374961721446357260

`∑{d}[∑[A006093(n+1)+1], #]`
-/

namespace A074370.P17374961721446357260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A074370.P17374961721446357260

namespace A074370

/-- `∑{d}[∑[A006093(n+1)+1], #]` -/
def P17374961721446357260.Spec : Prop :=
  ∀ n, (P17374961721446357260.a n : ℤ) = A074370 (n + 1)

end A074370

/-! ## A074370.P12946743166737866801

`∑{d}[∑[A040976(n+1)+2], #]`
-/

namespace A074370.P12946743166737866801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A074370.P12946743166737866801

namespace A074370

/-- `∑{d}[∑[A040976(n+1)+2], #]` -/
def P12946743166737866801.Spec : Prop :=
  ∀ n, (P12946743166737866801.a n : ℤ) = A074370 (n + 1)

end A074370

/-! ## A074370.P6240786397164252169

`A000203(∑[p?[comp[n²]]])`
-/

namespace A074370.P6240786397164252169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074370.P6240786397164252169

namespace A074370

/-- `A000203(∑[p?[comp[n²]]])` -/
def P6240786397164252169.Spec : Prop :=
  ∀ n, P6240786397164252169.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P11832399131426080947

`A000203(∑[record[∑{p}[n+2, #]]])`
-/

namespace A074370.P11832399131426080947
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074370.P11832399131426080947

namespace A074370

/-- `A000203(∑[record[∑{p}[n+2, #]]])` -/
def P11832399131426080947.Spec : Prop :=
  ∀ n, P11832399131426080947.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P8881065423476642403

`A000203(∑[A000040(n+1)])`
-/

namespace A074370.P8881065423476642403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P8881065423476642403

namespace A074370

/-- `A000203(∑[A000040(n+1)])` -/
def P8881065423476642403.Spec : Prop :=
  ∀ n, P8881065423476642403.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P17802054387566601319

`A000203(∑[A008578(n+2)])`
-/

namespace A074370.P17802054387566601319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P17802054387566601319

namespace A074370

/-- `A000203(∑[A008578(n+2)])` -/
def P17802054387566601319.Spec : Prop :=
  ∀ n, P17802054387566601319.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P1205617873007054814

`A000203(∑[A182986(n+2)])`
-/

namespace A074370.P1205617873007054814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P1205617873007054814

namespace A074370

/-- `A000203(∑[A182986(n+2)])` -/
def P1205617873007054814.Spec : Prop :=
  ∀ n, P1205617873007054814.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P17153108798316259482

`A000203(∑[A158611(n+3)])`
-/

namespace A074370.P17153108798316259482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P17153108798316259482

namespace A074370

/-- `A000203(∑[A158611(n+3)])` -/
def P17153108798316259482.Spec : Prop :=
  ∀ n, P17153108798316259482.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P10398028964273649820

`A000203(record[A160793(n+2)])`
-/

namespace A074370.P10398028964273649820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074370.P10398028964273649820

namespace A074370

/-- `A000203(record[A160793(n+2)])` -/
def P10398028964273649820.Spec : Prop :=
  ∀ n, P10398028964273649820.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P17162199842327512518

`A000203(A160793(2*(n+1)))`
-/

namespace A074370.P17162199842327512518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A160793 (2 * (n + 1))).toNat

end

end A074370.P17162199842327512518

namespace A074370

/-- `A000203(A160793(2*(n+1)))` -/
def P17162199842327512518.Spec : Prop :=
  ∀ n, P17162199842327512518.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P17468780450670670584

`A000203(∑[∑[A054541(n+1)]])`
-/

namespace A074370.P17468780450670670584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P17468780450670670584

namespace A074370

/-- `A000203(∑[∑[A054541(n+1)]])` -/
def P17468780450670670584.Spec : Prop :=
  ∀ n, P17468780450670670584.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P11421623188754805535

`A000203(∑[record[A006530(n+2)]])`
-/

namespace A074370.P11421623188754805535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P11421623188754805535

namespace A074370

/-- `A000203(∑[record[A006530(n+2)]])` -/
def P11421623188754805535.Spec : Prop :=
  ∀ n, P11421623188754805535.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P13509890173083792682

`A000203(∑[record[A014963(n+2)]])`
-/

namespace A074370.P13509890173083792682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P13509890173083792682

namespace A074370

/-- `A000203(∑[record[A014963(n+2)]])` -/
def P13509890173083792682.Spec : Prop :=
  ∀ n, P13509890173083792682.a n = A074370 (n + 1)

end A074370

/-! ## A074370.P15529907887977691522

`A000203(∑[record[A020639(n+2)]])`
-/

namespace A074370.P15529907887977691522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074370.P15529907887977691522

namespace A074370

/-- `A000203(∑[record[A020639(n+2)]])` -/
def P15529907887977691522.Spec : Prop :=
  ∀ n, P15529907887977691522.a n = A074370 (n + 1)

end A074370

/-!
# A074371: Sigmabonacci numbers: a(n)=a(n-1)+Sigma(a(n-2)). Sigma(n)=Sum of divisors of n.

The programs for A074371, there is no canonical definition to state claims against.
-/

/-! ## A074371.P14457068220876307788

`a(n-1)+A000203(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A074371.P14457068220876307788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A000203 (a (n - 2)).toNat

end

end A074371.P14457068220876307788

/-! ## A074371.P14527724765035680549

`A000203(a(n-2))+a(A023443(n))` with `a(0)=1, a(1)=1`
-/

namespace A074371.P14527724765035680549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000203 (a (n - 2)).toNat + a (A023443 n).toNat

end

end A074371.P14527724765035680549

/-! ## A074371.P14992695566602341407

`A227131(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A074371.P14992695566602341407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A227131 (a (n - 2)).toNat + a (n - 1)

end

end A074371.P14992695566602341407

/-! ## A074371.P11040296328234665580

`A074847(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A074371.P11040296328234665580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A074847 (a (n - 2)).toNat + a (n - 1)

end

end A074371.P11040296328234665580

/-! ## A074371.P8652739040787375476

`A097863(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A074371.P8652739040787375476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A097863 (a (n - 2)).toNat + a (n - 1)

end

end A074371.P8652739040787375476

/-!
# A074372: 1 + the sum of the distinct primes dividing n.

The programs for A074372, the canonical program `A074372.P4137528993984796168` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074372 has offset 1).

The definition of A074372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074372.P4137528993984796168

`1+A008472(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074372

/-- `1+A008472(n+1)` -/
def P4137528993984796168.Spec : Prop :=
  ∀ n, P4137528993984796168.a n = A074372 (n + 1)

theorem P4137528993984796168.correct : P4137528993984796168.Spec := by
  intro n
  simp only [A074372, Nat.add_sub_cancel]

end A074372

/-! ## A074372.P3703155002187687737

`A000203(n+1)-A023891(n+1)`
-/

namespace A074372.P3703155002187687737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A023891 (n + 1)

end

end A074372.P3703155002187687737

namespace A074372

/-- `A000203(n+1)-A023891(n+1)` -/
def P3703155002187687737.Spec : Prop :=
  ∀ n, P3703155002187687737.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P10179273403251400248

`∑{p}[n+1, #]+1`
-/

namespace A074372.P10179273403251400248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + 1

end

end A074372.P10179273403251400248

namespace A074372

/-- `∑{p}[n+1, #]+1` -/
def P10179273403251400248.Spec : Prop :=
  ∀ n, (P10179273403251400248.a n : ℤ) = A074372 (n + 1)

end A074372

/-! ## A074372.P2030496860243851300

`Δ[A024924(n)]+1`
-/

namespace A074372.P2030496860243851300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A074372.P2030496860243851300

namespace A074372

/-- `Δ[A024924(n)]+1` -/
def P2030496860243851300.Spec : Prop :=
  ∀ n, P2030496860243851300.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P17949320924007670042

`A075653(n+1)-n`
-/

namespace A074372.P17949320924007670042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - (n : ℤ)

end

end A074372.P17949320924007670042

namespace A074372

/-- `A075653(n+1)-n` -/
def P17949320924007670042.Spec : Prop :=
  ∀ n, P17949320924007670042.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P15066655678378540590

`A023888(∏{p}[n+1, #])`
-/

namespace A074372.P15066655678378540590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A074372.P15066655678378540590

namespace A074372

/-- `A023888(∏{p}[n+1, #])` -/
def P15066655678378540590.Spec : Prop :=
  ∀ n, P15066655678378540590.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P2776602200366319539

`A036288(∏{p}[n+1, #])`
-/

namespace A074372.P2776602200366319539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A074372.P2776602200366319539

namespace A074372

/-- `A036288(∏{p}[n+1, #])` -/
def P2776602200366319539.Spec : Prop :=
  ∀ n, P2776602200366319539.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P17390819916583263602

`A159077(∏{p}[n+1, #])`
-/

namespace A074372.P17390819916583263602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A074372.P17390819916583263602

namespace A074372

/-- `A159077(∏{p}[n+1, #])` -/
def P17390819916583263602.Spec : Prop :=
  ∀ n, P17390819916583263602.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P12236100911212793353

`A229022(∏{p}[n+1, #])`
-/

namespace A074372.P12236100911212793353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229022 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A074372.P12236100911212793353

namespace A074372

/-- `A229022(∏{p}[n+1, #])` -/
def P12236100911212793353.Spec : Prop :=
  ∀ n, P12236100911212793353.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P11214638935417471648

`sqrt(A235323(n+1))+1`
-/

namespace A074372.P11214638935417471648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235323 (n + 1) : ℝ) + 1

end

end A074372.P11214638935417471648

namespace A074372

/-- `sqrt(A235323(n+1))+1` -/
def P11214638935417471648.Spec : Prop :=
  ∀ n, P11214638935417471648.a n = (A074372 (n + 1) : ℝ)

end A074372

/-! ## A074372.P2021379517950214880

`A254340(n+1)-(n+1)`
-/

namespace A074372.P2021379517950214880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - (n + 1 : ℤ)

end

end A074372.P2021379517950214880

namespace A074372

/-- `A254340(n+1)-(n+1)` -/
def P2021379517950214880.Spec : Prop :=
  ∀ n, P2021379517950214880.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P8658769349346907496

`2-A076694(n+1)+n`
-/

namespace A074372.P8658769349346907496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A076694 (n + 1) + (n : ℤ)

end

end A074372.P8658769349346907496

namespace A074372

/-- `2-A076694(n+1)+n` -/
def P8658769349346907496.Spec : Prop :=
  ∀ n, P8658769349346907496.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P3511442308923664917

`∑{d}[n+1, A061397(#)]+1`
-/

namespace A074372.P3511442308923664917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d + 1

end

end A074372.P3511442308923664917

namespace A074372

/-- `∑{d}[n+1, A061397(#)]+1` -/
def P3511442308923664917.Spec : Prop :=
  ∀ n, P3511442308923664917.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P16449489854605678396

`A001414(∏{p}[n+1, #])+1`
-/

namespace A074372.P16449489854605678396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A074372.P16449489854605678396

namespace A074372

/-- `A001414(∏{p}[n+1, #])+1` -/
def P16449489854605678396.Spec : Prop :=
  ∀ n, P16449489854605678396.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P5283982823737728954

`A008475(∏{p}[n+1, #])+1`
-/

namespace A074372.P5283982823737728954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A074372.P5283982823737728954

namespace A074372

/-- `A008475(∏{p}[n+1, #])+1` -/
def P5283982823737728954.Spec : Prop :=
  ∀ n, P5283982823737728954.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P11734743725347295848

`∑{d}[n+1, #*A080339(#)]`
-/

namespace A074372.P11734743725347295848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A080339 d

end

end A074372.P11734743725347295848

namespace A074372

/-- `∑{d}[n+1, #*A080339(#)]` -/
def P11734743725347295848.Spec : Prop :=
  ∀ n, P11734743725347295848.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P3856117081465439334

`∑{d}[n+1, #*floor(A006530(#)/#)]`
-/

namespace A074372.P3856117081465439334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ⌊(A006530 d : ℚ) / (d : ℚ)⌋

end

end A074372.P3856117081465439334

namespace A074372

/-- `∑{d}[n+1, #*floor(A006530(#)/#)]` -/
def P3856117081465439334.Spec : Prop :=
  ∀ n, P3856117081465439334.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P5580282514889659712

`A023888(A007947(n+1))`
-/

namespace A074372.P5580282514889659712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A007947 (n + 1)).toNat

end

end A074372.P5580282514889659712

namespace A074372

/-- `A023888(A007947(n+1))` -/
def P5580282514889659712.Spec : Prop :=
  ∀ n, P5580282514889659712.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P15156078963768406719

`A010684(n)+A005069(n+1)`
-/

namespace A074372.P15156078963768406719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n + A005069 (n + 1)

end

end A074372.P15156078963768406719

namespace A074372

/-- `A010684(n)+A005069(n+1)` -/
def P15156078963768406719.Spec : Prop :=
  ∀ n, P15156078963768406719.a n = A074372 (n + 1)

end A074372

/-! ## A074372.P13353161439057146634

`A100030(n+1)-A033999(n)`
-/

namespace A074372.P13353161439057146634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) - A033999 n

end

end A074372.P13353161439057146634

namespace A074372

/-- `A100030(n+1)-A033999(n)` -/
def P13353161439057146634.Spec : Prop :=
  ∀ n, P13353161439057146634.a n = A074372 (n + 1)

end A074372

/-!
# A074373: Square of the sum of the prime factors of n (with repetition).

The programs for A074373, the canonical program `A074373.P3467722491980429131` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074373 has offset 1).

The definition of A074373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074373.P3467722491980429131

`∑{p}[n+1, #*val(n+1, #)]²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074373

/-- `∑{p}[n+1, #*val(n+1, #)]²` -/
def P3467722491980429131.Spec : Prop :=
  ∀ n, (P3467722491980429131.a n : ℤ) = A074373 (n + 1)

theorem P3467722491980429131.correct : P3467722491980429131.Spec := by
  intro n
  simp only [A074373, Nat.add_sub_cancel]

end A074373

/-! ## A074373.P2863315052375311328

`Δ[A025281(n)]²`
-/

namespace A074373.P2863315052375311328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A074373.P2863315052375311328

namespace A074373

/-- `Δ[A025281(n)]²` -/
def P2863315052375311328.Spec : Prop :=
  ∀ n, P2863315052375311328.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P8033084518210981547

`A001414(n+1)²`
-/

namespace A074373.P8033084518210981547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) ^ 2

end

end A074373.P8033084518210981547

namespace A074373

/-- `A001414(n+1)²` -/
def P8033084518210981547.Spec : Prop :=
  ∀ n, P8033084518210981547.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P12580848996431237936

`(1-A036288(n+1))²`
-/

namespace A074373.P12580848996431237936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A036288 (n + 1)) ^ 2

end

end A074373.P12580848996431237936

namespace A074373

/-- `(1-A036288(n+1))²` -/
def P12580848996431237936.Spec : Prop :=
  ∀ n, P12580848996431237936.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P1184478023098719024

`(2-A100006(n+1))²`
-/

namespace A074373.P1184478023098719024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A100006 (n + 1)) ^ 2

end

end A074373.P1184478023098719024

namespace A074373

/-- `(2-A100006(n+1))²` -/
def P1184478023098719024.Spec : Prop :=
  ∀ n, P1184478023098719024.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P3749451999282782824

`∑{d}[n+1, A120007(#)]²`
-/

namespace A074373.P3749451999282782824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A120007 d) ^ 2

end

end A074373.P3749451999282782824

namespace A074373

/-- `∑{d}[n+1, A120007(#)]²` -/
def P3749451999282782824.Spec : Prop :=
  ∀ n, P3749451999282782824.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P11221248399973774506

`(1-A075254(n+1)+n)²`
-/

namespace A074373.P11221248399973774506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075254 (n + 1) + (n : ℤ)) ^ 2

end

end A074373.P11221248399973774506

namespace A074373

/-- `(1-A075254(n+1)+n)²` -/
def P11221248399973774506.Spec : Prop :=
  ∀ n, P11221248399973774506.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P4936725145916416228

`(1-A075255(n+1)+n)²`
-/

namespace A074373.P4936725145916416228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075255 (n + 1) + (n : ℤ)) ^ 2

end

end A074373.P4936725145916416228

namespace A074373

/-- `(1-A075255(n+1)+n)²` -/
def P4936725145916416228.Spec : Prop :=
  ∀ n, P4936725145916416228.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P4580135670465852370

`A255384(n+1)+2*(n+1)`
-/

namespace A074373.P4580135670465852370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255384 (n + 1) + (2 * (n + 1) : ℤ)

end

end A074373.P4580135670465852370

namespace A074373

/-- `A255384(n+1)+2*(n+1)` -/
def P4580135670465852370.Spec : Prop :=
  ∀ n, P4580135670465852370.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P9549704973913842081

`(A280292(n+1)+∑{p}[n+1, #])²`
-/

namespace A074373.P9549704973913842081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280292 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)) ^ 2

end

end A074373.P9549704973913842081

namespace A074373

/-- `(A280292(n+1)+∑{p}[n+1, #])²` -/
def P9549704973913842081.Spec : Prop :=
  ∀ n, P9549704973913842081.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P16680606750328858766

`A023443(A036288(n+1))²`
-/

namespace A074373.P16680606750328858766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036288 (n + 1)).toNat ^ 2

end

end A074373.P16680606750328858766

namespace A074373

/-- `A023443(A036288(n+1))²` -/
def P16680606750328858766.Spec : Prop :=
  ∀ n, P16680606750328858766.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P16114640757333911606

`A023444(A100006(n+1))²`
-/

namespace A074373.P16114640757333911606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A100006 (n + 1)).toNat ^ 2

end

end A074373.P16114640757333911606

namespace A074373

/-- `A023444(A100006(n+1))²` -/
def P16114640757333911606.Spec : Prop :=
  ∀ n, P16114640757333911606.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P11065914627406539861

`A181894(A354547(n+1))²`
-/

namespace A074373.P11065914627406539861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A354547 (n + 1)).toNat ^ 2

end

end A074373.P11065914627406539861

namespace A074373

/-- `A181894(A354547(n+1))²` -/
def P11065914627406539861.Spec : Prop :=
  ∀ n, P11065914627406539861.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P9279111708894976942

`∑{d}[A001414(n+1), A007434(#)]`
-/

namespace A074373.P9279111708894976942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007434 d

end

end A074373.P9279111708894976942

namespace A074373

/-- `∑{d}[A001414(n+1), A007434(#)]` -/
def P9279111708894976942.Spec : Prop :=
  ∀ n, P9279111708894976942.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P1065729310417009567

`(A025281(n+1)-A025281(n))²`
-/

namespace A074373.P1065729310417009567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025281 (n + 1) - A025281 n) ^ 2

end

end A074373.P1065729310417009567

namespace A074373

/-- `(A025281(n+1)-A025281(n))²` -/
def P1065729310417009567.Spec : Prop :=
  ∀ n, P1065729310417009567.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P6680635340763280893

`(A280292(n+1)+A008472(n+1))²`
-/

namespace A074373.P6680635340763280893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280292 (n + 1) + A008472 (n + 1)) ^ 2

end

end A074373.P6680635340763280893

namespace A074373

/-- `(A280292(n+1)+A008472(n+1))²` -/
def P6680635340763280893.Spec : Prop :=
  ∀ n, P6680635340763280893.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P1679493309576833187

`A001414(n+1)*A001414(A354547(n+1))`
-/

namespace A074373.P1679493309576833187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A001414 (A354547 (n + 1)).toNat

end

end A074373.P1679493309576833187

namespace A074373

/-- `A001414(n+1)*A001414(A354547(n+1))` -/
def P1679493309576833187.Spec : Prop :=
  ∀ n, P1679493309576833187.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P10713307187908046117

`(A025281(n+1)-A025281(n))*A001414(n+1)`
-/

namespace A074373.P10713307187908046117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025281 (n + 1) - A025281 n) * A001414 (n + 1)

end

end A074373.P10713307187908046117

namespace A074373

/-- `(A025281(n+1)-A025281(n))*A001414(n+1)` -/
def P10713307187908046117.Spec : Prop :=
  ∀ n, P10713307187908046117.a n = A074373 (n + 1)

end A074373

/-! ## A074373.P12346136968730423832

`A163407(n+1)+A163407(n+1)+A067666(n+1)`
-/

namespace A074373.P12346136968730423832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (n + 1) + (A163407 (n + 1) + A067666 (n + 1))

end

end A074373.P12346136968730423832

namespace A074373

/-- `A163407(n+1)+A163407(n+1)+A067666(n+1)` -/
def P12346136968730423832.Spec : Prop :=
  ∀ n, P12346136968730423832.a n = A074373 (n + 1)

end A074373

/-!
# A074374: a(n) = sopfr(n)*(sopfr(n)+1)/2 where sopfr is the sum of the prime factors of n with repetition (A001414).

The programs for A074374, the canonical program `A074374.P17699635575906020562` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074374 has offset 0).

The definition of A074374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074374.P17699635575906020562

`C(A036288(A028310(n)), 2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074374

/-- `C(A036288(A028310(n)), 2)` -/
def P17699635575906020562.Spec : Prop :=
  ∀ n, (P17699635575906020562.a n : ℤ) = A074374 n

theorem P17699635575906020562.correct : P17699635575906020562.Spec := by
  intro n
  simp only [A074374]

end A074374

/-! ## A074374.P12865591654389523686

`A000217(∑{d}[n, A120007(#)])`
-/

namespace A074374.P12865591654389523686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), A120007 d).toNat

end

end A074374.P12865591654389523686

namespace A074374

/-- `A000217(∑{d}[n, A120007(#)])` -/
def P12865591654389523686.Spec : Prop :=
  ∀ n, P12865591654389523686.a n = A074374 n

end A074374

/-! ## A074374.P12407604594673834192

`A000217(A001414(round(sqrt(n²+1))))`
-/

namespace A074374.P12407604594673834192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001414 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A074374.P12407604594673834192

namespace A074374

/-- `A000217(A001414(round(sqrt(n²+1))))` -/
def P12407604594673834192.Spec : Prop :=
  ∀ n, P12407604594673834192.a n = A074374 n

end A074374

/-! ## A074374.P7318401660769305016

`A000217(n-A075255(abs(1-n)+1))`
-/

namespace A074374.P7318401660769305016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A075255 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A074374.P7318401660769305016

namespace A074374

/-- `A000217(n-A075255(abs(1-n)+1))` -/
def P7318401660769305016.Spec : Prop :=
  ∀ n, P7318401660769305016.a n = A074374 n

end A074374

/-!
# A074375: s(s+3)/2 where s is the sum of the prime factors of n (with repetition).

The programs for A074375, the canonical program `A074375.P4224621824239631708` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074375 has offset 1).

The definition of A074375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074375.P4224621824239631708

`C(∑{p}[n+1, #*val(n+1, #)]+2, 2)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074375

/-- `C(∑{p}[n+1, #*val(n+1, #)]+2, 2)-1` -/
def P4224621824239631708.Spec : Prop :=
  ∀ n, P4224621824239631708.a n = A074375 (n + 1)

theorem P4224621824239631708.correct : P4224621824239631708.Spec := by
  intro n
  simp only [A074375, Nat.add_sub_cancel]

end A074375

/-! ## A074375.P2129518590655634363

`(∑{p}[n+1, #*val(n+1, #)]+3)/2*∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A074375.P2129518590655634363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 3 : ℕ) : ℚ) / 2 * ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ)

end

end A074375.P2129518590655634363

namespace A074375

/-- `(∑{p}[n+1, #*val(n+1, #)]+3)/2*∑{p}[n+1, #*val(n+1, #)]` -/
def P2129518590655634363.Spec : Prop :=
  ∀ n, P2129518590655634363.a n = (A074375 (n + 1) : ℚ)

end A074375

/-! ## A074375.P2323208350387697095

`C(Δ[A025281(n)]+2, 2)-1`
-/

namespace A074375.P2323208350387697095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (n + 1) - f1 n + 2).toNat 2 : ℤ) - 1

end

end A074375.P2323208350387697095

namespace A074375

/-- `C(Δ[A025281(n)]+2, 2)-1` -/
def P2323208350387697095.Spec : Prop :=
  ∀ n, P2323208350387697095.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P435719874183193072

`C(A036288(n+1)+1, 2)-1`
-/

namespace A074375.P435719874183193072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A036288 (n + 1) + 1).toNat 2 : ℤ) - 1

end

end A074375.P435719874183193072

namespace A074375

/-- `C(A036288(n+1)+1, 2)-1` -/
def P435719874183193072.Spec : Prop :=
  ∀ n, P435719874183193072.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P2708635662545212674

`C(A001414(n+1)+2, 2)-1`
-/

namespace A074375.P2708635662545212674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001414 (n + 1) + 2).toNat 2 : ℤ) - 1

end

end A074375.P2708635662545212674

namespace A074375

/-- `C(A001414(n+1)+2, 2)-1` -/
def P2708635662545212674.Spec : Prop :=
  ∀ n, P2708635662545212674.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P10801171633147750917

`C(sqrt(A074373(n+1))+2, 2)-1`
-/

namespace A074375.P10801171633147750917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A074373 (n + 1) : ℝ) + 2)).toNat 2 : ℤ) - 1

end

end A074375.P10801171633147750917

namespace A074375

/-- `C(sqrt(A074373(n+1))+2, 2)-1` -/
def P10801171633147750917.Spec : Prop :=
  ∀ n, P10801171633147750917.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P1667464000784607967

`C(A075254(n+1)-(n-1), 2)-1`
-/

namespace A074375.P1667464000784607967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A075254 (n + 1) - ((n : ℤ) - 1)).toNat 2 : ℤ) - 1

end

end A074375.P1667464000784607967

namespace A074375

/-- `C(A075254(n+1)-(n-1), 2)-1` -/
def P1667464000784607967.Spec : Prop :=
  ∀ n, P1667464000784607967.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P4972054125767896175

`A000096(∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A074375.P4972054125767896175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A074375.P4972054125767896175

namespace A074375

/-- `A000096(∑{p}[n+1, #*val(n+1, #)])` -/
def P4972054125767896175.Spec : Prop :=
  ∀ n, P4972054125767896175.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P6720896067012698036

`A000096(Δ[A025281(n)])`
-/

namespace A074375.P6720896067012698036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (f1 (n + 1) - f1 n).toNat

end

end A074375.P6720896067012698036

namespace A074375

/-- `A000096(Δ[A025281(n)])` -/
def P6720896067012698036.Spec : Prop :=
  ∀ n, P6720896067012698036.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P1290073663141372209

`A000096(A001414(n+1))`
-/

namespace A074375.P1290073663141372209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A001414 (n + 1)).toNat

end

end A074375.P1290073663141372209

namespace A074375

/-- `A000096(A001414(n+1))` -/
def P1290073663141372209.Spec : Prop :=
  ∀ n, P1290073663141372209.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P7307902240112619735

`A000217(A036288(n+1))-1`
-/

namespace A074375.P7307902240112619735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A036288 (n + 1)).toNat - 1

end

end A074375.P7307902240112619735

namespace A074375

/-- `A000217(A036288(n+1))-1` -/
def P7307902240112619735.Spec : Prop :=
  ∀ n, P7307902240112619735.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P18403141280657086502

`A074374(n+1)+A001414(n+1)`
-/

namespace A074375.P18403141280657086502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074374 (n + 1) + A001414 (n + 1)

end

end A074375.P18403141280657086502

namespace A074375

/-- `A074374(n+1)+A001414(n+1)` -/
def P18403141280657086502.Spec : Prop :=
  ∀ n, P18403141280657086502.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P6202614676927274715

`A025281(n+1)+A074374(n+1)-A025281(n)`
-/

namespace A074375.P6202614676927274715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1) + (A074374 (n + 1) - A025281 n)

end

end A074375.P6202614676927274715

namespace A074375

/-- `A025281(n+1)+A074374(n+1)-A025281(n)` -/
def P6202614676927274715.Spec : Prop :=
  ∀ n, P6202614676927274715.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P14300432083640439083

`A008475(n+1)+A074374(n+1)-A078771(n+1)`
-/

namespace A074375.P14300432083640439083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (A074374 (n + 1) - A078771 (n + 1))

end

end A074375.P14300432083640439083

namespace A074375

/-- `A008475(n+1)+A074374(n+1)-A078771(n+1)` -/
def P14300432083640439083.Spec : Prop :=
  ∀ n, P14300432083640439083.a n = A074375 (n + 1)

end A074375

/-! ## A074375.P18163885563416738394

`A061579(A074374(n+1))`
-/

namespace A074375.P18163885563416738394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A074374 (n + 1)).toNat

end

end A074375.P18163885563416738394

namespace A074375

/-- `A061579(A074374(n+1))` -/
def P18163885563416738394.Spec : Prop :=
  ∀ n, P18163885563416738394.a n = A074375 (n + 1)

end A074375

/-!
# A074376: s(3s-1)/2 where s is the sum of the prime factors of n (with repetition).

The programs for A074376, the canonical program `A074376.P14527099379225967427` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074376 has offset 1).

The definition of A074376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074376.P14527099379225967427

`A000326(A001414(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074376

/-- `A000326(A001414(n+1))` -/
def P14527099379225967427.Spec : Prop :=
  ∀ n, P14527099379225967427.a n = A074376 (n + 1)

theorem P14527099379225967427.correct : P14527099379225967427.Spec := by
  intro n
  simp only [A074376, Nat.add_sub_cancel]

end A074376

/-! ## A074376.P13390454916247330226

`A000326(A036288(n+1)-1)`
-/

namespace A074376.P13390454916247330226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A036288 (n + 1) - 1).toNat

end

end A074376.P13390454916247330226

namespace A074376

/-- `A000326(A036288(n+1)-1)` -/
def P13390454916247330226.Spec : Prop :=
  ∀ n, P13390454916247330226.a n = A074376 (n + 1)

end A074376

/-! ## A074376.P865530711017523592

`A074373(n+1)+C(sqrt(A074373(n+1)), 2)`
-/

namespace A074376.P865530711017523592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (n + 1) + (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A074373 (n + 1) : ℝ))).toNat 2 : ℤ)

end

end A074376.P865530711017523592

namespace A074376

/-- `A074373(n+1)+C(sqrt(A074373(n+1)), 2)` -/
def P865530711017523592.Spec : Prop :=
  ∀ n, P865530711017523592.a n = A074376 (n + 1)

end A074376

/-! ## A074376.P14965966357531490897

`A000326(A074375(n+1)-A074374(n+1))`
-/

namespace A074376.P14965966357531490897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A074375 (n + 1) - A074374 (n + 1)).toNat

end

end A074376.P14965966357531490897

namespace A074376

/-- `A000326(A074375(n+1)-A074374(n+1))` -/
def P14965966357531490897.Spec : Prop :=
  ∀ n, P14965966357531490897.a n = A074376 (n + 1)

end A074376

/-! ## A074376.P11060245365425535047

`A074373(n+1)+A074374(n+1)-A001414(n+1)`
-/

namespace A074376.P11060245365425535047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (n + 1) + (A074374 (n + 1) - A001414 (n + 1))

end

end A074376.P11060245365425535047

namespace A074376

/-- `A074373(n+1)+A074374(n+1)-A001414(n+1)` -/
def P11060245365425535047.Spec : Prop :=
  ∀ n, P11060245365425535047.a n = A074376 (n + 1)

end A074376

/-! ## A074376.P18200265930871389862

`A001318(2*A001414(n+1))-A001414(n+1)`
-/

namespace A074376.P18200265930871389862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * A001414 (n + 1)).toNat - A001414 (n + 1)

end

end A074376.P18200265930871389862

namespace A074376

/-- `A001318(2*A001414(n+1))-A001414(n+1)` -/
def P18200265930871389862.Spec : Prop :=
  ∀ n, P18200265930871389862.a n = A074376 (n + 1)

end A074376

/-! ## A074376.P15288133005748413145

`A058212(3*A001414(n+1)+1)`
-/

namespace A074376.P15288133005748413145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (3 * A001414 (n + 1) + 1).toNat

end

end A074376.P15288133005748413145

namespace A074376

/-- `A058212(3*A001414(n+1)+1)` -/
def P15288133005748413145.Spec : Prop :=
  ∀ n, P15288133005748413145.a n = A074376 (n + 1)

end A074376

/-! ## A074376.P16266572822882012408

`A001318(A001414((n+1)²))-A001414(n+1)`
-/

namespace A074376.P16266572822882012408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A001414 ((n + 1) ^ 2)).toNat - A001414 (n + 1)

end

end A074376.P16266572822882012408

namespace A074376

/-- `A001318(A001414((n+1)²))-A001414(n+1)` -/
def P16266572822882012408.Spec : Prop :=
  ∀ n, P16266572822882012408.a n = A074376 (n + 1)

end A074376

/-! ## A074376.P15568326436781895053

`A360962(A074375(n+1))`
-/

namespace A074376.P15568326436781895053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360962 (A074375 (n + 1)).toNat

end

end A074376.P15568326436781895053

namespace A074376

/-- `A360962(A074375(n+1))` -/
def P15568326436781895053.Spec : Prop :=
  ∀ n, P15568326436781895053.a n = A074376 (n + 1)

end A074376

/-!
# A074377: Generalized 10-gonal numbers: m*(4*m - 3) for m = 0, +- 1, +- 2, +- 3, ...

The programs for A074377, the canonical program `A074377.P3779048009586595016` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074377 has offset 0).

The definition of A074377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074377.P3779048009586595016

`∑[n*gcd(3, n%2)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074377

/-- `∑[n*gcd(3, n%2)]` -/
def P3779048009586595016.Spec : Prop :=
  ∀ n, (P3779048009586595016.a n : ℤ) = A074377 n

theorem P3779048009586595016.correct : P3779048009586595016.Spec := by
  intro n
  simp only [A074377]

end A074377

/-! ## A074377.P18351694787030054484

`∑[n*or(1, gcd(2, n))]`
-/

namespace A074377.P18351694787030054484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074377.P18351694787030054484

namespace A074377

/-- `∑[n*or(1, gcd(2, n))]` -/
def P18351694787030054484.Spec : Prop :=
  ∀ n, (P18351694787030054484.a n : ℤ) = A074377 n

end A074377

/-! ## A074377.P9603697750481251544

`∑[n*((-1)^n+2)]`
-/

namespace A074377.P9603697750481251544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074377.P9603697750481251544

namespace A074377

/-- `∑[n*((-1)^n+2)]` -/
def P9603697750481251544.Spec : Prop :=
  ∀ n, P9603697750481251544.a n = A074377 n

end A074377

/-! ## A074377.P9013319154969939350

`floor(record[C(or(2, n), 2)]/2)`
-/

namespace A074377.P9013319154969939350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A074377.P9013319154969939350

namespace A074377

/-- `floor(record[C(or(2, n), 2)]/2)` -/
def P9013319154969939350.Spec : Prop :=
  ∀ n, P9013319154969939350.a n = A074377 n

end A074377

/-! ## A074377.P1935055529803037482

`(record[C(or(2, n), 2)]-1)/2`
-/

namespace A074377.P1935055529803037482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1 : ℚ) / 2

end

end A074377.P1935055529803037482

namespace A074377

/-- `(record[C(or(2, n), 2)]-1)/2` -/
def P1935055529803037482.Spec : Prop :=
  ∀ n, P1935055529803037482.a n = (A074377 n : ℚ)

end A074377

/-! ## A074377.P7910224358522604859

`floor(n/2*or(3, 2*n))`
-/

namespace A074377.P7910224358522604859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ)⌋

end

end A074377.P7910224358522604859

namespace A074377

/-- `floor(n/2*or(3, 2*n))` -/
def P7910224358522604859.Spec : Prop :=
  ∀ n, P7910224358522604859.a n = A074377 n

end A074377

/-! ## A074377.P1189590115298170457

`xor(3, 2*n)*ceil(n/2)`
-/

namespace A074377.P1189590115298170457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (2 * n) : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A074377.P1189590115298170457

namespace A074377

/-- `xor(3, 2*n)*ceil(n/2)` -/
def P1189590115298170457.Spec : Prop :=
  ∀ n, P1189590115298170457.a n = A074377 n

end A074377

/-! ## A074377.P6593821551650398154

`record[(or(2, n)²-n)/4]-1`
-/

namespace A074377.P6593821551650398154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A074377.P6593821551650398154

namespace A074377

/-- `record[(or(2, n)²-n)/4]-1` -/
def P6593821551650398154.Spec : Prop :=
  ∀ n, P6593821551650398154.a n = (A074377 n : ℚ)

end A074377

/-! ## A074377.P10056792674524720086

`3*∑[n/and(3, 2*n+1)]`
-/

namespace A074377.P10056792674524720086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land 3 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074377.P10056792674524720086

namespace A074377

/-- `3*∑[n/and(3, 2*n+1)]` -/
def P10056792674524720086.Spec : Prop :=
  ∀ n, P10056792674524720086.a n = (A074377 n : ℚ)

end A074377

/-! ## A074377.P4219077152447292361

`a(n-1)+n*((-1)^n+2)` with `a(0)=0`
-/

namespace A074377.P4219077152447292361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((-1) ^ n + 2)

end

end A074377.P4219077152447292361

namespace A074377

/-- `a(n-1)+n*((-1)^n+2)` -/
def P4219077152447292361.Spec : Prop :=
  ∀ n, P4219077152447292361.a n = A074377 n

end A074377

/-! ## A074377.P13104081743810390451

`floor(∑[n*(2-(-1)^a(n-1))])` with `a(0)=0`
-/

namespace A074377.P13104081743810390451
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℝ) * (2 - (-1 : ℝ) ^ (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A074377.P13104081743810390451

namespace A074377

/-- `floor(∑[n*(2-(-1)^a(n-1))])` -/
def P13104081743810390451.Spec : Prop :=
  ∀ n, P13104081743810390451.a n = A074377 n

end A074377

/-! ## A074377.P3292044306159694005

`∑[a(n-2)+8]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A074377.P3292044306159694005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A074377.P3292044306159694005

namespace A074377

/-- `∑[a(n-2)+8]-a(n-1)` -/
def P3292044306159694005.Spec : Prop :=
  ∀ n, P3292044306159694005.a n = A074377 n

end A074377

/-! ## A074377.P15926349229810128397

`(2*n+1)*a(n-1)%n+n` with `a(0)=0`
-/

namespace A074377.P15926349229810128397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1) * (a (n - 1) % n) + n

end

end A074377.P15926349229810128397

namespace A074377

/-- `(2*n+1)*a(n-1)%n+n` -/
def P15926349229810128397.Spec : Prop :=
  ∀ n, (P15926349229810128397.a n : ℤ) = A074377 n

end A074377

/-! ## A074377.P1619546485040614885

`A071045(n)+n²`
-/

namespace A074377.P1619546485040614885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + (n ^ 2 : ℤ)

end

end A074377.P1619546485040614885

namespace A074377

/-- `A071045(n)+n²` -/
def P1619546485040614885.Spec : Prop :=
  ∀ n, P1619546485040614885.a n = A074377 n

end A074377

/-! ## A074377.P5202997554650279161

`A174114(n+1)-1`
-/

namespace A074377.P5202997554650279161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 1) - 1

end

end A074377.P5202997554650279161

namespace A074377

/-- `A174114(n+1)-1` -/
def P5202997554650279161.Spec : Prop :=
  ∀ n, P5202997554650279161.a n = A074377 n

end A074377

/-! ## A074377.P14229859896228234709

`(sqrt(A014736(n))-1)/2`
-/

namespace A074377.P14229859896228234709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A014736 n : ℝ) - 1) / 2

end

end A074377.P14229859896228234709

namespace A074377

/-- `(sqrt(A014736(n))-1)/2` -/
def P14229859896228234709.Spec : Prop :=
  ∀ n, P14229859896228234709.a n = (A074377 n : ℝ)

end A074377

/-! ## A074377.P17693332047788544911

`(∑[A035877(n)]-1)/2`
-/

namespace A074377.P17693332047788544911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A074377.P17693332047788544911

namespace A074377

/-- `(∑[A035877(n)]-1)/2` -/
def P17693332047788544911.Spec : Prop :=
  ∀ n, P17693332047788544911.a n = (A074377 n : ℚ)

end A074377

/-! ## A074377.P6919005730422221773

`A324245(2*n)+n²`
-/

namespace A074377.P6919005730422221773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (2 * n) + (n ^ 2 : ℤ)

end

end A074377.P6919005730422221773

namespace A074377

/-- `A324245(2*n)+n²` -/
def P6919005730422221773.Spec : Prop :=
  ∀ n, P6919005730422221773.a n = A074377 n

end A074377

/-! ## A074377.P5623641621385011684

`A186424(n)-(∑[n]+1)`
-/

namespace A074377.P5623641621385011684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A074377.P5623641621385011684

namespace A074377

/-- `A186424(n)-(∑[n]+1)` -/
def P5623641621385011684.Spec : Prop :=
  ∀ n, P5623641621385011684.a n = A074377 n

end A074377

/-! ## A074377.P10507034758624185181

`∑[n]+2*A110660(n)`
-/

namespace A074377.P10507034758624185181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A110660 n

end

end A074377.P10507034758624185181

namespace A074377

/-- `∑[n]+2*A110660(n)` -/
def P10507034758624185181.Spec : Prop :=
  ∀ n, P10507034758624185181.a n = A074377 n

end A074377

/-!
# A074378: Even triangular numbers halved.

The programs for A074378, the canonical program `A074378.P2787837138064449848` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074378 has offset 0).

The definition of A074378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074378.P2787837138064449848

`(2*n+1)*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074378

/-- `(2*n+1)*floor((n+1)/2)` -/
def P2787837138064449848.Spec : Prop :=
  ∀ n, P2787837138064449848.a n = A074378 n

theorem P2787837138064449848.correct : P2787837138064449848.Spec := by
  intro n
  simp only [A074378]

end A074378

/-! ## A074378.P17890937909878720202

`A266883(n)-1`
-/

namespace A074378.P17890937909878720202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 n - 1

end

end A074378.P17890937909878720202

namespace A074378

/-- `A266883(n)-1` -/
def P17890937909878720202.Spec : Prop :=
  ∀ n, P17890937909878720202.a n = A074378 n

end A074378

/-! ## A074378.P15986573198213621111

`A014494(n)/2`
-/

namespace A074378.P15986573198213621111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014494 n : ℚ) / 2

end

end A074378.P15986573198213621111

namespace A074378

/-- `A014494(n)/2` -/
def P15986573198213621111.Spec : Prop :=
  ∀ n, P15986573198213621111.a n = (A074378 n : ℚ)

end A074378

/-! ## A074378.P11305326959421676078

`A274757(n+1)/3`
-/

namespace A074378.P11305326959421676078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274757 (n + 1) : ℚ) / 3

end

end A074378.P11305326959421676078

namespace A074378

/-- `A274757(n+1)/3` -/
def P11305326959421676078.Spec : Prop :=
  ∀ n, P11305326959421676078.a n = (A074378 n : ℚ)

end A074378

/-! ## A074378.P210147316485402938

`∑[2*lcm(2, n)-n]`
-/

namespace A074378.P210147316485402938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P210147316485402938

namespace A074378

/-- `∑[2*lcm(2, n)-n]` -/
def P210147316485402938.Spec : Prop :=
  ∀ n, P210147316485402938.a n = A074378 n

end A074378

/-! ## A074378.P9249289619202647131

`∑[n*3^(n%2)]`
-/

namespace A074378.P9249289619202647131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P9249289619202647131

namespace A074378

/-- `∑[n*3^(n%2)]` -/
def P9249289619202647131.Spec : Prop :=
  ∀ n, (P9249289619202647131.a n : ℤ) = A074378 n

end A074378

/-! ## A074378.P13757270828912895087

`∑[n*3^and(1, n)]`
-/

namespace A074378.P13757270828912895087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P13757270828912895087

namespace A074378

/-- `∑[n*3^and(1, n)]` -/
def P13757270828912895087.Spec : Prop :=
  ∀ n, (P13757270828912895087.a n : ℤ) = A074378 n

end A074378

/-! ## A074378.P8881668575318379903

`∑[n*C(3, and(1, n))]`
-/

namespace A074378.P8881668575318379903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 3 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P8881668575318379903

namespace A074378

/-- `∑[n*C(3, and(1, n))]` -/
def P8881668575318379903.Spec : Prop :=
  ∀ n, (P8881668575318379903.a n : ℤ) = A074378 n

end A074378

/-! ## A074378.P11706423651312011588

`∑[n*and(3, Δ[n²])]`
-/

namespace A074378.P11706423651312011588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P11706423651312011588

namespace A074378

/-- `∑[n*and(3, Δ[n²])]` -/
def P11706423651312011588.Spec : Prop :=
  ∀ n, P11706423651312011588.a n = A074378 n

end A074378

/-! ## A074378.P14217730304545959722

`∑[n*(Δ[or(1, n)]+1)]`
-/

namespace A074378.P14217730304545959722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P14217730304545959722

namespace A074378

/-- `∑[n*(Δ[or(1, n)]+1)]` -/
def P14217730304545959722.Spec : Prop :=
  ∀ n, P14217730304545959722.a n = A074378 n

end A074378

/-! ## A074378.P7372581458770468954

`lcm(2*n+1, ceil(n/2))`
-/

namespace A074378.P7372581458770468954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ⌈(n : ℚ) / 2⌉

end

end A074378.P7372581458770468954

namespace A074378

/-- `lcm(2*n+1, ceil(n/2))` -/
def P7372581458770468954.Spec : Prop :=
  ∀ n, (P7372581458770468954.a n : ℤ) = A074378 n

end A074378

/-! ## A074378.P15391104681016391310

`∑[n*(2*n+1)%4]`
-/

namespace A074378.P15391104681016391310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((2 * n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P15391104681016391310

namespace A074378

/-- `∑[n*(2*n+1)%4]` -/
def P15391104681016391310.Spec : Prop :=
  ∀ n, (P15391104681016391310.a n : ℤ) = A074378 n

end A074378

/-! ## A074378.P12946506502988995474

`∑[n*(2*and(1, n)+1)]`
-/

namespace A074378.P12946506502988995474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P12946506502988995474

namespace A074378

/-- `∑[n*(2*and(1, n)+1)]` -/
def P12946506502988995474.Spec : Prop :=
  ∀ n, (P12946506502988995474.a n : ℤ) = A074378 n

end A074378

/-! ## A074378.P209233943404746427

`∑[n*(5-2*gcd(2, n))]`
-/

namespace A074378.P209233943404746427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (5 - (2 * Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P209233943404746427

namespace A074378

/-- `∑[n*(5-2*gcd(2, n))]` -/
def P209233943404746427.Spec : Prop :=
  ∀ n, P209233943404746427.a n = A074378 n

end A074378

/-! ## A074378.P12688839923683340884

`∑[n*(n+2-xor(1, n))]`
-/

namespace A074378.P12688839923683340884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 2 : ℤ) - (Nat.xor 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P12688839923683340884

namespace A074378

/-- `∑[n*(n+2-xor(1, n))]` -/
def P12688839923683340884.Spec : Prop :=
  ∀ n, P12688839923683340884.a n = A074378 n

end A074378

/-! ## A074378.P8368437454112320800

`∑[n*∑[-a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A074378.P8368437454112320800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P8368437454112320800

namespace A074378

/-- `∑[n*∑[-a(n-1)]]` -/
def P8368437454112320800.Spec : Prop :=
  ∀ n, P8368437454112320800.a n = A074378 n

end A074378

/-! ## A074378.P6630611653152822805

`∑[n*Δ[2*n-and(1, n)]]`
-/

namespace A074378.P6630611653152822805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P6630611653152822805

namespace A074378

/-- `∑[n*Δ[2*n-and(1, n)]]` -/
def P6630611653152822805.Spec : Prop :=
  ∀ n, P6630611653152822805.a n = A074378 n

end A074378

/-! ## A074378.P13864354157690944252

`(2*n+1)*∑[n]/or(1, n)`
-/

namespace A074378.P13864354157690944252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (Nat.lor 1 n : ℚ)

end

end A074378.P13864354157690944252

namespace A074378

/-- `(2*n+1)*∑[n]/or(1, n)` -/
def P13864354157690944252.Spec : Prop :=
  ∀ n, P13864354157690944252.a n = (A074378 n : ℚ)

end A074378

/-! ## A074378.P17804901856224596049

`∑[2*C(n, a(n-1))+n]` with `a(0)=0`
-/

namespace A074378.P17804901856224596049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074378.P17804901856224596049

namespace A074378

/-- `∑[2*C(n, a(n-1))+n]` -/
def P17804901856224596049.Spec : Prop :=
  ∀ n, (P17804901856224596049.a n : ℤ) = A074378 n

end A074378

/-! ## A074378.P17781100454755006931

`C(and(1, n)+2*n+1, 2)/2`
-/

namespace A074378.P17781100454755006931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.land 1 n + (2 * n + 1)) 2 : ℚ) / 2

end

end A074378.P17781100454755006931

namespace A074378

/-- `C(and(1, n)+2*n+1, 2)/2` -/
def P17781100454755006931.Spec : Prop :=
  ∀ n, P17781100454755006931.a n = (A074378 n : ℚ)

end A074378

/-!
# A074379: Carmichael numbers with exactly 4 prime factors.

The programs for A074379, there is no canonical definition to state claims against.
-/

/-! ## A074379.P15708643333596275330

`A002997(eq[4, A135717(n+1)]+1)`
-/

namespace A074379.P15708643333596275330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074379.P15708643333596275330

/-! ## A074379.P12675521708990796263

`∩[A002997(n+1), A112441(n+1)]`
-/

namespace A074379.P12675521708990796263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074379.P12675521708990796263

/-! ## A074379.P12406059836478325228

`∩[A112441(n+1), A141711(n+1)]`
-/

namespace A074379.P12406059836478325228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074379.P12406059836478325228

/-! ## A074379.P2288974353403275094

`∩[A087442(n+1), A112441(n+1)]`
-/

namespace A074379.P2288974353403275094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074379.P2288974353403275094

/-! ## A074379.P13629207600326144622

`∩[A112441(n+1), A225498(n+1)]`
-/

namespace A074379.P13629207600326144622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074379.P13629207600326144622

/-! ## A074379.P13302141752085641097

`∩[A080062(n+1), A112441(n+1)]`
-/

namespace A074379.P13302141752085641097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074379.P13302141752085641097

/-!
# A074381: (p-1)/2 mod 2, where p is the n-th prime for which p+2 is also prime; i.e., a(n)=0 if p==1 (mod 4), a(n)=1 if p==3 (mod 4).

The programs for A074381, the canonical program `A074381.P2603854448408954956` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074381 has offset 1).

The definition of A074381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074381.P1275824628913847775

`floor(atan(A205649(n+1)))`
-/

namespace A074381.P1275824628913847775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A205649 (n + 1) : ℝ)⌋

end

end A074381.P1275824628913847775

namespace A074381

/-- `floor(atan(A205649(n+1)))` -/
def P1275824628913847775.Spec : Prop :=
  ∀ n, P1275824628913847775.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P15838355587502216820

`log2(gcd(2, A040040(n+1)))`
-/

namespace A074381.P15838355587502216820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A040040 (n + 1)) : ℝ)

end

end A074381.P15838355587502216820

namespace A074381

/-- `log2(gcd(2, A040040(n+1)))` -/
def P15838355587502216820.Spec : Prop :=
  ∀ n, P15838355587502216820.a n = (A074381 (n + 1) : ℝ)

end A074381

/-! ## A074381.P1094745077277031204

`(A126249(n+1)+1)%2`
-/

namespace A074381.P1094745077277031204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126249 (n + 1) + 1) 2

end

end A074381.P1094745077277031204

namespace A074381

/-- `(A126249(n+1)+1)%2` -/
def P1094745077277031204.Spec : Prop :=
  ∀ n, P1094745077277031204.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P14801033220386912222

`(A163059(n+1)+1)%2`
-/

namespace A074381.P14801033220386912222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163059 (n + 1) + 1) 2

end

end A074381.P14801033220386912222

namespace A074381

/-- `(A163059(n+1)+1)%2` -/
def P14801033220386912222.Spec : Prop :=
  ∀ n, P14801033220386912222.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P15389169376491696767

`(A243811(n+1)+1)%2`
-/

namespace A074381.P15389169376491696767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243811 (n + 1) + 1) 2

end

end A074381.P15389169376491696767

namespace A074381

/-- `(A243811(n+1)+1)%2` -/
def P15389169376491696767.Spec : Prop :=
  ∀ n, P15389169376491696767.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P13437711666687664875

`(A078581(n+1)-1)%2`
-/

namespace A074381.P13437711666687664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078581 (n + 1) - 1) 2

end

end A074381.P13437711666687664875

namespace A074381

/-- `(A078581(n+1)-1)%2` -/
def P13437711666687664875.Spec : Prop :=
  ∀ n, P13437711666687664875.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P5757789015938923208

`(A144834(n+1)/2)%2`
-/

namespace A074381.P5757789015938923208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A144834 (n + 1) : ℚ) / 2)) 2

end

end A074381.P5757789015938923208

namespace A074381

/-- `(A144834(n+1)/2)%2` -/
def P5757789015938923208.Spec : Prop :=
  ∀ n, P5757789015938923208.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P17300414684872958577

`and(2, A001359(n+1))/2`
-/

namespace A074381.P17300414684872958577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A001359 (n + 1)) : ℚ) / 2

end

end A074381.P17300414684872958577

namespace A074381

/-- `and(2, A001359(n+1))/2` -/
def P17300414684872958577.Spec : Prop :=
  ∀ n, P17300414684872958577.a n = (A074381 (n + 1) : ℚ)

end A074381

/-! ## A074381.P1578720557813216883

`and(3, A006512(n+1))%3`
-/

namespace A074381.P1578720557813216883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 3 (A006512 (n + 1))) 3

end

end A074381.P1578720557813216883

namespace A074381

/-- `and(3, A006512(n+1))%3` -/
def P1578720557813216883.Spec : Prop :=
  ∀ n, P1578720557813216883.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P10565701692841782210

`log2(val(or(4, A014574(n+1)), 2))`
-/

namespace A074381.P10565701692841782210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (SequenceMachineLib.valuation (Int.lor 4 (A014574 (n + 1))).toNat 2 : ℝ)

end

end A074381.P10565701692841782210

namespace A074381

/-- `log2(val(or(4, A014574(n+1)), 2))` -/
def P10565701692841782210.Spec : Prop :=
  ∀ n, P10565701692841782210.a n = (A074381 (n + 1) : ℝ)

end A074381

/-! ## A074381.P12744021457806069413

`(A126248(n+1)/2+1)%2`
-/

namespace A074381.P12744021457806069413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A126248 (n + 1) : ℚ) / 2 + 1)) 2

end

end A074381.P12744021457806069413

namespace A074381

/-- `(A126248(n+1)/2+1)%2` -/
def P12744021457806069413.Spec : Prop :=
  ∀ n, P12744021457806069413.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P14368204693061276054

`(A168497(n+2)+1)%2`
-/

namespace A074381.P14368204693061276054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168497 (n + 2) + 1) 2

end

end A074381.P14368204693061276054

namespace A074381

/-- `(A168497(n+2)+1)%2` -/
def P14368204693061276054.Spec : Prop :=
  ∀ n, P14368204693061276054.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P2603854448408954956

`and(1, C(A067829(n+2), 2)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A074381

/-- `and(1, C(A067829(n+2), 2)+1)` -/
def P2603854448408954956.Spec : Prop :=
  ∀ n, (P2603854448408954956.a n : ℤ) = A074381 (n + 1)

theorem P2603854448408954956.correct : P2603854448408954956.Spec := by
  intro n
  simp only [A074381, Nat.add_sub_cancel]

end A074381

/-! ## A074381.P13048482087759684266

`A174690(n)%A205649(n+1)`
-/

namespace A074381.P13048482087759684266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174690 n) (A205649 (n + 1))

end

end A074381.P13048482087759684266

namespace A074381

/-- `A174690(n)%A205649(n+1)` -/
def P13048482087759684266.Spec : Prop :=
  ∀ n, P13048482087759684266.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P14923706180240601035

`A174689(n)%A205649(n+1)`
-/

namespace A074381.P14923706180240601035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174689 n) (A205649 (n + 1))

end

end A074381.P14923706180240601035

namespace A074381

/-- `A174689(n)%A205649(n+1)` -/
def P14923706180240601035.Spec : Prop :=
  ∀ n, P14923706180240601035.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P16777237924364246127

`A174790(n)%A205649(n+1)`
-/

namespace A074381.P16777237924364246127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174790 n) (A205649 (n + 1))

end

end A074381.P16777237924364246127

namespace A074381

/-- `A174790(n)%A205649(n+1)` -/
def P16777237924364246127.Spec : Prop :=
  ∀ n, P16777237924364246127.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P11943127848143008349

`A124779(n)%A205649(n+1)`
-/

namespace A074381.P11943127848143008349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124779 n) (A205649 (n + 1))

end

end A074381.P11943127848143008349

namespace A074381

/-- `A124779(n)%A205649(n+1)` -/
def P11943127848143008349.Spec : Prop :=
  ∀ n, P11943127848143008349.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P13975821048587477318

`A105064(n)%A205649(n+1)`
-/

namespace A074381.P13975821048587477318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105064 n) (A205649 (n + 1))

end

end A074381.P13975821048587477318

namespace A074381

/-- `A105064(n)%A205649(n+1)` -/
def P13975821048587477318.Spec : Prop :=
  ∀ n, P13975821048587477318.a n = A074381 (n + 1)

end A074381

/-! ## A074381.P13502936791075759645

`and(2, p?[A000040(n+1)-2])/2`
-/

namespace A074381.P13502936791075759645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 2

end

end A074381.P13502936791075759645

namespace A074381

/-- `and(2, p?[A000040(n+1)-2])/2` -/
def P13502936791075759645.Spec : Prop :=
  ∀ n, P13502936791075759645.a n = (A074381 (n + 1) : ℚ)

end A074381

/-! ## A074381.P12900304405869624032

`(p?[A000040(n+2)+2]%4)%3`
-/

namespace A074381.P12900304405869624032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 4) 3

end

end A074381.P12900304405869624032

namespace A074381

/-- `(p?[A000040(n+2)+2]%4)%3` -/
def P12900304405869624032.Spec : Prop :=
  ∀ n, P12900304405869624032.a n = A074381 (n + 1)

end A074381

/-!
# A074384: Solutions to mod(sigma(x), 6) = 5.

The programs for A074384, the canonical program `A074384.P15572785342951822992` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074384 has offset 1).

The definition of A074384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074384.P15572785342951822992

`(eq[3, A000005(A248909(n+1))]+1)²`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A074384

/-- `(eq[3, A000005(A248909(n+1))]+1)²` -/
def P15572785342951822992.Spec : Prop :=
  ∀ n, (P15572785342951822992.a n : ℤ) = A074384 (n + 1)

theorem P15572785342951822992.correct : P15572785342951822992.Spec := by
  intro n
  simp only [A074384, Nat.add_sub_cancel]

end A074384

/-! ## A074384.P9103531767817359020

`∩[A198774(n+1), n²]`
-/

namespace A074384.P9103531767817359020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198774 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A074384.P9103531767817359020

namespace A074384

/-- `∩[A198774(n+1), n²]` -/
def P9103531767817359020.Spec : Prop :=
  ∀ n, (P9103531767817359020.a n : ℤ) = A074384 (n + 1)

end A074384

/-! ## A074384.P17659801056144946225

`∩[A000290(n), A198774(n+1)]`
-/

namespace A074384.P17659801056144946225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074384.P17659801056144946225

namespace A074384

/-- `∩[A000290(n), A198774(n+1)]` -/
def P17659801056144946225.Spec : Prop :=
  ∀ n, (P17659801056144946225.a n : ℤ) = A074384 (n + 1)

end A074384

/-! ## A074384.P10706965246898699833

`∩[A034793(n+1), A198774(n+1)]`
-/

namespace A074384.P10706965246898699833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074384.P10706965246898699833

namespace A074384

/-- `∩[A034793(n+1), A198774(n+1)]` -/
def P10706965246898699833.Spec : Prop :=
  ∀ n, (P10706965246898699833.a n : ℤ) = A074384 (n + 1)

end A074384

/-! ## A074384.P18399274648590811044

`∩[A002378(n)-n, A198774(n+1)]`
-/

namespace A074384.P18399274648590811044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074384.P18399274648590811044

namespace A074384

/-- `∩[A002378(n)-n, A198774(n+1)]` -/
def P18399274648590811044.Spec : Prop :=
  ∀ n, (P18399274648590811044.a n : ℤ) = A074384 (n + 1)

end A074384

/-!
# A074385: Square root of sum of divisors, when it is a square.

The programs for A074385, the canonical program `A074385.P38186395155014522` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074385 has offset 1).

The definition of A074385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006532, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074385.P38186395155014522

`sqrt(A000203(A006532(n+1)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074385

/-- `sqrt(A000203(A006532(n+1)))` -/
def P38186395155014522.Spec : Prop :=
  ∀ n, P38186395155014522.a n = (A074385 (n + 1) : ℝ)

end A074385

/-! ## A074385.P15817188795336607186

`root(∑{d}[A006532(n+1), #], A040001(2*n))`
-/

namespace A074385.P15817188795336607186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ) ^ (1 / (A040001 (2 * n) : ℝ))

end

end A074385.P15817188795336607186

namespace A074385

/-- `root(∑{d}[A006532(n+1), #], A040001(2*n))` -/
def P15817188795336607186.Spec : Prop :=
  ∀ n, P15817188795336607186.a n = (A074385 (n + 1) : ℝ)

end A074385

/-! ## A074385.P16789705335100554626

`root(∑{d}[A006532(n+1), #], A020639(2*(n+1)))`
-/

namespace A074385.P16789705335100554626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A074385.P16789705335100554626

namespace A074385

/-- `root(∑{d}[A006532(n+1), #], A020639(2*(n+1)))` -/
def P16789705335100554626.Spec : Prop :=
  ∀ n, P16789705335100554626.a n = (A074385 (n + 1) : ℝ)

end A074385

/-! ## A074385.P1250742889823161440

`A056926(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P1250742889823161440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P1250742889823161440

namespace A074385

/-- `A056926(∑{d}[A006532(n+1), #])` -/
def P1250742889823161440.Spec : Prop :=
  ∀ n, P1250742889823161440.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P4801797056367429943

`A262689(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P4801797056367429943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P4801797056367429943

namespace A074385

/-- `A262689(∑{d}[A006532(n+1), #])` -/
def P4801797056367429943.Spec : Prop :=
  ∀ n, P4801797056367429943.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P4379145842484438202

`A078705(A006532(n+1))`
-/

namespace A074385.P4379145842484438202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A006532 (n + 1)).toNat

end

end A074385.P4379145842484438202

namespace A074385

/-- `A078705(A006532(n+1))` -/
def P4379145842484438202.Spec : Prop :=
  ∀ n, P4379145842484438202.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P10741913863573799411

`A018851(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P10741913863573799411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P10741913863573799411

namespace A074385

/-- `A018851(∑{d}[A006532(n+1), #])` -/
def P10741913863573799411.Spec : Prop :=
  ∀ n, P10741913863573799411.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P18335325355679378626

`A162401(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P18335325355679378626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P18335325355679378626

namespace A074385

/-- `A162401(∑{d}[A006532(n+1), #])` -/
def P18335325355679378626.Spec : Prop :=
  ∀ n, P18335325355679378626.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P12050999332652025621

`A000188(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P12050999332652025621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P12050999332652025621

namespace A074385

/-- `A000188(∑{d}[A006532(n+1), #])` -/
def P12050999332652025621.Spec : Prop :=
  ∀ n, P12050999332652025621.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P11530984997601569678

`A000196(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P11530984997601569678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P11530984997601569678

namespace A074385

/-- `A000196(∑{d}[A006532(n+1), #])` -/
def P11530984997601569678.Spec : Prop :=
  ∀ n, P11530984997601569678.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P3699247768123820999

`A033677(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P3699247768123820999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P3699247768123820999

namespace A074385

/-- `A033677(∑{d}[A006532(n+1), #])` -/
def P3699247768123820999.Spec : Prop :=
  ∀ n, P3699247768123820999.a n = A074385 (n + 1)

end A074385

/-! ## A074385.P7049827812471574979

`A322832(∑{d}[A006532(n+1), #])`
-/

namespace A074385.P7049827812471574979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074385.P7049827812471574979

namespace A074385

/-- `A322832(∑{d}[A006532(n+1), #])` -/
def P7049827812471574979.Spec : Prop :=
  ∀ n, P7049827812471574979.a n = A074385 (n + 1)

end A074385

/-!
# A074388: Numbers of the form 2*k^2 such that sigma(2*k^2) is an odd square.

The programs for A074388, there is no canonical definition to state claims against.
-/

/-! ## A074388.P10912654555867751521

`2*A097023(n+1)²`
-/

namespace A074388.P10912654555867751521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097023 (n + 1) ^ 2

end

end A074388.P10912654555867751521

/-! ## A074388.P13552847193157686094

`A097023(n+1)*A097033(A097018(n+1))*A097023(n+1)`
-/

namespace A074388.P13552847193157686094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097023 (n + 1) * A097033 (A097018 (n + 1)).toNat * A097023 (n + 1)

end

end A074388.P13552847193157686094

/-! ## A074388.P6668954343599627501

`∩[A097025(n+1), A331752(n+1)]`
-/

namespace A074388.P6668954343599627501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074388.P6668954343599627501

/-!
# A074389: a(n) = gcd(n, sigma(n), phi(n)).

The programs for A074389, the canonical program `A074389.P8050335013716147164` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074389 has offset 1).

The definition of A074389 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074389.P8050335013716147164

`gcd(n+1, A009223(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074389

/-- `gcd(n+1, A009223(n+1))` -/
def P8050335013716147164.Spec : Prop :=
  ∀ n, (P8050335013716147164.a n : ℤ) = A074389 (n + 1)

theorem P8050335013716147164.correct : P8050335013716147164.Spec := by
  intro n
  simp only [A074389, Nat.add_sub_cancel]

end A074389

/-! ## A074389.P9310580365932453448

`gcd(Δ[A005728(n)], A009194(n+1))`
-/

namespace A074389.P9310580365932453448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A009194 (n + 1))

end

end A074389.P9310580365932453448

namespace A074389

/-- `gcd(Δ[A005728(n)], A009194(n+1))` -/
def P9310580365932453448.Spec : Prop :=
  ∀ n, (P9310580365932453448.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P18395637230288343462

`gcd(A000203(n+1), A009195(n+1))`
-/

namespace A074389.P18395637230288343462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A009195 (n + 1))

end

end A074389.P18395637230288343462

namespace A074389

/-- `gcd(A000203(n+1), A009195(n+1))` -/
def P18395637230288343462.Spec : Prop :=
  ∀ n, (P18395637230288343462.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P17591561600108071950

`gcd(A005451(n+1), A077099(n+1))`
-/

namespace A074389.P17591561600108071950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A077099 (n + 1))

end

end A074389.P17591561600108071950

namespace A074389

/-- `gcd(A005451(n+1), A077099(n+1))` -/
def P17591561600108071950.Spec : Prop :=
  ∀ n, (P17591561600108071950.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P14870270823353429518

`gcd(n*A077099(n+1), A048671(n+1))`
-/

namespace A074389.P14870270823353429518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A077099 (n + 1)) (A048671 (n + 1))

end

end A074389.P14870270823353429518

namespace A074389

/-- `gcd(n*A077099(n+1), A048671(n+1))` -/
def P14870270823353429518.Spec : Prop :=
  ∀ n, (P14870270823353429518.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P5378491056292659823

`gcd(A009195(A000027(n+1)), A033879(n+1))`
-/

namespace A074389.P5378491056292659823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009195 (A000027 (n + 1)).toNat) (A033879 (n + 1))

end

end A074389.P5378491056292659823

namespace A074389

/-- `gcd(A009195(A000027(n+1)), A033879(n+1))` -/
def P5378491056292659823.Spec : Prop :=
  ∀ n, (P5378491056292659823.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P14339238534391856303

`gcd(A009194(A000027(n+1)), A051953(n+1))`
-/

namespace A074389.P14339238534391856303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (A000027 (n + 1)).toNat) (A051953 (n + 1))

end

end A074389.P14339238534391856303

namespace A074389

/-- `gcd(A009194(A000027(n+1)), A051953(n+1))` -/
def P14339238534391856303.Spec : Prop :=
  ∀ n, (P14339238534391856303.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P13179885866671396641

`gcd(A075828(n+1), A297170(n+1))`
-/

namespace A074389.P13179885866671396641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075828 (n + 1)) (A297170 (n + 1))

end

end A074389.P13179885866671396641

namespace A074389

/-- `gcd(A075828(n+1), A297170(n+1))` -/
def P13179885866671396641.Spec : Prop :=
  ∀ n, (P13179885866671396641.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P13958823069270914253

`gcd(A084509(n), A308707(n+1))`
-/

namespace A074389.P13958823069270914253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084509 n) (A308707 (n + 1))

end

end A074389.P13958823069270914253

namespace A074389

/-- `gcd(A084509(n), A308707(n+1))` -/
def P13958823069270914253.Spec : Prop :=
  ∀ n, (P13958823069270914253.a n : ℤ) = A074389 (n + 1)

end A074389

/-! ## A074389.P14094172559901241842

`gcd(A325813(n+1), A354756(n))`
-/

namespace A074389.P14094172559901241842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325813 (n + 1)) (A354756 n)

end

end A074389.P14094172559901241842

namespace A074389

/-- `gcd(A325813(n+1), A354756(n))` -/
def P14094172559901241842.Spec : Prop :=
  ∀ n, (P14094172559901241842.a n : ℤ) = A074389 (n + 1)

end A074389

/-!
# A074390: a(n) is the least number k that A074389(k) = n.

The programs for A074390, there is no canonical definition to state claims against.
-/

/-! ## A074390.P15278781205736522785

`A144253(or(∑[2^n-2]+2^n, n+1))`
-/

namespace A074390.P15278781205736522785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144253 (Int.lor (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)) (n + 1 : ℤ)).toNat

end

end A074390.P15278781205736522785

/-!
# A074391: a(n) is the smallest number such that gcd(a(n), sigma(a(n))) = n.

The programs for A074391, there is no canonical definition to state claims against.
-/

/-! ## A074391.P12908678651444100361

`A249917(∑[n+1])`
-/

namespace A074391.P12908678651444100361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074391.P12908678651444100361

/-! ## A074391.P10367361238946898194

`A028310(A249917(∑[-xor(n, -1)]))`
-/

namespace A074391.P10367361238946898194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A249917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A074391.P10367361238946898194

/-!
# A074392: a(n) = Lucas(n+1) + (3*(-1)^n - 1)/2.

The programs for A074392, the canonical program `A074392.P1992412112791523451` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074392 has offset 0).

The definition of A074392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074392.P1992412112791523451

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=1, a(2)=5, a(3)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074392

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P1992412112791523451.Spec : Prop :=
  ∀ n, P1992412112791523451.a n = A074392 n

theorem P1992412112791523451.correct : P1992412112791523451.Spec := by
  intro n
  simp only [A074392]

end A074392

/-! ## A074392.P10800489834710007520

`round(a(n-2)+ϕ^n)` with `a(0)=2, a(1)=1`
-/

namespace A074392.P10800489834710007520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.goldenRatio ^ n)

end

end A074392.P10800489834710007520

namespace A074392

/-- `round(a(n-2)+ϕ^n)` -/
def P10800489834710007520.Spec : Prop :=
  ∀ n, P10800489834710007520.a n = A074392 n

end A074392

/-! ## A074392.P2220298421921829053

`∑[a(n-3)+2*a(n-2)]` with `a(0)=2, a(1)=-1, a(2)=4`
-/

namespace A074392.P2220298421921829053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 4] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074392.P2220298421921829053

namespace A074392

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P2220298421921829053.Spec : Prop :=
  ∀ n, P2220298421921829053.a n = A074392 n

end A074392

/-! ## A074392.P17475051711279666414

`2*a(n-2)+a(n-3)+1` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A074392.P17475051711279666414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 1)

end

end A074392.P17475051711279666414

namespace A074392

/-- `2*a(n-2)+a(n-3)+1` -/
def P17475051711279666414.Spec : Prop :=
  ∀ n, (P17475051711279666414.a n : ℤ) = A074392 n

end A074392

/-! ## A074392.P15798532441808088165

`a(n-2)+1+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A074392.P15798532441808088165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  a (n - 2) + 1 + (a (n - 2) + a (n - 3))

end

end A074392.P15798532441808088165

namespace A074392

/-- `a(n-2)+1+a(n-2)+a(n-3)` -/
def P15798532441808088165.Spec : Prop :=
  ∀ n, (P15798532441808088165.a n : ℤ) = A074392 n

end A074392

/-! ## A074392.P7919972632705999609

`A000032(n)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A074392.P7919972632705999609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000032 n + a (n - 2)

end

end A074392.P7919972632705999609

namespace A074392

/-- `A000032(n)+a(n-2)` -/
def P7919972632705999609.Spec : Prop :=
  ∀ n, P7919972632705999609.a n = A074392 n

end A074392

/-! ## A074392.P2588604513072783921

`A169985(n)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A074392.P2588604513072783921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A169985 n + a (n - 2)

end

end A074392.P2588604513072783921

namespace A074392

/-- `A169985(n)+a(n-2)` -/
def P2588604513072783921.Spec : Prop :=
  ∀ n, P2588604513072783921.a n = A074392 n

end A074392

/-! ## A074392.P14021985029808402005

`A000032(n+1)+2-gcd(2, n+1)²`
-/

namespace A074392.P14021985029808402005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (2 - (Nat.gcd 2 (n + 1) ^ 2 : ℤ))

end

end A074392.P14021985029808402005

namespace A074392

/-- `A000032(n+1)+2-gcd(2, n+1)²` -/
def P14021985029808402005.Spec : Prop :=
  ∀ n, P14021985029808402005.a n = A074392 n

end A074392

/-! ## A074392.P858465041107962377

`∑[A000032(2*n-n)-a(n-1)]` with `a(0)=2`
-/

namespace A074392.P858465041107962377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A000032 (2 * n - n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074392.P858465041107962377

namespace A074392

/-- `∑[A000032(2*n-n)-a(n-1)]` -/
def P858465041107962377.Spec : Prop :=
  ∀ n, P858465041107962377.a n = A074392 n

end A074392

/-! ## A074392.P10874368804566732250

`A052952(n)+A008346(n)`
-/

namespace A074392.P10874368804566732250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n + A008346 n

end

end A074392.P10874368804566732250

namespace A074392

/-- `A052952(n)+A008346(n)` -/
def P10874368804566732250.Spec : Prop :=
  ∀ n, P10874368804566732250.a n = A074392 n

end A074392

/-! ## A074392.P6129506713292234568

`A033999(n)+A014217(n+1)`
-/

namespace A074392.P6129506713292234568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A014217 (n + 1)

end

end A074392.P6129506713292234568

namespace A074392

/-- `A033999(n)+A014217(n+1)` -/
def P6129506713292234568.Spec : Prop :=
  ∀ n, P6129506713292234568.a n = A074392 n

end A074392

/-! ## A074392.P15389606807909439434

`A062114(n)+A007492(n+1)`
-/

namespace A074392.P15389606807909439434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 n + A007492 (n + 1)

end

end A074392.P15389606807909439434

namespace A074392

/-- `A062114(n)+A007492(n+1)` -/
def P15389606807909439434.Spec : Prop :=
  ∀ n, P15389606807909439434.a n = A074392 n

end A074392

/-! ## A074392.P1515424876244735676

`A074331(n+1)+A008346(n)`
-/

namespace A074392.P1515424876244735676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (n + 1) + A008346 n

end

end A074392.P1515424876244735676

namespace A074392

/-- `A074331(n+1)+A008346(n)` -/
def P1515424876244735676.Spec : Prop :=
  ∀ n, P1515424876244735676.a n = A074392 n

end A074392

/-! ## A074392.P9057385286574533059

`A168361(n+1)+A001610(n)`
-/

namespace A074392.P9057385286574533059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) + A001610 n

end

end A074392.P9057385286574533059

namespace A074392

/-- `A168361(n+1)+A001610(n)` -/
def P9057385286574533059.Spec : Prop :=
  ∀ n, P9057385286574533059.a n = A074392 n

end A074392

/-! ## A074392.P11064610230396860716

`A098600(n+1)-A000035(n)`
-/

namespace A074392.P11064610230396860716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (n + 1) - A000035 n

end

end A074392.P11064610230396860716

namespace A074392

/-- `A098600(n+1)-A000035(n)` -/
def P11064610230396860716.Spec : Prop :=
  ∀ n, P11064610230396860716.a n = A074392 n

end A074392

/-! ## A074392.P7694523059641295409

`A366506(n+1)-A010695(n)`
-/

namespace A074392.P7694523059641295409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366506 (n + 1) - A010695 n

end

end A074392.P7694523059641295409

namespace A074392

/-- `A366506(n+1)-A010695(n)` -/
def P7694523059641295409.Spec : Prop :=
  ∀ n, P7694523059641295409.a n = A074392 n

end A074392

/-! ## A074392.P15661121102865059126

`A386707(n+1)-A010719(n)`
-/

namespace A074392.P15661121102865059126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386707 (n + 1) - A010719 n

end

end A074392.P15661121102865059126

namespace A074392

/-- `A386707(n+1)-A010719(n)` -/
def P15661121102865059126.Spec : Prop :=
  ∀ n, P15661121102865059126.a n = A074392 n

end A074392

/-! ## A074392.P15880226500212148265

`A181716(n+2)-A000035(n)`
-/

namespace A074392.P15880226500212148265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 (n + 2) - A000035 n

end

end A074392.P15880226500212148265

namespace A074392

/-- `A181716(n+2)-A000035(n)` -/
def P15880226500212148265.Spec : Prop :=
  ∀ n, P15880226500212148265.a n = A074392 n

end A074392

/-!
# A074393: Number of primes between sigma(n) and phi(n) exclusive, minus 1 if sigma(n) is a prime.

The programs for A074393, there is no canonical definition to state claims against.
-/

/-! ## A074393.P11351007832611712911

`and(A007088(A063005(n)), A085343(n+1))`
-/

namespace A074393.P11351007832611712911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007088 (A063005 n).toNat) (A085343 (n + 1))

end

end A074393.P11351007832611712911

/-! ## A074393.P5017083020934981272

`and(A037607(A046644(n+1)), A085343(n+1))`
-/

namespace A074393.P5017083020934981272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037607 (A046644 (n + 1)).toNat) (A085343 (n + 1))

end

end A074393.P5017083020934981272

/-! ## A074393.P13350392874243862283

`and(A052905(A270539(n+1)), A085343(n+1))`
-/

namespace A074393.P13350392874243862283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 (A270539 (n + 1)).toNat) (A085343 (n + 1))

end

end A074393.P13350392874243862283

/-! ## A074393.P7490549012431275562

`A103596(n+1)%A014132(A152271(n))`
-/

namespace A074393.P7490549012431275562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103596 (n + 1)) (A014132 (A152271 n).toNat)

end

end A074393.P7490549012431275562

/-! ## A074393.P4083780238244276153

`A170990(A000079(n))%A323405(n+1)`
-/

namespace A074393.P4083780238244276153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170990 (A000079 n).toNat) (A323405 (n + 1))

end

end A074393.P4083780238244276153

/-!
# A074394: a(n) = a(n-1)*a(n-2) - a(n-3) with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A074394, the canonical program `A074394.P6569315487211135165` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074394 has offset 1).

The definition of A074394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-a(n-3)` (program `A074394.P6569315487211135165`, by `A074394.P6569315487211135165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074394.P6569315487211135165

`a(n-1)*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A074394

/-- `a(n-1)*a(n-2)-a(n-3)` -/
def P6569315487211135165.Spec : Prop :=
  ∀ n, P6569315487211135165.a n = A074394 (n + 1)

theorem P6569315487211135165.correct : P6569315487211135165.Spec := by
  intro n
  simp only [A074394, Nat.add_sub_cancel]

end A074394

/-! ## A074394.P16163723258123964370

`lcm(a(n-1), a(n-2))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A074394.P16163723258123964370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (Int.lcm (a (n - 1)) (a (n - 2)) : ℤ) - a (n - 3)

end

end A074394.P16163723258123964370

namespace A074394

/-- `lcm(a(n-1), a(n-2))-a(n-3)` -/
def P16163723258123964370.Spec : Prop :=
  ∀ n, P16163723258123964370.a n = A074394 (n + 1)

end A074394

/-! ## A074394.P15722397724780706865

`a(n-1)/a(n-2)^(-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A074394.P15722397724780706865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ) - a (n - 3)

end

end A074394.P15722397724780706865

namespace A074394

/-- `a(n-1)/a(n-2)^(-1)-a(n-3)` -/
def P15722397724780706865.Spec : Prop :=
  ∀ n, P15722397724780706865.a n = (A074394 (n + 1) : ℚ)

end A074394

/-!
# A074396: a(n) = 10 - (p mod 10), where p is the n-th prime congruent to 1 (mod 4) for which p+2 is also prime.

The programs for A074396, there is no canonical definition to state claims against.
-/

/-! ## A074396.P16500451530092361658

`(9*A071695(n+1))%10`
-/

namespace A074396.P16500451530092361658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A071695 (n + 1)) 10

end

end A074396.P16500451530092361658

/-! ## A074396.P7985869212696728925

`10-A122565(Δ[n²])%10`
-/

namespace A074396.P7985869212696728925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - Int.tmod (A122565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A074396.P7985869212696728925

/-! ## A074396.P14198741268902231584

`A106586(A071696(n+1))`
-/

namespace A074396.P14198741268902231584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106586 (A071696 (n + 1)).toNat

end

end A074396.P14198741268902231584

/-! ## A074396.P1412074502953569679

`A172423(A071695(n+1))`
-/

namespace A074396.P1412074502953569679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172423 (A071695 (n + 1)).toNat

end

end A074396.P1412074502953569679

/-! ## A074396.P15081574381617843704

`A172423(A122565(Δ[n²]))`
-/

namespace A074396.P15081574381617843704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172423 (A122565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A074396.P15081574381617843704

/-! ## A074396.P7247365830474277127

`A251984(p?[A071695(n+1)])`
-/

namespace A074396.P7247365830474277127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074396.P7247365830474277127

/-! ## A074396.P1659767298847904647

`A106586(A071695(n+1)+2)`
-/

namespace A074396.P1659767298847904647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106586 (A071695 (n + 1) + 2).toNat

end

end A074396.P1659767298847904647

/-! ## A074396.P10050281898813654030

`A251984(A071696(n+1)-2)`
-/

namespace A074396.P10050281898813654030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A071696 (n + 1) - 2).toNat

end

end A074396.P10050281898813654030

/-! ## A074396.P2401436096878245972

`A251984(or(1, A071695(n+1)))`
-/

namespace A074396.P2401436096878245972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (Int.lor 1 (A071695 (n + 1))).toNat

end

end A074396.P2401436096878245972

/-! ## A074396.P8657812923280478266

`A251984(xor(2, A071696(n+1)))`
-/

namespace A074396.P8657812923280478266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (Int.xor 2 (A071696 (n + 1))).toNat

end

end A074396.P8657812923280478266

/-! ## A074396.P1664329096821705429

`A251984(p?[xor(2, A002476(n+1))])`
-/

namespace A074396.P1664329096821705429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A002476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074396.P1664329096821705429

/-! ## A074396.P8013364362515908660

`A047282(p?[A002144(n+1)+2])%10`
-/

namespace A074396.P8013364362515908660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047282 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A074396.P8013364362515908660

/-!
# A074397: Number of primes between sigma(n) and n exclusive.

The programs for A074397, the canonical program `A074397.P9951868034758738243` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074397 has offset 1).

The definition of A074397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074397.P4411598894116957558

`A085341(n+1)-A010051(∑{d}[n+1, #])`
-/

namespace A074397.P4411598894116957558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (n + 1) - A010051 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A074397.P4411598894116957558

namespace A074397

/-- `A085341(n+1)-A010051(∑{d}[n+1, #])` -/
def P4411598894116957558.Spec : Prop :=
  ∀ n, P4411598894116957558.a n = A074397 (n + 1)

end A074397

/-! ## A074397.P9951868034758738243

`A000720(A067792(n+1))-Δ[A002815(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074397

/-- `A000720(A067792(n+1))-Δ[A002815(n)]` -/
def P9951868034758738243.Spec : Prop :=
  ∀ n, P9951868034758738243.a n = A074397 (n + 1)

theorem P9951868034758738243.correct : P9951868034758738243.Spec := by
  intro n
  simp only [A074397, Nat.add_sub_cancel]

end A074397

/-! ## A074397.P9829483436817802457

`A085341(n+1)-A010051(A000203(n+1))`
-/

namespace A074397.P9829483436817802457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (n + 1) - A010051 (A000203 (n + 1)).toNat

end

end A074397.P9829483436817802457

namespace A074397

/-- `A085341(n+1)-A010051(A000203(n+1))` -/
def P9829483436817802457.Spec : Prop :=
  ∀ n, P9829483436817802457.a n = A074397 (n + 1)

end A074397

/-! ## A074397.P17672974084251608035

`A230980(∑{d}[n+1, #]-1)-A000720(n+1)`
-/

namespace A074397.P17672974084251608035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ d ∈ Nat.divisors (f1 n), d - 1) - A000720 (n + 1)

end

end A074397.P17672974084251608035

namespace A074397

/-- `A230980(∑{d}[n+1, #]-1)-A000720(n+1)` -/
def P17672974084251608035.Spec : Prop :=
  ∀ n, P17672974084251608035.a n = A074397 (n + 1)

end A074397

/-! ## A074397.P10977503086774862490

`A033270(A067792(n+1))-A000720(n+1)`
-/

namespace A074397.P10977503086774862490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A067792 (n + 1)).toNat - A000720 (n + 1)

end

end A074397.P10977503086774862490

namespace A074397

/-- `A033270(A067792(n+1))-A000720(n+1)` -/
def P10977503086774862490.Spec : Prop :=
  ∀ n, P10977503086774862490.a n = A074397 (n + 1)

end A074397

/-! ## A074397.P2969425428242549851

`A230980(A039653(n+1))-A230980(n+1)`
-/

namespace A074397.P2969425428242549851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A039653 (n + 1)).toNat - A230980 (n + 1)

end

end A074397.P2969425428242549851

namespace A074397

/-- `A230980(A039653(n+1))-A230980(n+1)` -/
def P2969425428242549851.Spec : Prop :=
  ∀ n, P2969425428242549851.a n = A074397 (n + 1)

end A074397

/-! ## A074397.P1901068630310351323

`A230980(A000203(n+1)-1)-A000720(n+1)`
-/

namespace A074397.P1901068630310351323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000203 (n + 1) - 1).toNat - A000720 (n + 1)

end

end A074397.P1901068630310351323

namespace A074397

/-- `A230980(A000203(n+1)-1)-A000720(n+1)` -/
def P1901068630310351323.Spec : Prop :=
  ∀ n, P1901068630310351323.a n = A074397 (n + 1)

end A074397

/-! ## A074397.P12212465377644146704

`A230980(A000203(n+1)-1)-A230980(n+1)`
-/

namespace A074397.P12212465377644146704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000203 (n + 1) - 1).toNat - A230980 (n + 1)

end

end A074397.P12212465377644146704

namespace A074397

/-- `A230980(A000203(n+1)-1)-A230980(n+1)` -/
def P12212465377644146704.Spec : Prop :=
  ∀ n, P12212465377644146704.a n = A074397 (n + 1)

end A074397

/-! ## A074397.P7092379327543773199

`A055679(A002659(n+1))-A000720(n+1)`
-/

namespace A074397.P7092379327543773199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A002659 (n + 1)).toNat - A000720 (n + 1)

end

end A074397.P7092379327543773199

namespace A074397

/-- `A055679(A002659(n+1))-A000720(n+1)` -/
def P7092379327543773199.Spec : Prop :=
  ∀ n, P7092379327543773199.a n = A074397 (n + 1)

end A074397

/-!
# A074398: Number of primes between n and phi(n), with neither n nor phi(n) included in the count in case they are primes.

The programs for A074398, the canonical program `A074398.P12832320423602718158` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074398 has offset 1).

The definition of A074398 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074398.P6691206210632767719

`A085342(n+1)-A010051(n+1)`
-/

namespace A074398.P6691206210632767719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085342 (n + 1) - A010051 (n + 1)

end

end A074398.P6691206210632767719

namespace A074398

/-- `A085342(n+1)-A010051(n+1)` -/
def P6691206210632767719.Spec : Prop :=
  ∀ n, P6691206210632767719.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P12832320423602718158

`A000720(n+1)-A000720(A000010(n+1))-A010051(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074398

/-- `A000720(n+1)-A000720(A000010(n+1))-A010051(n+1)` -/
def P12832320423602718158.Spec : Prop :=
  ∀ n, P12832320423602718158.a n = A074398 (n + 1)

theorem P12832320423602718158.correct : P12832320423602718158.Spec := by
  intro n
  simp only [A074398, Nat.add_sub_cancel]

end A074398

/-! ## A074398.P4149126377283180220

`A085342(A005451(n+1))`
-/

namespace A074398.P4149126377283180220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085342 (A005451 (n + 1)).toNat

end

end A074398.P4149126377283180220

namespace A074398

/-- `A085342(A005451(n+1))` -/
def P4149126377283180220.Spec : Prop :=
  ∀ n, P4149126377283180220.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P1207880398526413608

`A230980(n)-A070804(n+1)`
-/

namespace A074398.P1207880398526413608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A070804 (n + 1)

end

end A074398.P1207880398526413608

namespace A074398

/-- `A230980(n)-A070804(n+1)` -/
def P1207880398526413608.Spec : Prop :=
  ∀ n, P1207880398526413608.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P13451469527239240869

`A005171(n+1)*A085342(n+1)`
-/

namespace A074398.P13451469527239240869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A085342 (n + 1)

end

end A074398.P13451469527239240869

namespace A074398

/-- `A005171(n+1)*A085342(n+1)` -/
def P13451469527239240869.Spec : Prop :=
  ∀ n, P13451469527239240869.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P13619554498208693776

`A066247(n+1)*A085342(n+1)`
-/

namespace A074398.P13619554498208693776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A085342 (n + 1)

end

end A074398.P13619554498208693776

namespace A074398

/-- `A066247(n+1)*A085342(n+1)` -/
def P13619554498208693776.Spec : Prop :=
  ∀ n, P13619554498208693776.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P17026644747039714119

`A230980(n)-A230980(Δ[A002088(n)])`
-/

namespace A074398.P17026644747039714119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (f1 (n + 1) - f1 n).toNat

end

end A074398.P17026644747039714119

namespace A074398

/-- `A230980(n)-A230980(Δ[A002088(n)])` -/
def P17026644747039714119.Spec : Prop :=
  ∀ n, P17026644747039714119.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P17043581114735183238

`A230980(n)-A230980(A000010(n+1))`
-/

namespace A074398.P17043581114735183238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (A000010 (n + 1)).toNat

end

end A074398.P17043581114735183238

namespace A074398

/-- `A230980(n)-A230980(A000010(n+1))` -/
def P17043581114735183238.Spec : Prop :=
  ∀ n, P17043581114735183238.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P5844900319723318428

`A230980(n)-A230980(A078773(n+1))`
-/

namespace A074398.P5844900319723318428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (A078773 (n + 1)).toNat

end

end A074398.P5844900319723318428

namespace A074398

/-- `A230980(n)-A230980(A078773(n+1))` -/
def P5844900319723318428.Spec : Prop :=
  ∀ n, P5844900319723318428.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P1677662137395814441

`A000720(A151800(n))-(A070804(n+1)+1)`
-/

namespace A074398.P1677662137395814441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 n).toNat - (A070804 (n + 1) + 1)

end

end A074398.P1677662137395814441

namespace A074398

/-- `A000720(A151800(n))-(A070804(n+1)+1)` -/
def P1677662137395814441.Spec : Prop :=
  ∀ n, P1677662137395814441.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P10174460773021405199

`A095117(n)-(A000720(A000010(n+1))+n)`
-/

namespace A074398.P10174460773021405199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n - (A000720 (A000010 (n + 1)).toNat + (n : ℤ))

end

end A074398.P10174460773021405199

namespace A074398

/-- `A095117(n)-(A000720(A000010(n+1))+n)` -/
def P10174460773021405199.Spec : Prop :=
  ∀ n, P10174460773021405199.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P17374515595176965930

`A000720(n+1)-(A070804(n+1)+A010051(n+1))`
-/

namespace A074398.P17374515595176965930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (A070804 (n + 1) + A010051 (n + 1))

end

end A074398.P17374515595176965930

namespace A074398

/-- `A000720(n+1)-(A070804(n+1)+A010051(n+1))` -/
def P17374515595176965930.Spec : Prop :=
  ∀ n, P17374515595176965930.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P15597724081185859570

`A070804(A151800(n))-A070804(n+1)`
-/

namespace A074398.P15597724081185859570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A151800 n).toNat - A070804 (n + 1)

end

end A074398.P15597724081185859570

namespace A074398

/-- `A070804(A151800(n))-A070804(n+1)` -/
def P15597724081185859570.Spec : Prop :=
  ∀ n, P15597724081185859570.a n = A074398 (n + 1)

end A074398

/-! ## A074398.P16841388658927121402

`A085342(n+1)%A007956(n+1)`
-/

namespace A074398.P16841388658927121402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085342 (n + 1)) (A007956 (n + 1))

end

end A074398.P16841388658927121402

namespace A074398

/-- `A085342(n+1)%A007956(n+1)` -/
def P16841388658927121402.Spec : Prop :=
  ∀ n, P16841388658927121402.a n = A074398 (n + 1)

end A074398

/-!
# A074399: a(n) is the largest prime divisor of n(n+1).

The programs for A074399, the canonical program `A074399.P7679710447830188852` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074399 has offset 1).

The definition of A074399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074399.P18086718343500893305

`A007918(A069902(n+1))`
-/

namespace A074399.P18086718343500893305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A069902 (n + 1)).toNat

end

end A074399.P18086718343500893305

namespace A074399

/-- `A007918(A069902(n+1))` -/
def P18086718343500893305.Spec : Prop :=
  ∀ n, P18086718343500893305.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P7679710447830188852

`A000040(A252489(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A074399

/-- `A000040(A252489(n+1))` -/
def P7679710447830188852.Spec : Prop :=
  ∀ n, P7679710447830188852.a n = A074399 (n + 1)

theorem P7679710447830188852.correct : P7679710447830188852.Spec := by
  intro n
  simp only [A074399, Nat.add_sub_cancel]

end A074399

/-! ## A074399.P14630668160036311265

`A006530(2*A069902(n+1))`
-/

namespace A074399.P14630668160036311265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A069902 (n + 1)).toNat

end

end A074399.P14630668160036311265

namespace A074399

/-- `A006530(2*A069902(n+1))` -/
def P14630668160036311265.Spec : Prop :=
  ∀ n, P14630668160036311265.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P13361406775970290047

`A069902(n+1)+A000007(n)`
-/

namespace A074399.P13361406775970290047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (n + 1) + A000007 n

end

end A074399.P13361406775970290047

namespace A074399

/-- `A069902(n+1)+A000007(n)` -/
def P13361406775970290047.Spec : Prop :=
  ∀ n, P13361406775970290047.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P9526056166469961775

`A054977(n)*A069902(n+1)`
-/

namespace A074399.P9526056166469961775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A069902 (n + 1)

end

end A074399.P9526056166469961775

namespace A074399

/-- `A054977(n)*A069902(n+1)` -/
def P9526056166469961775.Spec : Prop :=
  ∀ n, P9526056166469961775.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P5741408088531087959

`A006530(A087429(n+1)+n+1)`
-/

namespace A074399.P5741408088531087959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087429 (n + 1) + (n + 1 : ℤ)).toNat

end

end A074399.P5741408088531087959

namespace A074399

/-- `A006530(A087429(n+1)+n+1)` -/
def P5741408088531087959.Spec : Prop :=
  ∀ n, P5741408088531087959.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P2413777465571502638

`A076605(2*n+3)`
-/

namespace A074399.P2413777465571502638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (2 * n + 3)

end

end A074399.P2413777465571502638

namespace A074399

/-- `A076605(2*n+3)` -/
def P2413777465571502638.Spec : Prop :=
  ∀ n, P2413777465571502638.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P817860428924953428

`A006530(A245486(n+1))`
-/

namespace A074399.P817860428924953428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A245486 (n + 1)).toNat

end

end A074399.P817860428924953428

namespace A074399

/-- `A006530(A245486(n+1))` -/
def P817860428924953428.Spec : Prop :=
  ∀ n, P817860428924953428.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P13862766013850579867

`A006530(A002034(n+2)*A006530(n+1))`
-/

namespace A074399.P13862766013850579867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002034 (n + 2) * A006530 (n + 1)).toNat

end

end A074399.P13862766013850579867

namespace A074399

/-- `A006530(A002034(n+2)*A006530(n+1))` -/
def P13862766013850579867.Spec : Prop :=
  ∀ n, P13862766013850579867.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P6627596914194587336

`A006530(A006530(n+1)*A006530(n+2))`
-/

namespace A074399.P6627596914194587336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 1) * A006530 (n + 2)).toNat

end

end A074399.P6627596914194587336

namespace A074399

/-- `A006530(A006530(n+1)*A006530(n+2))` -/
def P6627596914194587336.Spec : Prop :=
  ∀ n, P6627596914194587336.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P8511858134153651121

`A006530(∑[n+1])+C(2, n+2)`
-/

namespace A074399.P8511858134153651121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose 2 (n + 2) : ℤ)

end

end A074399.P8511858134153651121

namespace A074399

/-- `A006530(∑[n+1])+C(2, n+2)` -/
def P8511858134153651121.Spec : Prop :=
  ∀ n, P8511858134153651121.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P18345159680992866896

`floor(A006530(C(n+2, 2))+1/(n+1))`
-/

namespace A074399.P18345159680992866896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (Nat.choose (n + 2) 2) : ℚ) + 1 / (n + 1 : ℚ)⌋

end

end A074399.P18345159680992866896

namespace A074399

/-- `floor(A006530(C(n+2, 2))+1/(n+1))` -/
def P18345159680992866896.Spec : Prop :=
  ∀ n, P18345159680992866896.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P17222634815232399416

`A007918(A006530(∑[n+1]))`
-/

namespace A074399.P17222634815232399416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074399.P17222634815232399416

namespace A074399

/-- `A007918(A006530(∑[n+1]))` -/
def P17222634815232399416.Spec : Prop :=
  ∀ n, P17222634815232399416.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P3375256196412815965

`A006530(lcm(2, C(n+2, 2)))`
-/

namespace A074399.P3375256196412815965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lcm 2 (Nat.choose (n + 2) 2))

end

end A074399.P3375256196412815965

namespace A074399

/-- `A006530(lcm(2, C(n+2, 2)))` -/
def P3375256196412815965.Spec : Prop :=
  ∀ n, P3375256196412815965.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P10786568484721031897

`A006530(A078636(n+1))`
-/

namespace A074399.P10786568484721031897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078636 (n + 1)).toNat

end

end A074399.P10786568484721031897

namespace A074399

/-- `A006530(A078636(n+1))` -/
def P10786568484721031897.Spec : Prop :=
  ∀ n, P10786568484721031897.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P1934559538193020428

`A006530(A083482(n+1))`
-/

namespace A074399.P1934559538193020428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A083482 (n + 1)).toNat

end

end A074399.P1934559538193020428

namespace A074399

/-- `A006530(A083482(n+1))` -/
def P1934559538193020428.Spec : Prop :=
  ∀ n, P1934559538193020428.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P3692673346335458377

`A006530(A168059(n+1))`
-/

namespace A074399.P3692673346335458377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A168059 (n + 1)).toNat

end

end A074399.P3692673346335458377

namespace A074399

/-- `A006530(A168059(n+1))` -/
def P3692673346335458377.Spec : Prop :=
  ∀ n, P3692673346335458377.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P1273622828720914551

`A006530((n+2)*A000265(n+1))`
-/

namespace A074399.P1273622828720914551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A000265 (n + 1)).toNat

end

end A074399.P1273622828720914551

namespace A074399

/-- `A006530((n+2)*A000265(n+1))` -/
def P1273622828720914551.Spec : Prop :=
  ∀ n, P1273622828720914551.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P15392705050210871819

`A006530((n+2)*A006530(n+1))`
-/

namespace A074399.P15392705050210871819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A006530 (n + 1)).toNat

end

end A074399.P15392705050210871819

namespace A074399

/-- `A006530((n+2)*A006530(n+1))` -/
def P15392705050210871819.Spec : Prop :=
  ∀ n, P15392705050210871819.a n = A074399 (n + 1)

end A074399

/-! ## A074399.P8415737492237712171

`A006530(lcm(n+2, A006530(n+1)))`
-/

namespace A074399.P8415737492237712171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (n + 2 : ℤ) (A006530 (n + 1)))

end

end A074399.P8415737492237712171

namespace A074399

/-- `A006530(lcm(n+2, A006530(n+1)))` -/
def P8415737492237712171.Spec : Prop :=
  ∀ n, P8415737492237712171.a n = A074399 (n + 1)

end A074399

