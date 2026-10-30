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
import Seq.B000.C016
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
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A144100: Numbers k such that k is strictly greater than f(k), where f(k) = 1 if k is prime, 2 * rad(k) if 4 divides k and rad(k) otherwise.

The programs for A144100, the canonical program `A144100.P2610238533023529381` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144100 has offset 1).

The definition of A144100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144100.P6968572892516632000

`eq[1, A144101(n+1)]+1`
-/

namespace A144100.P6968572892516632000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144100.P6968572892516632000

namespace A144100

/-- `eq[1, A144101(n+1)]+1` -/
def P6968572892516632000.Spec : Prop :=
  ∀ n, (P6968572892516632000.a n : ℤ) = A144100 (n + 1)

end A144100

/-! ## A144100.P8541547079244876870

`record[(n+2)*A144101(n+2)]`
-/

namespace A144100.P8541547079244876870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A144101 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144100.P8541547079244876870

namespace A144100

/-- `record[(n+2)*A144101(n+2)]` -/
def P8541547079244876870.Spec : Prop :=
  ∀ n, P8541547079244876870.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P2610238533023529381

`lt[A144907(n+1), n+1]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A144100

/-- `lt[A144907(n+1), n+1]+1` -/
def P2610238533023529381.Spec : Prop :=
  ∀ n, (P2610238533023529381.a n : ℤ) = A144100 (n + 1)

theorem P2610238533023529381.correct : P2610238533023529381.Spec := by
  intro n
  simp only [A144100, Nat.add_sub_cancel]

end A144100

/-! ## A144100.P263435200011358912

`eq[1, A144101(A028310(n))]`
-/

namespace A144100.P263435200011358912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144101 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144100.P263435200011358912

namespace A144100

/-- `eq[1, A144101(A028310(n))]` -/
def P263435200011358912.Spec : Prop :=
  ∀ n, (P263435200011358912.a n : ℤ) = A144100 (n + 1)

end A144100

/-! ## A144100.P7837077253375295555

`filter[A152271(n), A144101(#)]`
-/

namespace A144100.P7837077253375295555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P7837077253375295555

namespace A144100

/-- `filter[A152271(n), A144101(#)]` -/
def P7837077253375295555.Spec : Prop :=
  ∀ n, P7837077253375295555.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P17783856248556531705

`filter[A158416(n), A144101(#)]`
-/

namespace A144100.P17783856248556531705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P17783856248556531705

namespace A144100

/-- `filter[A158416(n), A144101(#)]` -/
def P17783856248556531705.Spec : Prop :=
  ∀ n, P17783856248556531705.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P12205657531058411248

`filter[A344180(n), A144101(#)]`
-/

namespace A144100.P12205657531058411248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P12205657531058411248

namespace A144100

/-- `filter[A344180(n), A144101(#)]` -/
def P12205657531058411248.Spec : Prop :=
  ∀ n, P12205657531058411248.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P5885855311434050280

`filter[A092942(n+1), A144101(#)]`
-/

namespace A144100.P5885855311434050280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P5885855311434050280

namespace A144100

/-- `filter[A092942(n+1), A144101(#)]` -/
def P5885855311434050280.Spec : Prop :=
  ∀ n, P5885855311434050280.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P462981327044218125

`filter[A133622(n+1), A144101(#)]`
-/

namespace A144100.P462981327044218125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P462981327044218125

namespace A144100

/-- `filter[A133622(n+1), A144101(#)]` -/
def P462981327044218125.Spec : Prop :=
  ∀ n, P462981327044218125.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P9232947058900625041

`filter[A174571(n+1), A144101(#)]`
-/

namespace A144100.P9232947058900625041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P9232947058900625041

namespace A144100

/-- `filter[A174571(n+1), A144101(#)]` -/
def P9232947058900625041.Spec : Prop :=
  ∀ n, P9232947058900625041.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P13617071514787879134

`filter[A246716(n+1), A144101(#)]`
-/

namespace A144100.P13617071514787879134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P13617071514787879134

namespace A144100

/-- `filter[A246716(n+1), A144101(#)]` -/
def P13617071514787879134.Spec : Prop :=
  ∀ n, P13617071514787879134.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P4833485488409457874

`filter[A253567(n+1), A144101(#)]`
-/

namespace A144100.P4833485488409457874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A144100.P4833485488409457874

namespace A144100

/-- `filter[A253567(n+1), A144101(#)]` -/
def P4833485488409457874.Spec : Prop :=
  ∀ n, P4833485488409457874.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P16392339248175747652

`∪[A000040(n+1), A046790(n+1)]`
-/

namespace A144100.P16392339248175747652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144100.P16392339248175747652

namespace A144100

/-- `∪[A000040(n+1), A046790(n+1)]` -/
def P16392339248175747652.Spec : Prop :=
  ∀ n, (P16392339248175747652.a n : ℤ) = A144100 (n + 1)

end A144100

/-! ## A144100.P10194775534160281711

`A302039(p?[A144101(n+1)+A006093(n+1)])`
-/

namespace A144100.P10194775534160281711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144101 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144100.P10194775534160281711

namespace A144100

/-- `A302039(p?[A144101(n+1)+A006093(n+1)])` -/
def P10194775534160281711.Spec : Prop :=
  ∀ n, P10194775534160281711.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P15439782407848118071

`record[A302039(A008864(n+1)-A144101(n+1))]`
-/

namespace A144100.P15439782407848118071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A008864 (n + 1) - A144101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144100.P15439782407848118071

namespace A144100

/-- `record[A302039(A008864(n+1)-A144101(n+1))]` -/
def P15439782407848118071.Spec : Prop :=
  ∀ n, P15439782407848118071.a n = A144100 (n + 1)

end A144100

/-! ## A144100.P4604529610263464119

`A302039(p?[A000040(n+1)*A144101(n+1)])`
-/

namespace A144100.P4604529610263464119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A144101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144100.P4604529610263464119

namespace A144100

/-- `A302039(p?[A000040(n+1)*A144101(n+1)])` -/
def P4604529610263464119.Spec : Prop :=
  ∀ n, P4604529610263464119.a n = A144100 (n + 1)

end A144100

/-!
# A144101: Characteristic sequence for A144100.

The programs for A144101, the canonical program `A144101.P11412887638920219634` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144101 has offset 1).

The definition of A144101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144101.P14788555993334436938

`A017909(C(A144907(n+1), n+1))`
-/

namespace A144101.P14788555993334436938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (Nat.choose (A144907 (n + 1)).toNat (n + 1))

end

end A144101.P14788555993334436938

namespace A144101

/-- `A017909(C(A144907(n+1), n+1))` -/
def P14788555993334436938.Spec : Prop :=
  ∀ n, P14788555993334436938.a n = A144101 (n + 1)

end A144101

/-! ## A144101.P15593482404027154957

`∏{e}[A306653(n+1)+1, A083896(#)]`
-/

namespace A144101.P15593482404027154957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A083896 (Nat.factorization (f1 n).natAbs p)

end

end A144101.P15593482404027154957

namespace A144101

/-- `∏{e}[A306653(n+1)+1, A083896(#)]` -/
def P15593482404027154957.Spec : Prop :=
  ∀ n, P15593482404027154957.a n = A144101 (n + 1)

end A144101

/-! ## A144101.P5001546659203305469

`A187556(floor(A144907(n+1)/(n+1)))`
-/

namespace A144101.P5001546659203305469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187556 ⌊(A144907 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A144101.P5001546659203305469

namespace A144101

/-- `A187556(floor(A144907(n+1)/(n+1)))` -/
def P5001546659203305469.Spec : Prop :=
  ∀ n, P5001546659203305469.a n = A144101 (n + 1)

end A144101

/-! ## A144101.P11412887638920219634

`A000040((n+1)/A144907(n+1))%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A144101

/-- `A000040((n+1)/A144907(n+1))%2` -/
def P11412887638920219634.Spec : Prop :=
  ∀ n, P11412887638920219634.a n = A144101 (n + 1)

theorem P11412887638920219634.correct : P11412887638920219634.Spec := by
  intro n
  simp only [A144101, Nat.add_sub_cancel]

end A144101

/-! ## A144101.P15480094141219866762

`and(1, A000040(A144907(n+1)%(n+1)+1))`
-/

namespace A144101.P15480094141219866762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (Int.tmod (A144907 (n + 1)) (n + 1 : ℤ) + 1).toNat)

end

end A144101.P15480094141219866762

namespace A144101

/-- `and(1, A000040(A144907(n+1)%(n+1)+1))` -/
def P15480094141219866762.Spec : Prop :=
  ∀ n, P15480094141219866762.a n = A144101 (n + 1)

end A144101

/-! ## A144101.P13891746670001770507

`∏{e}[A306653(n+1)+1, A001222(A071854(#))]`
-/

namespace A144101.P13891746670001770507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A071854 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A144101.P13891746670001770507

namespace A144101

/-- `∏{e}[A306653(n+1)+1, A001222(A071854(#))]` -/
def P13891746670001770507.Spec : Prop :=
  ∀ n, P13891746670001770507.a n = A144101 (n + 1)

end A144101

/-! ## A144101.P14541584644280556602

`char[A144100(n+1)-1]`
-/

namespace A144101.P14541584644280556602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144101.P14541584644280556602

namespace A144101

/-- `char[A144100(n+1)-1]` -/
def P14541584644280556602.Spec : Prop :=
  ∀ n, (P14541584644280556602.a n : ℤ) = A144101 (n + 1)

end A144101

/-! ## A144101.P3309535574328604071

`and(A106743(n+1), A298971(n+1))`
-/

namespace A144101.P3309535574328604071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106743 (n + 1)) (A298971 (n + 1))

end

end A144101.P3309535574328604071

namespace A144101

/-- `and(A106743(n+1), A298971(n+1))` -/
def P3309535574328604071.Spec : Prop :=
  ∀ n, P3309535574328604071.a n = A144101 (n + 1)

end A144101

/-! ## A144101.P16479293668527963119

`A306653((A306653(n+1)+1)²²)`
-/

namespace A144101.P16479293668527963119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (((A306653 (n + 1) + 1) ^ 2) ^ 2).toNat

end

end A144101.P16479293668527963119

namespace A144101

/-- `A306653((A306653(n+1)+1)²²)` -/
def P16479293668527963119.Spec : Prop :=
  ∀ n, P16479293668527963119.a n = A144101 (n + 1)

end A144101

/-! ## A144101.P14885705458930279511

`A057427(A144775(n+1))`
-/

namespace A144101.P14885705458930279511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A144775 (n + 1)).toNat

end

end A144101.P14885705458930279511

namespace A144101

/-- `A057427(A144775(n+1))` -/
def P14885705458930279511.Spec : Prop :=
  ∀ n, P14885705458930279511.a n = A144101 (n + 1)

end A144101

/-!
# A144103: Let N(p,i) denote the result of applying "nextprime" i times to p; a(n) = smallest prime p such that N(p,2) - p = 2*n, or -1 if no such prime exists.

The programs for A144103, there is no canonical definition to state claims against.
-/

/-! ## A144103.P12330787709076393875

`or(1, A337767(∑[n+2])-1)`
-/

namespace A144103.P12330787709076393875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A337767 (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A144103.P12330787709076393875

/-! ## A144103.P13441997929391388391

`A337767(∑[n+2])-A000007(n)`
-/

namespace A144103.P13441997929391388391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (∑ j ∈ Finset.range (n + 1), f1 j) - A000007 n

end

end A144103.P13441997929391388391

/-! ## A144103.P1434658089995174752

`A337767(∑[n+2])-A151933(n)`
-/

namespace A144103.P1434658089995174752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (∑ j ∈ Finset.range (n + 1), f1 j) - A151933 n

end

end A144103.P1434658089995174752

/-! ## A144103.P13426480862803232666

`A337767(∑[n+2])-A151934(n)`
-/

namespace A144103.P13426480862803232666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (∑ j ∈ Finset.range (n + 1), f1 j) - A151934 n

end

end A144103.P13426480862803232666

/-! ## A144103.P4051923237060386510

`A337767(∑[n+2])+A057427(n)-1`
-/

namespace A144103.P4051923237060386510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (∑ j ∈ Finset.range (n + 1), f1 j) + (A057427 n - 1)

end

end A144103.P4051923237060386510

/-! ## A144103.P10346485262748506560

`A337767(∑[n+2])-A008683((n+1)²)`
-/

namespace A144103.P10346485262748506560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (∑ j ∈ Finset.range (n + 1), f1 j) - A008683 ((n + 1) ^ 2)

end

end A144103.P10346485262748506560

/-! ## A144103.P5669163618415675627

`A337767(∑[n+2])-val(A000040(n+1), 2)`
-/

namespace A144103.P5669163618415675627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (∑ j ∈ Finset.range (n + 1), f1 j) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A144103.P5669163618415675627

/-! ## A144103.P3870388972533518093

`ceil(A337767(∑[n+2])-1/A006530(n+1))`
-/

namespace A144103.P3870388972533518093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337767 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) - 1 / (A006530 (n + 1) : ℚ)⌉

end

end A144103.P3870388972533518093

/-! ## A144103.P6659481005513300312

`A337767(∑[n+2])-C(A008683(n+1)+1, n)`
-/

namespace A144103.P6659481005513300312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.choose (A008683 (n + 1) + 1).toNat n : ℤ)

end

end A144103.P6659481005513300312

/-!
# A144104: Primes p such that log(nextPrime(p))/log(p) is smaller for larger primes.

The programs for A144104, there is no canonical definition to state claims against.
-/

/-! ## A144104.P10159444625041908846

`A151799(A144105(n+1))`
-/

namespace A144104.P10159444625041908846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A144105 (n + 1)).toNat

end

end A144104.P10159444625041908846

/-! ## A144104.P10221623144229710943

`A008578(∑{d}[A144105(n+1), A000720(#)])`
-/

namespace A144104.P10221623144229710943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A144104.P10221623144229710943

/-! ## A144104.P12572000706491856614

`A008578(∑{p}[A144105(n+1), A000720(#)])`
-/

namespace A144104.P12572000706491856614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A144104.P12572000706491856614

/-! ## A144104.P14454450164495845542

`A008578(∏{p}[A144105(n+1), A000720(#)])`
-/

namespace A144104.P14454450164495845542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A144104.P14454450164495845542

/-! ## A144104.P15768164305537171134

`A000040(∑{d}[A144105(n+1), A000720(#)]-1)`
-/

namespace A144104.P15768164305537171134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d - 1).toNat

end

end A144104.P15768164305537171134

/-! ## A144104.P13287520789758221661

`A000040(∑{p}[A144105(n+1), A000720(#)]-1)`
-/

namespace A144104.P13287520789758221661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A144104.P13287520789758221661

/-! ## A144104.P18280466752910048861

`A000040(∏{p}[A144105(n+1), A000720(#)]-1)`
-/

namespace A144104.P18280466752910048861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A144104.P18280466752910048861

/-!
# A144105: Primes at the upper end of the gaps mentioned in A144104.

The programs for A144105, there is no canonical definition to state claims against.
-/

/-! ## A144105.P17154664765136937997

`A151800(A144104(1+n))`
-/

namespace A144105.P17154664765136937997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A144104 (1 + n)).toNat

end

end A144105.P17154664765136937997

/-! ## A144105.P5434319809460659075

`A000040(A000720(A144104(n+1))+1)`
-/

namespace A144105.P5434319809460659075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A144104 (n + 1)).toNat + 1).toNat

end

end A144105.P5434319809460659075

/-! ## A144105.P9051350748957249359

`A067792(A144104(n+1))`
-/

namespace A144105.P9051350748957249359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A144104 (n + 1)).toNat

end

end A144105.P9051350748957249359

/-! ## A144105.P17083919834785651671

`A003961(A144104(n+1))`
-/

namespace A144105.P17083919834785651671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A144104 (n + 1)).toNat

end

end A144105.P17083919834785651671

/-! ## A144105.P8419496767261175113

`A007918(A144104(n+1)+1)`
-/

namespace A144105.P8419496767261175113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A144104 (n + 1) + 1).toNat

end

end A144105.P8419496767261175113

/-!
# A144107: Eigentriangle, row sums = n!

The programs for A144107, there is no canonical definition to state claims against.
-/

/-! ## A144107.P13269864308385866001

`A141476(∑[2*n]%comp[∑[n]])`
-/

namespace A144107.P13269864308385866001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141476 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A144107.P13269864308385866001

/-! ## A144107.P13504789073102006350

`A141476(∑[char[∑[n]]]²-(n+1))`
-/

namespace A144107.P13504789073102006350
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141476 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A144107.P13504789073102006350

/-! ## A144107.P15399693322395600387

`lcm((-1)^∑{e}[n+1, #], A141476(A061579(n)))`
-/

namespace A144107.P15399693322395600387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A141476 (A061579 n).toNat)

end

end A144107.P15399693322395600387

/-! ## A144107.P159867166931789633

`A178798(n)+A141476(A061579(n))`
-/

namespace A144107.P159867166931789633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A141476 (A061579 n).toNat

end

end A144107.P159867166931789633

/-! ## A144107.P369285303888501414

`A141476(A061579(n))%A001060(n)`
-/

namespace A144107.P369285303888501414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141476 (A061579 n).toNat) (A001060 n)

end

end A144107.P369285303888501414

/-!
# A144108: Eigentriangle based on A052186 (permutations without strong fixed points), row sums = n!

The programs for A144108, there is no canonical definition to state claims against.
-/

/-! ## A144108.P16035787915531281753

`A170974(or(A140303(n), A271078(n)))`
-/

namespace A144108.P16035787915531281753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 (Int.lor (A140303 n) (A271078 n)).toNat

end

end A144108.P16035787915531281753

/-! ## A144108.P9137046109871145067

`A116598(n)*A323273(A292382(n+1))`
-/

namespace A144108.P9137046109871145067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n * A323273 (A292382 (n + 1)).toNat

end

end A144108.P9137046109871145067

/-!
# A144109: INVERT transform of the cubes A000578.

The programs for A144109, the canonical program `A144109.P15775941751959478664` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144109 has offset 0).

The definition of A144109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144109.P16100788621798637265

`ogf((1+4x+x^2)/(1-5x+2x^2-5x^3+x^4))`
-/

namespace A144109.P16100788621798637265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -5, 2, -5, 1] n

end

end A144109.P16100788621798637265

namespace A144109

/-- `ogf((1+4x+x^2)/(1-5x+2x^2-5x^3+x^4))` -/
def P16100788621798637265.Spec : Prop :=
  ∀ n, P16100788621798637265.a n = A144109 n

end A144109

/-! ## A144109.P15775941751959478664

`(9*A004254(n+1)-4*A056594(n))/5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A144109

/-- `(9*A004254(n+1)-4*A056594(n))/5` -/
def P15775941751959478664.Spec : Prop :=
  ∀ n, P15775941751959478664.a n = (A144109 n : ℚ)

end A144109

/-! ## A144109.P15468744966518098514

`A320251(Δ[A264443(n)])`
-/

namespace A144109.P15468744966518098514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320251 (f1 (n + 1) - f1 n).toNat

end

end A144109.P15468744966518098514

namespace A144109

/-- `A320251(Δ[A264443(n)])` -/
def P15468744966518098514.Spec : Prop :=
  ∀ n, P15468744966518098514.a n = A144109 n

end A144109

/-!
# A144110: Period 6: repeat [2, 2, 2, 1, 1, 1].

The programs for A144110, the canonical program `A144110.P9116872778778491633` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144110 has offset 0).

The definition of A144110 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A144110.anchor (n : ℕ) : A144110 n = [2, 2, 2, 1, 1, 1].getD (n % 6) 0` in `Proof.A144.A144110`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144110.P9116872778778491633

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144110

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P9116872778778491633.Spec : Prop :=
  ∀ n, P9116872778778491633.a n = A144110 n

theorem P9116872778778491633.correct : P9116872778778491633.Spec := by
  intro n
  simp only [A144110]

end A144110

/-!
# A144111: Number of different pairs of primes p and q with p<q such that 6*r(n)=p+q with r(i)=i-th prime.

The programs for A144111, there is no canonical definition to state claims against.
-/

/-! ## A144111.P17349749834632676226

`A002375(3*p?[xor(1, n)+1])`
-/

namespace A144111.P17349749834632676226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A144111.P17349749834632676226

/-! ## A144111.P10615126093828771537

`A045917(3*p?[xor(1, n)+1])`
-/

namespace A144111.P10615126093828771537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A144111.P10615126093828771537

/-! ## A144111.P1647867804344297308

`A061357(3*p?[xor(1, n)+1])`
-/

namespace A144111.P1647867804344297308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A144111.P1647867804344297308

/-! ## A144111.P2081763099074934434

`A002375(3*p?[n%3+n])`
-/

namespace A144111.P2081763099074934434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A144111.P2081763099074934434

/-! ## A144111.P3458674409789554842

`A002375(3*p?[round(sqrt(n)+n)])`
-/

namespace A144111.P3458674409789554842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144111.P3458674409789554842

/-! ## A144111.P12503326972686052207

`A045917(3*p?[round(sqrt(n)+n)])`
-/

namespace A144111.P12503326972686052207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144111.P12503326972686052207

/-! ## A144111.P12367951832581169854

`A061358(3*2*p?[abs(xor(n, -2))])`
-/

namespace A144111.P12367951832581169854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (3 * (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A144111.P12367951832581169854

/-! ## A144111.P3509312288294765148

`A002375(A001748(n+1))`
-/

namespace A144111.P3509312288294765148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A001748 (n + 1)).toNat

end

end A144111.P3509312288294765148

/-! ## A144111.P8142879636114871891

`A002375(A063534(n+1))`
-/

namespace A144111.P8142879636114871891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A063534 (n + 1)).toNat

end

end A144111.P8142879636114871891

/-! ## A144111.P15927256797733894470

`A061358(A138636(n+1))`
-/

namespace A144111.P15927256797733894470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A138636 (n + 1)).toNat

end

end A144111.P15927256797733894470

/-!
# A144112: Weight array W={w(i,j)} of the natural number array A000027.

The programs for A144112, the canonical program `A144112.P9254676889423699721` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144112 has offset 1).

The definition of A144112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144112.P2382384427925500815

`A051340(n-char[∑[n+1]])`
-/

namespace A144112.P2382384427925500815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A144112.P2382384427925500815

namespace A144112

/-- `A051340(n-char[∑[n+1]])` -/
def P2382384427925500815.Spec : Prop :=
  ∀ n, P2382384427925500815.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P613418404875352876

`floor(root(1+2*n, A028326(n)))`
-/

namespace A144112.P613418404875352876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 + 2 * n : ℝ) ^ (1 / (A028326 n : ℝ))⌋

end

end A144112.P613418404875352876

namespace A144112

/-- `floor(root(1+2*n, A028326(n)))` -/
def P613418404875352876.Spec : Prop :=
  ∀ n, P613418404875352876.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P16070507632936902247

`floor(sqrt(root(2*n+1, A007318(n))))`
-/

namespace A144112.P16070507632936902247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((2 * n + 1 : ℝ) ^ (1 / (A007318 n : ℝ)))⌋

end

end A144112.P16070507632936902247

namespace A144112

/-- `floor(sqrt(root(2*n+1, A007318(n))))` -/
def P16070507632936902247.Spec : Prop :=
  ∀ n, P16070507632936902247.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P1335358496945822638

`A131821(n+1)-char[∑[n+1]]`
-/

namespace A144112.P1335358496945822638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144112.P1335358496945822638

namespace A144112

/-- `A131821(n+1)-char[∑[n+1]]` -/
def P1335358496945822638.Spec : Prop :=
  ∀ n, P1335358496945822638.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P9342712038624121138

`A130296(C(row(n), 2)+col(n)+1)`
-/

namespace A144112.P9342712038624121138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (Nat.choose (SequenceMachineLib.triRow n) 2 + SequenceMachineLib.triCol n + 1)

end

end A144112.P9342712038624121138

namespace A144112

/-- `A130296(C(row(n), 2)+col(n)+1)` -/
def P9342712038624121138.Spec : Prop :=
  ∀ n, P9342712038624121138.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P15531505138957197383

`A130296(n+1-∑[char[∑[n+1]]])`
-/

namespace A144112.P15531505138957197383
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144112.P15531505138957197383

namespace A144112

/-- `A130296(n+1-∑[char[∑[n+1]]])` -/
def P15531505138957197383.Spec : Prop :=
  ∀ n, P15531505138957197383.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P9254676889423699721

`A028310(Δ[A056942(n)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A144112

/-- `A028310(Δ[A056942(n)])` -/
def P9254676889423699721.Spec : Prop :=
  ∀ n, P9254676889423699721.a n = A144112 (n + 1)

theorem P9254676889423699721.correct : P9254676889423699721.Spec := by
  intro n
  simp only [A144112, Nat.add_sub_cancel]

end A144112

/-! ## A144112.P13552684906621229077

`A057979(abs(Δ[A010816(n)]))`
-/

namespace A144112.P13552684906621229077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 |f1 (n + 1) - f1 n|.toNat

end

end A144112.P13552684906621229077

namespace A144112

/-- `A057979(abs(Δ[A010816(n)]))` -/
def P13552684906621229077.Spec : Prop :=
  ∀ n, P13552684906621229077.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P4947616358103993086

`A144217(n+1)+A123110(n)`
-/

namespace A144112.P4947616358103993086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A123110 n

end

end A144112.P4947616358103993086

namespace A144112

/-- `A144217(n+1)+A123110(n)` -/
def P4947616358103993086.Spec : Prop :=
  ∀ n, P4947616358103993086.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P6896493096171019890

`A131821(1-A073424(n)+n)`
-/

namespace A144112.P6896493096171019890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (1 - A073424 n + (n : ℤ)).toNat

end

end A144112.P6896493096171019890

namespace A144112

/-- `A131821(1-A073424(n)+n)` -/
def P6896493096171019890.Spec : Prop :=
  ∀ n, P6896493096171019890.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P11769294855133104697

`A003056(n*A103451(n)+1)`
-/

namespace A144112.P11769294855133104697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) * A103451 n + 1).toNat

end

end A144112.P11769294855133104697

namespace A144112

/-- `A003056(n*A103451(n)+1)` -/
def P11769294855133104697.Spec : Prop :=
  ∀ n, P11769294855133104697.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P16864857798269295636

`A131821(1-(A073424(n)-n))`
-/

namespace A144112.P16864857798269295636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (1 - (A073424 n - (n : ℤ))).toNat

end

end A144112.P16864857798269295636

namespace A144112

/-- `A131821(1-(A073424(n)-n))` -/
def P16864857798269295636.Spec : Prop :=
  ∀ n, P16864857798269295636.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P17642685568176225617

`A003056(n+1)/A318274(n)`
-/

namespace A144112.P17642685568176225617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (n + 1) : ℚ) / (A318274 n : ℚ)

end

end A144112.P17642685568176225617

namespace A144112

/-- `A003056(n+1)/A318274(n)` -/
def P17642685568176225617.Spec : Prop :=
  ∀ n, P17642685568176225617.a n = (A144112 (n + 1) : ℚ)

end A144112

/-! ## A144112.P378228062704402066

`gcd(A128138(n+1), A242378(n))`
-/

namespace A144112.P378228062704402066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128138 (n + 1)) (A242378 n)

end

end A144112.P378228062704402066

namespace A144112

/-- `gcd(A128138(n+1), A242378(n))` -/
def P378228062704402066.Spec : Prop :=
  ∀ n, (P378228062704402066.a n : ℤ) = A144112 (n + 1)

end A144112

/-! ## A144112.P7347390974630138970

`A003056(lcm(n, A103452(n))+1)`
-/

namespace A144112.P7347390974630138970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (n : ℤ) (A103452 n) + 1)

end

end A144112.P7347390974630138970

namespace A144112

/-- `A003056(lcm(n, A103452(n))+1)` -/
def P7347390974630138970.Spec : Prop :=
  ∀ n, P7347390974630138970.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P16194139622926205331

`ceil(A003056(n+1)/A007318(n))`
-/

namespace A144112.P16194139622926205331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A144112.P16194139622926205331

namespace A144112

/-- `ceil(A003056(n+1)/A007318(n))` -/
def P16194139622926205331.Spec : Prop :=
  ∀ n, P16194139622926205331.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P9739634317072124902

`A131821(1-A144217(n+1)+n)`
-/

namespace A144112.P9739634317072124902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (1 - A144217 (n + 1) + (n : ℤ)).toNat

end

end A144112.P9739634317072124902

namespace A144112

/-- `A131821(1-A144217(n+1)+n)` -/
def P9739634317072124902.Spec : Prop :=
  ∀ n, P9739634317072124902.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P2091388221849159922

`A131821(n+2-A130296(n+1))`
-/

namespace A144112.P2091388221849159922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 ((n + 2 : ℤ) - A130296 (n + 1)).toNat

end

end A144112.P2091388221849159922

namespace A144112

/-- `A131821(n+2-A130296(n+1))` -/
def P2091388221849159922.Spec : Prop :=
  ∀ n, P2091388221849159922.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P7218358510567736793

`A131821(n+2-A131821(n+1))`
-/

namespace A144112.P7218358510567736793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 ((n + 2 : ℤ) - A131821 (n + 1)).toNat

end

end A144112.P7218358510567736793

namespace A144112

/-- `A131821(n+2-A131821(n+1))` -/
def P7218358510567736793.Spec : Prop :=
  ∀ n, P7218358510567736793.a n = A144112 (n + 1)

end A144112

/-! ## A144112.P13928188176257452887

`A065033(A131843(n)+A103452(n))`
-/

namespace A144112.P13928188176257452887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A131843 n + A103452 n).toNat

end

end A144112.P13928188176257452887

namespace A144112

/-- `A065033(A131843(n)+A103452(n))` -/
def P13928188176257452887.Spec : Prop :=
  ∀ n, P13928188176257452887.a n = A144112 (n + 1)

end A144112

/-!
# A144113: Weight array W={w(i,j)} of the natural number array A038722.

The programs for A144113, the canonical program `A144113.P8996339345414942979` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144113 has offset 1).

The definition of A144113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144113.P14140820637793945129

`T((1-col(n))*(T(n-1,k)-1), T(n-1,k-1))+1` with `a(0)=1`
-/

namespace A144113.P14140820637793945129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((1 - (SequenceMachineLib.triCol n : ℤ)) * (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - 1)) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) + 1

end

end A144113.P14140820637793945129

namespace A144113

/-- `T((1-col(n))*(T(n-1,k)-1), T(n-1,k-1))+1` -/
def P14140820637793945129.Spec : Prop :=
  ∀ n, (P14140820637793945129.a n : ℤ) = A144113 (n + 1)

end A144113

/-! ## A144113.P11680125190546129044

`A131821(n+1)-char[∑[n+2]]`
-/

namespace A144113.P11680125190546129044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144113.P11680125190546129044

namespace A144113

/-- `A131821(n+1)-char[∑[n+2]]` -/
def P11680125190546129044.Spec : Prop :=
  ∀ n, P11680125190546129044.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P8996339345414942979

`A144112(A038722(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A144113

/-- `A144112(A038722(n+1))` -/
def P8996339345414942979.Spec : Prop :=
  ∀ n, P8996339345414942979.a n = A144113 (n + 1)

theorem P8996339345414942979.correct : P8996339345414942979.Spec := by
  intro n
  simp only [A144113, Nat.add_sub_cancel]

end A144113

/-! ## A144113.P7395277566496854336

`A144112(A061579(n)+1)`
-/

namespace A144113.P7395277566496854336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A061579 n + 1).toNat

end

end A144113.P7395277566496854336

namespace A144113

/-- `A144112(A061579(n)+1)` -/
def P7395277566496854336.Spec : Prop :=
  ∀ n, P7395277566496854336.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P8920357048976489028

`gcd(A078436(n+1), A242379(n))`
-/

namespace A144113.P8920357048976489028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078436 (n + 1)) (A242379 n)

end

end A144113.P8920357048976489028

namespace A144113

/-- `gcd(A078436(n+1), A242379(n))` -/
def P8920357048976489028.Spec : Prop :=
  ∀ n, (P8920357048976489028.a n : ℤ) = A144113 (n + 1)

end A144113

/-! ## A144113.P16269727756007532753

`A144112(∑[A010054(n)]²-n)`
-/

namespace A144113.P16269727756007532753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A144113.P16269727756007532753

namespace A144113

/-- `A144112(∑[A010054(n)]²-n)` -/
def P16269727756007532753.Spec : Prop :=
  ∀ n, P16269727756007532753.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P10316460150547797977

`A144112(A002024(n+1)²-n)`
-/

namespace A144113.P10316460150547797977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A144113.P10316460150547797977

namespace A144113

/-- `A144112(A002024(n+1)²-n)` -/
def P10316460150547797977.Spec : Prop :=
  ∀ n, P10316460150547797977.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P14822323385928323575

`ceil(A130517(n+1)/A007318(n))`
-/

namespace A144113.P14822323385928323575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130517 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A144113.P14822323385928323575

namespace A144113

/-- `ceil(A130517(n+1)/A007318(n))` -/
def P14822323385928323575.Spec : Prop :=
  ∀ n, P14822323385928323575.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P16198011077291846812

`ceil(A130517(n+1)/A026725(n))`
-/

namespace A144113.P16198011077291846812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130517 (n + 1) : ℚ) / (A026725 n : ℚ)⌉

end

end A144113.P16198011077291846812

namespace A144113

/-- `ceil(A130517(n+1)/A026725(n))` -/
def P16198011077291846812.Spec : Prop :=
  ∀ n, P16198011077291846812.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P1085803722118433530

`ceil(A130517(n+1)/A059674(n))`
-/

namespace A144113.P1085803722118433530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130517 (n + 1) : ℚ) / (A059674 n : ℚ)⌉

end

end A144113.P1085803722118433530

namespace A144113

/-- `ceil(A130517(n+1)/A059674(n))` -/
def P1085803722118433530.Spec : Prop :=
  ∀ n, P1085803722118433530.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P14726882110351242376

`A144112(n+1)-Δ[A010054(n)]`
-/

namespace A144113.P14726882110351242376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (n + 1) - (f1 (n + 1) - f1 n)

end

end A144113.P14726882110351242376

namespace A144113

/-- `A144112(n+1)-Δ[A010054(n)]` -/
def P14726882110351242376.Spec : Prop :=
  ∀ n, P14726882110351242376.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P5371844561110356906

`A144112(n+1)-Δ[A035214(n)]`
-/

namespace A144113.P5371844561110356906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (n + 1) - (f1 (n + 1) - f1 n)

end

end A144113.P5371844561110356906

namespace A144113

/-- `A144112(n+1)-Δ[A035214(n)]` -/
def P5371844561110356906.Spec : Prop :=
  ∀ n, P5371844561110356906.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P1668692651377323119

`A130296(2-A158405(n+1)+n)`
-/

namespace A144113.P1668692651377323119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (2 - A158405 (n + 1) + (n : ℤ)).toNat

end

end A144113.P1668692651377323119

namespace A144113

/-- `A130296(2-A158405(n+1)+n)` -/
def P1668692651377323119.Spec : Prop :=
  ∀ n, P1668692651377323119.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P5274713773743358618

`ceil(A130517(n+1)/A001263(n+1))`
-/

namespace A144113.P5274713773743358618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130517 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ)⌉

end

end A144113.P5274713773743358618

namespace A144113

/-- `ceil(A130517(n+1)/A001263(n+1))` -/
def P5274713773743358618.Spec : Prop :=
  ∀ n, P5274713773743358618.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P15323361168931981393

`A101279(A131843(A066182(n+1)))`
-/

namespace A144113.P15323361168931981393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A131843 (A066182 (n + 1)).toNat).toNat

end

end A144113.P15323361168931981393

namespace A144113

/-- `A101279(A131843(A066182(n+1)))` -/
def P15323361168931981393.Spec : Prop :=
  ∀ n, P15323361168931981393.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P2837999056080221543

`A065033(A131843(n)-A101688(n))`
-/

namespace A144113.P2837999056080221543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A131843 n - A101688 n).toNat

end

end A144113.P2837999056080221543

namespace A144113

/-- `A065033(A131843(n)-A101688(n))` -/
def P2837999056080221543.Spec : Prop :=
  ∀ n, P2837999056080221543.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P11733171944118952231

`A065033(A131843(n)-A103452(n))`
-/

namespace A144113.P11733171944118952231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A131843 n - A103452 n).toNat

end

end A144113.P11733171944118952231

namespace A144113

/-- `A065033(A131843(n)-A103452(n))` -/
def P11733171944118952231.Spec : Prop :=
  ∀ n, P11733171944118952231.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P7828262092799534183

`A004525(A131843(n)-Δ[A035214(n)])`
-/

namespace A144113.P7828262092799534183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131843 n - (f1 (n + 1) - f1 n)).toNat

end

end A144113.P7828262092799534183

namespace A144113

/-- `A004525(A131843(n)-Δ[A035214(n)])` -/
def P7828262092799534183.Spec : Prop :=
  ∀ n, P7828262092799534183.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P3739398033795907654

`A144112(n+1)+A010054(n)-A010054(n+1)`
-/

namespace A144113.P3739398033795907654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (n + 1) + (A010054 n - A010054 (n + 1))

end

end A144113.P3739398033795907654

namespace A144113

/-- `A144112(n+1)+A010054(n)-A010054(n+1)` -/
def P3739398033795907654.Spec : Prop :=
  ∀ n, P3739398033795907654.a n = A144113 (n + 1)

end A144113

/-! ## A144113.P5225530988486953288

`A131821(A038722(n+1)+1-A131821(n+1))`
-/

namespace A144113.P5225530988486953288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (A038722 (n + 1) + (1 - A131821 (n + 1))).toNat

end

end A144113.P5225530988486953288

namespace A144113

/-- `A131821(A038722(n+1)+1-A131821(n+1))` -/
def P5225530988486953288.Spec : Prop :=
  ∀ n, P5225530988486953288.a n = A144113 (n + 1)

end A144113

/-!
# A144115: Total number of Fibonacci parts in all partitions of n.

The programs for A144115, there is no canonical definition to state claims against.
-/

/-! ## A144115.P17021178523322625606

`∑[A144117(1+n)]`
-/

namespace A144115.P17021178523322625606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144117 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144115.P17021178523322625606

/-! ## A144115.P3822771822075336718

`A144117(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A144115.P3822771822075336718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144117 (n + 1) + a (n - 1)

end

end A144115.P3822771822075336718

/-! ## A144115.P6174250852555549683

`A006128(n+1)-A144116(n+1)`
-/

namespace A144115.P6174250852555549683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A144116 (n + 1)

end

end A144115.P6174250852555549683

/-! ## A144115.P14161771814327730436

`∑[A138137(n+1)]-A144116(n+1)`
-/

namespace A144115.P14161771814327730436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144116 (n + 1)

end

end A144115.P14161771814327730436

/-! ## A144115.P8590181075624774390

`A037032(n+1)+A144119(n+1)-A144116(n+1)`
-/

namespace A144115.P8590181075624774390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (n + 1) + (A144119 (n + 1) - A144116 (n + 1))

end

end A144115.P8590181075624774390

/-! ## A144115.P16081817298301909398

`∑[record[A144117(A263275(n))]]`
-/

namespace A144115.P16081817298301909398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144117 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144115.P16081817298301909398

/-!
# A144116: Number of non-Fibonacci parts in all partitions of n.

The programs for A144116, there is no canonical definition to state claims against.
-/

/-! ## A144116.P7212940703156282258

`A006128(n+1)-A144115(n+1)`
-/

namespace A144116.P7212940703156282258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A144115 (n + 1)

end

end A144116.P7212940703156282258

/-! ## A144116.P1240380164724536069

`∑[Δ[A006128(n)]-A144117(n+1)]`
-/

namespace A144116.P1240380164724536069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A144117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144116.P1240380164724536069

/-! ## A144116.P2751507735367715561

`A006128(n+1)-∑[A144117(n+1)]`
-/

namespace A144116.P2751507735367715561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144116.P2751507735367715561

/-! ## A144116.P13385010961208430056

`∑[A138137(n+1)]-A144115(n+1)`
-/

namespace A144116.P13385010961208430056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144115 (n + 1)

end

end A144116.P13385010961208430056

/-! ## A144116.P6406401798377018761

`∑[A138137(n+1)-A144117(n+1)]`
-/

namespace A144116.P6406401798377018761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A144117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144116.P6406401798377018761

/-! ## A144116.P6897480045041282708

`A037032(n+1)+A144119(n+1)-A144115(n+1)`
-/

namespace A144116.P6897480045041282708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (n + 1) + (A144119 (n + 1) - A144115 (n + 1))

end

end A144116.P6897480045041282708

/-!
# A144117: Number of Fibonacci parts in the last section of the set of partitions of n.

The programs for A144117, there is no canonical definition to state claims against.
-/

/-! ## A144117.P5126502560171041820

`A000007(n)+Δ[A144115(A028310(n))]`
-/

namespace A144117.P5126502560171041820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A144117.P5126502560171041820

/-! ## A144117.P15102801119711276834

`Δ[A144115(A028310(n))+A040000(n)]`
-/

namespace A144117.P15102801119711276834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144117.P15102801119711276834

/-! ## A144117.P5718799604653696544

`Δ[A144115(A028310(n))+A057427(n)]`
-/

namespace A144117.P5718799604653696544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144117.P5718799604653696544

/-! ## A144117.P4142164189504283299

`Δ[A006128(n)-A144116(A028310(n))]`
-/

namespace A144117.P4142164189504283299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A144116 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144117.P4142164189504283299

/-! ## A144117.P491120474670023319

`A036987(2*n)+Δ[A144115(A028310(n))]`
-/

namespace A144117.P491120474670023319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (f1 (n + 1) - f1 n)

end

end A144117.P491120474670023319

/-! ## A144117.P1639479844394032330

`A144115(n+1)+A000007(n)-A144115(A028310(n))`
-/

namespace A144117.P1639479844394032330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (n + 1) + (A000007 n - A144115 (A028310 n).toNat)

end

end A144117.P1639479844394032330

/-! ## A144117.P13243862667008305865

`A144115(n+1)-A057427(n)*A144115(A028310(n))`
-/

namespace A144117.P13243862667008305865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (n + 1) - A057427 n * A144115 (A028310 n).toNat

end

end A144117.P13243862667008305865

/-! ## A144117.P14936825427853183562

`Δ[A006128(n)-A144116(A233583(n+1))]`
-/

namespace A144117.P14936825427853183562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A144116 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144117.P14936825427853183562

/-!
# A144118: Number of non-Fibonacci parts in the last section of the set of partitions of n.

The programs for A144118, there is no canonical definition to state claims against.
-/

/-! ## A144118.P2470031084069997342

`A138137(n+1)-A144117(n+1)`
-/

namespace A144118.P2470031084069997342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A144117 (n + 1)

end

end A144118.P2470031084069997342

/-! ## A144118.P2769454481975876243

`Δ[A144116(C(2, n)+n)]`
-/

namespace A144118.P2769454481975876243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144116 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144118.P2769454481975876243

/-! ## A144118.P17052711245048842914

`Δ[A144116(floor(acot(n)+n))]`
-/

namespace A144118.P17052711245048842914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144116 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144118.P17052711245048842914

/-! ## A144118.P1388002059582264667

`Δ[A144116(round(acot(n)+n))]`
-/

namespace A144118.P1388002059582264667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144116 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144118.P1388002059582264667

/-! ## A144118.P14111579520486861604

`Δ[A144116(abs(1-n)+1)]`
-/

namespace A144118.P14111579520486861604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144116 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144118.P14111579520486861604

/-!
# A144119: Total number of nonprime parts in all partitions of n.

The programs for A144119, there is no canonical definition to state claims against.
-/

/-! ## A144119.P15747139183972664827

`A006128(n+1)-A037032(n+1)`
-/

namespace A144119.P15747139183972664827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A037032 (n + 1)

end

end A144119.P15747139183972664827

/-! ## A144119.P13039237381060356628

`∑[A144121(n+1)]`
-/

namespace A144119.P13039237381060356628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144119.P13039237381060356628

/-! ## A144119.P7992786948855702534

`∑[A138137(n+1)-A144120(n+1)]`
-/

namespace A144119.P7992786948855702534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A144120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144119.P7992786948855702534

/-! ## A144119.P13951320607835204637

`∑[A138137(n+1)]-A037032(n+1)`
-/

namespace A144119.P13951320607835204637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037032 (n + 1)

end

end A144119.P13951320607835204637

/-! ## A144119.P5116665312299280616

`Δ[A284870(n)]-A037032(n+1)`
-/

namespace A144119.P5116665312299280616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A037032 (n + 1)

end

end A144119.P5116665312299280616

/-! ## A144119.P12680246404535735290

`Δ[A124920(n+1)]-A037032(n+1)`
-/

namespace A144119.P12680246404535735290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A037032 (n + 1)

end

end A144119.P12680246404535735290

/-! ## A144119.P4168303858312269965

`A144115(n+1)+A144116(n+1)-A037032(n+1)`
-/

namespace A144119.P4168303858312269965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (n + 1) + (A144116 (n + 1) - A037032 (n + 1))

end

end A144119.P4168303858312269965

/-! ## A144119.P17372099603694287162

`A181187(A000124(n))-A037032(n+1)`
-/

namespace A144119.P17372099603694287162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (A000124 n).toNat - A037032 (n + 1)

end

end A144119.P17372099603694287162

/-!
# A144120: Number of prime parts in the last section of the set of partitions of n.

The programs for A144120, there is no canonical definition to state claims against.
-/

/-! ## A144120.P4022549775363130940

`A138137(n+1)-A144121(n+1)`
-/

namespace A144120.P4022549775363130940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A144121 (n + 1)

end

end A144120.P4022549775363130940

/-! ## A144120.P17132909864949668053

`Δ[A037032(A028310(n))]`
-/

namespace A144120.P17132909864949668053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P17132909864949668053

/-! ## A144120.P2507611733164266716

`Δ[A037032(A000007(n)+n)]`
-/

namespace A144120.P2507611733164266716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P2507611733164266716

/-! ## A144120.P12762981329016397115

`Δ[A037032(gcd(n, A008574(n)))]`
-/

namespace A144120.P12762981329016397115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P12762981329016397115

/-! ## A144120.P772387783307708891

`Δ[A037032(xor(n, A000007(n)))]`
-/

namespace A144120.P772387783307708891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P772387783307708891

/-! ## A144120.P17682519457738324024

`A037032(n+1)-A037032(A028310(n))`
-/

namespace A144120.P17682519457738324024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (n + 1) - A037032 (A028310 n).toNat

end

end A144120.P17682519457738324024

/-! ## A144120.P4482809850005575975

`A037032(n+1)-A037032(A000007(n)+n)`
-/

namespace A144120.P4482809850005575975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (n + 1) - A037032 (A000007 n + (n : ℤ)).toNat

end

end A144120.P4482809850005575975

/-! ## A144120.P18088731828747300351

`A006128(n+1)-(A144121(n+1)+A006128(n))`
-/

namespace A144120.P18088731828747300351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A144121 (n + 1) + A006128 n)

end

end A144120.P18088731828747300351

/-! ## A144120.P12258647380145829811

`A037032(n+1)-A037032(A065033(2*n))`
-/

namespace A144120.P12258647380145829811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (n + 1) - A037032 (A065033 (2 * n)).toNat

end

end A144120.P12258647380145829811

/-! ## A144120.P17449278935321669780

`Δ[A037032(A065033(2*n))]`
-/

namespace A144120.P17449278935321669780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P17449278935321669780

/-! ## A144120.P15420554998598485684

`Δ[A037032(A123108(2*n))]`
-/

namespace A144120.P15420554998598485684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P15420554998598485684

/-! ## A144120.P7595791037381707856

`Δ[A037032(A007318(A000124(n)))]`
-/

namespace A144120.P7595791037381707856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P7595791037381707856

/-! ## A144120.P11228435300276067211

`A037032(n+1)-A037032(A137734(n²))`
-/

namespace A144120.P11228435300276067211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (n + 1) - A037032 (A137734 (n ^ 2)).toNat

end

end A144120.P11228435300276067211

/-! ## A144120.P1225450620176661795

`A037032(n+1)-A037032(A137735(n²))`
-/

namespace A144120.P1225450620176661795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (n + 1) - A037032 (A137735 (n ^ 2)).toNat

end

end A144120.P1225450620176661795

/-! ## A144120.P15246379991882813949

`Δ[A037032(A137734(n²))]`
-/

namespace A144120.P15246379991882813949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P15246379991882813949

/-! ## A144120.P15828750501746208935

`Δ[A037032(A137735(n²))]`
-/

namespace A144120.P15828750501746208935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037032 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144120.P15828750501746208935

/-!
# A144121: Number of nonprime parts in the last section of the set of partitions of n.

The programs for A144121, there is no canonical definition to state claims against.
-/

/-! ## A144121.P9098647876239378833

`A138137(n+1)-A144120(n+1)`
-/

namespace A144121.P9098647876239378833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A144120 (n + 1)

end

end A144121.P9098647876239378833

/-! ## A144121.P4349717509042642122

`A330242(n+1)+1+n-A144120(n+1)`
-/

namespace A144121.P4349717509042642122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330242 (n + 1) + 1 + (n : ℤ) - A144120 (n + 1)

end

end A144121.P4349717509042642122

/-! ## A144121.P16362086659750140049

`abs(Δ[A144119(abs(1-n)+1)])`
-/

namespace A144121.P16362086659750140049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144119 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A144121.P16362086659750140049

/-! ## A144121.P13388345118220082396

`Δ[A006128(n)]-A144120(n+1)`
-/

namespace A144121.P13388345118220082396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A144120 (n + 1)

end

end A144121.P13388345118220082396

/-! ## A144121.P3537671692899613970

`Δ[A225596(n)]-(A144120(n+1)+1)`
-/

namespace A144121.P3537671692899613970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A144120 (n + 1) + 1)

end

end A144121.P3537671692899613970

/-! ## A144121.P4796779128253894722

`A006128(n+1)-(A144120(n+1)+A006128(n))`
-/

namespace A144121.P4796779128253894722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A144120 (n + 1) + A006128 n)

end

end A144121.P4796779128253894722

/-!
# A144123: (0, 1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, 13,..) becomes (4, 6, 8, 9, 10^12, 14, 15*16, 18, 20^21, 22^24, 25*26, 27, 28^30*32, 33, ..).

The programs for A144123, there is no canonical definition to state claims against.
-/

/-! ## A144123.P10959495022461894554

`A018252(n+2)^A001288(A000332(n))`
-/

namespace A144123.P10959495022461894554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) ^ (A001288 ((A000332 n).toNat + 11) : ℤ)

end

end A144123.P10959495022461894554

/-!
# A144124: P_4(2n+1), the Legendre polynomial of order 4 at 2n+1.

The programs for A144124, the canonical program `A144124.P10505907813292595966` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144124 has offset 0).

The definition of A144124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144124.P10505907813292595966

`70*n^4+140*n^3+90*n²+20*n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144124

/-- `70*n^4+140*n^3+90*n²+20*n+1` -/
def P10505907813292595966.Spec : Prop :=
  ∀ n, (P10505907813292595966.a n : ℤ) = A144124 n

theorem P10505907813292595966.correct : P10505907813292595966.Spec := by
  intro n
  simp only [A144124]

end A144124

/-! ## A144124.P8983863062376981142

`or(40*A008893(n), 1)`
-/

namespace A144124.P8983863062376981142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (40 * A008893 n) 1

end

end A144124.P8983863062376981142

namespace A144124

/-- `or(40*A008893(n), 1)` -/
def P8983863062376981142.Spec : Prop :=
  ∀ n, P8983863062376981142.a n = A144124 n

end A144124

/-! ## A144124.P13863090608188177891

`or(1, 80*A152041(n))`
-/

namespace A144124.P13863090608188177891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (80 * A152041 n)

end

end A144124.P13863090608188177891

namespace A144124

/-- `or(1, 80*A152041(n))` -/
def P13863090608188177891.Spec : Prop :=
  ∀ n, P13863090608188177891.a n = A144124 n

end A144124

/-! ## A144124.P5592361868417900296

`xor(40*A008893(n), A126773(A008574(n)))`
-/

namespace A144124.P5592361868417900296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (40 * A008893 n) (A126773 (A008574 n).toNat)

end

end A144124.P5592361868417900296

namespace A144124

/-- `xor(40*A008893(n), A126773(A008574(n)))` -/
def P5592361868417900296.Spec : Prop :=
  ∀ n, P5592361868417900296.a n = A144124 n

end A144124

/-! ## A144124.P16684005948113946739

`A335333(eq[4, A002262(n)])`
-/

namespace A144124.P16684005948113946739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144124.P16684005948113946739

namespace A144124

/-- `A335333(eq[4, A002262(n)])` -/
def P16684005948113946739.Spec : Prop :=
  ∀ n, P16684005948113946739.a n = A144124 n

end A144124

/-!
# A144126: P_6(2n+1), the Legendre polynomial of order 6 at 2n+1.

The programs for A144126, the canonical program `A144126.P18416010669362228227` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144126 has offset 0).

The definition of A144126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144126.P18416010669362228227

`record[A160739(xor(1, n))/16]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A144126

/-- `record[A160739(xor(1, n))/16]` -/
def P18416010669362228227.Spec : Prop :=
  ∀ n, P18416010669362228227.a n = (A144126 n : ℚ)

end A144126

/-! ## A144126.P9641030067021067679

`A160739(2*n+1)/16`
-/

namespace A144126.P9641030067021067679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160739 (2 * n + 1) : ℚ) / 16

end

end A144126.P9641030067021067679

namespace A144126

/-- `A160739(2*n+1)/16` -/
def P9641030067021067679.Spec : Prop :=
  ∀ n, P9641030067021067679.a n = (A144126 n : ℚ)

end A144126

/-! ## A144126.P876103597400056284

`A335333(eq[6, A002262(n)])`
-/

namespace A144126.P876103597400056284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144126.P876103597400056284

namespace A144126

/-- `A335333(eq[6, A002262(n)])` -/
def P876103597400056284.Spec : Prop :=
  ∀ n, P876103597400056284.a n = A144126 n

end A144126

/-! ## A144126.P901814286205670359

`A335333(A000217(n+6)+6)`
-/

namespace A144126.P901814286205670359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A000217 (n + 6) + 6).toNat

end

end A144126.P901814286205670359

namespace A144126

/-- `A335333(A000217(n+6)+6)` -/
def P901814286205670359.Spec : Prop :=
  ∀ n, P901814286205670359.a n = A144126 n

end A144126

/-! ## A144126.P4185464836499248447

`A335333(eq[6, A144328(n+1)])`
-/

namespace A144126.P4185464836499248447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144126.P4185464836499248447

namespace A144126

/-- `A335333(eq[6, A144328(n+1)])` -/
def P4185464836499248447.Spec : Prop :=
  ∀ n, P4185464836499248447.a n = A144126 n

end A144126

/-! ## A144126.P4000422818596655294

`A335333(eq[7, A002260(n+1)])`
-/

namespace A144126.P4000422818596655294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144126.P4000422818596655294

namespace A144126

/-- `A335333(eq[7, A002260(n+1)])` -/
def P4000422818596655294.Spec : Prop :=
  ∀ n, P4000422818596655294.a n = A144126 n

end A144126

/-!
# A144128: Chebyshev U(n,x) polynomial evaluated at x=18.

The programs for A144128, the canonical program `A144128.P17535624785552766843` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144128 has offset 1).

The definition of A144128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144128.P17535624785552766843

`36*a(n-1)-a(n-2)` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144128

/-- `36*a(n-1)-a(n-2)` -/
def P17535624785552766843.Spec : Prop :=
  ∀ n, P17535624785552766843.a n = A144128 (n + 1)

theorem P17535624785552766843.correct : P17535624785552766843.Spec := by
  intro n
  simp only [A144128, Nat.add_sub_cancel]

end A144128

/-! ## A144128.P1500968828355836163

`∑{#}[floor((n+1)/2), (-1)^#*C(n-#, #)*36^(n-2*#)]`
-/

namespace A144128.P1500968828355836163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((-1) ^ k * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) : ℚ) * (36 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A144128.P1500968828355836163

namespace A144128

/-- `∑{#}[floor((n+1)/2), (-1)^#*C(n-#, #)*36^(n-2*#)]` -/
def P1500968828355836163.Spec : Prop :=
  ∀ n, P1500968828355836163.a n = (A144128 (n + 1) : ℚ)

end A144128

/-! ## A144128.P12001275103518000737

`∑{#}[n, A101950(C(n+1, 2)+#)*35^#]`
-/

namespace A144128.P12001275103518000737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A101950 (Nat.choose (n + 1) 2 + k) * (35 ^ k : ℤ)

end

end A144128.P12001275103518000737

namespace A144128

/-- `∑{#}[n, A101950(C(n+1, 2)+#)*35^#]` -/
def P12001275103518000737.Spec : Prop :=
  ∀ n, P12001275103518000737.a n = A144128 (n + 1)

end A144128

/-! ## A144128.P3172157276074525034

`ogf(1/(1-36x+x^2))`
-/

namespace A144128.P3172157276074525034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -36, 1] n

end

end A144128.P3172157276074525034

namespace A144128

/-- `ogf(1/(1-36x+x^2))` -/
def P3172157276074525034.Spec : Prop :=
  ∀ n, P3172157276074525034.a n = A144128 (n + 1)

end A144128

/-! ## A144128.P17751107773319060375

`∑[A238379(n)]`
-/

namespace A144128.P17751107773319060375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144128.P17751107773319060375

namespace A144128

/-- `∑[A238379(n)]` -/
def P17751107773319060375.Spec : Prop :=
  ∀ n, P17751107773319060375.a n = A144128 (n + 1)

end A144128

/-! ## A144128.P11250797896603514737

`A041611(Δ[n²])`
-/

namespace A144128.P11250797896603514737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144128.P11250797896603514737

namespace A144128

/-- `A041611(Δ[n²])` -/
def P11250797896603514737.Spec : Prop :=
  ∀ n, P11250797896603514737.a n = A144128 (n + 1)

end A144128

/-! ## A144128.P5852644882741705778

`∑[A041611(2*n)]`
-/

namespace A144128.P5852644882741705778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144128.P5852644882741705778

namespace A144128

/-- `∑[A041611(2*n)]` -/
def P5852644882741705778.Spec : Prop :=
  ∀ n, P5852644882741705778.a n = A144128 (n + 1)

end A144128

/-! ## A144128.P2004935698798454495

`A322889(n)+18*a(n-1)` with `a(0)=1`
-/

namespace A144128.P2004935698798454495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322889 n + 18 * a (n - 1)

end

end A144128.P2004935698798454495

namespace A144128

/-- `A322889(n)+18*a(n-1)` -/
def P2004935698798454495.Spec : Prop :=
  ∀ n, P2004935698798454495.a n = A144128 (n + 1)

end A144128

/-! ## A144128.P2186280257752574552

`record[A041611(A093178(n))]`
-/

namespace A144128.P2186280257752574552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144128.P2186280257752574552

namespace A144128

/-- `record[A041611(A093178(n))]` -/
def P2186280257752574552.Spec : Prop :=
  ∀ n, P2186280257752574552.a n = A144128 (n + 1)

end A144128

/-! ## A144128.P9390352060552911239

`record[A041611(A014681(n)+1)]`
-/

namespace A144128.P9390352060552911239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144128.P9390352060552911239

namespace A144128

/-- `record[A041611(A014681(n)+1)]` -/
def P9390352060552911239.Spec : Prop :=
  ∀ n, P9390352060552911239.a n = A144128 (n + 1)

end A144128

/-!
# A144129: a(n) = ChebyshevT(3, n).

The programs for A144129, the canonical program `A144129.P2880121179738500010` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144129 has offset 0).

The definition of A144129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144129.P2880121179738500010

`(4*n²-3)*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144129

/-- `(4*n²-3)*n` -/
def P2880121179738500010.Spec : Prop :=
  ∀ n, P2880121179738500010.a n = A144129 n

theorem P2880121179738500010.correct : P2880121179738500010.Spec := by
  intro n
  simp only [A144129]

end A144129

/-! ## A144129.P3289212934625615437

`ogf((x+22x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A144129.P3289212934625615437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 22, 1] [1, -4, 6, -4, 1] n

end

end A144129.P3289212934625615437

namespace A144129

/-- `ogf((x+22x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3289212934625615437.Spec : Prop :=
  ∀ n, P3289212934625615437.a n = A144129 n

end A144129

/-! ## A144129.P17384500458478321054

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=26, a(3)=99`
-/

namespace A144129.P17384500458478321054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 26, 99] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A144129.P17384500458478321054

namespace A144129

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17384500458478321054.Spec : Prop :=
  ∀ n, P17384500458478321054.a n = A144129 n

theorem P17384500458478321054.correct : P17384500458478321054.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A144129, Nat.add_sub_cancel, A144129.P17384500458478321054.a, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A144129, Nat.add_sub_cancel, A144129.P17384500458478321054.a, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A144129

/-! ## A144129.P13094925026073372924

`∑[24*C(n, 2)]+n`
-/

namespace A144129.P13094925026073372924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A144129.P13094925026073372924

namespace A144129

/-- `∑[24*C(n, 2)]+n` -/
def P13094925026073372924.Spec : Prop :=
  ∀ n, (P13094925026073372924.a n : ℤ) = A144129 n

end A144129

/-! ## A144129.P16380343629698722752

`24*C(n+1, 3)+n`
-/

namespace A144129.P16380343629698722752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose (n + 1) 3 + n

end

end A144129.P16380343629698722752

namespace A144129

/-- `24*C(n+1, 3)+n` -/
def P16380343629698722752.Spec : Prop :=
  ∀ n, (P16380343629698722752.a n : ℤ) = A144129 n

theorem P16380343629698722752.correct : P16380343629698722752.Spec := by
  intro n
  simp only [A144129, Nat.add_sub_cancel, A144129.P16380343629698722752.a, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A144129

/-! ## A144129.P17662018915257065590

`abs(n*or(3, -(2*n)²))`
-/

namespace A144129.P17662018915257065590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 3 (-((2 * n) ^ 2 : ℤ))|

end

end A144129.P17662018915257065590

namespace A144129

/-- `abs(n*or(3, -(2*n)²))` -/
def P17662018915257065590.Spec : Prop :=
  ∀ n, P17662018915257065590.a n = A144129 n

end A144129

/-! ## A144129.P141783410252567863

`-(n*or(3, -(2*n)²))`
-/

namespace A144129.P141783410252567863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor 3 (-((2 * n) ^ 2 : ℤ)))

end

end A144129.P141783410252567863

namespace A144129

/-- `-(n*or(3, -(2*n)²))` -/
def P141783410252567863.Spec : Prop :=
  ∀ n, P141783410252567863.a n = A144129 n

end A144129

/-! ## A144129.P2300785572895884579

`abs(n*xor(3, -(2*n)²))`
-/

namespace A144129.P2300785572895884579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor 3 (-((2 * n) ^ 2 : ℤ))|

end

end A144129.P2300785572895884579

namespace A144129

/-- `abs(n*xor(3, -(2*n)²))` -/
def P2300785572895884579.Spec : Prop :=
  ∀ n, P2300785572895884579.a n = A144129 n

end A144129

/-! ## A144129.P15497586124360112792

`-(n*xor(3, -(2*n)²))`
-/

namespace A144129.P15497586124360112792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor 3 (-((2 * n) ^ 2 : ℤ)))

end

end A144129.P15497586124360112792

namespace A144129

/-- `-(n*xor(3, -(2*n)²))` -/
def P15497586124360112792.Spec : Prop :=
  ∀ n, P15497586124360112792.a n = A144129 n

end A144129

/-! ## A144129.P13237834450941224362

`Δ[(1-lcm(n, n-1))²]+n`
-/

namespace A144129.P13237834450941224362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A144129.P13237834450941224362

namespace A144129

/-- `Δ[(1-lcm(n, n-1))²]+n` -/
def P13237834450941224362.Spec : Prop :=
  ∀ n, P13237834450941224362.a n = A144129 n

end A144129

/-! ## A144129.P1013410988833152389

`n-n*∑[a(n-1)-8]` with `a(0)=4`
-/

namespace A144129.P1013410988833152389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144129.P1013410988833152389

namespace A144129

/-- `n-n*∑[a(n-1)-8]` -/
def P1013410988833152389.Spec : Prop :=
  ∀ n, P1013410988833152389.a n = A144129 n

end A144129

/-! ## A144129.P4454235595362017183

`(2*n-1)^3-a(n-1)` with `a(0)=0`
-/

namespace A144129.P4454235595362017183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n : ℤ) - 1) ^ 3 - a (n - 1)

end

end A144129.P4454235595362017183

namespace A144129

/-- `(2*n-1)^3-a(n-1)` -/
def P4454235595362017183.Spec : Prop :=
  ∀ n, P4454235595362017183.a n = A144129 n

theorem P4454235595362017183.correct : P4454235595362017183.Spec := by
  intro n
  induction n with
  | zero => simp [A144129, A144129.P4454235595362017183.a, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A144129, Nat.add_sub_cancel, A144129.P4454235595362017183.a, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A144129

/-! ## A144129.P959606046079236272

`lcm(1-n*2*n, 2*n)-n`
-/

namespace A144129.P959606046079236272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - (n * (2 * n) : ℤ)) (2 * n : ℤ) : ℤ) - (n : ℤ)

end

end A144129.P959606046079236272

namespace A144129

/-- `lcm(1-n*2*n, 2*n)-n` -/
def P959606046079236272.Spec : Prop :=
  ∀ n, P959606046079236272.a n = A144129 n

end A144129

/-! ## A144129.P11997442696531093100

`∑[a(n-1)-4]²/(n+1)-1` with `a(0)=1`
-/

namespace A144129.P11997442696531093100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ) - 1

end

end A144129.P11997442696531093100

namespace A144129

/-- `∑[a(n-1)-4]²/(n+1)-1` -/
def P11997442696531093100.Spec : Prop :=
  ∀ n, P11997442696531093100.a n = (A144129 n : ℚ)

end A144129

/-! ## A144129.P14362672934563855848

`Δ[(C(2*n, 2)-(n-1))*∑[n-1]]`
-/

namespace A144129.P14362672934563855848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 1)) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144129.P14362672934563855848

namespace A144129

/-- `Δ[(C(2*n, 2)-(n-1))*∑[n-1]]` -/
def P14362672934563855848.Spec : Prop :=
  ∀ n, P14362672934563855848.a n = A144129 n

end A144129

/-! ## A144129.P7959186441989948633

`gcd(n, n+1)+(2*n+1)*(2*n+1)*(n-1)`
-/

namespace A144129.P7959186441989948633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) + (2 * n + 1 : ℤ) * ((2 * n + 1 : ℤ) * ((n : ℤ) - 1))

end

end A144129.P7959186441989948633

namespace A144129

/-- `gcd(n, n+1)+(2*n+1)*(2*n+1)*(n-1)` -/
def P7959186441989948633.Spec : Prop :=
  ∀ n, P7959186441989948633.a n = A144129 n

theorem P7959186441989948633.correct : P7959186441989948633.Spec := by
  intro n
  simp only [A144129, Nat.add_sub_cancel, A144129.P7959186441989948633.a, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A144129

/-! ## A144129.P2936334082382856531

`and(1, 2*n+1)+(2*n+1)*(2*n+1)*(n-1)`
-/

namespace A144129.P2936334082382856531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n + 1) : ℤ) + (2 * n + 1 : ℤ) * ((2 * n + 1 : ℤ) * ((n : ℤ) - 1))

end

end A144129.P2936334082382856531

namespace A144129

/-- `and(1, 2*n+1)+(2*n+1)*(2*n+1)*(n-1)` -/
def P2936334082382856531.Spec : Prop :=
  ∀ n, P2936334082382856531.a n = A144129 n

theorem P2936334082382856531.correct : P2936334082382856531.Spec := by
  intro n
  simp only [A144129, Nat.add_sub_cancel, A144129.P2936334082382856531.a, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A144129

/-! ## A144129.P5814897511092855966

`sqrt(A239608(n))`
-/

namespace A144129.P5814897511092855966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239608 n : ℝ)

end

end A144129.P5814897511092855966

namespace A144129

/-- `sqrt(A239608(n))` -/
def P5814897511092855966.Spec : Prop :=
  ∀ n, P5814897511092855966.a n = (A144129 n : ℝ)

end A144129

/-! ## A144129.P268863396739068491

`A280089(n)-1`
-/

namespace A144129.P268863396739068491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280089 n - 1

end

end A144129.P268863396739068491

namespace A144129

/-- `A280089(n)-1` -/
def P268863396739068491.Spec : Prop :=
  ∀ n, P268863396739068491.a n = A144129 n

theorem P268863396739068491.correct : P268863396739068491.Spec := by
  intro n
  simp only [A144129, Nat.add_sub_cancel, A144129.P268863396739068491.a, A144129.P2880121179738500010.a, A280089, A280089.P6118679900806487457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144129

/-! ## A144129.P17566488952784797728

`A272871(n)+n`
-/

namespace A144129.P17566488952784797728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 n + (n : ℤ)

end

end A144129.P17566488952784797728

namespace A144129

/-- `A272871(n)+n` -/
def P17566488952784797728.Spec : Prop :=
  ∀ n, P17566488952784797728.a n = A144129 n

theorem P17566488952784797728.correct : P17566488952784797728.Spec := by
  intro n
  simp only [A144129, Nat.add_sub_cancel, A144129.P17566488952784797728.a, A144129.P2880121179738500010.a, A272871, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A144129

/-!
# A144130: a(n) = ChebyshevT(4, n).

The programs for A144130, the canonical program `A144130.P7760986985961990642` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144130 has offset 0).

The definition of A144130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144130.P7760986985961990642

`8*n^4-8*n²+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144130

/-- `8*n^4-8*n²+1` -/
def P7760986985961990642.Spec : Prop :=
  ∀ n, P7760986985961990642.a n = A144130 n

theorem P7760986985961990642.correct : P7760986985961990642.Spec := by
  intro n
  simp only [A144130]

end A144130

/-! ## A144130.P124842701919925690

`ogf((1-4x+102x^2+92x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A144130.P124842701919925690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 102, 92, 1] [1, -5, 10, -10, 5, -1] n

end

end A144130.P124842701919925690

namespace A144130

/-- `ogf((1-4x+102x^2+92x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P124842701919925690.Spec : Prop :=
  ∀ n, P124842701919925690.a n = A144130 n

end A144130

/-! ## A144130.P18104458043879989586

`round(cosh(log(((2*n)²-2)²-2)))`
-/

namespace A144130.P18104458043879989586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((((2 * n) ^ 2 : ℤ) - 2) ^ 2 - 2 : ℝ)))

end

end A144130.P18104458043879989586

namespace A144130

/-- `round(cosh(log(((2*n)²-2)²-2)))` -/
def P18104458043879989586.Spec : Prop :=
  ∀ n, P18104458043879989586.a n = A144130 n

end A144130

/-! ## A144130.P2739943787897880710

`sqrt(A239609(n))`
-/

namespace A144130.P2739943787897880710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239609 n : ℝ)

end

end A144130.P2739943787897880710

namespace A144130

/-- `sqrt(A239609(n))` -/
def P2739943787897880710.Spec : Prop :=
  ∀ n, P2739943787897880710.a n = (A144130 n : ℝ)

end A144130

/-! ## A144130.P16256348101417510879

`gcd(A239609(n), A242852(n))`
-/

namespace A144130.P16256348101417510879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A239609 n) (A242852 n)

end

end A144130.P16256348101417510879

namespace A144130

/-- `gcd(A239609(n), A242852(n))` -/
def P16256348101417510879.Spec : Prop :=
  ∀ n, (P16256348101417510879.a n : ℤ) = A144130 n

end A144130

/-! ## A144130.P2352926410010603281

`(A144139(n)-A000466(n))/2`
-/

namespace A144130.P2352926410010603281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144139 n - A000466 n : ℚ) / 2

end

end A144130.P2352926410010603281

namespace A144130

/-- `(A144139(n)-A000466(n))/2` -/
def P2352926410010603281.Spec : Prop :=
  ∀ n, P2352926410010603281.a n = (A144130 n : ℚ)

theorem P2352926410010603281.correct : P2352926410010603281.Spec := by
  intro n
  simp only [A144130, Nat.add_sub_cancel, A144130.P2352926410010603281.a, A144130.P7760986985961990642.a, A000466, A000466.P5626493666969552810.a, A144139, A144139.P1469581140721025765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144130

/-! ## A144130.P3120366475650256707

`xor(1, 4*n*2*A007531(n+1))`
-/

namespace A144130.P3120366475650256707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((4 * n : ℤ) * (2 * A007531 (n + 1)))

end

end A144130.P3120366475650256707

namespace A144130

/-- `xor(1, 4*n*2*A007531(n+1))` -/
def P3120366475650256707.Spec : Prop :=
  ∀ n, P3120366475650256707.a n = A144130 n

end A144130

/-! ## A144130.P2309601550656194546

`floor(A033596(2*n)/2)`
-/

namespace A144130.P2309601550656194546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033596 (2 * n) : ℚ) / 2⌋

end

end A144130.P2309601550656194546

namespace A144130

/-- `floor(A033596(2*n)/2)` -/
def P2309601550656194546.Spec : Prop :=
  ∀ n, P2309601550656194546.a n = A144130 n

end A144130

/-! ## A144130.P9453993485627253967

`abs((n-1)*A005563(2*n)*2*n+1)`
-/

namespace A144130.P9453993485627253967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A005563 (2 * n) * (2 * n : ℤ) + 1|

end

end A144130.P9453993485627253967

namespace A144130

/-- `abs((n-1)*A005563(2*n)*2*n+1)` -/
def P9453993485627253967.Spec : Prop :=
  ∀ n, P9453993485627253967.a n = A144130 n

end A144130

/-! ## A144130.P14821894129790125593

`(A258837(2*n)+A057722(2*n))/2`
-/

namespace A144130.P14821894129790125593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258837 (2 * n) + A057722 (2 * n) : ℚ) / 2

end

end A144130.P14821894129790125593

namespace A144130

/-- `(A258837(2*n)+A057722(2*n))/2` -/
def P14821894129790125593.Spec : Prop :=
  ∀ n, P14821894129790125593.a n = (A144130 n : ℚ)

theorem P14821894129790125593.correct : P14821894129790125593.Spec := by
  intro n
  simp only [A144130, Nat.add_sub_cancel, A144130.P14821894129790125593.a, A144130.P7760986985961990642.a, A057722, A057722.P17503710663781687125.a, A258837, A258837.P16350684666179390251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144130

/-! ## A144130.P14370125016316432738

`A275543(((2*n)²+1)%(2*(n²+1)))`
-/

namespace A144130.P14370125016316432738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (((2 * n) ^ 2 + 1) % (2 * (n ^ 2 + 1)))

end

end A144130.P14370125016316432738

namespace A144130

/-- `A275543(((2*n)²+1)%(2*(n²+1)))` -/
def P14370125016316432738.Spec : Prop :=
  ∀ n, P14370125016316432738.a n = A144130 n

end A144130

/-! ## A144130.P14266116909475876800

`A069129(A253909(n))`
-/

namespace A144130.P14266116909475876800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A253909 n).toNat

end

end A144130.P14266116909475876800

namespace A144130

/-- `A069129(A253909(n))` -/
def P14266116909475876800.Spec : Prop :=
  ∀ n, P14266116909475876800.a n = A144130 n

end A144130

/-! ## A144130.P4642930097184877492

`A069129(A028310(n²))`
-/

namespace A144130.P4642930097184877492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A028310 (n ^ 2)).toNat

end

end A144130.P4642930097184877492

namespace A144130

/-- `A069129(A028310(n²))` -/
def P4642930097184877492.Spec : Prop :=
  ∀ n, P4642930097184877492.a n = A144130 n

end A144130

/-! ## A144130.P13141571201121599140

`A069129((n-A004277(n))²)`
-/

namespace A144130.P13141571201121599140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (((n : ℤ) - A004277 n) ^ 2).toNat

end

end A144130.P13141571201121599140

namespace A144130

/-- `A069129((n-A004277(n))²)` -/
def P13141571201121599140.Spec : Prop :=
  ∀ n, P13141571201121599140.a n = A144130 n

end A144130

/-! ## A144130.P6297846842358063169

`A069129((A004275(n+1)-n)²)`
-/

namespace A144130.P6297846842358063169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 ((A004275 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A144130.P6297846842358063169

namespace A144130

/-- `A069129((A004275(n+1)-n)²)` -/
def P6297846842358063169.Spec : Prop :=
  ∀ n, P6297846842358063169.a n = A144130 n

end A144130

/-!
# A144131: Primes of the form T_4(n), where T_4(x) = 8x^4 - 8x^2 + 1 is the fourth Chebyshev polynomial (of the first kind).

The programs for A144131, there is no canonical definition to state claims against.
-/

/-! ## A144131.P5584384423749311733

`A144130(A219276(n+1))`
-/

namespace A144131.P5584384423749311733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (A219276 (n + 1)).toNat

end

end A144131.P5584384423749311733

/-! ## A144131.P858673353855832471

`A069129(A219276(n+1)²)`
-/

namespace A144131.P858673353855832471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A219276 (n + 1) ^ 2).toNat

end

end A144131.P858673353855832471

/-! ## A144131.P13609012209689251778

`A069129(A219276(n+1)*A219276(n+1))`
-/

namespace A144131.P13609012209689251778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A219276 (n + 1) * A219276 (n + 1)).toNat

end

end A144131.P13609012209689251778

/-! ## A144131.P12461844592424016841

`A056220(∩[A066049(n+1), A056220(n)])`
-/

namespace A144131.P12461844592424016841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144131.P12461844592424016841

/-! ## A144131.P3577477466207742300

`record[A164314(A060626(n+1))]`
-/

namespace A144131.P3577477466207742300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A060626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144131.P3577477466207742300

/-!
# A144132: Primes of the form ChebyshevT[8,n].

The programs for A144132, there is no canonical definition to state claims against.
-/

/-! ## A144132.P186851950191319138

`A243134(A219277(n+1))`
-/

namespace A144132.P186851950191319138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243134 (A219277 (n + 1)).toNat

end

end A144132.P186851950191319138

/-! ## A144132.P5129126890749763724

`A144130(∩[2*n²-1, A219276(n+1)])`
-/

namespace A144132.P5129126890749763724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144132.P5129126890749763724

/-! ## A144132.P4251612962658300280

`A144130(∩[A219276(n+1), A056220(n)])`
-/

namespace A144132.P4251612962658300280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144132.P4251612962658300280

/-!
# A144133: a(n) = Gegenbauer polynomial C_n^2(3).

The programs for A144133, the canonical program `A144133.P3545428071058456837` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144133 has offset 0).

The definition of A144133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144133.P3545428071058456837

`ogf(1/(1-12x+38x^2-12x^3+x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144133

/-- `ogf(1/(1-12x+38x^2-12x^3+x^4))` -/
def P3545428071058456837.Spec : Prop :=
  ∀ n, P3545428071058456837.a n = A144133 n

theorem P3545428071058456837.correct : P3545428071058456837.Spec := by
  intro n
  simp only [A144133]

end A144133

/-! ## A144133.P5405219613341887405

`∑[∑[∑[A054447(2*n)]]]`
-/

namespace A144133.P5405219613341887405
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144133.P5405219613341887405

namespace A144133

/-- `∑[∑[∑[A054447(2*n)]]]` -/
def P5405219613341887405.Spec : Prop :=
  ∀ n, P5405219613341887405.a n = A144133 n

end A144133

/-! ## A144133.P4259255082704694301

`∑[A178159(2*(n+1))/2]`
-/

namespace A144133.P4259255082704694301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178159 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144133.P4259255082704694301

namespace A144133

/-- `∑[A178159(2*(n+1))/2]` -/
def P4259255082704694301.Spec : Prop :=
  ∀ n, P4259255082704694301.a n = (A144133 n : ℚ)

end A144133

/-! ## A144133.P13842339008953677676

`∑[A006645(2*n+3)/4]`
-/

namespace A144133.P13842339008953677676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006645 (2 * n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144133.P13842339008953677676

namespace A144133

/-- `∑[A006645(2*n+3)/4]` -/
def P13842339008953677676.Spec : Prop :=
  ∀ n, P13842339008953677676.a n = (A144133 n : ℚ)

end A144133

/-! ## A144133.P8359471651397281957

`∑[(n+1)*A001109(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A144133.P8359471651397281957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A144133.P8359471651397281957

namespace A144133

/-- `∑[(n+1)*A001109(n+1)]-a(n-1)` -/
def P8359471651397281957.Spec : Prop :=
  ∀ n, P8359471651397281957.a n = A144133 n

end A144133

/-!
# A144135: a(n) = GegenbauerC[n,2,8].

The programs for A144135, the canonical program `A144135.P11260963537218599350` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144135 has offset 0).

The definition of A144135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144135.P11260963537218599350

`16*(n+1)*a(n-1)/n-(n+2)*a(n-2)/n` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144135

/-- `16*(n+1)*a(n-1)/n-(n+2)*a(n-2)/n` -/
def P11260963537218599350.Spec : Prop :=
  ∀ n, P11260963537218599350.a n = (A144135 n : ℚ)

end A144135

/-!
# A144138: Chebyshev polynomial of the second kind U(3,n).

The programs for A144138, the canonical program `A144138.P7220908367457548337` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144138 has offset 0).

The definition of A144138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144138.P7220908367457548337

`8*n^3-4*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144138

/-- `8*n^3-4*n` -/
def P7220908367457548337.Spec : Prop :=
  ∀ n, P7220908367457548337.a n = A144138 n

theorem P7220908367457548337.correct : P7220908367457548337.Spec := by
  intro n
  simp only [A144138]

end A144138

/-! ## A144138.P5295948198321707511

`ogf((4x+40x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A144138.P5295948198321707511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 40, 4] [1, -4, 6, -4, 1] n

end

end A144138.P5295948198321707511

namespace A144138

/-- `ogf((4x+40x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5295948198321707511.Spec : Prop :=
  ∀ n, P5295948198321707511.a n = A144138 n

end A144138

/-! ## A144138.P15356715012084483647

`4*A007588(n)`
-/

namespace A144138.P15356715012084483647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007588 n

end

end A144138.P15356715012084483647

namespace A144138

/-- `4*A007588(n)` -/
def P15356715012084483647.Spec : Prop :=
  ∀ n, P15356715012084483647.a n = A144138 n

theorem P15356715012084483647.correct : P15356715012084483647.Spec := by
  intro n
  simp only [A144138, Nat.add_sub_cancel, A144138.P15356715012084483647.a, A144138.P7220908367457548337.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144138

/-! ## A144138.P14450333287662686597

`Δ[4*C(n²-n, 2)]`
-/

namespace A144138.P14450333287662686597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A144138.P14450333287662686597

namespace A144138

/-- `Δ[4*C(n²-n, 2)]` -/
def P14450333287662686597.Spec : Prop :=
  ∀ n, P14450333287662686597.a n = A144138 n

end A144138

/-! ## A144138.P8926355903787108791

`lcm(2-(2*n)², 4*n)`
-/

namespace A144138.P8926355903787108791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - ((2 * n) ^ 2 : ℤ)) (4 * n : ℤ)

end

end A144138.P8926355903787108791

namespace A144138

/-- `lcm(2-(2*n)², 4*n)` -/
def P8926355903787108791.Spec : Prop :=
  ∀ n, (P8926355903787108791.a n : ℤ) = A144138 n

end A144138

/-! ## A144138.P303670158889140447

`4*Δ[C(n*(n-1), 2)]`
-/

namespace A144138.P303670158889140447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) * ((n : ℤ) - 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A144138.P303670158889140447

namespace A144138

/-- `4*Δ[C(n*(n-1), 2)]` -/
def P303670158889140447.Spec : Prop :=
  ∀ n, P303670158889140447.a n = A144138 n

end A144138

/-! ## A144138.P12704713222057142242

`2*n*xor(1, (2*n)²-1)`
-/

namespace A144138.P12704713222057142242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.xor 1 (((2 * n) ^ 2 : ℤ) - 1)

end

end A144138.P12704713222057142242

namespace A144138

/-- `2*n*xor(1, (2*n)²-1)` -/
def P12704713222057142242.Spec : Prop :=
  ∀ n, P12704713222057142242.a n = A144138 n

end A144138

/-! ## A144138.P10991767141110671918

`(or(1, (2*n)²)-3)*2*n`
-/

namespace A144138.P10991767141110671918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 ((2 * n) ^ 2) : ℤ) - 3) * (2 * n : ℤ)

end

end A144138.P10991767141110671918

namespace A144138

/-- `(or(1, (2*n)²)-3)*2*n` -/
def P10991767141110671918.Spec : Prop :=
  ∀ n, P10991767141110671918.a n = A144138 n

end A144138

/-! ## A144138.P10040204118138571572

`abs(2*n*or(2, -(2*n)²))`
-/

namespace A144138.P10040204118138571572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * Int.lor 2 (-((2 * n) ^ 2 : ℤ))|

end

end A144138.P10040204118138571572

namespace A144138

/-- `abs(2*n*or(2, -(2*n)²))` -/
def P10040204118138571572.Spec : Prop :=
  ∀ n, P10040204118138571572.a n = A144138 n

end A144138

/-! ## A144138.P7671925353762578414

`-(2*n*or(2, -(2*n)²))`
-/

namespace A144138.P7671925353762578414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * Int.lor 2 (-((2 * n) ^ 2 : ℤ)))

end

end A144138.P7671925353762578414

namespace A144138

/-- `-(2*n*or(2, -(2*n)²))` -/
def P7671925353762578414.Spec : Prop :=
  ∀ n, P7671925353762578414.a n = A144138 n

end A144138

/-! ## A144138.P14561080406142355326

`abs(2*n*xor(2, -(2*n)²))`
-/

namespace A144138.P14561080406142355326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * Int.xor 2 (-((2 * n) ^ 2 : ℤ))|

end

end A144138.P14561080406142355326

namespace A144138

/-- `abs(2*n*xor(2, -(2*n)²))` -/
def P14561080406142355326.Spec : Prop :=
  ∀ n, P14561080406142355326.a n = A144138 n

end A144138

/-! ## A144138.P11606670867781398090

`-(2*n*xor(2, -(2*n)²))`
-/

namespace A144138.P11606670867781398090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * Int.xor 2 (-((2 * n) ^ 2 : ℤ)))

end

end A144138.P11606670867781398090

namespace A144138

/-- `-(2*n*xor(2, -(2*n)²))` -/
def P11606670867781398090.Spec : Prop :=
  ∀ n, P11606670867781398090.a n = A144138 n

end A144138

/-! ## A144138.P11914341949065373977

`n*record[lcm(n+2, 2*n)-2]`
-/

namespace A144138.P11914341949065373977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (2 * n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144138.P11914341949065373977

namespace A144138

/-- `n*record[lcm(n+2, 2*n)-2]` -/
def P11914341949065373977.Spec : Prop :=
  ∀ n, P11914341949065373977.a n = A144138 n

end A144138

/-! ## A144138.P2271074088842120691

`2*n*lcm(2, 1-n*2*n)`
-/

namespace A144138.P2271074088842120691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.lcm 2 (1 - (n * (2 * n) : ℤ))

end

end A144138.P2271074088842120691

namespace A144138

/-- `2*n*lcm(2, 1-n*2*n)` -/
def P2271074088842120691.Spec : Prop :=
  ∀ n, (P2271074088842120691.a n : ℤ) = A144138 n

end A144138

/-! ## A144138.P9178916377245521924

`((2*n)²-gcd(2, 2*n))*2*n`
-/

namespace A144138.P9178916377245521924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ 2 : ℤ) - (Nat.gcd 2 (2 * n) : ℤ)) * (2 * n : ℤ)

end

end A144138.P9178916377245521924

namespace A144138

/-- `((2*n)²-gcd(2, 2*n))*2*n` -/
def P9178916377245521924.Spec : Prop :=
  ∀ n, P9178916377245521924.a n = A144138 n

theorem P9178916377245521924.correct : P9178916377245521924.Spec := by
  intro n
  simp only [A144138, Nat.add_sub_cancel, A144138.P9178916377245521924.a, A144138.P7220908367457548337.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A144138

/-! ## A144138.P6962058521445765714

`Δ[(2*(1-n)²)²-a(n-1)]` with `a(0)=0`
-/

namespace A144138.P6962058521445765714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * (1 - (n : ℤ)) ^ 2) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144138.P6962058521445765714

namespace A144138

/-- `Δ[(2*(1-n)²)²-a(n-1)]` -/
def P6962058521445765714.Spec : Prop :=
  ∀ n, P6962058521445765714.a n = A144138 n

end A144138

/-! ## A144138.P17192688401525969051

`2*((2*n+1)*C(2*n, 2)-n)`
-/

namespace A144138.P17192688401525969051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((2 * n + 1) * Nat.choose (2 * n) 2 : ℤ) - (n : ℤ))

end

end A144138.P17192688401525969051

namespace A144138

/-- `2*((2*n+1)*C(2*n, 2)-n)` -/
def P17192688401525969051.Spec : Prop :=
  ∀ n, P17192688401525969051.a n = A144138 n

theorem P17192688401525969051.correct : P17192688401525969051.Spec := by
  intro n
  simp only [A144138, Nat.add_sub_cancel, A144138.P17192688401525969051.a, A144138.P7220908367457548337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A144138

/-! ## A144138.P14310874020889793964

`(and(2*n+1, 2*n)²-2)*2*n`
-/

namespace A144138.P14310874020889793964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land (2 * n + 1) (2 * n) ^ 2 : ℤ) - 2) * (2 * n : ℤ)

end

end A144138.P14310874020889793964

namespace A144138

/-- `(and(2*n+1, 2*n)²-2)*2*n` -/
def P14310874020889793964.Spec : Prop :=
  ∀ n, P14310874020889793964.a n = A144138 n

end A144138

/-! ## A144138.P10230787026095636603

`(2*n*and(2*n+1, 2*n)-2)*2*n`
-/

namespace A144138.P10230787026095636603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n * Nat.land (2 * n + 1) (2 * n) : ℤ) - 2) * (2 * n : ℤ)

end

end A144138.P10230787026095636603

namespace A144138

/-- `(2*n*and(2*n+1, 2*n)-2)*2*n` -/
def P10230787026095636603.Spec : Prop :=
  ∀ n, P10230787026095636603.a n = A144138 n

end A144138

/-! ## A144138.P7781175385748965468

`4*sqrt(A277792(n))`
-/

namespace A144138.P7781175385748965468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A277792 n : ℝ)

end

end A144138.P7781175385748965468

namespace A144138

/-- `4*sqrt(A277792(n))` -/
def P7781175385748965468.Spec : Prop :=
  ∀ n, P7781175385748965468.a n = (A144138 n : ℝ)

end A144138

/-!
# A144139: Chebyshev polynomial of the second kind U(4,n).

The programs for A144139, the canonical program `A144139.P1469581140721025765` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144139 has offset 0).

The definition of A144139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144139.P1469581140721025765

`16*n^4-12*n²+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144139

/-- `16*n^4-12*n²+1` -/
def P1469581140721025765.Spec : Prop :=
  ∀ n, P1469581140721025765.a n = A144139 n

theorem P1469581140721025765.correct : P1469581140721025765.Spec := by
  intro n
  simp only [A144139]

end A144139

/-! ## A144139.P2100874210166797040

`ogf((1+194x^2+184x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A144139.P2100874210166797040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 194, 184, 5] [1, -5, 10, -10, 5, -1] n

end

end A144139.P2100874210166797040

namespace A144139

/-- `ogf((1+194x^2+184x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2100874210166797040.Spec : Prop :=
  ∀ n, P2100874210166797040.a n = A144139 n

end A144139

/-! ## A144139.P8982139893229895930

`A057722(2*n)`
-/

namespace A144139.P8982139893229895930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 (2 * n)

end

end A144139.P8982139893229895930

namespace A144139

/-- `A057722(2*n)` -/
def P8982139893229895930.Spec : Prop :=
  ∀ n, P8982139893229895930.a n = A144139 n

theorem P8982139893229895930.correct : P8982139893229895930.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P8982139893229895930.a, A144139.P1469581140721025765.a, A057722, A057722.P17503710663781687125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P4310193274798216993

`A165900(2*n)*A165900(2*n+1)`
-/

namespace A144139.P4310193274798216993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (2 * n) * A165900 (2 * n + 1)

end

end A144139.P4310193274798216993

namespace A144139

/-- `A165900(2*n)*A165900(2*n+1)` -/
def P4310193274798216993.Spec : Prop :=
  ∀ n, P4310193274798216993.a n = A144139 n

theorem P4310193274798216993.correct : P4310193274798216993.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P4310193274798216993.a, A144139.P1469581140721025765.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P11617563627329959985

`(A144138(n)²-1)/A000466(n)`
-/

namespace A144139.P11617563627329959985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144138 n ^ 2 - 1 : ℚ) / (A000466 n : ℚ)

end

end A144139.P11617563627329959985

namespace A144139

/-- `(A144138(n)²-1)/A000466(n)` -/
def P11617563627329959985.Spec : Prop :=
  ∀ n, P11617563627329959985.a n = (A144139 n : ℚ)

end A144139

/-! ## A144139.P17570535097182753427

`(A242850(n)²-1)/A242851(n)`
-/

namespace A144139.P17570535097182753427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242850 n ^ 2 - 1 : ℚ) / (A242851 n : ℚ)

end

end A144139.P17570535097182753427

namespace A144139

/-- `(A242850(n)²-1)/A242851(n)` -/
def P17570535097182753427.Spec : Prop :=
  ∀ n, P17570535097182753427.a n = (A144139 n : ℚ)

end A144139

/-! ## A144139.P14680840418303643303

`(A002939(n)-1)*A125202(n+1)`
-/

namespace A144139.P14680840418303643303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002939 n - 1) * A125202 (n + 1)

end

end A144139.P14680840418303643303

namespace A144139

/-- `(A002939(n)-1)*A125202(n+1)` -/
def P14680840418303643303.Spec : Prop :=
  ∀ n, P14680840418303643303.a n = A144139 n

theorem P14680840418303643303.correct : P14680840418303643303.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P14680840418303643303.a, A144139.P1469581140721025765.a, A002939, A002939.P11095602872349887610.a, A125202, A125202.P2347162376427039196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P939832778754604094

`(A125202(n+1)-A008586(n))*A125202(n+1)`
-/

namespace A144139.P939832778754604094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A125202 (n + 1) - A008586 n) * A125202 (n + 1)

end

end A144139.P939832778754604094

namespace A144139

/-- `(A125202(n+1)-A008586(n))*A125202(n+1)` -/
def P939832778754604094.Spec : Prop :=
  ∀ n, P939832778754604094.a n = A144139 n

theorem P939832778754604094.correct : P939832778754604094.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P939832778754604094.a, A144139.P1469581140721025765.a, A008586, A008586.P15642444062404201100.a, A125202, A125202.P2347162376427039196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P13436801077941581010

`A125202(n+1)*A165900(2*n)`
-/

namespace A144139.P13436801077941581010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1) * A165900 (2 * n)

end

end A144139.P13436801077941581010

namespace A144139

/-- `A125202(n+1)*A165900(2*n)` -/
def P13436801077941581010.Spec : Prop :=
  ∀ n, P13436801077941581010.a n = A144139 n

theorem P13436801077941581010.correct : P13436801077941581010.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P13436801077941581010.a, A144139.P1469581140721025765.a, A125202, A125202.P2347162376427039196.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P9665583737403794337

`(A163323(2*n)/4+1)/4`
-/

namespace A144139.P9665583737403794337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A163323 (2 * n) : ℚ) / 4 + 1) / 4

end

end A144139.P9665583737403794337

namespace A144139

/-- `(A163323(2*n)/4+1)/4` -/
def P9665583737403794337.Spec : Prop :=
  ∀ n, P9665583737403794337.a n = (A144139 n : ℚ)

theorem P9665583737403794337.correct : P9665583737403794337.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P9665583737403794337.a, A144139.P1469581140721025765.a, A163323, A163323.P2701393104860694698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P266239728760846862

`abs(A057722(A005843(n)))`
-/

namespace A144139.P266239728760846862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057722 (A005843 n).toNat|

end

end A144139.P266239728760846862

namespace A144139

/-- `abs(A057722(A005843(n)))` -/
def P266239728760846862.Spec : Prop :=
  ∀ n, P266239728760846862.a n = A144139 n

end A144139

/-! ## A144139.P7054183583019840235

`record[A057722(A014681(n))]`
-/

namespace A144139.P7054183583019840235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144139.P7054183583019840235

namespace A144139

/-- `record[A057722(A014681(n))]` -/
def P7054183583019840235.Spec : Prop :=
  ∀ n, P7054183583019840235.a n = A144139 n

end A144139

/-! ## A144139.P15554265081187798694

`abs(A057722(Δ[A165900(n)]))`
-/

namespace A144139.P15554265081187798694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057722 (f1 (n + 1) - f1 n).toNat|

end

end A144139.P15554265081187798694

namespace A144139

/-- `abs(A057722(Δ[A165900(n)]))` -/
def P15554265081187798694.Spec : Prop :=
  ∀ n, P15554265081187798694.a n = A144139 n

end A144139

/-! ## A144139.P2640859903433765244

`record[A057722(n)/A033999(n)]`
-/

namespace A144139.P2640859903433765244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057722 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144139.P2640859903433765244

namespace A144139

/-- `record[A057722(n)/A033999(n)]` -/
def P2640859903433765244.Spec : Prop :=
  ∀ n, P2640859903433765244.a n = (A144139 n : ℚ)

end A144139

/-! ## A144139.P13293442875784325418

`(A002378(2*n)-1)*A165900(2*n)`
-/

namespace A144139.P13293442875784325418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 (2 * n) - 1) * A165900 (2 * n)

end

end A144139.P13293442875784325418

namespace A144139

/-- `(A002378(2*n)-1)*A165900(2*n)` -/
def P13293442875784325418.Spec : Prop :=
  ∀ n, P13293442875784325418.a n = A144139 n

theorem P13293442875784325418.correct : P13293442875784325418.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P13293442875784325418.a, A144139.P1469581140721025765.a, A002378, A002378.P6342434596694243671.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P3896883213269027965

`(A110331(2*n)+4*n)*A110331(2*n)`
-/

namespace A144139.P3896883213269027965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110331 (2 * n) + (4 * n : ℤ)) * A110331 (2 * n)

end

end A144139.P3896883213269027965

namespace A144139

/-- `(A110331(2*n)+4*n)*A110331(2*n)` -/
def P3896883213269027965.Spec : Prop :=
  ∀ n, P3896883213269027965.a n = A144139 n

theorem P3896883213269027965.correct : P3896883213269027965.Spec := by
  intro n
  simp only [A144139, Nat.add_sub_cancel, A144139.P3896883213269027965.a, A144139.P1469581140721025765.a, A110331, A110331.P10888058911026582070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A144139

/-! ## A144139.P13397366555343913306

`record[A165900(A000265(n+1))*A165900(n)]`
-/

namespace A144139.P13397366555343913306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A000265 (n + 1)).toNat * A165900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144139.P13397366555343913306

namespace A144139

/-- `record[A165900(A000265(n+1))*A165900(n)]` -/
def P13397366555343913306.Spec : Prop :=
  ∀ n, P13397366555343913306.a n = A144139 n

end A144139

/-!
# A144140: Numbers n such that between n^K and (n+1)^K there are no primes, where K = 3/2.

The programs for A144140, there is no canonical definition to state claims against.
-/

/-! ## A144140.P12025689265424207531

`A195100(n+2)-1`
-/

namespace A144140.P12025689265424207531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195100 (n + 2) - 1

end

end A144140.P12025689265424207531

/-! ## A144140.P3110233561087809783

`∑[abs(Δ[A195100(n+1)])]`
-/

namespace A144140.P3110233561087809783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144140.P3110233561087809783

/-! ## A144140.P17608079214130544105

`A138153(A195100(n+2))`
-/

namespace A144140.P17608079214130544105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (A195100 (n + 2)).toNat

end

end A144140.P17608079214130544105

/-! ## A144140.P3669955590306010854

`∑[A000027(Δ[A195100(n+1)])]`
-/

namespace A144140.P3669955590306010854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144140.P3669955590306010854

/-! ## A144140.P15407509387735593919

`∑[A028310(Δ[A195100(n+1)])]`
-/

namespace A144140.P15407509387735593919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144140.P15407509387735593919

/-!
# A144141: a(n) = Hermite(n,2).

The programs for A144141, the canonical program `A144141.P17318398031345118522` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144141 has offset 0).

The definition of A144141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144141.P17318398031345118522

`∑{#}[floor(n/2), (-1)^#*n!*4^(n-2*#)/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144141

/-- `∑{#}[floor(n/2), (-1)^#*n!*4^(n-2*#)/(#!*(n-2*#)!)]` -/
def P17318398031345118522.Spec : Prop :=
  ∀ n, P17318398031345118522.a n = (A144141 n : ℚ)

end A144141

/-! ## A144141.P2101111203120765844

`∏[4-2*(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A144141.P2101111203120765844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - (2 * ((n : ℤ) - 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144141.P2101111203120765844

namespace A144141

/-- `∏[4-2*(n-1)/a(n-1)]` -/
def P2101111203120765844.Spec : Prop :=
  ∀ n, P2101111203120765844.a n = (A144141 n : ℚ)

end A144141

/-!
# A144142: a(n) = Hermite(n,3).

The programs for A144142, the canonical program `A144142.P16156746338738902423` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144142 has offset 0).

The definition of A144142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144142.P16156746338738902423

`∏[6-2*(n-1)/a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144142

/-- `∏[6-2*(n-1)/a(n-1)]` -/
def P16156746338738902423.Spec : Prop :=
  ∀ n, P16156746338738902423.a n = (A144142 n : ℚ)

end A144142

/-!
# A144143: a(n) = Hermite(n,4).

The programs for A144143, there is no canonical definition to state claims against.
-/

/-! ## A144143.P14452555152848138519

`A004275(ceil((3/(n+1)+3)*a(n-1)))` with `a(0)=1`
-/

namespace A144143.P14452555152848138519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004275 ⌈(3 / (n + 1 : ℚ) + 3) * (a (n - 1) : ℚ)⌉.toNat

end

end A144143.P14452555152848138519

/-!
# A144144: a(n) = smallest positive multiple of n that, when represented in binary, contains the binary representations of all positive integers <= n at least once each.

The programs for A144144, there is no canonical definition to state claims against.
-/

/-! ## A144144.P9887891900749893756

`A000740(n+1)*A182134(A162525(n+1))`
-/

namespace A144144.P9887891900749893756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) * A182134 (A162525 (n + 1)).toNat

end

end A144144.P9887891900749893756

/-! ## A144144.P3148133843936385405

`A303431(A214842(n+1))`
-/

namespace A144144.P3148133843936385405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (A214842 (n + 1)).toNat

end

end A144144.P3148133843936385405

/-!
# A144145: A positive integer k is included if n contains the same number of 0's as 1's when represented in binary and the number of 0's (or the number of 1's) divides k.

The programs for A144145, the canonical program `A144145.P6634007771401250781` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144145 has offset 1).

The definition of A144145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144145.P6634007771401250781

`∩[A031443(n+1), A049445(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144145

/-- `∩[A031443(n+1), A049445(n+1)]` -/
def P6634007771401250781.Spec : Prop :=
  ∀ n, (P6634007771401250781.a n : ℤ) = A144145 (n + 1)

theorem P6634007771401250781.correct : P6634007771401250781.Spec := by
  intro n
  simp only [A144145, Nat.add_sub_cancel]

end A144145

/-! ## A144145.P14791201632408005291

`∩[A031443(n+1), A117891(n+1)]`
-/

namespace A144145.P14791201632408005291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144145.P14791201632408005291

namespace A144145

/-- `∩[A031443(n+1), A117891(n+1)]` -/
def P14791201632408005291.Spec : Prop :=
  ∀ n, (P14791201632408005291.a n : ℤ) = A144145 (n + 1)

end A144145

/-! ## A144145.P342580233727502224

`∩[A031443(n+1), A117890(n+1)]`
-/

namespace A144145.P342580233727502224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144145.P342580233727502224

namespace A144145

/-- `∩[A031443(n+1), A117890(n+1)]` -/
def P342580233727502224.Spec : Prop :=
  ∀ n, (P342580233727502224.a n : ℤ) = A144145 (n + 1)

end A144145

/-! ## A144145.P6507663706403414307

`∩[A306263(n+1), A344145(n+1)]`
-/

namespace A144145.P6507663706403414307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144145.P6507663706403414307

namespace A144145

/-- `∩[A306263(n+1), A344145(n+1)]` -/
def P6507663706403414307.Spec : Prop :=
  ∀ n, (P6507663706403414307.a n : ℤ) = A144145 (n + 1)

end A144145

/-! ## A144145.P12586301923396365786

`∩[A117891(n+1), A125975(n)]`
-/

namespace A144145.P12586301923396365786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144145.P12586301923396365786

namespace A144145

/-- `∩[A117891(n+1), A125975(n)]` -/
def P12586301923396365786.Spec : Prop :=
  ∀ n, (P12586301923396365786.a n : ℤ) = A144145 (n + 1)

end A144145

/-!
# A144146: A positive integer k is included if every nonzero exponent in the prime factorization of k is coprime to k.

The programs for A144146, the canonical program `A144146.P5158168376452986911` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144146 has offset 1).

The definition of A144146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144146.P14871003153622106769

`comp[A137257(n+1)-1]+1`
-/

namespace A144146.P14871003153622106769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A144146.P14871003153622106769

namespace A144146

/-- `comp[A137257(n+1)-1]+1` -/
def P14871003153622106769.Spec : Prop :=
  ∀ n, (P14871003153622106769.a n : ℤ) = A144146 (n + 1)

end A144146

/-! ## A144146.P5158168376452986911

`eq[1, gcd(n+1, A005361(n+1))]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144146

/-- `eq[1, gcd(n+1, A005361(n+1))]+1` -/
def P5158168376452986911.Spec : Prop :=
  ∀ n, (P5158168376452986911.a n : ℤ) = A144146 (n + 1)

theorem P5158168376452986911.correct : P5158168376452986911.Spec := by
  intro n
  simp only [A144146, Nat.add_sub_cancel]

end A144146

/-! ## A144146.P3008323668041403435

`eq[1, gcd((n+1)², A072411(n+1))]+1`
-/

namespace A144146.P3008323668041403435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A072411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144146.P3008323668041403435

namespace A144146

/-- `eq[1, gcd((n+1)², A072411(n+1))]+1` -/
def P3008323668041403435.Spec : Prop :=
  ∀ n, (P3008323668041403435.a n : ℤ) = A144146 (n + 1)

end A144146

/-! ## A144146.P2713586379157061340

`eq[A195155(A094524(n+1)), A381952(n+1)]+1`
-/

namespace A144146.P2713586379157061340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (A094524 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144146.P2713586379157061340

namespace A144146

/-- `eq[A195155(A094524(n+1)), A381952(n+1)]+1` -/
def P2713586379157061340.Spec : Prop :=
  ∀ n, (P2713586379157061340.a n : ℤ) = A144146 (n + 1)

end A144146

/-! ## A144146.P2750107472515291097

`record[A054531(A005361(n+1)+A000217(n))]`
-/

namespace A144146.P2750107472515291097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A005361 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144146.P2750107472515291097

namespace A144146

/-- `record[A054531(A005361(n+1)+A000217(n))]` -/
def P2750107472515291097.Spec : Prop :=
  ∀ n, P2750107472515291097.a n = A144146 (n + 1)

end A144146

/-! ## A144146.P8817287384311655984

`A284763(A055874(A273077(n))+n)`
-/

namespace A144146.P8817287384311655984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284763 (A055874 (A273077 n).toNat + (n : ℤ)).toNat

end

end A144146.P8817287384311655984

namespace A144146

/-- `A284763(A055874(A273077(n))+n)` -/
def P8817287384311655984.Spec : Prop :=
  ∀ n, P8817287384311655984.a n = A144146 (n + 1)

end A144146

/-! ## A144146.P11963118361749108352

`lcm(A008683(A318256(n)), A284763(n+1))`
-/

namespace A144146.P11963118361749108352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A318256 n).toNat) (A284763 (n + 1))

end

end A144146.P11963118361749108352

namespace A144146

/-- `lcm(A008683(A318256(n)), A284763(n+1))` -/
def P11963118361749108352.Spec : Prop :=
  ∀ n, (P11963118361749108352.a n : ℤ) = A144146 (n + 1)

end A144146

/-! ## A144146.P9882992369504890156

`A284763(n+1)+A057918(A340105(n+1))`
-/

namespace A144146.P9882992369504890156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284763 (n + 1) + A057918 (A340105 (n + 1)).toNat

end

end A144146.P9882992369504890156

namespace A144146

/-- `A284763(n+1)+A057918(A340105(n+1))` -/
def P9882992369504890156.Spec : Prop :=
  ∀ n, P9882992369504890156.a n = A144146 (n + 1)

end A144146

/-!
# A144147: A positive integer k is included if every exponent in the prime factorization of k is coprime to k and if the sum of these prime-factorization exponents divides k.

The programs for A144147, the canonical program `A144147.P16570497614994514554` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144147 has offset 1).

The definition of A144147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144147.P16570497614994514554

`∩[A074946(n+1), A144146(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A144147

/-- `∩[A074946(n+1), A144146(n+1)]` -/
def P16570497614994514554.Spec : Prop :=
  ∀ n, (P16570497614994514554.a n : ℤ) = A144147 (n + 1)

theorem P16570497614994514554.correct : P16570497614994514554.Spec := by
  intro n
  simp only [A144147, Nat.add_sub_cancel]

end A144147

/-! ## A144147.P15112330990642947670

`∩[A074946(n+1), comp[A137257(n+1)]]`
-/

namespace A144147.P15112330990642947670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A144147.P15112330990642947670

namespace A144147

/-- `∩[A074946(n+1), comp[A137257(n+1)]]` -/
def P15112330990642947670.Spec : Prop :=
  ∀ n, (P15112330990642947670.a n : ℤ) = A144147 (n + 1)

end A144147

/-! ## A144147.P10288016971218611145

`∩[A144146(n+1), lt[n, A161658(n+1)]+1]`
-/

namespace A144147.P10288016971218611145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A144147.P10288016971218611145

namespace A144147

/-- `∩[A144146(n+1), lt[n, A161658(n+1)]+1]` -/
def P10288016971218611145.Spec : Prop :=
  ∀ n, (P10288016971218611145.a n : ℤ) = A144147 (n + 1)

end A144147

/-! ## A144147.P7637708636261807804

`record[A007913(A360558(n+1))]`
-/

namespace A144147.P7637708636261807804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A360558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144147.P7637708636261807804

namespace A144147

/-- `record[A007913(A360558(n+1))]` -/
def P7637708636261807804.Spec : Prop :=
  ∀ n, P7637708636261807804.a n = A144147 (n + 1)

end A144147

/-! ## A144147.P2595836861837246493

`A327906(A167520(n+1)%A123900(n))`
-/

namespace A144147.P2595836861837246493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (Int.tmod (A167520 (n + 1)) (A123900 n)).toNat

end

end A144147.P2595836861837246493

namespace A144147

/-- `A327906(A167520(n+1)%A123900(n))` -/
def P2595836861837246493.Spec : Prop :=
  ∀ n, P2595836861837246493.a n = A144147 (n + 1)

end A144147

/-!
# A144150: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where the e.g.f. of column k is 1+g^(k+1)(x) with g = x-> exp(x)-1.

The programs for A144150, there is no canonical definition to state claims against.
-/

/-! ## A144150.P4844242689849986228

`A153277(∑[A133707(n+1)%A245397(n)]+1)`
-/

namespace A144150.P4844242689849986228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133707 (n + 1)) (A245397 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153277 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A144150.P4844242689849986228

/-! ## A144150.P16698928163569467090

`A120951(A305962(n))`
-/

namespace A144150.P16698928163569467090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (A305962 n).toNat

end

end A144150.P16698928163569467090

/-! ## A144150.P14115582576406173361

`A341001(A034368(n+1))+A305962(n)`
-/

namespace A144150.P14115582576406173361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341001 ((A034368 (n + 1)).toNat + 385) + A305962 n

end

end A144150.P14115582576406173361

/-! ## A144150.P12927498488347051040

`A305962(n)-A290739(9*A079735(n))`
-/

namespace A144150.P12927498488347051040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 n - A290739 (9 * A079735 n).toNat

end

end A144150.P12927498488347051040

/-! ## A144150.P9058832855279127757

`A305962(n)+A018843(A337763(n))`
-/

namespace A144150.P9058832855279127757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 n + A018843 (A337763 n).toNat

end

end A144150.P9058832855279127757

/-!
# A144151: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) = number of ways an undirected cycle of length k can be built from n labeled nodes.

The programs for A144151, there is no canonical definition to state claims against.
-/

/-! ## A144151.P6554932143848204084

`A004525(A165680(n+1))*A007318(n)`
-/

namespace A144151.P6554932143848204084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A165680 (n + 1)).toNat * A007318 n

end

end A144151.P6554932143848204084

/-! ## A144151.P11064912362632043499

`sqrt(A008459(n))*A004525(A165680(n+1))`
-/

namespace A144151.P11064912362632043499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A004525 (A165680 (n + 1)).toNat : ℝ)

end

end A144151.P11064912362632043499

/-! ## A144151.P3889124587846977005

`A007318(A028310(n))*A032742(A165680(n+1))`
-/

namespace A144151.P3889124587846977005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A028310 n).toNat * A032742 (A165680 (n + 1)).toNat

end

end A144151.P3889124587846977005

/-! ## A144151.P9632037582032503111

`A007318(A061579(n))*A032742(A165680(n+1))`
-/

namespace A144151.P9632037582032503111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A061579 n).toNat * A032742 (A165680 (n + 1)).toNat

end

end A144151.P9632037582032503111

/-! ## A144151.P7973171454184864217

`A004525(A165680(n+1))*A028310(A206735(n))`
-/

namespace A144151.P7973171454184864217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A165680 (n + 1)).toNat * A028310 (A206735 n).toNat

end

end A144151.P7973171454184864217

/-! ## A144151.P9077529003441115882

`A007318(A023443(n)+1)*A032742(A165680(n+1))`
-/

namespace A144151.P9077529003441115882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A023443 n + 1).toNat * A032742 (A165680 (n + 1)).toNat

end

end A144151.P9077529003441115882

/-! ## A144151.P9171319661300280045

`A007318(A114327(n)+n)*A032742(A165680(n+1))`
-/

namespace A144151.P9171319661300280045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A114327 n + (n : ℤ)).toNat * A032742 (A165680 (n + 1)).toNat

end

end A144151.P9171319661300280045

/-!
# A144152: Triangle read by rows: A128174 * X; X = an infinite lower triangular matrix with a shifted Fibonacci sequence: (1, 1, 1, 2, 3, 5, 8, ...) in the main diagonal and the rest zeros.

The programs for A144152, there is no canonical definition to state claims against.
-/

/-! ## A144152.P17509512596276748926

`A300060(A153279(n))`
-/

namespace A144152.P17509512596276748926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300060 (A153279 n).toNat

end

end A144152.P17509512596276748926

/-! ## A144152.P8082852385118784694

`A324965(A130125(n))`
-/

namespace A144152.P8082852385118784694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A130125 n).toNat

end

end A144152.P8082852385118784694

/-! ## A144152.P10171003330356626662

`A005206(A128618(n+1))`
-/

namespace A144152.P10171003330356626662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A128618 (n + 1)).toNat

end

end A144152.P10171003330356626662

/-! ## A144152.P10987619609877375970

`A002487(A156667(n))`
-/

namespace A144152.P10987619609877375970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A156667 n).toNat

end

end A144152.P10987619609877375970

/-! ## A144152.P10276364856262663860

`A285189(A123641(n+1))`
-/

namespace A144152.P10276364856262663860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A123641 (n + 1)).toNat

end

end A144152.P10276364856262663860

/-!
# A144153: (0=0, 1=1, 2=2, 3=3, 4=2^2, 5=5, 6=2*3, 7=7, 8=2^3, 9=3^2, 10=2*5, 11=11, 12=2^2*3, ...) becomes (0*0*1, 1*2*2, 3*3*4, 2*2*5, 5*6*2, 3*7*7, 8*2*3, 9*3*2, 10*2*5, 11*11*12, 2*2*3, ...).

The programs for A144153, there is no canonical definition to state claims against.
-/

/-! ## A144153.P7639188758021972189

`A145604(A073199(2*n+1))-A015128(n)`
-/

namespace A144153.P7639188758021972189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (A073199 (2 * n + 1)).toNat - A015128 n

end

end A144153.P7639188758021972189

/-!
# A144154: A Fibonacci triangle, row sums = A023610.

The programs for A144154, there is no canonical definition to state claims against.
-/

/-! ## A144154.P14256523685670040210

`A058071(C(row(n)+2, 2)+col(n))`
-/

namespace A144154.P14256523685670040210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + SequenceMachineLib.triCol n)

end

end A144154.P14256523685670040210

/-! ## A144154.P1900974975060133877

`A058071(A007401(n+1))`
-/

namespace A144154.P1900974975060133877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A007401 (n + 1)).toNat

end

end A144154.P1900974975060133877

/-! ## A144154.P7845177828747737255

`A127830(A081118(n+1))`
-/

namespace A144154.P7845177828747737255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127830 (A081118 (n + 1)).toNat

end

end A144154.P7845177828747737255

/-! ## A144154.P12158313642450573193

`A058071(A002024(n+1)+n)`
-/

namespace A144154.P12158313642450573193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A144154.P12158313642450573193

/-! ## A144154.P1313887966687716331

`A058071(comp[A000124(n)-1]-1)`
-/

namespace A144154.P1313887966687716331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - 1)

end

end A144154.P1313887966687716331

/-! ## A144154.P17405797133856497788

`A000045(col(n)+1)*A000045(row(n)+2-col(n))`
-/

namespace A144154.P17405797133856497788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triCol n + 1) * A000045 (SequenceMachineLib.triRow n + 2 - SequenceMachineLib.triCol n)

end

end A144154.P17405797133856497788

/-! ## A144154.P13034201991064916383

`A104763(C(row(n)+2, 2)+col(n)+1)*A104763(C(row(n)+2, 2)+row(n)+2-col(n))`
-/

namespace A144154.P13034201991064916383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + (SequenceMachineLib.triCol n + 1)) * A104763 ((Nat.choose (SequenceMachineLib.triRow n + 2) 2 : ℤ) + ((SequenceMachineLib.triRow n + 2 : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A144154.P13034201991064916383

/-!
# A144155: Bell convolution triangle, T(n,k) = A000110(n-k) * A000110(k).

The programs for A144155, the canonical program `A144155.P2256636861134995604` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144155 has offset 0).

The definition of A144155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144155.P2256636861134995604

`A000110(row(n)-col(n))*A000110(col(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A144155

/-- `A000110(row(n)-col(n))*A000110(col(n))` -/
def P2256636861134995604.Spec : Prop :=
  ∀ n, P2256636861134995604.a n = A144155 n

theorem P2256636861134995604.correct : P2256636861134995604.Spec := by
  intro n
  simp only [A144155]

end A144155

/-! ## A144155.P1032672187035598058

`A000110(row(n)+1-(col(n)+1))*A000110(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144155.P1032672187035598058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1)) * A000110 (SequenceMachineLib.triCol n)

end

end A144155.P1032672187035598058

namespace A144155

/-- `A000110(row(n)+1-(col(n)+1))*A000110(col(n))` -/
def P1032672187035598058.Spec : Prop :=
  ∀ n, P1032672187035598058.a n = A144155 n

theorem P1032672187035598058.correct : P1032672187035598058.Spec := by
  intro n
  simp only [A144155, Nat.add_sub_cancel, A144155.P1032672187035598058.a, A144155.P2256636861134995604.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A144155

/-! ## A144155.P8973933742069163060

`A033306(n)/A007318(n)`
-/

namespace A144155.P8973933742069163060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033306 n : ℚ) / (A007318 n : ℚ)

end

end A144155.P8973933742069163060

namespace A144155

/-- `A033306(n)/A007318(n)` -/
def P8973933742069163060.Spec : Prop :=
  ∀ n, P8973933742069163060.a n = (A144155 n : ℚ)

end A144155

/-! ## A144155.P15325366766769502658

`abs(A033306(n)/A117440(n))`
-/

namespace A144155.P15325366766769502658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A033306 n : ℚ) / (A117440 n : ℚ)|

end

end A144155.P15325366766769502658

namespace A144155

/-- `abs(A033306(n)/A117440(n))` -/
def P15325366766769502658.Spec : Prop :=
  ∀ n, P15325366766769502658.a n = (A144155 n : ℚ)

end A144155

/-! ## A144155.P14260928320010617682

`abs(A033306(n)/A130595(n))`
-/

namespace A144155.P14260928320010617682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A033306 n : ℚ) / (A130595 n : ℚ)|

end

end A144155.P14260928320010617682

namespace A144155

/-- `abs(A033306(n)/A130595(n))` -/
def P14260928320010617682.Spec : Prop :=
  ∀ n, P14260928320010617682.a n = (A144155 n : ℚ)

end A144155

/-! ## A144155.P11952462360210453322

`a(A112367(n))*A056857(n+1)/A007318(n)` with `a(0)=1`
-/

namespace A144155.P11952462360210453322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (A112367 n).toNat * (A056857 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A144155.P11952462360210453322

namespace A144155

/-- `a(A112367(n))*A056857(n+1)/A007318(n)` -/
def P11952462360210453322.Spec : Prop :=
  ∀ n, P11952462360210453322.a n = (A144155 n : ℚ)

end A144155

/-! ## A144155.P12153213247210612212

`A000110(A002262(n))*A056857(n+1)/A007318(n)`
-/

namespace A144155.P12153213247210612212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 (A002262 n).toNat * A056857 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A144155.P12153213247210612212

namespace A144155

/-- `A000110(A002262(n))*A056857(n+1)/A007318(n)` -/
def P12153213247210612212.Spec : Prop :=
  ∀ n, P12153213247210612212.a n = (A144155 n : ℚ)

end A144155

/-! ## A144155.P18044038338005053854

`A011971(A112367(n))*A056857(n+1)/A007318(n)`
-/

namespace A144155.P18044038338005053854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011971 (A112367 n).toNat * A056857 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A144155.P18044038338005053854

namespace A144155

/-- `A011971(A112367(n))*A056857(n+1)/A007318(n)` -/
def P18044038338005053854.Spec : Prop :=
  ∀ n, P18044038338005053854.a n = (A144155 n : ℚ)

end A144155

/-! ## A144155.P1289744325839254912

`A000110(A144328(n+1))*A056857(n+1)/A007318(n)`
-/

namespace A144155.P1289744325839254912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 (A144328 (n + 1)).toNat * A056857 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A144155.P1289744325839254912

namespace A144155

/-- `A000110(A144328(n+1))*A056857(n+1)/A007318(n)` -/
def P1289744325839254912.Spec : Prop :=
  ∀ n, P1289744325839254912.a n = (A144155 n : ℚ)

end A144155

/-! ## A144155.P12147180625867451357

`∏{e}[A036561(n), A000110(#)]`
-/

namespace A144155.P12147180625867451357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000110 (Nat.factorization (f1 n).natAbs p)

end

end A144155.P12147180625867451357

namespace A144155

/-- `∏{e}[A036561(n), A000110(#)]` -/
def P12147180625867451357.Spec : Prop :=
  ∀ n, P12147180625867451357.a n = A144155 n

end A144155

/-!
# A144156: Eigentriangle, row sums = A006318.

The programs for A144156, there is no canonical definition to state claims against.
-/

/-! ## A144156.P17356670891449533609

`A118765(A145463(n+1))`
-/

namespace A144156.P17356670891449533609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A145463 (n + 1)).toNat

end

end A144156.P17356670891449533609

/-!
# A144157: Eigentriangle, row sums = A011782: (1, 1, 2, 4, 8, 16, ...).

The programs for A144157, there is no canonical definition to state claims against.
-/

/-! ## A144157.P13091952226715062910

`A300705(A007318(A300705(2*n+5)))+A300705(n+2)`
-/

namespace A144157.P13091952226715062910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A007318 (A300705 (2 * n + 5)).toNat).toNat + A300705 (n + 2)

end

end A144157.P13091952226715062910

/-! ## A144157.P15776104031237347548

`A138033(A132623(n+1)+1)`
-/

namespace A144157.P15776104031237347548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A132623 (n + 1) + 1).toNat

end

end A144157.P15776104031237347548

/-! ## A144157.P4147595057272064120

`A300705(A077342(n+2))`
-/

namespace A144157.P4147595057272064120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A077342 (n + 2)).toNat

end

end A144157.P4147595057272064120

/-! ## A144157.P842183792242457699

`A300705(A242474(n+2))`
-/

namespace A144157.P842183792242457699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A242474 (n + 2)).toNat

end

end A144157.P842183792242457699

/-! ## A144157.P13053341437080204823

`A300705(A351374(n+2))`
-/

namespace A144157.P13053341437080204823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A351374 (n + 2)).toNat

end

end A144157.P13053341437080204823

/-!
# A144160: Number of pairs p,q with p < q such that 30*r(n)=p+q+2 and p p+2, q q+2 twin primes, r(i)=i-th prime.

The programs for A144160, there is no canonical definition to state claims against.
-/

/-! ## A144160.P1183031895381829195

`A187759(A001750(n+1))`
-/

namespace A144160.P1183031895381829195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (A001750 (n + 1)).toNat

end

end A144160.P1183031895381829195

/-! ## A144160.P8152762776372481412

`A187759(5*p?[A259153(n)])`
-/

namespace A144160.P8152762776372481412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144160.P8152762776372481412

/-! ## A144160.P16697219039432977934

`A187759(5*A000040(n+1))`
-/

namespace A144160.P16697219039432977934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (5 * A000040 (n + 1)).toNat

end

end A144160.P16697219039432977934

/-! ## A144160.P16663840687285335721

`A187759(A008706(Δ[A007504(n)]))`
-/

namespace A144160.P16663840687285335721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (A008706 (f1 (n + 1) - f1 n).toNat).toNat

end

end A144160.P16663840687285335721

/-! ## A144160.P8603134459210451126

`A187759(A008706(p?[A142150(n)]))`
-/

namespace A144160.P8603134459210451126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (A008706 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A144160.P8603134459210451126

/-! ## A144160.P14469775335515749221

`A187759(A001749(n+1)+A000040(n+1))`
-/

namespace A144160.P14469775335515749221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (A001749 (n + 1) + A000040 (n + 1)).toNat

end

end A144160.P14469775335515749221

/-!
# A144161: Triangle read by rows: T(n,k) = number of simple graphs on n labeled nodes with k edges that are node-disjoint unions of undirected cycle subgraphs.

The programs for A144161, there is no canonical definition to state claims against.
-/

/-! ## A144161.P15131910763288113278

`A144207(n)/A286000(A233543(n))`
-/

namespace A144161.P15131910763288113278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144207 n : ℚ) / (A286000 (A233543 n).toNat : ℚ)

end

end A144161.P15131910763288113278

/-! ## A144161.P2964938612790991551

`gcd(A118759(A144207(n)), A144209(n))`
-/

namespace A144161.P2964938612790991551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118759 (A144207 n).toNat) (A144209 n)

end

end A144161.P2964938612790991551

/-! ## A144161.P10318412474665598310

`lcm(A124926(n), A178526(A233543(n)))`
-/

namespace A144161.P10318412474665598310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124926 n) (A178526 (A233543 n).toNat)

end

end A144161.P10318412474665598310

/-! ## A144161.P10321085945675844588

`A118759(A144207(n))/A286625(A002260(n+1))`
-/

namespace A144161.P10321085945675844588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118759 (A144207 n).toNat : ℚ) / (A286625 (A002260 (n + 1)).toNat : ℚ)

end

end A144161.P10321085945675844588

/-! ## A144161.P16973268855964957462

`A144207(n)%A356842(A008277(n+1))`
-/

namespace A144161.P16973268855964957462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144207 n) (A356842 (A008277 (n + 1)).toNat)

end

end A144161.P16973268855964957462

/-!
# A144162: Numbers with at least two digits in which all digits except the rightmost are 0 or 5 and the rightmost is neither 0 nor 5.

The programs for A144162, the canonical program `A144162.P6968795893743913607` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144162 has offset 1).

The definition of A144162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144162.P6968795893743913607

`A024660(A047201(n+9))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A144162

/-- `A024660(A047201(n+9))` -/
def P6968795893743913607.Spec : Prop :=
  ∀ n, P6968795893743913607.a n = A144162 (n + 1)

theorem P6968795893743913607.correct : P6968795893743913607.Spec := by
  intro n
  simp only [A144162, Nat.add_sub_cancel]

end A144162

/-! ## A144162.P2478392252732397572

`A024660(A001068(n)+11)`
-/

namespace A144162.P2478392252732397572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024660 (A001068 n + 11).toNat

end

end A144162.P2478392252732397572

namespace A144162

/-- `A024660(A001068(n)+11)` -/
def P2478392252732397572.Spec : Prop :=
  ∀ n, P2478392252732397572.a n = A144162 (n + 1)

end A144162

/-! ## A144162.P10440201981653720925

`A024660(A002265(5*n)+11)`
-/

namespace A144162.P10440201981653720925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024660 (A002265 (5 * n) + 11).toNat

end

end A144162.P10440201981653720925

namespace A144162

/-- `A024660(A002265(5*n)+11)` -/
def P10440201981653720925.Spec : Prop :=
  ∀ n, P10440201981653720925.a n = A144162 (n + 1)

end A144162

/-! ## A144162.P14687756333222515942

`A217398(lt[A217412(n+1), A217393(3*n+2)])`
-/

namespace A144162.P14687756333222515942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217393 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217398 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A144162.P14687756333222515942

namespace A144162

/-- `A217398(lt[A217412(n+1), A217393(3*n+2)])` -/
def P14687756333222515942.Spec : Prop :=
  ∀ n, P14687756333222515942.a n = A144162 (n + 1)

end A144162

/-!
# A144163: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) = number of simple graphs on n labeled nodes with k edges where each maximally connected subgraph is either a tree or a cycle.

The programs for A144163, there is no canonical definition to state claims against.
-/

/-! ## A144163.P2854514531219308348

`A144228(n)/A326454(A144207(n))`
-/

namespace A144163.P2854514531219308348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144228 n : ℚ) / (A326454 (A144207 n).toNat : ℚ)

end

end A144163.P2854514531219308348

/-! ## A144163.P3401265138187071744

`A144228(n)%A243955(A059026(n+1))`
-/

namespace A144163.P3401265138187071744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144228 n) (A243955 (A059026 (n + 1)).toNat)

end

end A144163.P3401265138187071744

/-! ## A144163.P6574500711366220601

`gcd(A118759(A144228(n)), A144209(n))`
-/

namespace A144163.P6574500711366220601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118759 (A144228 n).toNat) (A144209 n)

end

end A144163.P6574500711366220601

/-! ## A144163.P7338627560425786109

`A144228(n)%A192223(A007318(n))`
-/

namespace A144163.P7338627560425786109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144228 n) (A192223 (A007318 n).toNat)

end

end A144163.P7338627560425786109

/-!
# A144164: Number of simple graphs on n labeled nodes, where each maximally connected subgraph is either a tree or a cycle, also row sums of A144163, A215861.

The programs for A144164, there is no canonical definition to state claims against.
-/

/-! ## A144164.P13634440498241928688

`∑{#}[n, A144163(C(n+1, 2)+#)]`
-/

namespace A144164.P13634440498241928688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A144163 (Nat.choose (n + 1) 2 + k)

end

end A144164.P13634440498241928688

/-! ## A144164.P7471714820486093758

`∏{e}[11^n, A084553(#)]`
-/

namespace A144164.P7471714820486093758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A084553 (Nat.factorization (f1 n) p)

end

end A144164.P7471714820486093758

/-!
# A144165: JacobiP[n,1,2,5].

The programs for A144165, there is no canonical definition to state claims against.
-/

/-! ## A144165.P15839534697490050842

`A076686(A238299(n+1))*A256306(n)`
-/

namespace A144165.P15839534697490050842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (A238299 (n + 1)).toNat * A256306 n

end

end A144165.P15839534697490050842

/-!
# A144167: a(n) = IntegerPart(PolyGamma(n,1)).

The programs for A144167, there is no canonical definition to state claims against.
-/

/-! ## A144167.P7576293135385816131

`xor(A105198(A002280(n)), A124311(n))`
-/

namespace A144167.P7576293135385816131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A105198 (A002280 n).toNat) (A124311 n)

end

end A144167.P7576293135385816131

/-!
# A144168: a(n) = IntegerPart(PolyGamma(n, 2)).

The programs for A144168, there is no canonical definition to state claims against.
-/

/-! ## A144168.P2909320669031013076

`A144167(n+1)%n!`
-/

namespace A144168.P2909320669031013076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144167 (n + 1)) (Nat.factorial n : ℤ)

end

end A144168.P2909320669031013076

/-! ## A144168.P4515365582466626019

`A144167(A031285(n))%A144187(n)`
-/

namespace A144168.P4515365582466626019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144167 (A031285 n).toNat) (A144187 n)

end

end A144168.P4515365582466626019

/-! ## A144168.P17162996021342100139

`A144167(A000027(n+1))%A000142(n)`
-/

namespace A144168.P17162996021342100139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144167 (A000027 (n + 1)).toNat) (A000142 n)

end

end A144168.P17162996021342100139

/-! ## A144168.P12296718703517145894

`(A144167(n+1)+A000142(n))%A000142(n)`
-/

namespace A144168.P12296718703517145894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144167 (n + 1) + A000142 n) (A000142 n)

end

end A144168.P12296718703517145894

/-! ## A144168.P15622579574469215009

`(A144167(n+1)+A000035(2*n))%A144187(n)`
-/

namespace A144168.P15622579574469215009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144167 (n + 1) + A000035 (2 * n)) (A144187 n)

end

end A144168.P15622579574469215009

/-!
# A144171: Numbers of rank 1 in the poset of lunar numbers.

The programs for A144171, there is no canonical definition to state claims against.
-/

/-! ## A144171.P13077834606899246282

`∪[A087097(n+1), A137142(n+1)]`
-/

namespace A144171.P13077834606899246282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144171.P13077834606899246282

/-! ## A144171.P8091527272584538559

`∪[A087097(n+1), A256423(n+1)]`
-/

namespace A144171.P8091527272584538559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144171.P8091527272584538559

/-! ## A144171.P8207316498308245655

`∪[A087097(n+1), A339777(n+1)]`
-/

namespace A144171.P8207316498308245655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144171.P8207316498308245655

/-! ## A144171.P3110606224075178073

`eq[1, A161813(n+1)]+1`
-/

namespace A144171.P3110606224075178073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144171.P3110606224075178073

/-! ## A144171.P802455382131399113

`eq[2, A087029(n+1)]+1`
-/

namespace A144171.P802455382131399113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144171.P802455382131399113

/-! ## A144171.P6435202581501138246

`eq[1, A161813(A028310(n))]`
-/

namespace A144171.P6435202581501138246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144171.P6435202581501138246

/-! ## A144171.P17469529255050734875

`A020725(eq[1, A161813(n+1)])`
-/

namespace A144171.P17469529255050734875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144171.P17469529255050734875

/-! ## A144171.P3741857503855026630

`A065475(eq[1, A161813(n+1)])`
-/

namespace A144171.P3741857503855026630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144171.P3741857503855026630

/-! ## A144171.P10950160090489764355

`A326178(eq[2, A087029(n+1)])`
-/

namespace A144171.P10950160090489764355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144171.P10950160090489764355

/-! ## A144171.P11124622519308277049

`eq[1, A161813(A000007(n)+n)]`
-/

namespace A144171.P11124622519308277049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144171.P11124622519308277049

/-! ## A144171.P17747375495909015753

`eq[1, A161813(A000038(n)+n)]`
-/

namespace A144171.P17747375495909015753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144171.P17747375495909015753

/-! ## A144171.P6191059909214520736

`eq[1, A161813(or(n, A000007(n)))]`
-/

namespace A144171.P6191059909214520736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144171.P6191059909214520736

/-! ## A144171.P1389297099930385708

`A087097(A028310(n))%p?[A049345(n)]`
-/

namespace A144171.P1389297099930385708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087097 (A028310 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A144171.P1389297099930385708

/-! ## A144171.P14602070676942274437

`A087097(A134478(∑[n]))%(3*37*n+11)`
-/

namespace A144171.P14602070676942274437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087097 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (3 * (37 * n) + 11 : ℤ)

end

end A144171.P14602070676942274437

/-! ## A144171.P75898763962101950

`eq[1, A161813(A233583(n+1))]`
-/

namespace A144171.P75898763962101950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144171.P75898763962101950

/-!
# A144172: Eigentriangle, row sums = A076739, the number of compositions into Fibonacci numbers.

The programs for A144172, there is no canonical definition to state claims against.
-/

/-! ## A144172.P9216344532543380279

`A010056(row(n)-col(n)+1)*A076739(col(n))`
-/

namespace A144172.P9216344532543380279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A076739 (SequenceMachineLib.triCol n)

end

end A144172.P9216344532543380279

/-!
# A144175: Numbers of rank 2 in the poset of lunar numbers.

The programs for A144175, there is no canonical definition to state claims against.
-/

/-! ## A144175.P2486488348485111148

`eq[2, A161813(n+1)]+1`
-/

namespace A144175.P2486488348485111148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144175.P2486488348485111148

/-! ## A144175.P4121287821057783171

`eq[2, A161813(A028310(n))]`
-/

namespace A144175.P4121287821057783171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144175.P4121287821057783171

/-! ## A144175.P2797957144680026941

`A020725(eq[2, A161813(n+1)])`
-/

namespace A144175.P2797957144680026941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144175.P2797957144680026941

/-! ## A144175.P17996751184272381241

`A065475(eq[2, A161813(n+1)])`
-/

namespace A144175.P17996751184272381241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144175.P17996751184272381241

/-! ## A144175.P10590397993258872344

`eq[2, A161813(A000007(n)+n)]`
-/

namespace A144175.P10590397993258872344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144175.P10590397993258872344

/-! ## A144175.P16636501891563660271

`eq[2, A161813(A000038(n)+n)]`
-/

namespace A144175.P16636501891563660271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144175.P16636501891563660271

/-! ## A144175.P3620505053267234420

`eq[2, A161813(or(n, A000007(n)))]`
-/

namespace A144175.P3620505053267234420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144175.P3620505053267234420

/-! ## A144175.P11802436493153489566

`eq[2, A161813(A233583(n+1))]`
-/

namespace A144175.P11802436493153489566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144175.P11802436493153489566

/-!
# A144176: a(n) = abs(b(2n-1) - b(2n)) where b(3n+1) = floor(n/9) + 2, b(3n+2) = (n mod 9) + 2, b(3n+3) = b(3n+1)*b(3n+2) for n >= 0.

The programs for A144176, there is no canonical definition to state claims against.
-/

/-! ## A144176.P11437048384301804675

`xor(A323308(A034386(n)), A332057(n+1))`
-/

namespace A144176.P11437048384301804675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323308 (A034386 n).toNat) (A332057 (n + 1))

end

end A144176.P11437048384301804675

/-! ## A144176.P14172472321737710921

`xor(A000034(A208901(n+1)), A332057(n+1))`
-/

namespace A144176.P14172472321737710921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (A208901 (n + 1)).toNat) (A332057 (n + 1))

end

end A144176.P14172472321737710921

/-! ## A144176.P14463473896814486367

`xor(A059146(A059154(n+2)), A332057(n+1))`
-/

namespace A144176.P14463473896814486367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059146 (A059154 (n + 2)).toNat) (A332057 (n + 1))

end

end A144176.P14463473896814486367

/-! ## A144176.P1846376590023990940

`xor(A290106(A322220(n+4)), A332057(n+1))`
-/

namespace A144176.P1846376590023990940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A290106 (A322220 (n + 4)).toNat) (A332057 (n + 1))

end

end A144176.P1846376590023990940

/-! ## A144176.P11982098425400552292

`xor(A141044(A356603(2*(n+2))), A332057(n+1))`
-/

namespace A144176.P11982098425400552292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141044 (A356603 (2 * (n + 2))).toNat) (A332057 (n + 1))

end

end A144176.P11982098425400552292

/-!
# A144180: Number of ways of placing n labeled balls into n unlabeled (but 5-colored) boxes.

The programs for A144180, the canonical program `A144180.P13769889698719500709` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144180 has offset 0).

The definition of A144180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144180.P13769889698719500709

`∑{#}[n, 5^#*A048993(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A144180

/-- `∑{#}[n, 5^#*A048993(C(n+1, 2)+#)]` -/
def P13769889698719500709.Spec : Prop :=
  ∀ n, P13769889698719500709.a n = A144180 n

theorem P13769889698719500709.correct : P13769889698719500709.Spec := by
  intro n
  simp only [A144180]

end A144180

/-! ## A144180.P9272236276969359148

`A189233(A167499(n+4))`
-/

namespace A144180.P9272236276969359148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A167499 (n + 4)).toNat

end

end A144180.P9272236276969359148

namespace A144180

/-- `A189233(A167499(n+4))` -/
def P9272236276969359148.Spec : Prop :=
  ∀ n, P9272236276969359148.a n = A144180 n

end A144180

/-! ## A144180.P11300638136415390313

`A189233(A000124(n+5)+4)`
-/

namespace A144180.P11300638136415390313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A000124 (n + 5) + 4).toNat

end

end A144180.P11300638136415390313

namespace A144180

/-- `A189233(A000124(n+5)+4)` -/
def P11300638136415390313.Spec : Prop :=
  ∀ n, P11300638136415390313.a n = A144180 n

end A144180

/-! ## A144180.P6295533307406726396

`record[A292860(A055999(n))]`
-/

namespace A144180.P6295533307406726396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144180.P6295533307406726396

namespace A144180

/-- `record[A292860(A055999(n))]` -/
def P6295533307406726396.Spec : Prop :=
  ∀ n, P6295533307406726396.a n = A144180 n

end A144180

/-! ## A144180.P18068890300844835348

`A292860(A055999(n+3))`
-/

namespace A144180.P18068890300844835348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A055999 (n + 3)).toNat

end

end A144180.P18068890300844835348

namespace A144180

/-- `A292860(A055999(n+3))` -/
def P18068890300844835348.Spec : Prop :=
  ∀ n, P18068890300844835348.a n = A144180 n

end A144180

/-! ## A144180.P3671718999715246098

`A292860(eq[5, A025581(n)])`
-/

namespace A144180.P3671718999715246098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144180.P3671718999715246098

namespace A144180

/-- `A292860(eq[5, A025581(n)])` -/
def P3671718999715246098.Spec : Prop :=
  ∀ n, P3671718999715246098.a n = A144180 n

end A144180

/-! ## A144180.P5829116889463160775

`record[A292860(∑[A020705(n)])]`
-/

namespace A144180.P5829116889463160775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144180.P5829116889463160775

namespace A144180

/-- `record[A292860(∑[A020705(n)])]` -/
def P5829116889463160775.Spec : Prop :=
  ∀ n, P5829116889463160775.a n = A144180 n

end A144180

/-! ## A144180.P14217664905682298071

`A292860(Δ[A023551(n+1)])`
-/

namespace A144180.P14217664905682298071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (f1 (n + 1) - f1 n).toNat

end

end A144180.P14217664905682298071

namespace A144180

/-- `A292860(Δ[A023551(n+1)])` -/
def P14217664905682298071.Spec : Prop :=
  ∀ n, P14217664905682298071.a n = A144180 n

end A144180

/-! ## A144180.P11700480910528674144

`record[A292860(A052905(n)-1)]`
-/

namespace A144180.P11700480910528674144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144180.P11700480910528674144

namespace A144180

/-- `record[A292860(A052905(n)-1)]` -/
def P11700480910528674144.Spec : Prop :=
  ∀ n, P11700480910528674144.a n = A144180 n

end A144180

/-! ## A144180.P17348040142989595902

`record[A292860(abs(2-A046691(n)))]`
-/

namespace A144180.P17348040142989595902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144180.P17348040142989595902

namespace A144180

/-- `record[A292860(abs(2-A046691(n)))]` -/
def P17348040142989595902.Spec : Prop :=
  ∀ n, P17348040142989595902.a n = A144180 n

end A144180

/-!
# A144181: INVERT transform of A118434, = row sums of triangle A144182.

The programs for A144181, the canonical program `A144181.P15257799986025908274` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144181 has offset 0).

The definition of A144181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144181.P13442572441725027972

`ogf((1+2x^2+4x^3)/(1-x-2x^3))`
-/

namespace A144181.P13442572441725027972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 4] [1, -1, 0, -2] n

end

end A144181.P13442572441725027972

namespace A144181

/-- `ogf((1+2x^2+4x^3)/(1-x-2x^3))` -/
def P13442572441725027972.Spec : Prop :=
  ∀ n, P13442572441725027972.a n = A144181 n

end A144181

/-! ## A144181.P15257799986025908274

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A144181

/-- `a(n-1)+2*a(n-3)` -/
def P15257799986025908274.Spec : Prop :=
  ∀ n, (P15257799986025908274.a n : ℤ) = A144181 n

theorem P15257799986025908274.correct : P15257799986025908274.Spec := by
  intro n
  simp only [A144181]

end A144181

/-! ## A144181.P15945992885082647451

`A003229(n+3)%A052537(n+5)`
-/

namespace A144181.P15945992885082647451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003229 (n + 3)) (A052537 (n + 5))

end

end A144181.P15945992885082647451

namespace A144181

/-- `A003229(n+3)%A052537(n+5)` -/
def P15945992885082647451.Spec : Prop :=
  ∀ n, P15945992885082647451.a n = A144181 n

end A144181

/-! ## A144181.P15161267550898671323

`A077949(n+4)%A052537(n+5)`
-/

namespace A144181.P15161267550898671323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077949 (n + 4)) (A052537 (n + 5))

end

end A144181.P15161267550898671323

namespace A144181

/-- `A077949(n+4)%A052537(n+5)` -/
def P15161267550898671323.Spec : Prop :=
  ∀ n, P15161267550898671323.a n = A144181 n

end A144181

/-! ## A144181.P10717545377648084556

`Δ[A003479(n+3)]%A052537(n+5)`
-/

namespace A144181.P10717545377648084556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A052537 (n + 5))

end

end A144181.P10717545377648084556

namespace A144181

/-- `Δ[A003479(n+3)]%A052537(n+5)` -/
def P10717545377648084556.Spec : Prop :=
  ∀ n, P10717545377648084556.a n = A144181 n

end A144181

/-! ## A144181.P9333834468769269554

`∑[A052537(n)+A164410(n+4)%A003476(n+1)]`
-/

namespace A144181.P9333834468769269554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n + Int.tmod (A164410 (n + 4)) (A003476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144181.P9333834468769269554

namespace A144181

/-- `∑[A052537(n)+A164410(n+4)%A003476(n+1)]` -/
def P9333834468769269554.Spec : Prop :=
  ∀ n, P9333834468769269554.a n = A144181 n

end A144181

/-!
# A144185: Triangle, row sums = a signed, shifted version of A000587, the Rao Uppuluri-Carpenter numbers.

The programs for A144185, there is no canonical definition to state claims against.
-/

/-! ## A144185.P13561648251481587864

`A008836(A336128(n))*A225682(n)`
-/

namespace A144185.P13561648251481587864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A336128 n).toNat * A225682 n

end

end A144185.P13561648251481587864

/-! ## A144185.P334733443348758036

`A118433(n)%A070368(A281283(n))`
-/

namespace A144185.P334733443348758036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118433 n) (A070368 (A281283 n).toNat)

end

end A144185.P334733443348758036

/-! ## A144185.P1851200147793550127

`A008683(A080937(n))*A078805(n+1)`
-/

namespace A144185.P1851200147793550127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A080937 n).toNat * A078805 (n + 1)

end

end A144185.P1851200147793550127

/-!
# A144186: Numerators of series expansion of the e.g.f. for the Catalan numbers.

The programs for A144186, the canonical program `A144186.P103456975638940015` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144186 has offset 0).

The definition of A144186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144186.P9588914829036544678

`A261130(n)/A089026(n+1)`
-/

namespace A144186.P9588914829036544678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261130 n : ℚ) / (A089026 (n + 1) : ℚ)

end

end A144186.P9588914829036544678

namespace A144186

/-- `A261130(n)/A089026(n+1)` -/
def P9588914829036544678.Spec : Prop :=
  ∀ n, P9588914829036544678.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P4350239887039977577

`ceil(A068111(n)/A089026(n+1))`
-/

namespace A144186.P4350239887039977577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068111 n : ℚ) / (A089026 (n + 1) : ℚ)⌉

end

end A144186.P4350239887039977577

namespace A144186

/-- `ceil(A068111(n)/A089026(n+1))` -/
def P4350239887039977577.Spec : Prop :=
  ∀ n, P4350239887039977577.a n = A144186 n

end A144186

/-! ## A144186.P8007976477257647003

`A034386(n)/A034386(n+1)*A261130(n)`
-/

namespace A144186.P8007976477257647003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A034386 (n + 1) : ℚ) * (A261130 n : ℚ)

end

end A144186.P8007976477257647003

namespace A144186

/-- `A034386(n)/A034386(n+1)*A261130(n)` -/
def P8007976477257647003.Spec : Prop :=
  ∀ n, P8007976477257647003.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P103456975638940015

`A055773(2*n)/gcd(A055773(2*n), A055773(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144186

/-- `A055773(2*n)/gcd(A055773(2*n), A055773(n+1))` -/
def P103456975638940015.Spec : Prop :=
  ∀ n, P103456975638940015.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P7201055861190791914

`gcd(Δ[A068111(n)], A068111(n))`
-/

namespace A144186.P7201055861190791914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A068111 n)

end

end A144186.P7201055861190791914

namespace A144186

/-- `gcd(Δ[A068111(n)], A068111(n))` -/
def P7201055861190791914.Spec : Prop :=
  ∀ n, (P7201055861190791914.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P8335776524517976786

`gcd(A261130(n+1), A261130(n))`
-/

namespace A144186.P8335776524517976786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261130 (n + 1)) (A261130 n)

end

end A144186.P8335776524517976786

namespace A144186

/-- `gcd(A261130(n+1), A261130(n))` -/
def P8335776524517976786.Spec : Prop :=
  ∀ n, (P8335776524517976786.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P10231263878675538609

`gcd(Δ[A055773(2*n)], A055773(2*n))`
-/

namespace A144186.P10231263878675538609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A055773 (2 * n))

end

end A144186.P10231263878675538609

namespace A144186

/-- `gcd(Δ[A055773(2*n)], A055773(2*n))` -/
def P10231263878675538609.Spec : Prop :=
  ∀ n, (P10231263878675538609.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P7996295968573995005

`A068111(n+1)/A089026(2*n+1)`
-/

namespace A144186.P7996295968573995005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068111 (n + 1) : ℚ) / (A089026 (2 * n + 1) : ℚ)

end

end A144186.P7996295968573995005

namespace A144186

/-- `A068111(n+1)/A089026(2*n+1)` -/
def P7996295968573995005.Spec : Prop :=
  ∀ n, P7996295968573995005.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P9652089045988425892

`A212792(2*n+1)/A089026(2*n+1)`
-/

namespace A144186.P9652089045988425892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212792 (2 * n + 1) : ℚ) / (A089026 (2 * n + 1) : ℚ)

end

end A144186.P9652089045988425892

namespace A144186

/-- `A212792(2*n+1)/A089026(2*n+1)` -/
def P9652089045988425892.Spec : Prop :=
  ∀ n, P9652089045988425892.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P2627824647918297316

`gcd(A073838(n+1), A098597(n))`
-/

namespace A144186.P2627824647918297316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073838 (n + 1)) (A098597 n)

end

end A144186.P2627824647918297316

namespace A144186

/-- `gcd(A073838(n+1), A098597(n))` -/
def P2627824647918297316.Spec : Prop :=
  ∀ n, (P2627824647918297316.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P1975182187736065541

`A000108(n)/A170829(n)`
-/

namespace A144186.P1975182187736065541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A170829 n : ℚ)

end

end A144186.P1975182187736065541

namespace A144186

/-- `A000108(n)/A170829(n)` -/
def P1975182187736065541.Spec : Prop :=
  ∀ n, P1975182187736065541.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P11922610543182982590

`gcd(A000108(n), A068111(n))`
-/

namespace A144186.P11922610543182982590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 n) (A068111 n)

end

end A144186.P11922610543182982590

namespace A144186

/-- `gcd(A000108(n), A068111(n))` -/
def P11922610543182982590.Spec : Prop :=
  ∀ n, (P11922610543182982590.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P13492257975385261487

`gcd(A098512(n), A261130(n))`
-/

namespace A144186.P13492257975385261487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098512 n) (A261130 n)

end

end A144186.P13492257975385261487

namespace A144186

/-- `gcd(A098512(n), A261130(n))` -/
def P13492257975385261487.Spec : Prop :=
  ∀ n, (P13492257975385261487.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P12094179572752013722

`gcd(A068111(n+1), A168491(n))`
-/

namespace A144186.P12094179572752013722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068111 (n + 1)) (A168491 n)

end

end A144186.P12094179572752013722

namespace A144186

/-- `gcd(A068111(n+1), A168491(n))` -/
def P12094179572752013722.Spec : Prop :=
  ∀ n, (P12094179572752013722.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P16008042444976595843

`A089408(2*n+1)/A170829(n)`
-/

namespace A144186.P16008042444976595843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 (2 * n + 1) : ℚ) / (A170829 n : ℚ)

end

end A144186.P16008042444976595843

namespace A144186

/-- `A089408(2*n+1)/A170829(n)` -/
def P16008042444976595843.Spec : Prop :=
  ∀ n, P16008042444976595843.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P5026473092795718715

`gcd(A001790(n), A073838(n+2))`
-/

namespace A144186.P5026473092795718715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001790 n) (A073838 (n + 2))

end

end A144186.P5026473092795718715

namespace A144186

/-- `gcd(A001790(n), A073838(n+2))` -/
def P5026473092795718715.Spec : Prop :=
  ∀ n, (P5026473092795718715.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P12862989022841607388

`A089849(2*n+1)/A170829(n)`
-/

namespace A144186.P12862989022841607388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089849 (2 * n + 1) : ℚ) / (A170829 n : ℚ)

end

end A144186.P12862989022841607388

namespace A144186

/-- `A089849(2*n+1)/A170829(n)` -/
def P12862989022841607388.Spec : Prop :=
  ∀ n, P12862989022841607388.a n = (A144186 n : ℚ)

end A144186

/-! ## A144186.P11021241684060721875

`gcd(A051960(n), A261130(n))`
-/

namespace A144186.P11021241684060721875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051960 n) (A261130 n)

end

end A144186.P11021241684060721875

namespace A144186

/-- `gcd(A051960(n), A261130(n))` -/
def P11021241684060721875.Spec : Prop :=
  ∀ n, (P11021241684060721875.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P16060601783128174738

`gcd(A141222(n)+A073838(n+1), A141222(n))`
-/

namespace A144186.P16060601783128174738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141222 n + A073838 (n + 1)) (A141222 n)

end

end A144186.P16060601783128174738

namespace A144186

/-- `gcd(A141222(n)+A073838(n+1), A141222(n))` -/
def P16060601783128174738.Spec : Prop :=
  ∀ n, (P16060601783128174738.a n : ℤ) = A144186 n

end A144186

/-! ## A144186.P18300844411514735014

`A034386(2*n)/A034386(n+1)`
-/

namespace A144186.P18300844411514735014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n) : ℚ) / (A034386 (n + 1) : ℚ)

end

end A144186.P18300844411514735014

namespace A144186

/-- `A034386(2*n)/A034386(n+1)` -/
def P18300844411514735014.Spec : Prop :=
  ∀ n, P18300844411514735014.a n = (A144186 n : ℚ)

end A144186

/-!
# A144187: Denominators of series expansion of the e.g.f. for the Catalan numbers.

The programs for A144187, there is no canonical definition to state claims against.
-/

/-! ## A144187.P11222952567172894904

`n!/gcd(n!, A000108(n))`
-/

namespace A144187.P11222952567172894904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (Nat.factorial n : ℤ) (A000108 n) : ℚ)

end

end A144187.P11222952567172894904

/-! ## A144187.P11371070999618350452

`A000142(n)/A000108(n)*A144186(n)`
-/

namespace A144187.P11371070999618350452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000108 n : ℚ) * (A144186 n : ℚ)

end

end A144187.P11371070999618350452

/-! ## A144187.P14489009272972912476

`A000142(n)/gcd(A001700(n), A135322(n))`
-/

namespace A144187.P14489009272972912476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A001700 n) (A135322 n) : ℚ)

end

end A144187.P14489009272972912476

/-! ## A144187.P2169607053746702045

`A000142(n+1)/gcd(A000142(n+1), A001405(2*n))`
-/

namespace A144187.P2169607053746702045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (Int.gcd (A000142 (n + 1)) (A001405 (2 * n)) : ℚ)

end

end A144187.P2169607053746702045

/-! ## A144187.P9983042101008317688

`sqrt(A005017(n+1))`
-/

namespace A144187.P9983042101008317688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005017 (n + 1) : ℝ)

end

end A144187.P9983042101008317688

/-!
# A144188: a(n)/n! is the probability of guessing "up/down" correctly through a deck of n cards marked 1, 2, ..., n, if one always makes the most probable guess.

The programs for A144188, there is no canonical definition to state claims against.
-/

/-! ## A144188.P11186116548237791246

`A318354(∑[n+1])`
-/

namespace A144188.P11186116548237791246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144188.P11186116548237791246

/-! ## A144188.P5661866163992279891

`or(char[1], A318354(A000124(n)))`
-/

namespace A144188.P5661866163992279891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A318354 (A000124 n).toNat)

end

end A144188.P5661866163992279891

/-! ## A144188.P15281746968679874932

`A318354(A000124(n))^A178334(n)`
-/

namespace A144188.P15281746968679874932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318354 (A000124 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A144188.P15281746968679874932

/-! ## A144188.P17888813067633182848

`A318354(A000124(n))+A000007(n+1)`
-/

namespace A144188.P17888813067633182848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318354 (A000124 n).toNat + A000007 (n + 1)

end

end A144188.P17888813067633182848

/-! ## A144188.P8525279426434340848

`A178334(n+1)*A318354(A000124(n))`
-/

namespace A144188.P8525279426434340848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A318354 (A000124 n).toNat

end

end A144188.P8525279426434340848

/-! ## A144188.P14477131833290515377

`A318354(A000124(n))+char[A002997(n+1)]`
-/

namespace A144188.P14477131833290515377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318354 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A144188.P14477131833290515377

/-! ## A144188.P11435326309057597874

`A318354(A000124(n))+A008683(4*(n+1))`
-/

namespace A144188.P11435326309057597874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318354 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A144188.P11435326309057597874

/-!
# A144190: (0, 1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, ...) becomes (0 mod 1, 2 mod 3, 2 mod 2, 5 mod 2, 3 mod 7, 2 mod 3, 3 mod 2, 2 mod 5, 11 mod 2, 2 mod 3, ...).

The programs for A144190, there is no canonical definition to state claims against.
-/

/-! ## A144190.P3951341408249907763

`A141269(n+1)%A348477(Δ[n²])`
-/

namespace A144190.P3951341408249907763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141269 (n + 1)) (A348477 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A144190.P3951341408249907763

/-! ## A144190.P15330107947178273865

`A028310(A141269(n+1))%A348477(2*n+1)`
-/

namespace A144190.P15330107947178273865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A141269 (n + 1)).toNat) (A348477 (2 * n + 1))

end

end A144190.P15330107947178273865

/-! ## A144190.P4016761255758381019

`A348477(A028310(2*n))%A348477(2*n+1)`
-/

namespace A144190.P4016761255758381019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348477 (A028310 (2 * n)).toNat) (A348477 (2 * n + 1))

end

end A144190.P4016761255758381019

/-! ## A144190.P4573444118217131785

`A348477(A085229(2*n+1))%A348477(2*n+1)`
-/

namespace A144190.P4573444118217131785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348477 (A085229 (2 * n + 1)).toNat) (A348477 (2 * n + 1))

end

end A144190.P4573444118217131785

/-! ## A144190.P10176423541813346989

`and(A054390(2*n+1), A359939(A059110(n)))`
-/

namespace A144190.P10176423541813346989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054390 (2 * n + 1)) (A359939 (A059110 n).toNat)

end

end A144190.P10176423541813346989

/-!
# A144191: (0, 1, 2^2, 2*3, 2^3, 3^2, 2*5, 2^2*3, 2*7, 3*5, 2^4, 2*3^2,..) becomes (0 mod 1, 2 mod 2, 2 mod 3, 2 mod 3, 3 mod 2, 2 mod 5, 2 mod 2, 3 mod 2, 7 mod 3, 5 mod 2, 4 mod 2, 3 mod 2,..).

The programs for A144191, there is no canonical definition to state claims against.
-/

/-! ## A144191.P18193639383436587567

`A219180(2*n+3)+A165560(A037078(n))`
-/

namespace A144191.P18193639383436587567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (2 * n + 3) + A165560 (A037078 n).toNat

end

end A144191.P18193639383436587567

/-! ## A144191.P6660771620036994916

`A056563(A000225(n)%A006601(n+1))`
-/

namespace A144191.P6660771620036994916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (Int.tmod (A000225 n) (A006601 (n + 1))).toNat

end

end A144191.P6660771620036994916

/-! ## A144191.P2306017409421118290

`A105700(A046450(n+1)%A038283(n))`
-/

namespace A144191.P2306017409421118290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (Int.tmod (A046450 (n + 1)) (A038283 n)).toNat

end

end A144191.P2306017409421118290

/-! ## A144191.P6719451326999556928

`A287385(A006530(n+2)*A325608(n+1))`
-/

namespace A144191.P6719451326999556928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287385 (A006530 (n + 2) * A325608 (n + 1)).toNat

end

end A144191.P6719451326999556928

/-! ## A144191.P14241504943672035184

`A287418(A003593(2*(n+1))-A000040(n+1))`
-/

namespace A144191.P14241504943672035184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A003593 (2 * (n + 1)) - A000040 (n + 1)).toNat

end

end A144191.P14241504943672035184

/-!
# A144193: Square array (5 X 5) read by rows.

The programs for A144193, there is no canonical definition to state claims against.
-/

/-! ## A144193.P5546786068245365743

`and(4, gcd(24, n))/4`
-/

namespace A144193.P5546786068245365743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (Nat.gcd 24 n) : ℚ) / 4

end

end A144193.P5546786068245365743

/-! ## A144193.P578979658985209217

`val(or(10, n%14), 14)`
-/

namespace A144193.P578979658985209217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 10 (n % 14)) 14

end

end A144193.P578979658985209217

/-! ## A144193.P5931821183359492396

`val(∑[∑[n+8]], 28)`
-/

namespace A144193.P5931821183359492396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 28

end

end A144193.P5931821183359492396

/-! ## A144193.P17060579473289889979

`((16*n)%(n+13))%2`
-/

namespace A144193.P17060579473289889979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n % (n + 13) % 2

end

end A144193.P17060579473289889979

/-! ## A144193.P8640742914038297442

`and(5-n, C(n, 4)%7)`
-/

namespace A144193.P8640742914038297442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 - (n : ℤ)) ((Nat.choose n 4 % 7 : ℕ) : ℤ)

end

end A144193.P8640742914038297442

/-!
# A144194: Square array (6 X 6) read by rows.

The programs for A144194, there is no canonical definition to state claims against.
-/

/-! ## A144194.P10814010716488794691

`char[eq[5, ∑{p}[n, #]]+n]`
-/

namespace A144194.P10814010716488794691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A144194.P10814010716488794691

/-! ## A144194.P12942152086327542073

`val(floor(n*sqrt(8))+1, 5)`
-/

namespace A144194.P12942152086327542073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋ + 1).toNat 5

end

end A144194.P12942152086327542073

/-! ## A144194.P11814218888102992940

`∑{p}[ceil(2*n*sqrt(2)), val(#, 5)]`
-/

namespace A144194.P11814218888102992940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation p 5

end

end A144194.P11814218888102992940

/-! ## A144194.P3045004052742069115

`floor(floor(2*n*sqrt(2))%5/π)`
-/

namespace A144194.P3045004052742069115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod ⌊(2 * n : ℝ) * Real.sqrt (2 : ℝ)⌋ 5 : ℝ) / Real.pi⌋

end

end A144194.P3045004052742069115

/-!
# A144195: Square array (6 X 6) read by rows.

The programs for A144195, there is no canonical definition to state claims against.
-/

/-! ## A144195.P6404272390376288615

`A295896(xor(22, ∑[n]))`
-/

namespace A144195.P6404272390376288615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295896 (Nat.xor 22 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A144195.P6404272390376288615

/-! ## A144195.P4343677358791662583

`val(A296616(n+1), 7)`
-/

namespace A144195.P4343677358791662583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A296616 (n + 1)).toNat 7

end

end A144195.P4343677358791662583

/-! ## A144195.P610373775741769301

`char[record[or(4, A297998(n))]]`
-/

namespace A144195.P610373775741769301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A297998 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144195.P610373775741769301

/-! ## A144195.P3138057314857814754

`floor(A222132(2*n)/8)`
-/

namespace A144195.P3138057314857814754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222132 (2 * n + 1) : ℚ) / 8⌋

end

end A144195.P3138057314857814754

/-! ## A144195.P15235914930805743596

`char[A362995(n+1)+3]`
-/

namespace A144195.P15235914930805743596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362995 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144195.P15235914930805743596

/-!
# A144196: Square array (6 X 6) read by rows.

The programs for A144196, there is no canonical definition to state claims against.
-/

/-! ## A144196.P12664136747547506423

`char[∑[n]+(a(n-1)-1)%(n+1)+1]` with `a(0)=5, a(1)=5`
-/

namespace A144196.P12664136747547506423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (Int.tmod (f1 (n - 1) - 1) (n + 1 : ℤ) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144196.P12664136747547506423

/-! ## A144196.P17867415777951420851

`char[A333068(n+3)]`
-/

namespace A144196.P17867415777951420851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333068 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144196.P17867415777951420851

/-! ## A144196.P7689537118659303873

`val(∑[A016727(n)], 4)`
-/

namespace A144196.P7689537118659303873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 4

end

end A144196.P7689537118659303873

/-! ## A144196.P6101159550666341235

`val(A186647(n+7), 14)`
-/

namespace A144196.P6101159550666341235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A186647 (n + 7)).toNat 14

end

end A144196.P6101159550666341235

/-! ## A144196.P17254075267756696106

`val(∑[A000164(n²)], 4)`
-/

namespace A144196.P17254075267756696106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 4

end

end A144196.P17254075267756696106

/-!
# A144197: Square array 7 x 7 read by rows.

The programs for A144197, there is no canonical definition to state claims against.
-/

/-! ## A144197.P224723071579353401

`char[2*(3*(floor(ϕ*n/2)+1)+n)]`
-/

namespace A144197.P224723071579353401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ)⌋ + 1) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144197.P224723071579353401

/-! ## A144197.P7328086559576811650

`val(A188434(3*n+1), 6)`
-/

namespace A144197.P7328086559576811650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A188434 (3 * n + 1)).toNat 6

end

end A144197.P7328086559576811650

/-! ## A144197.P13247414330685301303

`val(A285682(3*n+1), 6)`
-/

namespace A144197.P13247414330685301303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285682 (3 * n + 1)).toNat 6

end

end A144197.P13247414330685301303

/-! ## A144197.P4287170441776285938

`and(n+1, A188020(n+7))`
-/

namespace A144197.P4287170441776285938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A188020 (n + 7))

end

end A144197.P4287170441776285938

/-! ## A144197.P11898805853108325120

`A188020(C(xor(1, n), n)+6)`
-/

namespace A144197.P11898805853108325120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (Nat.choose (Nat.xor 1 n) n + 6)

end

end A144197.P11898805853108325120

/-!
# A144198: Square array (8 X 8) read by rows.

The programs for A144198, there is no canonical definition to state claims against.
-/

/-! ## A144198.P4871655275279874655

`char[record[xor(7, A165090(n))]]`
-/

namespace A144198.P4871655275279874655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A165090 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P4871655275279874655

/-! ## A144198.P11351536057590416083

`char[A222216(n)+8*n]`
-/

namespace A144198.P11351536057590416083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n + (8 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P11351536057590416083

/-! ## A144198.P11555730115771881515

`val(A011861(7*n+4), 8)`
-/

namespace A144198.P11555730115771881515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011861 (7 * n + 4)).toNat 8

end

end A144198.P11555730115771881515

/-! ## A144198.P14040980447255124390

`char[record[xor(7, 7*A242634(n))]]`
-/

namespace A144198.P14040980447255124390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (7 * A242634 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P14040980447255124390

/-! ## A144198.P12823625351627932029

`char[∑[A031176(n)]+6+n]`
-/

namespace A144198.P12823625351627932029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 6 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P12823625351627932029

/-! ## A144198.P800474014749780201

`char[n*(9-A269528(a(n-1)))]` with `a(0)=7`
-/

namespace A144198.P800474014749780201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  (n : ℤ) * (9 - A269528 (f1 (n - 1)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P800474014749780201

/-! ## A144198.P9906784130325836534

`char[A115308(7*A115323(n))]`
-/

namespace A144198.P9906784130325836534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115308 (7 * A115323 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P9906784130325836534

/-! ## A144198.P14383922403620705657

`char[A048727(A048723(n)+n)]`
-/

namespace A144198.P14383922403620705657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 (A048723 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P14383922403620705657

/-! ## A144198.P15232009626097106277

`char[xor(A005206(n+2), A046691(n+2))]`
-/

namespace A144198.P15232009626097106277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005206 (n + 2)) (A046691 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P15232009626097106277

/-! ## A144198.P2745093648603384002

`char[(n+1)*A099646((n+1)*A003621(n+2)+1)]`
-/

namespace A144198.P2745093648603384002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099646 ((n + 1 : ℤ) * A003621 (n + 2) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144198.P2745093648603384002

/-!
# A144199: Square array (8 X 8) read by rows.

The programs for A144199, there is no canonical definition to state claims against.
-/

/-! ## A144199.P7580627359186093478

`val(A187756(A310458(n)), 27)`
-/

namespace A144199.P7580627359186093478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A187756 (A310458 n).toNat).toNat 27

end

end A144199.P7580627359186093478

/-! ## A144199.P6123609447978724934

`∑[A259363(n)]%A016016(n+1)`
-/

namespace A144199.P6123609447978724934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016016 (n + 1))

end

end A144199.P6123609447978724934

/-! ## A144199.P12815687848794074545

`Δ[A017835(n)]%A016016(n+1)`
-/

namespace A144199.P12815687848794074545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016016 (n + 1))

end

end A144199.P12815687848794074545

/-! ## A144199.P13957960348934399082

`char[∑[A251768(n+1)]-A289207(n)]`
-/

namespace A144199.P13957960348934399082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251768 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A289207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144199.P13957960348934399082

/-! ## A144199.P18077650841158850393

`∑[A212653(n)+1]%A016016(n+1)`
-/

namespace A144199.P18077650841158850393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212653 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016016 (n + 1))

end

end A144199.P18077650841158850393

/-! ## A144199.P11442384805581088506

`A055945(A165013(n))%A016016(n+1)`
-/

namespace A144199.P11442384805581088506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055945 (A165013 n).toNat) (A016016 (n + 1))

end

end A144199.P11442384805581088506

/-! ## A144199.P5402332812696614759

`A061579(A211540(n))%A016016(n+1)`
-/

namespace A144199.P5402332812696614759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061579 (A211540 n).toNat) (A016016 (n + 1))

end

end A144199.P5402332812696614759

/-! ## A144199.P17482744508077482589

`A065001(A293990(n))%A016016(n+1)`
-/

namespace A144199.P17482744508077482589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065001 (A293990 n).toNat) (A016016 (n + 1))

end

end A144199.P17482744508077482589

/-! ## A144199.P3002972567158904389

`(A089253(n+2)%A006368(n+2))%A016016(n+1)`
-/

namespace A144199.P3002972567158904389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A089253 (n + 2)) (A006368 (n + 2))) (A016016 (n + 1))

end

end A144199.P3002972567158904389

/-! ## A144199.P13334906891310898700

`A144198(or(A281120(n+1), A281121(n+1)))`
-/

namespace A144199.P13334906891310898700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144198 (Int.lor (A281120 (n + 1)) (A281121 (n + 1))).toNat

end

end A144199.P13334906891310898700

