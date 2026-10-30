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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A277900: Column 2 of A277898; position of the second occurrence of n in A277892.

The programs for A277900, there is no canonical definition to state claims against.
-/

/-! ## A277900.P3637535765345722644

`A277893(A065091(n+1))`
-/

namespace A277900.P3637535765345722644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277893 (A065091 (n + 1)).toNat

end

end A277900.P3637535765345722644

/-! ## A277900.P9159582715023508586

`A277898(2+∑[n+2])`
-/

namespace A277900.P9159582715023508586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277898 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277900.P9159582715023508586

/-! ## A277900.P11678074321480794966

`A277897(∑[n+1]+4)`
-/

namespace A277900.P11678074321480794966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277897 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A277900.P11678074321480794966

/-! ## A277900.P14854705702705633568

`A277893(p?[2*n+1])`
-/

namespace A277900.P14854705702705633568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277893 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A277900.P14854705702705633568

/-! ## A277900.P14379613097993551467

`A277893(A056912(n+1))`
-/

namespace A277900.P14379613097993551467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277893 (A056912 (n + 1)).toNat

end

end A277900.P14379613097993551467

/-!
# A277901: If A010060(n) = 1, a(n) = A065621(A115384(n)), otherwise a(n) = A048724(a(floor(n/2))).

The programs for A277901, there is no canonical definition to state claims against.
-/

/-! ## A277901.P13149258454101947791

`A277820(A277881(n+1))`
-/

namespace A277901.P13149258454101947791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A277881 (n + 1)).toNat

end

end A277901.P13149258454101947791

/-! ## A277901.P7548756252529367889

`A277819(A277883(n+1))`
-/

namespace A277901.P7548756252529367889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A277883 (n + 1)).toNat

end

end A277901.P7548756252529367889

/-! ## A277901.P7091863991437781161

`A277819(A277822(n+1)+A277881(n+1)-A277813(n+1))`
-/

namespace A277901.P7091863991437781161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A277822 (n + 1) + (A277881 (n + 1) - A277813 (n + 1))).toNat

end

end A277901.P7091863991437781161

/-! ## A277901.P17486316904184405772

`A277902(A277902(A277902(A277818(A001317(n)))))`
-/

namespace A277901.P17486316904184405772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277902 (A277902 (A277902 (A277818 (A001317 n).toNat).toNat).toNat).toNat

end

end A277901.P17486316904184405772

/-!
# A277902: If A010060(n) = 1, a(n) = A000069(A268671(n)), otherwise a(n) = A001969(1+a(A006068(n)/2)).

The programs for A277902, there is no canonical definition to state claims against.
-/

/-! ## A277902.P13064280507074982470

`A277880(A277821(n+1))`
-/

namespace A277902.P13064280507074982470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277880 (A277821 (n + 1)).toNat

end

end A277902.P13064280507074982470

/-! ## A277902.P15713439852345677684

`A277901(A277901(A277901(A277822(A003945(n)))))`
-/

namespace A277902.P15713439852345677684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A277901 (A277901 (A277822 (A003945 n).toNat).toNat).toNat).toNat

end

end A277902.P15713439852345677684

/-!
# A277903: a(n) = the least k such that A000123(k) >= n.

The programs for A277903, the canonical program `A277903.P16814385994304117883` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277903 has offset 1).

The definition of A277903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277903.P2964696972865033797

`A048675(A277905(n+1))`
-/

namespace A277903.P2964696972865033797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A277905 (n + 1)).toNat

end

end A277903.P2964696972865033797

namespace A277903

/-- `A048675(A277905(n+1))` -/
def P2964696972865033797.Spec : Prop :=
  ∀ n, P2964696972865033797.a n = A277903 (n + 1)

end A277903

/-! ## A277903.P16814385994304117883

`∑[char[a(n-1)+a(floor(n/2))]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277903

/-- `∑[char[a(n-1)+a(floor(n/2))]]` -/
def P16814385994304117883.Spec : Prop :=
  ∀ n, (P16814385994304117883.a n : ℤ) = A277903 (n + 1)

theorem P16814385994304117883.correct : P16814385994304117883.Spec := by
  intro n
  simp only [A277903, Nat.add_sub_cancel]

end A277903

/-! ## A277903.P2628432744040937349

`∑[char[Δ[a(n-1)+a(∑[a(n-2)²])]]]` with `a(0)=0, a(1)=1`
-/

namespace A277903.P2628432744040937349
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f4 =>
  f4 (n - 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + f3 (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P2628432744040937349

namespace A277903

/-- `∑[char[Δ[a(n-1)+a(∑[a(n-2)²])]]]` -/
def P2628432744040937349.Spec : Prop :=
  ∀ n, (P2628432744040937349.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P2014772308407296894

`∑[char[A000123(n)]]`
-/

namespace A277903.P2014772308407296894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P2014772308407296894

namespace A277903

/-- `∑[char[A000123(n)]]` -/
def P2014772308407296894.Spec : Prop :=
  ∀ n, (P2014772308407296894.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P1225464366423058198

`∑[char[A018819(n)]]`
-/

namespace A277903.P1225464366423058198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P1225464366423058198

namespace A277903

/-- `∑[char[A018819(n)]]` -/
def P1225464366423058198.Spec : Prop :=
  ∀ n, (P1225464366423058198.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P1235655840316613005

`∑[char[A101566(n)]]`
-/

namespace A277903.P1235655840316613005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101566 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P1235655840316613005

namespace A277903

/-- `∑[char[A101566(n)]]` -/
def P1235655840316613005.Spec : Prop :=
  ∀ n, (P1235655840316613005.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P9284106566079323438

`∑[char[∑[A008645(n)]]]`
-/

namespace A277903.P9284106566079323438
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P9284106566079323438

namespace A277903

/-- `∑[char[∑[A008645(n)]]]` -/
def P9284106566079323438.Spec : Prop :=
  ∀ n, (P9284106566079323438.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P4421130473441390228

`∑[char[record[A292477(n)]]]`
-/

namespace A277903.P4421130473441390228
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P4421130473441390228

namespace A277903

/-- `∑[char[record[A292477(n)]]]` -/
def P4421130473441390228.Spec : Prop :=
  ∀ n, (P4421130473441390228.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P15829709200021487252

`∑[char[A307148(2*n+1)]]`
-/

namespace A277903.P15829709200021487252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P15829709200021487252

namespace A277903

/-- `∑[char[A307148(2*n+1)]]` -/
def P15829709200021487252.Spec : Prop :=
  ∀ n, (P15829709200021487252.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P9066492160757572914

`∑[char[A042951(2*n+1)+A042951(2*n)]]`
-/

namespace A277903.P9066492160757572914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 (2 * n + 1) + A042951 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P9066492160757572914

namespace A277903

/-- `∑[char[A042951(2*n+1)+A042951(2*n)]]` -/
def P9066492160757572914.Spec : Prop :=
  ∀ n, (P9066492160757572914.a n : ℤ) = A277903 (n + 1)

end A277903

/-! ## A277903.P707899450047372116

`∑[char[A238392(n)]]`
-/

namespace A277903.P707899450047372116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238392 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277903.P707899450047372116

namespace A277903

/-- `∑[char[A238392(n)]]` -/
def P707899450047372116.Spec : Prop :=
  ∀ n, (P707899450047372116.a n : ℤ) = A277903 (n + 1)

end A277903

/-!
# A277904: Irregular table: row n (n >= 0) is obtained by listing numbers 0 .. A018819(n)-1.

The programs for A277904, the canonical program `A277904.P1714897233250926635` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277904 has offset 1).

The definition of A277904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277904.P1714897233250926635

`n%A000123(∑[char[A000123(n+1)]])`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A277904

/-- `n%A000123(∑[char[A000123(n+1)]])` -/
def P1714897233250926635.Spec : Prop :=
  ∀ n, P1714897233250926635.a n = A277904 (n + 1)

theorem P1714897233250926635.correct : P1714897233250926635.Spec := by
  intro n
  simp only [A277904, Nat.add_sub_cancel]

end A277904

/-! ## A277904.P11507087527342399777

`(a(n-1)+1)%A336457(A277905(n+1))` with `a(0)=0`
-/

namespace A277904.P11507087527342399777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (A336457 (A277905 (n + 1)).toNat)

end

end A277904.P11507087527342399777

namespace A277904

/-- `(a(n-1)+1)%A336457(A277905(n+1))` -/
def P11507087527342399777.Spec : Prop :=
  ∀ n, P11507087527342399777.a n = A277904 (n + 1)

end A277904

/-! ## A277904.P10458846742033091703

`A277903(A000123(n))-A322003(A277903(n+1))`
-/

namespace A277904.P10458846742033091703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A000123 n).toNat - A322003 (A277903 (n + 1)).toNat

end

end A277904.P10458846742033091703

namespace A277904

/-- `A277903(A000123(n))-A322003(A277903(n+1))` -/
def P10458846742033091703.Spec : Prop :=
  ∀ n, P10458846742033091703.a n = A277904 (n + 1)

end A277904

/-! ## A277904.P15329373321890691778

`A002262(lt[A293617(2*(n+1)), A055314(n+2)])`
-/

namespace A277904.P15329373321890691778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293617 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277904.P15329373321890691778

namespace A277904

/-- `A002262(lt[A293617(2*(n+1)), A055314(n+2)])` -/
def P15329373321890691778.Spec : Prop :=
  ∀ n, P15329373321890691778.a n = A277904 (n + 1)

end A277904

/-! ## A277904.P7820767392443658586

`A124764(eq[A124772(n), A124779(n+3)])`
-/

namespace A277904.P7820767392443658586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277904.P7820767392443658586

namespace A277904

/-- `A124764(eq[A124772(n), A124779(n+3)])` -/
def P7820767392443658586.Spec : Prop :=
  ∀ n, P7820767392443658586.a n = A277904 (n + 1)

end A277904

/-!
# A277905: Irregular table: Each row n (n >= 0) lists in ascending order all A018819(n) numbers k for which A048675(k) = n.

The programs for A277905, there is no canonical definition to state claims against.
-/

/-! ## A277905.P12079800374845801896

`A352064(record[A260999(n+1)])`
-/

namespace A277905.P12079800374845801896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352064 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277905.P12079800374845801896

/-! ## A277905.P17832855156710250794

`A352064(A077168(n))`
-/

namespace A277905.P17832855156710250794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352064 (A077168 n).toNat

end

end A277905.P17832855156710250794

/-! ## A277905.P16959524210860550239

`A352064(A275314(2^n))`
-/

namespace A277905.P16959524210860550239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352064 (A275314 (2 ^ n)).toNat

end

end A277905.P16959524210860550239

/-! ## A277905.P12304351655807113697

`A352064(A090624(A091136(n+1)))`
-/

namespace A277905.P12304351655807113697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352064 (A090624 (A091136 (n + 1)).toNat).toNat

end

end A277905.P12304351655807113697

/-! ## A277905.P823320202191233213

`A390568(A000079(n))+A352064(n+1)`
-/

namespace A277905.P823320202191233213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390568 (A000079 n).toNat + A352064 (n + 1)

end

end A277905.P823320202191233213

/-!
# A277906: Least number with same prime signature as phi(n): a(n) = A046523(A000010(n)).

The programs for A277906, the canonical program `A277906.P3419941974536888042` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277906 has offset 1).

The definition of A277906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277906.P3419941974536888042

`A046523(A000010(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A277906

/-- `A046523(A000010(n+1))` -/
def P3419941974536888042.Spec : Prop :=
  ∀ n, P3419941974536888042.a n = A277906 (n + 1)

theorem P3419941974536888042.correct : P3419941974536888042.Spec := by
  intro n
  simp only [A277906, Nat.add_sub_cancel]

end A277906

/-! ## A277906.P3183380518066218772

`A046523(Δ[A002088(n)])`
-/

namespace A277906.P3183380518066218772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n).toNat

end

end A277906.P3183380518066218772

namespace A277906

/-- `A046523(Δ[A002088(n)])` -/
def P3183380518066218772.Spec : Prop :=
  ∀ n, P3183380518066218772.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P16157622735739902478

`A046523(Δ[A005728(n)])`
-/

namespace A277906.P16157622735739902478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n).toNat

end

end A277906.P16157622735739902478

namespace A277906

/-- `A046523(Δ[A005728(n)])` -/
def P16157622735739902478.Spec : Prop :=
  ∀ n, P16157622735739902478.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P5133478560564463015

`A278523(Δ[A005728(n)])`
-/

namespace A277906.P5133478560564463015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (f1 (n + 1) - f1 n).toNat

end

end A277906.P5133478560564463015

namespace A277906

/-- `A278523(Δ[A005728(n)])` -/
def P5133478560564463015.Spec : Prop :=
  ∀ n, P5133478560564463015.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P4480832596248579822

`A046523(A349137(Δ[n²]))`
-/

namespace A277906.P4480832596248579822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A277906.P4480832596248579822

namespace A277906

/-- `A046523(A349137(Δ[n²]))` -/
def P4480832596248579822.Spec : Prop :=
  ∀ n, P4480832596248579822.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P10500085361930058889

`A046523(sqrt(A127473(n+1)))`
-/

namespace A277906.P10500085361930058889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A277906.P10500085361930058889

namespace A277906

/-- `A046523(sqrt(A127473(n+1)))` -/
def P10500085361930058889.Spec : Prop :=
  ∀ n, P10500085361930058889.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P11475789454851162246

`A046523(A109606(n+1)+1)`
-/

namespace A277906.P11475789454851162246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A109606 (n + 1) + 1).toNat

end

end A277906.P11475789454851162246

namespace A277906

/-- `A046523(A109606(n+1)+1)` -/
def P11475789454851162246.Spec : Prop :=
  ∀ n, P11475789454851162246.a n = A277906 (n + 1)

theorem P11475789454851162246.correct : P11475789454851162246.Spec := by
  intro n
  simp only [A277906, Nat.add_sub_cancel, A277906.P11475789454851162246.a, A277906.P3419941974536888042.a, A000010, A000010.P4673923239450215316.a, A046523, A046523.P3407874444772092792.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277906

/-! ## A277906.P14683450882921142088

`A046523(A039649(n+1)-1)`
-/

namespace A277906.P14683450882921142088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A039649 (n + 1) - 1).toNat

end

end A277906.P14683450882921142088

namespace A277906

/-- `A046523(A039649(n+1)-1)` -/
def P14683450882921142088.Spec : Prop :=
  ∀ n, P14683450882921142088.a n = A277906 (n + 1)

theorem P14683450882921142088.correct : P14683450882921142088.Spec := by
  intro n
  simp only [A277906, Nat.add_sub_cancel, A277906.P14683450882921142088.a, A277906.P3419941974536888042.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A046523, A046523.P3407874444772092792.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277906

/-! ## A277906.P6260627432950055132

`A046523(1-A051953(n+1)+n)`
-/

namespace A277906.P6260627432950055132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A277906.P6260627432950055132

namespace A277906

/-- `A046523(1-A051953(n+1)+n)` -/
def P6260627432950055132.Spec : Prop :=
  ∀ n, P6260627432950055132.a n = A277906 (n + 1)

theorem P6260627432950055132.correct : P6260627432950055132.Spec := by
  intro n
  simp only [A277906, Nat.add_sub_cancel, A277906.P6260627432950055132.a, A277906.P3419941974536888042.a, A000010, A000010.P4673923239450215316.a, A046523, A046523.P3407874444772092792.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277906

/-! ## A277906.P16566851365367465823

`A025487(A101296((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A277906.P16566851365367465823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A277906.P16566851365367465823

namespace A277906

/-- `A025487(A101296((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P16566851365367465823.Spec : Prop :=
  ∀ n, P16566851365367465823.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P13276624387314500793

`A046523(A002088(n+1)-A002088(n))`
-/

namespace A277906.P13276624387314500793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A002088 (n + 1) - A002088 n).toNat

end

end A277906.P13276624387314500793

namespace A277906

/-- `A046523(A002088(n+1)-A002088(n))` -/
def P13276624387314500793.Spec : Prop :=
  ∀ n, P13276624387314500793.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P4862978843782666798

`A046523(A061468(n+1)-A000005(n+1))`
-/

namespace A277906.P4862978843782666798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A061468 (n + 1) - A000005 (n + 1)).toNat

end

end A277906.P4862978843782666798

namespace A277906

/-- `A046523(A061468(n+1)-A000005(n+1))` -/
def P4862978843782666798.Spec : Prop :=
  ∀ n, P4862978843782666798.a n = A277906 (n + 1)

theorem P4862978843782666798.correct : P4862978843782666798.Spec := by
  intro n
  simp only [A277906, Nat.add_sub_cancel, A277906.P4862978843782666798.a, A277906.P3419941974536888042.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A046523, A046523.P3407874444772092792.a, A061468, A061468.P5735709615131522244.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A051731, A051731.P11318043630102858095.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A000007, A000007.P6599383543502402472.a, A006519, A006519.P10435570611646570274.a, A048158, A048158.P1757030368331788429.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277906

/-! ## A277906.P4021431368856035980

`A046523(A046073(n+1)*A060594(n+1))`
-/

namespace A277906.P4021431368856035980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A046073 (n + 1) * A060594 (n + 1)).toNat

end

end A277906.P4021431368856035980

namespace A277906

/-- `A046523(A046073(n+1)*A060594(n+1))` -/
def P4021431368856035980.Spec : Prop :=
  ∀ n, P4021431368856035980.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P11754306651759572870

`A046523(A003557(n+1)*A173557(n+1))`
-/

namespace A277906.P11754306651759572870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003557 (n + 1) * A173557 (n + 1)).toNat

end

end A277906.P11754306651759572870

namespace A277906

/-- `A046523(A003557(n+1)*A173557(n+1))` -/
def P11754306651759572870.Spec : Prop :=
  ∀ n, P11754306651759572870.a n = A277906 (n + 1)

theorem P11754306651759572870.correct : P11754306651759572870.Spec := by
  intro n
  simp only [A277906, Nat.add_sub_cancel, A277906.P11754306651759572870.a, A277906.P3419941974536888042.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A046523, A046523.P3407874444772092792.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277906

/-! ## A277906.P18274304139182879034

`A046523(A062355(n+1)/A000005(n+1))`
-/

namespace A277906.P18274304139182879034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A062355 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A277906.P18274304139182879034

namespace A277906

/-- `A046523(A062355(n+1)/A000005(n+1))` -/
def P18274304139182879034.Spec : Prop :=
  ∀ n, P18274304139182879034.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P12621422542216061021

`A278523(2*A000010(n+1)-A000010(n+1))`
-/

namespace A277906.P12621422542216061021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (2 * A000010 (n + 1) - A000010 (n + 1)).toNat

end

end A277906.P12621422542216061021

namespace A277906

/-- `A278523(2*A000010(n+1)-A000010(n+1))` -/
def P12621422542216061021.Spec : Prop :=
  ∀ n, P12621422542216061021.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P3807780704175473629

`A046523(n+1-∑{#}[n, 1-floor(1/gcd(n+1, #))])`
-/

namespace A277906.P3807780704175473629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((n + 1 : ℤ) - ∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋)).toNat

end

end A277906.P3807780704175473629

namespace A277906

/-- `A046523(n+1-∑{#}[n, 1-floor(1/gcd(n+1, #))])` -/
def P3807780704175473629.Spec : Prop :=
  ∀ n, P3807780704175473629.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P10939548374862887672

`A046523(Δ[A206297(n+1)/2])`
-/

namespace A277906.P10939548374862887672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A277906.P10939548374862887672

namespace A277906

/-- `A046523(Δ[A206297(n+1)/2])` -/
def P10939548374862887672.Spec : Prop :=
  ∀ n, P10939548374862887672.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P6133754213584792035

`A046523(Δ[eq[1, A038566(n+1)]])`
-/

namespace A277906.P6133754213584792035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A277906.P6133754213584792035

namespace A277906

/-- `A046523(Δ[eq[1, A038566(n+1)]])` -/
def P6133754213584792035.Spec : Prop :=
  ∀ n, P6133754213584792035.a n = A277906 (n + 1)

end A277906

/-! ## A277906.P14050137832497447729

`A278523(A000010((n+1)²)/(n+1))`
-/

namespace A277906.P14050137832497447729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (SequenceMachineLib.roundAway ((A000010 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A277906.P14050137832497447729

namespace A277906

/-- `A278523(A000010((n+1)²)/(n+1))` -/
def P14050137832497447729.Spec : Prop :=
  ∀ n, P14050137832497447729.a n = A277906 (n + 1)

end A277906

/-!
# A277907: a(n) = A007310(A277908(n)).

The programs for A277907, there is no canonical definition to state claims against.
-/

/-! ## A277907.P5909068424364764872

`A007310(A277908(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277907.P5909068424364764872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A277908 (n + 1)).toNat

end

end A277907.P5909068424364764872

/-! ## A277907.P16876158846435990410

`A151799(3*A277908(n+1))`
-/

namespace A277907.P16876158846435990410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (3 * A277908 (n + 1)).toNat

end

end A277907.P16876158846435990410

/-! ## A277907.P9368774502943710863

`A038179(A277908(n+1)+1)`
-/

namespace A277907.P9368774502943710863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (A277908 (n + 1) + 1).toNat

end

end A277907.P9368774502943710863

/-! ## A277907.P7290008943466013068

`A305429(3*A277908(n+1))`
-/

namespace A277907.P7290008943466013068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (3 * A277908 (n + 1)).toNat

end

end A277907.P7290008943466013068

/-! ## A277907.P7365453933514812984

`A047273(2*A277908(n+1))`
-/

namespace A277907.P7365453933514812984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (2 * A277908 (n + 1)).toNat

end

end A277907.P7365453933514812984

/-! ## A277907.P5619978474136676580

`A047481(2*A277908(n+1))-A277908(n+1)`
-/

namespace A277907.P5619978474136676580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (2 * A277908 (n + 1)).toNat - A277908 (n + 1)

end

end A277907.P5619978474136676580

/-! ## A277907.P4048497754316498978

`A051698(3*A277908(n+1))`
-/

namespace A277907.P4048497754316498978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (3 * A277908 (n + 1)).toNat

end

end A277907.P4048497754316498978

/-! ## A277907.P16399299347543066257

`A136548(3*A277908(n+1))`
-/

namespace A277907.P16399299347543066257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (3 * A277908 (n + 1)).toNat

end

end A277907.P16399299347543066257

/-! ## A277907.P10267054067899572761

`A124741(3*A277908(n+1))`
-/

namespace A277907.P10267054067899572761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (3 * A277908 (n + 1)).toNat

end

end A277907.P10267054067899572761

/-!
# A277908: Numbers n for which abs(n-A277911(n)) = 1.

The programs for A277908, there is no canonical definition to state claims against.
-/

/-! ## A277908.P12764402176689848443

`ceil(A277907(n+1)/3)`
-/

namespace A277908.P12764402176689848443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277907 (n + 1) : ℚ) / 3⌉

end

end A277908.P12764402176689848443

/-! ## A277908.P6698047620545857262

`A277909(A004526(n)+1)+A000035(n)`
-/

namespace A277908.P6698047620545857262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277909 (A004526 n + 1).toNat + A000035 n

end

end A277908.P6698047620545857262

/-! ## A277908.P13810918798426516291

`∪[A277909(n+1), A277910(n+1)]`
-/

namespace A277908.P13810918798426516291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277908.P13810918798426516291

/-! ## A277908.P8638929228011037155

`A126760(A277907(n+1))`
-/

namespace A277908.P8638929228011037155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A277907 (n + 1)).toNat

end

end A277908.P8638929228011037155

/-! ## A277908.P18377124293732731090

`A008620(A277907(n+1))`
-/

namespace A277908.P18377124293732731090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A277907 (n + 1)).toNat

end

end A277908.P18377124293732731090

/-! ## A277908.P11893672570491702481

`A285870(A277907(n+1)+1)`
-/

namespace A277908.P11893672570491702481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A277907 (n + 1) + 1).toNat

end

end A277908.P11893672570491702481

/-! ## A277908.P14167785340935284088

`A002264(A277907(n+1)+2)`
-/

namespace A277908.P14167785340935284088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277907 (n + 1) + 2).toNat

end

end A277908.P14167785340935284088

/-! ## A277908.P3416872912627879093

`A103221(2*A277907(n+1))`
-/

namespace A277908.P3416872912627879093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A277907 (n + 1)).toNat

end

end A277908.P3416872912627879093

/-! ## A277908.P17726278909080523725

`A112689(2*A277907(n+1))`
-/

namespace A277908.P17726278909080523725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * A277907 (n + 1)).toNat

end

end A277908.P17726278909080523725

/-! ## A277908.P2260028790989246410

`A103221(lcm(2, A277907(n+1)))`
-/

namespace A277908.P2260028790989246410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lcm 2 (A277907 (n + 1)))

end

end A277908.P2260028790989246410

/-! ## A277908.P10948391592044983152

`A103221(A277907(n+1)+A277907(n+1)+1)`
-/

namespace A277908.P10948391592044983152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A277907 (n + 1) + (A277907 (n + 1) + 1)).toNat

end

end A277908.P10948391592044983152

/-! ## A277908.P17277674123258155112

`A112689(A277907(n+1)+A277907(n+1)-1)`
-/

namespace A277908.P17277674123258155112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A277907 (n + 1) + (A277907 (n + 1) - 1)).toNat

end

end A277908.P17277674123258155112

/-!
# A277909: Numbers n for which A277911(n) = n+1.

The programs for A277909, the canonical program `A277909.P9440782015810627941` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277909 has offset 1).

The definition of A277909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277909.P11705406700456956667

`A277908(Δ[n²])`
-/

namespace A277909.P11705406700456956667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A277909.P11705406700456956667

namespace A277909

/-- `A277908(Δ[n²])` -/
def P11705406700456956667.Spec : Prop :=
  ∀ n, P11705406700456956667.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P10186905908730320114

`A277910(n+1)-1`
-/

namespace A277909.P10186905908730320114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277910 (n + 1) - 1

end

end A277909.P10186905908730320114

namespace A277909

/-- `A277910(n+1)-1` -/
def P10186905908730320114.Spec : Prop :=
  ∀ n, P10186905908730320114.a n = A277909 (n + 1)

theorem P10186905908730320114.correct : P10186905908730320114.Spec := by
  intro n
  simp only [A277909, Nat.add_sub_cancel, A277909.P10186905908730320114.a, A277909.P9440782015810627941.f1, A277909.P9440782015810627941.a, A075743, A075743.P8124416718606607743.a, A181709, A181709.P11612735428797642774.a, A277910, A277910.P10787059213023238981.a, A007310, A007310.P9946423629536973135.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A144769, A144769.P5896699175257808564.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277909

/-! ## A277909.P6455699409832625607

`A277908(2*(n+1))-1`
-/

namespace A277909.P6455699409832625607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277908 (2 * (n + 1)) - 1

end

end A277909.P6455699409832625607

namespace A277909

/-- `A277908(2*(n+1))-1` -/
def P6455699409832625607.Spec : Prop :=
  ∀ n, P6455699409832625607.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P15505293533553908459

`ceil(A277907(2*n+1)/3)`
-/

namespace A277909.P15505293533553908459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277907 (2 * n + 1) : ℚ) / 3⌉

end

end A277909.P15505293533553908459

namespace A277909

/-- `ceil(A277907(2*n+1)/3)` -/
def P15505293533553908459.Spec : Prop :=
  ∀ n, P15505293533553908459.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P7192930875814462598

`A000027(A277908(2*n+1))`
-/

namespace A277909.P7192930875814462598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A277908 (2 * n + 1)).toNat

end

end A277909.P7192930875814462598

namespace A277909

/-- `A000027(A277908(2*n+1))` -/
def P7192930875814462598.Spec : Prop :=
  ∀ n, P7192930875814462598.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P9440782015810627941

`filter[A181709(2*n+1), A075743(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A277909

/-- `filter[A181709(2*n+1), A075743(#)]` -/
def P9440782015810627941.Spec : Prop :=
  ∀ n, P9440782015810627941.a n = A277909 (n + 1)

theorem P9440782015810627941.correct : P9440782015810627941.Spec := by
  intro n
  simp only [A277909, Nat.add_sub_cancel]

end A277909

/-! ## A277909.P2283343781883506335

`∩[A181709(2*n+1), A181709(n+2)-1]`
-/

namespace A277909.P2283343781883506335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277909.P2283343781883506335

namespace A277909

/-- `∩[A181709(2*n+1), A181709(n+2)-1]` -/
def P2283343781883506335.Spec : Prop :=
  ∀ n, (P2283343781883506335.a n : ℤ) = A277909 (n + 1)

end A277909

/-! ## A277909.P9189627987053568447

`eq[n, A277911(n+1)]`
-/

namespace A277909.P9189627987053568447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277909.P9189627987053568447

namespace A277909

/-- `eq[n, A277911(n+1)]` -/
def P9189627987053568447.Spec : Prop :=
  ∀ n, (P9189627987053568447.a n : ℤ) = A277909 (n + 1)

end A277909

/-! ## A277909.P1974680059483386479

`A023443(A277910(n+1))`
-/

namespace A277909.P1974680059483386479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A277910 (n + 1)).toNat

end

end A277909.P1974680059483386479

namespace A277909

/-- `A023443(A277910(n+1))` -/
def P1974680059483386479.Spec : Prop :=
  ∀ n, P1974680059483386479.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P13111797072989363253

`A277911(A277908(2*(n+1)))`
-/

namespace A277909.P13111797072989363253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (A277908 (2 * (n + 1))).toNat

end

end A277909.P13111797072989363253

namespace A277909

/-- `A277911(A277908(2*(n+1)))` -/
def P13111797072989363253.Spec : Prop :=
  ∀ n, P13111797072989363253.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P6474758618104962047

`record[A277911(A277908(n+1))-1]`
-/

namespace A277909.P6474758618104962047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (A277908 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277909.P6474758618104962047

namespace A277909

/-- `record[A277911(A277908(n+1))-1]` -/
def P6474758618104962047.Spec : Prop :=
  ∀ n, P6474758618104962047.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P17140039169480020736

`A277911(A277911(A277908(n+1+n)))`
-/

namespace A277909.P17140039169480020736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (A277911 (A277908 (n + 1 + n)).toNat).toNat

end

end A277909.P17140039169480020736

namespace A277909

/-- `A277911(A277911(A277908(n+1+n)))` -/
def P17140039169480020736.Spec : Prop :=
  ∀ n, P17140039169480020736.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P11364899966561837738

`A126760(A277907(2*n+1))`
-/

namespace A277909.P11364899966561837738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A277907 (2 * n + 1)).toNat

end

end A277909.P11364899966561837738

namespace A277909

/-- `A126760(A277907(2*n+1))` -/
def P11364899966561837738.Spec : Prop :=
  ∀ n, P11364899966561837738.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P7328477269597742851

`A002264(A277907(2*(n+1)))`
-/

namespace A277909.P7328477269597742851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277907 (2 * (n + 1))).toNat

end

end A277909.P7328477269597742851

namespace A277909

/-- `A002264(A277907(2*(n+1)))` -/
def P7328477269597742851.Spec : Prop :=
  ∀ n, P7328477269597742851.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P11906439023985148552

`A285870(A277907(2*n+1)+1)`
-/

namespace A277909.P11906439023985148552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A277907 (2 * n + 1) + 1).toNat

end

end A277909.P11906439023985148552

namespace A277909

/-- `A285870(A277907(2*n+1)+1)` -/
def P11906439023985148552.Spec : Prop :=
  ∀ n, P11906439023985148552.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P12500849883077969429

`A126760(A118306(A277907(n+2+n)))`
-/

namespace A277909.P12500849883077969429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A118306 (A277907 (n + 2 + n)).toNat).toNat

end

end A277909.P12500849883077969429

namespace A277909

/-- `A126760(A118306(A277907(n+2+n)))` -/
def P12500849883077969429.Spec : Prop :=
  ∀ n, P12500849883077969429.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P257449685984929619

`A103221(2*A277907(2*n+1))`
-/

namespace A277909.P257449685984929619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A277907 (2 * n + 1)).toNat

end

end A277909.P257449685984929619

namespace A277909

/-- `A103221(2*A277907(2*n+1))` -/
def P257449685984929619.Spec : Prop :=
  ∀ n, P257449685984929619.a n = A277909 (n + 1)

end A277909

/-! ## A277909.P6935018825721419040

`A112689(2*A277907(2*n+1))`
-/

namespace A277909.P6935018825721419040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * A277907 (2 * n + 1)).toNat

end

end A277909.P6935018825721419040

namespace A277909

/-- `A112689(2*A277907(2*n+1))` -/
def P6935018825721419040.Spec : Prop :=
  ∀ n, P6935018825721419040.a n = A277909 (n + 1)

end A277909

/-!
# A277910: Numbers n for which A277911(n) = n-1.

The programs for A277910, the canonical program `A277910.P10787059213023238981` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277910 has offset 1).

The definition of A277910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277909, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277910.P10787059213023238981

`1+A277909(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277910

/-- `1+A277909(n+1)` -/
def P10787059213023238981.Spec : Prop :=
  ∀ n, P10787059213023238981.a n = A277910 (n + 1)

theorem P10787059213023238981.correct : P10787059213023238981.Spec := by
  intro n
  simp only [A277910, Nat.add_sub_cancel]

end A277910

/-! ## A277910.P11598118431156966724

`A277908(2*(n+1))`
-/

namespace A277910.P11598118431156966724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277908 (2 * (n + 1))

end

end A277910.P11598118431156966724

namespace A277910

/-- `A277908(2*(n+1))` -/
def P11598118431156966724.Spec : Prop :=
  ∀ n, P11598118431156966724.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P17376819238939827808

`A277908(Δ[n²])+1`
-/

namespace A277910.P17376819238939827808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A277910.P17376819238939827808

namespace A277910

/-- `A277908(Δ[n²])+1` -/
def P17376819238939827808.Spec : Prop :=
  ∀ n, P17376819238939827808.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P16928279629965532180

`∩[A181709(2*n+1)+1, A181709(n+2)]`
-/

namespace A277910.P16928279629965532180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277910.P16928279629965532180

namespace A277910

/-- `∩[A181709(2*n+1)+1, A181709(n+2)]` -/
def P16928279629965532180.Spec : Prop :=
  ∀ n, (P16928279629965532180.a n : ℤ) = A277910 (n + 1)

end A277910

/-! ## A277910.P10188332628890040970

`eq[n, A277911(n+1)]+1`
-/

namespace A277910.P10188332628890040970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277910.P10188332628890040970

namespace A277910

/-- `eq[n, A277911(n+1)]+1` -/
def P10188332628890040970.Spec : Prop :=
  ∀ n, (P10188332628890040970.a n : ℤ) = A277910 (n + 1)

end A277910

/-! ## A277910.P4279682143024631756

`A020725(A277909(n+1))`
-/

namespace A277910.P4279682143024631756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A277909 (n + 1)).toNat

end

end A277910.P4279682143024631756

namespace A277910

/-- `A020725(A277909(n+1))` -/
def P4279682143024631756.Spec : Prop :=
  ∀ n, P4279682143024631756.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P16778330503206706191

`record[A277911(A277908(n+1))]`
-/

namespace A277910.P16778330503206706191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (A277908 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277910.P16778330503206706191

namespace A277910

/-- `record[A277911(A277908(n+1))]` -/
def P16778330503206706191.Spec : Prop :=
  ∀ n, P16778330503206706191.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P5513372808600761340

`A277911(A277908(n+1+n))`
-/

namespace A277910.P5513372808600761340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (A277908 (n + 1 + n)).toNat

end

end A277910.P5513372808600761340

namespace A277910

/-- `A277911(A277908(n+1+n))` -/
def P5513372808600761340.Spec : Prop :=
  ∀ n, P5513372808600761340.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P13494274510039928655

`A277911(eq[n, A277911(n+1)])`
-/

namespace A277910.P13494274510039928655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277910.P13494274510039928655

namespace A277910

/-- `A277911(eq[n, A277911(n+1)])` -/
def P13494274510039928655.Spec : Prop :=
  ∀ n, P13494274510039928655.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P16416049055296719022

`A126760(A277907(2*(n+1)))`
-/

namespace A277910.P16416049055296719022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A277907 (2 * (n + 1))).toNat

end

end A277910.P16416049055296719022

namespace A277910

/-- `A126760(A277907(2*(n+1)))` -/
def P16416049055296719022.Spec : Prop :=
  ∀ n, P16416049055296719022.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P12131428022447506911

`A008620(A277907(2*(n+1)))`
-/

namespace A277910.P12131428022447506911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A277907 (2 * (n + 1))).toNat

end

end A277910.P12131428022447506911

namespace A277910

/-- `A008620(A277907(2*(n+1)))` -/
def P12131428022447506911.Spec : Prop :=
  ∀ n, P12131428022447506911.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P8015751531407153958

`A285870(A277907(2*(n+1))+1)`
-/

namespace A277910.P8015751531407153958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A277907 (2 * (n + 1)) + 1).toNat

end

end A277910.P8015751531407153958

namespace A277910

/-- `A285870(A277907(2*(n+1))+1)` -/
def P8015751531407153958.Spec : Prop :=
  ∀ n, P8015751531407153958.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P11490170900133110215

`A002264(A277907(2*n+1))+2`
-/

namespace A277910.P11490170900133110215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277907 (2 * n + 1)).toNat + 2

end

end A277910.P11490170900133110215

namespace A277910

/-- `A002264(A277907(2*n+1))+2` -/
def P11490170900133110215.Spec : Prop :=
  ∀ n, P11490170900133110215.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P11412723120886298002

`A126760(A118306(A277907(n+1+n)))`
-/

namespace A277910.P11412723120886298002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A118306 (A277907 (n + 1 + n)).toNat).toNat

end

end A277910.P11412723120886298002

namespace A277910

/-- `A126760(A118306(A277907(n+1+n)))` -/
def P11412723120886298002.Spec : Prop :=
  ∀ n, P11412723120886298002.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P5938205747564421184

`A103221(2*A277907(2*(n+1)))`
-/

namespace A277910.P5938205747564421184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A277907 (2 * (n + 1))).toNat

end

end A277910.P5938205747564421184

namespace A277910

/-- `A103221(2*A277907(2*(n+1)))` -/
def P5938205747564421184.Spec : Prop :=
  ∀ n, P5938205747564421184.a n = A277910 (n + 1)

end A277910

/-! ## A277910.P16843382471298073882

`A112689(2*A277907(2*(n+1)))`
-/

namespace A277910.P16843382471298073882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * A277907 (2 * (n + 1))).toNat

end

end A277910.P16843382471298073882

namespace A277910

/-- `A112689(2*A277907(2*(n+1)))` -/
def P16843382471298073882.Spec : Prop :=
  ∀ n, P16843382471298073882.a n = A277910 (n + 1)

end A277910

/-!
# A277911: Self-inverse permutation of natural numbers induced when A118306 is restricted to A007310.

The programs for A277911, there is no canonical definition to state claims against.
-/

/-! ## A277911.P2864550854110065382

`A126760(A118306(A007310(n+1)))`
-/

namespace A277911.P2864550854110065382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A118306 (A007310 (n + 1)).toNat).toNat

end

end A277911.P2864550854110065382

/-! ## A277911.P13945985384012316616

`A126760(A118306(A249735(A249745(n+1))))`
-/

namespace A277911.P13945985384012316616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A118306 (A249735 (A249745 (n + 1)).toNat).toNat).toNat

end

end A277911.P13945985384012316616

/-! ## A277911.P17349185867803442872

`A322317(A118306(A007310(A003602(2*n+1))))`
-/

namespace A277911.P17349185867803442872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322317 (A118306 (A007310 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A277911.P17349185867803442872

/-! ## A277911.P2334262989840838365

`∑{d}[A118306(A007310(n+1)), A347233(#)]`
-/

namespace A277911.P2334262989840838365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (A007310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347233 d

end

end A277911.P2334262989840838365

/-! ## A277911.P13115709147900404419

`A322317(A118306(A007310(A118306(A118306(n+1)))))`
-/

namespace A277911.P13115709147900404419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322317 (A118306 (A007310 (A118306 (A118306 (n + 1)).toNat).toNat).toNat).toNat

end

end A277911.P13115709147900404419

/-!
# A277912: Expansion of ((Product_{n>=1} (1 - x^(11*n))/(1 - x^n)^11) - 1)/11 in powers of x.

The programs for A277912, there is no canonical definition to state claims against.
-/

/-! ## A277912.P2990235281120505032

`A344420(A023010(n))`
-/

namespace A277912.P2990235281120505032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A023010 n).toNat

end

end A277912.P2990235281120505032

/-! ## A277912.P12627906690465164763

`A127036(A008776(n)-A002203(n))`
-/

namespace A277912.P12627906690465164763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127036 (A008776 n - A002203 n).toNat

end

end A277912.P12627906690465164763

/-!
# A277913: Nonsquare numbers n for which the smallest y>0 solution of the Pellian equation x^2 - n*y^2 = 1 divides n.

The programs for A277913, there is no canonical definition to state claims against.
-/

/-! ## A277913.P2107418227677383002

`record[A132169(A089867(n))]`
-/

namespace A277913.P2107418227677383002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132169 (A089867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277913.P2107418227677383002

/-! ## A277913.P10010281991692053819

`record[A132169(A089869(n))]`
-/

namespace A277913.P10010281991692053819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132169 (A089869 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277913.P10010281991692053819

/-! ## A277913.P14718717813747149209

`record[A003991(A325711(n+1)+A003991(n+1))]`
-/

namespace A277913.P14718717813747149209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A325711 (n + 1) + A003991 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277913.P14718717813747149209

/-! ## A277913.P9054150201814897641

`A089867(A184676(n+1))+1`
-/

namespace A277913.P9054150201814897641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A184676 (n + 1)).toNat + 1

end

end A277913.P9054150201814897641

/-! ## A277913.P7350328803635383935

`∏{e}[A026565(n+3), #]`
-/

namespace A277913.P7350328803635383935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277913.P7350328803635383935

/-!
# A277914: a(n) is the number of zeros minus the number of ones among the first n terms of A076478.

The programs for A277914, there is no canonical definition to state claims against.
-/

/-! ## A277914.P2894455964941274940

`(3*n+2)%eq[2, A233136(n+1)]`
-/

namespace A277914.P2894455964941274940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) % SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277914.P2894455964941274940

/-! ## A277914.P17249581503716067495

`A016789(n)-2*eq[2, A233136(n+1)]`
-/

namespace A277914.P17249581503716067495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A277914.P17249581503716067495

/-! ## A277914.P6861964135454606019

`A008486(n)-A004275(eq[2, A233136(n+1)])`
-/

namespace A277914.P6861964135454606019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277914.P6861964135454606019

/-! ## A277914.P6422464808205063519

`(3*n)%A233583(eq[2, A233136(n+1)])`
-/

namespace A277914.P6422464808205063519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n : ℤ) (A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A277914.P6422464808205063519

/-! ## A277914.P13716330259666554757

`∑[A188510(p?[A238895(n+1)])]`
-/

namespace A277914.P13716330259666554757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238895 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277914.P13716330259666554757

/-!
# A277916: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

The programs for A277916, there is no canonical definition to state claims against.
-/

/-! ## A277916.P11166852865946056098

`record[A285771(n)]`
-/

namespace A277916.P11166852865946056098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P11166852865946056098

/-! ## A277916.P8429638159311551654

`A285434(2*n)`
-/

namespace A277916.P8429638159311551654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285434 (2 * n)

end

end A277916.P8429638159311551654

/-! ## A277916.P2344908702396763845

`A285771(2*n)`
-/

namespace A277916.P2344908702396763845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 (2 * n)

end

end A277916.P2344908702396763845

/-! ## A277916.P17071170529574500382

`A288805(2*n)`
-/

namespace A277916.P17071170529574500382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (2 * n)

end

end A277916.P17071170529574500382

/-! ## A277916.P4347685591910519304

`record[A285434(n)-n%2]`
-/

namespace A277916.P4347685591910519304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285434 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P4347685591910519304

/-! ## A277916.P18089394606545248671

`record[A285434(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A277916.P18089394606545248671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A285434 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P18089394606545248671

/-! ## A277916.P4274286448311042863

`record[A288805(A006257(n)+1)]`
-/

namespace A277916.P4274286448311042863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P4274286448311042863

/-! ## A277916.P3334536669995852306

`record[A288805(A026741(n)+1)]`
-/

namespace A277916.P3334536669995852306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P3334536669995852306

/-! ## A277916.P13904561600873285294

`record[A288805(A093178(n)-1)]`
-/

namespace A277916.P13904561600873285294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P13904561600873285294

/-! ## A277916.P4733908114069957799

`record[A288805(A099375(n)-1)]`
-/

namespace A277916.P4733908114069957799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P4733908114069957799

/-! ## A277916.P8265342477655685271

`record[A288805(n/A093178(n))]`
-/

namespace A277916.P8265342477655685271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P8265342477655685271

/-! ## A277916.P5773696093875697845

`record[A288805(A000265(n+1)-1)]`
-/

namespace A277916.P5773696093875697845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P5773696093875697845

/-! ## A277916.P9609606790246152881

`record[A288805(n-A105812(n+1))]`
-/

namespace A277916.P9609606790246152881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 ((n : ℤ) - A105812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P9609606790246152881

/-! ## A277916.P3667808670888612368

`record[A288805(n)/A040929(n+1)]`
-/

namespace A277916.P3667808670888612368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288805 n : ℚ) / (A040929 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277916.P3667808670888612368

/-!
# A277917: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

The programs for A277917, the canonical program `A277917.P3941357166574701698` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277917 has offset 0).

The definition of A277917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277917.P5430927793703445287

`ceil(A282386(n)/11)`
-/

namespace A277917.P5430927793703445287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282386 n : ℚ) / 11⌉

end

end A277917.P5430927793703445287

namespace A277917

/-- `ceil(A282386(n)/11)` -/
def P5430927793703445287.Spec : Prop :=
  ∀ n, P5430927793703445287.a n = A277917 n

end A277917

/-! ## A277917.P3941357166574701698

`A006943(A164089(4*n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A277917

/-- `A006943(A164089(4*n+1))` -/
def P3941357166574701698.Spec : Prop :=
  ∀ n, P3941357166574701698.a n = A277917 n

theorem P3941357166574701698.correct : P3941357166574701698.Spec := by
  intro n
  simp only [A277917]

end A277917

/-! ## A277917.P16934087254517993612

`A006943(and(2*n, A003817(n)))`
-/

namespace A277917.P16934087254517993612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.land (2 * n : ℤ) (A003817 n)).toNat

end

end A277917.P16934087254517993612

namespace A277917

/-- `A006943(and(2*n, A003817(n)))` -/
def P16934087254517993612.Spec : Prop :=
  ∀ n, P16934087254517993612.a n = A277917 n

end A277917

/-! ## A277917.P14558580758619173381

`A006943(and(2*n, A006257(n)))`
-/

namespace A277917.P14558580758619173381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.land (2 * n : ℤ) (A006257 n)).toNat

end

end A277917.P14558580758619173381

namespace A277917

/-- `A006943(and(2*n, A006257(n)))` -/
def P14558580758619173381.Spec : Prop :=
  ∀ n, P14558580758619173381.a n = A277917 n

end A277917

/-! ## A277917.P2302343627274428567

`A282386(n)/A017281(A178334(n))`
-/

namespace A277917.P2302343627274428567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282386 n : ℚ) / (A017281 (A178334 n).toNat : ℚ)

end

end A277917.P2302343627274428567

namespace A277917

/-- `A282386(n)/A017281(A178334(n))` -/
def P2302343627274428567.Spec : Prop :=
  ∀ n, P2302343627274428567.a n = (A277917 n : ℚ)

end A277917

/-! ## A277917.P3313258887409381180

`A006943(A005843(n)%A062383(n))`
-/

namespace A277917.P3313258887409381180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.tmod (A005843 n) (A062383 n)).toNat

end

end A277917.P3313258887409381180

namespace A277917

/-- `A006943(A005843(n)%A062383(n))` -/
def P3313258887409381180.Spec : Prop :=
  ∀ n, P3313258887409381180.a n = A277917 n

end A277917

/-! ## A277917.P10907894798002797386

`A006943(A006257(2*n)-A006257(n))`
-/

namespace A277917.P10907894798002797386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A006257 (2 * n) - A006257 n).toNat

end

end A277917.P10907894798002797386

namespace A277917

/-- `A006943(A006257(2*n)-A006257(n))` -/
def P10907894798002797386.Spec : Prop :=
  ∀ n, P10907894798002797386.a n = A277917 n

end A277917

/-! ## A277917.P8650844543625078080

`A006943(and(A006257(n)-1, A005843(n)))`
-/

namespace A277917.P8650844543625078080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.land (A006257 n - 1) (A005843 n)).toNat

end

end A277917.P8650844543625078080

namespace A277917

/-- `A006943(and(A006257(n)-1, A005843(n)))` -/
def P8650844543625078080.Spec : Prop :=
  ∀ n, P8650844543625078080.a n = A277917 n

end A277917

/-! ## A277917.P18443275397510686219

`A006943(A006257(n)-and(1, A006257(n)))`
-/

namespace A277917.P18443275397510686219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A006257 n - Int.land 1 (A006257 n)).toNat

end

end A277917.P18443275397510686219

namespace A277917

/-- `A006943(A006257(n)-and(1, A006257(n)))` -/
def P18443275397510686219.Spec : Prop :=
  ∀ n, P18443275397510686219.a n = A277917 n

end A277917

/-! ## A277917.P9940763670479986028

`lcm(A004643(2*n), A285771(2*n))/A004643(2*n)`
-/

namespace A277917.P9940763670479986028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004643 (2 * n)) (A285771 (2 * n)) : ℚ) / (A004643 (2 * n) : ℚ)

end

end A277917.P9940763670479986028

namespace A277917

/-- `lcm(A004643(2*n), A285771(2*n))/A004643(2*n)` -/
def P9940763670479986028.Spec : Prop :=
  ∀ n, P9940763670479986028.a n = (A277917 n : ℚ)

end A277917

/-!
# A277918: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

The programs for A277918, the canonical program `A277918.P6699242724950859550` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277918 has offset 0).

The definition of A277918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277918.P10050187092279897912

`record[A285773(n)]`
-/

namespace A277918.P10050187092279897912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277918.P10050187092279897912

namespace A277918

/-- `record[A285773(n)]` -/
def P10050187092279897912.Spec : Prop :=
  ∀ n, P10050187092279897912.a n = A277918 n

end A277918

/-! ## A277918.P964696119968458379

`A285436(2*n)`
-/

namespace A277918.P964696119968458379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285436 (2 * n)

end

end A277918.P964696119968458379

namespace A277918

/-- `A285436(2*n)` -/
def P964696119968458379.Spec : Prop :=
  ∀ n, P964696119968458379.a n = A277918 n

end A277918

/-! ## A277918.P6268362333223793422

`A285773(2*n)`
-/

namespace A277918.P6268362333223793422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285773 (2 * n)

end

end A277918.P6268362333223793422

namespace A277918

/-- `A285773(2*n)` -/
def P6268362333223793422.Spec : Prop :=
  ∀ n, P6268362333223793422.a n = A277918 n

end A277918

/-! ## A277918.P13179666385900674411

`A288807(2*n)`
-/

namespace A277918.P13179666385900674411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (2 * n)

end

end A277918.P13179666385900674411

namespace A277918

/-- `A288807(2*n)` -/
def P13179666385900674411.Spec : Prop :=
  ∀ n, P13179666385900674411.a n = A277918 n

end A277918

/-! ## A277918.P10402945866514374209

`record[A288807(n)/(1+n%2)]`
-/

namespace A277918.P10402945866514374209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288807 n : ℚ) / ((1 + n % 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277918.P10402945866514374209

namespace A277918

/-- `record[A288807(n)/(1+n%2)]` -/
def P10402945866514374209.Spec : Prop :=
  ∀ n, P10402945866514374209.a n = (A277918 n : ℚ)

end A277918

/-! ## A277918.P6799489663985950224

`record[A285436(n)-a(n-1)]` with `a(0)=1`
-/

namespace A277918.P6799489663985950224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A285436 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277918.P6799489663985950224

namespace A277918

/-- `record[A285436(n)-a(n-1)]` -/
def P6799489663985950224.Spec : Prop :=
  ∀ n, P6799489663985950224.a n = A277918 n

end A277918

/-! ## A277918.P3220571558091994940

`and(A277933(n), A283216(n))`
-/

namespace A277918.P3220571558091994940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277933 n) (A283216 n)

end

end A277918.P3220571558091994940

namespace A277918

/-- `and(A277933(n), A283216(n))` -/
def P3220571558091994940.Spec : Prop :=
  ∀ n, P3220571558091994940.a n = A277918 n

end A277918

/-! ## A277918.P6699242724950859550

`and(A026644(n), A062878(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A277918

/-- `and(A026644(n), A062878(n))` -/
def P6699242724950859550.Spec : Prop :=
  ∀ n, P6699242724950859550.a n = A277918 n

theorem P6699242724950859550.correct : P6699242724950859550.Spec := by
  intro n
  simp only [A277918]

end A277918

/-! ## A277918.P9435378623184579600

`and(A026644(n), A277933(n))`
-/

namespace A277918.P9435378623184579600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A277933 n)

end

end A277918.P9435378623184579600

namespace A277918

/-- `and(A026644(n), A277933(n))` -/
def P9435378623184579600.Spec : Prop :=
  ∀ n, P9435378623184579600.a n = A277918 n

end A277918

/-! ## A277918.P2291666639637191739

`and(A083322(n+1), A277933(n))`
-/

namespace A277918.P2291666639637191739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083322 (n + 1)) (A277933 n)

end

end A277918.P2291666639637191739

namespace A277918

/-- `and(A083322(n+1), A277933(n))` -/
def P2291666639637191739.Spec : Prop :=
  ∀ n, P2291666639637191739.a n = A277918 n

end A277918

/-! ## A277918.P1293542198221795194

`record[and(A288807(n+1), A288807(n))]`
-/

namespace A277918.P1293542198221795194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288807 (n + 1)) (A288807 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277918.P1293542198221795194

namespace A277918

/-- `record[and(A288807(n+1), A288807(n))]` -/
def P1293542198221795194.Spec : Prop :=
  ∀ n, P1293542198221795194.a n = A277918 n

end A277918

/-! ## A277918.P14409494898154740348

`and(A112447(2*n), A285479(2*n))`
-/

namespace A277918.P14409494898154740348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 (2 * n)) (A285479 (2 * n))

end

end A277918.P14409494898154740348

namespace A277918

/-- `and(A112447(2*n), A285479(2*n))` -/
def P14409494898154740348.Spec : Prop :=
  ∀ n, P14409494898154740348.a n = A277918 n

end A277918

/-! ## A277918.P10403677206663678426

`and(A168648(n), A277933(n))`
-/

namespace A277918.P10403677206663678426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168648 n) (A277933 n)

end

end A277918.P10403677206663678426

namespace A277918

/-- `and(A168648(n), A277933(n))` -/
def P10403677206663678426.Spec : Prop :=
  ∀ n, P10403677206663678426.a n = A277918 n

end A277918

/-! ## A277918.P8711247412299438489

`record[gcd(A288807(n), A288808(n+1))]`
-/

namespace A277918.P8711247412299438489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288807 n) (A288808 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277918.P8711247412299438489

namespace A277918

/-- `record[gcd(A288807(n), A288808(n+1))]` -/
def P8711247412299438489.Spec : Prop :=
  ∀ n, (P8711247412299438489.a n : ℤ) = A277918 n

end A277918

/-! ## A277918.P17420809917365720745

`and(A062878(n), A266284(n))`
-/

namespace A277918.P17420809917365720745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 n) (A266284 n)

end

end A277918.P17420809917365720745

namespace A277918

/-- `and(A062878(n), A266284(n))` -/
def P17420809917365720745.Spec : Prop :=
  ∀ n, P17420809917365720745.a n = A277918 n

end A277918

/-! ## A277918.P3244570288651045788

`and(A062878(n), A266980(n))`
-/

namespace A277918.P3244570288651045788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 n) (A266980 n)

end

end A277918.P3244570288651045788

namespace A277918

/-- `and(A062878(n), A266980(n))` -/
def P3244570288651045788.Spec : Prop :=
  ∀ n, P3244570288651045788.a n = A277918 n

end A277918

/-! ## A277918.P1143253008468089806

`and(A266284(n), A277933(n))`
-/

namespace A277918.P1143253008468089806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266284 n) (A277933 n)

end

end A277918.P1143253008468089806

namespace A277918

/-- `and(A266284(n), A277933(n))` -/
def P1143253008468089806.Spec : Prop :=
  ∀ n, P1143253008468089806.a n = A277918 n

end A277918

/-! ## A277918.P1170035129340297711

`and(A266980(n), A277933(n))`
-/

namespace A277918.P1170035129340297711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266980 n) (A277933 n)

end

end A277918.P1170035129340297711

namespace A277918

/-- `and(A266980(n), A277933(n))` -/
def P1170035129340297711.Spec : Prop :=
  ∀ n, P1170035129340297711.a n = A277918 n

end A277918

/-! ## A277918.P17258804725230955803

`floor(A001317(2*n)/A000079(n))`
-/

namespace A277918.P17258804725230955803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 (2 * n) : ℚ) / (A000079 n : ℚ)⌋

end

end A277918.P17258804725230955803

namespace A277918

/-- `floor(A001317(2*n)/A000079(n))` -/
def P17258804725230955803.Spec : Prop :=
  ∀ n, P17258804725230955803.a n = A277918 n

end A277918

/-! ## A277918.P4391854270410137383

`floor(A001317(2*n)/A016116(2*n))`
-/

namespace A277918.P4391854270410137383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 (2 * n) : ℚ) / (A016116 (2 * n) : ℚ)⌋

end

end A277918.P4391854270410137383

namespace A277918

/-- `floor(A001317(2*n)/A016116(2*n))` -/
def P4391854270410137383.Spec : Prop :=
  ∀ n, P4391854270410137383.a n = A277918 n

end A277918

/-!
# A277919: Triangle read by rows: CL(n,k) is the number of labeled subgraphs with k edges of the n-cycle C_n.

The programs for A277919, the canonical program `A277919.P7047885698430682018` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277919 has offset 0).

The definition of A277919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277919.P7047885698430682018

`2*A105306(n+1)-A055587(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277919

/-- `2*A105306(n+1)-A055587(n)` -/
def P7047885698430682018.Spec : Prop :=
  ∀ n, P7047885698430682018.a n = A277919 n

theorem P7047885698430682018.correct : P7047885698430682018.Spec := by
  intro n
  simp only [A277919]

end A277919

/-! ## A277919.P1271715309123749833

`A062110(n)+A106195(n)-A055587(n)`
-/

namespace A277919.P1271715309123749833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 n + (A106195 n - A055587 n)

end

end A277919.P1271715309123749833

namespace A277919

/-- `A062110(n)+A106195(n)-A055587(n)` -/
def P1271715309123749833.Spec : Prop :=
  ∀ n, P1271715309123749833.a n = A277919 n

end A277919

/-! ## A277919.P16403400200565999688

`A208511(A038722(n+1))+Δ[A055587(n)]`
-/

namespace A277919.P16403400200565999688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208511 (A038722 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A277919.P16403400200565999688

namespace A277919

/-- `A208511(A038722(n+1))+Δ[A055587(n)]` -/
def P16403400200565999688.Spec : Prop :=
  ∀ n, P16403400200565999688.a n = A277919 n

end A277919

/-! ## A277919.P5750163316125255896

`A062110(n)+A055807(A014132(n+1))`
-/

namespace A277919.P5750163316125255896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 n + A055807 (A014132 (n + 1)).toNat

end

end A277919.P5750163316125255896

namespace A277919

/-- `A062110(n)+A055807(A014132(n+1))` -/
def P5750163316125255896.Spec : Prop :=
  ∀ n, P5750163316125255896.a n = A277919 n

end A277919

/-! ## A277919.P5735415789267298614

`A055807(A014132(n+1))+2*A105306(n+1)-A106195(n)`
-/

namespace A277919.P5735415789267298614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A014132 (n + 1)).toNat + (2 * A105306 (n + 1) - A106195 n)

end

end A277919.P5735415789267298614

namespace A277919

/-- `A055807(A014132(n+1))+2*A105306(n+1)-A106195(n)` -/
def P5735415789267298614.Spec : Prop :=
  ∀ n, P5735415789267298614.a n = A277919 n

end A277919

/-! ## A277919.P595216039945662116

`A004277(A105306(n+1))-A055587(n)`
-/

namespace A277919.P595216039945662116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A105306 (n + 1)).toNat - A055587 n

end

end A277919.P595216039945662116

namespace A277919

/-- `A004277(A105306(n+1))-A055587(n)` -/
def P595216039945662116.Spec : Prop :=
  ∀ n, P595216039945662116.a n = A277919 n

end A277919

/-!
# A277920: Number of positive walks with n steps {-4,-3,-2,-1,0,1,2,3,4} starting at the origin, ending at altitude 1, and staying strictly above the x-axis.

The programs for A277920, there is no canonical definition to state claims against.
-/

/-! ## A277920.P4702849348943067567

`A003056(A206226(n))*A136704(n+1)`
-/

namespace A277920.P4702849348943067567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A206226 n).toNat * A136704 (n + 1)

end

end A277920.P4702849348943067567

/-! ## A277920.P16351306099218701037

`A002264(Δ[A049426(n)])`
-/

namespace A277920.P16351306099218701037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A277920.P16351306099218701037

/-!
# A277921: Number of positive walks with n steps {-4,-3,-2,-1,0,1,2,3,4} starting at the origin, ending at altitude 2, and staying strictly above the x-axis.

The programs for A277921, there is no canonical definition to state claims against.
-/

/-! ## A277921.P1908231257785875814

`A008624(A114174(n)-A006095(n))`
-/

namespace A277921.P1908231257785875814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A114174 n - A006095 n).toNat

end

end A277921.P1908231257785875814

/-! ## A277921.P10530628132523541182

`A077613(n+1)-A344612(A152686(n))`
-/

namespace A277921.P10530628132523541182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077613 (n + 1) - A344612 (A152686 n).toNat

end

end A277921.P10530628132523541182

/-!
# A277922: Number of positive walks with n steps {-4,-3,-2,-1,1,2,3,4} starting at the origin, ending at altitude 1, and staying strictly above the x-axis.

The programs for A277922, there is no canonical definition to state claims against.
-/

/-! ## A277922.P7053433791016260545

`A008615(A068106(6*n))`
-/

namespace A277922.P7053433791016260545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A068106 (6 * n)).toNat

end

end A277922.P7053433791016260545

/-! ## A277922.P4700736951884724595

`A091226(A174249(n)+n)`
-/

namespace A277922.P4700736951884724595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A174249 n + (n : ℤ)).toNat

end

end A277922.P4700736951884724595

/-!
# A277923: Number of positive walks with n steps {-4,-3,-2,-1,1,2,3,4} starting at the origin, ending at altitude 2, and staying strictly above the x-axis.

The programs for A277923, there is no canonical definition to state claims against.
-/

/-! ## A277923.P8403938036164933590

`A103221(∑[A222900(n+1)])`
-/

namespace A277923.P8403938036164933590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277923.P8403938036164933590

/-! ## A277923.P9008531887666647526

`A054898(∑[A054095(n+3)])`
-/

namespace A277923.P9008531887666647526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054095 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277923.P9008531887666647526

/-!
# A277924: a(n) = Sum_{i=0..n+1} binomial(2*n,n-i+1).

The programs for A277924, the canonical program `A277924.P11092315076119952202` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277924 has offset 0).

The definition of A277924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1, C(2*n, n-#+1)]` (program `A277924.P11092315076119952202`, by `A277924.P11092315076119952202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277924.P6170571158394104892

`((3*n+1)*A000108(n)+4^n)/2`
-/

namespace A277924.P6170571158394104892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1 : ℤ) * A000108 n + (4 ^ n : ℤ) : ℚ) / 2

end

end A277924.P6170571158394104892

namespace A277924

/-- `((3*n+1)*A000108(n)+4^n)/2` -/
def P6170571158394104892.Spec : Prop :=
  ∀ n, P6170571158394104892.a n = (A277924 n : ℚ)

end A277924

/-! ## A277924.P11092315076119952202

`∑{#}[n+1, C(2*n, n-#+1)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277924

/-- `∑{#}[n+1, C(2*n, n-#+1)]` -/
def P11092315076119952202.Spec : Prop :=
  ∀ n, (P11092315076119952202.a n : ℤ) = A277924 n

theorem P11092315076119952202.correct : P11092315076119952202.Spec := by
  intro n
  simp only [A277924]

end A277924

/-! ## A277924.P10197728507492306935

`Δ[A360168(n)]`
-/

namespace A277924.P10197728507492306935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277924.P10197728507492306935

namespace A277924

/-- `Δ[A360168(n)]` -/
def P10197728507492306935.Spec : Prop :=
  ∀ n, P10197728507492306935.a n = A277924 n

end A277924

/-! ## A277924.P13709748160015081077

`Δ[A088218(n)]+ceil(4^n/2)`
-/

namespace A277924.P13709748160015081077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈(4 ^ n : ℚ) / 2⌉

end

end A277924.P13709748160015081077

namespace A277924

/-- `Δ[A088218(n)]+ceil(4^n/2)` -/
def P13709748160015081077.Spec : Prop :=
  ∀ n, P13709748160015081077.a n = A277924 n

end A277924

/-! ## A277924.P15431982985121928956

`A032443(n)+A001791(n)`
-/

namespace A277924.P15431982985121928956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n + A001791 n

end

end A277924.P15431982985121928956

namespace A277924

/-- `A032443(n)+A001791(n)` -/
def P15431982985121928956.Spec : Prop :=
  ∀ n, P15431982985121928956.a n = A277924 n

end A277924

/-! ## A277924.P5263632567629357653

`Δ[A006095(n)+A005317(n)]`
-/

namespace A277924.P5263632567629357653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A005317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277924.P5263632567629357653

namespace A277924

/-- `Δ[A006095(n)+A005317(n)]` -/
def P5263632567629357653.Spec : Prop :=
  ∀ n, P5263632567629357653.a n = A277924 n

end A277924

/-! ## A277924.P13284297711104369309

`A006516(n)+Δ[A005317(n)]`
-/

namespace A277924.P13284297711104369309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + (f1 (n + 1) - f1 n)

end

end A277924.P13284297711104369309

namespace A277924

/-- `A006516(n)+Δ[A005317(n)]` -/
def P13284297711104369309.Spec : Prop :=
  ∀ n, P13284297711104369309.a n = A277924 n

end A277924

/-! ## A277924.P16114640068654129912

`A081294(n)+Δ[A088218(n)]`
-/

namespace A277924.P16114640068654129912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + (f1 (n + 1) - f1 n)

end

end A277924.P16114640068654129912

namespace A277924

/-- `A081294(n)+Δ[A088218(n)]` -/
def P16114640068654129912.Spec : Prop :=
  ∀ n, P16114640068654129912.a n = A277924 n

end A277924

/-! ## A277924.P14996293443342729719

`A246472(n)+A108958(n+1)`
-/

namespace A277924.P14996293443342729719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246472 n + A108958 (n + 1)

end

end A277924.P14996293443342729719

namespace A277924

/-- `A246472(n)+A108958(n+1)` -/
def P14996293443342729719.Spec : Prop :=
  ∀ n, P14996293443342729719.a n = A277924 n

end A277924

/-! ## A277924.P10301628688533523133

`A114121(n+1)-A032443(n)`
-/

namespace A277924.P10301628688533523133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114121 (n + 1) - A032443 n

end

end A277924.P10301628688533523133

namespace A277924

/-- `A114121(n+1)-A032443(n)` -/
def P10301628688533523133.Spec : Prop :=
  ∀ n, P10301628688533523133.a n = A277924 n

end A277924

/-! ## A277924.P12391587689238505951

`A360168(n+1)-A360168(n)`
-/

namespace A277924.P12391587689238505951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360168 (n + 1) - A360168 n

end

end A277924.P12391587689238505951

namespace A277924

/-- `A360168(n+1)-A360168(n)` -/
def P12391587689238505951.Spec : Prop :=
  ∀ n, P12391587689238505951.a n = A277924 n

end A277924

/-! ## A277924.P2486046778750134849

`A027306(2*n)+A001791(n)`
-/

namespace A277924.P2486046778750134849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (2 * n) + A001791 n

end

end A277924.P2486046778750134849

namespace A277924

/-- `A027306(2*n)+A001791(n)` -/
def P2486046778750134849.Spec : Prop :=
  ∀ n, P2486046778750134849.a n = A277924 n

end A277924

/-! ## A277924.P12003344931628025614

`A058622(2*n)+A001700(n)`
-/

namespace A277924.P12003344931628025614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n) + A001700 n

end

end A277924.P12003344931628025614

namespace A277924

/-- `A058622(2*n)+A001700(n)` -/
def P12003344931628025614.Spec : Prop :=
  ∀ n, P12003344931628025614.a n = A277924 n

end A277924

/-! ## A277924.P13753327224410628515

`A037952(2*n)+A032443(n)`
-/

namespace A277924.P13753327224410628515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + A032443 n

end

end A277924.P13753327224410628515

namespace A277924

/-- `A037952(2*n)+A032443(n)` -/
def P13753327224410628515.Spec : Prop :=
  ∀ n, P13753327224410628515.a n = A277924 n

end A277924

/-! ## A277924.P8959014237014157235

`A294175(2*n)+A001700(n)`
-/

namespace A277924.P8959014237014157235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (2 * n) + A001700 n

end

end A277924.P8959014237014157235

namespace A277924

/-- `A294175(2*n)+A001700(n)` -/
def P8959014237014157235.Spec : Prop :=
  ∀ n, P8959014237014157235.a n = A277924 n

end A277924

/-! ## A277924.P3340735691280006126

`A001700(n)+A068551(n)/2`
-/

namespace A277924.P3340735691280006126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 n : ℚ) + (A068551 n : ℚ) / 2

end

end A277924.P3340735691280006126

namespace A277924

/-- `A001700(n)+A068551(n)/2` -/
def P3340735691280006126.Spec : Prop :=
  ∀ n, P3340735691280006126.a n = (A277924 n : ℚ)

end A277924

/-! ## A277924.P9571821366711666331

`A032443(n)+n*A000108(n)`
-/

namespace A277924.P9571821366711666331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n + (n : ℤ) * A000108 n

end

end A277924.P9571821366711666331

namespace A277924

/-- `A032443(n)+n*A000108(n)` -/
def P9571821366711666331.Spec : Prop :=
  ∀ n, P9571821366711666331.a n = A277924 n

end A277924

/-! ## A277924.P12075164261913257463

`A007008(2*n+1)+A001700(n)`
-/

namespace A277924.P12075164261913257463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007008 (2 * n + 1) + A001700 n

end

end A277924.P12075164261913257463

namespace A277924

/-- `A007008(2*n+1)+A001700(n)` -/
def P12075164261913257463.Spec : Prop :=
  ∀ n, P12075164261913257463.a n = A277924 n

end A277924

/-! ## A277924.P9296308383945381803

`A116406(2*n+1)+A001791(n)`
-/

namespace A277924.P9296308383945381803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (2 * n + 1) + A001791 n

end

end A277924.P9296308383945381803

namespace A277924

/-- `A116406(2*n+1)+A001791(n)` -/
def P9296308383945381803.Spec : Prop :=
  ∀ n, P9296308383945381803.a n = A277924 n

end A277924

/-! ## A277924.P1945702131176448361

`A088218(n+1)+A058622(2*n)`
-/

namespace A277924.P1945702131176448361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A058622 (2 * n)

end

end A277924.P1945702131176448361

namespace A277924

/-- `A088218(n+1)+A058622(2*n)` -/
def P1945702131176448361.Spec : Prop :=
  ∀ n, P1945702131176448361.a n = A277924 n

end A277924

/-!
# A277925: Odd squares and 8 times odd squares, sorted.

The programs for A277925, the canonical program `A277925.P6334953461462566650` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277925 has offset 1).

The definition of A277925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277925.P6334953461462566650

`∪[(2*n+1)², 8*(2*n+1)²]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277925

/-- `∪[(2*n+1)², 8*(2*n+1)²]` -/
def P6334953461462566650.Spec : Prop :=
  ∀ n, (P6334953461462566650.a n : ℤ) = A277925 (n + 1)

theorem P6334953461462566650.correct : P6334953461462566650.Spec := by
  intro n
  simp only [A277925, Nat.add_sub_cancel]

end A277925

/-! ## A277925.P8889697947535538971

`∩[A096033(n+1), A329779(n+1)]`
-/

namespace A277925.P8889697947535538971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277925.P8889697947535538971

namespace A277925

/-- `∩[A096033(n+1), A329779(n+1)]` -/
def P8889697947535538971.Spec : Prop :=
  ∀ n, (P8889697947535538971.a n : ℤ) = A277925 (n + 1)

end A277925

/-! ## A277925.P9908891837613572658

`eq[A040831(n), A214304(n)]`
-/

namespace A277925.P9908891837613572658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040831 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277925.P9908891837613572658

namespace A277925

/-- `eq[A040831(n), A214304(n)]` -/
def P9908891837613572658.Spec : Prop :=
  ∀ n, (P9908891837613572658.a n : ℤ) = A277925 (n + 1)

end A277925

/-! ## A277925.P2803585670534377496

`eq[1, A181563(A004277(n))+2]`
-/

namespace A277925.P2803585670534377496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181563 (A004277 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277925.P2803585670534377496

namespace A277925

/-- `eq[1, A181563(A004277(n))+2]` -/
def P2803585670534377496.Spec : Prop :=
  ∀ n, (P2803585670534377496.a n : ℤ) = A277925 (n + 1)

end A277925

/-! ## A277925.P7646862494273219808

`eq[A057428(n+1), A181563(2*(n+1))]+1`
-/

namespace A277925.P7646862494273219808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181563 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277925.P7646862494273219808

namespace A277925

/-- `eq[A057428(n+1), A181563(2*(n+1))]+1` -/
def P7646862494273219808.Spec : Prop :=
  ∀ n, (P7646862494273219808.a n : ℤ) = A277925 (n + 1)

end A277925

/-! ## A277925.P10306604309840437292

`record[A154269(A001511(n+1))*A235872(n+1)]`
-/

namespace A277925.P10306604309840437292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A001511 (n + 1)).toNat * A235872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277925.P10306604309840437292

namespace A277925

/-- `record[A154269(A001511(n+1))*A235872(n+1)]` -/
def P10306604309840437292.Spec : Prop :=
  ∀ n, P10306604309840437292.a n = A277925 (n + 1)

end A277925

/-!
# A277926: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A277926, the canonical program `A277926.P8317576803823073803` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277926 has offset 0).

The definition of A277926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277926.P8471781789806043966

`A277560(n)-char[1]`
-/

namespace A277926.P8471781789806043966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277560 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277926.P8471781789806043966

namespace A277926

/-- `A277560(n)-char[1]` -/
def P8471781789806043966.Spec : Prop :=
  ∀ n, P8471781789806043966.a n = A277926 n

end A277926

/-! ## A277926.P8317576803823073803

`A094026(A266220(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A277926

/-- `A094026(A266220(n))` -/
def P8317576803823073803.Spec : Prop :=
  ∀ n, P8317576803823073803.a n = A277926 n

theorem P8317576803823073803.correct : P8317576803823073803.Spec := by
  intro n
  simp only [A277926]

end A277926

/-! ## A277926.P13716563043854875544

`xor(A063524(n), A277560(n))`
-/

namespace A277926.P13716563043854875544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A277560 n)

end

end A277926.P13716563043854875544

namespace A277926

/-- `xor(A063524(n), A277560(n))` -/
def P13716563043854875544.Spec : Prop :=
  ∀ n, P13716563043854875544.a n = A277926 n

end A277926

/-! ## A277926.P9955267962484402590

`and(-A027642(n), A277560(n))`
-/

namespace A277926.P9955267962484402590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A027642 n) (A277560 n)

end

end A277926.P9955267962484402590

namespace A277926

/-- `and(-A027642(n), A277560(n))` -/
def P9955267962484402590.Spec : Prop :=
  ∀ n, P9955267962484402590.a n = A277926 n

end A277926

/-! ## A277926.P8761110360975021672

`and(-A027642(n), A285473(n))`
-/

namespace A277926.P8761110360975021672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A027642 n) (A285473 n)

end

end A277926.P8761110360975021672

namespace A277926

/-- `and(-A027642(n), A285473(n))` -/
def P8761110360975021672.Spec : Prop :=
  ∀ n, P8761110360975021672.a n = A277926 n

end A277926

/-! ## A277926.P6777220884494581119

`and(-A138702(n), A277560(n))`
-/

namespace A277926.P6777220884494581119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A138702 n) (A277560 n)

end

end A277926.P6777220884494581119

namespace A277926

/-- `and(-A138702(n), A277560(n))` -/
def P6777220884494581119.Spec : Prop :=
  ∀ n, P6777220884494581119.a n = A277926 n

end A277926

/-! ## A277926.P3901272111668425599

`xor(A130543(n+2), A280410(n))`
-/

namespace A277926.P3901272111668425599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130543 (n + 2)) (A280410 n)

end

end A277926.P3901272111668425599

namespace A277926

/-- `xor(A130543(n+2), A280410(n))` -/
def P3901272111668425599.Spec : Prop :=
  ∀ n, P3901272111668425599.a n = A277926 n

end A277926

/-! ## A277926.P11824279900682772433

`A285473(n)-char[A208759(n+1)]`
-/

namespace A277926.P11824279900682772433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285473 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277926.P11824279900682772433

namespace A277926

/-- `A285473(n)-char[A208759(n+1)]` -/
def P11824279900682772433.Spec : Prop :=
  ∀ n, P11824279900682772433.a n = A277926 n

end A277926

/-! ## A277926.P16677142334837663783

`xor(char[A077664(n+1)], A280410(n))`
-/

namespace A277926.P16677142334837663783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A280410 n)

end

end A277926.P16677142334837663783

namespace A277926

/-- `xor(char[A077664(n+1)], A280410(n))` -/
def P16677142334837663783.Spec : Prop :=
  ∀ n, P16677142334837663783.a n = A277926 n

end A277926

/-! ## A277926.P17911456586837310128

`xor(A057427(n²-n), A280410(n))`
-/

namespace A277926.P17911456586837310128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (n ^ 2 - n)) (A280410 n)

end

end A277926.P17911456586837310128

namespace A277926

/-- `xor(A057427(n²-n), A280410(n))` -/
def P17911456586837310128.Spec : Prop :=
  ∀ n, P17911456586837310128.a n = A277926 n

end A277926

/-! ## A277926.P15593067633236616974

`A285473(n)-A060576(A166333(n))`
-/

namespace A277926.P15593067633236616974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285473 n - A060576 (A166333 n).toNat

end

end A277926.P15593067633236616974

namespace A277926

/-- `A285473(n)-A060576(A166333(n))` -/
def P15593067633236616974.Spec : Prop :=
  ∀ n, P15593067633236616974.a n = A277926 n

end A277926

/-! ## A277926.P11987196400650095129

`xor(A019426(A052928(n)), A280410(n))`
-/

namespace A277926.P11987196400650095129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019426 (A052928 n).toNat) (A280410 n)

end

end A277926.P11987196400650095129

namespace A277926

/-- `xor(A019426(A052928(n)), A280410(n))` -/
def P11987196400650095129.Spec : Prop :=
  ∀ n, P11987196400650095129.a n = A277926 n

end A277926

/-! ## A277926.P2532230332693505681

`xor(A060576(A134478(n)), A280410(n))`
-/

namespace A277926.P2532230332693505681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A134478 n).toNat) (A280410 n)

end

end A277926.P2532230332693505681

namespace A277926

/-- `xor(A060576(A134478(n)), A280410(n))` -/
def P2532230332693505681.Spec : Prop :=
  ∀ n, P2532230332693505681.a n = A277926 n

end A277926

/-! ## A277926.P17676556155130237133

`A277929(n)+A277560(n)-A277928(n)`
-/

namespace A277926.P17676556155130237133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n + A277560 n - A277928 n

end

end A277926.P17676556155130237133

namespace A277926

/-- `A277929(n)+A277560(n)-A277928(n)` -/
def P17676556155130237133.Spec : Prop :=
  ∀ n, P17676556155130237133.a n = A277926 n

end A277926

/-! ## A277926.P9510171642876926246

`A277928(n)+A277560(n)-A277936(n)`
-/

namespace A277926.P9510171642876926246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 n + A277560 n - A277936 n

end

end A277926.P9510171642876926246

namespace A277926

/-- `A277928(n)+A277560(n)-A277936(n)` -/
def P9510171642876926246.Spec : Prop :=
  ∀ n, P9510171642876926246.a n = A277926 n

end A277926

/-! ## A277926.P4926897998495769880

`xor(A060576(A060576(n)+n), A280410(n))`
-/

namespace A277926.P4926897998495769880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A060576 n + (n : ℤ)).toNat) (A280410 n)

end

end A277926.P4926897998495769880

namespace A277926

/-- `xor(A060576(A060576(n)+n), A280410(n))` -/
def P4926897998495769880.Spec : Prop :=
  ∀ n, P4926897998495769880.a n = A277926 n

end A277926

/-! ## A277926.P16089477511956198476

`A000042(n+1)*A267253(n²)-char[1]`
-/

namespace A277926.P16089477511956198476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A267253 (n ^ 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277926.P16089477511956198476

namespace A277926

/-- `A000042(n+1)*A267253(n²)-char[1]` -/
def P16089477511956198476.Spec : Prop :=
  ∀ n, P16089477511956198476.a n = A277926 n

end A277926

/-!
# A277927: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A277927, the canonical program `A277927.P18359111901922409751` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277927 has offset 0).

The definition of A277927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277927.P4562256212169000671

`A277560(n-char[1])`
-/

namespace A277927.P4562256212169000671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277560 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A277927.P4562256212169000671

namespace A277927

/-- `A277560(n-char[1])` -/
def P4562256212169000671.Spec : Prop :=
  ∀ n, P4562256212169000671.a n = A277927 n

end A277927

/-! ## A277927.P8682330336224700205

`A277926(n-char[1])`
-/

namespace A277927.P8682330336224700205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277926 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A277927.P8682330336224700205

namespace A277927

/-- `A277926(n-char[1])` -/
def P8682330336224700205.Spec : Prop :=
  ∀ n, P8682330336224700205.a n = A277927 n

end A277927

/-! ## A277927.P18359111901922409751

`gcd(A277560(n), A277926(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277927

/-- `gcd(A277560(n), A277926(n))` -/
def P18359111901922409751.Spec : Prop :=
  ∀ n, (P18359111901922409751.a n : ℤ) = A277927 n

theorem P18359111901922409751.correct : P18359111901922409751.Spec := by
  intro n
  simp only [A277927]

end A277927

/-! ## A277927.P3422816869679711298

`A277560(n)^(1-A063524(n))`
-/

namespace A277927.P3422816869679711298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277560 n : ℚ) ^ (1 - A063524 n : ℤ)

end

end A277927.P3422816869679711298

namespace A277927

/-- `A277560(n)^(1-A063524(n))` -/
def P3422816869679711298.Spec : Prop :=
  ∀ n, P3422816869679711298.a n = (A277927 n : ℚ)

end A277927

/-! ## A277927.P2528430621055893629

`A277926(n)^(1-A063524(n))`
-/

namespace A277927.P2528430621055893629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277926 n : ℚ) ^ (1 - A063524 n : ℤ)

end

end A277927.P2528430621055893629

namespace A277927

/-- `A277926(n)^(1-A063524(n))` -/
def P2528430621055893629.Spec : Prop :=
  ∀ n, P2528430621055893629.a n = (A277927 n : ℚ)

end A277927

/-! ## A277927.P9993859783074998873

`xor(1, char[A077664(n+1)]*A280410(n))`
-/

namespace A277927.P9993859783074998873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A280410 n)

end

end A277927.P9993859783074998873

namespace A277927

/-- `xor(1, char[A077664(n+1)]*A280410(n))` -/
def P9993859783074998873.Spec : Prop :=
  ∀ n, P9993859783074998873.a n = A277927 n

end A277927

/-! ## A277927.P13814983551380425251

`A277926(n)^A057979(A305117(n))`
-/

namespace A277927.P13814983551380425251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277926 n : ℚ) ^ (A057979 (A305117 n).toNat : ℤ)

end

end A277927.P13814983551380425251

namespace A277927

/-- `A277926(n)^A057979(A305117(n))` -/
def P13814983551380425251.Spec : Prop :=
  ∀ n, P13814983551380425251.a n = (A277927 n : ℚ)

end A277927

/-! ## A277927.P3547865535877566177

`and(A134824(A020915(n)), A277560(n))`
-/

namespace A277927.P3547865535877566177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 (A020915 n).toNat) (A277560 n)

end

end A277927.P3547865535877566177

namespace A277927

/-- `and(A134824(A020915(n)), A277560(n))` -/
def P3547865535877566177.Spec : Prop :=
  ∀ n, P3547865535877566177.a n = A277927 n

end A277927

/-! ## A277927.P3449758114244029138

`and(A134824(A134478(n)), A277560(n))`
-/

namespace A277927.P3449758114244029138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 (A134478 n).toNat) (A277560 n)

end

end A277927.P3449758114244029138

namespace A277927

/-- `and(A134824(A134478(n)), A277560(n))` -/
def P3449758114244029138.Spec : Prop :=
  ∀ n, P3449758114244029138.a n = A277927 n

end A277927

/-! ## A277927.P15561853613633908788

`A277560(n)^A278528(A000010(n+1))`
-/

namespace A277927.P15561853613633908788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277560 n : ℚ) ^ (A278528 (A000010 (n + 1)).toNat : ℤ)

end

end A277927.P15561853613633908788

namespace A277927

/-- `A277560(n)^A278528(A000010(n+1))` -/
def P15561853613633908788.Spec : Prop :=
  ∀ n, P15561853613633908788.a n = (A277927 n : ℚ)

end A277927

/-! ## A277927.P11181530747490050784

`xor(1, A019426(A052928(n))*A280410(n))`
-/

namespace A277927.P11181530747490050784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A019426 (A052928 n).toNat * A280410 n)

end

end A277927.P11181530747490050784

namespace A277927

/-- `xor(1, A019426(A052928(n))*A280410(n))` -/
def P11181530747490050784.Spec : Prop :=
  ∀ n, P11181530747490050784.a n = A277927 n

end A277927

/-! ## A277927.P414660009080746505

`xor(1, A060576(A134478(n))*A280410(n))`
-/

namespace A277927.P414660009080746505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A060576 (A134478 n).toNat * A280410 n)

end

end A277927.P414660009080746505

namespace A277927

/-- `xor(1, A060576(A134478(n))*A280410(n))` -/
def P414660009080746505.Spec : Prop :=
  ∀ n, P414660009080746505.a n = A277927 n

end A277927

/-! ## A277927.P9888059743173519838

`A277560(A063524(n)+n)+A063524(n)`
-/

namespace A277927.P9888059743173519838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277560 (A063524 n + (n : ℤ)).toNat + A063524 n

end

end A277927.P9888059743173519838

namespace A277927

/-- `A277560(A063524(n)+n)+A063524(n)` -/
def P9888059743173519838.Spec : Prop :=
  ∀ n, P9888059743173519838.a n = A277927 n

end A277927

/-! ## A277927.P11696476687299237608

`A277926(A063524(n)+n)+A063524(n)`
-/

namespace A277927.P11696476687299237608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277926 (A063524 n + (n : ℤ)).toNat + A063524 n

end

end A277927.P11696476687299237608

namespace A277927

/-- `A277926(A063524(n)+n)+A063524(n)` -/
def P11696476687299237608.Spec : Prop :=
  ∀ n, P11696476687299237608.a n = A277927 n

end A277927

/-! ## A277927.P6000990909674264537

`A277560(n)/A277560(n*A063524(n))`
-/

namespace A277927.P6000990909674264537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277560 n : ℚ) / (A277560 ((n : ℤ) * A063524 n).toNat : ℚ)

end

end A277927.P6000990909674264537

namespace A277927

/-- `A277560(n)/A277560(n*A063524(n))` -/
def P6000990909674264537.Spec : Prop :=
  ∀ n, P6000990909674264537.a n = (A277927 n : ℚ)

end A277927

/-! ## A277927.P12988443213383317522

`A277926(n)/A277926(n*A063524(n))`
-/

namespace A277927.P12988443213383317522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277926 n : ℚ) / (A277926 ((n : ℤ) * A063524 n).toNat : ℚ)

end

end A277927.P12988443213383317522

namespace A277927

/-- `A277926(n)/A277926(n*A063524(n))` -/
def P12988443213383317522.Spec : Prop :=
  ∀ n, P12988443213383317522.a n = (A277927 n : ℚ)

end A277927

/-!
# A277928: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A277928, the canonical program `A277928.P1065571810094185544` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277928 has offset 0).

The definition of A277928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277928.P1065571810094185544

`a(n%2)^(n+1)-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277928

/-- `a(n%2)^(n+1)-1` -/
def P1065571810094185544.Spec : Prop :=
  ∀ n, P1065571810094185544.a n = A277928 n

theorem P1065571810094185544.correct : P1065571810094185544.Spec := by
  intro n
  simp only [A277928]

end A277928

/-! ## A277928.P15483051059333575761

`ogf((1+2x-5x^2+5x^3+4x^4-4x^5)/(1-5x^2+4x^4))`
-/

namespace A277928.P15483051059333575761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -5, 5, 4, -4] [1, 0, -5, 0, 4] n

end

end A277928.P15483051059333575761

namespace A277928

/-- `ogf((1+2x-5x^2+5x^3+4x^4-4x^5)/(1-5x^2+4x^4))` -/
def P15483051059333575761.Spec : Prop :=
  ∀ n, P15483051059333575761.a n = A277928 n

end A277928

/-! ## A277928.P4090520677166848532

`A277929(n)+char[1]`
-/

namespace A277928.P4090520677166848532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277928.P4090520677166848532

namespace A277928

/-- `A277929(n)+char[1]` -/
def P4090520677166848532.Spec : Prop :=
  ∀ n, P4090520677166848532.a n = A277928 n

end A277928

/-! ## A277928.P13737614387270105497

`A277936(n)-char[1]`
-/

namespace A277928.P13737614387270105497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277928.P13737614387270105497

namespace A277928

/-- `A277936(n)-char[1]` -/
def P13737614387270105497.Spec : Prop :=
  ∀ n, P13737614387270105497.a n = A277928 n

end A277928

/-! ## A277928.P16167213239018971482

`A027642(n)*A277929(n)`
-/

namespace A277928.P16167213239018971482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A277929 n

end

end A277928.P16167213239018971482

namespace A277928

/-- `A027642(n)*A277929(n)` -/
def P16167213239018971482.Spec : Prop :=
  ∀ n, P16167213239018971482.a n = A277928 n

end A277928

/-! ## A277928.P3682692500591757767

`A124779(n)*A277929(n)`
-/

namespace A277928.P3682692500591757767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n * A277929 n

end

end A277928.P3682692500591757767

namespace A277928

/-- `A124779(n)*A277929(n)` -/
def P3682692500591757767.Spec : Prop :=
  ∀ n, P3682692500591757767.a n = A277928 n

end A277928

/-! ## A277928.P9630391667322280684

`A138702(n)*A277929(n)`
-/

namespace A277928.P9630391667322280684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138702 n * A277929 n

end

end A277928.P9630391667322280684

namespace A277928

/-- `A138702(n)*A277929(n)` -/
def P9630391667322280684.Spec : Prop :=
  ∀ n, P9630391667322280684.a n = A277928 n

end A277928

/-! ## A277928.P7524456661604564835

`A166333(n)*A277929(n)`
-/

namespace A277928.P7524456661604564835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n * A277929 n

end

end A277928.P7524456661604564835

namespace A277928

/-- `A166333(n)*A277929(n)` -/
def P7524456661604564835.Spec : Prop :=
  ∀ n, P7524456661604564835.a n = A277928 n

end A277928

/-! ## A277928.P4371346948143915612

`A224783(n)*A277929(n)`
-/

namespace A277928.P4371346948143915612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224783 n * A277929 n

end

end A277928.P4371346948143915612

namespace A277928

/-- `A224783(n)*A277929(n)` -/
def P4371346948143915612.Spec : Prop :=
  ∀ n, P4371346948143915612.a n = A277928 n

end A277928

/-! ## A277928.P17501803085664429234

`A277929(n)*A285068(n)`
-/

namespace A277928.P17501803085664429234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n * A285068 n

end

end A277928.P17501803085664429234

namespace A277928

/-- `A277929(n)*A285068(n)` -/
def P17501803085664429234.Spec : Prop :=
  ∀ n, P17501803085664429234.a n = A277928 n

end A277928

/-! ## A277928.P7808088497570543933

`A277929(n)*A288872(n)`
-/

namespace A277928.P7808088497570543933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n * A288872 n

end

end A277928.P7808088497570543933

namespace A277928

/-- `A277929(n)*A288872(n)` -/
def P7808088497570543933.Spec : Prop :=
  ∀ n, P7808088497570543933.a n = A277928 n

end A277928

/-! ## A277928.P16620121867473089919

`A277929(n)*A293668(n)`
-/

namespace A277928.P16620121867473089919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n * A293668 n

end

end A277928.P16620121867473089919

namespace A277928

/-- `A277929(n)*A293668(n)` -/
def P16620121867473089919.Spec : Prop :=
  ∀ n, P16620121867473089919.a n = A277928 n

end A277928

/-! ## A277928.P15237629502234330813

`A277929(n)*A369010(n)`
-/

namespace A277928.P15237629502234330813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n * A369010 n

end

end A277928.P15237629502234330813

namespace A277928

/-- `A277929(n)*A369010(n)` -/
def P15237629502234330813.Spec : Prop :=
  ∀ n, P15237629502234330813.a n = A277928 n

end A277928

/-! ## A277928.P7628263996971315817

`lcm(A020513(n), A277929(n))`
-/

namespace A277928.P7628263996971315817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020513 n) (A277929 n)

end

end A277928.P7628263996971315817

namespace A277928

/-- `lcm(A020513(n), A277929(n))` -/
def P7628263996971315817.Spec : Prop :=
  ∀ n, (P7628263996971315817.a n : ℤ) = A277928 n

end A277928

/-! ## A277928.P5302189735816367965

`xor(A063524(n), A277936(n))`
-/

namespace A277928.P5302189735816367965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A277936 n)

end

end A277928.P5302189735816367965

namespace A277928

/-- `xor(A063524(n), A277936(n))` -/
def P5302189735816367965.Spec : Prop :=
  ∀ n, P5302189735816367965.a n = A277928 n

end A277928

/-! ## A277928.P1636905557739562302

`xor(A157928(n), A280412(n))`
-/

namespace A277928.P1636905557739562302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157928 n) (A280412 n)

end

end A277928.P1636905557739562302

namespace A277928

/-- `xor(A157928(n), A280412(n))` -/
def P1636905557739562302.Spec : Prop :=
  ∀ n, P1636905557739562302.a n = A277928 n

end A277928

/-! ## A277928.P3904937933334841633

`A049076(n+1)*A277929(n)`
-/

namespace A277928.P3904937933334841633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1) * A277929 n

end

end A277928.P3904937933334841633

namespace A277928

/-- `A049076(n+1)*A277929(n)` -/
def P3904937933334841633.Spec : Prop :=
  ∀ n, P3904937933334841633.a n = A277928 n

end A277928

/-! ## A277928.P10682477851986351599

`(A063524(n)+1)*A277929(n)`
-/

namespace A277928.P10682477851986351599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A277929 n

end

end A277928.P10682477851986351599

namespace A277928

/-- `(A063524(n)+1)*A277929(n)` -/
def P10682477851986351599.Spec : Prop :=
  ∀ n, P10682477851986351599.a n = A277928 n

end A277928

/-! ## A277928.P12736366682139609202

`A089026(n+1)*A277929(n)`
-/

namespace A277928.P12736366682139609202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A277929 n

end

end A277928.P12736366682139609202

namespace A277928

/-- `A089026(n+1)*A277929(n)` -/
def P12736366682139609202.Spec : Prop :=
  ∀ n, P12736366682139609202.a n = A277928 n

end A277928

/-! ## A277928.P11876301087316457009

`A171905(n+1)*A277929(n)`
-/

namespace A277928.P11876301087316457009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1) * A277929 n

end

end A277928.P11876301087316457009

namespace A277928

/-- `A171905(n+1)*A277929(n)` -/
def P11876301087316457009.Spec : Prop :=
  ∀ n, P11876301087316457009.a n = A277928 n

end A277928

/-!
# A277929: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A277929, the canonical program `A277929.P7965098332852577246` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277929 has offset 0).

The definition of A277929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277929.P427332835756486951

`ogf((1+x-5x^2+10x^3+4x^4-8x^5)/(1-5x^2+4x^4))`
-/

namespace A277929.P427332835756486951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -5, 10, 4, -8] [1, 0, -5, 0, 4] n

end

end A277929.P427332835756486951

namespace A277929

/-- `ogf((1+x-5x^2+10x^3+4x^4-8x^5)/(1-5x^2+4x^4))` -/
def P427332835756486951.Spec : Prop :=
  ∀ n, P427332835756486951.a n = A277929 n

end A277929

/-! ## A277929.P1236773317861454842

`gcd(2, a(n-1))^(n+1)-1` with `a(0)=1, a(1)=1`
-/

namespace A277929.P1236773317861454842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.gcd 2 (a (n - 1)) ^ (n + 1) : ℤ) - 1

end

end A277929.P1236773317861454842

namespace A277929

/-- `gcd(2, a(n-1))^(n+1)-1` -/
def P1236773317861454842.Spec : Prop :=
  ∀ n, P1236773317861454842.a n = A277929 n

end A277929

/-! ## A277929.P8733252692274365725

`A277928(n-char[1])`
-/

namespace A277929.P8733252692274365725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A277929.P8733252692274365725

namespace A277929

/-- `A277928(n-char[1])` -/
def P8733252692274365725.Spec : Prop :=
  ∀ n, P8733252692274365725.a n = A277929 n

end A277929

/-! ## A277929.P14579719745459195985

`A277936(n-char[1])`
-/

namespace A277929.P14579719745459195985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A277929.P14579719745459195985

namespace A277929

/-- `A277936(n-char[1])` -/
def P14579719745459195985.Spec : Prop :=
  ∀ n, P14579719745459195985.a n = A277929 n

end A277929

/-! ## A277929.P5049628248616501741

`A277928(n)+a(n%2)^(n+1)-1` with `a(0)=1, a(1)=1`
-/

namespace A277929.P5049628248616501741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A277928 n + (a (n % 2) ^ (n + 1) - 1)

end

end A277929.P5049628248616501741

namespace A277929

/-- `A277928(n)+a(n%2)^(n+1)-1` -/
def P5049628248616501741.Spec : Prop :=
  ∀ n, P5049628248616501741.a n = A277929 n

end A277929

/-! ## A277929.P15267445020572253447

`A078485(A296065(n+2))`
-/

namespace A277929.P15267445020572253447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078485 (A296065 (n + 2)).toNat

end

end A277929.P15267445020572253447

namespace A277929

/-- `A078485(A296065(n+2))` -/
def P15267445020572253447.Spec : Prop :=
  ∀ n, P15267445020572253447.a n = A277929 n

end A277929

/-! ## A277929.P7965098332852577246

`A277928(n)+A159075(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A277929

/-- `A277928(n)+A159075(n)` -/
def P7965098332852577246.Spec : Prop :=
  ∀ n, P7965098332852577246.a n = A277929 n

theorem P7965098332852577246.correct : P7965098332852577246.Spec := by
  intro n
  simp only [A277929]

end A277929

/-! ## A277929.P14336351681537059607

`A277928(n)-A063524(n)`
-/

namespace A277929.P14336351681537059607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 n - A063524 n

end

end A277929.P14336351681537059607

namespace A277929

/-- `A277928(n)-A063524(n)` -/
def P14336351681537059607.Spec : Prop :=
  ∀ n, P14336351681537059607.a n = A277929 n

end A277929

/-! ## A277929.P188089782430766297

`A277928(n)/A027642(n)`
-/

namespace A277929.P188089782430766297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A027642 n : ℚ)

end

end A277929.P188089782430766297

namespace A277929

/-- `A277928(n)/A027642(n)` -/
def P188089782430766297.Spec : Prop :=
  ∀ n, P188089782430766297.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P16431344509957798257

`A277928(n)/A124779(n)`
-/

namespace A277929.P16431344509957798257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A124779 n : ℚ)

end

end A277929.P16431344509957798257

namespace A277929

/-- `A277928(n)/A124779(n)` -/
def P16431344509957798257.Spec : Prop :=
  ∀ n, P16431344509957798257.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P2323667699674086745

`A277928(n)/A138702(n)`
-/

namespace A277929.P2323667699674086745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A138702 n : ℚ)

end

end A277929.P2323667699674086745

namespace A277929

/-- `A277928(n)/A138702(n)` -/
def P2323667699674086745.Spec : Prop :=
  ∀ n, P2323667699674086745.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P11756251117470938429

`A277928(n)/A166333(n)`
-/

namespace A277929.P11756251117470938429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A166333 n : ℚ)

end

end A277929.P11756251117470938429

namespace A277929

/-- `A277928(n)/A166333(n)` -/
def P11756251117470938429.Spec : Prop :=
  ∀ n, P11756251117470938429.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P1564708189683076852

`A277928(n)/A224783(n)`
-/

namespace A277929.P1564708189683076852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A224783 n : ℚ)

end

end A277929.P1564708189683076852

namespace A277929

/-- `A277928(n)/A224783(n)` -/
def P1564708189683076852.Spec : Prop :=
  ∀ n, P1564708189683076852.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P7307408308558590534

`A277928(n)/A285068(n)`
-/

namespace A277929.P7307408308558590534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A285068 n : ℚ)

end

end A277929.P7307408308558590534

namespace A277929

/-- `A277928(n)/A285068(n)` -/
def P7307408308558590534.Spec : Prop :=
  ∀ n, P7307408308558590534.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P1189044919245692547

`A277928(n)/A288872(n)`
-/

namespace A277929.P1189044919245692547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A288872 n : ℚ)

end

end A277929.P1189044919245692547

namespace A277929

/-- `A277928(n)/A288872(n)` -/
def P1189044919245692547.Spec : Prop :=
  ∀ n, P1189044919245692547.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P7923968550956542067

`A277928(n)/A293668(n)`
-/

namespace A277929.P7923968550956542067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A293668 n : ℚ)

end

end A277929.P7923968550956542067

namespace A277929

/-- `A277928(n)/A293668(n)` -/
def P7923968550956542067.Spec : Prop :=
  ∀ n, P7923968550956542067.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P9441512636989052919

`A277928(n)/A369010(n)`
-/

namespace A277929.P9441512636989052919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A369010 n : ℚ)

end

end A277929.P9441512636989052919

namespace A277929

/-- `A277928(n)/A369010(n)` -/
def P9441512636989052919.Spec : Prop :=
  ∀ n, P9441512636989052919.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P9995192249478097343

`A277928(n)/A373565(n)`
-/

namespace A277929.P9995192249478097343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277928 n : ℚ) / (A373565 n : ℚ)

end

end A277929.P9995192249478097343

namespace A277929

/-- `A277928(n)/A373565(n)` -/
def P9995192249478097343.Spec : Prop :=
  ∀ n, P9995192249478097343.a n = (A277929 n : ℚ)

end A277929

/-! ## A277929.P868661078880424755

`gcd(A130706(n), A277936(n))`
-/

namespace A277929.P868661078880424755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A277936 n)

end

end A277929.P868661078880424755

namespace A277929

/-- `gcd(A130706(n), A277936(n))` -/
def P868661078880424755.Spec : Prop :=
  ∀ n, (P868661078880424755.a n : ℤ) = A277929 n

end A277929

/-! ## A277929.P17367253456293481560

`gcd(A169585(n), A277928(n))`
-/

namespace A277929.P17367253456293481560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A277928 n)

end

end A277929.P17367253456293481560

namespace A277929

/-- `gcd(A169585(n), A277928(n))` -/
def P17367253456293481560.Spec : Prop :=
  ∀ n, (P17367253456293481560.a n : ℤ) = A277929 n

end A277929

/-!
# A277930: Array of coefficients a(k,n) of the formal power series A(k,x) read by upwards antidiagonals, where A(k,x) = ((2*k+1)*x+sqrt(1+4*k*(k+1)*x^2))/(1-x^2), k>=0.

The programs for A277930, there is no canonical definition to state claims against.
-/

/-! ## A277930.P3825322075452293963

`and(A008288(n), A085474(A050534(n)))`
-/

namespace A277930.P3825322075452293963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008288 n) (A085474 (A050534 n).toNat)

end

end A277930.P3825322075452293963

/-! ## A277930.P2206603573407564845

`and(A008288(n), A142463(A000078(n)))`
-/

namespace A277930.P2206603573407564845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008288 n) (A142463 (A000078 n).toNat)

end

end A277930.P2206603573407564845

/-! ## A277930.P2488468306174788676

`A008288(n)-A054908(A034372(n+1))`
-/

namespace A277930.P2488468306174788676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A054908 (A034372 (n + 1)).toNat

end

end A277930.P2488468306174788676

/-! ## A277930.P11942129330940897921

`A008288(n)%A139566(A029494(n+1))`
-/

namespace A277930.P11942129330940897921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008288 n) (A139566 (A029494 (n + 1)).toNat)

end

end A277930.P11942129330940897921

/-! ## A277930.P5642723854296907452

`A008288(n)%col(A335480(3*n+2))`
-/

namespace A277930.P5642723854296907452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008288 n) (SequenceMachineLib.triCol (A335480 (3 * n + 2)).toNat : ℤ)

end

end A277930.P5642723854296907452

/-!
# A277931: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A277931, there is no canonical definition to state claims against.
-/

/-! ## A277931.P16566050638242420907

`A007088(A277933(n))`
-/

namespace A277931.P16566050638242420907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277933 n).toNat

end

end A277931.P16566050638242420907

/-! ## A277931.P8669919042256280615

`A007088(floor(A266382(n)/2^n))`
-/

namespace A277931.P8669919042256280615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A266382 n : ℚ) / (2 ^ n : ℚ)⌋.toNat

end

end A277931.P8669919042256280615

/-! ## A277931.P5264454160575459949

`A007088(and(A062878(n), A281216(n)))`
-/

namespace A277931.P5264454160575459949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A062878 n) (A281216 n)).toNat

end

end A277931.P5264454160575459949

/-! ## A277931.P14812630336289062009

`A007088(or(A274224(n), A277918(n)))`
-/

namespace A277931.P14812630336289062009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A274224 n) (A277918 n)).toNat

end

end A277931.P14812630336289062009

/-! ## A277931.P7957121891793650629

`A185544(2*A277933(n))`
-/

namespace A277931.P7957121891793650629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A277933 n).toNat

end

end A277931.P7957121891793650629

/-!
# A277932: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A277932, there is no canonical definition to state claims against.
-/

/-! ## A277932.P10096487999337603522

`A007088(A277934(n))`
-/

namespace A277932.P10096487999337603522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277934 n).toNat

end

end A277932.P10096487999337603522

/-! ## A277932.P8092624418235909905

`∏{p}[A277934(n), A305989(#)]`
-/

namespace A277932.P8092624418235909905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A305989 p

end

end A277932.P8092624418235909905

/-! ## A277932.P7519431654004480398

`A007088(and(∑[2^n], A266382(n)))`
-/

namespace A277932.P7519431654004480398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A266382 n)).toNat

end

end A277932.P7519431654004480398

/-! ## A277932.P3205743047748630742

`A007088(A266382(n)%-2^(n+1))`
-/

namespace A277932.P3205743047748630742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A266382 n) (-(2 ^ (n + 1) : ℤ))).toNat

end

end A277932.P3205743047748630742

/-! ## A277932.P16634206090642653804

`A007088(and(A038192(n), A281217(n)))`
-/

namespace A277932.P16634206090642653804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A038192 n) (A281217 n)).toNat

end

end A277932.P16634206090642653804

/-!
# A277933: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A277933, the canonical program `A277933.P1829904161806407735` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277933 has offset 0).

The definition of A277933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277933.P1483654024377111085

`or(A274224(n), A277918(n))`
-/

namespace A277933.P1483654024377111085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A274224 n) (A277918 n)

end

end A277933.P1483654024377111085

namespace A277933

/-- `or(A274224(n), A277918(n))` -/
def P1483654024377111085.Spec : Prop :=
  ∀ n, P1483654024377111085.a n = A277933 n

end A277933

/-! ## A277933.P1829904161806407735

`or(A273972(A052928(n)), A277918(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277933

/-- `or(A273972(A052928(n)), A277918(n))` -/
def P1829904161806407735.Spec : Prop :=
  ∀ n, P1829904161806407735.a n = A277933 n

theorem P1829904161806407735.correct : P1829904161806407735.Spec := by
  intro n
  simp only [A277933]

end A277933

/-! ## A277933.P14384472064491640108

`and(A062878(n), A281216(n))`
-/

namespace A277933.P14384472064491640108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 n) (A281216 n)

end

end A277933.P14384472064491640108

namespace A277933

/-- `and(A062878(n), A281216(n))` -/
def P14384472064491640108.Spec : Prop :=
  ∀ n, P14384472064491640108.a n = A277933 n

end A277933

/-! ## A277933.P3246748200251723605

`floor(A266382(n)/2^n)`
-/

namespace A277933.P3246748200251723605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266382 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A277933.P3246748200251723605

namespace A277933

/-- `floor(A266382(n)/2^n)` -/
def P3246748200251723605.Spec : Prop :=
  ∀ n, P3246748200251723605.a n = A277933 n

end A277933

/-! ## A277933.P8262370518749065250

`or(A000695(A285436(n)), A277918(n))`
-/

namespace A277933.P8262370518749065250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000695 (A285436 n).toNat) (A277918 n)

end

end A277933.P8262370518749065250

namespace A277933

/-- `or(A000695(A285436(n)), A277918(n))` -/
def P8262370518749065250.Spec : Prop :=
  ∀ n, P8262370518749065250.a n = A277933 n

end A277933

/-!
# A277934: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A277934, the canonical program `A277934.P4622125546588062441` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277934 has offset 0).

The definition of A277934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277934.P4622125546588062441

`and(A281217(n), A282388(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277934

/-- `and(A281217(n), A282388(n))` -/
def P4622125546588062441.Spec : Prop :=
  ∀ n, P4622125546588062441.a n = A277934 n

theorem P4622125546588062441.correct : P4622125546588062441.Spec := by
  intro n
  simp only [A277934]

end A277934

/-! ## A277934.P17135616339611159353

`A277933(n)/gcd(A000079(n), A277933(n))`
-/

namespace A277934.P17135616339611159353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277933 n : ℚ) / (Int.gcd (A000079 n) (A277933 n) : ℚ)

end

end A277934.P17135616339611159353

namespace A277934

/-- `A277933(n)/gcd(A000079(n), A277933(n))` -/
def P17135616339611159353.Spec : Prop :=
  ∀ n, P17135616339611159353.a n = (A277934 n : ℚ)

end A277934

/-! ## A277934.P10550143923228132287

`and(∑[2^n], A266382(n))`
-/

namespace A277934.P10550143923228132287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A266382 n)

end

end A277934.P10550143923228132287

namespace A277934

/-- `and(∑[2^n], A266382(n))` -/
def P10550143923228132287.Spec : Prop :=
  ∀ n, P10550143923228132287.a n = A277934 n

end A277934

/-! ## A277934.P6353477626495983679

`A266382(n)%A198633(n)`
-/

namespace A277934.P6353477626495983679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266382 n) (A198633 n)

end

end A277934.P6353477626495983679

namespace A277934

/-- `A266382(n)%A198633(n)` -/
def P6353477626495983679.Spec : Prop :=
  ∀ n, P6353477626495983679.a n = A277934 n

end A277934

/-! ## A277934.P13862202086188860121

`and(A118108(n), A282388(n))`
-/

namespace A277934.P13862202086188860121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A282388 n)

end

end A277934.P13862202086188860121

namespace A277934

/-- `and(A118108(n), A282388(n))` -/
def P13862202086188860121.Spec : Prop :=
  ∀ n, P13862202086188860121.a n = A277934 n

end A277934

/-! ## A277934.P13269298651189120342

`and(A266382(n), A281217(n))`
-/

namespace A277934.P13269298651189120342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A281217 n)

end

end A277934.P13269298651189120342

namespace A277934

/-- `and(A266382(n), A281217(n))` -/
def P13269298651189120342.Spec : Prop :=
  ∀ n, P13269298651189120342.a n = A277934 n

end A277934

/-! ## A277934.P15900060050080138405

`and(A266382(n), A282388(n))`
-/

namespace A277934.P15900060050080138405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A282388 n)

end

end A277934.P15900060050080138405

namespace A277934

/-- `and(A266382(n), A282388(n))` -/
def P15900060050080138405.Spec : Prop :=
  ∀ n, P15900060050080138405.a n = A277934 n

end A277934

/-! ## A277934.P1018647096224645470

`and(A266382(n), A283606(n))`
-/

namespace A277934.P1018647096224645470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A283606 n)

end

end A277934.P1018647096224645470

namespace A277934

/-- `and(A266382(n), A283606(n))` -/
def P1018647096224645470.Spec : Prop :=
  ∀ n, P1018647096224645470.a n = A277934 n

end A277934

/-! ## A277934.P2470926099156548453

`and(A266382(n), A284031(n))`
-/

namespace A277934.P2470926099156548453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A284031 n)

end

end A277934.P2470926099156548453

namespace A277934

/-- `and(A266382(n), A284031(n))` -/
def P2470926099156548453.Spec : Prop :=
  ∀ n, P2470926099156548453.a n = A277934 n

end A277934

/-! ## A277934.P10261389323198483138

`and(A266382(n), A284090(n))`
-/

namespace A277934.P10261389323198483138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A284090 n)

end

end A277934.P10261389323198483138

namespace A277934

/-- `and(A266382(n), A284090(n))` -/
def P10261389323198483138.Spec : Prop :=
  ∀ n, P10261389323198483138.a n = A277934 n

end A277934

/-! ## A277934.P17381530934974915305

`and(A266382(n), A284482(n))`
-/

namespace A277934.P17381530934974915305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A284482 n)

end

end A277934.P17381530934974915305

namespace A277934

/-- `and(A266382(n), A284482(n))` -/
def P17381530934974915305.Spec : Prop :=
  ∀ n, P17381530934974915305.a n = A277934 n

end A277934

/-! ## A277934.P14000488406216549964

`and(A266382(n), A286521(n))`
-/

namespace A277934.P14000488406216549964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A286521 n)

end

end A277934.P14000488406216549964

namespace A277934

/-- `and(A266382(n), A286521(n))` -/
def P14000488406216549964.Spec : Prop :=
  ∀ n, P14000488406216549964.a n = A277934 n

end A277934

/-! ## A277934.P15576583540477530929

`and(A266382(n), A290230(n))`
-/

namespace A277934.P15576583540477530929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A290230 n)

end

end A277934.P15576583540477530929

namespace A277934

/-- `and(A266382(n), A290230(n))` -/
def P15576583540477530929.Spec : Prop :=
  ∀ n, P15576583540477530929.a n = A277934 n

end A277934

/-! ## A277934.P15910237282074290161

`and(A266382(n), A290231(n))`
-/

namespace A277934.P15910237282074290161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A290231 n)

end

end A277934.P15910237282074290161

namespace A277934

/-- `and(A266382(n), A290231(n))` -/
def P15910237282074290161.Spec : Prop :=
  ∀ n, P15910237282074290161.a n = A277934 n

end A277934

/-! ## A277934.P14824286610087893180

`and(A266382(n), A290662(n))`
-/

namespace A277934.P14824286610087893180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A290662 n)

end

end A277934.P14824286610087893180

namespace A277934

/-- `and(A266382(n), A290662(n))` -/
def P14824286610087893180.Spec : Prop :=
  ∀ n, P14824286610087893180.a n = A277934 n

end A277934

/-! ## A277934.P8518658162119320987

`and(A038192(n), A281217(n))`
-/

namespace A277934.P8518658162119320987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038192 n) (A281217 n)

end

end A277934.P8518658162119320987

namespace A277934

/-- `and(A038192(n), A281217(n))` -/
def P8518658162119320987.Spec : Prop :=
  ∀ n, P8518658162119320987.a n = A277934 n

end A277934

/-! ## A277934.P12033370871077523827

`and(A249184(n), A281217(n))`
-/

namespace A277934.P12033370871077523827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249184 n) (A281217 n)

end

end A277934.P12033370871077523827

namespace A277934

/-- `and(A249184(n), A281217(n))` -/
def P12033370871077523827.Spec : Prop :=
  ∀ n, P12033370871077523827.a n = A277934 n

end A277934

/-! ## A277934.P3146350825694632263

`and(A266382(n), A281482(n))`
-/

namespace A277934.P3146350825694632263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 n) (A281482 n)

end

end A277934.P3146350825694632263

namespace A277934

/-- `and(A266382(n), A281482(n))` -/
def P3146350825694632263.Spec : Prop :=
  ∀ n, P3146350825694632263.a n = A277934 n

end A277934

/-! ## A277934.P15543649016624698521

`and(A267365(n), A281217(n))`
-/

namespace A277934.P15543649016624698521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267365 n) (A281217 n)

end

end A277934.P15543649016624698521

namespace A277934

/-- `and(A267365(n), A281217(n))` -/
def P15543649016624698521.Spec : Prop :=
  ∀ n, P15543649016624698521.a n = A277934 n

end A277934

/-! ## A277934.P3872859746053305799

`and(A037576(n+1), A282388(n))`
-/

namespace A277934.P3872859746053305799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037576 (n + 1)) (A282388 n)

end

end A277934.P3872859746053305799

namespace A277934

/-- `and(A037576(n+1), A282388(n))` -/
def P3872859746053305799.Spec : Prop :=
  ∀ n, P3872859746053305799.a n = A277934 n

end A277934

/-!
# A277935: Number of ways 2*n-1 people can vote on three candidates so that the Condorcet paradox arises.

The programs for A277935, the canonical program `A277935.P11391963306517879859` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277935 has offset 1).

The definition of A277935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277935.P16512286836803428491

`2*C(n+4, 5)`
-/

namespace A277935.P16512286836803428491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 4) 5

end

end A277935.P16512286836803428491

namespace A277935

/-- `2*C(n+4, 5)` -/
def P16512286836803428491.Spec : Prop :=
  ∀ n, (P16512286836803428491.a n : ℤ) = A277935 (n + 1)

theorem P16512286836803428491.correct : P16512286836803428491.Spec := by
  intro n
  simp only [A277935, Nat.add_sub_cancel, A277935.P16512286836803428491.a, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277935

/-! ## A277935.P11137763269516618761

`ogf(2x/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A277935.P11137763269516618761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -6, 15, -20, 15, -6, 1] n

end

end A277935.P11137763269516618761

namespace A277935

/-- `ogf(2x/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P11137763269516618761.Spec : Prop :=
  ∀ n, P11137763269516618761.a n = A277935 (n + 1)

end A277935

/-! ## A277935.P11391963306517879859

`2*A000389(n+4)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A277935

/-- `2*A000389(n+4)` -/
def P11391963306517879859.Spec : Prop :=
  ∀ n, P11391963306517879859.a n = A277935 (n + 1)

theorem P11391963306517879859.correct : P11391963306517879859.Spec := by
  intro n
  simp only [A277935, Nat.add_sub_cancel]

end A277935

/-! ## A277935.P7879815582526434539

`∑[∑[∑[∑[2*n]]]]`
-/

namespace A277935.P7879815582526434539
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277935.P7879815582526434539

namespace A277935

/-- `∑[∑[∑[∑[2*n]]]]` -/
def P7879815582526434539.Spec : Prop :=
  ∀ n, (P7879815582526434539.a n : ℤ) = A277935 (n + 1)

end A277935

/-! ## A277935.P12037015283246079535

`lcm(2, ∑[∑[∑[lcm(n, n+1)]]])`
-/

namespace A277935.P12037015283246079535
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277935.P12037015283246079535

namespace A277935

/-- `lcm(2, ∑[∑[∑[lcm(n, n+1)]]])` -/
def P12037015283246079535.Spec : Prop :=
  ∀ n, (P12037015283246079535.a n : ℤ) = A277935 (n + 1)

end A277935

/-! ## A277935.P16782439052399520484

`∑[∑[C((n+1)², 2)]]/(n+2)`
-/

namespace A277935.P16782439052399520484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)

end

end A277935.P16782439052399520484

namespace A277935

/-- `∑[∑[C((n+1)², 2)]]/(n+2)` -/
def P16782439052399520484.Spec : Prop :=
  ∀ n, P16782439052399520484.a n = (A277935 (n + 1) : ℚ)

end A277935

/-! ## A277935.P17747810089890383777

`floor(∑[∑[∑[∑[a(n-1)+2]]]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A277935.P17747810089890383777
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f4 =>
  f4 (n - 1) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277935.P17747810089890383777

namespace A277935

/-- `floor(∑[∑[∑[∑[a(n-1)+2]]]])` -/
def P17747810089890383777.Spec : Prop :=
  ∀ n, (P17747810089890383777.a n : ℤ) = A277935 (n + 1)

end A277935

/-! ## A277935.P17559597956026980165

`∑[∑[n²+n]]+a(n-1)` with `a(0)=0`
-/

namespace A277935.P17559597956026980165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A277935.P17559597956026980165

namespace A277935

/-- `∑[∑[n²+n]]+a(n-1)` -/
def P17559597956026980165.Spec : Prop :=
  ∀ n, (P17559597956026980165.a n : ℤ) = A277935 (n + 1)

end A277935

/-! ## A277935.P658598419058438461

`∑[∑[∑[∑[a(n-1)+4]]]]/2` with `a(0)=0`
-/

namespace A277935.P658598419058438461
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A277935.P658598419058438461

namespace A277935

/-- `∑[∑[∑[∑[a(n-1)+4]]]]/2` -/
def P658598419058438461.Spec : Prop :=
  ∀ n, P658598419058438461.a n = (A277935 (n + 1) : ℚ)

end A277935

/-! ## A277935.P6802965449817251828

`(n+4)/(n-1)*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A277935.P6802965449817251828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (n + 4 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 1)

end

end A277935.P6802965449817251828

namespace A277935

/-- `(n+4)/(n-1)*a(n-1)` -/
def P6802965449817251828.Spec : Prop :=
  ∀ n, P6802965449817251828.a n = (A277935 (n + 1) : ℚ)

end A277935

/-! ## A277935.P10841978042613575893

`a(n-1)-∑[∑[∑[a(n-1)-2]]]` with `a(0)=0`
-/

namespace A277935.P10841978042613575893
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277935.P10841978042613575893

namespace A277935

/-- `a(n-1)-∑[∑[∑[a(n-1)-2]]]` -/
def P10841978042613575893.Spec : Prop :=
  ∀ n, P10841978042613575893.a n = A277935 (n + 1)

end A277935

/-! ## A277935.P6210078331255499697

`A266732(n)/5`
-/

namespace A277935.P6210078331255499697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266732 n : ℚ) / 5

end

end A277935.P6210078331255499697

namespace A277935

/-- `A266732(n)/5` -/
def P6210078331255499697.Spec : Prop :=
  ∀ n, P6210078331255499697.a n = (A277935 (n + 1) : ℚ)

theorem P6210078331255499697.correct : P6210078331255499697.Spec := by
  intro n
  simp only [A277935, Nat.add_sub_cancel, A277935.P6210078331255499697.a, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, A266732, A266732.P1525120879752990614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277935

/-! ## A277935.P5700591602093790079

`A158874(n)/12`
-/

namespace A277935.P5700591602093790079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158874 n : ℚ) / 12

end

end A277935.P5700591602093790079

namespace A277935

/-- `A158874(n)/12` -/
def P5700591602093790079.Spec : Prop :=
  ∀ n, P5700591602093790079.a n = (A277935 (n + 1) : ℚ)

theorem P5700591602093790079.correct : P5700591602093790079.Spec := by
  intro n
  simp only [A277935, Nat.add_sub_cancel, A277935.P5700591602093790079.a, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, A158874, A158874.P5308552197139117171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277935

/-! ## A277935.P6487488622940853160

`∑[A033488(n)]/2`
-/

namespace A277935.P6487488622940853160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A277935.P6487488622940853160

namespace A277935

/-- `∑[A033488(n)]/2` -/
def P6487488622940853160.Spec : Prop :=
  ∀ n, P6487488622940853160.a n = (A277935 (n + 1) : ℚ)

end A277935

/-! ## A277935.P14116495744799734822

`∑[A033487(n)]/3`
-/

namespace A277935.P14116495744799734822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A277935.P14116495744799734822

namespace A277935

/-- `∑[A033487(n)]/3` -/
def P14116495744799734822.Spec : Prop :=
  ∀ n, P14116495744799734822.a n = (A277935 (n + 1) : ℚ)

end A277935

/-! ## A277935.P11370834487326173609

`∑[A162668(n)]/4`
-/

namespace A277935.P11370834487326173609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A277935.P11370834487326173609

namespace A277935

/-- `∑[A162668(n)]/4` -/
def P11370834487326173609.Spec : Prop :=
  ∀ n, P11370834487326173609.a n = (A277935 (n + 1) : ℚ)

end A277935

/-! ## A277935.P6827374181662442713

`2*(A323228(n)-1)`
-/

namespace A277935.P6827374181662442713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A323228 n - 1)

end

end A277935.P6827374181662442713

namespace A277935

/-- `2*(A323228(n)-1)` -/
def P6827374181662442713.Spec : Prop :=
  ∀ n, P6827374181662442713.a n = A277935 (n + 1)

theorem P6827374181662442713.correct : P6827374181662442713.Spec := by
  intro n
  simp only [A277935, Nat.add_sub_cancel, A277935.P6827374181662442713.a, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, A323228, A323228.P13154459719947854686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277935

/-! ## A277935.P1150260073720874510

`2/5*A174002(n)`
-/

namespace A277935.P1150260073720874510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A174002 n : ℚ)

end

end A277935.P1150260073720874510

namespace A277935

/-- `2/5*A174002(n)` -/
def P1150260073720874510.Spec : Prop :=
  ∀ n, P1150260073720874510.a n = (A277935 (n + 1) : ℚ)

theorem P1150260073720874510.correct : P1150260073720874510.Spec := by
  intro n
  simp only [A277935, Nat.add_sub_cancel, A277935.P1150260073720874510.a, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277935

/-! ## A277935.P11842116230425313683

`A081282(n)+∑[∑[n²]]`
-/

namespace A277935.P11842116230425313683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277935.P11842116230425313683

namespace A277935

/-- `A081282(n)+∑[∑[n²]]` -/
def P11842116230425313683.Spec : Prop :=
  ∀ n, P11842116230425313683.a n = A277935 (n + 1)

end A277935

/-! ## A277935.P1891486885778677259

`2*(A145127(n)-(n+1))`
-/

namespace A277935.P1891486885778677259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145127 n - (n + 1 : ℤ))

end

end A277935.P1891486885778677259

namespace A277935

/-- `2*(A145127(n)-(n+1))` -/
def P1891486885778677259.Spec : Prop :=
  ∀ n, P1891486885778677259.a n = A277935 (n + 1)

end A277935

/-!
# A277936: Decimal representation of the x-axis, from the left edge to the origin, or from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 7", based on the 5-celled von Neumann neighborhood.

The programs for A277936, the canonical program `A277936.P1158021992682693777` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277936 has offset 0).

The definition of A277936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277936.P303935819095340694

`ogf((1+3x-5x^2+4x^4)/(1-5x^2+4x^4))`
-/

namespace A277936.P303935819095340694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -5, 0, 4] [1, 0, -5, 0, 4] n

end

end A277936.P303935819095340694

namespace A277936

/-- `ogf((1+3x-5x^2+4x^4)/(1-5x^2+4x^4))` -/
def P303935819095340694.Spec : Prop :=
  ∀ n, P303935819095340694.a n = A277936 n

end A277936

/-! ## A277936.P1158021992682693777

`(4*a(n-2)+3)*n%2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277936

/-- `(4*a(n-2)+3)*n%2` -/
def P1158021992682693777.Spec : Prop :=
  ∀ n, (P1158021992682693777.a n : ℤ) = A277936 n

theorem P1158021992682693777.correct : P1158021992682693777.Spec := by
  intro n
  simp only [A277936]

end A277936

/-! ## A277936.P15694591518392668849

`a(gcd(2, n))+4*a(n-2)` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A277936.P15694591518392668849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  a (Nat.gcd 2 n) + 4 * a (n - 2)

end

end A277936.P15694591518392668849

namespace A277936

/-- `a(gcd(2, n))+4*a(n-2)` -/
def P15694591518392668849.Spec : Prop :=
  ∀ n, (P15694591518392668849.a n : ℤ) = A277936 n

end A277936

/-! ## A277936.P11493049540072848124

`or(4*a(n-2), a(n-2))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A277936.P11493049540072848124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  Nat.lor (4 * a (n - 2)) (a (n - 2))

end

end A277936.P11493049540072848124

namespace A277936

/-- `or(4*a(n-2), a(n-2))` -/
def P11493049540072848124.Spec : Prop :=
  ∀ n, (P11493049540072848124.a n : ℤ) = A277936 n

end A277936

/-! ## A277936.P10583139475615464606

`Δ[2^and(n, -a(n-1))]+a(n-1)` with `a(0)=1`
-/

namespace A277936.P10583139475615464606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 : ℚ) ^ (Int.land (n : ℤ) (SequenceMachineLib.roundAway (-f1 (n - 1))) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A277936.P10583139475615464606

namespace A277936

/-- `Δ[2^and(n, -a(n-1))]+a(n-1)` -/
def P10583139475615464606.Spec : Prop :=
  ∀ n, P10583139475615464606.a n = (A277936 n : ℚ)

end A277936

/-! ## A277936.P2345262738964882427

`A277928(n)+char[1]`
-/

namespace A277936.P2345262738964882427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277936.P2345262738964882427

namespace A277936

/-- `A277928(n)+char[1]` -/
def P2345262738964882427.Spec : Prop :=
  ∀ n, P2345262738964882427.a n = A277936 n

end A277936

/-! ## A277936.P17977221788671198827

`A224783(n+1)-1`
-/

namespace A277936.P17977221788671198827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224783 (n + 1) - 1

end

end A277936.P17977221788671198827

namespace A277936

/-- `A224783(n+1)-1` -/
def P17977221788671198827.Spec : Prop :=
  ∀ n, P17977221788671198827.a n = A277936 n

end A277936

/-! ## A277936.P2057299678419281266

`A277929(n)+2*char[1]`
-/

namespace A277936.P2057299678419281266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A277936.P2057299678419281266

namespace A277936

/-- `A277929(n)+2*char[1]` -/
def P2057299678419281266.Spec : Prop :=
  ∀ n, P2057299678419281266.a n = A277936 n

end A277936

/-! ## A277936.P15786094030309072987

`A087100(A266437(n))`
-/

namespace A277936.P15786094030309072987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (A266437 n).toNat

end

end A277936.P15786094030309072987

namespace A277936

/-- `A087100(A266437(n))` -/
def P15786094030309072987.Spec : Prop :=
  ∀ n, P15786094030309072987.a n = A277936 n

end A277936

/-! ## A277936.P14466243993770312043

`A280412(n)+A062157(n)`
-/

namespace A277936.P14466243993770312043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280412 n + A062157 n

end

end A277936.P14466243993770312043

namespace A277936

/-- `A280412(n)+A062157(n)` -/
def P14466243993770312043.Spec : Prop :=
  ∀ n, P14466243993770312043.a n = A277936 n

end A277936

/-! ## A277936.P1436704550628814772

`lcm(A010684(n), A277929(n))`
-/

namespace A277936.P1436704550628814772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A277929 n)

end

end A277936.P1436704550628814772

namespace A277936

/-- `lcm(A010684(n), A277929(n))` -/
def P1436704550628814772.Spec : Prop :=
  ∀ n, (P1436704550628814772.a n : ℤ) = A277936 n

end A277936

/-! ## A277936.P11713554125455425379

`lcm(A163805(n), A282124(n))`
-/

namespace A277936.P11713554125455425379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163805 n) (A282124 n)

end

end A277936.P11713554125455425379

namespace A277936

/-- `lcm(A163805(n), A282124(n))` -/
def P11713554125455425379.Spec : Prop :=
  ∀ n, (P11713554125455425379.a n : ℤ) = A277936 n

end A277936

/-! ## A277936.P3421818095952542205

`and(A033999(n), A285475(n))`
-/

namespace A277936.P3421818095952542205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A285475 n)

end

end A277936.P3421818095952542205

namespace A277936

/-- `and(A033999(n), A285475(n))` -/
def P3421818095952542205.Spec : Prop :=
  ∀ n, P3421818095952542205.a n = A277936 n

end A277936

/-! ## A277936.P10749730041897180725

`and(A033999(n), A285835(n))`
-/

namespace A277936.P10749730041897180725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A285835 n)

end

end A277936.P10749730041897180725

namespace A277936

/-- `and(A033999(n), A285835(n))` -/
def P10749730041897180725.Spec : Prop :=
  ∀ n, P10749730041897180725.a n = A277936 n

end A277936

/-! ## A277936.P11656690870117325589

`and(A033999(n), A285844(n))`
-/

namespace A277936.P11656690870117325589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A285844 n)

end

end A277936.P11656690870117325589

namespace A277936

/-- `and(A033999(n), A285844(n))` -/
def P11656690870117325589.Spec : Prop :=
  ∀ n, P11656690870117325589.a n = A277936 n

end A277936

/-! ## A277936.P5547543994094308583

`and(A033999(n), A285948(n))`
-/

namespace A277936.P5547543994094308583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A285948 n)

end

end A277936.P5547543994094308583

namespace A277936

/-- `and(A033999(n), A285948(n))` -/
def P5547543994094308583.Spec : Prop :=
  ∀ n, P5547543994094308583.a n = A277936 n

end A277936

/-! ## A277936.P1765145288892727375

`and(A033999(n), A286081(n))`
-/

namespace A277936.P1765145288892727375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A286081 n)

end

end A277936.P1765145288892727375

namespace A277936

/-- `and(A033999(n), A286081(n))` -/
def P1765145288892727375.Spec : Prop :=
  ∀ n, P1765145288892727375.a n = A277936 n

end A277936

/-! ## A277936.P3535421617372074271

`and(A033999(n), A286645(n))`
-/

namespace A277936.P3535421617372074271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A286645 n)

end

end A277936.P3535421617372074271

namespace A277936

/-- `and(A033999(n), A286645(n))` -/
def P3535421617372074271.Spec : Prop :=
  ∀ n, P3535421617372074271.a n = A277936 n

end A277936

/-! ## A277936.P10119572936245023342

`and(A033999(n), A286675(n))`
-/

namespace A277936.P10119572936245023342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A286675 n)

end

end A277936.P10119572936245023342

namespace A277936

/-- `and(A033999(n), A286675(n))` -/
def P10119572936245023342.Spec : Prop :=
  ∀ n, P10119572936245023342.a n = A277936 n

end A277936

/-! ## A277936.P13638921909392089334

`and(A033999(n), A286705(n))`
-/

namespace A277936.P13638921909392089334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A286705 n)

end

end A277936.P13638921909392089334

namespace A277936

/-- `and(A033999(n), A286705(n))` -/
def P13638921909392089334.Spec : Prop :=
  ∀ n, P13638921909392089334.a n = A277936 n

end A277936

/-!
# A277937: Number of runs of 1's of length 1 in the binary expansion of n.

The programs for A277937, the canonical program `A277937.P17394316521050978661` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277937 has offset 0).

The definition of A277937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277937.P7105464937500192372

`val(A246029(n), 2)`
-/

namespace A277937.P7105464937500192372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246029 n).toNat 2

end

end A277937.P7105464937500192372

namespace A277937

/-- `val(A246029(n), 2)` -/
def P7105464937500192372.Spec : Prop :=
  ∀ n, (P7105464937500192372.a n : ℤ) = A277937 n

end A277937

/-! ## A277937.P11162849912303503094

`val(A255283(n), 7)`
-/

namespace A277937.P11162849912303503094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255283 n).toNat 7

end

end A277937.P11162849912303503094

namespace A277937

/-- `val(A255283(n), 7)` -/
def P11162849912303503094.Spec : Prop :=
  ∀ n, (P11162849912303503094.a n : ℤ) = A277937 n

end A277937

/-! ## A277937.P880668797960467049

`A007814(A246029(n))`
-/

namespace A277937.P880668797960467049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A246029 n).toNat

end

end A277937.P880668797960467049

namespace A277937

/-- `A007814(A246029(n))` -/
def P880668797960467049.Spec : Prop :=
  ∀ n, P880668797960467049.a n = A277937 n

end A277937

/-! ## A277937.P8372918010264480149

`A290260(A010078(n+1))`
-/

namespace A277937.P8372918010264480149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (A010078 (n + 1)).toNat

end

end A277937.P8372918010264480149

namespace A277937

/-- `A290260(A010078(n+1))` -/
def P8372918010264480149.Spec : Prop :=
  ∀ n, P8372918010264480149.a n = A277937 n

end A277937

/-! ## A277937.P17670080256770491505

`∑{e}[A278222(n), A070536(#)]`
-/

namespace A277937.P17670080256770491505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070536 (Nat.factorization (f1 n).natAbs p)

end

end A277937.P17670080256770491505

namespace A277937

/-- `∑{e}[A278222(n), A070536(#)]` -/
def P17670080256770491505.Spec : Prop :=
  ∀ n, P17670080256770491505.a n = A277937 n

end A277937

/-! ## A277937.P6344156562350198994

`val(∏{e}[A278222(n), A000040(#)], 2)`
-/

namespace A277937.P6344156562350198994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat 2

end

end A277937.P6344156562350198994

namespace A277937

/-- `val(∏{e}[A278222(n), A000040(#)], 2)` -/
def P6344156562350198994.Spec : Prop :=
  ∀ n, (P6344156562350198994.a n : ℤ) = A277937 n

end A277937

/-! ## A277937.P17394316521050978661

`n-(A239906(n)+A014081(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A277937

/-- `n-(A239906(n)+A014081(n))` -/
def P17394316521050978661.Spec : Prop :=
  ∀ n, P17394316521050978661.a n = A277937 n

theorem P17394316521050978661.correct : P17394316521050978661.Spec := by
  intro n
  simp only [A277937]

end A277937

/-! ## A277937.P13129559143444620225

`A069010(n)-A069010(A048735(n))`
-/

namespace A277937.P13129559143444620225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n - A069010 (A048735 n).toNat

end

end A277937.P13129559143444620225

namespace A277937

/-- `A069010(n)-A069010(A048735(n))` -/
def P13129559143444620225.Spec : Prop :=
  ∀ n, P13129559143444620225.a n = A277937 n

end A277937

/-! ## A277937.P10392029915642509512

`A069010(n)-A069010(A213370(n))`
-/

namespace A277937.P10392029915642509512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n - A069010 (A213370 n).toNat

end

end A277937.P10392029915642509512

namespace A277937

/-- `A069010(n)-A069010(A213370(n))` -/
def P10392029915642509512.Spec : Prop :=
  ∀ n, P10392029915642509512.a n = A277937 n

end A277937

/-! ## A277937.P15036478185044788015

`A014082(n)+A069010(n)-A014081(n)`
-/

namespace A277937.P15036478185044788015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n + (A069010 n - A014081 n)

end

end A277937.P15036478185044788015

namespace A277937

/-- `A014082(n)+A069010(n)-A014081(n)` -/
def P15036478185044788015.Spec : Prop :=
  ∀ n, P15036478185044788015.a n = A277937 n

theorem P15036478185044788015.correct : P15036478185044788015.Spec := by
  intro n
  simp only [A277937, Nat.add_sub_cancel, A277937.P15036478185044788015.a, A277937.P17394316521050978661.a, A014081, A014081.P14878370479040452879.a, A014082, A014082.P16446960074050354385.a, A069010, A069010.P14932719103722593844.a, A239906, A239906.P4184436720645207913.a, A000120, A000120.P2816527436160941581.a, A005811, A005811.P8696411420205566785.a, A239904, A239904.P1769615034918524656.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277937

/-! ## A277937.P9118453414659059207

`A000120(A048735(n)+n)-A014081(n)`
-/

namespace A277937.P9118453414659059207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048735 n + (n : ℤ)).toNat - A014081 n

end

end A277937.P9118453414659059207

namespace A277937

/-- `A000120(A048735(n)+n)-A014081(n)` -/
def P9118453414659059207.Spec : Prop :=
  ∀ n, P9118453414659059207.a n = A277937 n

end A277937

/-! ## A277937.P15597411350980611250

`A056169(A278222(n))`
-/

namespace A277937.P15597411350980611250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A278222 n).toNat

end

end A277937.P15597411350980611250

namespace A277937

/-- `A056169(A278222(n))` -/
def P15597411350980611250.Spec : Prop :=
  ∀ n, P15597411350980611250.a n = A277937 n

end A277937

/-! ## A277937.P5822888164422455871

`A353484(A278222(2*n))`
-/

namespace A277937.P5822888164422455871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353484 (A278222 (2 * n)).toNat

end

end A277937.P5822888164422455871

namespace A277937

/-- `A353484(A278222(2*n))` -/
def P5822888164422455871.Spec : Prop :=
  ∀ n, P5822888164422455871.a n = A277937 n

end A277937

/-! ## A277937.P11033697752602227462

`val(A246031(n), A246031(A245195(n)))`
-/

namespace A277937.P11033697752602227462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246031 n).toNat (A246031 (A245195 n).toNat).toNat

end

end A277937.P11033697752602227462

namespace A277937

/-- `val(A246031(n), A246031(A245195(n)))` -/
def P11033697752602227462.Spec : Prop :=
  ∀ n, (P11033697752602227462.a n : ℤ) = A277937 n

end A277937

/-! ## A277937.P3938126286534637744

`∑{e}[A005940(n+1), A209229(A213535(#+1))]`
-/

namespace A277937.P3938126286534637744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A209229 (A213535 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A277937.P3938126286534637744

namespace A277937

/-- `∑{e}[A005940(n+1), A209229(A213535(#+1))]` -/
def P3938126286534637744.Spec : Prop :=
  ∀ n, P3938126286534637744.a n = A277937 n

end A277937

/-! ## A277937.P16661729150678877766

`∑{e}[A005940(n+1), A209229(A288305(#+1))]`
-/

namespace A277937.P16661729150678877766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A209229 (A288305 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A277937.P16661729150678877766

namespace A277937

/-- `∑{e}[A005940(n+1), A209229(A288305(#+1))]` -/
def P16661729150678877766.Spec : Prop :=
  ∀ n, P16661729150678877766.a n = A277937 n

end A277937

/-! ## A277937.P555915461796338435

`A007814(A295878(A005940(n+1)))`
-/

namespace A277937.P555915461796338435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A295878 (A005940 (n + 1)).toNat).toNat

end

end A277937.P555915461796338435

namespace A277937

/-- `A007814(A295878(A005940(n+1)))` -/
def P555915461796338435.Spec : Prop :=
  ∀ n, P555915461796338435.a n = A277937 n

end A277937

/-! ## A277937.P14632525810873094080

`A056169(A005940(n+1))`
-/

namespace A277937.P14632525810873094080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A005940 (n + 1)).toNat

end

end A277937.P14632525810873094080

namespace A277937

/-- `A056169(A005940(n+1))` -/
def P14632525810873094080.Spec : Prop :=
  ∀ n, P14632525810873094080.a n = A277937 n

end A277937

/-! ## A277937.P6572480358547087676

`A056169(A332815(n))`
-/

namespace A277937.P6572480358547087676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A332815 n).toNat

end

end A277937.P6572480358547087676

namespace A277937

/-- `A056169(A332815(n))` -/
def P6572480358547087676.Spec : Prop :=
  ∀ n, P6572480358547087676.a n = A277937 n

end A277937

/-! ## A277937.P9129526520343228386

`A275946(A276082(n))`
-/

namespace A277937.P9129526520343228386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 (A276082 n).toNat

end

end A277937.P9129526520343228386

namespace A277937

/-- `A275946(A276082(n))` -/
def P9129526520343228386.Spec : Prop :=
  ∀ n, P9129526520343228386.a n = A277937 n

end A277937

/-!
# A277938: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1+x^j)^(j*k) in powers of x.

The programs for A277938, there is no canonical definition to state claims against.
-/

/-! ## A277938.P13743954360939503896

`A297321(n)+A055641(A322266(n+1))`
-/

namespace A277938.P13743954360939503896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 n + A055641 (A322266 (n + 1)).toNat

end

end A277938.P13743954360939503896

/-! ## A277938.P462719925784087347

`A297321(n)+A125005(A326323(n))`
-/

namespace A277938.P462719925784087347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 n + A125005 (A326323 n).toNat

end

end A277938.P462719925784087347

/-! ## A277938.P6051713543855287489

`A297321(n)+A089311(A094544(n))`
-/

namespace A277938.P6051713543855287489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 n + A089311 (A094544 n).toNat

end

end A277938.P6051713543855287489

/-! ## A277938.P10056742843588446208

`A297321(n)+A025469(A163661(n))`
-/

namespace A277938.P10056742843588446208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 n + A025469 (A163661 n).toNat

end

end A277938.P10056742843588446208

/-! ## A277938.P12988278166312566869

`A297321(n)+A151795(A060475(n))`
-/

namespace A277938.P12988278166312566869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 n + A151795 (A060475 n).toNat

end

end A277938.P12988278166312566869

/-!
# A277939: Number of n X 2 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A277939, the canonical program `A277939.P2926742192455803457` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277939 has offset 1).

The definition of A277939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277939.P12157572784806540598

`ogf((3x+2x^2)/(1-4x-6x^2+x^3+2x^4))`
-/

namespace A277939.P12157572784806540598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, -4, -6, 1, 2] n

end

end A277939.P12157572784806540598

namespace A277939

/-- `ogf((3x+2x^2)/(1-4x-6x^2+x^3+2x^4))` -/
def P12157572784806540598.Spec : Prop :=
  ∀ n, P12157572784806540598.a n = A277939 (n + 1)

end A277939

/-! ## A277939.P2926742192455803457

`4*a(n-1)+6*a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=3, a(2)=14, a(3)=74`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277939

/-- `4*a(n-1)+6*a(n-2)-a(n-3)-2*a(n-4)` -/
def P2926742192455803457.Spec : Prop :=
  ∀ n, P2926742192455803457.a n = A277939 (n + 1)

theorem P2926742192455803457.correct : P2926742192455803457.Spec := by
  intro n
  simp only [A277939, Nat.add_sub_cancel]

end A277939

/-! ## A277939.P10077345632349720751

`A277945(∑[n+1]+2)`
-/

namespace A277939.P10077345632349720751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A277939.P10077345632349720751

namespace A277939

/-- `A277945(∑[n+1]+2)` -/
def P10077345632349720751.Spec : Prop :=
  ∀ n, P10077345632349720751.a n = A277939 (n + 1)

end A277939

/-! ## A277939.P2199337370066763469

`record[A277945(Δ[A003453(n+5)]+2)]`
-/

namespace A277939.P2199337370066763469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277939.P2199337370066763469

namespace A277939

/-- `record[A277945(Δ[A003453(n+5)]+2)]` -/
def P2199337370066763469.Spec : Prop :=
  ∀ n, P2199337370066763469.a n = A277939 (n + 1)

end A277939

/-! ## A277939.P7365286781378614237

`record[Δ[A277945(n+1)]-A277945(n+1)²]`
-/

namespace A277939.P7365286781378614237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A277945 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277939.P7365286781378614237

namespace A277939

/-- `record[Δ[A277945(n+1)]-A277945(n+1)²]` -/
def P7365286781378614237.Spec : Prop :=
  ∀ n, P7365286781378614237.a n = A277939 (n + 1)

end A277939

/-!
# A277940: Number of nX3 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A277940, there is no canonical definition to state claims against.
-/

/-! ## A277940.P14503933715465384701

`A277945(∑[n+2]+4)`
-/

namespace A277940.P14503933715465384701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A277940.P14503933715465384701

/-! ## A277940.P12197813175032559704

`A277945(A167614(n+1))+A178798(n)`
-/

namespace A277940.P12197813175032559704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A167614 (n + 1)).toNat + A178798 n

end

end A277940.P12197813175032559704

/-! ## A277940.P4844152319676420017

`lcm(A087960(n), A277945(A167614(n+1)))`
-/

namespace A277940.P4844152319676420017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A277945 (A167614 (n + 1)).toNat)

end

end A277940.P4844152319676420017

/-! ## A277940.P7892031197047429983

`A277945(A167614(n+1))+A167688(n+1)`
-/

namespace A277940.P7892031197047429983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A167614 (n + 1)).toNat + A167688 (n + 1)

end

end A277940.P7892031197047429983

/-! ## A277940.P2646883354534438255

`A277945(A167614(n+1))+A248805(n+1)`
-/

namespace A277940.P2646883354534438255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A167614 (n + 1)).toNat + A248805 (n + 1)

end

end A277940.P2646883354534438255

/-!
# A277941: Number of nX4 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A277941, there is no canonical definition to state claims against.
-/

/-! ## A277941.P14661158139443336118

`A277945(A374004(n+1))`
-/

namespace A277941.P14661158139443336118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A374004 (n + 1)).toNat

end

end A277941.P14661158139443336118

/-! ## A277941.P10779708841326065098

`A277945(A141214(n)+7)`
-/

namespace A277941.P10779708841326065098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A141214 n + 7).toNat

end

end A277941.P10779708841326065098

/-! ## A277941.P15738478712338368101

`A277945(A052905(n)+9)`
-/

namespace A277941.P15738478712338368101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A052905 n + 9).toNat

end

end A277941.P15738478712338368101

/-! ## A277941.P9164161260138045909

`A277945(A055999(n)+10)`
-/

namespace A277941.P9164161260138045909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A055999 n + 10).toNat

end

end A277941.P9164161260138045909

/-! ## A277941.P16549908191835061348

`A277945(A167614(n+2)+1)`
-/

namespace A277941.P16549908191835061348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A167614 (n + 2) + 1).toNat

end

end A277941.P16549908191835061348

/-!
# A277942: Number of nX5 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A277942, there is no canonical definition to state claims against.
-/

/-! ## A277942.P18423896573562815497

`A277945(A374005(n+1))`
-/

namespace A277942.P18423896573562815497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A374005 (n + 1)).toNat

end

end A277942.P18423896573562815497

/-! ## A277942.P10371833200081040258

`A277945(A155212(n)+13)`
-/

namespace A277942.P10371833200081040258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A155212 n + 13).toNat

end

end A277942.P10371833200081040258

/-! ## A277942.P13861383129088209376

`A277945(eq[6, A131818(n+1)])`
-/

namespace A277942.P13861383129088209376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277942.P13861383129088209376

/-! ## A277942.P7695056695716980948

`A277945(Δ[A264443(n)])`
-/

namespace A277942.P7695056695716980948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (f1 (n + 1) - f1 n).toNat

end

end A277942.P7695056695716980948

/-! ## A277942.P9560720805354715833

`A277945(eq[4, A193592(n)])`
-/

namespace A277942.P9560720805354715833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277942.P9560720805354715833

/-!
# A277943: Number of nX6 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A277943, there is no canonical definition to state claims against.
-/

/-! ## A277943.P8711016961360872214

`A277945(A374007(n+1))`
-/

namespace A277943.P8711016961360872214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A374007 (n + 1)).toNat

end

end A277943.P8711016961360872214

/-! ## A277943.P13406101877309825549

`A277945(eq[6, A130270(n+1)])`
-/

namespace A277943.P13406101877309825549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277943.P13406101877309825549

/-! ## A277943.P1890791992179360406

`A277945(eq[7, A131818(n+1)])`
-/

namespace A277943.P1890791992179360406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277943.P1890791992179360406

/-! ## A277943.P9405899208059395999

`A277945(A052905(n+3))`
-/

namespace A277943.P9405899208059395999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A052905 (n + 3)).toNat

end

end A277943.P9405899208059395999

/-! ## A277943.P1539176504812845002

`A277945(eq[3, A219347(n)])`
-/

namespace A277943.P1539176504812845002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277943.P1539176504812845002

/-!
# A277944: Number of nX7 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A277944, there is no canonical definition to state claims against.
-/

/-! ## A277944.P15762173276663966067

`A277945(A374008(n+1))`
-/

namespace A277944.P15762173276663966067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (A374008 (n + 1)).toNat

end

end A277944.P15762173276663966067

/-! ## A277944.P3764753409097857429

`A277945(eq[6, A193592(n)])`
-/

namespace A277944.P3764753409097857429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277944.P3764753409097857429

/-! ## A277944.P1437291245984943161

`A277945(eq[2, A219347(n)-2])`
-/

namespace A277944.P1437291245984943161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277944.P1437291245984943161

/-!
# A277945: T(n,k)=Number of nXk 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A277945, there is no canonical definition to state claims against.
-/

/-! ## A277945.P766153050346947340

`A317685(A022176(n))`
-/

namespace A277945.P766153050346947340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317685 (A022176 n).toNat

end

end A277945.P766153050346947340

/-! ## A277945.P18294936599303267579

`A209320(A176639(n))`
-/

namespace A277945.P18294936599303267579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209320 (A176639 n).toNat

end

end A277945.P18294936599303267579

/-! ## A277945.P12173021200634524390

`A253200(A168552(n))`
-/

namespace A277945.P12173021200634524390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253200 (A168552 n).toNat

end

end A277945.P12173021200634524390

/-! ## A277945.P7834603017779704686

`A295165(A157221(n))`
-/

namespace A277945.P7834603017779704686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295165 (A157221 n).toNat

end

end A277945.P7834603017779704686

/-! ## A277945.P13649963145213268756

`A346722(A223256(n))`
-/

namespace A277945.P13649963145213268756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346722 (A223256 n).toNat

end

end A277945.P13649963145213268756

/-!
# A277946: Squares whose largest decimal digit is 2.

The programs for A277946, there is no canonical definition to state claims against.
-/

/-! ## A277946.P2940410194490952199

`A277959(n+1)²`
-/

namespace A277946.P2940410194490952199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (n + 1) ^ 2

end

end A277946.P2940410194490952199

/-! ## A277946.P8135602392014168327

`A277959(2*(n+1)-(n+1))^2`
-/

namespace A277946.P8135602392014168327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (2 * (n + 1) - (n + 1)) ^ 2

end

end A277946.P8135602392014168327

/-! ## A277946.P8445693003425172862

`record[A277959(A117910(n))²]`
-/

namespace A277946.P8445693003425172862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277946.P8445693003425172862

/-! ## A277946.P1108200839719045746

`record[A277959(A286547(n))²]`
-/

namespace A277946.P1108200839719045746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (A286547 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277946.P1108200839719045746

/-! ## A277946.P17627101584776924186

`(A209661(n+1)*A277959(n+1))^2`
-/

namespace A277946.P17627101584776924186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209661 (n + 1) * A277959 (n + 1)) ^ 2

end

end A277946.P17627101584776924186

/-! ## A277946.P13105471651438281332

`(A117569(2*n+1)*A277959(n+1))^2`
-/

namespace A277946.P13105471651438281332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117569 (2 * n + 1) * A277959 (n + 1)) ^ 2

end

end A277946.P13105471651438281332

/-! ## A277946.P17207206690401353717

`record[A277959(A117910(n))]*A277959(n+1)`
-/

namespace A277946.P17207206690401353717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277959 (n + 1)

end

end A277946.P17207206690401353717

/-! ## A277946.P1009061202326095054

`record[A277959(A286547(n))]*A277959(n+1)`
-/

namespace A277946.P1009061202326095054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (A286547 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277959 (n + 1)

end

end A277946.P1009061202326095054

/-! ## A277946.P11243810323509824714

`A277959(A000027(n+1))*A277959(n+1)`
-/

namespace A277946.P11243810323509824714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (A000027 (n + 1)).toNat * A277959 (n + 1)

end

end A277946.P11243810323509824714

/-! ## A277946.P2051919914945008139

`A277959(A052938(2*n))*A277959(n+1)`
-/

namespace A277946.P2051919914945008139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (A052938 (2 * n)).toNat * A277959 (n + 1)

end

end A277946.P2051919914945008139

/-! ## A277946.P2951142654686469974

`A277959(n+1)*A277959((n+1)%A137147(n+1))`
-/

namespace A277946.P2951142654686469974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277959 (n + 1) * A277959 (Int.tmod (n + 1 : ℤ) (A137147 (n + 1))).toNat

end

end A277946.P2951142654686469974

/-!
# A277947: Squares whose largest decimal digit is 3.

The programs for A277947, there is no canonical definition to state claims against.
-/

/-! ## A277947.P224597642022383363

`A277960(1+n)²`
-/

namespace A277947.P224597642022383363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (1 + n) ^ 2

end

end A277947.P224597642022383363

/-! ## A277947.P10886791203017884494

`A277960(n+1)^2`
-/

namespace A277947.P10886791203017884494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (n + 1) ^ 2

end

end A277947.P10886791203017884494

/-! ## A277947.P185539772567017340

`record[A277960(A022446(n))²]`
-/

namespace A277947.P185539772567017340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P185539772567017340

/-! ## A277947.P2527742135369356432

`record[A277960(A065648(n))²]`
-/

namespace A277947.P2527742135369356432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P2527742135369356432

/-! ## A277947.P14087832891508196682

`record[A277960(A117910(n))²]`
-/

namespace A277947.P14087832891508196682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P14087832891508196682

/-! ## A277947.P17110180238575471416

`record[A277960(A126759(n))²]`
-/

namespace A277947.P17110180238575471416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P17110180238575471416

/-! ## A277947.P18058915260374106711

`record[A277960(A134478(n))²]`
-/

namespace A277947.P18058915260374106711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P18058915260374106711

/-! ## A277947.P11111111468753542742

`record[A277960(A152271(n))²]`
-/

namespace A277947.P11111111468753542742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P11111111468753542742

/-! ## A277947.P16871599994920463538

`record[A277960(A154958(n))²]`
-/

namespace A277947.P16871599994920463538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A154958 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P16871599994920463538

/-! ## A277947.P14339260548443578990

`record[A277960(A193592(n))²]`
-/

namespace A277947.P14339260548443578990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P14339260548443578990

/-! ## A277947.P790827687824335048

`record[A277960(A286547(n))²]`
-/

namespace A277947.P790827687824335048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A286547 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P790827687824335048

/-! ## A277947.P13636106100235598651

`record[A277960(A328397(n))²]`
-/

namespace A277947.P13636106100235598651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A328397 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277947.P13636106100235598651

/-! ## A277947.P14987193496726571625

`A277960(2*n+1-n)*A277960(n+1)`
-/

namespace A277947.P14987193496726571625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (2 * n + 1 - n) * A277960 (n + 1)

end

end A277947.P14987193496726571625

/-! ## A277947.P13739092215654966521

`record[A277960(A022446(n))]*A277960(n+1)`
-/

namespace A277947.P13739092215654966521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277960 (n + 1)

end

end A277947.P13739092215654966521

/-! ## A277947.P2529572571772991289

`record[A277960(A065648(n))]*A277960(n+1)`
-/

namespace A277947.P2529572571772991289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277960 (n + 1)

end

end A277947.P2529572571772991289

/-! ## A277947.P11959911177970950070

`record[A277960(A117910(n))]*A277960(n+1)`
-/

namespace A277947.P11959911177970950070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277960 (n + 1)

end

end A277947.P11959911177970950070

/-! ## A277947.P9212971472904430822

`record[A277960(A126759(n))]*A277960(n+1)`
-/

namespace A277947.P9212971472904430822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277960 (n + 1)

end

end A277947.P9212971472904430822

/-! ## A277947.P6451980833828975217

`record[A277960(A134478(n))]*A277960(n+1)`
-/

namespace A277947.P6451980833828975217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277960 (n + 1)

end

end A277947.P6451980833828975217

/-! ## A277947.P16321112597250589836

`record[A277960(A152271(n))]*A277960(n+1)`
-/

namespace A277947.P16321112597250589836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277960 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A277960 (n + 1)

end

end A277947.P16321112597250589836

/-!
# A277948: Squares whose largest decimal digit is 4.

The programs for A277948, there is no canonical definition to state claims against.
-/

/-! ## A277948.P18310993745261563267

`A277961(n+1)²`
-/

namespace A277948.P18310993745261563267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277961 (n + 1) ^ 2

end

end A277948.P18310993745261563267

/-! ## A277948.P7332774320502105943

`A277961(2*(n+1)-(n+1))^2`
-/

namespace A277948.P7332774320502105943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277961 (2 * (n + 1) - (n + 1)) ^ 2

end

end A277948.P7332774320502105943

/-! ## A277948.P5678084328802451245

`A277961(2*(n+1)-(n+1))*A277961(n+1)`
-/

namespace A277948.P5678084328802451245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277961 (2 * (n + 1) - (n + 1)) * A277961 (n + 1)

end

end A277948.P5678084328802451245

/-! ## A277948.P2807749856750866597

`A277961(n+1)%A277959(n+1)*A277961(n+1)`
-/

namespace A277948.P2807749856750866597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277961 (n + 1)) (A277959 (n + 1)) * A277961 (n + 1)

end

end A277948.P2807749856750866597

/-! ## A277948.P2537723476129500361

`(-A277961(n+1))^A001227(A000040(n+2))`
-/

namespace A277948.P2537723476129500361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A277961 (n + 1) : ℚ) ^ (A001227 (A000040 (n + 2)).toNat : ℤ)

end

end A277948.P2537723476129500361

/-! ## A277948.P6513354788116527177

`A000290(xor(1, xor(1, A277961(n+1))))`
-/

namespace A277948.P6513354788116527177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.xor 1 (Int.xor 1 (A277961 (n + 1)))).toNat

end

end A277948.P6513354788116527177

/-! ## A277948.P5353210015051465611

`A000290(A277961(∑[n+1]-∑[n]))`
-/

namespace A277948.P5353210015051465611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A277961 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A277948.P5353210015051465611

/-! ## A277948.P11091540841049760484

`A000290(A277961(n+1)+and(2, A000290(n)))`
-/

namespace A277948.P11091540841049760484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A277961 (n + 1) + Int.land 2 (A000290 n)).toNat

end

end A277948.P11091540841049760484

/-! ## A277948.P16897950970231282775

`A000290(2*A277961(n+1)-A277961(n+1))`
-/

namespace A277948.P16897950970231282775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A277961 (n + 1) - A277961 (n + 1)).toNat

end

end A277948.P16897950970231282775

/-!
# A277952: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

The programs for A277952, the canonical program `A277952.P14411072835068524761` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277952 has offset 0).

The definition of A277952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277952.P17219213854149665620

`ogf((1+10x-x^2)/(1-x-100x^2+100x^3))`
-/

namespace A277952.P17219213854149665620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -1] [1, -1, -100, 100] n

end

end A277952.P17219213854149665620

namespace A277952

/-- `ogf((1+10x-x^2)/(1-x-100x^2+100x^3))` -/
def P17219213854149665620.Spec : Prop :=
  ∀ n, P17219213854149665620.a n = A277952 n

end A277952

/-! ## A277952.P14411072835068524761

`100*a(n-2)+10` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277952

/-- `100*a(n-2)+10` -/
def P14411072835068524761.Spec : Prop :=
  ∀ n, (P14411072835068524761.a n : ℤ) = A277952 n

theorem P14411072835068524761.correct : P14411072835068524761.Spec := by
  intro n
  simp only [A277952]

end A277952

/-! ## A277952.P15953654130353346120

`A011557(n)+floor(A283641(n)/10)`
-/

namespace A277952.P15953654130353346120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + ⌊(A283641 n : ℚ) / 10⌋

end

end A277952.P15953654130353346120

namespace A277952

/-- `A011557(n)+floor(A283641(n)/10)` -/
def P15953654130353346120.Spec : Prop :=
  ∀ n, P15953654130353346120.a n = A277952 n

end A277952

/-! ## A277952.P636554141361672057

`A011557(n)+∑[A136853(n+1)²]`
-/

namespace A277952.P636554141361672057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136853 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277952.P636554141361672057

namespace A277952

/-- `A011557(n)+∑[A136853(n+1)²]` -/
def P636554141361672057.Spec : Prop :=
  ∀ n, P636554141361672057.a n = A277952 n

end A277952

/-! ## A277952.P719661035501063900

`A004663(2*n)+∑[A136853(n+1)²]`
-/

namespace A277952.P719661035501063900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136853 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277952.P719661035501063900

namespace A277952

/-- `A004663(2*n)+∑[A136853(n+1)²]` -/
def P719661035501063900.Spec : Prop :=
  ∀ n, P719661035501063900.a n = A277952 n

end A277952

/-!
# A277953: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

The programs for A277953, the canonical program `A277953.P8668454137173277221` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277953 has offset 0).

The definition of A277953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277953.P10497913990278268097

`ogf((1+x-100x^2)/(1-10x-x^2+10x^3))`
-/

namespace A277953.P10497913990278268097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -100] [1, -10, -1, 10] n

end

end A277953.P10497913990278268097

namespace A277953

/-- `ogf((1+x-100x^2)/(1-10x-x^2+10x^3))` -/
def P10497913990278268097.Spec : Prop :=
  ∀ n, P10497913990278268097.a n = A277953 n

end A277953

/-! ## A277953.P18264263835649640734

`∑[10^(n-1)-a(n-1)]` with `a(0)=1, a(1)=10, a(2)=0`
-/

namespace A277953.P18264263835649640734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 10, 0] fun n f1 =>
  (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277953.P18264263835649640734

namespace A277953

/-- `∑[10^(n-1)-a(n-1)]` -/
def P18264263835649640734.Spec : Prop :=
  ∀ n, P18264263835649640734.a n = (A277953 n : ℚ)

end A277953

/-! ## A277953.P8668454137173277221

`10*a(n-1)+a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=11, a(2)=11`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277953

/-- `10*a(n-1)+a(n-2)-10*a(n-3)` -/
def P8668454137173277221.Spec : Prop :=
  ∀ n, P8668454137173277221.a n = A277953 n

theorem P8668454137173277221.correct : P8668454137173277221.Spec := by
  intro n
  simp only [A277953]

end A277953

/-! ## A277953.P13352558688476556538

`A000042(n)+11-a(n-1)` with `a(0)=1`
-/

namespace A277953.P13352558688476556538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 n + (11 - a (n - 1))

end

end A277953.P13352558688476556538

namespace A277953

/-- `A000042(n)+11-a(n-1)` -/
def P13352558688476556538.Spec : Prop :=
  ∀ n, P13352558688476556538.a n = A277953 n

end A277953

/-! ## A277953.P15014904933799450944

`A002275(n)+11-a(n-1)` with `a(0)=1`
-/

namespace A277953.P15014904933799450944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 n + (11 - a (n - 1))

end

end A277953.P15014904933799450944

namespace A277953

/-- `A002275(n)+11-a(n-1)` -/
def P15014904933799450944.Spec : Prop :=
  ∀ n, P15014904933799450944.a n = A277953 n

end A277953

/-! ## A277953.P17944718025430834678

`A267051(floor(log2(A277955(n))))`
-/

namespace A277953.P17944718025430834678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267051 (Nat.log 2 (A277955 n).toNat)

end

end A277953.P17944718025430834678

namespace A277953

/-- `A267051(floor(log2(A277955(n))))` -/
def P17944718025430834678.Spec : Prop :=
  ∀ n, P17944718025430834678.a n = A277953 n

end A277953

/-! ## A277953.P8075435518944344576

`or(gcd(11, A056594(n)), A056830(n))`
-/

namespace A277953.P8075435518944344576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.gcd 11 (A056594 n) : ℤ) (A056830 n)

end

end A277953.P8075435518944344576

namespace A277953

/-- `or(gcd(11, A056594(n)), A056830(n))` -/
def P8075435518944344576.Spec : Prop :=
  ∀ n, P8075435518944344576.a n = A277953 n

end A277953

/-! ## A277953.P3279320019781135221

`A056830(n)+A011557(Δ[A008619(n)])`
-/

namespace A277953.P3279320019781135221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + A011557 (f1 (n + 1) - f1 n).toNat

end

end A277953.P3279320019781135221

namespace A277953

/-- `A056830(n)+A011557(Δ[A008619(n)])` -/
def P3279320019781135221.Spec : Prop :=
  ∀ n, P3279320019781135221.a n = A277953 n

end A277953

/-! ## A277953.P17332931805771932733

`(539-450*(-1)^n+10^(1+n))/99`
-/

namespace A277953.P17332931805771932733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (539 - 450 * (-1) ^ n + (10 ^ (1 + n) : ℤ) : ℚ) / 99

end

end A277953.P17332931805771932733

namespace A277953

/-- `(539-450*(-1)^n+10^(1+n))/99` -/
def P17332931805771932733.Spec : Prop :=
  ∀ n, P17332931805771932733.a n = (A277953 n : ℚ)

theorem P17332931805771932733.correct : P17332931805771932733.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A277953, Nat.add_sub_cancel, A277953.P17332931805771932733.a, A277953.P8668454137173277221.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A277953, Nat.add_sub_cancel, A277953.P17332931805771932733.a, A277953.P8668454137173277221.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A277953

/-! ## A277953.P8140208331468091671

`A267051(n+1)-A011557(n+1)`
-/

namespace A277953.P8140208331468091671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267051 (n + 1) - A011557 (n + 1)

end

end A277953.P8140208331468091671

namespace A277953

/-- `A267051(n+1)-A011557(n+1)` -/
def P8140208331468091671.Spec : Prop :=
  ∀ n, P8140208331468091671.a n = A277953 n

end A277953

/-!
# A277954: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

The programs for A277954, the canonical program `A277954.P3758362454538214490` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277954 has offset 0).

The definition of A277954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277954.P3758362454538214490

`∑[ogf((1+2x-x^2)/(1-4x^2))]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277954

/-- `∑[ogf((1+2x-x^2)/(1-4x^2))]` -/
def P3758362454538214490.Spec : Prop :=
  ∀ n, P3758362454538214490.a n = A277954 n

theorem P3758362454538214490.correct : P3758362454538214490.Spec := by
  intro n
  simp only [A277954]

end A277954

/-! ## A277954.P15150490853696188141

`ogf((1+2x-x^2)/(1-x-4x^2+4x^3))`
-/

namespace A277954.P15150490853696188141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -1, -4, 4] n

end

end A277954.P15150490853696188141

namespace A277954

/-- `ogf((1+2x-x^2)/(1-x-4x^2+4x^3))` -/
def P15150490853696188141.Spec : Prop :=
  ∀ n, P15150490853696188141.a n = A277954 n

end A277954

/-! ## A277954.P13588581433011937102

`2+4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A277954.P13588581433011937102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 + 4 * a (n - 2)

end

end A277954.P13588581433011937102

namespace A277954

/-- `2+4*a(n-2)` -/
def P13588581433011937102.Spec : Prop :=
  ∀ n, (P13588581433011937102.a n : ℤ) = A277954 n

end A277954

/-! ## A277954.P1481032214571970240

`or(2, 4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A277954.P1481032214571970240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 2 (4 * a (n - 2))

end

end A277954.P1481032214571970240

namespace A277954

/-- `or(2, 4*a(n-2))` -/
def P1481032214571970240.Spec : Prop :=
  ∀ n, (P1481032214571970240.a n : ℤ) = A277954 n

end A277954

/-! ## A277954.P15408450853512960579

`xor(2, 4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A277954.P15408450853512960579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 2 (4 * a (n - 2))

end

end A277954.P15408450853512960579

namespace A277954

/-- `xor(2, 4*a(n-2))` -/
def P15408450853512960579.Spec : Prop :=
  ∀ n, (P15408450853512960579.a n : ℤ) = A277954 n

end A277954

/-! ## A277954.P17440419055461119171

`∑[4*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A277954.P17440419055461119171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277954.P17440419055461119171

namespace A277954

/-- `∑[4*a(n-2)]` -/
def P17440419055461119171.Spec : Prop :=
  ∀ n, (P17440419055461119171.a n : ℤ) = A277954 n

end A277954

/-! ## A277954.P4349925395759852235

`6-4*(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A277954.P4349925395759852235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 - 4 * (1 - a (n - 2))

end

end A277954.P4349925395759852235

namespace A277954

/-- `6-4*(1-a(n-2))` -/
def P4349925395759852235.Spec : Prop :=
  ∀ n, P4349925395759852235.a n = A277954 n

end A277954

/-! ## A277954.P2133712106461322320

`a(n-2)/(1/2)²+2` with `a(0)=1, a(1)=3`
-/

namespace A277954.P2133712106461322320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2 + 2

end

end A277954.P2133712106461322320

namespace A277954

/-- `a(n-2)/(1/2)²+2` -/
def P2133712106461322320.Spec : Prop :=
  ∀ n, P2133712106461322320.a n = (A277954 n : ℚ)

end A277954

/-! ## A277954.P14231296677861834458

`∑[a(n-2)/(1/2)²]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A277954.P14231296677861834458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277954.P14231296677861834458

namespace A277954

/-- `∑[a(n-2)/(1/2)²]` -/
def P14231296677861834458.Spec : Prop :=
  ∀ n, P14231296677861834458.a n = (A277954 n : ℚ)

end A277954

/-! ## A277954.P1250051723508039252

`2-a(n-2)/(3/4-1)` with `a(0)=1, a(1)=3`
-/

namespace A277954.P1250051723508039252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - a (n - 2) / ((3 : ℚ) / 4 - 1)

end

end A277954.P1250051723508039252

namespace A277954

/-- `2-a(n-2)/(3/4-1)` -/
def P1250051723508039252.Spec : Prop :=
  ∀ n, P1250051723508039252.a n = (A277954 n : ℚ)

end A277954

/-! ## A277954.P15550662946183314089

`a(n-2)+a(n-2)+a(n-2)+a(n-2)+2` with `a(0)=1, a(1)=3`
-/

namespace A277954.P15550662946183314089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 2) + 2)))

end

end A277954.P15550662946183314089

namespace A277954

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)+2` -/
def P15550662946183314089.Spec : Prop :=
  ∀ n, (P15550662946183314089.a n : ℤ) = A277954 n

end A277954

/-! ## A277954.P86602550826980359

`∑[A134683(n)]`
-/

namespace A277954.P86602550826980359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277954.P86602550826980359

namespace A277954

/-- `∑[A134683(n)]` -/
def P86602550826980359.Spec : Prop :=
  ∀ n, P86602550826980359.a n = A277954 n

end A277954

/-! ## A277954.P11888282916325339664

`∑[abs(Δ[A136336(n)])]`
-/

namespace A277954.P11888282916325339664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277954.P11888282916325339664

namespace A277954

/-- `∑[abs(Δ[A136336(n)])]` -/
def P11888282916325339664.Spec : Prop :=
  ∀ n, P11888282916325339664.a n = A277954 n

end A277954

/-! ## A277954.P1115471890101708104

`A136336(n+1)-1`
-/

namespace A277954.P1115471890101708104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136336 (n + 1) - 1

end

end A277954.P1115471890101708104

namespace A277954

/-- `A136336(n+1)-1` -/
def P1115471890101708104.Spec : Prop :=
  ∀ n, P1115471890101708104.a n = A277954 n

end A277954

/-! ## A277954.P2433264409348756779

`∑[(A290662(n)+1)/2]`
-/

namespace A277954.P2433264409348756779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290662 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277954.P2433264409348756779

namespace A277954

/-- `∑[(A290662(n)+1)/2]` -/
def P2433264409348756779.Spec : Prop :=
  ∀ n, P2433264409348756779.a n = (A277954 n : ℚ)

end A277954

/-! ## A277954.P17717125816064159483

`A061547(n+1)+2^n`
-/

namespace A277954.P17717125816064159483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (n + 1) + (2 ^ n : ℤ)

end

end A277954.P17717125816064159483

namespace A277954

/-- `A061547(n+1)+2^n` -/
def P17717125816064159483.Spec : Prop :=
  ∀ n, P17717125816064159483.a n = A277954 n

end A277954

/-! ## A277954.P6507048933849403913

`xor(∑[floor(2^(n-1))], A097163(n))`
-/

namespace A277954.P6507048933849403913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A097163 n)

end

end A277954.P6507048933849403913

namespace A277954

/-- `xor(∑[floor(2^(n-1))], A097163(n))` -/
def P6507048933849403913.Spec : Prop :=
  ∀ n, P6507048933849403913.a n = A277954 n

end A277954

/-! ## A277954.P6140859797650886676

`∑[A029744(A053438(n))]`
-/

namespace A277954.P6140859797650886676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277954.P6140859797650886676

namespace A277954

/-- `∑[A029744(A053438(n))]` -/
def P6140859797650886676.Spec : Prop :=
  ∀ n, P6140859797650886676.a n = A277954 n

end A277954

/-! ## A277954.P2039977272191974523

`A084639(n)+A080880(n)`
-/

namespace A277954.P2039977272191974523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n + A080880 n

end

end A277954.P2039977272191974523

namespace A277954

/-- `A084639(n)+A080880(n)` -/
def P2039977272191974523.Spec : Prop :=
  ∀ n, P2039977272191974523.a n = A277954 n

end A277954

/-! ## A277954.P9592454271738068889

`A277867(n)+A193652(n)`
-/

namespace A277954.P9592454271738068889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277867 n + A193652 n

end

end A277954.P9592454271738068889

namespace A277954

/-- `A277867(n)+A193652(n)` -/
def P9592454271738068889.Spec : Prop :=
  ∀ n, P9592454271738068889.a n = A277954 n

end A277954

/-!
# A277955: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

The programs for A277955, the canonical program `A277955.P2587586003085304364` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277955 has offset 0).

The definition of A277955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277955.P12535656484655578996

`ogf((1+x-4x^2)/(1-2x-x^2+2x^3))`
-/

namespace A277955.P12535656484655578996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -2, -1, 2] n

end

end A277955.P12535656484655578996

namespace A277955

/-- `ogf((1+x-4x^2)/(1-2x-x^2+2x^3))` -/
def P12535656484655578996.Spec : Prop :=
  ∀ n, P12535656484655578996.a n = A277955 n

end A277955

/-! ## A277955.P2587586003085304364

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277955

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P2587586003085304364.Spec : Prop :=
  ∀ n, P2587586003085304364.a n = A277955 n

theorem P2587586003085304364.correct : P2587586003085304364.Spec := by
  intro n
  simp only [A277955]

end A277955

/-! ## A277955.P13411831918540481595

`a(n-1)+2*A078008(n-1)` with `a(0)=1`
-/

namespace A277955.P13411831918540481595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A078008 (n - 1)

end

end A277955.P13411831918540481595

namespace A277955

/-- `a(n-1)+2*A078008(n-1)` -/
def P13411831918540481595.Spec : Prop :=
  ∀ n, P13411831918540481595.a n = A277955 n

end A277955

/-! ## A277955.P1061769334980256980

`A001045(n+1)+A010673(n)`
-/

namespace A277955.P1061769334980256980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + A010673 n

end

end A277955.P1061769334980256980

namespace A277955

/-- `A001045(n+1)+A010673(n)` -/
def P1061769334980256980.Spec : Prop :=
  ∀ n, P1061769334980256980.a n = A277955 n

end A277955

/-! ## A277955.P129457258092472227

`(3-2*(-1)^n+2^(1+n))/3`
-/

namespace A277955.P129457258092472227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - 2 * (-1) ^ n + (2 ^ (1 + n) : ℤ) : ℚ) / 3

end

end A277955.P129457258092472227

namespace A277955

/-- `(3-2*(-1)^n+2^(1+n))/3` -/
def P129457258092472227.Spec : Prop :=
  ∀ n, P129457258092472227.a n = (A277955 n : ℚ)

theorem P129457258092472227.correct : P129457258092472227.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A277955, Nat.add_sub_cancel, A277955.P129457258092472227.a, A277955.P2587586003085304364.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A277955, Nat.add_sub_cancel, A277955.P129457258092472227.a, A277955.P2587586003085304364.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A277955

/-! ## A277955.P16176663688066303049

`∑[abs(∑[ogf((1+3x)/(1+2x))])]`
-/

namespace A277955.P16176663688066303049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277955.P16176663688066303049

namespace A277955

/-- `∑[abs(∑[ogf((1+3x)/(1+2x))])]` -/
def P16176663688066303049.Spec : Prop :=
  ∀ n, P16176663688066303049.a n = A277955 n

end A277955

/-! ## A277955.P18239554614551646018

`xor(1, 2*round(2^n/3))`
-/

namespace A277955.P18239554614551646018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3))

end

end A277955.P18239554614551646018

namespace A277955

/-- `xor(1, 2*round(2^n/3))` -/
def P18239554614551646018.Spec : Prop :=
  ∀ n, P18239554614551646018.a n = A277955 n

end A277955

/-! ## A277955.P13897410541906919335

`2^n+2-a(n-1)` with `a(0)=1`
-/

namespace A277955.P13897410541906919335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + (2 - a (n - 1))

end

end A277955.P13897410541906919335

namespace A277955

/-- `2^n+2-a(n-1)` -/
def P13897410541906919335.Spec : Prop :=
  ∀ n, P13897410541906919335.a n = A277955 n

end A277955

/-! ## A277955.P3904460764157982042

`2-(a(n-1)-2^n)` with `a(0)=1`
-/

namespace A277955.P3904460764157982042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - (2 ^ n : ℤ))

end

end A277955.P3904460764157982042

namespace A277955

/-- `2-(a(n-1)-2^n)` -/
def P3904460764157982042.Spec : Prop :=
  ∀ n, P3904460764157982042.a n = A277955 n

end A277955

/-! ## A277955.P16524786282113843830

`4*(a(n-2)-n%2)-1` with `a(0)=1, a(1)=3`
-/

namespace A277955.P16524786282113843830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 2) - ((n % 2 : ℕ) : ℤ)) - 1

end

end A277955.P16524786282113843830

namespace A277955

/-- `4*(a(n-2)-n%2)-1` -/
def P16524786282113843830.Spec : Prop :=
  ∀ n, P16524786282113843830.a n = A277955 n

end A277955

/-! ## A277955.P16422669443718483068

`a(n-1)+2*(a(n-2)-1)` with `a(0)=1, a(1)=3`
-/

namespace A277955.P16422669443718483068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 2 * (a (n - 2) - 1)

end

end A277955.P16422669443718483068

namespace A277955

/-- `a(n-1)+2*(a(n-2)-1)` -/
def P16422669443718483068.Spec : Prop :=
  ∀ n, P16422669443718483068.a n = A277955 n

end A277955

/-! ## A277955.P11683289519397545149

`a(n-1)-2*(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A277955.P11683289519397545149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 2))

end

end A277955.P11683289519397545149

namespace A277955

/-- `a(n-1)-2*(1-a(n-2))` -/
def P11683289519397545149.Spec : Prop :=
  ∀ n, P11683289519397545149.a n = A277955 n

end A277955

/-! ## A277955.P12247431695790165093

`or(a(n-1)+a(n-2), a(n-2))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A277955.P12247431695790165093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  Nat.lor (a (n - 1) + a (n - 2)) (a (n - 2))

end

end A277955.P12247431695790165093

namespace A277955

/-- `or(a(n-1)+a(n-2), a(n-2))` -/
def P12247431695790165093.Spec : Prop :=
  ∀ n, (P12247431695790165093.a n : ℤ) = A277955 n

end A277955

/-! ## A277955.P15346269553155676557

`a(n-2)+a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=3`
-/

namespace A277955.P15346269553155676557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2) - 2)

end

end A277955.P15346269553155676557

namespace A277955

/-- `a(n-2)+a(n-1)+a(n-2)-2` -/
def P15346269553155676557.Spec : Prop :=
  ∀ n, P15346269553155676557.a n = A277955 n

end A277955

/-! ## A277955.P7173953901345819719

`floor(a(n-1)-(2-a(n-2)-a(n-2)))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A277955.P7173953901345819719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (2 - a (n - 2) - a (n - 2))

end

end A277955.P7173953901345819719

namespace A277955

/-- `floor(a(n-1)-(2-a(n-2)-a(n-2)))` -/
def P7173953901345819719.Spec : Prop :=
  ∀ n, P7173953901345819719.a n = A277955 n

end A277955

/-! ## A277955.P3469710962086501176

`A014113(n)+1`
-/

namespace A277955.P3469710962086501176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + 1

end

end A277955.P3469710962086501176

namespace A277955

/-- `A014113(n)+1` -/
def P3469710962086501176.Spec : Prop :=
  ∀ n, P3469710962086501176.a n = A277955 n

end A277955

/-! ## A277955.P13077630669713583969

`∑[abs(A084247(n))]`
-/

namespace A277955.P13077630669713583969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084247 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277955.P13077630669713583969

namespace A277955

/-- `∑[abs(A084247(n))]` -/
def P13077630669713583969.Spec : Prop :=
  ∀ n, P13077630669713583969.a n = A277955 n

end A277955

/-! ## A277955.P11784169057065189394

`∑[A115341(n)/2]`
-/

namespace A277955.P11784169057065189394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115341 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277955.P11784169057065189394

namespace A277955

/-- `∑[A115341(n)/2]` -/
def P11784169057065189394.Spec : Prop :=
  ∀ n, P11784169057065189394.a n = (A277955 n : ℚ)

end A277955

/-! ## A277955.P1547188783411822721

`∑[abs(∑[A123344(n)])]`
-/

namespace A277955.P1547188783411822721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277955.P1547188783411822721

namespace A277955

/-- `∑[abs(∑[A123344(n)])]` -/
def P1547188783411822721.Spec : Prop :=
  ∀ n, P1547188783411822721.a n = A277955 n

end A277955

/-! ## A277955.P6226688301838428411

`A078008(n+1)+1`
-/

namespace A277955.P6226688301838428411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + 1

end

end A277955.P6226688301838428411

namespace A277955

/-- `A078008(n+1)+1` -/
def P6226688301838428411.Spec : Prop :=
  ∀ n, P6226688301838428411.a n = A277955 n

end A277955

/-!
# A277956: a(n) = (n+2)*Sum_{i=0..n}(binomial(3*n-2*i+1, n-i)/(2*n-i+2)).

The programs for A277956, the canonical program `A277956.P6559841193563384432` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277956 has offset 0).

The definition of A277956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277956.P6559841193563384432

`(n+2)*∑{#}[n, C(3*n-2*#+1, n-#)/(2*n-#+2)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277956

/-- `(n+2)*∑{#}[n, C(3*n-2*#+1, n-#)/(2*n-#+2)]` -/
def P6559841193563384432.Spec : Prop :=
  ∀ n, P6559841193563384432.a n = (A277956 n : ℚ)

end A277956

/-! ## A277956.P9299750174718043936

`A242798(n+2)-A174687(n+1)`
-/

namespace A277956.P9299750174718043936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242798 (n + 2) - A174687 (n + 1)

end

end A277956.P9299750174718043936

namespace A277956

/-- `A242798(n+2)-A174687(n+1)` -/
def P9299750174718043936.Spec : Prop :=
  ∀ n, P9299750174718043936.a n = A277956 n

end A277956

/-! ## A277956.P14550834689482567278

`A096465(∑[4*(n+1)]-1)`
-/

namespace A277956.P14550834689482567278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A277956.P14550834689482567278

namespace A277956

/-- `A096465(∑[4*(n+1)]-1)` -/
def P14550834689482567278.Spec : Prop :=
  ∀ n, P14550834689482567278.a n = A277956 n

end A277956

/-! ## A277956.P17087474607444678003

`A091491((n+1)²+(n+2)²)`
-/

namespace A277956.P17087474607444678003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A277956.P17087474607444678003

namespace A277956

/-- `A091491((n+1)²+(n+2)²)` -/
def P17087474607444678003.Spec : Prop :=
  ∀ n, P17087474607444678003.a n = A277956 n

end A277956

/-! ## A277956.P14352246325344028813

`A323224(A000124(2*n+3)+n)`
-/

namespace A277956.P14352246325344028813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (A000124 (2 * n + 3) + (n : ℤ)).toNat

end

end A277956.P14352246325344028813

namespace A277956

/-- `A323224(A000124(2*n+3)+n)` -/
def P14352246325344028813.Spec : Prop :=
  ∀ n, P14352246325344028813.a n = A277956 n

end A277956

/-! ## A277956.P17049165748892725203

`A283054(A056220(n+1))`
-/

namespace A277956.P17049165748892725203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A056220 (n + 1)).toNat

end

end A277956.P17049165748892725203

namespace A277956

/-- `A283054(A056220(n+1))` -/
def P17049165748892725203.Spec : Prop :=
  ∀ n, P17049165748892725203.a n = A277956 n

end A277956

/-! ## A277956.P4252921463311797880

`A283054(A000217(2*n+1)+n)`
-/

namespace A277956.P4252921463311797880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A277956.P4252921463311797880

namespace A277956

/-- `A283054(A000217(2*n+1)+n)` -/
def P4252921463311797880.Spec : Prop :=
  ∀ n, P4252921463311797880.a n = A277956 n

end A277956

/-! ## A277956.P10425430796566448545

`A283054(A034856(2*n+1)-n)`
-/

namespace A277956.P10425430796566448545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A034856 (2 * n + 1) - (n : ℤ)).toNat

end

end A277956.P10425430796566448545

namespace A277956

/-- `A283054(A034856(2*n+1)-n)` -/
def P10425430796566448545.Spec : Prop :=
  ∀ n, P10425430796566448545.a n = A277956 n

end A277956

/-!
# A277957: a(n) = (n+3)*Sum_{i=0..n} binomial(3*n-2*i+2,n-i)/(2*n-i+3).

The programs for A277957, the canonical program `A277957.P5258930165989143796` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277957 has offset 0).

The definition of A277957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277957.P5258930165989143796

`(n+3)*∑{#}[n, C(3*n-2*#+2, n-#)/(2*n-#+3)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277957

/-- `(n+3)*∑{#}[n, C(3*n-2*#+2, n-#)/(2*n-#+3)]` -/
def P5258930165989143796.Spec : Prop :=
  ∀ n, P5258930165989143796.a n = (A277957 n : ℚ)

end A277957

/-! ## A277957.P13284830656011935905

`A277956(n+1)-A026004(n+1)`
-/

namespace A277957.P13284830656011935905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277956 (n + 1) - A026004 (n + 1)

end

end A277957.P13284830656011935905

namespace A277957

/-- `A277956(n+1)-A026004(n+1)` -/
def P13284830656011935905.Spec : Prop :=
  ∀ n, P13284830656011935905.a n = A277957 n

end A277957

/-! ## A277957.P1931977637441723459

`A097607(A005893(n+1))`
-/

namespace A277957.P1931977637441723459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097607 (A005893 (n + 1)).toNat

end

end A277957.P1931977637441723459

namespace A277957

/-- `A097607(A005893(n+1))` -/
def P1931977637441723459.Spec : Prop :=
  ∀ n, P1931977637441723459.a n = A277957 n

end A277957

/-! ## A277957.P3619869700285745177

`A097607(A271624(n+2))`
-/

namespace A277957.P3619869700285745177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097607 (A271624 (n + 2)).toNat

end

end A277957.P3619869700285745177

namespace A277957

/-- `A097607(A271624(n+2))` -/
def P3619869700285745177.Spec : Prop :=
  ∀ n, P3619869700285745177.a n = A277957 n

end A277957

/-! ## A277957.P3895118428137555150

`A096465(∑[4*n+6])`
-/

namespace A277957.P3895118428137555150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277957.P3895118428137555150

namespace A277957

/-- `A096465(∑[4*n+6])` -/
def P3895118428137555150.Spec : Prop :=
  ∀ n, P3895118428137555150.a n = A277957 n

end A277957

/-! ## A277957.P4766623698617310639

`A091491(A005408((n+2)²))`
-/

namespace A277957.P4766623698617310639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A005408 ((n + 2) ^ 2)).toNat

end

end A277957.P4766623698617310639

namespace A277957

/-- `A091491(A005408((n+2)²))` -/
def P4766623698617310639.Spec : Prop :=
  ∀ n, P4766623698617310639.a n = A277957 n

end A277957

/-! ## A277957.P13515962861837168744

`record[A096465((n+1)*A052938(n))]`
-/

namespace A277957.P13515962861837168744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 ((n + 1 : ℤ) * A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277957.P13515962861837168744

namespace A277957

/-- `record[A096465((n+1)*A052938(n))]` -/
def P13515962861837168744.Spec : Prop :=
  ∀ n, P13515962861837168744.a n = A277957 n

end A277957

/-! ## A277957.P10931046368166546161

`A091491(A167614(2*(n+1))+n)`
-/

namespace A277957.P10931046368166546161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A277957.P10931046368166546161

namespace A277957

/-- `A091491(A167614(2*(n+1))+n)` -/
def P10931046368166546161.Spec : Prop :=
  ∀ n, P10931046368166546161.a n = A277957 n

end A277957

/-! ## A277957.P12142459071234388524

`A323224(A059993(n+1)+2)`
-/

namespace A277957.P12142459071234388524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (A059993 (n + 1) + 2).toNat

end

end A277957.P12142459071234388524

namespace A277957

/-- `A323224(A059993(n+1)+2)` -/
def P12142459071234388524.Spec : Prop :=
  ∀ n, P12142459071234388524.a n = A277957 n

end A277957

/-! ## A277957.P13263050565547230765

`A283054(A132209(n+1))`
-/

namespace A277957.P13263050565547230765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A132209 (n + 1)).toNat

end

end A277957.P13263050565547230765

namespace A277957

/-- `A283054(A132209(n+1))` -/
def P13263050565547230765.Spec : Prop :=
  ∀ n, P13263050565547230765.a n = A277957 n

end A277957

/-!
# A277958: Expansion of Product_{n>=1} (1 - x^(7*n))^7/(1 - x^n)^8 in powers of x.

The programs for A277958, there is no canonical definition to state claims against.
-/

/-! ## A277958.P2059695528914044064

`A283077(n)-A285007(A113703(n))`
-/

namespace A277958.P2059695528914044064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283077 n - A285007 (A113703 n).toNat

end

end A277958.P2059695528914044064

/-! ## A277958.P8873052330843756527

`A023007(n)-A285007(A139582(n+2))`
-/

namespace A277958.P8873052330843756527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023007 n - A285007 (A139582 (n + 2)).toNat

end

end A277958.P8873052330843756527

/-! ## A277958.P11278920758530322665

`A023007(n)-A285007(2*A139582(n))`
-/

namespace A277958.P11278920758530322665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023007 n - A285007 (2 * A139582 n).toNat

end

end A277958.P11278920758530322665

/-! ## A277958.P15641058439714356485

`A023007(n)+7*A178798(A006128(n))`
-/

namespace A277958.P15641058439714356485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023007 n + 7 * A178798 (A006128 n).toNat

end

end A277958.P15641058439714356485

/-!
# A277959: Numbers k such that 2 is the largest decimal digit of k^2.

The programs for A277959, there is no canonical definition to state claims against.
-/

/-! ## A277959.P7655829658647683667

`sqrt(A277946(n+1))`
-/

namespace A277959.P7655829658647683667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277946 (n + 1) : ℝ)

end

end A277959.P7655829658647683667

/-! ## A277959.P13159001394382424485

`root(A277946(n+1), 2%A017365(n))`
-/

namespace A277959.P13159001394382424485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277946 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017365 n) : ℝ))

end

end A277959.P13159001394382424485

/-! ## A277959.P3551618593074539839

`root(A277946(n+1), gcd(2, A000038(n)))`
-/

namespace A277959.P3551618593074539839
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277946 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000038 n) : ℝ))

end

end A277959.P3551618593074539839

/-! ## A277959.P18259659992087321506

`root(A277946(n+1), A016825(n)%4)`
-/

namespace A277959.P18259659992087321506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277946 (n + 1) : ℝ) ^ (1 / (Int.tmod (A016825 n) 4 : ℝ))

end

end A277959.P18259659992087321506

/-! ## A277959.P17332728065212011877

`root(A277946(n+1), A001316(A001316(n)))`
-/

namespace A277959.P17332728065212011877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277946 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A277959.P17332728065212011877

/-! ## A277959.P14232286165048402781

`root(A277946(n+1), A278937(n+1)%3)`
-/

namespace A277959.P14232286165048402781
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277946 (n + 1) : ℝ) ^ (1 / (Int.tmod (A278937 (n + 1)) 3 : ℝ))

end

end A277959.P14232286165048402781

/-!
# A277960: Numbers k such that 3 is the largest decimal digit of k^2.

The programs for A277960, there is no canonical definition to state claims against.
-/

/-! ## A277960.P5215878162157425418

`sqrt(A277947(n+1))`
-/

namespace A277960.P5215878162157425418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277947 (n + 1) : ℝ)

end

end A277960.P5215878162157425418

/-! ## A277960.P12722738253125960082

`floor(sqrt(A277947(Δ[n²]-n)))`
-/

namespace A277960.P12722738253125960082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A277947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A277960.P12722738253125960082

/-! ## A277960.P1847562624530003422

`ceil(sqrt(A277947(2*n-(n-1))))`
-/

namespace A277960.P1847562624530003422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A277947 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ)⌉

end

end A277960.P1847562624530003422

/-! ## A277960.P10233925143558749166

`root(A277947(n+1), dr(A017185(n)))`
-/

namespace A277960.P10233925143558749166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A017185 n) : ℝ))

end

end A277960.P10233925143558749166

/-! ## A277960.P5107629072220902912

`root(A277947(n+1), A035214(∑[n]))`
-/

namespace A277960.P5107629072220902912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (A035214 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A277960.P5107629072220902912

/-! ## A277960.P5599560251909392728

`root(A277947(n+1), 2%A017365(n))`
-/

namespace A277960.P5599560251909392728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017365 n) : ℝ))

end

end A277960.P5599560251909392728

/-! ## A277960.P7219040046296404610

`root(A277947(n+1), gcd(2, A014206(n)))`
-/

namespace A277960.P7219040046296404610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A014206 n) : ℝ))

end

end A277960.P7219040046296404610

/-! ## A277960.P17147300313215740970

`root(A277947(n+1), A016825(n)%4)`
-/

namespace A277960.P17147300313215740970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (Int.tmod (A016825 n) 4 : ℝ))

end

end A277960.P17147300313215740970

/-! ## A277960.P5314802631894228115

`root(A277947(n+1), dr(A038444(n+1)))`
-/

namespace A277960.P5314802631894228115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A038444 (n + 1)) : ℝ))

end

end A277960.P5314802631894228115

/-! ## A277960.P913150989355907268

`root(A277947(n+1), dr(A052216(n+1)))`
-/

namespace A277960.P913150989355907268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A052216 (n + 1)) : ℝ))

end

end A277960.P913150989355907268

/-! ## A277960.P14622746531541801511

`root(A277947(n+1), A010673(2*n+1))`
-/

namespace A277960.P14622746531541801511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (A010673 (2 * n + 1) : ℝ))

end

end A277960.P14622746531541801511

/-! ## A277960.P7492554748870420379

`root(A277947(n+1), A001316(A001316(n)))`
-/

namespace A277960.P7492554748870420379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277947 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A277960.P7492554748870420379

/-!
# A277961: Numbers k such that 4 is the largest decimal digit of k^2.

The programs for A277961, there is no canonical definition to state claims against.
-/

/-! ## A277961.P9429787164305573024

`sqrt(A277948(n+1))`
-/

namespace A277961.P9429787164305573024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277948 (n + 1) : ℝ)

end

end A277961.P9429787164305573024

/-! ## A277961.P16157609778283530546

`root(A277948(n+1), 2%A017365(n))`
-/

namespace A277961.P16157609778283530546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277948 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017365 n) : ℝ))

end

end A277961.P16157609778283530546

/-! ## A277961.P7584956598094616101

`root(A277948(n+1), gcd(2, A000038(n)))`
-/

namespace A277961.P7584956598094616101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277948 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000038 n) : ℝ))

end

end A277961.P7584956598094616101

/-! ## A277961.P7361349968969196306

`root(A277948(n+1), A016825(n)%4)`
-/

namespace A277961.P7361349968969196306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277948 (n + 1) : ℝ) ^ (1 / (Int.tmod (A016825 n) 4 : ℝ))

end

end A277961.P7361349968969196306

/-! ## A277961.P16121830989899059631

`root(A277948(n+1), A001316(A001316(n)))`
-/

namespace A277961.P16121830989899059631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277948 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A277961.P16121830989899059631

/-! ## A277961.P13218064762949557690

`root(A277948(n+1), A278937(n+1)%3)`
-/

namespace A277961.P13218064762949557690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277948 (n + 1) : ℝ) ^ (1 / (Int.tmod (A278937 (n + 1)) 3 : ℝ))

end

end A277961.P13218064762949557690

/-!
# A277962: Least k such that A006577(k) = A006577(n) + A006577(n+1).

The programs for A277962, there is no canonical definition to state claims against.
-/

/-! ## A277962.P18210449489633079332

`A033491(A006577(n+1)+A006577(n+2))`
-/

namespace A277962.P18210449489633079332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A006577 (n + 1) + A006577 (n + 2)).toNat

end

end A277962.P18210449489633079332

/-! ## A277962.P10064259530946843380

`A033491(A008908(n+2)+A008908(n+1)-2)`
-/

namespace A277962.P10064259530946843380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A008908 (n + 2) + (A008908 (n + 1) - 2)).toNat

end

end A277962.P10064259530946843380

/-!
# A277963: G.f.: 1/(1+x) * Product_{k>=1} 1/(1-x^k)^k.

The programs for A277963, there is no canonical definition to state claims against.
-/

/-! ## A277963.P17655463537433996617

`∑{#}[n, (-1)^(n-#)*A000219(#)]`
-/

namespace A277963.P17655463537433996617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000219 k : ℚ)

end

end A277963.P17655463537433996617

/-! ## A277963.P12965677919976751132

`∑[A191659(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A277963.P12965677919976751132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A191659 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277963.P12965677919976751132

/-! ## A277963.P15435303113877296945

`A000219(n)-a(n-1)` with `a(0)=1`
-/

namespace A277963.P15435303113877296945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000219 n - a (n - 1)

end

end A277963.P15435303113877296945

/-! ## A277963.P11658613211390353890

`abs(∑[A000219(n)*A033999(n)])`
-/

namespace A277963.P11658613211390353890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A277963.P11658613211390353890

/-! ## A277963.P10401209953200141335

`A309267(n+1)+A091360(n)-A091360(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A277963.P10401209953200141335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309267 (n + 1) + (A091360 n - A091360 (n + 1)) - a (n - 1)

end

end A277963.P10401209953200141335

/-! ## A277963.P11536416233460857145

`A242642(A000217(n))-a(n-1)` with `a(0)=1`
-/

namespace A277963.P11536416233460857145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242642 (A000217 n).toNat - a (n - 1)

end

end A277963.P11536416233460857145

/-! ## A277963.P6641468126279563789

`A242642(A179865(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A277963.P6641468126279563789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242642 (A179865 (n + 1)).toNat - a (n - 1)

end

end A277963.P6641468126279563789

/-! ## A277963.P16286534639073635624

`∑{#}[n, (-1)^(n-#)*C(n, #)*A320563(#)]`
-/

namespace A277963.P16286534639073635624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A320563 k : ℚ)

end

end A277963.P16286534639073635624

/-! ## A277963.P11221127395618676460

`A005987(n)+2*A306098(n)-a(n-1)` with `a(0)=1`
-/

namespace A277963.P11221127395618676460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005987 n + 2 * A306098 n - a (n - 1)

end

end A277963.P11221127395618676460

/-! ## A277963.P7858544783836176661

`A242641(2*n²+1)-a(n-1)` with `a(0)=1`
-/

namespace A277963.P7858544783836176661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242641 (2 * n ^ 2 + 1) - a (n - 1)

end

end A277963.P7858544783836176661

/-!
# A277964: Numbers whose largest decimal digit is 2.

The programs for A277964, the canonical program `A277964.P11284190909579871943` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277964 has offset 1).

The definition of A277964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9489 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277964.P11284190909579871943

`A007089(A074940(1+n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A277964

/-- `A007089(A074940(1+n))` -/
def P11284190909579871943.Spec : Prop :=
  ∀ n, P11284190909579871943.a n = A277964 (n + 1)

theorem P11284190909579871943.correct : P11284190909579871943.Spec := by
  intro n
  simp only [A277964, Nat.add_sub_cancel]

end A277964

/-! ## A277964.P6690849537630399874

`A007089(eq[0, A039966(n)])`
-/

namespace A277964.P6690849537630399874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277964.P6690849537630399874

namespace A277964

/-- `A007089(eq[0, A039966(n)])` -/
def P6690849537630399874.Spec : Prop :=
  ∀ n, P6690849537630399874.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P17667149082385427561

`A007089(lt[0, A081603(n)])`
-/

namespace A277964.P17667149082385427561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277964.P17667149082385427561

namespace A277964

/-- `A007089(lt[0, A081603(n)])` -/
def P17667149082385427561.Spec : Prop :=
  ∀ n, P17667149082385427561.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P16699225083639884986

`A007089(lt[0, A273514(n)])`
-/

namespace A277964.P16699225083639884986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277964.P16699225083639884986

namespace A277964

/-- `A007089(lt[0, A273514(n)])` -/
def P16699225083639884986.Spec : Prop :=
  ∀ n, P16699225083639884986.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P1282165805592887541

`A007089(lt[A117966(n), n])`
-/

namespace A277964.P1282165805592887541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A277964.P1282165805592887541

namespace A277964

/-- `A007089(lt[A117966(n), n])` -/
def P1282165805592887541.Spec : Prop :=
  ∀ n, P1282165805592887541.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P8255001331398201663

`A007089(comp[A005836(n+1)])`
-/

namespace A277964.P8255001331398201663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A277964.P8255001331398201663

namespace A277964

/-- `A007089(comp[A005836(n+1)])` -/
def P8255001331398201663.Spec : Prop :=
  ∀ n, P8255001331398201663.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P9502674486282531096

`A007089(A189822(n+1)-1)`
-/

namespace A277964.P9502674486282531096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A189822 (n + 1) - 1).toNat

end

end A277964.P9502674486282531096

namespace A277964

/-- `A007089(A189822(n+1)-1)` -/
def P9502674486282531096.Spec : Prop :=
  ∀ n, P9502674486282531096.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P5416268444007402870

`A007089(eq[0, A088917(2*n)])`
-/

namespace A277964.P5416268444007402870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277964.P5416268444007402870

namespace A277964

/-- `A007089(eq[0, A088917(2*n)])` -/
def P5416268444007402870.Spec : Prop :=
  ∀ n, P5416268444007402870.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P10197597696138027245

`A007089(eq[1, A001221(A117592(n))])`
-/

namespace A277964.P10197597696138027245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A117592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277964.P10197597696138027245

namespace A277964

/-- `A007089(eq[1, A001221(A117592(n))])` -/
def P10197597696138027245.Spec : Prop :=
  ∀ n, P10197597696138027245.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P274902311414992455

`A007089(eq[3, A006530(A006047(n))])`
-/

namespace A277964.P274902311414992455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277964.P274902311414992455

namespace A277964

/-- `A007089(eq[3, A006530(A006047(n))])` -/
def P274902311414992455.Spec : Prop :=
  ∀ n, P274902311414992455.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P15855937120052765639

`A007089(eq[0, A006996(n)])`
-/

namespace A277964.P15855937120052765639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277964.P15855937120052765639

namespace A277964

/-- `A007089(eq[0, A006996(n)])` -/
def P15855937120052765639.Spec : Prop :=
  ∀ n, P15855937120052765639.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P18301949223942053819

`A007089(lt[0, A006997(n)])`
-/

namespace A277964.P18301949223942053819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277964.P18301949223942053819

namespace A277964

/-- `A007089(lt[0, A006997(n)])` -/
def P18301949223942053819.Spec : Prop :=
  ∀ n, P18301949223942053819.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P2273196138111848641

`A007089(eq[0, char[A005836(n+1)]])`
-/

namespace A277964.P2273196138111848641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277964.P2273196138111848641

namespace A277964

/-- `A007089(eq[0, char[A005836(n+1)]])` -/
def P2273196138111848641.Spec : Prop :=
  ∀ n, P2273196138111848641.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P175717692146046314

`A007090(eq[2, A190593(n)])`
-/

namespace A277964.P175717692146046314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277964.P175717692146046314

namespace A277964

/-- `A007090(eq[2, A190593(n)])` -/
def P175717692146046314.Spec : Prop :=
  ∀ n, P175717692146046314.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P264199623657255122

`A276326(eq[2, A276336(n)])`
-/

namespace A277964.P264199623657255122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277964.P264199623657255122

namespace A277964

/-- `A276326(eq[2, A276336(n)])` -/
def P264199623657255122.Spec : Prop :=
  ∀ n, P264199623657255122.a n = A277964 (n + 1)

end A277964

/-! ## A277964.P12736263873095596617

`∩[A011532(n+1), A007089(n)]`
-/

namespace A277964.P12736263873095596617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277964.P12736263873095596617

namespace A277964

/-- `∩[A011532(n+1), A007089(n)]` -/
def P12736263873095596617.Spec : Prop :=
  ∀ n, (P12736263873095596617.a n : ℤ) = A277964 (n + 1)

end A277964

/-! ## A277964.P16744793920203237314

`∩[A118950(n+1), A007089(n)]`
-/

namespace A277964.P16744793920203237314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277964.P16744793920203237314

namespace A277964

/-- `∩[A118950(n+1), A007089(n)]` -/
def P16744793920203237314.Spec : Prop :=
  ∀ n, (P16744793920203237314.a n : ℤ) = A277964 (n + 1)

end A277964

/-!
# A277965: Numbers whose largest decimal digit is 3.

The programs for A277965, the canonical program `A277965.P4665117588498832647` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277965 has offset 1).

The definition of A277965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8057 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277965.P5405836778533153284

`A007090(comp[A023717(n)])`
-/

namespace A277965.P5405836778533153284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A277965.P5405836778533153284

namespace A277965

/-- `A007090(comp[A023717(n)])` -/
def P5405836778533153284.Spec : Prop :=
  ∀ n, P5405836778533153284.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P4665117588498832647

`A007090(A337250(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A277965

/-- `A007090(A337250(n+1))` -/
def P4665117588498832647.Spec : Prop :=
  ∀ n, P4665117588498832647.a n = A277965 (n + 1)

theorem P4665117588498832647.correct : P4665117588498832647.Spec := by
  intro n
  simp only [A277965, Nat.add_sub_cancel]

end A277965

/-! ## A277965.P12499110932797842509

`A007090(lt[0, A292373(n)])`
-/

namespace A277965.P12499110932797842509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277965.P12499110932797842509

namespace A277965

/-- `A007090(lt[0, A292373(n)])` -/
def P12499110932797842509.Spec : Prop :=
  ∀ n, P12499110932797842509.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P7548657945950432517

`A007090(eq[3, A190593(n)])`
-/

namespace A277965.P7548657945950432517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277965.P7548657945950432517

namespace A277965

/-- `A007090(eq[3, A190593(n)])` -/
def P7548657945950432517.Spec : Prop :=
  ∀ n, P7548657945950432517.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P7569688649071570265

`A007090(lt[A292371(n), A059905(n)])`
-/

namespace A277965.P7569688649071570265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277965.P7569688649071570265

namespace A277965

/-- `A007090(lt[A292371(n), A059905(n)])` -/
def P7569688649071570265.Spec : Prop :=
  ∀ n, P7569688649071570265.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P15466503859345361826

`A007090(lt[A292372(n), A059906(n)])`
-/

namespace A277965.P15466503859345361826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277965.P15466503859345361826

namespace A277965

/-- `A007090(lt[A292372(n), A059906(n)])` -/
def P15466503859345361826.Spec : Prop :=
  ∀ n, P15466503859345361826.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P13849725455068813311

`A276326(eq[3, A276336(n)])`
-/

namespace A277965.P13849725455068813311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277965.P13849725455068813311

namespace A277965

/-- `A276326(eq[3, A276336(n)])` -/
def P13849725455068813311.Spec : Prop :=
  ∀ n, P13849725455068813311.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P3137195683586873958

`∩[A011533(n+1), A007090(n)]`
-/

namespace A277965.P3137195683586873958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277965.P3137195683586873958

namespace A277965

/-- `∩[A011533(n+1), A007090(n)]` -/
def P3137195683586873958.Spec : Prop :=
  ∀ n, (P3137195683586873958.a n : ℤ) = A277965 (n + 1)

end A277965

/-! ## A277965.P113532961463856361

`eq[3, A054055(n)]`
-/

namespace A277965.P113532961463856361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277965.P113532961463856361

namespace A277965

/-- `eq[3, A054055(n)]` -/
def P113532961463856361.Spec : Prop :=
  ∀ n, (P113532961463856361.a n : ℤ) = A277965 (n + 1)

end A277965

/-! ## A277965.P15646327408291631325

`record[A064770(A011539(n+1))]`
-/

namespace A277965.P15646327408291631325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A011539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277965.P15646327408291631325

namespace A277965

/-- `record[A064770(A011539(n+1))]` -/
def P15646327408291631325.Spec : Prop :=
  ∀ n, P15646327408291631325.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P10466160087167092088

`record[A106747(A283609(n+1))]`
-/

namespace A277965.P10466160087167092088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A283609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277965.P10466160087167092088

namespace A277965

/-- `record[A106747(A283609(n+1))]` -/
def P10466160087167092088.Spec : Prop :=
  ∀ n, P10466160087167092088.a n = A277965 (n + 1)

end A277965

/-! ## A277965.P14194281843983626966

`eq[1, A000030(A004186(n))-2]`
-/

namespace A277965.P14194281843983626966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004186 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277965.P14194281843983626966

namespace A277965

/-- `eq[1, A000030(A004186(n))-2]` -/
def P14194281843983626966.Spec : Prop :=
  ∀ n, (P14194281843983626966.a n : ℤ) = A277965 (n + 1)

end A277965

/-! ## A277965.P1025952141463177166

`eq[1, A047813(A137564(n))-2]`
-/

namespace A277965.P1025952141463177166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A137564 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277965.P1025952141463177166

namespace A277965

/-- `eq[1, A047813(A137564(n))-2]` -/
def P1025952141463177166.Spec : Prop :=
  ∀ n, (P1025952141463177166.a n : ℤ) = A277965 (n + 1)

end A277965

/-! ## A277965.P10606458857772682269

`eq[1, A000030(A227362(n))-2]`
-/

namespace A277965.P10606458857772682269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A227362 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277965.P10606458857772682269

namespace A277965

/-- `eq[1, A000030(A227362(n))-2]` -/
def P10606458857772682269.Spec : Prop :=
  ∀ n, (P10606458857772682269.a n : ℤ) = A277965 (n + 1)

end A277965

/-! ## A277965.P14225923191124012440

`eq[2, A070939(A086066(n))-2]`
-/

namespace A277965.P14225923191124012440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A086066 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277965.P14225923191124012440

namespace A277965

/-- `eq[2, A070939(A086066(n))-2]` -/
def P14225923191124012440.Spec : Prop :=
  ∀ n, (P14225923191124012440.a n : ℤ) = A277965 (n + 1)

end A277965

/-!
# A277966: Numbers whose largest decimal digit is 4.

The programs for A277966, there is no canonical definition to state claims against.
-/

/-! ## A277966.P1492331350565696447

`A007091(A337572(n+1))`
-/

namespace A277966.P1492331350565696447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A337572 (n + 1)).toNat

end

end A277966.P1492331350565696447

/-! ## A277966.P7692502905626436697

`∩[A011534(n+1), A007091(n)]`
-/

namespace A277966.P7692502905626436697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277966.P7692502905626436697

/-! ## A277966.P16772618871928828178

`∩[A118951(n+1), A007091(n)]`
-/

namespace A277966.P16772618871928828178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277966.P16772618871928828178

/-! ## A277966.P1383648904100767134

`eq[4, A054055(n)]`
-/

namespace A277966.P1383648904100767134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277966.P1383648904100767134

/-! ## A277966.P10133733551046426443

`eq[4, A047842(n)%10]`
-/

namespace A277966.P10133733551046426443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277966.P10133733551046426443

/-! ## A277966.P16408183091103924628

`eq[4, floor(log2(A086066(n)))]`
-/

namespace A277966.P16408183091103924628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277966.P16408183091103924628

/-! ## A277966.P1460615342112056402

`eq[2, (A004185(n)-2)%10]`
-/

namespace A277966.P1460615342112056402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n - 2) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277966.P1460615342112056402

/-! ## A277966.P6003356850993980191

`eq[n+5, A095815(n+1)]+1`
-/

namespace A277966.P6003356850993980191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277966.P6003356850993980191

/-! ## A277966.P13886830469816511426

`record[A106747(A011538(n+1))]`
-/

namespace A277966.P13886830469816511426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A011538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277966.P13886830469816511426

/-! ## A277966.P12196061319868081355

`eq[2, A000030(A004186(n))-2]`
-/

namespace A277966.P12196061319868081355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004186 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277966.P12196061319868081355

/-! ## A277966.P4229696902376195866

`eq[2, A047813(A137564(n))-2]`
-/

namespace A277966.P4229696902376195866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A137564 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277966.P4229696902376195866

/-! ## A277966.P3907853540652914293

`eq[2, A000030(A227362(n))-2]`
-/

namespace A277966.P3907853540652914293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A227362 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277966.P3907853540652914293

/-! ## A277966.P9258761841934266507

`lt[A222238(n), A001613(n)]/2`
-/

namespace A277966.P9258761841934266507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A277966.P9258761841934266507

/-! ## A277966.P3183547214287120721

`lt[A222252(n), A001613(n)]/2`
-/

namespace A277966.P3183547214287120721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A277966.P3183547214287120721

/-! ## A277966.P6678353036794239007

`lt[A222238(2*n), A001613(2*n)]`
-/

namespace A277966.P6678353036794239007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277966.P6678353036794239007

/-! ## A277966.P12684283856888279010

`lt[A222252(2*n), A001613(2*n)]`
-/

namespace A277966.P12684283856888279010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277966.P12684283856888279010

/-! ## A277966.P9522501801478438139

`lt[A054055(A004179(n)), A054055(n)]`
-/

namespace A277966.P9522501801478438139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277966.P9522501801478438139

/-! ## A277966.P15376935410983347399

`∩[A120433(n+1), A007091(n)]`
-/

namespace A277966.P15376935410983347399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277966.P15376935410983347399

/-!
# A277967: Number of even numbers b with 0 < b < 2^n such that b^(2^n) + 1 is prime.

The programs for A277967, there is no canonical definition to state claims against.
-/

/-! ## A277967.P18126298423688315389

`A108964(A000788(n)^A108947(n))`
-/

namespace A277967.P18126298423688315389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (SequenceMachineLib.roundAway ((A000788 n : ℚ) ^ (A108947 n : ℤ))).toNat

end

end A277967.P18126298423688315389

/-! ## A277967.P18446545823264855576

`A152196(Δ[A000096(A072282(n+1))])`
-/

namespace A277967.P18446545823264855576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A072282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152196 (f1 (n + 1) - f1 n).toNat

end

end A277967.P18446545823264855576

/-! ## A277967.P10024507871676038299

`A102677(A092256(n+1))^A304334(n)`
-/

namespace A277967.P10024507871676038299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102677 (A092256 (n + 1)).toNat : ℚ) ^ (A304334 n : ℤ)

end

end A277967.P10024507871676038299

/-! ## A277967.P6565456620559759970

`A332813(A296599(n+1)^A332813(n+1))`
-/

namespace A277967.P6565456620559759970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (SequenceMachineLib.roundAway ((A296599 (n + 1) : ℚ) ^ (A332813 (n + 1) : ℤ))).toNat

end

end A277967.P6565456620559759970

/-! ## A277967.P6762819377154619255

`A056563(A351328(n+2))`
-/

namespace A277967.P6762819377154619255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (A351328 (n + 2)).toNat

end

end A277967.P6762819377154619255

/-!
# A277968: Expansion of ((Product_{n>=1} (1 - x^(3*n))/(1 - x^n)^3) - 1)/3 in powers of x.

The programs for A277968, there is no canonical definition to state claims against.
-/

/-! ## A277968.P4573128733094348354

`floor(A273845(n)/3)`
-/

namespace A277968.P4573128733094348354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A273845 n : ℚ) / 3⌋

end

end A277968.P4573128733094348354

/-! ## A277968.P4395982049091685081

`(A273845(n)-A000007(n))/3`
-/

namespace A277968.P4395982049091685081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273845 n - A000007 n : ℚ) / 3

end

end A277968.P4395982049091685081

/-! ## A277968.P10327460868536489177

`A057427(n)/3*A273845(n)`
-/

namespace A277968.P10327460868536489177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 3 * (A273845 n : ℚ)

end

end A277968.P10327460868536489177

/-! ## A277968.P7790208120598186804

`n/A008486(n)*A273845(n)`
-/

namespace A277968.P7790208120598186804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008486 n : ℚ) * (A273845 n : ℚ)

end

end A277968.P7790208120598186804

/-! ## A277968.P2066698470591059558

`A273845(n)%A277212(n)/3`
-/

namespace A277968.P2066698470591059558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A273845 n) (A277212 n) : ℚ) / 3

end

end A277968.P2066698470591059558

/-!
# A277970: Numbers k = A005574(m) such that k = (A005574(m-1)+A005574(m+1))/2.

The programs for A277970, there is no canonical definition to state claims against.
-/

/-! ## A277970.P13102008910524787734

`∩[A001912(n+1)+A001912(n+3), A005574(n+1)]`
-/

namespace A277970.P13102008910524787734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1) + A001912 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277970.P13102008910524787734

/-!
# A277973: Sum of horizontal positions of the first peak in all bargraphs of semiperimeter n.

The programs for A277973, the canonical program `A277973.P15221011818222038825` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277973 has offset 1).

The definition of A277973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277973.P15221011818222038825

`A188464(n)-∑[A086581(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277973

/-- `A188464(n)-∑[A086581(n+1)]` -/
def P15221011818222038825.Spec : Prop :=
  ∀ n, P15221011818222038825.a n = A277973 (n + 1)

theorem P15221011818222038825.correct : P15221011818222038825.Spec := by
  intro n
  simp only [A277973, Nat.add_sub_cancel]

end A277973

/-! ## A277973.P16761511925691470400

`A188464(n)-∑[A082582(n+2)]`
-/

namespace A277973.P16761511925691470400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277973.P16761511925691470400

namespace A277973

/-- `A188464(n)-∑[A082582(n+2)]` -/
def P16761511925691470400.Spec : Prop :=
  ∀ n, P16761511925691470400.a n = A277973 (n + 1)

end A277973

/-! ## A277973.P3963511521612662675

`A188464(n)-∑[A025242(n+3)]`
-/

namespace A277973.P3963511521612662675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277973.P3963511521612662675

namespace A277973

/-- `A188464(n)-∑[A025242(n+3)]` -/
def P3963511521612662675.Spec : Prop :=
  ∀ n, P3963511521612662675.a n = A277973 (n + 1)

end A277973

/-! ## A277973.P12273752260749174734

`∑[A273900(n+2)-Δ[A105633(n)]]`
-/

namespace A277973.P12273752260749174734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273900 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277973.P12273752260749174734

namespace A277973

/-- `∑[A273900(n+2)-Δ[A105633(n)]]` -/
def P12273752260749174734.Spec : Prop :=
  ∀ n, P12273752260749174734.a n = A277973 (n + 1)

end A277973

/-! ## A277973.P5049307574606350509

`A188464(n)-∑[record[A273342(n+2)]]`
-/

namespace A277973.P5049307574606350509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277973.P5049307574606350509

namespace A277973

/-- `A188464(n)-∑[record[A273342(n+2)]]` -/
def P5049307574606350509.Spec : Prop :=
  ∀ n, P5049307574606350509.a n = A277973 (n + 1)

end A277973

/-!
# A277974: Expansion of ((Product_{n>=1} (1 - x^(5*n))/(1 - x^n)^5) - 1)/5 in powers of x.

The programs for A277974, there is no canonical definition to state claims against.
-/

/-! ## A277974.P7757769349325733246

`floor(A277212(n)/5)`
-/

namespace A277974.P7757769349325733246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277212 n : ℚ) / 5⌋

end

end A277974.P7757769349325733246

/-! ## A277974.P13451281436679482104

`(A277212(n)-A000007(n))/5`
-/

namespace A277974.P13451281436679482104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277212 n - A000007 n : ℚ) / 5

end

end A277974.P13451281436679482104

/-! ## A277974.P18262236977715256454

`A057427(n)/5*A277212(n)`
-/

namespace A277974.P18262236977715256454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 5 * (A277212 n : ℚ)

end

end A277974.P18262236977715256454

/-! ## A277974.P6565238120706000064

`n/A008706(n)*A277212(n)`
-/

namespace A277974.P6565238120706000064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008706 n : ℚ) * (A277212 n : ℚ)

end

end A277974.P6565238120706000064

/-! ## A277974.P7019410007261325900

`A277212(n)%A160539(n)/5`
-/

namespace A277974.P7019410007261325900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A277212 n) (A160539 n) : ℚ) / 5

end

end A277974.P7019410007261325900

/-!
# A277975: a(n) = n*x^n + (n-1)*x^(n-1) + . . . + x + 1 for x=5.

The programs for A277975, the canonical program `A277975.P9130100705901054392` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277975 has offset 0).

The definition of A277975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277975.P4942692334154006190

`ogf((1-5x+25x^2)/(1-11x+35x^2-25x^3))`
-/

namespace A277975.P4942692334154006190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 25] [1, -11, 35, -25] n

end

end A277975.P4942692334154006190

namespace A277975

/-- `ogf((1-5x+25x^2)/(1-11x+35x^2-25x^3))` -/
def P4942692334154006190.Spec : Prop :=
  ∀ n, P4942692334154006190.a n = A277975 n

end A277975

/-! ## A277975.P9130100705901054392

`11*a(n-1)-35*a(n-2)+25*a(n-3)` with `a(0)=1, a(1)=6, a(2)=56`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277975

/-- `11*a(n-1)-35*a(n-2)+25*a(n-3)` -/
def P9130100705901054392.Spec : Prop :=
  ∀ n, P9130100705901054392.a n = A277975 n

theorem P9130100705901054392.correct : P9130100705901054392.Spec := by
  intro n
  simp only [A277975]

end A277975

/-! ## A277975.P354660859127368159

`(21-5^(1+n)+4*5^(1+n)*n)/16`
-/

namespace A277975.P354660859127368159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 - (5 ^ (1 + n) : ℤ) + (4 * 5 ^ (1 + n) * n : ℤ) : ℚ) / 16

end

end A277975.P354660859127368159

namespace A277975

/-- `(21-5^(1+n)+4*5^(1+n)*n)/16` -/
def P354660859127368159.Spec : Prop :=
  ∀ n, P354660859127368159.a n = (A277975 n : ℚ)

theorem P354660859127368159.correct : P354660859127368159.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A277975, Nat.add_sub_cancel, A277975.P354660859127368159.a, A277975.P9130100705901054392.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A277975, Nat.add_sub_cancel, A277975.P354660859127368159.a, A277975.P9130100705901054392.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A277975

/-! ## A277975.P2871846513012480061

`∑[5^n*round(1/acot(n))]`
-/

namespace A277975.P2871846513012480061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277975.P2871846513012480061

namespace A277975

/-- `∑[5^n*round(1/acot(n))]` -/
def P2871846513012480061.Spec : Prop :=
  ∀ n, P2871846513012480061.a n = A277975 n

end A277975

/-! ## A277975.P11636866442004081401

`a(n-1)+n*5^n` with `a(0)=1`
-/

namespace A277975.P11636866442004081401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * 5 ^ n

end

end A277975.P11636866442004081401

namespace A277975

/-- `a(n-1)+n*5^n` -/
def P11636866442004081401.Spec : Prop :=
  ∀ n, (P11636866442004081401.a n : ℤ) = A277975 n

end A277975

/-! ## A277975.P14177120735383182742

`∑[5^n*or(n, and(1, ∏{p}[n, #]))]`
-/

namespace A277975.P14177120735383182742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * Nat.lor n (Nat.land 1 (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277975.P14177120735383182742

namespace A277975

/-- `∑[5^n*or(n, and(1, ∏{p}[n, #]))]` -/
def P14177120735383182742.Spec : Prop :=
  ∀ n, (P14177120735383182742.a n : ℤ) = A277975 n

end A277975

/-! ## A277975.P5739402889827087800

`∑[5^n*n%a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A277975.P5739402889827087800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 ^ n * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277975.P5739402889827087800

namespace A277975

/-- `∑[5^n*n%a(n-1)]` -/
def P5739402889827087800.Spec : Prop :=
  ∀ n, (P5739402889827087800.a n : ℤ) = A277975 n

end A277975

/-! ## A277975.P16101016583763061006

`∑[n*gcd(5, a(n-1))^n]` with `a(0)=1, a(1)=5`
-/

namespace A277975.P16101016583763061006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  n * Nat.gcd 5 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277975.P16101016583763061006

namespace A277975

/-- `∑[n*gcd(5, a(n-1))^n]` -/
def P16101016583763061006.Spec : Prop :=
  ∀ n, (P16101016583763061006.a n : ℤ) = A277975 n

end A277975

/-! ## A277975.P11773129902798461540

`∑[(A004277(n)-n)*5^n]`
-/

namespace A277975.P11773129902798461540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - (n : ℤ)) * (5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277975.P11773129902798461540

namespace A277975

/-- `∑[(A004277(n)-n)*5^n]` -/
def P11773129902798461540.Spec : Prop :=
  ∀ n, P11773129902798461540.a n = A277975 n

end A277975

/-! ## A277975.P5837788891614912605

`∑[A000351(n)*A028310(n)]`
-/

namespace A277975.P5837788891614912605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277975.P5837788891614912605

namespace A277975

/-- `∑[A000351(n)*A028310(n)]` -/
def P5837788891614912605.Spec : Prop :=
  ∀ n, P5837788891614912605.a n = A277975 n

end A277975

/-! ## A277975.P18436268581182234579

`∑[A065033(2*n)*A074872(2*(n+1))]`
-/

namespace A277975.P18436268581182234579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A074872 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277975.P18436268581182234579

namespace A277975

/-- `∑[A065033(2*n)*A074872(2*(n+1))]` -/
def P18436268581182234579.Spec : Prop :=
  ∀ n, P18436268581182234579.a n = A277975 n

end A277975

/-!
# A277976: a(n) = n*(3*n + 23).

The programs for A277976, the canonical program `A277976.P2363283820760070820` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277976 has offset 0).

The definition of A277976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+23)` (program `A277976.P2363283820760070820`, by `A277976.P2363283820760070820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277976.P2363283820760070820

`n*(3*n+23)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277976

/-- `n*(3*n+23)` -/
def P2363283820760070820.Spec : Prop :=
  ∀ n, (P2363283820760070820.a n : ℤ) = A277976 n

theorem P2363283820760070820.correct : P2363283820760070820.Spec := by
  intro n
  simp only [A277976]

end A277976

/-! ## A277976.P5303007716700120698

`ogf((26x-20x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277976.P5303007716700120698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 26, -20] [1, -3, 3, -1] n

end

end A277976.P5303007716700120698

namespace A277976

/-- `ogf((26x-20x^2)/(1-3x+3x^2-x^3))` -/
def P5303007716700120698.Spec : Prop :=
  ∀ n, P5303007716700120698.a n = A277976 n

end A277976

/-! ## A277976.P10478091974200520327

`∑[a(n-1)+6]` with `a(0)=0, a(1)=26`
-/

namespace A277976.P10478091974200520327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 26] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277976.P10478091974200520327

namespace A277976

/-- `∑[a(n-1)+6]` -/
def P10478091974200520327.Spec : Prop :=
  ∀ n, (P10478091974200520327.a n : ℤ) = A277976 n

end A277976

/-! ## A277976.P1418762997716153003

`record[3*n*(n-8)]-n`
-/

namespace A277976.P1418762997716153003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ((n : ℤ) - 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A277976.P1418762997716153003

namespace A277976

/-- `record[3*n*(n-8)]-n` -/
def P1418762997716153003.Spec : Prop :=
  ∀ n, P1418762997716153003.a n = A277976 n

end A277976

/-! ## A277976.P4305851399617762384

`A140689(n)+3*n`
-/

namespace A277976.P4305851399617762384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140689 n + (3 * n : ℤ)

end

end A277976.P4305851399617762384

namespace A277976

/-- `A140689(n)+3*n` -/
def P4305851399617762384.Spec : Prop :=
  ∀ n, P4305851399617762384.a n = A277976 n

theorem P4305851399617762384.correct : P4305851399617762384.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P4305851399617762384.a, A277976.P2363283820760070820.a, A140689, A140689.P2638629226622628695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P15477968212226111866

`3*A028566(n)-n`
-/

namespace A277976.P15477968212226111866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028566 n - (n : ℤ)

end

end A277976.P15477968212226111866

namespace A277976

/-- `3*A028566(n)-n` -/
def P15477968212226111866.Spec : Prop :=
  ∀ n, P15477968212226111866.a n = A277976 n

theorem P15477968212226111866.correct : P15477968212226111866.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P15477968212226111866.a, A277976.P2363283820760070820.a, A028566, A028566.P16217811333001459457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P658456218856214842

`A140681(n)+5*n`
-/

namespace A277976.P658456218856214842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 n + (5 * n : ℤ)

end

end A277976.P658456218856214842

namespace A277976

/-- `A140681(n)+5*n` -/
def P658456218856214842.Spec : Prop :=
  ∀ n, P658456218856214842.a n = A277976 n

theorem P658456218856214842.correct : P658456218856214842.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P658456218856214842.a, A277976.P2363283820760070820.a, A140681, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P7738307018759995506

`A140678(n)+13*n`
-/

namespace A277976.P7738307018759995506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n + (13 * n : ℤ)

end

end A277976.P7738307018759995506

namespace A277976

/-- `A140678(n)+13*n` -/
def P7738307018759995506.Spec : Prop :=
  ∀ n, P7738307018759995506.a n = A277976 n

theorem P7738307018759995506.correct : P7738307018759995506.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P7738307018759995506.a, A277976.P2363283820760070820.a, A140678, A140678.P13318772034406866523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P14617596994098832931

`A049450(n)+24*n`
-/

namespace A277976.P14617596994098832931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + (24 * n : ℤ)

end

end A277976.P14617596994098832931

namespace A277976

/-- `A049450(n)+24*n` -/
def P14617596994098832931.Spec : Prop :=
  ∀ n, P14617596994098832931.a n = A277976 n

theorem P14617596994098832931.correct : P14617596994098832931.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P14617596994098832931.a, A277976.P2363283820760070820.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P5287540314804906854

`A000567(n)+25*n`
-/

namespace A277976.P5287540314804906854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + (25 * n : ℤ)

end

end A277976.P5287540314804906854

namespace A277976

/-- `A000567(n)+25*n` -/
def P5287540314804906854.Spec : Prop :=
  ∀ n, P5287540314804906854.a n = A277976 n

theorem P5287540314804906854.correct : P5287540314804906854.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P5287540314804906854.a, A277976.P2363283820760070820.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P939889264731093878

`A008607(n)+A000567(n)`
-/

namespace A277976.P939889264731093878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n + A000567 n

end

end A277976.P939889264731093878

namespace A277976

/-- `A008607(n)+A000567(n)` -/
def P939889264731093878.Spec : Prop :=
  ∀ n, P939889264731093878.a n = A277976 n

theorem P939889264731093878.correct : P939889264731093878.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P939889264731093878.a, A277976.P2363283820760070820.a, A000567, A000567.P17850767079432249295.a, A008607, A008607.P4608234580437606002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P4606469992474699032

`A028896(n)+A008602(n)`
-/

namespace A277976.P4606469992474699032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A008602 n

end

end A277976.P4606469992474699032

namespace A277976

/-- `A028896(n)+A008602(n)` -/
def P4606469992474699032.Spec : Prop :=
  ∀ n, P4606469992474699032.a n = A277976 n

theorem P4606469992474699032.correct : P4606469992474699032.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P4606469992474699032.a, A277976.P2363283820760070820.a, A008602, A008602.P10803716924039054280.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P3128132337175938006

`A033428(n)+A008605(n)`
-/

namespace A277976.P3128132337175938006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A008605 n

end

end A277976.P3128132337175938006

namespace A277976

/-- `A033428(n)+A008605(n)` -/
def P3128132337175938006.Spec : Prop :=
  ∀ n, P3128132337175938006.a n = A277976 n

theorem P3128132337175938006.correct : P3128132337175938006.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P3128132337175938006.a, A277976.P2363283820760070820.a, A008605, A008605.P5066899400796399337.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P15393687145547374249

`A045944(n)+A008603(n)`
-/

namespace A277976.P15393687145547374249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + A008603 n

end

end A277976.P15393687145547374249

namespace A277976

/-- `A045944(n)+A008603(n)` -/
def P15393687145547374249.Spec : Prop :=
  ∀ n, P15393687145547374249.a n = A277976 n

theorem P15393687145547374249.correct : P15393687145547374249.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P15393687145547374249.a, A277976.P2363283820760070820.a, A008603, A008603.P13373765567278526098.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P1559971720741027635

`A049451(n)+A008604(n)`
-/

namespace A277976.P1559971720741027635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + A008604 n

end

end A277976.P1559971720741027635

namespace A277976

/-- `A049451(n)+A008604(n)` -/
def P1559971720741027635.Spec : Prop :=
  ∀ n, P1559971720741027635.a n = A277976 n

theorem P1559971720741027635.correct : P1559971720741027635.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P1559971720741027635.a, A277976.P2363283820760070820.a, A008604, A008604.P4469911331699551473.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P8881721153370752871

`A067725(n)+A008599(n)`
-/

namespace A277976.P8881721153370752871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + A008599 n

end

end A277976.P8881721153370752871

namespace A277976

/-- `A067725(n)+A008599(n)` -/
def P8881721153370752871.Spec : Prop :=
  ∀ n, P8881721153370752871.a n = A277976 n

theorem P8881721153370752871.correct : P8881721153370752871.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P8881721153370752871.a, A277976.P2363283820760070820.a, A008599, A008599.P9337740256108162749.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P16033841814237045829

`A098850(n)+A033537(n)`
-/

namespace A277976.P16033841814237045829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098850 n + A033537 n

end

end A277976.P16033841814237045829

namespace A277976

/-- `A098850(n)+A033537(n)` -/
def P16033841814237045829.Spec : Prop :=
  ∀ n, P16033841814237045829.a n = A277976 n

theorem P16033841814237045829.correct : P16033841814237045829.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P16033841814237045829.a, A277976.P2363283820760070820.a, A033537, A033537.P12257875096179782365.a, A098850, A098850.P17400619238635245445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P1251142451482209196

`A132766(n)+A000384(n)`
-/

namespace A277976.P1251142451482209196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132766 n + A000384 n

end

end A277976.P1251142451482209196

namespace A277976

/-- `A132766(n)+A000384(n)` -/
def P1251142451482209196.Spec : Prop :=
  ∀ n, P1251142451482209196.a n = A277976 n

theorem P1251142451482209196.correct : P1251142451482209196.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P1251142451482209196.a, A277976.P2363283820760070820.a, A000384, A000384.P5392390561999168282.a, A132766, A132766.P16340710873553497223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P13672881878386968397

`A132765(n)+A001105(n)`
-/

namespace A277976.P13672881878386968397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132765 n + A001105 n

end

end A277976.P13672881878386968397

namespace A277976

/-- `A132765(n)+A001105(n)` -/
def P13672881878386968397.Spec : Prop :=
  ∀ n, P13672881878386968397.a n = A277976 n

theorem P13672881878386968397.correct : P13672881878386968397.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P13672881878386968397.a, A277976.P2363283820760070820.a, A001105, A001105.P6098599260439307493.a, A132765, A132765.P2423139807718157486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-! ## A277976.P138077778886153139

`A120071(n)+A014106(n)`
-/

namespace A277976.P138077778886153139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120071 n + A014106 n

end

end A277976.P138077778886153139

namespace A277976

/-- `A120071(n)+A014106(n)` -/
def P138077778886153139.Spec : Prop :=
  ∀ n, P138077778886153139.a n = A277976 n

theorem P138077778886153139.correct : P138077778886153139.Spec := by
  intro n
  simp only [A277976, Nat.add_sub_cancel, A277976.P138077778886153139.a, A277976.P2363283820760070820.a, A014106, A014106.P1375640882817375549.a, A120071, A120071.P10160882043029890963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277976

/-!
# A277977: a(n) = n*(1-3n+2*n^2+2*n^3)/2.

The programs for A277977, the canonical program `A277977.P11706650839106521069` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277977 has offset 0).

The definition of A277977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277977.P11706650839106521069

`ogf((x+14x^2+11x^3-2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277977

/-- `ogf((x+14x^2+11x^3-2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11706650839106521069.Spec : Prop :=
  ∀ n, P11706650839106521069.a n = A277977 n

theorem P11706650839106521069.correct : P11706650839106521069.Spec := by
  intro n
  simp only [A277977]

end A277977

/-! ## A277977.P14975759102670552521

`n*(1-3*n+2*n²+2*n^3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277977.P14975759102670552521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (1 - (3 * n : ℤ) + (2 * n ^ 2 : ℤ) + (2 * n ^ 3 : ℤ)) : ℚ) / 2

end

end A277977.P14975759102670552521

namespace A277977

/-- `n*(1-3*n+2*n²+2*n^3)/2` -/
def P14975759102670552521.Spec : Prop :=
  ∀ n, P14975759102670552521.a n = (A277977 n : ℚ)

end A277977

/-! ## A277977.P9877668833262841802

`A027445(n)-A005475(n)`
-/

namespace A277977.P9877668833262841802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n - A005475 n

end

end A277977.P9877668833262841802

namespace A277977

/-- `A027445(n)-A005475(n)` -/
def P9877668833262841802.Spec : Prop :=
  ∀ n, P9877668833262841802.a n = A277977 n

end A277977

/-! ## A277977.P14169556041620698649

`A100019(n)-A005476(n)`
-/

namespace A277977.P14169556041620698649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n - A005476 n

end

end A277977.P14169556041620698649

namespace A277977

/-- `A100019(n)-A005476(n)` -/
def P14169556041620698649.Spec : Prop :=
  ∀ n, P14169556041620698649.a n = A277977 n

end A277977

/-! ## A277977.P4490595092069915224

`A100606(n)-A005449(n)`
-/

namespace A277977.P4490595092069915224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100606 n - A005449 n

end

end A277977.P4490595092069915224

namespace A277977

/-- `A100606(n)-A005449(n)` -/
def P4490595092069915224.Spec : Prop :=
  ∀ n, P4490595092069915224.a n = A277977 n

end A277977

/-! ## A277977.P3387941124745673490

`A053699(n)-A116668(n)`
-/

namespace A277977.P3387941124745673490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n - A116668 n

end

end A277977.P3387941124745673490

namespace A277977

/-- `A053699(n)-A116668(n)` -/
def P3387941124745673490.Spec : Prop :=
  ∀ n, P3387941124745673490.a n = A277977 n

end A277977

/-! ## A277977.P5677042048991811617

`A186636(n)-A022265(n)`
-/

namespace A277977.P5677042048991811617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186636 n - A022265 n

end

end A277977.P5677042048991811617

namespace A277977

/-- `A186636(n)-A022265(n)` -/
def P5677042048991811617.Spec : Prop :=
  ∀ n, P5677042048991811617.a n = A277977 n

end A277977

/-! ## A277977.P2281771477185302763

`A219086(n)-A366151(n)`
-/

namespace A277977.P2281771477185302763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - A366151 n

end

end A277977.P2281771477185302763

namespace A277977

/-- `A219086(n)-A366151(n)` -/
def P2281771477185302763.Spec : Prop :=
  ∀ n, P2281771477185302763.a n = A277977 n

end A277977

/-! ## A277977.P1377075821005161181

`A304160(n+1)-A038764(n)`
-/

namespace A277977.P1377075821005161181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304160 (n + 1) - A038764 n

end

end A277977.P1377075821005161181

namespace A277977

/-- `A304160(n+1)-A038764(n)` -/
def P1377075821005161181.Spec : Prop :=
  ∀ n, P1377075821005161181.a n = A277977 n

end A277977

/-! ## A277977.P1822162993831559285

`n²*A002378(n)-A000326(n)`
-/

namespace A277977.P1822162993831559285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002378 n - A000326 n

end

end A277977.P1822162993831559285

namespace A277977

/-- `n²*A002378(n)-A000326(n)` -/
def P1822162993831559285.Spec : Prop :=
  ∀ n, P1822162993831559285.a n = A277977 n

end A277977

/-! ## A277977.P18218073089749566037

`A019582(n+1)+A085537(n)-A019582(n)`
-/

namespace A277977.P18218073089749566037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019582 (n + 1) + (A085537 n - A019582 n)

end

end A277977.P18218073089749566037

namespace A277977

/-- `A019582(n+1)+A085537(n)-A019582(n)` -/
def P18218073089749566037.Spec : Prop :=
  ∀ n, P18218073089749566037.a n = A277977 n

end A277977

/-! ## A277977.P13256775391136016781

`∑[A304497(A206774(2*n+1))+A268644(n)]`
-/

namespace A277977.P13256775391136016781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (A206774 (2 * n + 1)).toNat + A268644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277977.P13256775391136016781

namespace A277977

/-- `∑[A304497(A206774(2*n+1))+A268644(n)]` -/
def P13256775391136016781.Spec : Prop :=
  ∀ n, P13256775391136016781.a n = A277977 n

end A277977

/-! ## A277977.P1301721926282843771

`∑{#}[n-1, n*(n²+n-1)-#]`
-/

namespace A277977.P1301721926282843771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) * ((n ^ 2 : ℤ) + ((n : ℤ) - 1)) - (k : ℤ))

end

end A277977.P1301721926282843771

namespace A277977

/-- `∑{#}[n-1, n*(n²+n-1)-#]` -/
def P1301721926282843771.Spec : Prop :=
  ∀ n, P1301721926282843771.a n = A277977 n

end A277977

/-!
# A277978: a(n) = 3*n*(n+3).

The programs for A277978, the canonical program `A277978.P6474816177575129903` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277978 has offset 0).

The definition of A277978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+3)` (program `A277978.P6474816177575129903`, by `A277978.P6474816177575129903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277978.P6474816177575129903

`3*n*(n+3)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277978

/-- `3*n*(n+3)` -/
def P6474816177575129903.Spec : Prop :=
  ∀ n, (P6474816177575129903.a n : ℤ) = A277978 n

theorem P6474816177575129903.correct : P6474816177575129903.Spec := by
  intro n
  simp only [A277978]

end A277978

/-! ## A277978.P12555550926882395354

`ogf((12x-6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277978.P12555550926882395354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, -6] [1, -3, 3, -1] n

end

end A277978.P12555550926882395354

namespace A277978

/-- `ogf((12x-6x^2)/(1-3x+3x^2-x^3))` -/
def P12555550926882395354.Spec : Prop :=
  ∀ n, P12555550926882395354.a n = A277978 n

end A277978

/-! ## A277978.P4151450521056929330

`record[3*n*(n-3)]`
-/

namespace A277978.P4151450521056929330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277978.P4151450521056929330

namespace A277978

/-- `record[3*n*(n-3)]` -/
def P4151450521056929330.Spec : Prop :=
  ∀ n, P4151450521056929330.a n = A277978 n

end A277978

/-! ## A277978.P11112433256260761484

`∑[a(n-1)+6]` with `a(0)=0, a(1)=12`
-/

namespace A277978.P11112433256260761484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277978.P11112433256260761484

namespace A277978

/-- `∑[a(n-1)+6]` -/
def P11112433256260761484.Spec : Prop :=
  ∀ n, (P11112433256260761484.a n : ℤ) = A277978 n

end A277978

/-! ## A277978.P12045842520974542042

`lcm(3, (n+1)²+n)-3`
-/

namespace A277978.P12045842520974542042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 ((n + 1) ^ 2 + n) : ℤ) - 3

end

end A277978.P12045842520974542042

namespace A277978

/-- `lcm(3, (n+1)²+n)-3` -/
def P12045842520974542042.Spec : Prop :=
  ∀ n, P12045842520974542042.a n = A277978 n

end A277978

/-! ## A277978.P2094337344104748460

`Δ[Δ[n^3]]+a(n-1)` with `a(0)=0`
-/

namespace A277978.P2094337344104748460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A277978.P2094337344104748460

namespace A277978

/-- `Δ[Δ[n^3]]+a(n-1)` -/
def P2094337344104748460.Spec : Prop :=
  ∀ n, P2094337344104748460.a n = A277978 n

theorem P2094337344104748460.correct : P2094337344104748460.Spec := by
  intro n
  induction n with
  | zero => simp [A277978, A277978.P2094337344104748460.f2, A277978.P2094337344104748460.f1, A277978.P2094337344104748460.a, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A277978, Nat.add_sub_cancel, A277978.P2094337344104748460.f2, A277978.P2094337344104748460.f1, A277978.P2094337344104748460.a, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A277978

/-! ## A277978.P17699102054503628168

`6*n-∑[a(n-1)-6]` with `a(0)=0`
-/

namespace A277978.P17699102054503628168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277978.P17699102054503628168

namespace A277978

/-- `6*n-∑[a(n-1)-6]` -/
def P17699102054503628168.Spec : Prop :=
  ∀ n, P17699102054503628168.a n = A277978 n

end A277978

/-! ## A277978.P8700517001646209570

`Δ[n*(C(2*n, 2)-(2-n)²)]`
-/

namespace A277978.P8700517001646209570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n) 2 : ℤ) - (2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277978.P8700517001646209570

namespace A277978

/-- `Δ[n*(C(2*n, 2)-(2-n)²)]` -/
def P8700517001646209570.Spec : Prop :=
  ∀ n, P8700517001646209570.a n = A277978 n

theorem P8700517001646209570.correct : P8700517001646209570.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P8700517001646209570.f1, A277978.P8700517001646209570.a, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P6784128877578731668

`A140677(n)+n`
-/

namespace A277978.P6784128877578731668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n + (n : ℤ)

end

end A277978.P6784128877578731668

namespace A277978

/-- `A140677(n)+n` -/
def P6784128877578731668.Spec : Prop :=
  ∀ n, P6784128877578731668.a n = A277978 n

theorem P6784128877578731668.correct : P6784128877578731668.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P6784128877578731668.a, A277978.P6474816177575129903.a, A140677, A140677.P12918494061698475283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P14441396083463550147

`A140678(n)-n`
-/

namespace A277978.P14441396083463550147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n - (n : ℤ)

end

end A277978.P14441396083463550147

namespace A277978

/-- `A140678(n)-n` -/
def P14441396083463550147.Spec : Prop :=
  ∀ n, P14441396083463550147.a n = A277978 n

theorem P14441396083463550147.correct : P14441396083463550147.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P14441396083463550147.a, A277978.P6474816177575129903.a, A140678, A140678.P13318772034406866523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P1485099913071778240

`A139576(n)+n²`
-/

namespace A277978.P1485099913071778240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n + (n ^ 2 : ℤ)

end

end A277978.P1485099913071778240

namespace A277978

/-- `A139576(n)+n²` -/
def P1485099913071778240.Spec : Prop :=
  ∀ n, P1485099913071778240.a n = A277978 n

theorem P1485099913071778240.correct : P1485099913071778240.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P1485099913071778240.a, A277978.P6474816177575129903.a, A139576, A139576.P8586854319888252032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P12190101079922302960

`A166143(n+1)-1`
-/

namespace A277978.P12190101079922302960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 1) - 1

end

end A277978.P12190101079922302960

namespace A277978

/-- `A166143(n+1)-1` -/
def P12190101079922302960.Spec : Prop :=
  ∀ n, P12190101079922302960.a n = A277978 n

theorem P12190101079922302960.correct : P12190101079922302960.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P12190101079922302960.a, A277978.P6474816177575129903.a, A166143, A166143.P7390283485156560154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P6917828794137535405

`A211441(n+1)-3`
-/

namespace A277978.P6917828794137535405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211441 (n + 1) - 3

end

end A277978.P6917828794137535405

namespace A277978

/-- `A211441(n+1)-3` -/
def P6917828794137535405.Spec : Prop :=
  ∀ n, P6917828794137535405.a n = A277978 n

end A277978

/-! ## A277978.P2398661114600258939

`3*A014209(n)+3`
-/

namespace A277978.P2398661114600258939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014209 n + 3

end

end A277978.P2398661114600258939

namespace A277978

/-- `3*A014209(n)+3` -/
def P2398661114600258939.Spec : Prop :=
  ∀ n, P2398661114600258939.a n = A277978 n

theorem P2398661114600258939.correct : P2398661114600258939.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P2398661114600258939.a, A277978.P6474816177575129903.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P2126416732023317608

`3*A028387(n)-3`
-/

namespace A277978.P2126416732023317608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028387 n - 3

end

end A277978.P2126416732023317608

namespace A277978

/-- `3*A028387(n)-3` -/
def P2126416732023317608.Spec : Prop :=
  ∀ n, P2126416732023317608.a n = A277978 n

theorem P2126416732023317608.correct : P2126416732023317608.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P2126416732023317608.a, A277978.P6474816177575129903.a, A028387, A028387.P5954590561330899546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P5765247843599174252

`3*A139570(n)/2`
-/

namespace A277978.P5765247843599174252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A139570 n : ℚ) / 2

end

end A277978.P5765247843599174252

namespace A277978

/-- `3*A139570(n)/2` -/
def P5765247843599174252.Spec : Prop :=
  ∀ n, P5765247843599174252.a n = (A277978 n : ℚ)

theorem P5765247843599174252.correct : P5765247843599174252.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P5765247843599174252.a, A277978.P6474816177575129903.a, A139570, A139570.P14891358259735233621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P519705162938946787

`A067725(n)+3*n`
-/

namespace A277978.P519705162938946787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + (3 * n : ℤ)

end

end A277978.P519705162938946787

namespace A277978

/-- `A067725(n)+3*n` -/
def P519705162938946787.Spec : Prop :=
  ∀ n, P519705162938946787.a n = A277978 n

theorem P519705162938946787.correct : P519705162938946787.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P519705162938946787.a, A277978.P6474816177575129903.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P6002692299303063687

`A008593(n)+A000567(n)`
-/

namespace A277978.P6002692299303063687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + A000567 n

end

end A277978.P6002692299303063687

namespace A277978

/-- `A008593(n)+A000567(n)` -/
def P6002692299303063687.Spec : Prop :=
  ∀ n, P6002692299303063687.a n = A277978 n

theorem P6002692299303063687.correct : P6002692299303063687.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P6002692299303063687.a, A277978.P6474816177575129903.a, A000567, A000567.P17850767079432249295.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P286643490124602050

`A016921(n)+A004538(n)`
-/

namespace A277978.P286643490124602050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + A004538 n

end

end A277978.P286643490124602050

namespace A277978

/-- `A016921(n)+A004538(n)` -/
def P286643490124602050.Spec : Prop :=
  ∀ n, P286643490124602050.a n = A277978 n

theorem P286643490124602050.correct : P286643490124602050.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P286643490124602050.a, A277978.P6474816177575129903.a, A004538, A004538.P10298653278695798692.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-! ## A277978.P2475279265457579727

`A028569(n)+A001105(n)`
-/

namespace A277978.P2475279265457579727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 n + A001105 n

end

end A277978.P2475279265457579727

namespace A277978

/-- `A028569(n)+A001105(n)` -/
def P2475279265457579727.Spec : Prop :=
  ∀ n, P2475279265457579727.a n = A277978 n

theorem P2475279265457579727.correct : P2475279265457579727.Spec := by
  intro n
  simp only [A277978, Nat.add_sub_cancel, A277978.P2475279265457579727.a, A277978.P6474816177575129903.a, A001105, A001105.P6098599260439307493.a, A028569, A028569.P13869279125010986353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277978

/-!
# A277979: a(n) = 4*n^2 + 18*n.

The programs for A277979, the canonical program `A277979.P8157014002560634549` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277979 has offset 0).

The definition of A277979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+18*n` (program `A277979.P8157014002560634549`, by `A277979.P8157014002560634549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277979.P8157014002560634549

`4*n²+18*n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277979

/-- `4*n²+18*n` -/
def P8157014002560634549.Spec : Prop :=
  ∀ n, (P8157014002560634549.a n : ℤ) = A277979 n

theorem P8157014002560634549.correct : P8157014002560634549.Spec := by
  intro n
  simp only [A277979]

end A277979

/-! ## A277979.P4432031069826910617

`ogf((22x-14x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277979.P4432031069826910617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 22, -14] [1, -3, 3, -1] n

end

end A277979.P4432031069826910617

namespace A277979

/-- `ogf((22x-14x^2)/(1-3x+3x^2-x^3))` -/
def P4432031069826910617.Spec : Prop :=
  ∀ n, P4432031069826910617.a n = A277979 n

end A277979

/-! ## A277979.P10168779626561547550

`2*A139576(n)`
-/

namespace A277979.P10168779626561547550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139576 n

end

end A277979.P10168779626561547550

namespace A277979

/-- `2*A139576(n)` -/
def P10168779626561547550.Spec : Prop :=
  ∀ n, P10168779626561547550.a n = A277979 n

theorem P10168779626561547550.correct : P10168779626561547550.Spec := by
  intro n
  simp only [A277979, Nat.add_sub_cancel, A277979.P10168779626561547550.a, A277979.P8157014002560634549.a, A139576, A139576.P8586854319888252032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277979

/-! ## A277979.P9298738481581683740

`∑[a(n-1)+8]` with `a(0)=0, a(1)=22`
-/

namespace A277979.P9298738481581683740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 22] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277979.P9298738481581683740

namespace A277979

/-- `∑[a(n-1)+8]` -/
def P9298738481581683740.Spec : Prop :=
  ∀ n, (P9298738481581683740.a n : ℤ) = A277979 n

end A277979

/-! ## A277979.P12088159530594749148

`or(2, 4*(n+4))*n`
-/

namespace A277979.P12088159530594749148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * (n + 4)) * n

end

end A277979.P12088159530594749148

namespace A277979

/-- `or(2, 4*(n+4))*n` -/
def P12088159530594749148.Spec : Prop :=
  ∀ n, (P12088159530594749148.a n : ℤ) = A277979 n

end A277979

/-! ## A277979.P17956366638643523867

`lcm(2, n*record[lcm(2, 12-n)])`
-/

namespace A277979.P17956366638643523867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (12 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A277979.P17956366638643523867

namespace A277979

/-- `lcm(2, n*record[lcm(2, 12-n)])` -/
def P17956366638643523867.Spec : Prop :=
  ∀ n, (P17956366638643523867.a n : ℤ) = A277979 n

end A277979

/-! ## A277979.P13694966387179725862

`record[(n-9)*n*n%2]`
-/

namespace A277979.P13694966387179725862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9) * ((n * (n % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277979.P13694966387179725862

namespace A277979

/-- `record[(n-9)*n*n%2]` -/
def P13694966387179725862.Spec : Prop :=
  ∀ n, P13694966387179725862.a n = A277979 n

end A277979

/-! ## A277979.P370359104189530936

`2*n*Δ[record[(4-n)²]]`
-/

namespace A277979.P370359104189530936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (f1 (n + 1) - f1 n)

end

end A277979.P370359104189530936

namespace A277979

/-- `2*n*Δ[record[(4-n)²]]` -/
def P370359104189530936.Spec : Prop :=
  ∀ n, P370359104189530936.a n = A277979 n

end A277979

/-! ## A277979.P2857325612230048348

`4/(n+1)*A162261(n+1)`
-/

namespace A277979.P2857325612230048348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A162261 (n + 1) : ℚ)

end

end A277979.P2857325612230048348

namespace A277979

/-- `4/(n+1)*A162261(n+1)` -/
def P2857325612230048348.Spec : Prop :=
  ∀ n, P2857325612230048348.a n = (A277979 n : ℚ)

end A277979

/-! ## A277979.P5429025306227243070

`lcm(A004277(n), A139576(n))`
-/

namespace A277979.P5429025306227243070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 n) (A139576 n)

end

end A277979.P5429025306227243070

namespace A277979

/-- `lcm(A004277(n), A139576(n))` -/
def P5429025306227243070.Spec : Prop :=
  ∀ n, (P5429025306227243070.a n : ℤ) = A277979 n

end A277979

/-! ## A277979.P1251092708785889309

`n*Δ[A153037(n)]`
-/

namespace A277979.P1251092708785889309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A277979.P1251092708785889309

namespace A277979

/-- `n*Δ[A153037(n)]` -/
def P1251092708785889309.Spec : Prop :=
  ∀ n, P1251092708785889309.a n = A277979 n

theorem P1251092708785889309.correct : P1251092708785889309.Spec := by
  intro n
  simp only [A277979, Nat.add_sub_cancel, A277979.P1251092708785889309.f1, A277979.P1251092708785889309.a, A277979.P8157014002560634549.a, A153037, A153037.P14905897567203439016.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277979

/-! ## A277979.P4582697110853933084

`n*Δ[A154575(n+1)]`
-/

namespace A277979.P4582697110853933084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A277979.P4582697110853933084

namespace A277979

/-- `n*Δ[A154575(n+1)]` -/
def P4582697110853933084.Spec : Prop :=
  ∀ n, P4582697110853933084.a n = A277979 n

theorem P4582697110853933084.correct : P4582697110853933084.Spec := by
  intro n
  simp only [A277979, Nat.add_sub_cancel, A277979.P4582697110853933084.f1, A277979.P4582697110853933084.a, A277979.P8157014002560634549.a, A154575, A154575.P10311887486335886995.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277979

/-! ## A277979.P15480001697217600426

`n*(A173035(n+1)-2)`
-/

namespace A277979.P15480001697217600426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A173035 (n + 1) - 2)

end

end A277979.P15480001697217600426

namespace A277979

/-- `n*(A173035(n+1)-2)` -/
def P15480001697217600426.Spec : Prop :=
  ∀ n, P15480001697217600426.a n = A277979 n

end A277979

/-! ## A277979.P4965366345515055336

`2*n*A020742(n+1)`
-/

namespace A277979.P4965366345515055336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A020742 (n + 1))

end

end A277979.P4965366345515055336

namespace A277979

/-- `2*n*A020742(n+1)` -/
def P4965366345515055336.Spec : Prop :=
  ∀ n, P4965366345515055336.a n = A277979 n

theorem P4965366345515055336.correct : P4965366345515055336.Spec := by
  intro n
  simp only [A277979, Nat.add_sub_cancel, A277979.P4965366345515055336.a, A277979.P8157014002560634549.a, A020742, A020742.P7099883194858047647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277979

/-! ## A277979.P12464078854478779062

`2*n*A005818(n+3)`
-/

namespace A277979.P12464078854478779062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A005818 (n + 3)

end

end A277979.P12464078854478779062

namespace A277979

/-- `2*n*A005818(n+3)` -/
def P12464078854478779062.Spec : Prop :=
  ∀ n, P12464078854478779062.a n = A277979 n

end A277979

/-! ## A277979.P9330220589439164792

`2*n*A020735(n+3)`
-/

namespace A277979.P9330220589439164792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A020735 (n + 3)

end

end A277979.P9330220589439164792

namespace A277979

/-- `2*n*A020735(n+3)` -/
def P9330220589439164792.Spec : Prop :=
  ∀ n, P9330220589439164792.a n = A277979 n

theorem P9330220589439164792.correct : P9330220589439164792.Spec := by
  intro n
  simp only [A277979, Nat.add_sub_cancel, A277979.P9330220589439164792.a, A277979.P8157014002560634549.a, A020735, A020735.P10040868782378236279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277979

/-! ## A277979.P10935133406958312796

`2*n*A062545(n+3)`
-/

namespace A277979.P10935133406958312796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A062545 (n + 3)

end

end A277979.P10935133406958312796

namespace A277979

/-- `2*n*A062545(n+3)` -/
def P10935133406958312796.Spec : Prop :=
  ∀ n, P10935133406958312796.a n = A277979 n

end A277979

/-! ## A277979.P492821301732215724

`A028569(2*n)`
-/

namespace A277979.P492821301732215724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 (2 * n)

end

end A277979.P492821301732215724

namespace A277979

/-- `A028569(2*n)` -/
def P492821301732215724.Spec : Prop :=
  ∀ n, P492821301732215724.a n = A277979 n

theorem P492821301732215724.correct : P492821301732215724.Spec := by
  intro n
  simp only [A277979, Nat.add_sub_cancel, A277979.P492821301732215724.a, A277979.P8157014002560634549.a, A028569, A028569.P13869279125010986353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277979

/-! ## A277979.P1798582562425984220

`2*A056000(2*n)`
-/

namespace A277979.P1798582562425984220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056000 (2 * n)

end

end A277979.P1798582562425984220

namespace A277979

/-- `2*A056000(2*n)` -/
def P1798582562425984220.Spec : Prop :=
  ∀ n, P1798582562425984220.a n = A277979 n

end A277979

/-! ## A277979.P14767166939533447131

`2*n*A020723(2*n)`
-/

namespace A277979.P14767166939533447131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A020723 (2 * n)

end

end A277979.P14767166939533447131

namespace A277979

/-- `2*n*A020723(2*n)` -/
def P14767166939533447131.Spec : Prop :=
  ∀ n, P14767166939533447131.a n = A277979 n

theorem P14767166939533447131.correct : P14767166939533447131.Spec := by
  intro n
  simp only [A277979, Nat.add_sub_cancel, A277979.P14767166939533447131.a, A277979.P8157014002560634549.a, A020723, A020723.P8213579202739937003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277979

/-!
# A277980: a(n) = 12*n^2 + 18*n.

The programs for A277980, the canonical program `A277980.P488489438075414926` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277980 has offset 0).

The definition of A277980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²+18*n` (program `A277980.P488489438075414926`, by `A277980.P488489438075414926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277980.P488489438075414926

`12*n²+18*n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277980

/-- `12*n²+18*n` -/
def P488489438075414926.Spec : Prop :=
  ∀ n, (P488489438075414926.a n : ℤ) = A277980 n

theorem P488489438075414926.correct : P488489438075414926.Spec := by
  intro n
  simp only [A277980]

end A277980

/-! ## A277980.P16212949351624975528

`ogf((30x-6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277980.P16212949351624975528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 30, -6] [1, -3, 3, -1] n

end

end A277980.P16212949351624975528

namespace A277980

/-- `ogf((30x-6x^2)/(1-3x+3x^2-x^3))` -/
def P16212949351624975528.Spec : Prop :=
  ∀ n, P16212949351624975528.a n = A277980 n

end A277980

/-! ## A277980.P7842808953056337723

`6*A014106(n)`
-/

namespace A277980.P7842808953056337723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014106 n

end

end A277980.P7842808953056337723

namespace A277980

/-- `6*A014106(n)` -/
def P7842808953056337723.Spec : Prop :=
  ∀ n, P7842808953056337723.a n = A277980 n

theorem P7842808953056337723.correct : P7842808953056337723.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P7842808953056337723.a, A277980.P488489438075414926.a, A014106, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P15423666929803798773

`∑[a(n-1)+24]` with `a(0)=0, a(1)=30`
-/

namespace A277980.P15423666929803798773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 30] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277980.P15423666929803798773

namespace A277980

/-- `∑[a(n-1)+24]` -/
def P15423666929803798773.Spec : Prop :=
  ∀ n, (P15423666929803798773.a n : ℤ) = A277980 n

end A277980

/-! ## A277980.P17920260950249541749

`record[3*(lcm(n, 2-n)-n)]`
-/

namespace A277980.P17920260950249541749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Int.lcm (n : ℤ) (2 - (n : ℤ)) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277980.P17920260950249541749

namespace A277980

/-- `record[3*(lcm(n, 2-n)-n)]` -/
def P17920260950249541749.Spec : Prop :=
  ∀ n, P17920260950249541749.a n = A277980 n

end A277980

/-! ## A277980.P16170409313695466190

`2*n*Δ[record[3*(1-n)²]]`
-/

namespace A277980.P16170409313695466190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (f1 (n + 1) - f1 n)

end

end A277980.P16170409313695466190

namespace A277980

/-- `2*n*Δ[record[3*(1-n)²]]` -/
def P16170409313695466190.Spec : Prop :=
  ∀ n, P16170409313695466190.a n = A277980 n

end A277980

/-! ## A277980.P13828516853035651276

`n*Δ[Δ[(n+2)*C(2*n, 2)]]`
-/

namespace A277980.P13828516853035651276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A277980.P13828516853035651276

namespace A277980

/-- `n*Δ[Δ[(n+2)*C(2*n, 2)]]` -/
def P13828516853035651276.Spec : Prop :=
  ∀ n, P13828516853035651276.a n = A277980 n

theorem P13828516853035651276.correct : P13828516853035651276.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P13828516853035651276.f2, A277980.P13828516853035651276.f1, A277980.P13828516853035651276.a, A277980.P488489438075414926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P11508424885593712981

`3*(A082108(n)-1)`
-/

namespace A277980.P11508424885593712981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A082108 n - 1)

end

end A277980.P11508424885593712981

namespace A277980

/-- `3*(A082108(n)-1)` -/
def P11508424885593712981.Spec : Prop :=
  ∀ n, P11508424885593712981.a n = A277980 n

theorem P11508424885593712981.correct : P11508424885593712981.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P11508424885593712981.a, A277980.P488489438075414926.a, A082108, A082108.P8640110216624797441.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P4992730944101374416

`2*(A391993(n)+n)`
-/

namespace A277980.P4992730944101374416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A391993 n + (n : ℤ))

end

end A277980.P4992730944101374416

namespace A277980

/-- `2*(A391993(n)+n)` -/
def P4992730944101374416.Spec : Prop :=
  ∀ n, P4992730944101374416.a n = A277980 n

end A277980

/-! ## A277980.P9167783253642842338

`A304618(n+2)%A157446(n+1)`
-/

namespace A277980.P9167783253642842338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304618 (n + 2)) (A157446 (n + 1))

end

end A277980.P9167783253642842338

namespace A277980

/-- `A304618(n+2)%A157446(n+1)` -/
def P9167783253642842338.Spec : Prop :=
  ∀ n, P9167783253642842338.a n = A277980 n

end A277980

/-! ## A277980.P1616012514390047511

`n*A017593(n+1)`
-/

namespace A277980.P1616012514390047511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017593 (n + 1)

end

end A277980.P1616012514390047511

namespace A277980

/-- `n*A017593(n+1)` -/
def P1616012514390047511.Spec : Prop :=
  ∀ n, P1616012514390047511.a n = A277980 n

theorem P1616012514390047511.correct : P1616012514390047511.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P1616012514390047511.a, A277980.P488489438075414926.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P8501158170352664879

`n*sqrt(A017594(n+1))`
-/

namespace A277980.P8501158170352664879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A017594 (n + 1) : ℝ)

end

end A277980.P8501158170352664879

namespace A277980

/-- `n*sqrt(A017594(n+1))` -/
def P8501158170352664879.Spec : Prop :=
  ∀ n, P8501158170352664879.a n = (A277980 n : ℝ)

end A277980

/-! ## A277980.P7211348354547672525

`2*n*A016945(n+1)`
-/

namespace A277980.P7211348354547672525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A016945 (n + 1)

end

end A277980.P7211348354547672525

namespace A277980

/-- `2*n*A016945(n+1)` -/
def P7211348354547672525.Spec : Prop :=
  ∀ n, P7211348354547672525.a n = A277980 n

theorem P7211348354547672525.correct : P7211348354547672525.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P7211348354547672525.a, A277980.P488489438075414926.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P1018811165530561083

`n*A016825(A016777(n+1))`
-/

namespace A277980.P1018811165530561083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016825 (A016777 (n + 1)).toNat

end

end A277980.P1018811165530561083

namespace A277980

/-- `n*A016825(A016777(n+1))` -/
def P1018811165530561083.Spec : Prop :=
  ∀ n, P1018811165530561083.a n = A277980 n

end A277980

/-! ## A277980.P3036418060751170733

`3*A028552(2*n)`
-/

namespace A277980.P3036418060751170733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028552 (2 * n)

end

end A277980.P3036418060751170733

namespace A277980

/-- `3*A028552(2*n)` -/
def P3036418060751170733.Spec : Prop :=
  ∀ n, P3036418060751170733.a n = A277980 n

theorem P3036418060751170733.correct : P3036418060751170733.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P3036418060751170733.a, A277980.P488489438075414926.a, A028552, A028552.P13982725828206412774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P6957082991289719380

`6*A000096(2*n)`
-/

namespace A277980.P6957082991289719380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000096 (2 * n)

end

end A277980.P6957082991289719380

namespace A277980

/-- `6*A000096(2*n)` -/
def P6957082991289719380.Spec : Prop :=
  ∀ n, P6957082991289719380.a n = A277980 n

theorem P6957082991289719380.correct : P6957082991289719380.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P6957082991289719380.a, A277980.P488489438075414926.a, A000096, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P11760574182506228773

`A277978(2*n)`
-/

namespace A277980.P11760574182506228773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 (2 * n)

end

end A277980.P11760574182506228773

namespace A277980

/-- `A277978(2*n)` -/
def P11760574182506228773.Spec : Prop :=
  ∀ n, P11760574182506228773.a n = A277980 n

theorem P11760574182506228773.correct : P11760574182506228773.Spec := by
  intro n
  simp only [A277980, Nat.add_sub_cancel, A277980.P11760574182506228773.a, A277980.P488489438075414926.a, A277978, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277980

/-! ## A277980.P15031085483121029040

`2*A140091(2*n)`
-/

namespace A277980.P15031085483121029040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140091 (2 * n)

end

end A277980.P15031085483121029040

namespace A277980

/-- `2*A140091(2*n)` -/
def P15031085483121029040.Spec : Prop :=
  ∀ n, P15031085483121029040.a n = A277980 n

end A277980

/-! ## A277980.P6297981700246787622

`3*A164004(2*n)`
-/

namespace A277980.P6297981700246787622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164004 (2 * n)

end

end A277980.P6297981700246787622

namespace A277980

/-- `3*A164004(2*n)` -/
def P6297981700246787622.Spec : Prop :=
  ∀ n, P6297981700246787622.a n = A277980 n

end A277980

/-! ## A277980.P8109176722310620247

`6*A266259(2*n)`
-/

namespace A277980.P8109176722310620247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A266259 (2 * n)

end

end A277980.P8109176722310620247

namespace A277980

/-- `6*A266259(2*n)` -/
def P8109176722310620247.Spec : Prop :=
  ∀ n, P8109176722310620247.a n = A277980 n

end A277980

/-!
# A277981: a(n) = 4*n^2 + 18*n - 20.

The programs for A277981, the canonical program `A277981.P8488431166456036111` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277981 has offset 0).

The definition of A277981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+18*n-20` (program `A277981.P8488431166456036111`, by `A277981.P8488431166456036111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277981.P10263495494839966148

`ogf((-20+62x-34x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277981.P10263495494839966148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-20, 62, -34] [1, -3, 3, -1] n

end

end A277981.P10263495494839966148

namespace A277981

/-- `ogf((-20+62x-34x^2)/(1-3x+3x^2-x^3))` -/
def P10263495494839966148.Spec : Prop :=
  ∀ n, P10263495494839966148.a n = A277981 n

end A277981

/-! ## A277981.P8488431166456036111

`4*n²+18*n-20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277981

/-- `4*n²+18*n-20` -/
def P8488431166456036111.Spec : Prop :=
  ∀ n, P8488431166456036111.a n = A277981 n

theorem P8488431166456036111.correct : P8488431166456036111.Spec := by
  intro n
  simp only [A277981]

end A277981

/-! ## A277981.P6440440750592748841

`∑[a(n-1)+8]` with `a(0)=-20, a(1)=22`
-/

namespace A277981.P6440440750592748841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-20, 22] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277981.P6440440750592748841

namespace A277981

/-- `∑[a(n-1)+8]` -/
def P6440440750592748841.Spec : Prop :=
  ∀ n, P6440440750592748841.a n = A277981 n

end A277981

/-! ## A277981.P2481179606138826028

`2*(A139576(n)-10)`
-/

namespace A277981.P2481179606138826028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139576 n - 10)

end

end A277981.P2481179606138826028

namespace A277981

/-- `2*(A139576(n)-10)` -/
def P2481179606138826028.Spec : Prop :=
  ∀ n, P2481179606138826028.a n = A277981 n

theorem P2481179606138826028.correct : P2481179606138826028.Spec := by
  intro n
  simp only [A277981, Nat.add_sub_cancel, A277981.P2481179606138826028.a, A277981.P8488431166456036111.a, A139576, A139576.P8586854319888252032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277981

/-! ## A277981.P1394956711784672682

`4/(n+1)*A162259(n+1)`
-/

namespace A277981.P1394956711784672682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A162259 (n + 1) : ℚ)

end

end A277981.P1394956711784672682

namespace A277981

/-- `4/(n+1)*A162259(n+1)` -/
def P1394956711784672682.Spec : Prop :=
  ∀ n, P1394956711784672682.a n = (A277981 n : ℚ)

end A277981

/-! ## A277981.P9796976219726016263

`2*((A004273(n+1)+10)*(n-1)+1)`
-/

namespace A277981.P9796976219726016263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A004273 (n + 1) + 10) * ((n : ℤ) - 1) + 1)

end

end A277981.P9796976219726016263

namespace A277981

/-- `2*((A004273(n+1)+10)*(n-1)+1)` -/
def P9796976219726016263.Spec : Prop :=
  ∀ n, P9796976219726016263.a n = A277981 n

end A277981

/-! ## A277981.P17448286566078712753

`2*(A212331(n)-(A055999(n)+10))`
-/

namespace A277981.P17448286566078712753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212331 n - (A055999 n + 10))

end

end A277981.P17448286566078712753

namespace A277981

/-- `2*(A212331(n)-(A055999(n)+10))` -/
def P17448286566078712753.Spec : Prop :=
  ∀ n, P17448286566078712753.a n = A277981 n

end A277981

/-! ## A277981.P16276154542965899298

`record[A002943(n)-A040380(n)]`
-/

namespace A277981.P16276154542965899298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n - A040380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277981.P16276154542965899298

namespace A277981

/-- `record[A002943(n)-A040380(n)]` -/
def P16276154542965899298.Spec : Prop :=
  ∀ n, P16276154542965899298.a n = A277981 n

end A277981

/-! ## A277981.P9989874720331625932

`2*(A056000(2*n)-10)`
-/

namespace A277981.P9989874720331625932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056000 (2 * n) - 10)

end

end A277981.P9989874720331625932

namespace A277981

/-- `2*(A056000(2*n)-10)` -/
def P9989874720331625932.Spec : Prop :=
  ∀ n, P9989874720331625932.a n = A277981 n

end A277981

/-! ## A277981.P12475837716839938825

`2*A023453(A139576(n)+1)`
-/

namespace A277981.P12475837716839938825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023453 (A139576 n + 1).toNat

end

end A277981.P12475837716839938825

namespace A277981

/-- `2*A023453(A139576(n)+1)` -/
def P12475837716839938825.Spec : Prop :=
  ∀ n, P12475837716839938825.a n = A277981 n

end A277981

/-!
# A277982: a(n) = 12*n^2 + 10*n - 30.

The programs for A277982, the canonical program `A277982.P15218675096153092685` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277982 has offset 0).

The definition of A277982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²+10*n-30` (program `A277982.P15218675096153092685`, by `A277982.P15218675096153092685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277982.P4476272311253146571

`ogf((-30+82x-28x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277982.P4476272311253146571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-30, 82, -28] [1, -3, 3, -1] n

end

end A277982.P4476272311253146571

namespace A277982

/-- `ogf((-30+82x-28x^2)/(1-3x+3x^2-x^3))` -/
def P4476272311253146571.Spec : Prop :=
  ∀ n, P4476272311253146571.a n = A277982 n

end A277982

/-! ## A277982.P15218675096153092685

`12*n²+10*n-30`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277982

/-- `12*n²+10*n-30` -/
def P15218675096153092685.Spec : Prop :=
  ∀ n, P15218675096153092685.a n = A277982 n

theorem P15218675096153092685.correct : P15218675096153092685.Spec := by
  intro n
  simp only [A277982]

end A277982

/-! ## A277982.P5870962533603695991

`2*(A033570(n)-16)`
-/

namespace A277982.P5870962533603695991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033570 n - 16)

end

end A277982.P5870962533603695991

namespace A277982

/-- `2*(A033570(n)-16)` -/
def P5870962533603695991.Spec : Prop :=
  ∀ n, P5870962533603695991.a n = A277982 n

theorem P5870962533603695991.correct : P5870962533603695991.Spec := by
  intro n
  simp only [A277982, Nat.add_sub_cancel, A277982.P5870962533603695991.a, A277982.P15218675096153092685.a, A033570, A033570.P8308357737011808276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277982

/-! ## A277982.P2370806204731692593

`Δ[A144129(n)-A132772(n)]`
-/

namespace A277982.P2370806204731692593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 n - A132772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277982.P2370806204731692593

namespace A277982

/-- `Δ[A144129(n)-A132772(n)]` -/
def P2370806204731692593.Spec : Prop :=
  ∀ n, P2370806204731692593.a n = A277982 n

theorem P2370806204731692593.correct : P2370806204731692593.Spec := by
  intro n
  simp only [A277982, Nat.add_sub_cancel, A277982.P2370806204731692593.f1, A277982.P2370806204731692593.a, A277982.P15218675096153092685.a, A132772, A132772.P2558700005956302944.a, A144129, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277982

/-! ## A277982.P12691881046457620989

`2*(A003154(n+1)-A020722(A020722(n)))`
-/

namespace A277982.P12691881046457620989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003154 (n + 1) - A020722 (A020722 n).toNat)

end

end A277982.P12691881046457620989

namespace A277982

/-- `2*(A003154(n+1)-A020722(A020722(n)))` -/
def P12691881046457620989.Spec : Prop :=
  ∀ n, P12691881046457620989.a n = A277982 n

end A277982

/-! ## A277982.P337474637558747598

`2*(A191967(2*n+1)-16)`
-/

namespace A277982.P337474637558747598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191967 (2 * n + 1) - 16)

end

end A277982.P337474637558747598

namespace A277982

/-- `2*(A191967(2*n+1)-16)` -/
def P337474637558747598.Spec : Prop :=
  ∀ n, P337474637558747598.a n = A277982 n

end A277982

/-!
# A277983: a(n) = 54*n^2 - 78*n + 36.

The programs for A277983, the canonical program `A277983.P14986371906264723150` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277983 has offset 0).

The definition of A277983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*n²-78*n+36` (program `A277983.P14986371906264723150`, by `A277983.P14986371906264723150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277983.P15988265451485140813

`ogf((36-96x+168x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277983.P15988265451485140813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [36, -96, 168] [1, -3, 3, -1] n

end

end A277983.P15988265451485140813

namespace A277983

/-- `ogf((36-96x+168x^2)/(1-3x+3x^2-x^3))` -/
def P15988265451485140813.Spec : Prop :=
  ∀ n, P15988265451485140813.a n = A277983 n

end A277983

/-! ## A277983.P14986371906264723150

`54*n²-78*n+36`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277983

/-- `54*n²-78*n+36` -/
def P14986371906264723150.Spec : Prop :=
  ∀ n, P14986371906264723150.a n = A277983 n

theorem P14986371906264723150.correct : P14986371906264723150.Spec := by
  intro n
  simp only [A277983]

end A277983

/-! ## A277983.P17316509774401301074

`6*(6-∑[a(n-1)-18])` with `a(0)=0, a(1)=4`
-/

namespace A277983.P17316509774401301074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (6 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277983.P17316509774401301074

namespace A277983

/-- `6*(6-∑[a(n-1)-18])` -/
def P17316509774401301074.Spec : Prop :=
  ∀ n, P17316509774401301074.a n = A277983 n

end A277983

/-! ## A277983.P12927245482421830668

`A008594(∑[a(n-1)+9])` with `a(0)=3, a(1)=-2`
-/

namespace A277983.P12927245482421830668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277983.P12927245482421830668

namespace A277983

/-- `A008594(∑[a(n-1)+9])` -/
def P12927245482421830668.Spec : Prop :=
  ∀ n, P12927245482421830668.a n = A277983 n

end A277983

/-! ## A277983.P9160960017418863594

`A008594(3-∑[a(n-1)-9])` with `a(0)=0, a(1)=2`
-/

namespace A277983.P9160960017418863594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (3 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277983.P9160960017418863594

namespace A277983

/-- `A008594(3-∑[a(n-1)-9])` -/
def P9160960017418863594.Spec : Prop :=
  ∀ n, P9160960017418863594.a n = A277983 n

end A277983

/-!
# A277984: a(n) = 6*n*(9*n-5).

The programs for A277984, the canonical program `A277984.P3316908456214339249` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277984 has offset 0).

The definition of A277984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*(9*n-5)` (program `A277984.P3316908456214339249`, by `A277984.P3316908456214339249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277984.P384045635236243316

`54*n²-30*n`
-/

namespace A277984.P384045635236243316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (54 * n ^ 2 : ℤ) - (30 * n : ℤ)

end

end A277984.P384045635236243316

namespace A277984

/-- `54*n²-30*n` -/
def P384045635236243316.Spec : Prop :=
  ∀ n, P384045635236243316.a n = A277984 n

theorem P384045635236243316.correct : P384045635236243316.Spec := by
  intro n
  simp only [A277984, Nat.add_sub_cancel, A277984.P384045635236243316.a, A277984.P3316908456214339249.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A277984

/-! ## A277984.P3316908456214339249

`6*n*(9*n-5)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277984

/-- `6*n*(9*n-5)` -/
def P3316908456214339249.Spec : Prop :=
  ∀ n, P3316908456214339249.a n = A277984 n

theorem P3316908456214339249.correct : P3316908456214339249.Spec := by
  intro n
  simp only [A277984]

end A277984

/-! ## A277984.P16233014415884011551

`ogf((24x+84x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277984.P16233014415884011551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, 84] [1, -3, 3, -1] n

end

end A277984.P16233014415884011551

namespace A277984

/-- `ogf((24x+84x^2)/(1-3x+3x^2-x^3))` -/
def P16233014415884011551.Spec : Prop :=
  ∀ n, P16233014415884011551.a n = A277984 n

end A277984

/-! ## A277984.P6477413607928536739

`lcm(n-A152994(n), A008588(n))`
-/

namespace A277984.P6477413607928536739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A152994 n) (A008588 n)

end

end A277984.P6477413607928536739

namespace A277984

/-- `lcm(n-A152994(n), A008588(n))` -/
def P6477413607928536739.Spec : Prop :=
  ∀ n, (P6477413607928536739.a n : ℤ) = A277984 n

end A277984

/-! ## A277984.P10219660510736306592

`A008594(A062708(n))`
-/

namespace A277984.P10219660510736306592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A062708 n).toNat

end

end A277984.P10219660510736306592

namespace A277984

/-- `A008594(A062708(n))` -/
def P10219660510736306592.Spec : Prop :=
  ∀ n, P10219660510736306592.a n = A277984 n

end A277984

/-!
# A277985: a(n) = 3*(9*n - 1)*(3*n - 2).

The programs for A277985, the canonical program `A277985.P2867554791482536833` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277985 has offset 0).

The definition of A277985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(9*n-1)*(3*n-2)` (program `A277985.P2867554791482536833`, by `A277985.P2867554791482536833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277985.P6118038886309932133

`ogf((6+6x+150x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277985.P6118038886309932133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6, 150] [1, -3, 3, -1] n

end

end A277985.P6118038886309932133

namespace A277985

/-- `ogf((6+6x+150x^2)/(1-3x+3x^2-x^3))` -/
def P6118038886309932133.Spec : Prop :=
  ∀ n, P6118038886309932133.a n = A277985 n

end A277985

/-! ## A277985.P12789487868808004686

`81*n²-63*n+6`
-/

namespace A277985.P12789487868808004686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * n ^ 2 : ℤ) - (63 * n : ℤ) + 6

end

end A277985.P12789487868808004686

namespace A277985

/-- `81*n²-63*n+6` -/
def P12789487868808004686.Spec : Prop :=
  ∀ n, P12789487868808004686.a n = A277985 n

theorem P12789487868808004686.correct : P12789487868808004686.Spec := by
  intro n
  simp only [A277985, Nat.add_sub_cancel, A277985.P12789487868808004686.a, A277985.P2867554791482536833.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A277985

/-! ## A277985.P2867554791482536833

`3*(9*n-1)*(3*n-2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277985

/-- `3*(9*n-1)*(3*n-2)` -/
def P2867554791482536833.Spec : Prop :=
  ∀ n, P2867554791482536833.a n = A277985 n

theorem P2867554791482536833.correct : P2867554791482536833.Spec := by
  intro n
  simp only [A277985]

end A277985

/-! ## A277985.P16453537505650704190

`record[(dr(n+1)-(n-2))²-(n+3)]`
-/

namespace A277985.P16453537505650704190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - ((n : ℤ) - 2)) ^ 2 - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277985.P16453537505650704190

namespace A277985

/-- `record[(dr(n+1)-(n-2))²-(n+3)]` -/
def P16453537505650704190.Spec : Prop :=
  ∀ n, P16453537505650704190.a n = A277985 n

end A277985

/-! ## A277985.P6376963224622847401

`A017233(A152995(n))`
-/

namespace A277985.P6376963224622847401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A152995 n).toNat

end

end A277985.P6376963224622847401

namespace A277985

/-- `A017233(A152995(n))` -/
def P6376963224622847401.Spec : Prop :=
  ∀ n, P6376963224622847401.a n = A277985 n

end A277985

/-!
# A277986: a(n) = 74*n - 14.

The programs for A277986, the canonical program `A277986.P16482530921086083282` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277986 has offset 0).

The definition of A277986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `74*n-14` (program `A277986.P16482530921086083282`, by `A277986.P16482530921086083282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277986.P16482530921086083282

`74*n-14`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277986

/-- `74*n-14` -/
def P16482530921086083282.Spec : Prop :=
  ∀ n, P16482530921086083282.a n = A277986 n

theorem P16482530921086083282.correct : P16482530921086083282.Spec := by
  intro n
  simp only [A277986]

end A277986

/-!
# A277987: a(n) = 100*n - 28.

The programs for A277987, the canonical program `A277987.P419199450020543042` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277987 has offset 0).

The definition of A277987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*n-28` (program `A277987.P419199450020543042`, by `A277987.P419199450020543042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277987.P419199450020543042

`100*n-28`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277987

/-- `100*n-28` -/
def P419199450020543042.Spec : Prop :=
  ∀ n, P419199450020543042.a n = A277987 n

theorem P419199450020543042.correct : P419199450020543042.Spec := by
  intro n
  simp only [A277987]

end A277987

/-!
# A277988: a(n) = 352*2^n + 34.

The programs for A277988, the canonical program `A277988.P5313704435118515923` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277988 has offset 0).

The definition of A277988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `352*2^n+34` (program `A277988.P5313704435118515923`, by `A277988.P5313704435118515923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277988.P5313704435118515923

`352*2^n+34`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277988

/-- `352*2^n+34` -/
def P5313704435118515923.Spec : Prop :=
  ∀ n, (P5313704435118515923.a n : ℤ) = A277988 n

theorem P5313704435118515923.correct : P5313704435118515923.Spec := by
  intro n
  simp only [A277988]

end A277988

/-! ## A277988.P8485716190719995079

`A141694(A000225(n+4)+2)`
-/

namespace A277988.P8485716190719995079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141694 (A000225 (n + 4) + 2).toNat

end

end A277988.P8485716190719995079

namespace A277988

/-- `A141694(A000225(n+4)+2)` -/
def P8485716190719995079.Spec : Prop :=
  ∀ n, P8485716190719995079.a n = A277988 n

end A277988

/-! ## A277988.P11418158446360932826

`A063218(A196655(n))`
-/

namespace A277988.P11418158446360932826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (A196655 n).toNat

end

end A277988.P11418158446360932826

namespace A277988

/-- `A063218(A196655(n))` -/
def P11418158446360932826.Spec : Prop :=
  ∀ n, P11418158446360932826.a n = A277988 n

end A277988

/-!
# A277989: a(n) = 424*2^n + 37.

The programs for A277989, the canonical program `A277989.P9131856713890199813` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277989 has offset 0).

The definition of A277989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `424*2^n+37` (program `A277989.P9131856713890199813`, by `A277989.P9131856713890199813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277989.P9131856713890199813

`424*2^n+37`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277989

/-- `424*2^n+37` -/
def P9131856713890199813.Spec : Prop :=
  ∀ n, (P9131856713890199813.a n : ℤ) = A277989 n

theorem P9131856713890199813.correct : P9131856713890199813.Spec := by
  intro n
  simp only [A277989]

end A277989

/-!
# A277990: a(n) = 54*n^2 + 6*n.

The programs for A277990, the canonical program `A277990.P6687017974836704064` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277990 has offset 0).

The definition of A277990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*n²+6*n` (program `A277990.P6687017974836704064`, by `A277990.P6687017974836704064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277990.P6687017974836704064

`54*n²+6*n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277990

/-- `54*n²+6*n` -/
def P6687017974836704064.Spec : Prop :=
  ∀ n, (P6687017974836704064.a n : ℤ) = A277990 n

theorem P6687017974836704064.correct : P6687017974836704064.Spec := by
  intro n
  simp only [A277990]

end A277990

/-! ## A277990.P13139824645251681111

`ogf((60x+48x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277990.P13139824645251681111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 60, 48] [1, -3, 3, -1] n

end

end A277990.P13139824645251681111

namespace A277990

/-- `ogf((60x+48x^2)/(1-3x+3x^2-x^3))` -/
def P13139824645251681111.Spec : Prop :=
  ∀ n, P13139824645251681111.a n = A277990 n

end A277990

/-! ## A277990.P16161377542115134625

`6*lcm(n, 9*n+1)`
-/

namespace A277990.P16161377542115134625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.lcm n (9 * n + 1)

end

end A277990.P16161377542115134625

namespace A277990

/-- `6*lcm(n, 9*n+1)` -/
def P16161377542115134625.Spec : Prop :=
  ∀ n, (P16161377542115134625.a n : ℤ) = A277990 n

end A277990

/-! ## A277990.P10318892373340730204

`floor(xor(1, 18*n)²/6)`
-/

namespace A277990.P10318892373340730204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (18 * n) ^ 2 : ℚ) / 6⌋

end

end A277990.P10318892373340730204

namespace A277990

/-- `floor(xor(1, 18*n)²/6)` -/
def P10318892373340730204.Spec : Prop :=
  ∀ n, P10318892373340730204.a n = A277990 n

end A277990

/-! ## A277990.P18081406427769742246

`12*C(9*n+1, 2)/9`
-/

namespace A277990.P18081406427769742246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((Nat.choose (9 * n + 1) 2 : ℚ) / 9)

end

end A277990.P18081406427769742246

namespace A277990

/-- `12*C(9*n+1, 2)/9` -/
def P18081406427769742246.Spec : Prop :=
  ∀ n, P18081406427769742246.a n = (A277990 n : ℚ)

theorem P18081406427769742246.correct : P18081406427769742246.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P18081406427769742246.a, A277990.P6687017974836704064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P15661008345105224397

`Δ[(n-1)*4*C(3*n, 2)]`
-/

namespace A277990.P15661008345105224397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (4 * Nat.choose (3 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277990.P15661008345105224397

namespace A277990

/-- `Δ[(n-1)*4*C(3*n, 2)]` -/
def P15661008345105224397.Spec : Prop :=
  ∀ n, P15661008345105224397.a n = A277990 n

theorem P15661008345105224397.correct : P15661008345105224397.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P15661008345105224397.f1, A277990.P15661008345105224397.a, A277990.P6687017974836704064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P12015856196141205079

`12*A022267(n)`
-/

namespace A277990.P12015856196141205079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A022267 n

end

end A277990.P12015856196141205079

namespace A277990

/-- `12*A022267(n)` -/
def P12015856196141205079.Spec : Prop :=
  ∀ n, P12015856196141205079.a n = A277990 n

end A277990

/-! ## A277990.P6697683684236772262

`2*A304836(n+1)`
-/

namespace A277990.P6697683684236772262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304836 (n + 1)

end

end A277990.P6697683684236772262

namespace A277990

/-- `2*A304836(n+1)` -/
def P6697683684236772262.Spec : Prop :=
  ∀ n, P6697683684236772262.a n = A277990 n

theorem P6697683684236772262.correct : P6697683684236772262.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P6697683684236772262.a, A277990.P6687017974836704064.a, A304836, A304836.P466003782404073489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P7753362084064623260

`4*(A022285(n)+n)`
-/

namespace A277990.P7753362084064623260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A022285 n + (n : ℤ))

end

end A277990.P7753362084064623260

namespace A277990

/-- `4*(A022285(n)+n)` -/
def P7753362084064623260.Spec : Prop :=
  ∀ n, P7753362084064623260.a n = A277990 n

end A277990

/-! ## A277990.P9377708912656547328

`3*(A144314(n)-n)`
-/

namespace A277990.P9377708912656547328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A144314 n - (n : ℤ))

end

end A277990.P9377708912656547328

namespace A277990

/-- `3*(A144314(n)-n)` -/
def P9377708912656547328.Spec : Prop :=
  ∀ n, P9377708912656547328.a n = A277990 n

theorem P9377708912656547328.correct : P9377708912656547328.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P9377708912656547328.a, A277990.P6687017974836704064.a, A144314, A144314.P8498779635623249334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P5853506813045726012

`A008588(n)*A017173(n)`
-/

namespace A277990.P5853506813045726012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A017173 n

end

end A277990.P5853506813045726012

namespace A277990

/-- `A008588(n)*A017173(n)` -/
def P5853506813045726012.Spec : Prop :=
  ∀ n, P5853506813045726012.a n = A277990 n

theorem P5853506813045726012.correct : P5853506813045726012.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P5853506813045726012.a, A277990.P6687017974836704064.a, A008588, A008588.P12386450284809463491.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P16292902024164708692

`Δ[(n-1)*A153792(n)]`
-/

namespace A277990.P16292902024164708692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A153792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277990.P16292902024164708692

namespace A277990

/-- `Δ[(n-1)*A153792(n)]` -/
def P16292902024164708692.Spec : Prop :=
  ∀ n, P16292902024164708692.a n = A277990 n

theorem P16292902024164708692.correct : P16292902024164708692.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P16292902024164708692.f1, A277990.P16292902024164708692.a, A277990.P6687017974836704064.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P9457110044067597348

`6*A266087(2*n)`
-/

namespace A277990.P9457110044067597348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A266087 (2 * n)

end

end A277990.P9457110044067597348

namespace A277990

/-- `6*A266087(2*n)` -/
def P9457110044067597348.Spec : Prop :=
  ∀ n, P9457110044067597348.a n = A277990 n

end A277990

/-! ## A277990.P11208687093115040848

`6*A394829(2*n)`
-/

namespace A277990.P11208687093115040848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A394829 (2 * n)

end

end A277990.P11208687093115040848

namespace A277990

/-- `6*A394829(2*n)` -/
def P11208687093115040848.Spec : Prop :=
  ∀ n, P11208687093115040848.a n = A277990 n

end A277990

/-! ## A277990.P15250354479087409484

`3*A219395(Δ[n²])`
-/

namespace A277990.P15250354479087409484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A219395 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A277990.P15250354479087409484

namespace A277990

/-- `3*A219395(Δ[n²])` -/
def P15250354479087409484.Spec : Prop :=
  ∀ n, P15250354479087409484.a n = A277990 n

end A277990

/-! ## A277990.P1371601493611499727

`(A016922(2*n)-A016778(2*n))/2`
-/

namespace A277990.P1371601493611499727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016922 (2 * n) - A016778 (2 * n) : ℚ) / 2

end

end A277990.P1371601493611499727

namespace A277990

/-- `(A016922(2*n)-A016778(2*n))/2` -/
def P1371601493611499727.Spec : Prop :=
  ∀ n, P1371601493611499727.a n = (A277990 n : ℚ)

theorem P1371601493611499727.correct : P1371601493611499727.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P1371601493611499727.a, A277990.P6687017974836704064.a, A016778, A016778.P16000663877604072744.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P4121277831532676437

`A033580(3*n)`
-/

namespace A277990.P4121277831532676437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 (3 * n)

end

end A277990.P4121277831532676437

namespace A277990

/-- `A033580(3*n)` -/
def P4121277831532676437.Spec : Prop :=
  ∀ n, P4121277831532676437.a n = A277990 n

theorem P4121277831532676437.correct : P4121277831532676437.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P4121277831532676437.a, A277990.P6687017974836704064.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P5328630863234682990

`2*A049451(3*n)`
-/

namespace A277990.P5328630863234682990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049451 (3 * n)

end

end A277990.P5328630863234682990

namespace A277990

/-- `2*A049451(3*n)` -/
def P5328630863234682990.Spec : Prop :=
  ∀ n, P5328630863234682990.a n = A277990 n

theorem P5328630863234682990.correct : P5328630863234682990.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P5328630863234682990.a, A277990.P6687017974836704064.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-! ## A277990.P4408705337435100718

`4*A005449(3*n)`
-/

namespace A277990.P4408705337435100718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005449 (3 * n)

end

end A277990.P4408705337435100718

namespace A277990

/-- `4*A005449(3*n)` -/
def P4408705337435100718.Spec : Prop :=
  ∀ n, P4408705337435100718.a n = A277990 n

end A277990

/-! ## A277990.P1385236703629853002

`A045946(3*n)/3`
-/

namespace A277990.P1385236703629853002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045946 (3 * n) : ℚ) / 3

end

end A277990.P1385236703629853002

namespace A277990

/-- `A045946(3*n)/3` -/
def P1385236703629853002.Spec : Prop :=
  ∀ n, P1385236703629853002.a n = (A277990 n : ℚ)

theorem P1385236703629853002.correct : P1385236703629853002.Spec := by
  intro n
  simp only [A277990, Nat.add_sub_cancel, A277990.P1385236703629853002.a, A277990.P6687017974836704064.a, A045946, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277990

/-!
# A277991: a(n) = 81*n^2 - 9*n.

The programs for A277991, the canonical program `A277991.P12251535552341815333` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277991 has offset 0).

The definition of A277991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*n²-9*n` (program `A277991.P12251535552341815333`, by `A277991.P12251535552341815333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277991.P12251535552341815333

`81*n²-9*n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A277991

/-- `81*n²-9*n` -/
def P12251535552341815333.Spec : Prop :=
  ∀ n, P12251535552341815333.a n = A277991 n

theorem P12251535552341815333.correct : P12251535552341815333.Spec := by
  intro n
  simp only [A277991]

end A277991

/-! ## A277991.P14873787013797658030

`ogf((72x+90x^2)/(1-3x+3x^2-x^3))`
-/

namespace A277991.P14873787013797658030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 72, 90] [1, -3, 3, -1] n

end

end A277991.P14873787013797658030

namespace A277991

/-- `ogf((72x+90x^2)/(1-3x+3x^2-x^3))` -/
def P14873787013797658030.Spec : Prop :=
  ∀ n, P14873787013797658030.a n = A277991 n

end A277991

/-! ## A277991.P4094066562268133705

`2*C(9*n, 2)`
-/

namespace A277991.P4094066562268133705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (9 * n) 2

end

end A277991.P4094066562268133705

namespace A277991

/-- `2*C(9*n, 2)` -/
def P4094066562268133705.Spec : Prop :=
  ∀ n, (P4094066562268133705.a n : ℤ) = A277991 n

theorem P4094066562268133705.correct : P4094066562268133705.Spec := by
  intro n
  simp only [A277991, Nat.add_sub_cancel, A277991.P4094066562268133705.a, A277991.P12251535552341815333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277991

/-! ## A277991.P5425510431650087265

`record[(n%9-n)²-n]`
-/

namespace A277991.P5425510431650087265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 9 : ℕ) : ℤ) - (n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277991.P5425510431650087265

namespace A277991

/-- `record[(n%9-n)²-n]` -/
def P5425510431650087265.Spec : Prop :=
  ∀ n, P5425510431650087265.a n = A277991 n

end A277991

/-! ## A277991.P17083078375486307371

`record[(n/dr(n+1))²-n]`
-/

namespace A277991.P17083078375486307371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277991.P17083078375486307371

namespace A277991

/-- `record[(n/dr(n+1))²-n]` -/
def P17083078375486307371.Spec : Prop :=
  ∀ n, P17083078375486307371.a n = (A277991 n : ℚ)

end A277991

/-! ## A277991.P8982117980147989047

`record[n²-n^dr(n+1)]`
-/

namespace A277991.P8982117980147989047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n ^ SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277991.P8982117980147989047

namespace A277991

/-- `record[n²-n^dr(n+1)]` -/
def P8982117980147989047.Spec : Prop :=
  ∀ n, P8982117980147989047.a n = A277991 n

end A277991

/-! ## A277991.P14356293089582493386

`record[(n+1-dr(n+1))²-n]`
-/

namespace A277991.P14356293089582493386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277991.P14356293089582493386

namespace A277991

/-- `record[(n+1-dr(n+1))²-n]` -/
def P14356293089582493386.Spec : Prop :=
  ∀ n, P14356293089582493386.a n = A277991 n

end A277991

/-! ## A277991.P5710683836509584059

`6*A268351(n)`
-/

namespace A277991.P5710683836509584059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A268351 n

end

end A277991.P5710683836509584059

namespace A277991

/-- `6*A268351(n)` -/
def P5710683836509584059.Spec : Prop :=
  ∀ n, P5710683836509584059.a n = A277991 n

end A277991

/-! ## A277991.P9066290921151019906

`A022266(n)*A040072(n)`
-/

namespace A277991.P9066290921151019906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n * A040072 n

end

end A277991.P9066290921151019906

namespace A277991

/-- `A022266(n)*A040072(n)` -/
def P9066290921151019906.Spec : Prop :=
  ∀ n, P9066290921151019906.a n = A277991 n

end A277991

/-! ## A277991.P18051245374918001708

`floor(A017163(n)/A017173(n))`
-/

namespace A277991.P18051245374918001708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017163 n : ℚ) / (A017173 n : ℚ)⌋

end

end A277991.P18051245374918001708

namespace A277991

/-- `floor(A017163(n)/A017173(n))` -/
def P18051245374918001708.Spec : Prop :=
  ∀ n, P18051245374918001708.a n = A277991 n

end A277991

/-! ## A277991.P4006722079553704916

`(A249674(n)-A008585(n+1))*A008585(n)`
-/

namespace A277991.P4006722079553704916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249674 n - A008585 (n + 1)) * A008585 n

end

end A277991.P4006722079553704916

namespace A277991

/-- `(A249674(n)-A008585(n+1))*A008585(n)` -/
def P4006722079553704916.Spec : Prop :=
  ∀ n, P4006722079553704916.a n = A277991 n

theorem P4006722079553704916.correct : P4006722079553704916.Spec := by
  intro n
  simp only [A277991, Nat.add_sub_cancel, A277991.P4006722079553704916.a, A277991.P12251535552341815333.a, A008585, A008585.P13732812384316341435.a, A249674, A249674.P13656214549216497831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277991

/-! ## A277991.P9280141445396872769

`record[A195312(n)²-A195312(n)]`
-/

namespace A277991.P9280141445396872769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n ^ 2 - A195312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277991.P9280141445396872769

namespace A277991

/-- `record[A195312(n)²-A195312(n)]` -/
def P9280141445396872769.Spec : Prop :=
  ∀ n, P9280141445396872769.a n = A277991 n

end A277991

/-! ## A277991.P1691392326959677443

`A152743(3*n)`
-/

namespace A277991.P1691392326959677443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 (3 * n)

end

end A277991.P1691392326959677443

namespace A277991

/-- `A152743(3*n)` -/
def P1691392326959677443.Spec : Prop :=
  ∀ n, P1691392326959677443.a n = A277991 n

theorem P1691392326959677443.correct : P1691392326959677443.Spec := by
  intro n
  simp only [A277991, Nat.add_sub_cancel, A277991.P1691392326959677443.a, A277991.P12251535552341815333.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277991

/-! ## A277991.P12488169033964810037

`2*A062741(3*n)`
-/

namespace A277991.P12488169033964810037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062741 (3 * n)

end

end A277991.P12488169033964810037

namespace A277991

/-- `2*A062741(3*n)` -/
def P12488169033964810037.Spec : Prop :=
  ∀ n, P12488169033964810037.a n = A277991 n

end A277991

/-! ## A277991.P7854099904551274645

`3*A049450(3*n)`
-/

namespace A277991.P7854099904551274645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049450 (3 * n)

end

end A277991.P7854099904551274645

namespace A277991

/-- `3*A049450(3*n)` -/
def P7854099904551274645.Spec : Prop :=
  ∀ n, P7854099904551274645.a n = A277991 n

theorem P7854099904551274645.correct : P7854099904551274645.Spec := by
  intro n
  simp only [A277991, Nat.add_sub_cancel, A277991.P7854099904551274645.a, A277991.P12251535552341815333.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277991

/-! ## A277991.P10628610205659411412

`A153792(3*n)/2`
-/

namespace A277991.P10628610205659411412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153792 (3 * n) : ℚ) / 2

end

end A277991.P10628610205659411412

namespace A277991

/-- `A153792(3*n)/2` -/
def P10628610205659411412.Spec : Prop :=
  ∀ n, P10628610205659411412.a n = (A277991 n : ℚ)

theorem P10628610205659411412.correct : P10628610205659411412.Spec := by
  intro n
  simp only [A277991, Nat.add_sub_cancel, A277991.P10628610205659411412.a, A277991.P12251535552341815333.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277991

/-! ## A277991.P16069124422489572355

`lcm(2, A152743(A016777(n)-1))`
-/

namespace A277991.P16069124422489572355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152743 (A016777 n - 1).toNat)

end

end A277991.P16069124422489572355

namespace A277991

/-- `lcm(2, A152743(A016777(n)-1))` -/
def P16069124422489572355.Spec : Prop :=
  ∀ n, (P16069124422489572355.a n : ℤ) = A277991 n

end A277991

/-! ## A277991.P8480484110986563055

`A279019(A017209(n))`
-/

namespace A277991.P8480484110986563055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (A017209 n).toNat

end

end A277991.P8480484110986563055

namespace A277991

/-- `A279019(A017209(n))` -/
def P8480484110986563055.Spec : Prop :=
  ∀ n, P8480484110986563055.a n = A277991 n

end A277991

/-! ## A277991.P16303229423435306588

`A279019(A017329(n)-(n+1))`
-/

namespace A277991.P16303229423435306588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (A017329 n - (n + 1 : ℤ)).toNat

end

end A277991.P16303229423435306588

namespace A277991

/-- `A279019(A017329(n)-(n+1))` -/
def P16303229423435306588.Spec : Prop :=
  ∀ n, P16303229423435306588.a n = A277991 n

end A277991

/-! ## A277991.P9407631390781044535

`A279019(A016777(2*n+1+n))`
-/

namespace A277991.P9407631390781044535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (A016777 (2 * n + 1 + n)).toNat

end

end A277991.P9407631390781044535

namespace A277991

/-- `A279019(A016777(2*n+1+n))` -/
def P9407631390781044535.Spec : Prop :=
  ∀ n, P9407631390781044535.a n = A277991 n

end A277991

/-!
# A277992: b(n, 2) where b(n, m) is defined by expansion of ((Product_{k>=1} (1 - x^(prime(n)*k))/(1 - x^k)^prime(n)) - 1)/prime(n) in powers of x.

The programs for A277992, there is no canonical definition to state claims against.
-/

/-! ## A277992.P17679388276534852270

`ceil(p?[abs(xor(n, -2))]/2)+1`
-/

namespace A277992.P17679388276534852270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉ + 1

end

end A277992.P17679388276534852270

/-! ## A277992.P18084915526834127400

`round(p?[abs(xor(n, -2))]/2)+1`
-/

namespace A277992.P18084915526834127400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2) + 1

end

end A277992.P18084915526834127400

/-! ## A277992.P14628439067601188193

`floor((p?[abs(xor(n, -2))]+3)/2)`
-/

namespace A277992.P14628439067601188193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℚ) / 2⌋

end

end A277992.P14628439067601188193

/-! ## A277992.P12652054037934850696

`ceil(p?[xor(1, n)+1]/2)+1`
-/

namespace A277992.P12652054037934850696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ + 1

end

end A277992.P12652054037934850696

/-! ## A277992.P6091321953119850784

`round(p?[xor(1, n)+1]/2)+1`
-/

namespace A277992.P6091321953119850784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2) + 1

end

end A277992.P6091321953119850784

/-! ## A277992.P6834666771550358550

`floor((p?[xor(1, n)+1]+3)/2)`
-/

namespace A277992.P6834666771550358550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2⌋

end

end A277992.P6834666771550358550

/-! ## A277992.P9502285617561438310

`lt[∑{e}[2*n+1, #], 2]+2`
-/

namespace A277992.P9502285617561438310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 2

end

end A277992.P9502285617561438310

/-! ## A277992.P4816969928734394082

`ceil(p?[n%3+n]/2)+1`
-/

namespace A277992.P4816969928734394082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ + 1

end

end A277992.P4816969928734394082

/-! ## A277992.P8052992766065618479

`ceil(p?[round(sqrt(n)+n)]/2)+1`
-/

namespace A277992.P8052992766065618479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉ + 1

end

end A277992.P8052992766065618479

/-! ## A277992.P17762368886605100054

`record[(n+2)/∏{e}[(1-n)², #]]`
-/

namespace A277992.P17762368886605100054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277992.P17762368886605100054

/-!
# A277993: Sophie Germain primes p such that p + 2 and p - 2 are semiprimes.

The programs for A277993, there is no canonical definition to state claims against.
-/

/-! ## A277993.P2489463304962284401

`∩[A005384(n+1), A063643(n+1)]`
-/

namespace A277993.P2489463304962284401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P2489463304962284401

/-! ## A277993.P14392451794714861670

`∩[A063643(n+1), A348511(n+1)]`
-/

namespace A277993.P14392451794714861670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P14392451794714861670

/-! ## A277993.P11265117898459209573

`∩[A063643(n+1), A364926(n+1)]`
-/

namespace A277993.P11265117898459209573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P11265117898459209573

/-! ## A277993.P10299111741250201989

`∩[A063643(n+1), A246857(n+1)]`
-/

namespace A277993.P10299111741250201989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P10299111741250201989

/-! ## A277993.P11857343438845943647

`∩[A063643(n+1), A350230(n+1)]`
-/

namespace A277993.P11857343438845943647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P11857343438845943647

/-! ## A277993.P7141251803783719900

`∩[A063643(n+1), A227240(n+1)]`
-/

namespace A277993.P7141251803783719900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P7141251803783719900

/-! ## A277993.P15717122386394490640

`∩[A063643(n+1), A215751(n+1)]`
-/

namespace A277993.P15717122386394490640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P15717122386394490640

/-! ## A277993.P11253715725492383089

`∩[A063643(n+1), A259973(n+1)]`
-/

namespace A277993.P11253715725492383089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P11253715725492383089

/-! ## A277993.P2712972258648514570

`∩[A063643(n+1), A163778(n+1)]`
-/

namespace A277993.P2712972258648514570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P2712972258648514570

/-! ## A277993.P2553497678253360143

`∩[A005384(n+1), A105571(n+1)]`
-/

namespace A277993.P2553497678253360143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P2553497678253360143

/-! ## A277993.P12603941929938772726

`∩[A063643(n+1), A078762(n+1)]`
-/

namespace A277993.P12603941929938772726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P12603941929938772726

/-! ## A277993.P11506543990139056303

`∩[A063643(n+1), A104635(n+1)]`
-/

namespace A277993.P11506543990139056303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P11506543990139056303

/-! ## A277993.P12268014723421542296

`∩[A054639(n+1), A063643(n+1)]`
-/

namespace A277993.P12268014723421542296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P12268014723421542296

/-! ## A277993.P13983522335354012605

`∩[A014109(n+1), A063643(n+1)]`
-/

namespace A277993.P13983522335354012605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P13983522335354012605

/-! ## A277993.P987692866409864645

`∩[A063643(n+1), A156541(n+1)]`
-/

namespace A277993.P987692866409864645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P987692866409864645

/-! ## A277993.P2777185837509205809

`∩[A063643(n+1), A177966(n+1)]`
-/

namespace A277993.P2777185837509205809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P2777185837509205809

/-! ## A277993.P15039735841048395882

`∩[A063643(n+1), A161896(n+1)]`
-/

namespace A277993.P15039735841048395882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P15039735841048395882

/-! ## A277993.P7057915154421732112

`∩[A105571(n+1), A161896(n+1)]`
-/

namespace A277993.P7057915154421732112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277993.P7057915154421732112

/-!
# A277994: Number of unordered integer pairs of the form {k | n, (k + 2^m) | n}, where k >= 1, m >= 0.

The programs for A277994, there is no canonical definition to state claims against.
-/

/-! ## A277994.P15311941974224167157

`A055205(n+1)-A083891(A235606(n+1))`
-/

namespace A277994.P15311941974224167157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (n + 1) - A083891 (A235606 (n + 1)).toNat

end

end A277994.P15311941974224167157

/-! ## A277994.P3513132140666311839

`A285573(n+1)-A331596(A243723(n+1))`
-/

namespace A277994.P3513132140666311839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (n + 1) - A331596 (A243723 (n + 1)).toNat

end

end A277994.P3513132140666311839

/-! ## A277994.P4647754161726693030

`A285573(n+1)-A093578(A179865(n+2))`
-/

namespace A277994.P4647754161726693030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (n + 1) - A093578 (A179865 (n + 2)).toNat

end

end A277994.P4647754161726693030

/-! ## A277994.P17230230694901890502

`A051953(n+1)-A050602(A002203(n))`
-/

namespace A277994.P17230230694901890502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A050602 (A002203 n).toNat

end

end A277994.P17230230694901890502

/-! ## A277994.P4048687542737698493

`A285573(n+1)-A290104(A001333(n))`
-/

namespace A277994.P4048687542737698493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (n + 1) - A290104 (A001333 n).toNat

end

end A277994.P4048687542737698493

/-!
# A277996: Number of free pure symmetric multifunctions (with empty expressions allowed) with one atom and n positions.

The programs for A277996, there is no canonical definition to state claims against.
-/

/-! ## A277996.P7236618471628797798

`A223096(n)+A033270(A309861(n))`
-/

namespace A277996.P7236618471628797798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223096 n + A033270 (A309861 n).toNat

end

end A277996.P7236618471628797798

/-! ## A277996.P3918527795383062723

`A223096(n)+A064834(A266173(n+1))`
-/

namespace A277996.P3918527795383062723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223096 n + A064834 (A266173 (n + 1)).toNat

end

end A277996.P3918527795383062723

/-! ## A277996.P6133108364686415640

`A223096(A024648(n))`
-/

namespace A277996.P6133108364686415640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223096 (A024648 n).toNat

end

end A277996.P6133108364686415640

/-! ## A277996.P3803341917354118918

`A223096(A303166(n+1))`
-/

namespace A277996.P3803341917354118918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223096 (A303166 (n + 1)).toNat

end

end A277996.P3803341917354118918

/-!
# A277999: Sum of distances between leftmost and rightmost peaks in all bargraphs of semiperimeter n.

The programs for A277999, there is no canonical definition to state claims against.
-/

/-! ## A277999.P5936102726677187612

`A184993(n)%∑[A000124(2*(n+1))]`
-/

namespace A277999.P5936102726677187612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184993 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277999.P5936102726677187612

/-! ## A277999.P2525289064992581074

`A184993(n)%A000203(A106529(n+4))`
-/

namespace A277999.P2525289064992581074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184993 n) (A000203 (A106529 (n + 4)).toNat)

end

end A277999.P2525289064992581074

