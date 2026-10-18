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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A261100: a(n) is the greatest m for which A002182(m) <= n; the least monotonic left inverse for highly composite numbers A002182.

The programs for A261100, there is no canonical definition to state claims against.
-/

/-! ## A261100.P4308703226640014654

`∑[A322586(n+1)]`
-/

namespace A261100.P4308703226640014654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261100.P4308703226640014654

/-! ## A261100.P17275965822813509068

`∑[char[A002182(n+1)-1]]`
-/

namespace A261100.P17275965822813509068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261100.P17275965822813509068

/-! ## A261100.P10672123251367539043

`∑[char[A061799(n+1)-1]]`
-/

namespace A261100.P10672123251367539043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261100.P10672123251367539043

/-! ## A261100.P7593666310531935562

`∑[char[A139770(n+1)-1]]`
-/

namespace A261100.P7593666310531935562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261100.P7593666310531935562

/-! ## A261100.P940608727270702746

`∑[char[A135372(n+1)-2]]`
-/

namespace A261100.P940608727270702746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261100.P940608727270702746

/-! ## A261100.P3328521453771906799

`∑[char[∑[A262501(n+1)]]]+1`
-/

namespace A261100.P3328521453771906799
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A261100.P3328521453771906799

/-! ## A261100.P14251387998486332927

`A322586(n+1)+a(n-1)%A026491(a(n-1))` with `a(0)=1`
-/

namespace A261100.P14251387998486332927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322586 (n + 1) + Int.tmod (a (n - 1)) (A026491 (a (n - 1)).toNat)

end

end A261100.P14251387998486332927

/-! ## A261100.P2414835538045945226

`(A322586(n+1)+a(n-1))%A008995(a(n-1)+1)` with `a(0)=1`
-/

namespace A261100.P2414835538045945226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A322586 (n + 1) + a (n - 1)) (A008995 (a (n - 1) + 1).toNat)

end

end A261100.P2414835538045945226

/-! ## A261100.P12697626343424220870

`∑[A010054(A073348(n+1)+∑[n])]`
-/

namespace A261100.P12697626343424220870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A073348 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261100.P12697626343424220870

/-!
# A261101: After zero, each n occurs A261091(n) times.

The programs for A261101, the canonical program `A261101.P2281269014081318971` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261101 has offset 0).

The definition of A261101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261101.P2281269014081318971

`∑[char[A261082(n)]]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A261101

/-- `∑[char[A261082(n)]]` -/
def P2281269014081318971.Spec : Prop :=
  ∀ n, (P2281269014081318971.a n : ℤ) = A261101 n

theorem P2281269014081318971.correct : P2281269014081318971.Spec := by
  intro n
  simp only [A261101]

end A261101

/-! ## A261101.P15287495965013672131

`∑[char[A261081(n)+1]]`
-/

namespace A261101.P15287495965013672131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261101.P15287495965013672131

namespace A261101

/-- `∑[char[A261081(n)+1]]` -/
def P15287495965013672131.Spec : Prop :=
  ∀ n, (P15287495965013672131.a n : ℤ) = A261101 n

end A261101

/-! ## A261101.P12140438665416833599

`∑[char[A261102(a(n-1))+1]]` with `a(0)=1`
-/

namespace A261101.P12140438665416833599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A261102 (f2 (n - 1)).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261101.P12140438665416833599

namespace A261101

/-- `∑[char[A261102(a(n-1))+1]]` -/
def P12140438665416833599.Spec : Prop :=
  ∀ n, (P12140438665416833599.a n : ℤ) = A261101 n

end A261101

/-! ## A261101.P6619080605243391897

`comp[∑[A261091(abs(1-n)+1)]+n]-n`
-/

namespace A261101.P6619080605243391897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261091 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A261101.P6619080605243391897

namespace A261101

/-- `comp[∑[A261091(abs(1-n)+1)]+n]-n` -/
def P6619080605243391897.Spec : Prop :=
  ∀ n, P6619080605243391897.a n = A261101 n

end A261101

/-! ## A261101.P9244599471901273488

`A108852(A219643(n))-A000032(floor(1/(n+1)))`
-/

namespace A261101.P9244599471901273488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A219643 n).toNat - A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A261101.P9244599471901273488

namespace A261101

/-- `A108852(A219643(n))-A000032(floor(1/(n+1)))` -/
def P9244599471901273488.Spec : Prop :=
  ∀ n, P9244599471901273488.a n = A261101 n

end A261101

/-! ## A261101.P8781854924524632107

`A108852(A219643(n))-A020639(A005893(n))`
-/

namespace A261101.P8781854924524632107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A219643 n).toNat - A020639 (A005893 n).toNat

end

end A261101.P8781854924524632107

namespace A261101

/-- `A108852(A219643(n))-A020639(A005893(n))` -/
def P8781854924524632107.Spec : Prop :=
  ∀ n, P8781854924524632107.a n = A261101 n

end A261101

/-! ## A261101.P6459015560367188526

`A108852(A219645(n))-A020639(A005893(n))`
-/

namespace A261101.P6459015560367188526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A219645 n).toNat - A020639 (A005893 n).toNat

end

end A261101.P6459015560367188526

namespace A261101

/-- `A108852(A219645(n))-A020639(A005893(n))` -/
def P6459015560367188526.Spec : Prop :=
  ∀ n, P6459015560367188526.a n = A261101 n

end A261101

/-! ## A261101.P4762017991787232811

`A000523(A014689(∑[A002024(n+1)]))`
-/

namespace A261101.P4762017991787232811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A014689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A261101.P4762017991787232811

namespace A261101

/-- `A000523(A014689(∑[A002024(n+1)]))` -/
def P4762017991787232811.Spec : Prop :=
  ∀ n, P4762017991787232811.a n = A261101 n

end A261101

/-! ## A261101.P11696931185026309248

`A345380(∑[A180613(n+1)])`
-/

namespace A261101.P11696931185026309248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345380 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261101.P11696931185026309248

namespace A261101

/-- `A345380(∑[A180613(n+1)])` -/
def P11696931185026309248.Spec : Prop :=
  ∀ n, P11696931185026309248.a n = A261101 n

end A261101

/-! ## A261101.P11371529919082560163

`A029837(∑[A285353(A225644(n))])`
-/

namespace A261101.P11371529919082560163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (A225644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261101.P11371529919082560163

namespace A261101

/-- `A029837(∑[A285353(A225644(n))])` -/
def P11371529919082560163.Spec : Prop :=
  ∀ n, P11371529919082560163.a n = A261101 n

end A261101

/-!
# A261102: Simple self-inverse permutation of natural numbers: after zero, list each block of A261091(n) numbers in reverse order, from A261082(n) to A261081(n+1).

The programs for A261102, there is no canonical definition to state claims against.
-/

/-! ## A261102.P6104047261135953658

`A219642(A261076(n))`
-/

namespace A261102.P6104047261135953658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A261076 n).toNat

end

end A261102.P6104047261135953658

/-!
# A261103: a(n) = A259934(n) - A261089(n).

The programs for A261103, there is no canonical definition to state claims against.
-/

/-! ## A261103.P11802359194609359478

`A259934(n)-A261089(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261103.P11802359194609359478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n - A261089 n

end

end A261103.P11802359194609359478

/-! ## A261103.P17851331655697299606

`A262505(n)-A262506(n)`
-/

namespace A261103.P17851331655697299606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262505 n - A262506 n

end

end A261103.P17851331655697299606

/-! ## A261103.P7900732522749791905

`A259934(n)+A262505(n)-A262503(n)`
-/

namespace A261103.P7900732522749791905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n + (A262505 n - A262503 n)

end

end A261103.P7900732522749791905

/-! ## A261103.P14884913588713343230

`A262503(n)-(A262506(n)+A261089(n))`
-/

namespace A261103.P14884913588713343230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - (A262506 n + A261089 n)

end

end A261103.P14884913588713343230

/-! ## A261103.P3144712212179032132

`∑[A259935(n+1)]-A259935(n+1)-A261089(n)`
-/

namespace A261103.P3144712212179032132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A259935 (n + 1) - A261089 n

end

end A261103.P3144712212179032132

/-! ## A261103.P17893656565401234028

`A259934(n)-eq[1, A263259(n)]`
-/

namespace A261103.P17893656565401234028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A261103.P17893656565401234028

/-! ## A261103.P1100684427812389034

`A263255(∑[n])-A261089(n)`
-/

namespace A261103.P1100684427812389034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f1 j) - A261089 n

end

end A261103.P1100684427812389034

/-!
# A261104: a(0)=0; for n >= 1, a(n) = 1 + a(n-A070319(n)), where A070319(n) is the maximum value for A000005 (number of divisors) in range 1 .. n.

The programs for A261104, there is no canonical definition to state claims against.
-/

/-! ## A261104.P16912461980084738688

`∑{e}[A063759(n), A163563(#)]`
-/

namespace A261104.P16912461980084738688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A163563 (Nat.factorization (f1 n).natAbs p)

end

end A261104.P16912461980084738688

/-! ## A261104.P16811689836673794586

`A008615(lt[A334042(n), A377042(n)])`
-/

namespace A261104.P16811689836673794586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261104.P16811689836673794586

/-! ## A261104.P18445603409987882923

`A135660(A112233(3*n+1)-A296075(n+1))`
-/

namespace A261104.P18445603409987882923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A112233 (3 * n + 1) - A296075 (n + 1)).toNat

end

end A261104.P18445603409987882923

/-!
# A261105: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261105, there is no canonical definition to state claims against.
-/

/-! ## A261105.P6038527416526318741

`A261113((n+1)²+n²)`
-/

namespace A261105.P6038527416526318741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 ((n + 1) ^ 2 + n ^ 2)

end

end A261105.P6038527416526318741

/-! ## A261105.P11836337795606056873

`record[A003982(n)*A261113(n+1)]`
-/

namespace A261105.P11836337795606056873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A261113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261105.P11836337795606056873

/-! ## A261105.P6381230266580115867

`record[gcd(A114327(n), A261113(n+1))]`
-/

namespace A261105.P6381230266580115867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A261113 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261105.P6381230266580115867

/-! ## A261105.P9636497898882099179

`lcm(A000034(n), A261113(A001844(n)))`
-/

namespace A261105.P9636497898882099179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A261113 (A001844 n).toNat)

end

end A261105.P9636497898882099179

/-! ## A261105.P835297841032126447

`A261113(A001844(n))+n*A000007(n)`
-/

namespace A261105.P835297841032126447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A001844 n).toNat + (n : ℤ) * A000007 n

end

end A261105.P835297841032126447

/-!
# A261106: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261106, the canonical program `A261106.P3853589746269023382` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261106 has offset 1).

The definition of A261106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261106.P3853589746269023382

`a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=28, a(1)=33, a(2)=63, a(3)=97, a(4)=183, a(5)=289`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261106

/-- `a(n-1)+3*a(n-2)-3*a(n-3)` -/
def P3853589746269023382.Spec : Prop :=
  ∀ n, P3853589746269023382.a n = A261106 (n + 1)

theorem P3853589746269023382.correct : P3853589746269023382.Spec := by
  intro n
  simp only [A261106, Nat.add_sub_cancel]

end A261106

/-! ## A261106.P11014159652296632398

`A261113(∑[n]+1)`
-/

namespace A261106.P11014159652296632398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261106.P11014159652296632398

namespace A261106

/-- `A261113(∑[n]+1)` -/
def P11014159652296632398.Spec : Prop :=
  ∀ n, P11014159652296632398.a n = A261106 (n + 1)

end A261106

/-! ## A261106.P5389215933292883109

`record[A261113(n+1)/A271705(n)]`
-/

namespace A261106.P5389215933292883109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261113 (n + 1) : ℚ) / (A271705 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261106.P5389215933292883109

namespace A261106

/-- `record[A261113(n+1)/A271705(n)]` -/
def P5389215933292883109.Spec : Prop :=
  ∀ n, P5389215933292883109.a n = (A261106 (n + 1) : ℚ)

end A261106

/-! ## A261106.P16662036262855750358

`record[root(A261113(n+1), A013609(n))]`
-/

namespace A261106.P16662036262855750358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261113 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261106.P16662036262855750358

namespace A261106

/-- `record[root(A261113(n+1), A013609(n))]` -/
def P16662036262855750358.Spec : Prop :=
  ∀ n, P16662036262855750358.a n = (A261106 (n + 1) : ℝ)

end A261106

/-! ## A261106.P10212506781018031099

`record[A103452(n)²*A261113(n+1)]`
-/

namespace A261106.P10212506781018031099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 * A261113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261106.P10212506781018031099

namespace A261106

/-- `record[A103452(n)²*A261113(n+1)]` -/
def P10212506781018031099.Spec : Prop :=
  ∀ n, P10212506781018031099.a n = A261106 (n + 1)

end A261106

/-!
# A261107: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261107, there is no canonical definition to state claims against.
-/

/-! ## A261107.P6312326914613710782

`A261113(∑[n+1]+2)`
-/

namespace A261107.P6312326914613710782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261107.P6312326914613710782

/-! ## A261107.P14067712715714300512

`and(log2(1/2), A261113(A133263(n+1)))`
-/

namespace A261107.P14067712715714300512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A261113 (A133263 (n + 1)).toNat)

end

end A261107.P14067712715714300512

/-! ## A261107.P645968142628335640

`lcm(A055642(n), A261113(A000096(n)+3))`
-/

namespace A261107.P645968142628335640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 n) (A261113 (A000096 n + 3).toNat)

end

end A261107.P645968142628335640

/-! ## A261107.P15907171785614462474

`val(A000040(n+1), 2)!*A261113(A133263(n+1))`
-/

namespace A261107.P15907171785614462474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2) : ℤ) * A261113 (A133263 (n + 1)).toNat

end

end A261107.P15907171785614462474

/-! ## A261107.P14806909317738367697

`A000010(A003649(n+2))*A261113(A133263(n+1))`
-/

namespace A261107.P14806909317738367697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003649 (n + 2)).toNat * A261113 (A133263 (n + 1)).toNat

end

end A261107.P14806909317738367697

/-!
# A261108: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261108, there is no canonical definition to state claims against.
-/

/-! ## A261108.P14571143653935457154

`A261113(∑[n+2]+4)`
-/

namespace A261108.P14571143653935457154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A261108.P14571143653935457154

/-! ## A261108.P4274248887669188631

`A261113(A167614(n+1))+and(1, 2*n)`
-/

namespace A261108.P4274248887669188631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167614 (n + 1)).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A261108.P4274248887669188631

/-! ## A261108.P4988890432927386092

`lcm(A000034(n), A261113(A167614(n+1)))`
-/

namespace A261108.P4988890432927386092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A261113 (A167614 (n + 1)).toNat)

end

end A261108.P4988890432927386092

/-! ## A261108.P16987235159170491164

`or(A000007(n), A261113(A167614(n+1)))`
-/

namespace A261108.P16987235159170491164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A261113 (A167614 (n + 1)).toNat)

end

end A261108.P16987235159170491164

/-! ## A261108.P342875533612239268

`or(A000038(n), A261113(A167614(n+1)))`
-/

namespace A261108.P342875533612239268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A261113 (A167614 (n + 1)).toNat)

end

end A261108.P342875533612239268

/-!
# A261109: Number of (n+2) X (4+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261109, there is no canonical definition to state claims against.
-/

/-! ## A261109.P3154326922497467843

`A261113(A374004(n+1))`
-/

namespace A261109.P3154326922497467843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A374004 (n + 1)).toNat

end

end A261109.P3154326922497467843

/-! ## A261109.P14097367495316223153

`A261113(A052905(n)+9)`
-/

namespace A261109.P14097367495316223153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A052905 n + 9).toNat

end

end A261109.P14097367495316223153

/-! ## A261109.P13418726210160175033

`A261113(A055999(n)+10)`
-/

namespace A261109.P13418726210160175033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A055999 n + 10).toNat

end

end A261109.P13418726210160175033

/-! ## A261109.P12793679720825515066

`A261113(A167614(n+2)+1)`
-/

namespace A261109.P12793679720825515066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167614 (n + 2) + 1).toNat

end

end A261109.P12793679720825515066

/-! ## A261109.P2089618516578551419

`A261113(A167499(n+2)-1)`
-/

namespace A261109.P2089618516578551419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167499 (n + 2) - 1).toNat

end

end A261109.P2089618516578551419

/-!
# A261110: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261110, there is no canonical definition to state claims against.
-/

/-! ## A261110.P16698541266199260222

`A261113(A374005(n+1))`
-/

namespace A261110.P16698541266199260222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A374005 (n + 1)).toNat

end

end A261110.P16698541266199260222

/-! ## A261110.P6041338731539141890

`A261113(A167499(n+3))`
-/

namespace A261110.P6041338731539141890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167499 (n + 3)).toNat

end

end A261110.P6041338731539141890

/-! ## A261110.P1229126078218181620

`A261113(A000124(n+4)+4)`
-/

namespace A261110.P1229126078218181620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A000124 (n + 4) + 4).toNat

end

end A261110.P1229126078218181620

/-! ## A261110.P1503943123104237537

`A261113(A179865(n+5)+5)`
-/

namespace A261110.P1503943123104237537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A179865 (n + 5) + 5).toNat

end

end A261110.P1503943123104237537

/-! ## A261110.P10812156408056831436

`char[A014681(n)]*A261113(A000096(n+3)+6)`
-/

namespace A261110.P10812156408056831436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A261113 (A000096 (n + 3) + 6).toNat

end

end A261110.P10812156408056831436

/-!
# A261111: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261111, there is no canonical definition to state claims against.
-/

/-! ## A261111.P3066414310353610524

`A261113(A374007(n+1))`
-/

namespace A261111.P3066414310353610524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A374007 (n + 1)).toNat

end

end A261111.P3066414310353610524

/-! ## A261111.P4919595584742725559

`A261113(A167499(n+4)+1)`
-/

namespace A261111.P4919595584742725559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167499 (n + 4) + 1).toNat

end

end A261111.P4919595584742725559

/-! ## A261111.P7444264457654805251

`A261113(A167614(n+4)+3)`
-/

namespace A261111.P7444264457654805251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167614 (n + 4) + 3).toNat

end

end A261111.P7444264457654805251

/-! ## A261111.P8007407100756691094

`A261113(A000217(n+5)+6)`
-/

namespace A261111.P8007407100756691094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A000217 (n + 5) + 6).toNat

end

end A261111.P8007407100756691094

/-! ## A261111.P2967242175558103813

`A261113(A133263(n+4)+n+9)`
-/

namespace A261111.P2967242175558103813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A133263 (n + 4) + (n + 9 : ℤ)).toNat

end

end A261111.P2967242175558103813

/-!
# A261112: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010001 00010101 or 01010101.

The programs for A261112, there is no canonical definition to state claims against.
-/

/-! ## A261112.P2040838734212434610

`A261113(A374008(n+1))`
-/

namespace A261112.P2040838734212434610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A374008 (n + 1)).toNat

end

end A261112.P2040838734212434610

/-! ## A261112.P12099642272333107338

`A261113(A167487(n+5))`
-/

namespace A261112.P12099642272333107338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167487 (n + 5)).toNat

end

end A261112.P12099642272333107338

/-! ## A261112.P14821811611802617182

`A261113(A167499(n+5)+2)`
-/

namespace A261112.P14821811611802617182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A167499 (n + 5) + 2).toNat

end

end A261112.P14821811611802617182

/-! ## A261112.P16229150037084086809

`A261113(A000217(n+6)+7)`
-/

namespace A261112.P16229150037084086809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A000217 (n + 6) + 7).toNat

end

end A261112.P16229150037084086809

/-! ## A261112.P4852052257732035611

`A261113(A133263(n+5)+n+11)`
-/

namespace A261112.P4852052257732035611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261113 (A133263 (n + 5) + (n + 11 : ℤ)).toNat

end

end A261112.P4852052257732035611

/-!
# A261115: Expansion of f(x, x) * f(x^4, x^8) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A261115, there is no canonical definition to state claims against.
-/

/-! ## A261115.P11514229269877200291

`(-1)^n*A260110(n)`
-/

namespace A261115.P11514229269877200291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A260110 n

end

end A261115.P11514229269877200291

/-! ## A261115.P10718111266899090273

`A128580(3*n)`
-/

namespace A261115.P10718111266899090273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (3 * n)

end

end A261115.P10718111266899090273

/-! ## A261115.P2149900515255059070

`A129402(3*n)`
-/

namespace A261115.P2149900515255059070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (3 * n)

end

end A261115.P2149900515255059070

/-! ## A261115.P7596650670960685292

`A115660(6*n+1)`
-/

namespace A261115.P7596650670960685292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (6 * n + 1)

end

end A261115.P7596650670960685292

/-! ## A261115.P9759155563342775575

`A128581(6*n+1)`
-/

namespace A261115.P9759155563342775575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (6 * n + 1)

end

end A261115.P9759155563342775575

/-! ## A261115.P14557941267190981689

`A192013(6*n+1)`
-/

namespace A261115.P14557941267190981689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (6 * n + 1)

end

end A261115.P14557941267190981689

/-! ## A261115.P2870102234663641942

`abs(A260110(n))`
-/

namespace A261115.P2870102234663641942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260110 n|

end

end A261115.P2870102234663641942

/-! ## A261115.P14330191312393166939

`gcd(A000038(n), A260110(n))`
-/

namespace A261115.P14330191312393166939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260110 n)

end

end A261115.P14330191312393166939

/-! ## A261115.P17338072892394970068

`lcm(A000034(n), A260110(n))`
-/

namespace A261115.P17338072892394970068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260110 n)

end

end A261115.P17338072892394970068

/-! ## A261115.P6750263988673526574

`A260110(n)*A309873(n+1)`
-/

namespace A261115.P6750263988673526574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260110 n * A309873 (n + 1)

end

end A261115.P6750263988673526574

/-! ## A261115.P641238972487999117

`A263571(2*n)`
-/

namespace A261115.P641238972487999117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 (2 * n)

end

end A261115.P641238972487999117

/-! ## A261115.P8621043507019233928

`A279947(2*n)`
-/

namespace A261115.P8621043507019233928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279947 (2 * n)

end

end A261115.P8621043507019233928

/-! ## A261115.P3969739763211520498

`abs(A134177(3*n))`
-/

namespace A261115.P3969739763211520498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134177 (3 * n)|

end

end A261115.P3969739763211520498

/-! ## A261115.P8558453422135518564

`A258587(4*n)`
-/

namespace A261115.P8558453422135518564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258587 (4 * n)

end

end A261115.P8558453422135518564

/-! ## A261115.P18402855220738575456

`A263548(4*n)`
-/

namespace A261115.P18402855220738575456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263548 (4 * n)

end

end A261115.P18402855220738575456

/-! ## A261115.P1900688550173999823

`A000377(6*n+1)`
-/

namespace A261115.P1900688550173999823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (6 * n + 1)

end

end A261115.P1900688550173999823

/-! ## A261115.P15182172597248522260

`A258590(9*n)`
-/

namespace A261115.P15182172597248522260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258590 (9 * n)

end

end A261115.P15182172597248522260

/-!
# A261116: Pairs of integers (a,b) such a^2 + (a+1)^2 = b^2.

The programs for A261116, the canonical program `A261116.P3902861207062801122` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261116 has offset 1).

The definition of A261116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261116.P3902861207062801122

`7*a(n-2)-7*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=20, a(5)=29`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261116

/-- `7*a(n-2)-7*a(n-4)+a(n-6)` -/
def P3902861207062801122.Spec : Prop :=
  ∀ n, P3902861207062801122.a n = A261116 (n + 1)

theorem P3902861207062801122.correct : P3902861207062801122.Spec := by
  intro n
  simp only [A261116, Nat.add_sub_cancel]

end A261116

/-! ## A261116.P17142826470077740848

`record[A247311(2*n)]-A247311(3*n)`
-/

namespace A261116.P17142826470077740848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A247311 (3 * n)

end

end A261116.P17142826470077740848

namespace A261116

/-- `record[A247311(2*n)]-A247311(3*n)` -/
def P17142826470077740848.Spec : Prop :=
  ∀ n, P17142826470077740848.a n = A261116 (n + 1)

end A261116

/-! ## A261116.P2819848716703651004

`A171842(n+1)-A171842(n*n%2)`
-/

namespace A261116.P2819848716703651004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1) - A171842 (n * (n % 2))

end

end A261116.P2819848716703651004

namespace A261116

/-- `A171842(n+1)-A171842(n*n%2)` -/
def P2819848716703651004.Spec : Prop :=
  ∀ n, P2819848716703651004.a n = A261116 (n + 1)

end A261116

/-! ## A261116.P4707592122470337796

`A171842(n+1)-A171842(A093178(n))`
-/

namespace A261116.P4707592122470337796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1) - A171842 (A093178 n).toNat

end

end A261116.P4707592122470337796

namespace A261116

/-- `A171842(n+1)-A171842(A093178(n))` -/
def P4707592122470337796.Spec : Prop :=
  ∀ n, P4707592122470337796.a n = A261116 (n + 1)

end A261116

/-! ## A261116.P17462805269350599364

`record[Δ[A174504(n)/4]]`
-/

namespace A261116.P17462805269350599364
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174504 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261116.P17462805269350599364

namespace A261116

/-- `record[Δ[A174504(n)/4]]` -/
def P17462805269350599364.Spec : Prop :=
  ∀ n, P17462805269350599364.a n = (A261116 (n + 1) : ℚ)

end A261116

/-!
# A261118: Expansion of psi(x)^2 * psi(-x^3)^2 / (phi(-x^4) * psi(-x^6)) in power of x where phi(), psi() are Ramanujan theta functions.

The programs for A261118, there is no canonical definition to state claims against.
-/

/-! ## A261118.P9155423239003594608

`(-1)^n*A259668(n)`
-/

namespace A261118.P9155423239003594608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A259668 n

end

end A261118.P9155423239003594608

/-! ## A261118.P12613391894282458946

`A129402(2*n)`
-/

namespace A261118.P12613391894282458946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (2 * n)

end

end A261118.P12613391894282458946

/-! ## A261118.P16345853348387904581

`A190615(2*n)`
-/

namespace A261118.P16345853348387904581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (2 * n)

end

end A261118.P16345853348387904581

/-! ## A261118.P14586411974213398264

`A000377(4*n+1)`
-/

namespace A261118.P14586411974213398264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (4 * n + 1)

end

end A261118.P14586411974213398264

/-! ## A261118.P17042699293542349779

`A192013(4*n+1)`
-/

namespace A261118.P17042699293542349779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (4 * n + 1)

end

end A261118.P17042699293542349779

/-! ## A261118.P624401221299546524

`abs(A259668(n))`
-/

namespace A261118.P624401221299546524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259668 n|

end

end A261118.P624401221299546524

/-! ## A261118.P12316682971210301256

`gcd(A000038(n), A259668(n))`
-/

namespace A261118.P12316682971210301256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A259668 n)

end

end A261118.P12316682971210301256

/-! ## A261118.P7782914865181790053

`lcm(A000034(n), A259668(n))`
-/

namespace A261118.P7782914865181790053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A259668 n)

end

end A261118.P7782914865181790053

/-! ## A261118.P11015773648308695529

`abs(A134177(2*n))`
-/

namespace A261118.P11015773648308695529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134177 (2 * n)|

end

end A261118.P11015773648308695529

/-! ## A261118.P14364158085298774749

`A000196(A134177(2*n)²)`
-/

namespace A261118.P14364158085298774749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A134177 (2 * n) ^ 2).toNat

end

end A261118.P14364158085298774749

/-! ## A261118.P8500270817689764499

`A033999(n)*A134177(2*n)`
-/

namespace A261118.P8500270817689764499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A134177 (2 * n)

end

end A261118.P8500270817689764499

/-! ## A261118.P3191139202660615820

`∑{d}[A134177(2*n), A000010(#)]`
-/

namespace A261118.P3191139202660615820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A261118.P3191139202660615820

/-! ## A261118.P5155024524386420198

`abs(A128580(2*n))`
-/

namespace A261118.P5155024524386420198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128580 (2 * n)|

end

end A261118.P5155024524386420198

/-! ## A261118.P18443771130631086042

`A053615(A128580(2*n)²)`
-/

namespace A261118.P18443771130631086042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A128580 (2 * n) ^ 2).toNat

end

end A261118.P18443771130631086042

/-! ## A261118.P10567932420022051596

`A033999(n)*A128580(2*n)`
-/

namespace A261118.P10567932420022051596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A128580 (2 * n)

end

end A261118.P10567932420022051596

/-! ## A261118.P13604605181663891385

`lcm(A020985(n), A128580(2*n))`
-/

namespace A261118.P13604605181663891385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A128580 (2 * n))

end

end A261118.P13604605181663891385

/-! ## A261118.P18191013041174801664

`∑{d}[A128580(2*n), A000010(#)]`
-/

namespace A261118.P18191013041174801664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A261118.P18191013041174801664

/-! ## A261118.P744011109576623014

`A057077(2*n)*A128580(2*n)`
-/

namespace A261118.P744011109576623014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A128580 (2 * n)

end

end A261118.P744011109576623014

/-! ## A261118.P3659582849233134408

`A057077(2*n)*A134177(2*n)`
-/

namespace A261118.P3659582849233134408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A134177 (2 * n)

end

end A261118.P3659582849233134408

/-!
# A261119: Expansion of f(x^2, -x^4) * f(x, x^5)^2 / f(-x^12, -x^12) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A261119, there is no canonical definition to state claims against.
-/

/-! ## A261119.P2526266342493596740

`(-1)^n*A257921(n)`
-/

namespace A261119.P2526266342493596740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257921 n

end

end A261119.P2526266342493596740

/-! ## A261119.P3344443028236295811

`A129402(2*n+1)`
-/

namespace A261119.P3344443028236295811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (2 * n + 1)

end

end A261119.P3344443028236295811

/-! ## A261119.P8548707517831122132

`A261118(3*n+2)`
-/

namespace A261119.P8548707517831122132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261118 (3 * n + 2)

end

end A261119.P8548707517831122132

/-! ## A261119.P17290925523802818178

`A000377(4*n+3)`
-/

namespace A261119.P17290925523802818178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (4 * n + 3)

end

end A261119.P17290925523802818178

/-! ## A261119.P15419869592941943356

`A192013(4*n+3)`
-/

namespace A261119.P15419869592941943356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (4 * n + 3)

end

end A261119.P15419869592941943356

/-! ## A261119.P1411397012586955763

`abs(A257921(n))`
-/

namespace A261119.P1411397012586955763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257921 n|

end

end A261119.P1411397012586955763

/-! ## A261119.P5024325562134920985

`gcd(A000038(n), A257921(n))`
-/

namespace A261119.P5024325562134920985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A257921 n)

end

end A261119.P5024325562134920985

/-! ## A261119.P7201439827398407351

`lcm(A000034(n), A257921(n))`
-/

namespace A261119.P7201439827398407351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A257921 n)

end

end A261119.P7201439827398407351

/-! ## A261119.P11207571842729684792

`A257921(n)*A294461(Δ[or(1, n)])`
-/

namespace A261119.P11207571842729684792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 n * A294461 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A261119.P11207571842729684792

/-! ## A261119.P4214794349515459783

`abs(A134177(Δ[n²]))`
-/

namespace A261119.P4214794349515459783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134177 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A261119.P4214794349515459783

/-! ## A261119.P14880031277612138357

`abs(A190615(Δ[n²]))`
-/

namespace A261119.P14880031277612138357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190615 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A261119.P14880031277612138357

/-! ## A261119.P2554293797959891321

`abs(A128580(2*n+1))`
-/

namespace A261119.P2554293797959891321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128580 (2 * n + 1)|

end

end A261119.P2554293797959891321

/-! ## A261119.P5959303077329372434

`A000196(A134177(2*n+1)²)`
-/

namespace A261119.P5959303077329372434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A134177 (2 * n + 1) ^ 2).toNat

end

end A261119.P5959303077329372434

/-! ## A261119.P13597783080649435824

`A053615(A128580(2*n+1)²)`
-/

namespace A261119.P13597783080649435824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A128580 (2 * n + 1) ^ 2).toNat

end

end A261119.P13597783080649435824

/-! ## A261119.P255532941304847407

`A000196(A190615(2*n+1)²)`
-/

namespace A261119.P255532941304847407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A190615 (2 * n + 1) ^ 2).toNat

end

end A261119.P255532941304847407

/-! ## A261119.P12265753186483857312

`A033999(n)*A134177(2*n+1)`
-/

namespace A261119.P12265753186483857312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A134177 (2 * n + 1)

end

end A261119.P12265753186483857312

/-! ## A261119.P12142879900531329866

`gcd(A130706(n), A134177(2*n+1))`
-/

namespace A261119.P12142879900531329866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A134177 (2 * n + 1))

end

end A261119.P12142879900531329866

/-! ## A261119.P5181240093850027390

`lcm(A020985(n), A128580(2*n+1))`
-/

namespace A261119.P5181240093850027390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A128580 (2 * n + 1))

end

end A261119.P5181240093850027390

/-! ## A261119.P4838820346436618569

`lcm(A057077(n), A190615(2*n+1))`
-/

namespace A261119.P4838820346436618569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A190615 (2 * n + 1))

end

end A261119.P4838820346436618569

/-! ## A261119.P1334995522368824434

`∑{d}[A128580(2*n+1), A000010(#)]`
-/

namespace A261119.P1334995522368824434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A261119.P1334995522368824434

/-!
# A261120: The number of distinct triple points in the set of function values FLSN(m/6/7^n), m in 0, 1, 2... 6*7^n, where FLSN:[0,1] is the "flowsnake" plane filling curve.

The programs for A261120, the canonical program `A261120.P9774166153543247632` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261120 has offset 1).

The definition of A261120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261120.P9774166153543247632

`11*a(n-1)-31*a(n-2)+21*a(n-3)` with `a(0)=2, a(1)=17, a(2)=134`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261120

/-- `11*a(n-1)-31*a(n-2)+21*a(n-3)` -/
def P9774166153543247632.Spec : Prop :=
  ∀ n, P9774166153543247632.a n = A261120 (n + 1)

theorem P9774166153543247632.correct : P9774166153543247632.Spec := by
  intro n
  simp only [A261120, Nat.add_sub_cancel]

end A261120

/-! ## A261120.P7460861827123277310

`(7-7*3^(n+1)+6*7^(n+1))/14`
-/

namespace A261120.P7460861827123277310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 - (7 * 3 ^ (n + 1) : ℤ) + (6 * 7 ^ (n + 1) : ℤ) : ℚ) / 14

end

end A261120.P7460861827123277310

namespace A261120

/-- `(7-7*3^(n+1)+6*7^(n+1))/14` -/
def P7460861827123277310.Spec : Prop :=
  ∀ n, P7460861827123277310.a n = (A261120 (n + 1) : ℚ)

theorem P7460861827123277310.correct : P7460861827123277310.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A261120, Nat.add_sub_cancel, A261120.P7460861827123277310.a, A261120.P9774166153543247632.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A261120, Nat.add_sub_cancel, A261120.P7460861827123277310.a, A261120.P9774166153543247632.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A261120

/-! ## A261120.P14085069294148341400

`A169634(n)-∑[3^n]`
-/

namespace A261120.P14085069294148341400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169634 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A261120.P14085069294148341400

namespace A261120

/-- `A169634(n)-∑[3^n]` -/
def P14085069294148341400.Spec : Prop :=
  ∀ n, P14085069294148341400.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P15525693468342604625

`A198647(n)-A029858(n+1)`
-/

namespace A261120.P15525693468342604625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198647 n - A029858 (n + 1)

end

end A261120.P15525693468342604625

namespace A261120

/-- `A198647(n)-A029858(n+1)` -/
def P15525693468342604625.Spec : Prop :=
  ∀ n, P15525693468342604625.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P13769231447298138843

`Δ[A034494(n)-∑[A003462(n)]]`
-/

namespace A261120.P13769231447298138843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261120.P13769231447298138843

namespace A261120

/-- `Δ[A034494(n)-∑[A003462(n)]]` -/
def P13769231447298138843.Spec : Prop :=
  ∀ n, P13769231447298138843.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P11340707620714107867

`Δ[A034494(n)]-record[A140313(n)]`
-/

namespace A261120.P11340707620714107867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A261120.P11340707620714107867

namespace A261120

/-- `Δ[A034494(n)]-record[A140313(n)]` -/
def P11340707620714107867.Spec : Prop :=
  ∀ n, P11340707620714107867.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P13737335077222985049

`round(A081657(n)+A081657(n)/2)`
-/

namespace A261120.P13737335077222985049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081657 n : ℚ) + (A081657 n : ℚ) / 2)

end

end A261120.P13737335077222985049

namespace A261120

/-- `round(A081657(n)+A081657(n)/2)` -/
def P13737335077222985049.Spec : Prop :=
  ∀ n, P13737335077222985049.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P1874114114853624987

`Δ[A034494(n)]-A003462(n+1)`
-/

namespace A261120.P1874114114853624987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003462 (n + 1)

end

end A261120.P1874114114853624987

namespace A261120

/-- `Δ[A034494(n)]-A003462(n+1)` -/
def P1874114114853624987.Spec : Prop :=
  ∀ n, P1874114114853624987.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P3708207361054953813

`2*A199417(n)-A007051(n+1)`
-/

namespace A261120.P3708207361054953813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199417 n - A007051 (n + 1)

end

end A261120.P3708207361054953813

namespace A261120

/-- `2*A199417(n)-A007051(n+1)` -/
def P3708207361054953813.Spec : Prop :=
  ∀ n, P3708207361054953813.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P3391359685344492952

`A198687(n)-(A198480(n)+A003462(n+1))`
-/

namespace A261120.P3391359685344492952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198687 n - (A198480 n + A003462 (n + 1))

end

end A261120.P3391359685344492952

namespace A261120

/-- `A198687(n)-(A198480(n)+A003462(n+1))` -/
def P3391359685344492952.Spec : Prop :=
  ∀ n, P3391359685344492952.a n = A261120 (n + 1)

end A261120

/-! ## A261120.P11834943909403992821

`A198688(n)-(A198647(n)+A003462(n+1))`
-/

namespace A261120.P11834943909403992821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198688 n - (A198647 n + A003462 (n + 1))

end

end A261120.P11834943909403992821

namespace A261120

/-- `A198688(n)-(A198647(n)+A003462(n+1))` -/
def P11834943909403992821.Spec : Prop :=
  ∀ n, P11834943909403992821.a n = A261120 (n + 1)

end A261120

/-!
# A261121: Number of partitions of n-th primorial into aliquant parts (i.e., parts that do not divide n#).

The programs for A261121, there is no canonical definition to state claims against.
-/

/-! ## A261121.P1982529848392088989

`A098743(A002110(n))`
-/

namespace A261121.P1982529848392088989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098743 (A002110 n).toNat

end

end A261121.P1982529848392088989

/-!
# A261122: Expansion of f(-x) * f(x^4, x^8)^2 / f(-x^3, -x^9) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A261122, there is no canonical definition to state claims against.
-/

/-! ## A261122.P12383584343872181735

`(-1)^floor(n/2)*A190611(n)`
-/

namespace A261122.P12383584343872181735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A190611 n : ℚ)

end

end A261122.P12383584343872181735

/-! ## A261122.P9748049409319827071

`(-1)^(n+floor(n/2))*A000377(n)`
-/

namespace A261122.P9748049409319827071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((n : ℤ) + ⌊(n : ℚ) / 2⌋ : ℤ) * (A000377 n : ℚ)

end

end A261122.P9748049409319827071

/-! ## A261122.P8830188396753506327

`A000377(n)*A087960(n)`
-/

namespace A261122.P8830188396753506327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A087960 n

end

end A261122.P8830188396753506327

/-! ## A261122.P770463818028486643

`abs(A190611(n))*A087960(n)`
-/

namespace A261122.P770463818028486643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190611 n| * A087960 n

end

end A261122.P770463818028486643

/-! ## A261122.P7061865087760646565

`A087960(n)*A192013(char[n^14]+n)`
-/

namespace A261122.P7061865087760646565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A192013 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A261122.P7061865087760646565

/-! ## A261122.P9071290612786215318

`A190611(gcd(2*n, ∑[n]))`
-/

namespace A261122.P9071290612786215318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A261122.P9071290612786215318

/-! ## A261122.P15838335916754888791

`A000377(A005843(n))/A087960(n)`
-/

namespace A261122.P15838335916754888791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 (A005843 n).toNat : ℚ) / (A087960 n : ℚ)

end

end A261122.P15838335916754888791

/-! ## A261122.P6905447600331380655

`A000377(n)*A009001(A002378(n))`
-/

namespace A261122.P6905447600331380655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A009001 (A002378 n).toNat

end

end A261122.P6905447600331380655

/-!
# A261123: a(1) = 2; thereafter, a(n) = smallest prime > a(n-1) and different from gpf(1+Product_{k=1..m}a(k)) for all m < n, where gpf is greatest prime factor.

The programs for A261123, there is no canonical definition to state claims against.
-/

/-! ## A261123.P4214424278850756552

`A000040(lt[A321916(n+1), A137679(n+1)])`
-/

namespace A261123.P4214424278850756552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261123.P4214424278850756552

/-! ## A261123.P3711799055637004515

`A000040(lt[A321932(n+1), A135278(n)])`
-/

namespace A261123.P3711799055637004515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261123.P3711799055637004515

/-! ## A261123.P13760493821610237054

`A000040(lt[A321932(n+1), A201641(n)])`
-/

namespace A261123.P13760493821610237054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261123.P13760493821610237054

/-! ## A261123.P6902608420301389491

`A000040(lt[A321932(n+1), A226167(n+1)])`
-/

namespace A261123.P6902608420301389491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261123.P6902608420301389491

/-!
# A261125: a(n) = (2^(n-1))!*a(n-1) for n>=1, a(0) = 1.

The programs for A261125, the canonical program `A261125.P7409488386761869705` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261125 has offset 0).

The definition of A261125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n-1))!*a(n-1)` (program `A261125.P7409488386761869705`, by `A261125.P7409488386761869705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261125.P7409488386761869705

`(2^(n-1))!*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261125

/-- `(2^(n-1))!*a(n-1)` -/
def P7409488386761869705.Spec : Prop :=
  ∀ n, (P7409488386761869705.a n : ℤ) = A261125 n

theorem P7409488386761869705.correct : P7409488386761869705.Spec := by
  intro n
  simp only [A261125]

end A261125

/-! ## A261125.P9813469450771752027

`∏[floor(2^(n-1))!]`
-/

namespace A261125.P9813469450771752027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A261125.P9813469450771752027

namespace A261125

/-- `∏[floor(2^(n-1))!]` -/
def P9813469450771752027.Spec : Prop :=
  ∀ n, (P9813469450771752027.a n : ℤ) = A261125 n

end A261125

/-! ## A261125.P13456521970900278905

`∏{d}[floor(2^(n-1)), #!]`
-/

namespace A261125.P13456521970900278905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial d

end

end A261125.P13456521970900278905

namespace A261125

/-- `∏{d}[floor(2^(n-1)), #!]` -/
def P13456521970900278905.Spec : Prop :=
  ∀ n, (P13456521970900278905.a n : ℤ) = A261125 n

end A261125

/-!
# A261126: Number of mora in Japanese name of n in 'On' reading. In case there are several spellings, use the shorter one.

The programs for A261126, there is no canonical definition to state claims against.
-/

/-! ## A261126.P2153996909180021620

`A001221(A332835(n+3)+A178488(n+1))`
-/

namespace A261126.P2153996909180021620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332835 (n + 3) + A178488 (n + 1)).toNat

end

end A261126.P2153996909180021620

/-! ## A261126.P10550198975576105318

`A090822(xor(A073453(n+3), A189076(n)))`
-/

namespace A261126.P10550198975576105318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (Int.xor (A073453 (n + 3)) (A189076 n)).toNat

end

end A261126.P10550198975576105318

/-! ## A261126.P3518620213040594611

`A001221(A175480(2*(n+2))+A175460(3*n+2))`
-/

namespace A261126.P3518620213040594611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A175480 (2 * (n + 2)) + A175460 (3 * n + 2)).toNat

end

end A261126.P3518620213040594611

/-! ## A261126.P12195897052580136178

`A124736(A333123(A143007(n))+A124736(n))`
-/

namespace A261126.P12195897052580136178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A333123 (A143007 n).toNat + A124736 n).toNat

end

end A261126.P12195897052580136178

/-! ## A261126.P13722190226597090566

`A044696(A292344(n+1))%4`
-/

namespace A261126.P13722190226597090566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044696 (A292344 (n + 1)).toNat) 4

end

end A261126.P13722190226597090566

/-!
# A261127: Triangular numbers t such that (sum of digits of t) + (product of digits of t) is a triangular number.

The programs for A261127, there is no canonical definition to state claims against.
-/

/-! ## A261127.P11580218230078128325

`eq[A010054(n), A064861(A061762(n))]`
-/

namespace A261127.P11580218230078128325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261127.P11580218230078128325

/-! ## A261127.P2627881830932731173

`eq[A029655(n), A141539(A061762(n))]`
-/

namespace A261127.P2627881830932731173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261127.P2627881830932731173

/-! ## A261127.P8366679745562920068

`eq[A141539(A061762(n)), A193842(n)]`
-/

namespace A261127.P8366679745562920068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (A061762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261127.P8366679745562920068

/-! ## A261127.P2215177301433265979

`eq[A059268(n), A211849(A061762(n)+1)]`
-/

namespace A261127.P2215177301433265979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A061762 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261127.P2215177301433265979

/-! ## A261127.P12542727942507353771

`eq[A215078(A061762(n)), A244125(n)]`
-/

namespace A261127.P12542727942507353771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (A061762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244125 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261127.P12542727942507353771

/-!
# A261128: Cyclotomic polynomial value Phi(7,n!).

The programs for A261128, the canonical program `A261128.P4897034755433582840` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261128 has offset 0).

The definition of A261128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261128.P4897034755433582840

`A053716(n!)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A261128

/-- `A053716(n!)` -/
def P4897034755433582840.Spec : Prop :=
  ∀ n, P4897034755433582840.a n = A261128 n

theorem P4897034755433582840.correct : P4897034755433582840.Spec := by
  intro n
  simp only [A261128]

end A261128

/-! ## A261128.P13981198116056661544

`A053716(∏[round(sqrt(n²+1))])`
-/

namespace A261128.P13981198116056661544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261128.P13981198116056661544

namespace A261128

/-- `A053716(∏[round(sqrt(n²+1))])` -/
def P13981198116056661544.Spec : Prop :=
  ∀ n, P13981198116056661544.a n = A261128 n

end A261128

/-!
# A261129: Highest exponent in prime factorization of the swinging factorial (A056040).

The programs for A261129, there is no canonical definition to state claims against.
-/

/-! ## A261129.P5581281150739774807

`A106487(A106493(2*(n+1))*A106524(n))`
-/

namespace A261129.P5581281150739774807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106487 (A106493 (2 * (n + 1)) * A106524 n).toNat

end

end A261129.P5581281150739774807

/-!
# A261130: a(n) = Product(p prime | n < p <= 2*n).

The programs for A261130, the canonical program `A261130.P777848238383066671` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261130 has offset 0).

The definition of A261130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261130.P777848238383066671

`A055773(2*n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A261130

/-- `A055773(2*n)` -/
def P777848238383066671.Spec : Prop :=
  ∀ n, P777848238383066671.a n = A261130 n

theorem P777848238383066671.correct : P777848238383066671.Spec := by
  intro n
  simp only [A261130]

end A261130

/-! ## A261130.P15225893060602712779

`A068111(n)+char[1]`
-/

namespace A261130.P15225893060602712779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068111 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A261130.P15225893060602712779

namespace A261130

/-- `A068111(n)+char[1]` -/
def P15225893060602712779.Spec : Prop :=
  ∀ n, P15225893060602712779.a n = A261130 n

end A261130

/-! ## A261130.P2648866146104838062

`A212792(record[abs(xor(1, n-2))])`
-/

namespace A261130.P2648866146104838062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261130.P2648866146104838062

namespace A261130

/-- `A212792(record[abs(xor(1, n-2))])` -/
def P2648866146104838062.Spec : Prop :=
  ∀ n, P2648866146104838062.a n = A261130 n

end A261130

/-! ## A261130.P4294544443678808162

`A212792(round(1/acot(n))+n)`
-/

namespace A261130.P4294544443678808162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A261130.P4294544443678808162

namespace A261130

/-- `A212792(round(1/acot(n))+n)` -/
def P4294544443678808162.Spec : Prop :=
  ∀ n, P4294544443678808162.a n = A261130 n

end A261130

/-! ## A261130.P3944981975525677841

`A212792(floor(3/acot(n))-n)`
-/

namespace A261130.P3944981975525677841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A261130.P3944981975525677841

namespace A261130

/-- `A212792(floor(3/acot(n))-n)` -/
def P3944981975525677841.Spec : Prop :=
  ∀ n, P3944981975525677841.a n = A261130 n

end A261130

/-! ## A261130.P2489160352368495561

`A212792(A004277(n))`
-/

namespace A261130.P2489160352368495561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A004277 n).toNat

end

end A261130.P2489160352368495561

namespace A261130

/-- `A212792(A004277(n))` -/
def P2489160352368495561.Spec : Prop :=
  ∀ n, P2489160352368495561.a n = A261130 n

end A261130

/-! ## A261130.P2209345618279091157

`A212792(A053438(n))`
-/

namespace A261130.P2209345618279091157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A053438 n).toNat

end

end A261130.P2209345618279091157

namespace A261130

/-- `A212792(A053438(n))` -/
def P2209345618279091157.Spec : Prop :=
  ∀ n, P2209345618279091157.a n = A261130 n

end A261130

/-! ## A261130.P4447166819386888219

`A212792(A004274(n+1))`
-/

namespace A261130.P4447166819386888219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A004274 (n + 1)).toNat

end

end A261130.P4447166819386888219

namespace A261130

/-- `A212792(A004274(n+1))` -/
def P4447166819386888219.Spec : Prop :=
  ∀ n, P4447166819386888219.a n = A261130 n

end A261130

/-! ## A261130.P6841060668924017748

`A212792(A004275(n+1))`
-/

namespace A261130.P6841060668924017748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A004275 (n + 1)).toNat

end

end A261130.P6841060668924017748

namespace A261130

/-- `A212792(A004275(n+1))` -/
def P6841060668924017748.Spec : Prop :=
  ∀ n, P6841060668924017748.a n = A261130 n

end A261130

/-! ## A261130.P13427320118327222737

`A212792(A004280(n+1))`
-/

namespace A261130.P13427320118327222737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A004280 (n + 1)).toNat

end

end A261130.P13427320118327222737

namespace A261130

/-- `A212792(A004280(n+1))` -/
def P13427320118327222737.Spec : Prop :=
  ∀ n, P13427320118327222737.a n = A261130 n

end A261130

/-! ## A261130.P10363102465663519383

`A212792(A316571(n+1))`
-/

namespace A261130.P10363102465663519383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A316571 (n + 1)).toNat

end

end A261130.P10363102465663519383

namespace A261130

/-- `A212792(A316571(n+1))` -/
def P10363102465663519383.Spec : Prop :=
  ∀ n, P10363102465663519383.a n = A261130 n

end A261130

/-! ## A261130.P6232893125100221454

`A212792(A346301(n+1))`
-/

namespace A261130.P6232893125100221454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A346301 (n + 1)).toNat

end

end A261130.P6232893125100221454

namespace A261130

/-- `A212792(A346301(n+1))` -/
def P6232893125100221454.Spec : Prop :=
  ∀ n, P6232893125100221454.a n = A261130 n

end A261130

/-! ## A261130.P9299819867184401399

`A212792(A377994(n+1))`
-/

namespace A261130.P9299819867184401399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (A377994 (n + 1)).toNat

end

end A261130.P9299819867184401399

namespace A261130

/-- `A212792(A377994(n+1))` -/
def P9299819867184401399.Spec : Prop :=
  ∀ n, P9299819867184401399.a n = A261130 n

end A261130

/-! ## A261130.P15407079671769444469

`A068111(n)*A373565(n)`
-/

namespace A261130.P15407079671769444469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068111 n * A373565 n

end

end A261130.P15407079671769444469

namespace A261130

/-- `A068111(n)*A373565(n)` -/
def P15407079671769444469.Spec : Prop :=
  ∀ n, P15407079671769444469.a n = A261130 n

end A261130

/-! ## A261130.P7984382512390922172

`A089026(n+1)*A144186(n)`
-/

namespace A261130.P7984382512390922172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A144186 n

end

end A261130.P7984382512390922172

namespace A261130

/-- `A089026(n+1)*A144186(n)` -/
def P7984382512390922172.Spec : Prop :=
  ∀ n, P7984382512390922172.a n = A261130 n

end A261130

/-! ## A261130.P13097187943086581990

`lcm(A144186(n), A159477(n+1))`
-/

namespace A261130.P13097187943086581990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144186 n) (A159477 (n + 1))

end

end A261130.P13097187943086581990

namespace A261130

/-- `lcm(A144186(n), A159477(n+1))` -/
def P13097187943086581990.Spec : Prop :=
  ∀ n, (P13097187943086581990.a n : ℤ) = A261130 n

end A261130

/-! ## A261130.P6141944811320032309

`A034386(n+1)/A034386(n)*A144186(n)`
-/

namespace A261130.P6141944811320032309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 n : ℚ) * (A144186 n : ℚ)

end

end A261130.P6141944811320032309

namespace A261130

/-- `A034386(n+1)/A034386(n)*A144186(n)` -/
def P6141944811320032309.Spec : Prop :=
  ∀ n, P6141944811320032309.a n = (A261130 n : ℚ)

end A261130

/-! ## A261130.P10397572725374816260

`gcd(A073838(n+1), A093880(n))`
-/

namespace A261130.P10397572725374816260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073838 (n + 1)) (A093880 n)

end

end A261130.P10397572725374816260

namespace A261130

/-- `gcd(A073838(n+1), A093880(n))` -/
def P10397572725374816260.Spec : Prop :=
  ∀ n, (P10397572725374816260.a n : ℤ) = A261130 n

end A261130

/-! ## A261130.P14234526155255481489

`A000984(n)/A263931(n)`
-/

namespace A261130.P14234526155255481489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A263931 n : ℚ)

end

end A261130.P14234526155255481489

namespace A261130

/-- `A000984(n)/A263931(n)` -/
def P14234526155255481489.Spec : Prop :=
  ∀ n, P14234526155255481489.a n = (A261130 n : ℚ)

end A261130

/-! ## A261130.P7134721813766138002

`A126930(2*n)/A182923(2*n)`
-/

namespace A261130.P7134721813766138002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126930 (2 * n) : ℚ) / (A182923 (2 * n) : ℚ)

end

end A261130.P7134721813766138002

namespace A261130

/-- `A126930(2*n)/A182923(2*n)` -/
def P7134721813766138002.Spec : Prop :=
  ∀ n, P7134721813766138002.a n = (A261130 n : ℚ)

end A261130

/-!
# A261131: Number of ways to write n as the sum of 3 positive palindromes.

The programs for A261131, there is no canonical definition to state claims against.
-/

/-! ## A261131.P6417154184311232275

`A261132(n)-A260254(n)`
-/

namespace A261131.P6417154184311232275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - A260254 n

end

end A261131.P6417154184311232275

/-! ## A261131.P2254724389041759864

`A261132(n)-(A319468(n)+A136522(n))`
-/

namespace A261131.P2254724389041759864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + A136522 n)

end

end A261131.P2254724389041759864

/-! ## A261131.P4076042576644496714

`A261132(n)-(A319468(n)+char[A020485(n)])`
-/

namespace A261131.P4076042576644496714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A261131.P4076042576644496714

/-! ## A261131.P15922911833806136184

`A261132(n)-(A319468(n)+char[A047813(n)])`
-/

namespace A261131.P15922911833806136184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A261131.P15922911833806136184

/-! ## A261131.P15388592142646800546

`A261132(n)-(A319468(n)+char[A082216(n)])`
-/

namespace A261131.P15388592142646800546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A261131.P15388592142646800546

/-! ## A261131.P12952561205413594616

`A261132(n)-(A319468(n)+char[A261423(n)])`
-/

namespace A261131.P12952561205413594616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A261131.P12952561205413594616

/-! ## A261131.P1720870870634596687

`A261132(n)-(A319468(n)+char[A265525(n)])`
-/

namespace A261131.P1720870870634596687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A261131.P1720870870634596687

/-! ## A261131.P5917242280036642258

`A261132(n)-(A319468(n)+char[A002113(n+1)])`
-/

namespace A261131.P5917242280036642258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A261131.P5917242280036642258

/-! ## A261131.P13916252918063281903

`A261132(n)-(A319468(n)+A000007(A338827(n)))`
-/

namespace A261131.P13916252918063281903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - (A319468 n + A000007 (A338827 n).toNat)

end

end A261131.P13916252918063281903

/-! ## A261131.P5292064595951389771

`A319453(∑[n]+3)-char[1]`
-/

namespace A261131.P5292064595951389771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A261131.P5292064595951389771

/-! ## A261131.P16816484926369587814

`A319453(A152950(n+1)-char[1])`
-/

namespace A261131.P16816484926369587814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A152950 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A261131.P16816484926369587814

/-! ## A261131.P10339868863439997575

`A060576(n)*A319453(∑[n]+3)`
-/

namespace A261131.P10339868863439997575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A319453 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A261131.P10339868863439997575

/-! ## A261131.P4654538836453577139

`A319453(∑[n]+3)%A000041(n)`
-/

namespace A261131.P4654538836453577139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319453 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A000041 n)

end

end A261131.P4654538836453577139

/-! ## A261131.P6085135874296535493

`A319453(A000217(A233583(n+1))+3)`
-/

namespace A261131.P6085135874296535493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A000217 (A233583 (n + 1)).toNat + 3).toNat

end

end A261131.P6085135874296535493

/-! ## A261131.P4126870904818942977

`A319453(A034856(n+1)-A004275(n))`
-/

namespace A261131.P4126870904818942977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A034856 (n + 1) - A004275 n).toNat

end

end A261131.P4126870904818942977

/-! ## A261131.P3224833980447394450

`A319453(record[A038722(A101881(n))])`
-/

namespace A261131.P3224833980447394450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261131.P3224833980447394450

/-!
# A261132: Number of ways to write n as the sum u+v+w of three palindromes (from A002113) with 0 <= u <= v <= w.

The programs for A261132, there is no canonical definition to state claims against.
-/

/-! ## A261132.P13015113391425626431

`A261131(n)+A260254(n)`
-/

namespace A261132.P13015113391425626431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261131 n + A260254 n

end

end A261132.P13015113391425626431

/-! ## A261132.P5319438508792690579

`A136522(n)+A319468(n)+A261131(n)`
-/

namespace A261132.P5319438508792690579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n + (A319468 n + A261131 n)

end

end A261132.P5319438508792690579

/-! ## A261132.P15401859203367556144

`A260254(n)-A260196(n)*A261131(n)`
-/

namespace A261132.P15401859203367556144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - A260196 n * A261131 n

end

end A261132.P15401859203367556144

/-! ## A261132.P17683467356677666393

`char[A020485(n)]+A319468(n)+A261131(n)`
-/

namespace A261132.P17683467356677666393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A319468 n + A261131 n)

end

end A261132.P17683467356677666393

/-! ## A261132.P13407069323705722337

`char[A082216(n)]+A319468(n)+A261131(n)`
-/

namespace A261132.P13407069323705722337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A319468 n + A261131 n)

end

end A261132.P13407069323705722337

/-! ## A261132.P16606174118388963967

`A261131(n)+A319468(n)+char[A261423(n)]`
-/

namespace A261132.P16606174118388963967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261131 n + (A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A261132.P16606174118388963967

/-!
# A261133: a(n) = Max{k from {1..n} | T(n,k) = A049831(n)}, where T(n,k) is the triangle defined at A049828.

The programs for A261133, there is no canonical definition to state claims against.
-/

/-! ## A261133.P9518688612158661772

`A000196(A340944(n)+A024403(n+1))`
-/

namespace A261133.P9518688612158661772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A340944 n + A024403 (n + 1)).toNat

end

end A261133.P9518688612158661772

/-! ## A261133.P13410503586215122710

`A036042(∑[A000009(n)-A008615(n)])`
-/

namespace A261133.P13410503586215122710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261133.P13410503586215122710

/-! ## A261133.P149267486988740347

`A048766(∑[A175283(n+1)])`
-/

namespace A261133.P149267486988740347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261133.P149267486988740347

/-! ## A261133.P14067551983040193481

`A048766(∑[p?[A175282(n+1)]])`
-/

namespace A261133.P14067551983040193481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261133.P14067551983040193481

/-! ## A261133.P2565677124797766687

`A085423(A329703(n+1))`
-/

namespace A261133.P2565677124797766687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A329703 (n + 1)).toNat

end

end A261133.P2565677124797766687

/-!
# A261134: Number of partitions of subsets s of {1,...,n}, where all integers belonging to a run of consecutive members of s are required to be in different parts.

The programs for A261134, there is no canonical definition to state claims against.
-/

/-! ## A261134.P11943144125460512651

`A026898(n)-A180649(A178381(n))`
-/

namespace A261134.P11943144125460512651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n - A180649 (A178381 n).toNat

end

end A261134.P11943144125460512651

/-! ## A261134.P9851518238779599568

`A117419(n)-val(A360678(A309780(n+1))+1, 2)`
-/

namespace A261134.P9851518238779599568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117419 n - (SequenceMachineLib.valuation (A360678 (A309780 (n + 1)).toNat + 1).toNat 2 : ℤ)

end

end A261134.P9851518238779599568

/-!
# A261136: Primes p such that prime(p)-p+1 = prime(q) for some prime q.

The programs for A261136, there is no canonical definition to state claims against.
-/

/-! ## A261136.P7113776363102115111

`p?[A049084(A078782(n+1)-A010051(n+1))]`
-/

namespace A261136.P7113776363102115111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A078782 (n + 1) - A010051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261136.P7113776363102115111

/-!
# A261137: Number of set partitions B'_t(n) of {1,2,...,t} into at most n parts, so that no part contains both 1 and t, or both i and i+1 with 1 <= i < t; triangle B'_t(n), t>=0, 0<=n<=t, read by rows.

The programs for A261137, there is no canonical definition to state claims against.
-/

/-! ## A261137.P6650048356928863775

`A000045(A261139(n)*A266493(n+1))%6`
-/

namespace A261137.P6650048356928863775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A261139 n * A266493 (n + 1)).toNat) 6

end

end A261137.P6650048356928863775

/-! ## A261137.P3593254667950437378

`A178692(A156582(n)-floor(1/(γ-n)))`
-/

namespace A261137.P3593254667950437378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A156582 n - ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋).toNat

end

end A261137.P3593254667950437378

/-! ## A261137.P2853999934917715540

`A319951(A261139(n)*A266493(n+1))`
-/

namespace A261137.P2853999934917715540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A261139 n * A266493 (n + 1)).toNat

end

end A261137.P2853999934917715540

/-! ## A261137.P16998100649988073742

`A081603(A051870(n+2)*A261139(n))`
-/

namespace A261137.P16998100649988073742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A051870 (n + 2) * A261139 n).toNat

end

end A261137.P16998100649988073742

/-! ## A261137.P11180729707008172889

`A234954(A375185(n))`
-/

namespace A261137.P11180729707008172889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234954 (A375185 n).toNat

end

end A261137.P11180729707008172889

/-!
# A261139: S'_t(n) is the number of set partitions of {1,2,...,t} into exactly n parts such that no part contains both 1 and t or both i and i+1 for some i with 1 <= i < t; triangle S'_t(n), t >= 0, 0 <= n <= t, read by rows.

The programs for A261139, there is no canonical definition to state claims against.
-/

/-! ## A261139.P17096528107920158256

`A105794(n)%(A261137(n)+1)`
-/

namespace A261139.P17096528107920158256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105794 n) (A261137 n + 1)

end

end A261139.P17096528107920158256

/-! ## A261139.P10572056273739945623

`A105794(n)%A000124(A261137(n))`
-/

namespace A261139.P10572056273739945623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105794 n) (A000124 (A261137 n).toNat)

end

end A261139.P10572056273739945623

/-! ## A261139.P9016942284132084517

`A195120(A320606(n+1))%A195079(3*n+4)`
-/

namespace A261139.P9016942284132084517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195120 (A320606 (n + 1)).toNat) (A195079 (3 * n + 4))

end

end A261139.P9016942284132084517

/-! ## A261139.P16539158777890908873

`A187759(4^A261137(n))`
-/

namespace A261139.P16539158777890908873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A261137 n : ℤ))).toNat

end

end A261139.P16539158777890908873

/-! ## A261139.P2184376345288797637

`A025426(A339485(n+2))`
-/

namespace A261139.P2184376345288797637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A339485 (n + 2)).toNat

end

end A261139.P2184376345288797637

/-!
# A261141: Positive integers n that can be expressed as a product of Jacobsthal numbers (A001045), not necessarily distinct.

The programs for A261141, there is no canonical definition to state claims against.
-/

/-! ## A261141.P11844912977692900283

`eq[char[A071053(n)], A057427(3*n+2)]`
-/

namespace A261141.P11844912977692900283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A261141.P11844912977692900283

/-! ## A261141.P14535884566206867886

`lt[A135528(3*n+2), char[A071053(n)]]`
-/

namespace A261141.P14535884566206867886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261141.P14535884566206867886

/-! ## A261141.P11693138114306949492

`lt[A027656(3*n+4), char[A071053(n)]]`
-/

namespace A261141.P11693138114306949492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261141.P11693138114306949492

/-! ## A261141.P17092154745516120150

`eq[char[A071053(n)], A038500(3*n+5)]`
-/

namespace A261141.P17092154745516120150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A261141.P17092154745516120150

/-! ## A261141.P5999302776481129324

`eq[char[A071053(n)], A055396(3*n+5)]`
-/

namespace A261141.P5999302776481129324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A261141.P5999302776481129324

/-!
# A261142: Numbers n such that n, p=prime(n) and q=prime(p) have the same sum of digits.

The programs for A261142, there is no canonical definition to state claims against.
-/

/-! ## A261142.P1352572993890679925

`A000720(∩[A033548(n+1), A033549(n+1)])`
-/

namespace A261142.P1352572993890679925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A261142.P1352572993890679925

/-!
# A261143: a(n) = H_n(1,2) where H_n is the n-th hyperoperator.

The programs for A261143, the canonical program `A261143.P11586501370884355927` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261143 has offset 0).

The definition of A261143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261143.P11586501370884355927

`ceil(31/record[or(11, n)])`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261143

/-- `ceil(31/record[or(11, n)])` -/
def P11586501370884355927.Spec : Prop :=
  ∀ n, P11586501370884355927.a n = A261143 n

theorem P11586501370884355927.correct : P11586501370884355927.Spec := by
  intro n
  simp only [A261143]

end A261143

/-!
# A261144: Irregular triangle of numbers that are squarefree and smooth (row n contains squarefree p-smooth numbers, where p is the n-th prime).

The programs for A261144, there is no canonical definition to state claims against.
-/

/-! ## A261144.P2748868868421342776

`A339195(n+2)/A006530(A339195(n+2))`
-/

namespace A261144.P2748868868421342776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339195 (n + 2) : ℚ) / (A006530 (A339195 (n + 2)).toNat : ℚ)

end

end A261144.P2748868868421342776

/-! ## A261144.P17859323426621849518

`A051119(A339195(n+2))`
-/

namespace A261144.P17859323426621849518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A339195 (n + 2)).toNat

end

end A261144.P17859323426621849518

/-! ## A261144.P9604600995348973580

`A019565(A294648(n+1)%A094142(3*n+1))`
-/

namespace A261144.P9604600995348973580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.tmod (A294648 (n + 1)) (A094142 (3 * n + 1))).toNat

end

end A261144.P9604600995348973580

/-! ## A261144.P13762289119914005637

`A019565(A294648(n+1))%A209642(A000079(n))`
-/

namespace A261144.P13762289119914005637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 (A294648 (n + 1)).toNat) (A209642 (A000079 n).toNat)

end

end A261144.P13762289119914005637

/-!
# A261148: Prime-Indexed Primes (PIPs) k such that the sum of all PIPs <= k is a prime.

The programs for A261148, there is no canonical definition to state claims against.
-/

/-! ## A261148.P10485443564610182066

`A006450(A109790(n+1))`
-/

namespace A261148.P10485443564610182066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A109790 (n + 1)).toNat

end

end A261148.P10485443564610182066

/-! ## A261148.P15160125631777229869

`A175247(A109790(n+1)+1)`
-/

namespace A261148.P15160125631777229869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A109790 (n + 1) + 1).toNat

end

end A261148.P15160125631777229869

/-! ## A261148.P18272398206196317757

`p?[A001222(A083186(n+1))*A006450(n+1)]`
-/

namespace A261148.P18272398206196317757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083186 (n + 1)).toNat * A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261148.P18272398206196317757

/-! ## A261148.P3983826922533151000

`p?[(A262021(n+1)+1+n)*A001222(A083186(n+1))]`
-/

namespace A261148.P3983826922533151000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262021 (n + 1) + 1 + (n : ℤ)) * A001222 (A083186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261148.P3983826922533151000

/-!
# A261153: a(n) is the maximum number of distinct primes whose sum is n.

The programs for A261153, there is no canonical definition to state claims against.
-/

/-! ## A261153.P2806670865158934630

`and(31, A024936(n))%31`
-/

namespace A261153.P2806670865158934630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 31 (A024936 n)) 31

end

end A261153.P2806670865158934630

/-! ## A261153.P17259158500062630197

`A235049(A024936(n)+1)`
-/

namespace A261153.P17259158500062630197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A024936 n + 1).toNat

end

end A261153.P17259158500062630197

/-! ## A261153.P17191350997826547533

`A289207(A024936(n)+2)`
-/

namespace A261153.P17191350997826547533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A024936 n + 2).toNat

end

end A261153.P17191350997826547533

/-! ## A261153.P2337729445961741052

`A097428(A024936(n)+3)`
-/

namespace A261153.P2337729445961741052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097428 (A024936 n + 3).toNat

end

end A261153.P2337729445961741052

/-! ## A261153.P9719056920403152524

`A063278(A024936(n)+4)`
-/

namespace A261153.P9719056920403152524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (A024936 n + 4).toNat

end

end A261153.P9719056920403152524

/-! ## A261153.P6023368972597281500

`A024936(n)%A051720(n)`
-/

namespace A261153.P6023368972597281500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024936 n) (A051720 n)

end

end A261153.P6023368972597281500

/-! ## A261153.P10492724063980025122

`A001222(ceil(2^A024936(n)))`
-/

namespace A261153.P10492724063980025122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(2 : ℚ) ^ (A024936 n : ℤ)⌉.toNat

end

end A261153.P10492724063980025122

/-! ## A261153.P12452646378984996901

`A001222(round(2^A024936(n)))`
-/

namespace A261153.P12452646378984996901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A024936 n : ℤ))).toNat

end

end A261153.P12452646378984996901

/-! ## A261153.P13201954703222965628

`A000005(round(2^A024936(n)))-1`
-/

namespace A261153.P13201954703222965628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A024936 n : ℤ))).toNat - 1

end

end A261153.P13201954703222965628

/-! ## A261153.P10302245361058842783

`∑{d}[ceil(2^A024936(n)), A006530(#)+n]%(n+1)`
-/

namespace A261153.P10302245361058842783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A024936 n : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, (A006530 d + (n : ℤ))) (n + 1 : ℤ)

end

end A261153.P10302245361058842783

/-!
# A261154: Expansion of psi(q^6) * f(-q^12) / (psi(-q) * psi(q^9)) in powers of q where psi(), f() are Ramanujan theta functions.

The programs for A261154, there is no canonical definition to state claims against.
-/

/-! ## A261154.P5678316055600963908

`ceil(A261156(n)/2)`
-/

namespace A261154.P5678316055600963908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261156 n : ℚ) / 2⌉

end

end A261154.P5678316055600963908

/-! ## A261154.P6531437675862498691

`lcm(2, A260215(n))/2`
-/

namespace A261154.P6531437675862498691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A260215 n) : ℚ) / 2

end

end A261154.P6531437675862498691

/-! ## A261154.P10558315674340507392

`A233693(abs(1-n)+1)`
-/

namespace A261154.P10558315674340507392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (|1 - (n : ℤ)| + 1).toNat

end

end A261154.P10558315674340507392

/-! ## A261154.P11899608478457808669

`A260215(n)/A280560(n)`
-/

namespace A261154.P11899608478457808669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 n : ℚ) / (A280560 n : ℚ)

end

end A261154.P11899608478457808669

/-! ## A261154.P17129879324452756590

`A233693(n)+A034419(a(A001221(n)))` with `a(0)=1`
-/

namespace A261154.P17129879324452756590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233693 n + A034419 (a (A001221 n).toNat).toNat

end

end A261154.P17129879324452756590

/-! ## A261154.P7898926544460969185

`a(A008683(A022144(n)))*A233693(n)` with `a(0)=1`
-/

namespace A261154.P7898926544460969185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A008683 (A022144 n).toNat).toNat * A233693 n

end

end A261154.P7898926544460969185

/-! ## A261154.P6486229741912974714

`A261156(n)/A000122(n²)`
-/

namespace A261154.P6486229741912974714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A261154.P6486229741912974714

/-! ## A261154.P4722574078495928091

`A261156(n)/A000005(A241082(n+1))`
-/

namespace A261154.P4722574078495928091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 n : ℚ) / (A000005 (A241082 (n + 1)).toNat : ℚ)

end

end A261154.P4722574078495928091

/-! ## A261154.P9050294967746389505

`A273943(A261156(n))`
-/

namespace A261154.P9050294967746389505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A261156 n).toNat

end

end A261154.P9050294967746389505

/-!
# A261155: The highest rugby (union) score that can be made in n or fewer ways.

The programs for A261155, there is no canonical definition to state claims against.
-/

/-! ## A261155.P9518346582765593845

`A211302(A001951(2*n+1))+2*n`
-/

namespace A261155.P9518346582765593845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211302 (A001951 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A261155.P9518346582765593845

/-! ## A261155.P12574857860374538608

`A004221(A076292(n+1)+A076276(2*(n+1)))`
-/

namespace A261155.P12574857860374538608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (A076292 (n + 1) + A076276 (2 * (n + 1))).toNat

end

end A261155.P12574857860374538608

/-! ## A261155.P5823474210421288414

`A004219(A000041(3*(n+1))+n*Δ[n²])`
-/

namespace A261155.P5823474210421288414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (A000041 (3 * (n + 1)) + (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A261155.P5823474210421288414

/-! ## A261155.P11741331250739083254

`A056556(A163654(n+1)*A313769(n))`
-/

namespace A261155.P11741331250739083254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A163654 (n + 1) * A313769 n).toNat

end

end A261155.P11741331250739083254

/-! ## A261155.P17447634955503754449

`A004219(A014105(n)+A000041(3*(n+1)))`
-/

namespace A261155.P17447634955503754449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (A014105 n + A000041 (3 * (n + 1))).toNat

end

end A261155.P17447634955503754449

/-!
# A261156: Expansion of chi(q) * chi(-q^9) / (chi(-q) * chi(q^9)) in powers of q where chi() is a Ramanujan theta function.

The programs for A261156, there is no canonical definition to state claims against.
-/

/-! ## A261156.P14370842982155424747

`(-1)^n*A260215(n)`
-/

namespace A261156.P14370842982155424747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A260215 n

end

end A261156.P14370842982155424747

/-! ## A261156.P14193444341326073451

`abs(A260215(n))`
-/

namespace A261156.P14193444341326073451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260215 n|

end

end A261156.P14193444341326073451

/-! ## A261156.P12349766846341814982

`gcd(A000038(n), A260215(n))`
-/

namespace A261156.P12349766846341814982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260215 n)

end

end A261156.P12349766846341814982

/-! ## A261156.P6269672099419999385

`lcm(A000034(n), A260215(n))`
-/

namespace A261156.P6269672099419999385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260215 n)

end

end A261156.P6269672099419999385

/-! ## A261156.P14659963943807905701

`(2-A010051(2*(n+1)))*A261154(n)`
-/

namespace A261156.P14659963943807905701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010051 (2 * (n + 1))) * A261154 n

end

end A261156.P14659963943807905701

/-! ## A261156.P16098171978727109204

`A020639(A000010(n+2))*A261154(n)`
-/

namespace A261156.P16098171978727109204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A261154 n

end

end A261156.P16098171978727109204

/-! ## A261156.P10980214070175564205

`A261154(n)*A280560(2*n)`
-/

namespace A261156.P10980214070175564205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 n * A280560 (2 * n)

end

end A261156.P10980214070175564205

/-! ## A261156.P15454385872985496533

`A036453(2*n+1)*A261154(n)`
-/

namespace A261156.P15454385872985496533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A261154 n

end

end A261156.P15454385872985496533

/-! ## A261156.P2562177066053183814

`A260215(n)/A261325(n)*A261446(n)`
-/

namespace A261156.P2562177066053183814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 n : ℚ) / (A261325 n : ℚ) * (A261446 n : ℚ)

end

end A261156.P2562177066053183814

/-! ## A261156.P5701694228023832612

`A260215(n)*A260237(A260233(3*(n+2)))`
-/

namespace A261156.P5701694228023832612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260215 n * A260237 (A260233 (3 * (n + 2))).toNat

end

end A261156.P5701694228023832612

/-! ## A261156.P10988552177109361740

`A261154(n)+A261154(n)%A124124(n+1)`
-/

namespace A261156.P10988552177109361740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 n + Int.tmod (A261154 n) (A124124 (n + 1))

end

end A261156.P10988552177109361740

/-! ## A261156.P5356275696333364403

`A000122(n²)*A261154(n)`
-/

namespace A261156.P5356275696333364403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A261154 n

end

end A261156.P5356275696333364403

/-!
# A261170: Number of decimal digits of A260871(n), where A260871 lists primes whose base-b representation is the concatenation of the base-b representations of (1, 2, ..., k, k-1, ..., 1).

The programs for A261170, there is no canonical definition to state claims against.
-/

/-! ## A261170.P17178981129046465415

`lt[A000005(A000070(n)-A000041(n)+1), 3]+2`
-/

namespace A261170.P17178981129046465415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000070 n - A000041 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A261170.P17178981129046465415

/-! ## A261170.P9443028017164622071

`eq[A001965(n), A393258(n+1)]`
-/

namespace A261170.P9443028017164622071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261170.P9443028017164622071

/-! ## A261170.P10396731203935108518

`A108380(A108351(n))+A108378(n+1)`
-/

namespace A261170.P10396731203935108518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108380 (A108351 n).toNat + A108378 (n + 1)

end

end A261170.P10396731203935108518

/-! ## A261170.P14734083976335112047

`A333382(A238686(n))+A099088(n+1)`
-/

namespace A261170.P14734083976335112047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A238686 n).toNat + A099088 (n + 1)

end

end A261170.P14734083976335112047

/-! ## A261170.P2334552568257973411

`A072411(A393323(2*(n+1))+2)+A000029(n)`
-/

namespace A261170.P2334552568257973411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A393323 (2 * (n + 1)) + 2).toNat + A000029 n

end

end A261170.P2334552568257973411

/-!
# A261173: Table read by antidiagonals: T(n,k) = smallest prime p containing only digits 0 and 1 with n 0's and k 1's, or 0 if no such p exists.

The programs for A261173, there is no canonical definition to state claims against.
-/

/-! ## A261173.P11859274332488672875

`A036987(A073877(n+1))*A260266(n+1)`
-/

namespace A261173.P11859274332488672875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A073877 (n + 1)).toNat * A260266 (n + 1)

end

end A261173.P11859274332488672875

/-! ## A261173.P15971329804150103817

`C(A260266(n+1), A260297(A260287(n+1)))`
-/

namespace A261173.P15971329804150103817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260266 (n + 1)).toNat (A260297 (A260287 (n + 1)).toNat).toNat

end

end A261173.P15971329804150103817

/-! ## A261173.P1062264496173045567

`A168586(gcd(A029837(2*(n+2)), A123626(n+5)))`
-/

namespace A261173.P1062264496173045567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168586 (Int.gcd (A029837 (2 * (n + 2))) (A123626 (n + 5)))

end

end A261173.P1062264496173045567

/-!
# A261174: Number of multigraphs on 4 unlabeled nodes with n edges where the edges can be of two colors.

The programs for A261174, there is no canonical definition to state claims against.
-/

/-! ## A261174.P7909388155391931814

`A350799(A084264(n))`
-/

namespace A261174.P7909388155391931814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A084264 n).toNat

end

end A261174.P7909388155391931814

/-! ## A261174.P16896552409293981346

`A058809(n)+A001227(A001037(3*n+1))`
-/

namespace A261174.P16896552409293981346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058809 n + A001227 (A001037 (3 * n + 1)).toNat

end

end A261174.P16896552409293981346

/-!
# A261175: Number of digits of Hyperfactorial(n).

The programs for A261175, there is no canonical definition to state claims against.
-/

/-! ## A261175.P10032018385128860652

`∑[A255121(A182894(n))]`
-/

namespace A261175.P10032018385128860652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (A182894 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261175.P10032018385128860652

/-! ## A261175.P60363253870269217

`A071521(ceil(Δ[A000081(n+2)]/5))`
-/

namespace A261175.P60363253870269217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 ⌈(f1 (n + 1) - f1 n : ℚ) / 5⌉.toNat

end

end A261175.P60363253870269217

/-! ## A261175.P16781004501412539502

`A259899(A286894(C(n, 2)+2))`
-/

namespace A261175.P16781004501412539502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A286894 (Nat.choose n 2 + 2)).toNat

end

end A261175.P16781004501412539502

/-! ## A261175.P10226130197916419564

`A353863(n)+A200919(n+1)`
-/

namespace A261175.P10226130197916419564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353863 n + A200919 (n + 1)

end

end A261175.P10226130197916419564

/-! ## A261175.P14485362098693764168

`A069916(n)-A091247(A094790(n+1))`
-/

namespace A261175.P14485362098693764168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069916 n - A091247 (A094790 (n + 1)).toNat

end

end A261175.P14485362098693764168

/-!
# A261178: Expansion of exp(gamma) in base 2.

The programs for A261178, the canonical program `A261178.P6662381350320823875` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261178 has offset 1).

The definition of A261178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261178.P6662381350320823875

`(ceil(2^n*exp(γ))-1)%2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261178

/-- `(ceil(2^n*exp(γ))-1)%2` -/
def P6662381350320823875.Spec : Prop :=
  ∀ n, P6662381350320823875.a n = A261178 (n + 1)

theorem P6662381350320823875.correct : P6662381350320823875.Spec := by
  intro n
  simp only [A261178, Nat.add_sub_cancel]

end A261178

/-! ## A261178.P5238817622852376896

`sqrt(and(1, 27*floor(2^n*exp(γ))))`
-/

namespace A261178.P5238817622852376896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 1 (27 * ⌊(2 ^ n : ℝ) * Real.exp Real.eulerMascheroniConstant⌋) : ℝ)

end

end A261178.P5238817622852376896

namespace A261178

/-- `sqrt(and(1, 27*floor(2^n*exp(γ))))` -/
def P5238817622852376896.Spec : Prop :=
  ∀ n, P5238817622852376896.a n = (A261178 (n + 1) : ℝ)

end A261178

/-! ## A261178.P12923907583635613134

`A361897(A359041(n)+A240671(n))`
-/

namespace A261178.P12923907583635613134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361897 (A359041 n + A240671 n).toNat

end

end A261178.P12923907583635613134

namespace A261178

/-- `A361897(A359041(n)+A240671(n))` -/
def P12923907583635613134.Spec : Prop :=
  ∀ n, P12923907583635613134.a n = A261178 (n + 1)

end A261178

/-!
# A261179: a(n) is the prime(n)-th term of Stern-Brocot sequence, A002487.

The programs for A261179, the canonical program `A261179.P18166660369402713705` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261179 has offset 1).

The definition of A261179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002487, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261179.P18166660369402713705

`A002487(A000040(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261179

/-- `A002487(A000040(n+1))` -/
def P18166660369402713705.Spec : Prop :=
  ∀ n, P18166660369402713705.a n = A261179 (n + 1)

theorem P18166660369402713705.correct : P18166660369402713705.Spec := by
  intro n
  simp only [A261179, Nat.add_sub_cancel]

end A261179

/-! ## A261179.P11527147758188070522

`A007306(A111333(n+1))`
-/

namespace A261179.P11527147758188070522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A111333 (n + 1)).toNat

end

end A261179.P11527147758188070522

namespace A261179

/-- `A007306(A111333(n+1))` -/
def P11527147758188070522.Spec : Prop :=
  ∀ n, P11527147758188070522.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P10689865467733178587

`A002487(p?[comp[n²]])`
-/

namespace A261179.P10689865467733178587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A261179.P10689865467733178587

namespace A261179

/-- `A002487(p?[comp[n²]])` -/
def P10689865467733178587.Spec : Prop :=
  ∀ n, P10689865467733178587.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P9858754755256547219

`A057432(p?[abs(xor(n, -2))])`
-/

namespace A261179.P9858754755256547219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261179.P9858754755256547219

namespace A261179

/-- `A057432(p?[abs(xor(n, -2))])` -/
def P9858754755256547219.Spec : Prop :=
  ∀ n, P9858754755256547219.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P5680266071019569821

`A002487(∏{d}[p?[xor(1, n)+1], #])`
-/

namespace A261179.P5680266071019569821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A261179.P5680266071019569821

namespace A261179

/-- `A002487(∏{d}[p?[xor(1, n)+1], #])` -/
def P5680266071019569821.Spec : Prop :=
  ∀ n, P5680266071019569821.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P2346396210085460499

`A002487(∑{p}[p?[xor(1, n)+1], #])`
-/

namespace A261179.P2346396210085460499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A261179.P2346396210085460499

namespace A261179

/-- `A002487(∑{p}[p?[xor(1, n)+1], #])` -/
def P2346396210085460499.Spec : Prop :=
  ∀ n, P2346396210085460499.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P16106061860461666531

`A002487(A006005(n+1))`
-/

namespace A261179.P16106061860461666531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A006005 (n + 1)).toNat

end

end A261179.P16106061860461666531

namespace A261179

/-- `A002487(A006005(n+1))` -/
def P16106061860461666531.Spec : Prop :=
  ∀ n, P16106061860461666531.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P6324276652918532456

`A002487(A063884(n+1))`
-/

namespace A261179.P6324276652918532456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A063884 (n + 1)).toNat

end

end A261179.P6324276652918532456

namespace A261179

/-- `A002487(A063884(n+1))` -/
def P6324276652918532456.Spec : Prop :=
  ∀ n, P6324276652918532456.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P4588918606648396770

`A002487(A063904(n+1))`
-/

namespace A261179.P4588918606648396770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A063904 (n + 1)).toNat

end

end A261179.P4588918606648396770

namespace A261179

/-- `A002487(A063904(n+1))` -/
def P4588918606648396770.Spec : Prop :=
  ∀ n, P4588918606648396770.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P104677260547168635

`A114214(A006093(n+1))`
-/

namespace A261179.P104677260547168635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A006093 (n + 1)).toNat

end

end A261179.P104677260547168635

namespace A261179

/-- `A114214(A006093(n+1))` -/
def P104677260547168635.Spec : Prop :=
  ∀ n, P104677260547168635.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P3841963651955405173

`A049456(A098390(n+1))`
-/

namespace A261179.P3841963651955405173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (A098390 (n + 1)).toNat

end

end A261179.P3841963651955405173

namespace A261179

/-- `A049456(A098390(n+1))` -/
def P3841963651955405173.Spec : Prop :=
  ∀ n, P3841963651955405173.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P2384074306966507176

`A002487(A008578(n+2))`
-/

namespace A261179.P2384074306966507176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008578 (n + 2)).toNat

end

end A261179.P2384074306966507176

namespace A261179

/-- `A002487(A008578(n+2))` -/
def P2384074306966507176.Spec : Prop :=
  ∀ n, P2384074306966507176.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P4364750124199780572

`A002487(A008864(n+1)-1)`
-/

namespace A261179.P4364750124199780572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008864 (n + 1) - 1).toNat

end

end A261179.P4364750124199780572

namespace A261179

/-- `A002487(A008864(n+1)-1)` -/
def P4364750124199780572.Spec : Prop :=
  ∀ n, P4364750124199780572.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P8640497985618778691

`A002487(A014692(n+1)+n)`
-/

namespace A261179.P8640497985618778691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A261179.P8640497985618778691

namespace A261179

/-- `A002487(A014692(n+1)+n)` -/
def P8640497985618778691.Spec : Prop :=
  ∀ n, P8640497985618778691.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P8713036718102013260

`A002487(A007504(n+1)-A007504(n))`
-/

namespace A261179.P8713036718102013260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A007504 (n + 1) - A007504 n).toNat

end

end A261179.P8713036718102013260

namespace A261179

/-- `A002487(A007504(n+1)-A007504(n))` -/
def P8713036718102013260.Spec : Prop :=
  ∀ n, P8713036718102013260.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P5262285117908653597

`A002487(A104192(n+1)+A000010(n+1))`
-/

namespace A261179.P5262285117908653597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A104192 (n + 1) + A000010 (n + 1)).toNat

end

end A261179.P5262285117908653597

namespace A261179

/-- `A002487(A104192(n+1)+A000010(n+1))` -/
def P5262285117908653597.Spec : Prop :=
  ∀ n, P5262285117908653597.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P5039125205947990287

`A007306(A003602(A000040(A003602(2*n+1))))`
-/

namespace A261179.P5039125205947990287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (A000040 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A261179.P5039125205947990287

namespace A261179

/-- `A007306(A003602(A000040(A003602(2*n+1))))` -/
def P5039125205947990287.Spec : Prop :=
  ∀ n, P5039125205947990287.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P1093614675740537133

`A002487(A098957(n+1))`
-/

namespace A261179.P1093614675740537133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A098957 (n + 1)).toNat

end

end A261179.P1093614675740537133

namespace A261179

/-- `A002487(A098957(n+1))` -/
def P1093614675740537133.Spec : Prop :=
  ∀ n, P1093614675740537133.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P14313638717863834019

`A002487(2*p?[abs(xor(n, -2))])`
-/

namespace A261179.P14313638717863834019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261179.P14313638717863834019

namespace A261179

/-- `A002487(2*p?[abs(xor(n, -2))])` -/
def P14313638717863834019.Spec : Prop :=
  ∀ n, P14313638717863834019.a n = A261179 (n + 1)

end A261179

/-! ## A261179.P13286468859472112119

`A295515(2*p?[abs(xor(n, -2))])`
-/

namespace A261179.P13286468859472112119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261179.P13286468859472112119

namespace A261179

/-- `A295515(2*p?[abs(xor(n, -2))])` -/
def P13286468859472112119.Spec : Prop :=
  ∀ n, P13286468859472112119.a n = A261179 (n + 1)

end A261179

/-!
# A261180: Flowsnake phases, exp(I 2 Pi a(n) / 6) are vectors in a sequence that visits points of the hexagonal root lattice A_2.

The programs for A261180, there is no canonical definition to state claims against.
-/

/-! ## A261180.P3246227192412683095

`A072657(n)%A072644(A072520(n+1))`
-/

namespace A261180.P3246227192412683095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072657 n) (A072644 (A072520 (n + 1)).toNat)

end

end A261180.P3246227192412683095

/-!
# A261181: Primes having only {0, 7, 9} as digits.

The programs for A261181, there is no canonical definition to state claims against.
-/

/-! ## A261181.P4298073809403956118

`∩[A386054(n+1), A386075(n+1)]`
-/

namespace A261181.P4298073809403956118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P4298073809403956118

/-! ## A261181.P16800065271951509329

`∩[A386054(n+1), A386080(n+1)]`
-/

namespace A261181.P16800065271951509329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P16800065271951509329

/-! ## A261181.P4574683806395323429

`∩[A386054(n+1), A386083(n+1)]`
-/

namespace A261181.P4574683806395323429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P4574683806395323429

/-! ## A261181.P11073734644792644451

`∩[A386054(n+1), A386084(n+1)]`
-/

namespace A261181.P11073734644792644451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P11073734644792644451

/-! ## A261181.P1041064231642065866

`∩[A386075(n+1), A386080(n+1)]`
-/

namespace A261181.P1041064231642065866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P1041064231642065866

/-! ## A261181.P15560540895438351066

`∩[A386075(n+1), A386083(n+1)]`
-/

namespace A261181.P15560540895438351066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P15560540895438351066

/-! ## A261181.P18222286085364157337

`∩[A386075(n+1), A386084(n+1)]`
-/

namespace A261181.P18222286085364157337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P18222286085364157337

/-! ## A261181.P17285699367864144854

`∩[A386080(n+1), A386083(n+1)]`
-/

namespace A261181.P17285699367864144854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P17285699367864144854

/-! ## A261181.P18386477298522779756

`∩[A386080(n+1), A386084(n+1)]`
-/

namespace A261181.P18386477298522779756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P18386477298522779756

/-! ## A261181.P17907450937840170292

`∩[A386083(n+1), A386084(n+1)]`
-/

namespace A261181.P17907450937840170292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P17907450937840170292

/-! ## A261181.P12494368489178869999

`∩[A386039(n+1), A386054(n+1)]`
-/

namespace A261181.P12494368489178869999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P12494368489178869999

/-! ## A261181.P16460249371399460417

`∩[A386039(n+1), A386068(n+1)]`
-/

namespace A261181.P16460249371399460417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P16460249371399460417

/-! ## A261181.P16205825481841708381

`∩[A386039(n+1), A386075(n+1)]`
-/

namespace A261181.P16205825481841708381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P16205825481841708381

/-! ## A261181.P2051450889648436265

`∩[A386039(n+1), A386080(n+1)]`
-/

namespace A261181.P2051450889648436265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P2051450889648436265

/-! ## A261181.P14680073008279185764

`∩[A386039(n+1), A386083(n+1)]`
-/

namespace A261181.P14680073008279185764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P14680073008279185764

/-! ## A261181.P5574852280229744093

`∩[A386039(n+1), A386084(n+1)]`
-/

namespace A261181.P5574852280229744093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P5574852280229744093

/-! ## A261181.P3201732962766043033

`∩[A386054(n+1), A386068(n+1)]`
-/

namespace A261181.P3201732962766043033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P3201732962766043033

/-! ## A261181.P7423795555581045467

`∩[A386068(n+1), A386075(n+1)]`
-/

namespace A261181.P7423795555581045467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P7423795555581045467

/-! ## A261181.P15654477255554829144

`∩[A386068(n+1), A386080(n+1)]`
-/

namespace A261181.P15654477255554829144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P15654477255554829144

/-! ## A261181.P1822717333010585429

`∩[A386068(n+1), A386083(n+1)]`
-/

namespace A261181.P1822717333010585429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261181.P1822717333010585429

/-!
# A261182: Primes having only {2, 7, 9} as digits.

The programs for A261182, there is no canonical definition to state claims against.
-/

/-! ## A261182.P17271963107187440892

`∩[A386054(n+1), A386168(n+1)]`
-/

namespace A261182.P17271963107187440892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P17271963107187440892

/-! ## A261182.P12464319756354010942

`∩[A386054(n+1), A386163(n+1)]`
-/

namespace A261182.P12464319756354010942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P12464319756354010942

/-! ## A261182.P4576792573871381393

`∩[A386163(n+1), A386168(n+1)]`
-/

namespace A261182.P4576792573871381393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P4576792573871381393

/-! ## A261182.P8734616903140357906

`∩[A386054(n+1), A386158(n+1)]`
-/

namespace A261182.P8734616903140357906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P8734616903140357906

/-! ## A261182.P1354303629005257435

`∩[A386054(n+1), A386166(n+1)]`
-/

namespace A261182.P1354303629005257435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P1354303629005257435

/-! ## A261182.P8413762692489755938

`∩[A386158(n+1), A386163(n+1)]`
-/

namespace A261182.P8413762692489755938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P8413762692489755938

/-! ## A261182.P1953124382967474268

`∩[A386158(n+1), A386166(n+1)]`
-/

namespace A261182.P1953124382967474268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P1953124382967474268

/-! ## A261182.P16294705616348115

`∩[A386158(n+1), A386168(n+1)]`
-/

namespace A261182.P16294705616348115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P16294705616348115

/-! ## A261182.P13834159531713165055

`∩[A386163(n+1), A386166(n+1)]`
-/

namespace A261182.P13834159531713165055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P13834159531713165055

/-! ## A261182.P16448061717424095088

`∩[A386166(n+1), A386168(n+1)]`
-/

namespace A261182.P16448061717424095088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P16448061717424095088

/-! ## A261182.P1024006756151741914

`∩[A386054(n+1), A386151(n+1)]`
-/

namespace A261182.P1024006756151741914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P1024006756151741914

/-! ## A261182.P15991217303682593069

`∩[A386151(n+1), A386158(n+1)]`
-/

namespace A261182.P15991217303682593069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P15991217303682593069

/-! ## A261182.P1456884674241401540

`∩[A386151(n+1), A386163(n+1)]`
-/

namespace A261182.P1456884674241401540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P1456884674241401540

/-! ## A261182.P10963898259646371432

`∩[A386151(n+1), A386166(n+1)]`
-/

namespace A261182.P10963898259646371432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P10963898259646371432

/-! ## A261182.P5178397026392031747

`∩[A386151(n+1), A386168(n+1)]`
-/

namespace A261182.P5178397026392031747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P5178397026392031747

/-! ## A261182.P475622074262546617

`∩[A386054(n+1), A386103(n+1)]`
-/

namespace A261182.P475622074262546617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P475622074262546617

/-! ## A261182.P4448005234887381700

`∩[A386103(n+1), A386151(n+1)]`
-/

namespace A261182.P4448005234887381700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P4448005234887381700

/-! ## A261182.P7646898602667319396

`∩[A386103(n+1), A386158(n+1)]`
-/

namespace A261182.P7646898602667319396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P7646898602667319396

/-! ## A261182.P6480083497660672949

`∩[A386103(n+1), A386163(n+1)]`
-/

namespace A261182.P6480083497660672949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P6480083497660672949

/-! ## A261182.P539660859695656299

`∩[A386103(n+1), A386166(n+1)]`
-/

namespace A261182.P539660859695656299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261182.P539660859695656299

/-!
# A261183: Primes having only {4, 7, 9} as digits.

The programs for A261183, there is no canonical definition to state claims against.
-/

/-! ## A261183.P7773239994351044587

`∩[A386075(n+1), A386195(n+1)]`
-/

namespace A261183.P7773239994351044587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P7773239994351044587

/-! ## A261183.P4260320013656989624

`∩[A386075(n+1), A386191(n+1)]`
-/

namespace A261183.P4260320013656989624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P4260320013656989624

/-! ## A261183.P5867720949757870883

`∩[A386075(n+1), A386194(n+1)]`
-/

namespace A261183.P5867720949757870883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P5867720949757870883

/-! ## A261183.P3664214597935044706

`∩[A386191(n+1), A386194(n+1)]`
-/

namespace A261183.P3664214597935044706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P3664214597935044706

/-! ## A261183.P11438467946580607586

`∩[A386194(n+1), A386195(n+1)]`
-/

namespace A261183.P11438467946580607586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P11438467946580607586

/-! ## A261183.P18028596190056633024

`∩[A281093(n+1), A386075(n+1)]`
-/

namespace A261183.P18028596190056633024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P18028596190056633024

/-! ## A261183.P17970521506975828488

`∩[A281093(n+1), A386127(n+1)]`
-/

namespace A261183.P17970521506975828488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P17970521506975828488

/-! ## A261183.P10230807178031818242

`∩[A281093(n+1), A386158(n+1)]`
-/

namespace A261183.P10230807178031818242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P10230807178031818242

/-! ## A261183.P13746316663744351942

`∩[A281093(n+1), A386191(n+1)]`
-/

namespace A261183.P13746316663744351942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P13746316663744351942

/-! ## A261183.P13181670369041423982

`∩[A281093(n+1), A386194(n+1)]`
-/

namespace A261183.P13181670369041423982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P13181670369041423982

/-! ## A261183.P4912020266497493894

`∩[A281093(n+1), A386195(n+1)]`
-/

namespace A261183.P4912020266497493894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P4912020266497493894

/-! ## A261183.P2944448543627851029

`∩[A386075(n+1), A386127(n+1)]`
-/

namespace A261183.P2944448543627851029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P2944448543627851029

/-! ## A261183.P14121928617935562904

`∩[A386075(n+1), A386158(n+1)]`
-/

namespace A261183.P14121928617935562904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P14121928617935562904

/-! ## A261183.P13816390480452342925

`∩[A386127(n+1), A386158(n+1)]`
-/

namespace A261183.P13816390480452342925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P13816390480452342925

/-! ## A261183.P13006181346314383939

`∩[A386127(n+1), A386191(n+1)]`
-/

namespace A261183.P13006181346314383939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P13006181346314383939

/-! ## A261183.P1097697803544365226

`∩[A386127(n+1), A386194(n+1)]`
-/

namespace A261183.P1097697803544365226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P1097697803544365226

/-! ## A261183.P18234172912061782362

`∩[A386127(n+1), A386195(n+1)]`
-/

namespace A261183.P18234172912061782362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P18234172912061782362

/-! ## A261183.P17797067315679521453

`∩[A386158(n+1), A386191(n+1)]`
-/

namespace A261183.P17797067315679521453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P17797067315679521453

/-! ## A261183.P1101337156675497857

`∩[A386158(n+1), A386194(n+1)]`
-/

namespace A261183.P1101337156675497857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P1101337156675497857

/-! ## A261183.P2992480852222788548

`∩[A386158(n+1), A386195(n+1)]`
-/

namespace A261183.P2992480852222788548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261183.P2992480852222788548

/-!
# A261184: Primes having only {6, 7, 9} as digits.

The programs for A261184, there is no canonical definition to state claims against.
-/

/-! ## A261184.P8749751775044910701

`∩[A106111(n+1), A386083(n+1)]`
-/

namespace A261184.P8749751775044910701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P8749751775044910701

/-! ## A261184.P2437714330212243423

`∩[A106111(n+1), A386136(n+1)]`
-/

namespace A261184.P2437714330212243423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P2437714330212243423

/-! ## A261184.P12465197342375418197

`∩[A106111(n+1), A386166(n+1)]`
-/

namespace A261184.P12465197342375418197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P12465197342375418197

/-! ## A261184.P3858355383657186045

`∩[A106111(n+1), A386185(n+1)]`
-/

namespace A261184.P3858355383657186045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P3858355383657186045

/-! ## A261184.P13998183909137152481

`∩[A106111(n+1), A386194(n+1)]`
-/

namespace A261184.P13998183909137152481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P13998183909137152481

/-! ## A261184.P17700174247291919969

`∩[A106111(n+1), A386197(n+1)]`
-/

namespace A261184.P17700174247291919969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P17700174247291919969

/-! ## A261184.P14913137078419470870

`∩[A386083(n+1), A386136(n+1)]`
-/

namespace A261184.P14913137078419470870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P14913137078419470870

/-! ## A261184.P16964904465682945418

`∩[A386083(n+1), A386166(n+1)]`
-/

namespace A261184.P16964904465682945418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P16964904465682945418

/-! ## A261184.P10982906201704733103

`∩[A386083(n+1), A386185(n+1)]`
-/

namespace A261184.P10982906201704733103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P10982906201704733103

/-! ## A261184.P6611765813652646532

`∩[A386083(n+1), A386194(n+1)]`
-/

namespace A261184.P6611765813652646532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P6611765813652646532

/-! ## A261184.P14792057079297425200

`∩[A386083(n+1), A386197(n+1)]`
-/

namespace A261184.P14792057079297425200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P14792057079297425200

/-! ## A261184.P11174072879080556164

`∩[A386136(n+1), A386166(n+1)]`
-/

namespace A261184.P11174072879080556164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P11174072879080556164

/-! ## A261184.P14809739772184526763

`∩[A386136(n+1), A386185(n+1)]`
-/

namespace A261184.P14809739772184526763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P14809739772184526763

/-! ## A261184.P14632629088116973311

`∩[A386136(n+1), A386194(n+1)]`
-/

namespace A261184.P14632629088116973311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P14632629088116973311

/-! ## A261184.P15238547748158120716

`∩[A386136(n+1), A386197(n+1)]`
-/

namespace A261184.P15238547748158120716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P15238547748158120716

/-! ## A261184.P14063383565531745043

`∩[A386166(n+1), A386185(n+1)]`
-/

namespace A261184.P14063383565531745043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P14063383565531745043

/-! ## A261184.P14546713713339616415

`∩[A386166(n+1), A386194(n+1)]`
-/

namespace A261184.P14546713713339616415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P14546713713339616415

/-! ## A261184.P15343811409571438237

`∩[A386166(n+1), A386197(n+1)]`
-/

namespace A261184.P15343811409571438237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P15343811409571438237

/-! ## A261184.P7432923060804586793

`∩[A386185(n+1), A386194(n+1)]`
-/

namespace A261184.P7432923060804586793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P7432923060804586793

/-! ## A261184.P950178169543320439

`∩[A386197(n+1), A386185(n+1)]`
-/

namespace A261184.P950178169543320439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261184.P950178169543320439

/-!
# A261185: Flowsnake parity pattern: a(n) = (A261180(n) mod 2).

The programs for A261185, there is no canonical definition to state claims against.
-/

/-! ## A261185.P13229679945102412399

`A261180(n+1)%2`
-/

namespace A261185.P13229679945102412399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261180 (n + 1)) 2

end

end A261185.P13229679945102412399

/-! ## A261185.P10759921393095502151

`and(A001535(n), A261180(n+1))`
-/

namespace A261185.P10759921393095502151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A261180 (n + 1))

end

end A261185.P10759921393095502151

/-! ## A261185.P7412668680802715381

`and(A001546(n), A261180(n+1))`
-/

namespace A261185.P7412668680802715381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A261180 (n + 1))

end

end A261185.P7412668680802715381

/-! ## A261185.P17258253327652040389

`and(A001846(n), A261180(n+1))`
-/

namespace A261185.P17258253327652040389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A261180 (n + 1))

end

end A261185.P17258253327652040389

/-! ## A261185.P8359595525166712682

`and(A004768(n), A261180(n+1))`
-/

namespace A261185.P8359595525166712682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A261180 (n + 1))

end

end A261185.P8359595525166712682

/-! ## A261185.P4326198166955380919

`and(A007204(n), A261180(n+1))`
-/

namespace A261185.P4326198166955380919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A261180 (n + 1))

end

end A261185.P4326198166955380919

/-! ## A261185.P10263568904283025629

`and(A008349(n), A261180(n+1))`
-/

namespace A261185.P10263568904283025629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A261180 (n + 1))

end

end A261185.P10263568904283025629

/-! ## A261185.P17764761334255092981

`and(A008362(n), A261180(n+1))`
-/

namespace A261185.P17764761334255092981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A261180 (n + 1))

end

end A261185.P17764761334255092981

/-! ## A261185.P11334865701326229726

`and(A008417(n), A261180(n+1))`
-/

namespace A261185.P11334865701326229726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A261180 (n + 1))

end

end A261185.P11334865701326229726

/-! ## A261185.P15211488575514531709

`and(A008514(n), A261180(n+1))`
-/

namespace A261185.P15211488575514531709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A261180 (n + 1))

end

end A261185.P15211488575514531709

/-! ## A261185.P6440288145403309843

`and(A008516(n), A261180(n+1))`
-/

namespace A261185.P6440288145403309843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008516 n) (A261180 (n + 1))

end

end A261185.P6440288145403309843

/-! ## A261185.P11200418801676456825

`and(A010690(n), A261180(n+1))`
-/

namespace A261185.P11200418801676456825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010690 n) (A261180 (n + 1))

end

end A261185.P11200418801676456825

/-! ## A261185.P6506489386275509823

`and(A014726(n), A261180(n+1))`
-/

namespace A261185.P6506489386275509823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014726 n) (A261180 (n + 1))

end

end A261185.P6506489386275509823

/-! ## A261185.P4385600132442964048

`and(A014736(n), A261180(n+1))`
-/

namespace A261185.P4385600132442964048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014736 n) (A261180 (n + 1))

end

end A261185.P4385600132442964048

/-! ## A261185.P7884074472377471069

`and(A014760(n), A261180(n+1))`
-/

namespace A261185.P7884074472377471069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014760 n) (A261180 (n + 1))

end

end A261185.P7884074472377471069

/-! ## A261185.P16869806606815486673

`and(A014769(n), A261180(n+1))`
-/

namespace A261185.P16869806606815486673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014769 n) (A261180 (n + 1))

end

end A261185.P16869806606815486673

/-! ## A261185.P8073213431591039940

`and(A014793(n), A261180(n+1))`
-/

namespace A261185.P8073213431591039940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014793 n) (A261180 (n + 1))

end

end A261185.P8073213431591039940

/-! ## A261185.P166106514670188574

`and(A014795(n), A261180(n+1))`
-/

namespace A261185.P166106514670188574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014795 n) (A261180 (n + 1))

end

end A261185.P166106514670188574

/-! ## A261185.P13342422775057095088

`and(A014797(n), A261180(n+1))`
-/

namespace A261185.P13342422775057095088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014797 n) (A261180 (n + 1))

end

end A261185.P13342422775057095088

/-! ## A261185.P14228792585693632393

`and(A014799(n), A261180(n+1))`
-/

namespace A261185.P14228792585693632393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014799 n) (A261180 (n + 1))

end

end A261185.P14228792585693632393

/-!
# A261186: a(n) = binomial(3*n-2,n+1).

The programs for A261186, the canonical program `A261186.P17874925371042757596` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261186 has offset 2).

The definition of A261186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261186.P17874925371042757596

`A081205(2*(n+1))-A081181(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A261186

/-- `A081205(2*(n+1))-A081181(2*(n+1))` -/
def P17874925371042757596.Spec : Prop :=
  ∀ n, P17874925371042757596.a n = A261186 (n + 2)

theorem P17874925371042757596.correct : P17874925371042757596.Spec := by
  intro n
  simp only [A261186, Nat.add_sub_cancel]

end A261186

/-! ## A261186.P15117253948629647698

`C(3*n+4, n+3)`
-/

namespace A261186.P15117253948629647698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 4) (n + 3)

end

end A261186.P15117253948629647698

namespace A261186

/-- `C(3*n+4, n+3)` -/
def P15117253948629647698.Spec : Prop :=
  ∀ n, (P15117253948629647698.a n : ℤ) = A261186 (n + 2)

end A261186

/-! ## A261186.P2349014917984905760

`record[C(A168200(n+1), n+1)]`
-/

namespace A261186.P2349014917984905760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168200 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261186.P2349014917984905760

namespace A261186

/-- `record[C(A168200(n+1), n+1)]` -/
def P2349014917984905760.Spec : Prop :=
  ∀ n, (P2349014917984905760.a n : ℤ) = A261186 (n + 2)

end A261186

/-! ## A261186.P6288958904718972162

`record[C(A225126(n+3), n+1)]`
-/

namespace A261186.P6288958904718972162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225126 (n + 3)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261186.P6288958904718972162

namespace A261186

/-- `record[C(A225126(n+3), n+1)]` -/
def P6288958904718972162.Spec : Prop :=
  ∀ n, (P6288958904718972162.a n : ℤ) = A261186 (n + 2)

end A261186

/-! ## A261186.P7723769912134190621

`A078812(2*(n+1)*(n+3))`
-/

namespace A261186.P7723769912134190621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (2 * ((n + 1) * (n + 3)))

end

end A261186.P7723769912134190621

namespace A261186

/-- `A078812(2*(n+1)*(n+3))` -/
def P7723769912134190621.Spec : Prop :=
  ∀ n, P7723769912134190621.a n = A261186 (n + 2)

end A261186

/-! ## A261186.P7702005168332424858

`A172431((n+1)²+(n+3)²)`
-/

namespace A261186.P7702005168332424858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A261186.P7702005168332424858

namespace A261186

/-- `A172431((n+1)²+(n+3)²)` -/
def P7702005168332424858.Spec : Prop :=
  ∀ n, P7702005168332424858.a n = A261186 (n + 2)

end A261186

/-! ## A261186.P16770935802793403526

`A349727(A054000(n+2))`
-/

namespace A261186.P16770935802793403526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 (A054000 (n + 2)).toNat

end

end A261186.P16770935802793403526

namespace A261186

/-- `A349727(A054000(n+2))` -/
def P16770935802793403526.Spec : Prop :=
  ∀ n, P16770935802793403526.a n = A261186 (n + 2)

end A261186

/-! ## A261186.P14100937404874770301

`A128908(A014105(n+2)+n+1)`
-/

namespace A261186.P14100937404874770301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A014105 (n + 2) + (n + 1 : ℤ)).toNat

end

end A261186.P14100937404874770301

namespace A261186

/-- `A128908(A014105(n+2)+n+1)` -/
def P14100937404874770301.Spec : Prop :=
  ∀ n, P14100937404874770301.a n = A261186 (n + 2)

end A261186

/-! ## A261186.P14605927323298724659

`A034867(A008580(n+1))`
-/

namespace A261186.P14605927323298724659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (A008580 (n + 1)).toNat

end

end A261186.P14605927323298724659

namespace A261186

/-- `A034867(A008580(n+1))` -/
def P14605927323298724659.Spec : Prop :=
  ∀ n, P14605927323298724659.a n = A261186 (n + 2)

end A261186

/-! ## A261186.P10964410016532962361

`A074909(A062728(n+1)-1)`
-/

namespace A261186.P10964410016532962361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A062728 (n + 1) - 1).toNat

end

end A261186.P10964410016532962361

namespace A261186

/-- `A074909(A062728(n+1)-1)` -/
def P10964410016532962361.Spec : Prop :=
  ∀ n, P10964410016532962361.a n = A261186 (n + 2)

end A261186

/-!
# A261188: Integers such that no subsequence of decimal representation is divisible by 3.

The programs for A261188, there is no canonical definition to state claims against.
-/

/-! ## A261188.P16204013490876833759

`eq[1, gcd(9, A098736(n))]`
-/

namespace A261188.P16204013490876833759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A098736 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261188.P16204013490876833759

/-! ## A261188.P7874435773939196764

`floor(A071073(3*n+5)/10)`
-/

namespace A261188.P7874435773939196764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071073 (3 * n + 5) : ℚ) / 10⌋

end

end A261188.P7874435773939196764

/-! ## A261188.P8580696421109871112

`eq[2, (10*n*A240237(n)+1)%3]`
-/

namespace A261188.P8580696421109871112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * ((n : ℤ) * A240237 n) + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261188.P8580696421109871112

/-! ## A261188.P12167378589119674198

`lt[0, (A111707(n)%3)%2/(n+2)]`
-/

namespace A261188.P12167378589119674198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (Int.tmod (A111707 n) 3) 2 : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A261188.P12167378589119674198

/-! ## A261188.P15671945741455796211

`record[A330355(A222212(n))]`
-/

namespace A261188.P15671945741455796211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 (A222212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261188.P15671945741455796211

/-!
# A261189: Integers such that no subsequence of decimal representation is divisible by 5.

The programs for A261189, the canonical program `A261189.P8766923628387180142` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261189 has offset 1).

The definition of A261189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261189.P4089491293950821252

`A052413(A255808(n+1)+1)`
-/

namespace A261189.P4089491293950821252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (A255808 (n + 1) + 1).toNat

end

end A261189.P4089491293950821252

namespace A261189

/-- `A052413(A255808(n+1)+1)` -/
def P4089491293950821252.Spec : Prop :=
  ∀ n, P4089491293950821252.a n = A261189 (n + 1)

end A261189

/-! ## A261189.P8766923628387180142

`∩[A039116(n+1), A052413(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261189

/-- `∩[A039116(n+1), A052413(n+1)]` -/
def P8766923628387180142.Spec : Prop :=
  ∀ n, (P8766923628387180142.a n : ℤ) = A261189 (n + 1)

theorem P8766923628387180142.correct : P8766923628387180142.Spec := by
  intro n
  simp only [A261189, Nat.add_sub_cancel]

end A261189

/-! ## A261189.P2633111441277240632

`∩[A039116(n+1), A052382(n+1)]`
-/

namespace A261189.P2633111441277240632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261189.P2633111441277240632

namespace A261189

/-- `∩[A039116(n+1), A052382(n+1)]` -/
def P2633111441277240632.Spec : Prop :=
  ∀ n, (P2633111441277240632.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P6236381547841926868

`∩[A052382(n+1), A052413(n+1)]`
-/

namespace A261189.P6236381547841926868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261189.P6236381547841926868

namespace A261189

/-- `∩[A052382(n+1), A052413(n+1)]` -/
def P6236381547841926868.Spec : Prop :=
  ∀ n, (P6236381547841926868.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P8979249852081212136

`eq[n, A222214(n)]`
-/

namespace A261189.P8979249852081212136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261189.P8979249852081212136

namespace A261189

/-- `eq[n, A222214(n)]` -/
def P8979249852081212136.Spec : Prop :=
  ∀ n, (P8979249852081212136.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P7662908771006608419

`lt[gcd(10, n-A230099(n)), 3]`
-/

namespace A261189.P7662908771006608419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 ((n : ℤ) - A230099 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261189.P7662908771006608419

namespace A261189

/-- `lt[gcd(10, n-A230099(n)), 3]` -/
def P7662908771006608419.Spec : Prop :=
  ∀ n, (P7662908771006608419.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P13063882780856669937

`record[A004719(A052413(n+2))]`
-/

namespace A261189.P13063882780856669937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A052413 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261189.P13063882780856669937

namespace A261189

/-- `record[A004719(A052413(n+2))]` -/
def P13063882780856669937.Spec : Prop :=
  ∀ n, P13063882780856669937.a n = A261189 (n + 1)

end A261189

/-! ## A261189.P810889812244112575

`filter[A039116(n+1), A168046(#)]`
-/

namespace A261189.P810889812244112575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A261189.P810889812244112575

namespace A261189

/-- `filter[A039116(n+1), A168046(#)]` -/
def P810889812244112575.Spec : Prop :=
  ∀ n, P810889812244112575.a n = A261189 (n + 1)

end A261189

/-! ## A261189.P5515282323095721066

`filter[A052413(n+1), A168046(#)]`
-/

namespace A261189.P5515282323095721066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A261189.P5515282323095721066

namespace A261189

/-- `filter[A052413(n+1), A168046(#)]` -/
def P5515282323095721066.Spec : Prop :=
  ∀ n, P5515282323095721066.a n = A261189 (n + 1)

end A261189

/-! ## A261189.P5427614699229130803

`eq[n*A316866(n), A055641(n)]`
-/

namespace A261189.P5427614699229130803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261189.P5427614699229130803

namespace A261189

/-- `eq[n*A316866(n), A055641(n)]` -/
def P5427614699229130803.Spec : Prop :=
  ∀ n, (P5427614699229130803.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P8803687495173972077

`eq[n*A316866(n), A217096(n)]`
-/

namespace A261189.P8803687495173972077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261189.P8803687495173972077

namespace A261189

/-- `eq[n*A316866(n), A217096(n)]` -/
def P8803687495173972077.Spec : Prop :=
  ∀ n, (P8803687495173972077.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P11710504641746547156

`A222214(record[A222214(n)%(n+2)])`
-/

namespace A261189.P11710504641746547156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222214 n) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261189.P11710504641746547156

namespace A261189

/-- `A222214(record[A222214(n)%(n+2)])` -/
def P11710504641746547156.Spec : Prop :=
  ∀ n, P11710504641746547156.a n = A261189 (n + 1)

end A261189

/-! ## A261189.P3159886229030448132

`eq[A222210(n), A222222(A222210(n))]`
-/

namespace A261189.P3159886229030448132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A222210 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261189.P3159886229030448132

namespace A261189

/-- `eq[A222210(n), A222222(A222210(n))]` -/
def P3159886229030448132.Spec : Prop :=
  ∀ n, (P3159886229030448132.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P2136473396531005712

`eq[A222216(n), A222246(A222216(n))]`
-/

namespace A261189.P2136473396531005712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261189.P2136473396531005712

namespace A261189

/-- `eq[A222216(n), A222246(A222216(n))]` -/
def P2136473396531005712.Spec : Prop :=
  ∀ n, (P2136473396531005712.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P10153929377056806125

`lt[A007954(n), A109046(A007954(n))]`
-/

namespace A261189.P10153929377056806125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261189.P10153929377056806125

namespace A261189

/-- `lt[A007954(n), A109046(A007954(n))]` -/
def P10153929377056806125.Spec : Prop :=
  ∀ n, (P10153929377056806125.a n : ℤ) = A261189 (n + 1)

end A261189

/-! ## A261189.P16555434600780941628

`eq[A055642(n), A102669(2*n)]`
-/

namespace A261189.P16555434600780941628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261189.P16555434600780941628

namespace A261189

/-- `eq[A055642(n), A102669(2*n)]` -/
def P16555434600780941628.Spec : Prop :=
  ∀ n, (P16555434600780941628.a n : ℤ) = A261189 (n + 1)

end A261189

/-!
# A261190: Leap years in Symmetry454 calendar, starting year AD 1.

The programs for A261190, there is no canonical definition to state claims against.
-/

/-! ## A261190.P2586691722404812751

`A002024(A002943(2*n+1)-∑[∏{e}[n, #+1]])`
-/

namespace A261190.P2586691722404812751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A002943 (2 * n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A261190.P2586691722404812751

/-! ## A261190.P12036502148490787453

`A123578(A016826(n)+A008908(n+1))`
-/

namespace A261190.P12036502148490787453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A016826 n + A008908 (n + 1)).toNat

end

end A261190.P12036502148490787453

/-! ## A261190.P9003906647860395574

`A194920(A008486(3*n+2))+A118003(3*n+1)`
-/

namespace A261190.P9003906647860395574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A008486 (3 * n + 2)).toNat + A118003 (3 * n + 1)

end

end A261190.P9003906647860395574

/-! ## A261190.P8260150961576558095

`∑[A275925(A249298(n+1)+A056004(n+1))]`
-/

namespace A261190.P8260150961576558095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (A249298 (n + 1) + A056004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261190.P8260150961576558095

/-! ## A261190.P17782473928727835506

`A029837(A000244(n))+A004767(n)`
-/

namespace A261190.P17782473928727835506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A000244 n).toNat + A004767 n

end

end A261190.P17782473928727835506

/-!
# A261191: 40-gonal numbers: a(n) = 38*n*(n-1)/2 + n.

The programs for A261191, the canonical program `A261191.P14259318423697160448` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261191 has offset 0).

The definition of A261191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38*n*(n-1)/2+n` (program `A261191.P16851644046900811848`, by `A261191.P16851644046900811848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261191.P14259318423697160448

`n*(19*n-18)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261191

/-- `n*(19*n-18)` -/
def P14259318423697160448.Spec : Prop :=
  ∀ n, P14259318423697160448.a n = A261191 n

theorem P14259318423697160448.correct : P14259318423697160448.Spec := by
  intro n
  simp only [A261191]

end A261191

/-! ## A261191.P16851644046900811848

`38*n*(n-1)/2+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261191.P16851644046900811848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  38 * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2)) + (n : ℚ)

end

end A261191.P16851644046900811848

namespace A261191

/-- `38*n*(n-1)/2+n` -/
def P16851644046900811848.Spec : Prop :=
  ∀ n, P16851644046900811848.a n = (A261191 n : ℚ)

theorem P16851644046900811848.correct : P16851644046900811848.Spec := by
  intro n
  simp only [A261191, Nat.add_sub_cancel, A261191.P16851644046900811848.a, A261191.P14259318423697160448.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A261191

/-! ## A261191.P10792237505403119397

`∑[a(n-1)+38]` with `a(0)=0, a(1)=1`
-/

namespace A261191.P10792237505403119397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 38

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261191.P10792237505403119397

namespace A261191

/-- `∑[a(n-1)+38]` -/
def P10792237505403119397.Spec : Prop :=
  ∀ n, (P10792237505403119397.a n : ℤ) = A261191 n

end A261191

/-!
# A261192: a(0) = 2; for n>0, a(n) = smallest prime p such that p > a(n-1) and p is congruent to n modulo prime(n).

The programs for A261192, there is no canonical definition to state claims against.
-/

/-! ## A261192.P14685440258553746689

`p?[A334677(A312561(n))+1]`
-/

namespace A261192.P14685440258553746689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334677 (A312561 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261192.P14685440258553746689

/-! ## A261192.P11052871623018348521

`record[p?[A134478(A287882(n+1))]]`
-/

namespace A261192.P11052871623018348521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A287882 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261192.P11052871623018348521

/-!
# A261193: a(n) = n! - 2.

The programs for A261193, the canonical program `A261193.P14577916820562608` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261193 has offset 0).

The definition of A261193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261193.P14577916820562608

`n!-2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A261193

/-- `n!-2` -/
def P14577916820562608.Spec : Prop :=
  ∀ n, P14577916820562608.a n = A261193 n

theorem P14577916820562608.correct : P14577916820562608.Spec := by
  intro n
  simp only [A261193]

end A261193

/-! ## A261193.P11489638782567696889

`A033312(n)-1`
-/

namespace A261193.P11489638782567696889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n - 1

end

end A261193.P11489638782567696889

namespace A261193

/-- `A033312(n)-1` -/
def P11489638782567696889.Spec : Prop :=
  ∀ n, P11489638782567696889.a n = A261193 n

end A261193

/-! ## A261193.P3560329049602712694

`A000142(n)-2`
-/

namespace A261193.P3560329049602712694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - 2

end

end A261193.P3560329049602712694

namespace A261193

/-- `A000142(n)-2` -/
def P3560329049602712694.Spec : Prop :=
  ∀ n, P3560329049602712694.a n = A261193 n

end A261193

/-! ## A261193.P11701789823345540938

`tan(-atan(2))+n!`
-/

namespace A261193.P11701789823345540938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (-Real.arctan (2 : ℝ)) + (Nat.factorial n : ℝ)

end

end A261193.P11701789823345540938

namespace A261193

/-- `tan(-atan(2))+n!` -/
def P11701789823345540938.Spec : Prop :=
  ∀ n, P11701789823345540938.a n = (A261193 n : ℝ)

theorem P11701789823345540938.correct : P11701789823345540938.Spec := by
  intro n
  simp only [A261193, Nat.add_sub_cancel, A261193.P11701789823345540938.a, A261193.P14577916820562608.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A261193

/-! ## A261193.P5230159904294229719

`cot(-acot(2))+n!`
-/

namespace A261193.P5230159904294229719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-SequenceMachineLib.acot (2 : ℝ)) + (Nat.factorial n : ℝ)

end

end A261193.P5230159904294229719

namespace A261193

/-- `cot(-acot(2))+n!` -/
def P5230159904294229719.Spec : Prop :=
  ∀ n, P5230159904294229719.a n = (A261193 n : ℝ)

end A261193

/-! ## A261193.P12699007444799093276

`-(xor(-1, n!)+3)`
-/

namespace A261193.P12699007444799093276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) (Nat.factorial n : ℤ) + 3)

end

end A261193.P12699007444799093276

namespace A261193

/-- `-(xor(-1, n!)+3)` -/
def P12699007444799093276.Spec : Prop :=
  ∀ n, P12699007444799093276.a n = A261193 n

end A261193

/-! ## A261193.P8642312399419239472

`∏[round(1/acot(n))]-2`
-/

namespace A261193.P8642312399419239472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A261193.P8642312399419239472

namespace A261193

/-- `∏[round(1/acot(n))]-2` -/
def P8642312399419239472.Spec : Prop :=
  ∀ n, P8642312399419239472.a n = A261193 n

end A261193

/-! ## A261193.P3367064292167766632

`or(2*n, -2)+n!`
-/

namespace A261193.P3367064292167766632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-2) + (Nat.factorial n : ℤ)

end

end A261193.P3367064292167766632

namespace A261193

/-- `or(2*n, -2)+n!` -/
def P3367064292167766632.Spec : Prop :=
  ∀ n, P3367064292167766632.a n = A261193 n

end A261193

/-! ## A261193.P8239872324459178303

`∏[C(2, n+2)+n]-2`
-/

namespace A261193.P8239872324459178303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A261193.P8239872324459178303

namespace A261193

/-- `∏[C(2, n+2)+n]-2` -/
def P8239872324459178303.Spec : Prop :=
  ∀ n, P8239872324459178303.a n = A261193 n

end A261193

/-! ## A261193.P15807460377555506547

`∏[C(n, a(n-1))]-2` with `a(0)=1`
-/

namespace A261193.P15807460377555506547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A261193.P15807460377555506547

namespace A261193

/-- `∏[C(n, a(n-1))]-2` -/
def P15807460377555506547.Spec : Prop :=
  ∀ n, P15807460377555506547.a n = A261193 n

end A261193

/-!
# A261195: Encoded symmetrical square binary matrices.

The programs for A261195, there is no canonical definition to state claims against.
-/

/-! ## A261195.P11230651961839846939

`eq[n, A344531(n)]`
-/

namespace A261195.P11230651961839846939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261195.P11230651961839846939

/-! ## A261195.P102695683727202826

`A344531(record[and(n, A344531(n))])`
-/

namespace A261195.P102695683727202826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A344531 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261195.P102695683727202826

/-! ## A261195.P10580185958769727916

`eq[A344534(n), A344535(n)]`
-/

namespace A261195.P10580185958769727916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344535 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261195.P10580185958769727916

/-!
# A261196: Expansion of sqrt(8*x + sqrt(1 + 64*x^2)).

The programs for A261196, the canonical program `A261196.P10747703722125685864` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261196 has offset 0).

The definition of A261196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002420, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261196.P10747703722125685864

`A002420(n)*2^n*(-1)^(n*(n+1)/2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A261196

/-- `A002420(n)*2^n*(-1)^(n*(n+1)/2)` -/
def P10747703722125685864.Spec : Prop :=
  ∀ n, P10747703722125685864.a n = (A261196 n : ℝ)

end A261196

/-! ## A261196.P2025442167675515063

`(2-3/n)*4*a(n-1)*(-1)^n` with `a(0)=1`
-/

namespace A261196.P2025442167675515063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - 3 / (n : ℚ)) * (4 * a (n - 1)) * ((-1) ^ n : ℚ)

end

end A261196.P2025442167675515063

namespace A261196

/-- `(2-3/n)*4*a(n-1)*(-1)^n` -/
def P2025442167675515063.Spec : Prop :=
  ∀ n, P2025442167675515063.a n = (A261196 n : ℚ)

end A261196

/-! ## A261196.P13924720215580876296

`2^n*A002420(n)*(-1)^((n²+n)/2)`
-/

namespace A261196.P13924720215580876296
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A002420 n : ℝ) * (-1 : ℝ) ^ ((n ^ 2 + n : ℚ) / 2 : ℝ)

end

end A261196.P13924720215580876296

namespace A261196

/-- `2^n*A002420(n)*(-1)^((n²+n)/2)` -/
def P13924720215580876296.Spec : Prop :=
  ∀ n, P13924720215580876296.a n = (A261196 n : ℝ)

end A261196

/-! ## A261196.P5568074361300021724

`A002420(n)*A120617(n)`
-/

namespace A261196.P5568074361300021724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A120617 n

end

end A261196.P5568074361300021724

namespace A261196

/-- `A002420(n)*A120617(n)` -/
def P5568074361300021724.Spec : Prop :=
  ∀ n, P5568074361300021724.a n = A261196 n

end A261196

/-! ## A261196.P2129883433352224002

`∏[A033999(n)]*A098579(n)`
-/

namespace A261196.P2129883433352224002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A098579 n

end

end A261196.P2129883433352224002

namespace A261196

/-- `∏[A033999(n)]*A098579(n)` -/
def P2129883433352224002.Spec : Prop :=
  ∀ n, P2129883433352224002.a n = A261196 n

end A261196

/-! ## A261196.P1489147510375588164

`∏[A280560(n)]*A002420(n)`
-/

namespace A261196.P1489147510375588164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002420 n

end

end A261196.P1489147510375588164

namespace A261196

/-- `∏[A280560(n)]*A002420(n)` -/
def P1489147510375588164.Spec : Prop :=
  ∀ n, P1489147510375588164.a n = A261196 n

end A261196

/-! ## A261196.P7218245427864880260

`A002420(n)*A090132(2*n)`
-/

namespace A261196.P7218245427864880260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A090132 (2 * n)

end

end A261196.P7218245427864880260

namespace A261196

/-- `A002420(n)*A090132(2*n)` -/
def P7218245427864880260.Spec : Prop :=
  ∀ n, P7218245427864880260.a n = A261196 n

end A261196

/-!
# A261197: Cubes of the successive terms of the decimal expansion of Pi.

The programs for A261197, there is no canonical definition to state claims against.
-/

/-! ## A261197.P8076781165491898805

`A000796(n)^3`
-/

namespace A261197.P8076781165491898805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) ^ 3

end

end A261197.P8076781165491898805

/-! ## A261197.P15507987442156360661

`(9-A030644(n))^3`
-/

namespace A261197.P15507987442156360661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1)) ^ 3

end

end A261197.P15507987442156360661

/-! ## A261197.P7262056827697586375

`sqrt(A072448(n+1)^3)`
-/

namespace A261197.P7262056827697586375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (n + 1) ^ 3 : ℝ)

end

end A261197.P7262056827697586375

/-! ## A261197.P5319876137028030542

`(A123152(n+1)-1)^3`
-/

namespace A261197.P5319876137028030542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123152 (n + 1) - 1) ^ 3

end

end A261197.P5319876137028030542

/-! ## A261197.P7899051656095848186

`(A065253(n+1)%10)^3`
-/

namespace A261197.P7899051656095848186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10 ^ 3

end

end A261197.P7899051656095848186

/-! ## A261197.P17166240573668336788

`A000093(A072448(n+1))`
-/

namespace A261197.P17166240573668336788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A072448 (n + 1)).toNat

end

end A261197.P17166240573668336788

/-! ## A261197.P15373330084744680989

`A000796(n)*A072448(n+1)`
-/

namespace A261197.P15373330084744680989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A072448 (n + 1)

end

end A261197.P15373330084744680989

/-! ## A261197.P2180830682065383150

`A001355(Δ[n²])^3`
-/

namespace A261197.P2180830682065383150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A261197.P2180830682065383150

/-! ## A261197.P9043444909596350081

`A076790(Δ[n²])^3`
-/

namespace A261197.P9043444909596350081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A261197.P9043444909596350081

/-! ## A261197.P8629045219665468462

`A110766(Δ[n²])^3`
-/

namespace A261197.P8629045219665468462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A261197.P8629045219665468462

/-! ## A261197.P2190313820529035407

`A001355(2*n+1)²*A001355(2*n+1)`
-/

namespace A261197.P2190313820529035407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) ^ 2 * A001355 (2 * n + 1)

end

end A261197.P2190313820529035407

/-! ## A261197.P513954267499813821

`A110766(2*n+1)²*A110766(2*n+1)`
-/

namespace A261197.P513954267499813821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) ^ 2 * A110766 (2 * n + 1)

end

end A261197.P513954267499813821

/-! ## A261197.P12170946856292728563

`Δ[A059582(n)]^3`
-/

namespace A261197.P12170946856292728563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A261197.P12170946856292728563

/-! ## A261197.P10656204783027493885

`A095709(∑[n]+1)^3`
-/

namespace A261197.P10656204783027493885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 3

end

end A261197.P10656204783027493885

/-! ## A261197.P11762704772589626993

`A138114(∑[n+1])^3`
-/

namespace A261197.P11762704772589626993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A261197.P11762704772589626993

/-!
# A261198: Start with n and repeat the map x -> x+sumdigits(x) until reaching a prime, which is a(n), or 0 if no prime is reached.

The programs for A261198, there is no canonical definition to state claims against.
-/

/-! ## A261198.P8503301975184884207

`A113604(A062028(n+1))`
-/

namespace A261198.P8503301975184884207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113604 (A062028 (n + 1)).toNat

end

end A261198.P8503301975184884207

/-! ## A261198.P4434231044203095648

`A113604(A007953(n+1)+n+1)`
-/

namespace A261198.P4434231044203095648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113604 (A007953 (n + 1) + (n + 1 : ℤ)).toNat

end

end A261198.P4434231044203095648

/-!
# A261199: Minimal prime concatenation sequence with base 10 and seed 10.

The programs for A261199, there is no canonical definition to state claims against.
-/

/-! ## A261199.P1281996178392165466

`A350995(n)+A250120(A011557(n))`
-/

namespace A261199.P1281996178392165466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350995 n + A250120 (A011557 n).toNat

end

end A261199.P1281996178392165466

