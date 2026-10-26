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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C000
import Seq.B008.C000
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
# A098902: Even numbers whose number of distinct prime factors is also even.

The programs for A098902, the canonical program `A098902.P4653296118679336739` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098902 has offset 1).

The definition of A098902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098902.P4653296118679336739

`filter[A177712(n+1), A353672(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A098902

/-- `filter[A177712(n+1), A353672(#)]` -/
def P4653296118679336739.Spec : Prop :=
  ∀ n, P4653296118679336739.a n = A098902 (n + 1)

theorem P4653296118679336739.correct : P4653296118679336739.Spec := by
  intro n
  simp only [A098902, Nat.add_sub_cancel]

end A098902

/-! ## A098902.P1654733942286566764

`filter[A176587(n+1), A353672(#)]`
-/

namespace A098902.P1654733942286566764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P1654733942286566764

namespace A098902

/-- `filter[A176587(n+1), A353672(#)]` -/
def P1654733942286566764.Spec : Prop :=
  ∀ n, P1654733942286566764.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P16776238969194063989

`∩[2*n, A030231(n+1)]`
-/

namespace A098902.P16776238969194063989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098902.P16776238969194063989

namespace A098902

/-- `∩[2*n, A030231(n+1)]` -/
def P16776238969194063989.Spec : Prop :=
  ∀ n, (P16776238969194063989.a n : ℤ) = A098902 (n + 1)

end A098902

/-! ## A098902.P3075038170163946825

`filter[A030231(n+1), A353672(#)]`
-/

namespace A098902.P3075038170163946825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P3075038170163946825

namespace A098902

/-- `filter[A030231(n+1), A353672(#)]` -/
def P3075038170163946825.Spec : Prop :=
  ∀ n, P3075038170163946825.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P10477636385841317714

`filter[A020739(n), A353672(#)]`
-/

namespace A098902.P10477636385841317714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P10477636385841317714

namespace A098902

/-- `filter[A020739(n), A353672(#)]` -/
def P10477636385841317714.Spec : Prop :=
  ∀ n, P10477636385841317714.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P7797061439964819646

`filter[A103517(n), A353672(#)]`
-/

namespace A098902.P7797061439964819646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P7797061439964819646

namespace A098902

/-- `filter[A103517(n), A353672(#)]` -/
def P7797061439964819646.Spec : Prop :=
  ∀ n, P7797061439964819646.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P2700259593386983532

`filter[A004277(n+1), A353672(#)]`
-/

namespace A098902.P2700259593386983532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P2700259593386983532

namespace A098902

/-- `filter[A004277(n+1), A353672(#)]` -/
def P2700259593386983532.Spec : Prop :=
  ∀ n, P2700259593386983532.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P5438864135744606321

`filter[A005843(n+1), A353672(#)]`
-/

namespace A098902.P5438864135744606321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P5438864135744606321

namespace A098902

/-- `filter[A005843(n+1), A353672(#)]` -/
def P5438864135744606321.Spec : Prop :=
  ∀ n, P5438864135744606321.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P2490272388583641343

`∩[A030231(n+1), A005843(n)]`
-/

namespace A098902.P2490272388583641343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098902.P2490272388583641343

namespace A098902

/-- `∩[A030231(n+1), A005843(n)]` -/
def P2490272388583641343.Spec : Prop :=
  ∀ n, (P2490272388583641343.a n : ℤ) = A098902 (n + 1)

end A098902

/-! ## A098902.P1191506256103320949

`∩[A030231(n+1), A020739(n)]`
-/

namespace A098902.P1191506256103320949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098902.P1191506256103320949

namespace A098902

/-- `∩[A030231(n+1), A020739(n)]` -/
def P1191506256103320949.Spec : Prop :=
  ∀ n, (P1191506256103320949.a n : ℤ) = A098902 (n + 1)

end A098902

/-! ## A098902.P6841168163669068837

`2*lt[1, ∏{p}[2*n, -#]]`
-/

namespace A098902.P6841168163669068837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A098902.P6841168163669068837

namespace A098902

/-- `2*lt[1, ∏{p}[2*n, -#]]` -/
def P6841168163669068837.Spec : Prop :=
  ∀ n, (P6841168163669068837.a n : ℤ) = A098902 (n + 1)

end A098902

/-! ## A098902.P14015895713368068853

`2*eq[1, A000035(∑{p}[n, #])]`
-/

namespace A098902.P14015895713368068853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098902.P14015895713368068853

namespace A098902

/-- `2*eq[1, A000035(∑{p}[n, #])]` -/
def P14015895713368068853.Spec : Prop :=
  ∀ n, (P14015895713368068853.a n : ℤ) = A098902 (n + 1)

end A098902

/-! ## A098902.P13136986112552468576

`filter[A004275(n+1), A353672(#)]`
-/

namespace A098902.P13136986112552468576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P13136986112552468576

namespace A098902

/-- `filter[A004275(n+1), A353672(#)]` -/
def P13136986112552468576.Spec : Prop :=
  ∀ n, P13136986112552468576.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P8591599498307239882

`filter[A092535(n+1), A353672(#)]`
-/

namespace A098902.P8591599498307239882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P8591599498307239882

namespace A098902

/-- `filter[A092535(n+1), A353672(#)]` -/
def P8591599498307239882.Spec : Prop :=
  ∀ n, P8591599498307239882.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P13600739043970912130

`filter[A316571(n+1), A353672(#)]`
-/

namespace A098902.P13600739043970912130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P13600739043970912130

namespace A098902

/-- `filter[A316571(n+1), A353672(#)]` -/
def P13600739043970912130.Spec : Prop :=
  ∀ n, P13600739043970912130.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P11934778465500549304

`filter[A004278(n+1), A353672(#)]`
-/

namespace A098902.P11934778465500549304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P11934778465500549304

namespace A098902

/-- `filter[A004278(n+1), A353672(#)]` -/
def P11934778465500549304.Spec : Prop :=
  ∀ n, P11934778465500549304.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P11550915890031075654

`filter[A300576(n+1), A353672(#)]`
-/

namespace A098902.P11550915890031075654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P11550915890031075654

namespace A098902

/-- `filter[A300576(n+1), A353672(#)]` -/
def P11550915890031075654.Spec : Prop :=
  ∀ n, P11550915890031075654.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P10532112677663506511

`filter[A004279(n), A353672(#)]`
-/

namespace A098902.P10532112677663506511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P10532112677663506511

namespace A098902

/-- `filter[A004279(n), A353672(#)]` -/
def P10532112677663506511.Spec : Prop :=
  ∀ n, P10532112677663506511.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P4517203459801170453

`filter[A004271(n+1), A353672(#)]`
-/

namespace A098902.P4517203459801170453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P4517203459801170453

namespace A098902

/-- `filter[A004271(n+1), A353672(#)]` -/
def P4517203459801170453.Spec : Prop :=
  ∀ n, P4517203459801170453.a n = A098902 (n + 1)

end A098902

/-! ## A098902.P1569848421896536917

`filter[A004272(n+1), A353672(#)]`
-/

namespace A098902.P1569848421896536917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A098902.P1569848421896536917

namespace A098902

/-- `filter[A004272(n+1), A353672(#)]` -/
def P1569848421896536917.Spec : Prop :=
  ∀ n, P1569848421896536917.a n = A098902 (n + 1)

end A098902

/-!
# A098903: Odd numbers whose number of distinct prime factors is also odd.

The programs for A098903, the canonical program `A098903.P17713323182960682569` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098903 has offset 1).

The definition of A098903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098903.P5842589532222333418

`eq[1, A353673(n+1)]+1`
-/

namespace A098903.P5842589532222333418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098903.P5842589532222333418

namespace A098903

/-- `eq[1, A353673(n+1)]+1` -/
def P5842589532222333418.Spec : Prop :=
  ∀ n, (P5842589532222333418.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P17713323182960682569

`eq[A318833(A000265(n+1)), A318841(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A098903

/-- `eq[A318833(A000265(n+1)), A318841(n+1)]+1` -/
def P17713323182960682569.Spec : Prop :=
  ∀ n, (P17713323182960682569.a n : ℤ) = A098903 (n + 1)

theorem P17713323182960682569.correct : P17713323182960682569.Spec := by
  intro n
  simp only [A098903, Nat.add_sub_cancel]

end A098903

/-! ## A098903.P2006406884015748633

`filter[A144396(n+1), A353673(#)]`
-/

namespace A098903.P2006406884015748633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A098903.P2006406884015748633

namespace A098903

/-- `filter[A144396(n+1), A353673(#)]` -/
def P2006406884015748633.Spec : Prop :=
  ∀ n, P2006406884015748633.a n = A098903 (n + 1)

end A098903

/-! ## A098903.P7207297598272222436

`lt[A325887(n+1), 1]+1`
-/

namespace A098903.P7207297598272222436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325887 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A098903.P7207297598272222436

namespace A098903

/-- `lt[A325887(n+1), 1]+1` -/
def P7207297598272222436.Spec : Prop :=
  ∀ n, (P7207297598272222436.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P18131449138636691924

`lt[A349447(n+1)+1, 1]+1`
-/

namespace A098903.P18131449138636691924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A098903.P18131449138636691924

namespace A098903

/-- `lt[A349447(n+1)+1, 1]+1` -/
def P18131449138636691924.Spec : Prop :=
  ∀ n, (P18131449138636691924.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P4576218233783325789

`filter[A004281(n), A353673(#)]`
-/

namespace A098903.P4576218233783325789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A098903.P4576218233783325789

namespace A098903

/-- `filter[A004281(n), A353673(#)]` -/
def P4576218233783325789.Spec : Prop :=
  ∀ n, P4576218233783325789.a n = A098903 (n + 1)

end A098903

/-! ## A098903.P12040998891799015895

`∩[2*n+1, A030230(n+1)]`
-/

namespace A098903.P12040998891799015895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098903.P12040998891799015895

namespace A098903

/-- `∩[2*n+1, A030230(n+1)]` -/
def P12040998891799015895.Spec : Prop :=
  ∀ n, (P12040998891799015895.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P1132670816087422608

`filter[A030230(n+1), A353673(#)]`
-/

namespace A098903.P1132670816087422608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A098903.P1132670816087422608

namespace A098903

/-- `filter[A030230(n+1), A353673(#)]` -/
def P1132670816087422608.Spec : Prop :=
  ∀ n, P1132670816087422608.a n = A098903 (n + 1)

end A098903

/-! ## A098903.P14868957482789399557

`∩[A030230(n+1), A004273(n)]`
-/

namespace A098903.P14868957482789399557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098903.P14868957482789399557

namespace A098903

/-- `∩[A030230(n+1), A004273(n)]` -/
def P14868957482789399557.Spec : Prop :=
  ∀ n, (P14868957482789399557.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P4387520305526121279

`∩[A030230(n+1), A060747(n)]`
-/

namespace A098903.P4387520305526121279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098903.P4387520305526121279

namespace A098903

/-- `∩[A030230(n+1), A060747(n)]` -/
def P4387520305526121279.Spec : Prop :=
  ∀ n, (P4387520305526121279.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P10784177429919007225

`∩[A030230(n+1), A005843(n)+1]`
-/

namespace A098903.P10784177429919007225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098903.P10784177429919007225

namespace A098903

/-- `∩[A030230(n+1), A005843(n)+1]` -/
def P10784177429919007225.Spec : Prop :=
  ∀ n, (P10784177429919007225.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P3856651727324877610

`∩[A030230(n+1), A144396(n+1)]`
-/

namespace A098903.P3856651727324877610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098903.P3856651727324877610

namespace A098903

/-- `∩[A030230(n+1), A144396(n+1)]` -/
def P3856651727324877610.Spec : Prop :=
  ∀ n, (P3856651727324877610.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P16599453211367061460

`∩[A030230(n+1), A004275(n)-1]`
-/

namespace A098903.P16599453211367061460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098903.P16599453211367061460

namespace A098903

/-- `∩[A030230(n+1), A004275(n)-1]` -/
def P16599453211367061460.Spec : Prop :=
  ∀ n, (P16599453211367061460.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P9115760109509253691

`∩[A030230(n+1), A004277(n)-1]`
-/

namespace A098903.P9115760109509253691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098903.P9115760109509253691

namespace A098903

/-- `∩[A030230(n+1), A004277(n)-1]` -/
def P9115760109509253691.Spec : Prop :=
  ∀ n, (P9115760109509253691.a n : ℤ) = A098903 (n + 1)

end A098903

/-! ## A098903.P16093602993772434566

`filter[A047489(n+1), A353673(#)]`
-/

namespace A098903.P16093602993772434566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A098903.P16093602993772434566

namespace A098903

/-- `filter[A047489(n+1), A353673(#)]` -/
def P16093602993772434566.Spec : Prop :=
  ∀ n, P16093602993772434566.a n = A098903 (n + 1)

end A098903

/-! ## A098903.P14850910755650814852

`filter[A047501(n+1), A353673(#)]`
-/

namespace A098903.P14850910755650814852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A098903.P14850910755650814852

namespace A098903

/-- `filter[A047501(n+1), A353673(#)]` -/
def P14850910755650814852.Spec : Prop :=
  ∀ n, P14850910755650814852.a n = A098903 (n + 1)

end A098903

/-! ## A098903.P18146888431743820465

`filter[A047584(n+1), A353673(#)]`
-/

namespace A098903.P18146888431743820465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A098903.P18146888431743820465

namespace A098903

/-- `filter[A047584(n+1), A353673(#)]` -/
def P18146888431743820465.Spec : Prop :=
  ∀ n, P18146888431743820465.a n = A098903 (n + 1)

end A098903

/-! ## A098903.P11849934324593614619

`filter[A301729(n), A353673(#)]`
-/

namespace A098903.P11849934324593614619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A098903.P11849934324593614619

namespace A098903

/-- `filter[A301729(n), A353673(#)]` -/
def P11849934324593614619.Spec : Prop :=
  ∀ n, P11849934324593614619.a n = A098903 (n + 1)

end A098903

/-!
# A098904: Even numbers whose number of distinct prime factors is odd.

The programs for A098904, the canonical program `A098904.P3454121655183528190` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098904 has offset 1).

The definition of A098904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098904.P837405601106721622

`record[(n+1)*gcd(2, A008472(n+1))]`
-/

namespace A098904.P837405601106721622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A008472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098904.P837405601106721622

namespace A098904

/-- `record[(n+1)*gcd(2, A008472(n+1))]` -/
def P837405601106721622.Spec : Prop :=
  ∀ n, (P837405601106721622.a n : ℤ) = A098904 (n + 1)

end A098904

/-! ## A098904.P18112699502731847523

`record[(n+1)*(A067856(A007947(n+1))+1)]`
-/

namespace A098904.P18112699502731847523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A067856 (A007947 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098904.P18112699502731847523

namespace A098904

/-- `record[(n+1)*(A067856(A007947(n+1))+1)]` -/
def P18112699502731847523.Spec : Prop :=
  ∀ n, P18112699502731847523.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P3454121655183528190

`2*lt[∏{p}[2*n, -#], 0]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098904

/-- `2*lt[∏{p}[2*n, -#], 0]` -/
def P3454121655183528190.Spec : Prop :=
  ∀ n, (P3454121655183528190.a n : ℤ) = A098904 (n + 1)

theorem P3454121655183528190.correct : P3454121655183528190.Spec := by
  intro n
  simp only [A098904, Nat.add_sub_cancel]

end A098904

/-! ## A098904.P8780303661627736850

`2*lt[∏{e}[2*n, -#], 0]`
-/

namespace A098904.P8780303661627736850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A098904.P8780303661627736850

namespace A098904

/-- `2*lt[∏{e}[2*n, -#], 0]` -/
def P8780303661627736850.Spec : Prop :=
  ∀ n, (P8780303661627736850.a n : ℤ) = A098904 (n + 1)

end A098904

/-! ## A098904.P4835697336210223296

`filter[A004277(n), A353674(#)]`
-/

namespace A098904.P4835697336210223296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P4835697336210223296

namespace A098904

/-- `filter[A004277(n), A353674(#)]` -/
def P4835697336210223296.Spec : Prop :=
  ∀ n, P4835697336210223296.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P16084019167088387455

`filter[A004279(n), A353674(#)]`
-/

namespace A098904.P16084019167088387455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P16084019167088387455

namespace A098904

/-- `filter[A004279(n), A353674(#)]` -/
def P16084019167088387455.Spec : Prop :=
  ∀ n, P16084019167088387455.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P2591631859670754654

`filter[A004271(n+1), A353674(#)]`
-/

namespace A098904.P2591631859670754654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P2591631859670754654

namespace A098904

/-- `filter[A004271(n+1), A353674(#)]` -/
def P2591631859670754654.Spec : Prop :=
  ∀ n, P2591631859670754654.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P1427471454254695579

`filter[A004275(n+1), A353674(#)]`
-/

namespace A098904.P1427471454254695579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P1427471454254695579

namespace A098904

/-- `filter[A004275(n+1), A353674(#)]` -/
def P1427471454254695579.Spec : Prop :=
  ∀ n, P1427471454254695579.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P16771013111640865319

`filter[A004278(n+1), A353674(#)]`
-/

namespace A098904.P16771013111640865319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P16771013111640865319

namespace A098904

/-- `filter[A004278(n+1), A353674(#)]` -/
def P16771013111640865319.Spec : Prop :=
  ∀ n, P16771013111640865319.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P14149462325245254755

`filter[A005843(n+1), A353674(#)]`
-/

namespace A098904.P14149462325245254755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P14149462325245254755

namespace A098904

/-- `filter[A005843(n+1), A353674(#)]` -/
def P14149462325245254755.Spec : Prop :=
  ∀ n, P14149462325245254755.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P2340127192425897914

`record[(n+1)*(2-A000035(A005069(n+1)))]`
-/

namespace A098904.P2340127192425897914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A000035 (A005069 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098904.P2340127192425897914

namespace A098904

/-- `record[(n+1)*(2-A000035(A005069(n+1)))]` -/
def P2340127192425897914.Spec : Prop :=
  ∀ n, P2340127192425897914.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P12764158166338462862

`filter[A004272(n+1), A353674(#)]`
-/

namespace A098904.P12764158166338462862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P12764158166338462862

namespace A098904

/-- `filter[A004272(n+1), A353674(#)]` -/
def P12764158166338462862.Spec : Prop :=
  ∀ n, P12764158166338462862.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P9722787823499275067

`∩[2*n, A030230(n+1)]`
-/

namespace A098904.P9722787823499275067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098904.P9722787823499275067

namespace A098904

/-- `∩[2*n, A030230(n+1)]` -/
def P9722787823499275067.Spec : Prop :=
  ∀ n, (P9722787823499275067.a n : ℤ) = A098904 (n + 1)

end A098904

/-! ## A098904.P8519097023433529768

`filter[A030230(n+1), A353674(#)]`
-/

namespace A098904.P8519097023433529768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P8519097023433529768

namespace A098904

/-- `filter[A030230(n+1), A353674(#)]` -/
def P8519097023433529768.Spec : Prop :=
  ∀ n, P8519097023433529768.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P16585570881379671352

`∩[A030230(n+1), A004275(n)]`
-/

namespace A098904.P16585570881379671352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098904.P16585570881379671352

namespace A098904

/-- `∩[A030230(n+1), A004275(n)]` -/
def P16585570881379671352.Spec : Prop :=
  ∀ n, (P16585570881379671352.a n : ℤ) = A098904 (n + 1)

end A098904

/-! ## A098904.P6137579930403660459

`∩[A030230(n+1), A004277(n)]`
-/

namespace A098904.P6137579930403660459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098904.P6137579930403660459

namespace A098904

/-- `∩[A030230(n+1), A004277(n)]` -/
def P6137579930403660459.Spec : Prop :=
  ∀ n, (P6137579930403660459.a n : ℤ) = A098904 (n + 1)

end A098904

/-! ## A098904.P17976155871632212068

`∩[A030230(n+1), A005843(n)]`
-/

namespace A098904.P17976155871632212068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098904.P17976155871632212068

namespace A098904

/-- `∩[A030230(n+1), A005843(n)]` -/
def P17976155871632212068.Spec : Prop :=
  ∀ n, (P17976155871632212068.a n : ℤ) = A098904 (n + 1)

end A098904

/-! ## A098904.P15092224209591245996

`filter[A064745(n+1), A353674(#)]`
-/

namespace A098904.P15092224209591245996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P15092224209591245996

namespace A098904

/-- `filter[A064745(n+1), A353674(#)]` -/
def P15092224209591245996.Spec : Prop :=
  ∀ n, P15092224209591245996.a n = A098904 (n + 1)

end A098904

/-! ## A098904.P216006021645200898

`filter[A171086(n+1), A353674(#)]`
-/

namespace A098904.P216006021645200898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A098904.P216006021645200898

namespace A098904

/-- `filter[A171086(n+1), A353674(#)]` -/
def P216006021645200898.Spec : Prop :=
  ∀ n, P216006021645200898.a n = A098904 (n + 1)

end A098904

/-!
# A098905: Odd numbers whose number of distinct prime factors is positive and even.

The programs for A098905, the canonical program `A098905.P4396143342972297058` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098905 has offset 1).

The definition of A098905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098905.P4396143342972297058

`lt[1, A349447(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098905

/-- `lt[1, A349447(n+1)]+1` -/
def P4396143342972297058.Spec : Prop :=
  ∀ n, (P4396143342972297058.a n : ℤ) = A098905 (n + 1)

theorem P4396143342972297058.correct : P4396143342972297058.Spec := by
  intro n
  simp only [A098905, Nat.add_sub_cancel]

end A098905

/-! ## A098905.P5955428296085819805

`eq[1, A353675(n+2)]+2`
-/

namespace A098905.P5955428296085819805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353675 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A098905.P5955428296085819805

namespace A098905

/-- `eq[1, A353675(n+2)]+2` -/
def P5955428296085819805.Spec : Prop :=
  ∀ n, (P5955428296085819805.a n : ℤ) = A098905 (n + 1)

end A098905

/-! ## A098905.P17018221333626091849

`∩[2*n+1, A030231(n+2)]`
-/

namespace A098905.P17018221333626091849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098905.P17018221333626091849

namespace A098905

/-- `∩[2*n+1, A030231(n+2)]` -/
def P17018221333626091849.Spec : Prop :=
  ∀ n, (P17018221333626091849.a n : ℤ) = A098905 (n + 1)

end A098905

/-! ## A098905.P2444910522798953134

`filter[A020742(n), A353675(#)]`
-/

namespace A098905.P2444910522798953134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P2444910522798953134

namespace A098905

/-- `filter[A020742(n), A353675(#)]` -/
def P2444910522798953134.Spec : Prop :=
  ∀ n, P2444910522798953134.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P16476526137918024249

`filter[A064479(n), A353675(#)]`
-/

namespace A098905.P16476526137918024249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P16476526137918024249

namespace A098905

/-- `filter[A064479(n), A353675(#)]` -/
def P16476526137918024249.Spec : Prop :=
  ∀ n, P16476526137918024249.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P5820669820426229304

`filter[A065940(n), A353675(#)]`
-/

namespace A098905.P5820669820426229304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P5820669820426229304

namespace A098905

/-- `filter[A065940(n), A353675(#)]` -/
def P5820669820426229304.Spec : Prop :=
  ∀ n, P5820669820426229304.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P14809531538965836998

`filter[A116451(n), A353675(#)]`
-/

namespace A098905.P14809531538965836998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P14809531538965836998

namespace A098905

/-- `filter[A116451(n), A353675(#)]` -/
def P14809531538965836998.Spec : Prop :=
  ∀ n, P14809531538965836998.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P2531418941929579006

`lt[1, A023900(A124625(n)+1)]`
-/

namespace A098905.P2531418941929579006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A124625 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A098905.P2531418941929579006

namespace A098905

/-- `lt[1, A023900(A124625(n)+1)]` -/
def P2531418941929579006.Spec : Prop :=
  ∀ n, (P2531418941929579006.a n : ℤ) = A098905 (n + 1)

end A098905

/-! ## A098905.P16350549385668255248

`filter[A030231(n+1), A266070(#)]`
-/

namespace A098905.P16350549385668255248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A098905.P16350549385668255248

namespace A098905

/-- `filter[A030231(n+1), A266070(#)]` -/
def P16350549385668255248.Spec : Prop :=
  ∀ n, P16350549385668255248.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P18249935676744872414

`filter[A030231(n+1), A266246(#)]`
-/

namespace A098905.P18249935676744872414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A098905.P18249935676744872414

namespace A098905

/-- `filter[A030231(n+1), A266246(#)]` -/
def P18249935676744872414.Spec : Prop :=
  ∀ n, P18249935676744872414.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P7269888276353371480

`filter[A030231(n+1), A266611(#)]`
-/

namespace A098905.P7269888276353371480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A098905.P7269888276353371480

namespace A098905

/-- `filter[A030231(n+1), A266611(#)]` -/
def P7269888276353371480.Spec : Prop :=
  ∀ n, P7269888276353371480.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P11443640405684247508

`filter[A030231(n+1), A266719(#)]`
-/

namespace A098905.P11443640405684247508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A098905.P11443640405684247508

namespace A098905

/-- `filter[A030231(n+1), A266719(#)]` -/
def P11443640405684247508.Spec : Prop :=
  ∀ n, P11443640405684247508.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P6196207350323131127

`filter[A030231(n+1), A272664(#)]`
-/

namespace A098905.P6196207350323131127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A098905.P6196207350323131127

namespace A098905

/-- `filter[A030231(n+1), A272664(#)]` -/
def P6196207350323131127.Spec : Prop :=
  ∀ n, P6196207350323131127.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P17055238091477402706

`filter[A030231(n+1), A296066(#)]`
-/

namespace A098905.P17055238091477402706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A098905.P17055238091477402706

namespace A098905

/-- `filter[A030231(n+1), A296066(#)]` -/
def P17055238091477402706.Spec : Prop :=
  ∀ n, P17055238091477402706.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P8396296638984205636

`filter[A000414(n+1), A353675(#)]`
-/

namespace A098905.P8396296638984205636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P8396296638984205636

namespace A098905

/-- `filter[A000414(n+1), A353675(#)]` -/
def P8396296638984205636.Spec : Prop :=
  ∀ n, P8396296638984205636.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P12946237467328853311

`filter[A002808(n+1), A353675(#)]`
-/

namespace A098905.P12946237467328853311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P12946237467328853311

namespace A098905

/-- `filter[A002808(n+1), A353675(#)]` -/
def P12946237467328853311.Spec : Prop :=
  ∀ n, P12946237467328853311.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P17429458076448026664

`filter[A009188(n+1), A353675(#)]`
-/

namespace A098905.P17429458076448026664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P17429458076448026664

namespace A098905

/-- `filter[A009188(n+1), A353675(#)]` -/
def P17429458076448026664.Spec : Prop :=
  ∀ n, P17429458076448026664.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P2235424655662229791

`filter[A014528(n+1), A353675(#)]`
-/

namespace A098905.P2235424655662229791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P2235424655662229791

namespace A098905

/-- `filter[A014528(n+1), A353675(#)]` -/
def P2235424655662229791.Spec : Prop :=
  ∀ n, P2235424655662229791.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P4525096689430136299

`filter[A024352(n+1), A353675(#)]`
-/

namespace A098905.P4525096689430136299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P4525096689430136299

namespace A098905

/-- `filter[A024352(n+1), A353675(#)]` -/
def P4525096689430136299.Spec : Prop :=
  ∀ n, P4525096689430136299.a n = A098905 (n + 1)

end A098905

/-! ## A098905.P7913628432081571381

`filter[A036558(n+1), A353675(#)]`
-/

namespace A098905.P7913628432081571381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A098905.P7913628432081571381

namespace A098905

/-- `filter[A036558(n+1), A353675(#)]` -/
def P7913628432081571381.Spec : Prop :=
  ∀ n, P7913628432081571381.a n = A098905 (n + 1)

end A098905

/-!
# A098908: Sorted products of primes (2,3,5,7...) and factorials (1,2,6,24...).

The programs for A098908, there is no canonical definition to state claims against.
-/

/-! ## A098908.P9793108973249595598

`lt[A240182(n), A306593(n)]`
-/

namespace A098908.P9793108973249595598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098908.P9793108973249595598

/-! ## A098908.P12745882817786487041

`lt[A177886(n+1), A020639(n+1)]+1`
-/

namespace A098908.P12745882817786487041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A098908.P12745882817786487041

/-! ## A098908.P9017050208817593784

`lt[A260443(A318560(n+2)), A328964(n)]`
-/

namespace A098908.P9017050208817593784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A318560 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098908.P9017050208817593784

/-! ## A098908.P4894808373659435823

`lt[A324749(A004526(3*n+1)), A306593(n)]`
-/

namespace A098908.P4894808373659435823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 (A004526 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098908.P4894808373659435823

/-! ## A098908.P17694636082434226058

`lt[A000032(n), A306662(n)]`
-/

namespace A098908.P17694636082434226058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098908.P17694636082434226058

/-!
# A098910: Table(n,2) read by rows giving k and j such that Mersenne-prime(k) - Mersenne-prime(j) + 1 is prime.

The programs for A098910, there is no canonical definition to state claims against.
-/

/-! ## A098910.P116444546762131151

`A035191(A278755(n)+1)`
-/

namespace A098910.P116444546762131151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (A278755 n + 1).toNat

end

end A098910.P116444546762131151

/-! ## A098910.P3859903542189925406

`A211270(A234875(n+1)/4)`
-/

namespace A098910.P3859903542189925406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211270 (SequenceMachineLib.roundAway ((A234875 (n + 1) : ℚ) / 4)).toNat

end

end A098910.P3859903542189925406

/-! ## A098910.P1767589911959711391

`A040201(A290683(n))+A027656(n)`
-/

namespace A098910.P1767589911959711391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040201 (A290683 n).toNat + A027656 n

end

end A098910.P1767589911959711391

/-! ## A098910.P17898457288255777587

`A289436(n+2)+A000035(A288897(n))`
-/

namespace A098910.P17898457288255777587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) + A000035 (A288897 n).toNat

end

end A098910.P17898457288255777587

/-! ## A098910.P727167878857690069

`A289440(n+2)+A285671(A285645(n))`
-/

namespace A098910.P727167878857690069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (n + 2) + A285671 (A285645 n).toNat

end

end A098910.P727167878857690069

/-!
# A098912: Number of ways angles from Pi/n to (n-1)Pi/n can tile around a vertex, where rotations and reflections of an angle sequence are not counted.

The programs for A098912, there is no canonical definition to state claims against.
-/

/-! ## A098912.P13979068348835014738

`A293818(2*(n+2))`
-/

namespace A098912.P13979068348835014738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293818 (2 * (n + 2))

end

end A098912.P13979068348835014738

/-! ## A098912.P12333599391501485224

`record[A293818(n+3)^(n%2)]`
-/

namespace A098912.P12333599391501485224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293818 (n + 3) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P12333599391501485224

/-! ## A098912.P1652564511328590864

`record[A293818(n+3)/A027642(n)]`
-/

namespace A098912.P1652564511328590864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293818 (n + 3) : ℚ) / (A027642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P1652564511328590864

/-! ## A098912.P10627304536757535418

`record[A293818(n+3)/A165326(n)]`
-/

namespace A098912.P10627304536757535418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293818 (n + 3) : ℚ) / (A165326 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P10627304536757535418

/-! ## A098912.P3647480220183496259

`record[A293818(n+4)/A033999(n)]`
-/

namespace A098912.P3647480220183496259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293818 (n + 4) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P3647480220183496259

/-! ## A098912.P9458045551728096508

`record[gcd(A266222(n), A293818(n+3))]`
-/

namespace A098912.P9458045551728096508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266222 n) (A293818 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P9458045551728096508

/-! ## A098912.P5484201113698523920

`record[and(A033999(n), A293818(n+3))]`
-/

namespace A098912.P5484201113698523920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A293818 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P5484201113698523920

/-! ## A098912.P11823131701210795017

`record[A293818(n+3)^Δ[A004526(n)]]`
-/

namespace A098912.P11823131701210795017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293818 (n + 3) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P11823131701210795017

/-! ## A098912.P8238492125343145227

`record[A293818(n+4)/A052552(n+1)]`
-/

namespace A098912.P8238492125343145227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293818 (n + 4) : ℚ) / (A052552 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P8238492125343145227

/-! ## A098912.P3180071117246904395

`record[A293818(n+3)^(2-A052552(n))]`
-/

namespace A098912.P3180071117246904395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293818 (n + 3) : ℚ) ^ (2 - A052552 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098912.P3180071117246904395

/-!
# A098913: Number of different ways angles from Pi/n to (n-1)Pi/n can tile around a vertex, where rotations of an angle sequence are not counted, but reflections that are different are counted.

The programs for A098913, the canonical program `A098913.P8033623340235312426` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098913 has offset 2).

The definition of A098913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008965, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098913.P8033623340235312426

`A008965(2*(n+2))-2^(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A098913

/-- `A008965(2*(n+2))-2^(n+2)` -/
def P8033623340235312426.Spec : Prop :=
  ∀ n, P8033623340235312426.a n = A098913 (n + 2)

theorem P8033623340235312426.correct : P8033623340235312426.Spec := by
  intro n
  simp only [A098913, Nat.add_sub_cancel]

end A098913

/-! ## A098913.P6812312953921996008

`A293820(2*(n+2))`
-/

namespace A098913.P6812312953921996008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293820 (2 * (n + 2))

end

end A098913.P6812312953921996008

namespace A098913

/-- `A293820(2*(n+2))` -/
def P6812312953921996008.Spec : Prop :=
  ∀ n, P6812312953921996008.a n = A098913 (n + 2)

end A098913

/-! ## A098913.P3655579103861964588

`record[A293820(n+3)^(n%2)]`
-/

namespace A098913.P3655579103861964588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293820 (n + 3) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098913.P3655579103861964588

namespace A098913

/-- `record[A293820(n+3)^(n%2)]` -/
def P3655579103861964588.Spec : Prop :=
  ∀ n, P3655579103861964588.a n = A098913 (n + 2)

end A098913

/-! ## A098913.P3117999373854451637

`record[A293820(n+3)/A027642(n)]`
-/

namespace A098913.P3117999373854451637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293820 (n + 3) : ℚ) / (A027642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098913.P3117999373854451637

namespace A098913

/-- `record[A293820(n+3)/A027642(n)]` -/
def P3117999373854451637.Spec : Prop :=
  ∀ n, P3117999373854451637.a n = (A098913 (n + 2) : ℚ)

end A098913

/-! ## A098913.P1323925147444907341

`record[A293820(n+3)^A062157(n)]`
-/

namespace A098913.P1323925147444907341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293820 (n + 3) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098913.P1323925147444907341

namespace A098913

/-- `record[A293820(n+3)^A062157(n)]` -/
def P1323925147444907341.Spec : Prop :=
  ∀ n, P1323925147444907341.a n = (A098913 (n + 2) : ℚ)

end A098913

/-! ## A098913.P10853562097165983580

`record[A293820(n+3)^A088705(n)]`
-/

namespace A098913.P10853562097165983580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293820 (n + 3) : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098913.P10853562097165983580

namespace A098913

/-- `record[A293820(n+3)^A088705(n)]` -/
def P10853562097165983580.Spec : Prop :=
  ∀ n, P10853562097165983580.a n = (A098913 (n + 2) : ℚ)

end A098913

/-! ## A098913.P8924679842469361274

`record[gcd(A027656(n), A293820(n+3))]`
-/

namespace A098913.P8924679842469361274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A293820 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098913.P8924679842469361274

namespace A098913

/-- `record[gcd(A027656(n), A293820(n+3))]` -/
def P8924679842469361274.Spec : Prop :=
  ∀ n, (P8924679842469361274.a n : ℤ) = A098913 (n + 2)

end A098913

/-! ## A098913.P8103095694752859239

`record[A293820(n+4)/A062157(n+1)]`
-/

namespace A098913.P8103095694752859239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293820 (n + 4) : ℚ) / (A062157 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098913.P8103095694752859239

namespace A098913

/-- `record[A293820(n+4)/A062157(n+1)]` -/
def P8103095694752859239.Spec : Prop :=
  ∀ n, P8103095694752859239.a n = (A098913 (n + 2) : ℚ)

end A098913

/-! ## A098913.P1078455056732215375

`A052823(2*(n+2))-A000225(n+2)`
-/

namespace A098913.P1078455056732215375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (2 * (n + 2)) - A000225 (n + 2)

end

end A098913.P1078455056732215375

namespace A098913

/-- `A052823(2*(n+2))-A000225(n+2)` -/
def P1078455056732215375.Spec : Prop :=
  ∀ n, P1078455056732215375.a n = A098913 (n + 2)

end A098913

/-!
# A098914: Permanent of the n X n (0,1)-matrices with ij-th entry equal to zero iff it is on the diagonal, the first-upper diagonal, the main antidiagonal or the first-upper antidiagonal.

The programs for A098914, there is no canonical definition to state claims against.
-/

/-! ## A098914.P15295829541763608733

`Δ[A325318((n+2)!)]`
-/

namespace A098914.P15295829541763608733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325318 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098914.P15295829541763608733

/-! ## A098914.P18352953231206854922

`Δ[A325318(∏[n+2])]`
-/

namespace A098914.P18352953231206854922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325318 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098914.P18352953231206854922

/-!
# A098915: Least k such that k*Mersenne-prime(n)*Mersenne-prime(n+1) - 1 is prime.

The programs for A098915, there is no canonical definition to state claims against.
-/

/-! ## A098915.P336342633773737835

`2*A092527(n+1)`
-/

namespace A098915.P336342633773737835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092527 (n + 1)

end

end A098915.P336342633773737835

/-! ## A098915.P17819398091213167946

`A004277(A092527(n+1))`
-/

namespace A098915.P17819398091213167946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A092527 (n + 1)).toNat

end

end A098915.P17819398091213167946

/-! ## A098915.P10835391770549465961

`A004275(A092527(n+1)+1)`
-/

namespace A098915.P10835391770549465961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A092527 (n + 1) + 1).toNat

end

end A098915.P10835391770549465961

/-! ## A098915.P2716357474156286560

`A092527(C(n+1, n))+A092527(n+1)`
-/

namespace A098915.P2716357474156286560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092527 (Nat.choose (n + 1) n) + A092527 (n + 1)

end

end A098915.P2716357474156286560

/-! ## A098915.P10891810276285935304

`A092527(n+1)+A092527(-xor(n, -1))`
-/

namespace A098915.P10891810276285935304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092527 (n + 1) + A092527 (-Int.xor (n : ℤ) (-1)).toNat

end

end A098915.P10891810276285935304

/-!
# A098916: Permanent of the n X n (0,1)-matrices with ij-th entry equal to zero iff (i=1,j=1),(i=1,j=n),(i=n,j=1) and (i=n,j=n).

The programs for A098916, the canonical program `A098916.P11277039740354274745` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098916 has offset 3).

The definition of A098916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098916.P11277039740354274745

`(n+1)*n*(n+1)!`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098916

/-- `(n+1)*n*(n+1)!` -/
def P11277039740354274745.Spec : Prop :=
  ∀ n, (P11277039740354274745.a n : ℤ) = A098916 (n + 3)

theorem P11277039740354274745.correct : P11277039740354274745.Spec := by
  intro n
  simp only [A098916, Nat.add_sub_cancel]

end A098916

/-! ## A098916.P11836081076584340563

`n*Δ[(n+1)!]`
-/

namespace A098916.P11836081076584340563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A098916.P11836081076584340563

namespace A098916

/-- `n*Δ[(n+1)!]` -/
def P11836081076584340563.Spec : Prop :=
  ∀ n, P11836081076584340563.a n = A098916 (n + 3)

theorem P11836081076584340563.correct : P11836081076584340563.Spec := by
  intro n
  simp only [A098916, Nat.add_sub_cancel, A098916.P11836081076584340563.f1, A098916.P11836081076584340563.a, A098916.P11277039740354274745.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A098916

/-! ## A098916.P11449717053038377567

`n*Δ[∏[n+1]]`
-/

namespace A098916.P11449717053038377567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A098916.P11449717053038377567

namespace A098916

/-- `n*Δ[∏[n+1]]` -/
def P11449717053038377567.Spec : Prop :=
  ∀ n, P11449717053038377567.a n = A098916 (n + 3)

theorem P11449717053038377567.correct : P11449717053038377567.Spec := by
  intro n
  simp only [A098916, Nat.add_sub_cancel, A098916.P11449717053038377567.f2, A098916.P11449717053038377567.f1, A098916.P11449717053038377567.a, A098916.P11277039740354274745.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A098916

/-! ## A098916.P1079521924818227710

`lcm(Δ[(n+1)!], Δ[n!])`
-/

namespace A098916.P1079521924818227710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A098916.P1079521924818227710

namespace A098916

/-- `lcm(Δ[(n+1)!], Δ[n!])` -/
def P1079521924818227710.Spec : Prop :=
  ∀ n, (P1079521924818227710.a n : ℤ) = A098916 (n + 3)

end A098916

/-! ## A098916.P15891815033892502150

`Δ[n!]/(1/(n+1))²`
-/

namespace A098916.P15891815033892502150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A098916.P15891815033892502150

namespace A098916

/-- `Δ[n!]/(1/(n+1))²` -/
def P15891815033892502150.Spec : Prop :=
  ∀ n, P15891815033892502150.a n = (A098916 (n + 3) : ℚ)

theorem P15891815033892502150.correct : P15891815033892502150.Spec := by
  intro n
  simp only [A098916, Nat.add_sub_cancel, A098916.P15891815033892502150.f1, A098916.P15891815033892502150.a, A098916.P11277039740354274745.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A098916

/-! ## A098916.P10134019012443406909

`lcm(n, n+1)/∏[1/(n+1)]`
-/

namespace A098916.P10134019012443406909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A098916.P10134019012443406909

namespace A098916

/-- `lcm(n, n+1)/∏[1/(n+1)]` -/
def P10134019012443406909.Spec : Prop :=
  ∀ n, P10134019012443406909.a n = (A098916 (n + 3) : ℚ)

end A098916

/-! ## A098916.P655132916096314561

`abs(n*Δ[(2*n-(n-1))!])`
-/

namespace A098916.P655132916096314561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A098916.P655132916096314561

namespace A098916

/-- `abs(n*Δ[(2*n-(n-1))!])` -/
def P655132916096314561.Spec : Prop :=
  ∀ n, P655132916096314561.a n = A098916 (n + 3)

end A098916

/-! ## A098916.P14840103544869507428

`floor(n*Δ[(n+1)*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A098916.P14840103544869507428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A098916.P14840103544869507428

namespace A098916

/-- `floor(n*Δ[(n+1)*a(n-1)])` -/
def P14840103544869507428.Spec : Prop :=
  ∀ n, P14840103544869507428.a n = A098916 (n + 3)

end A098916

/-! ## A098916.P6291631578314238892

`A002775(n+1)-A001563(n+1)`
-/

namespace A098916.P6291631578314238892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002775 (n + 1) - A001563 (n + 1)

end

end A098916.P6291631578314238892

namespace A098916

/-- `A002775(n+1)-A001563(n+1)` -/
def P6291631578314238892.Spec : Prop :=
  ∀ n, P6291631578314238892.a n = A098916 (n + 3)

theorem P6291631578314238892.correct : P6291631578314238892.Spec := by
  intro n
  simp only [A098916, Nat.add_sub_cancel, A098916.P6291631578314238892.a, A098916.P11277039740354274745.a, A001563, A001563.P7265670906522758193.a, A002775, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098916

/-! ## A098916.P14469370407668464157

`A001564(n+1)-A007680(n+1)`
-/

namespace A098916.P14469370407668464157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001564 (n + 1) - A007680 (n + 1)

end

end A098916.P14469370407668464157

namespace A098916

/-- `A001564(n+1)-A007680(n+1)` -/
def P14469370407668464157.Spec : Prop :=
  ∀ n, P14469370407668464157.a n = A098916 (n + 3)

theorem P14469370407668464157.correct : P14469370407668464157.Spec := by
  intro n
  simp only [A098916, Nat.add_sub_cancel, A098916.P14469370407668464157.a, A098916.P11277039740354274745.a, A001564, A001564.P17765539125247951244.a, A007680, A007680.P14662614683744922745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098916

/-!
# A098918: Product of first n Mersenne primes = Product_{k=1..n} A000668(k).

The programs for A098918, there is no canonical definition to state claims against.
-/

/-! ## A098918.P16013218812628260979

`∏[A000668(n+1)]`
-/

namespace A098918.P16013218812628260979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098918.P16013218812628260979

/-! ## A098918.P15837780245664999024

`∏[A343733(n+2)]`
-/

namespace A098918.P15837780245664999024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098918.P15837780245664999024

/-! ## A098918.P14587313962824463717

`∏[sqrt(A133049(n+1))]`
-/

namespace A098918.P14587313962824463717
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133049 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098918.P14587313962824463717

/-! ## A098918.P16236967497869684170

`∏[A169628(∑[n+1])]`
-/

namespace A098918.P16236967497869684170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098918.P16236967497869684170

/-! ## A098918.P12319559859162534314

`∏[record[A016047(n+1)]]`
-/

namespace A098918.P12319559859162534314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098918.P12319559859162534314

/-!
# A098919: Least k such that k*M#(n) - 1 is prime where M#(n) is the product of the first n Mersenne primes.

The programs for A098919, there is no canonical definition to state claims against.
-/

/-! ## A098919.P3586427139954688215

`2*A092702(n+1)`
-/

namespace A098919.P3586427139954688215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092702 (n + 1)

end

end A098919.P3586427139954688215

/-! ## A098919.P15828590266209879900

`A004277(A092702(n+1))`
-/

namespace A098919.P15828590266209879900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A092702 (n + 1)).toNat

end

end A098919.P15828590266209879900

/-! ## A098919.P16821261703543001965

`A004275(A092702(n+1)+1)`
-/

namespace A098919.P16821261703543001965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A092702 (n + 1) + 1).toNat

end

end A098919.P16821261703543001965

/-! ## A098919.P7180409604945383960

`A005408(A092702(n+1)-1)+1`
-/

namespace A098919.P7180409604945383960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A092702 (n + 1) - 1).toNat + 1

end

end A098919.P7180409604945383960

/-! ## A098919.P11188941142063401923

`A004273(A092702(n+1))+A007318(∑[n])`
-/

namespace A098919.P11188941142063401923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A092702 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098919.P11188941142063401923

/-!
# A098921: Let [n] = {1,2,...,n}. Let G_n be the union of all closed line segments joining any two elements of [n] X [n] along a vertical or horizontal line, or along a line with slope +-1. Then a(n) = combined total of the number of (nondegenerate) triangles and rectangles for which all edges are subsets of G_n.

The programs for A098921, there is no canonical definition to state claims against.
-/

/-! ## A098921.P2886927322970946796

`or(n, A247186(A054000(n+1)))`
-/

namespace A098921.P2886927322970946796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A247186 (A054000 (n + 1)).toNat)

end

end A098921.P2886927322970946796

/-!
# A098922: Reverse digits of largest primes, append to sequence if result is larger prime then previous one with reverse digits.

The programs for A098922, there is no canonical definition to state claims against.
-/

/-! ## A098922.P14411962363264767942

`record[A095180(n+1)]`
-/

namespace A098922.P14411962363264767942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098922.P14411962363264767942

/-!
# A098923: 33-gonal numbers: n(31n-29)/2.

The programs for A098923, the canonical program `A098923.P10115535631400107157` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098923 has offset 0).

The definition of A098923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(31*n-29)/2` (program `A098923.P17545056354070153077`, by `A098923.P17545056354070153077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098923.P17545056354070153077

`n*(31*n-29)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098923.P17545056354070153077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((31 * n : ℤ) - 29) : ℚ) / 2

end

end A098923.P17545056354070153077

namespace A098923

/-- `n*(31*n-29)/2` -/
def P17545056354070153077.Spec : Prop :=
  ∀ n, P17545056354070153077.a n = (A098923 n : ℚ)

theorem P17545056354070153077.correct : P17545056354070153077.Spec := by
  intro n
  induction n with
  | zero => simp [A098923, A098923.P17545056354070153077.a, A098923.P10115535631400107157.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A098923, Nat.add_sub_cancel, A098923.P17545056354070153077.a, A098923.P10115535631400107157.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A098923

/-! ## A098923.P10115535631400107157

`31*n+a(n-1)-30` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098923

/-- `31*n+a(n-1)-30` -/
def P10115535631400107157.Spec : Prop :=
  ∀ n, P10115535631400107157.a n = A098923 n

theorem P10115535631400107157.correct : P10115535631400107157.Spec := by
  intro n
  simp only [A098923]

end A098923

/-! ## A098923.P14821389612077889578

`31*C(n, 2)+n`
-/

namespace A098923.P14821389612077889578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * Nat.choose n 2 + n

end

end A098923.P14821389612077889578

namespace A098923

/-- `31*C(n, 2)+n` -/
def P14821389612077889578.Spec : Prop :=
  ∀ n, (P14821389612077889578.a n : ℤ) = A098923 n

end A098923

/-! ## A098923.P9596214332482984919

`∑[a(n-1)+31]` with `a(0)=0, a(1)=1`
-/

namespace A098923.P9596214332482984919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098923.P9596214332482984919

namespace A098923

/-- `∑[a(n-1)+31]` -/
def P9596214332482984919.Spec : Prop :=
  ∀ n, (P9596214332482984919.a n : ℤ) = A098923 n

end A098923

/-! ## A098923.P10132058766972803264

`A153875(n)-(n²+n)`
-/

namespace A098923.P10132058766972803264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n - (n ^ 2 + n : ℤ)

end

end A098923.P10132058766972803264

namespace A098923

/-- `A153875(n)-(n²+n)` -/
def P10132058766972803264.Spec : Prop :=
  ∀ n, P10132058766972803264.a n = A098923 n

end A098923

/-! ## A098923.P4631137313364570764

`A064200(n)+A001106(n)`
-/

namespace A098923.P4631137313364570764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A001106 n

end

end A098923.P4631137313364570764

namespace A098923

/-- `A064200(n)+A001106(n)` -/
def P4631137313364570764.Spec : Prop :=
  ∀ n, P4631137313364570764.a n = A098923 n

end A098923

/-! ## A098923.P6505594656073621303

`A360436(n)+A161680(n)`
-/

namespace A098923.P6505594656073621303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360436 n + A161680 n

end

end A098923.P6505594656073621303

namespace A098923

/-- `A360436(n)+A161680(n)` -/
def P6505594656073621303.Spec : Prop :=
  ∀ n, P6505594656073621303.a n = A098923 n

end A098923

/-! ## A098923.P10984441794529993063

`A022288(n)-A008596(n)`
-/

namespace A098923.P10984441794529993063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022288 n - A008596 n

end

end A098923.P10984441794529993063

namespace A098923

/-- `A022288(n)-A008596(n)` -/
def P10984441794529993063.Spec : Prop :=
  ∀ n, P10984441794529993063.a n = A098923 n

end A098923

/-! ## A098923.P10929996201504074158

`A022289(n)-A008597(n)`
-/

namespace A098923.P10929996201504074158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - A008597 n

end

end A098923.P10929996201504074158

namespace A098923

/-- `A022289(n)-A008597(n)` -/
def P10929996201504074158.Spec : Prop :=
  ∀ n, P10929996201504074158.a n = A098923 n

end A098923

/-! ## A098923.P12967856222742178882

`A028994(n)-A056126(n)`
-/

namespace A098923.P12967856222742178882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n - A056126 n

end

end A098923.P12967856222742178882

namespace A098923

/-- `A028994(n)-A056126(n)` -/
def P12967856222742178882.Spec : Prop :=
  ∀ n, P12967856222742178882.a n = A098923 n

end A098923

/-! ## A098923.P637866761244249381

`A016802(n)-A132757(n)`
-/

namespace A098923.P637866761244249381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n - A132757 n

end

end A098923.P637866761244249381

namespace A098923

/-- `A016802(n)-A132757(n)` -/
def P637866761244249381.Spec : Prop :=
  ∀ n, P637866761244249381.a n = A098923 n

end A098923

/-! ## A098923.P1066450632275257478

`A144560(n)-A027468(n)`
-/

namespace A098923.P1066450632275257478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144560 n - A027468 n

end

end A098923.P1066450632275257478

namespace A098923

/-- `A144560(n)-A027468(n)` -/
def P1066450632275257478.Spec : Prop :=
  ∀ n, P1066450632275257478.a n = A098923 n

end A098923

/-! ## A098923.P7560961682913810129

`A153797(n)-A022269(n)`
-/

namespace A098923.P7560961682913810129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 n - A022269 n

end

end A098923.P7560961682913810129

namespace A098923

/-- `A153797(n)-A022269(n)` -/
def P7560961682913810129.Spec : Prop :=
  ∀ n, P7560961682913810129.a n = A098923 n

end A098923

/-! ## A098923.P11225599568383091390

`A153449(n)-A028569(n)`
-/

namespace A098923.P11225599568383091390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153449 n - A028569 n

end

end A098923.P11225599568383091390

namespace A098923

/-- `A153449(n)-A028569(n)` -/
def P11225599568383091390.Spec : Prop :=
  ∀ n, P11225599568383091390.a n = A098923 n

end A098923

/-! ## A098923.P13756475812758915398

`A153796(n)-A028895(n)`
-/

namespace A098923.P13756475812758915398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n - A028895 n

end

end A098923.P13756475812758915398

namespace A098923

/-- `A153796(n)-A028895(n)` -/
def P13756475812758915398.Spec : Prop :=
  ∀ n, P13756475812758915398.a n = A098923 n

end A098923

/-! ## A098923.P14240881674643365509

`A152750(n)-A056119(n)`
-/

namespace A098923.P14240881674643365509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n - A056119 n

end

end A098923.P14240881674643365509

namespace A098923

/-- `A152750(n)-A056119(n)` -/
def P14240881674643365509.Spec : Prop :=
  ∀ n, P14240881674643365509.a n = A098923 n

end A098923

/-! ## A098923.P11491149427741614237

`A152994(n)-A279895(n)`
-/

namespace A098923.P11491149427741614237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n - A279895 n

end

end A098923.P11491149427741614237

namespace A098923

/-- `A152994(n)-A279895(n)` -/
def P11491149427741614237.Spec : Prop :=
  ∀ n, P11491149427741614237.a n = A098923 n

end A098923

/-! ## A098923.P11986562364616241018

`A282854(n)-A161680(n)`
-/

namespace A098923.P11986562364616241018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282854 n - A161680 n

end

end A098923.P11986562364616241018

namespace A098923

/-- `A282854(n)-A161680(n)` -/
def P11986562364616241018.Spec : Prop :=
  ∀ n, P11986562364616241018.a n = A098923 n

end A098923

/-! ## A098923.P9455877887429847968

`A152777(n)-A054000(n+1)`
-/

namespace A098923.P9455877887429847968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - A054000 (n + 1)

end

end A098923.P9455877887429847968

namespace A098923

/-- `A152777(n)-A054000(n+1)` -/
def P9455877887429847968.Spec : Prop :=
  ∀ n, P9455877887429847968.a n = A098923 n

end A098923

/-! ## A098923.P18324277187300734188

`A153793(n)-A134582(n+1)`
-/

namespace A098923.P18324277187300734188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153793 n - A134582 (n + 1)

end

end A098923.P18324277187300734188

namespace A098923

/-- `A153793(n)-A134582(n+1)` -/
def P18324277187300734188.Spec : Prop :=
  ∀ n, P18324277187300734188.a n = A098923 n

end A098923

/-!
# A098924: 45-gonal numbers: n*(43*n-41)/2.

The programs for A098924, the canonical program `A098924.P13458557365381406734` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098924 has offset 1).

The definition of A098924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(43*(n+1)-41)/2` (program `A098924.P5044242449027062738`, by `A098924.P5044242449027062738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098924.P5044242449027062738

`(n+1)*(43*(n+1)-41)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098924.P5044242449027062738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((43 * (n + 1) : ℤ) - 41) : ℚ) / 2

end

end A098924.P5044242449027062738

namespace A098924

/-- `(n+1)*(43*(n+1)-41)/2` -/
def P5044242449027062738.Spec : Prop :=
  ∀ n, P5044242449027062738.a n = (A098924 (n + 1) : ℚ)

theorem P5044242449027062738.correct : P5044242449027062738.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A098924, Nat.add_sub_cancel, A098924.P5044242449027062738.a, A098924.P13458557365381406734.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A098924, Nat.add_sub_cancel, A098924.P5044242449027062738.a, A098924.P13458557365381406734.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A098924

/-! ## A098924.P13458557365381406734

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=45, a(2)=132`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098924

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13458557365381406734.Spec : Prop :=
  ∀ n, P13458557365381406734.a n = A098924 (n + 1)

theorem P13458557365381406734.correct : P13458557365381406734.Spec := by
  intro n
  simp only [A098924, Nat.add_sub_cancel]

end A098924

/-! ## A098924.P13284086416729876272

`∑[a(n-1)+43]` with `a(0)=1`
-/

namespace A098924.P13284086416729876272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098924.P13284086416729876272

namespace A098924

/-- `∑[a(n-1)+43]` -/
def P13284086416729876272.Spec : Prop :=
  ∀ n, (P13284086416729876272.a n : ℤ) = A098924 (n + 1)

end A098924

/-! ## A098924.P1675051401339436735

`43*n+a(n-1)+1` with `a(0)=1`
-/

namespace A098924.P1675051401339436735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  43 * n + (a (n - 1) + 1)

end

end A098924.P1675051401339436735

namespace A098924

/-- `43*n+a(n-1)+1` -/
def P1675051401339436735.Spec : Prop :=
  ∀ n, (P1675051401339436735.a n : ℤ) = A098924 (n + 1)

end A098924

/-! ## A098924.P16667982563355442383

`A195038(n)+(n+1)²`
-/

namespace A098924.P16667982563355442383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195038 n + ((n + 1) ^ 2 : ℤ)

end

end A098924.P16667982563355442383

namespace A098924

/-- `A195038(n)+(n+1)²` -/
def P16667982563355442383.Spec : Prop :=
  ∀ n, P16667982563355442383.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P16121898766466365590

`45*A000217(n)+1-n²`
-/

namespace A098924.P16121898766466365590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A000217 n + 1 - (n ^ 2 : ℤ)

end

end A098924.P16121898766466365590

namespace A098924

/-- `45*A000217(n)+1-n²` -/
def P16121898766466365590.Spec : Prop :=
  ∀ n, P16121898766466365590.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P7258048240190978165

`A095311(n+1)-(n²+n)`
-/

namespace A098924.P7258048240190978165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095311 (n + 1) - (n ^ 2 + n : ℤ)

end

end A098924.P7258048240190978165

namespace A098924

/-- `A095311(n+1)-(n²+n)` -/
def P7258048240190978165.Spec : Prop :=
  ∀ n, P7258048240190978165.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P6448681880932599856

`(n+1)²+41*sqrt(A000537(n))`
-/

namespace A098924.P6448681880932599856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) + 41 * Real.sqrt (A000537 n : ℝ)

end

end A098924.P6448681880932599856

namespace A098924

/-- `(n+1)²+41*sqrt(A000537(n))` -/
def P6448681880932599856.Spec : Prop :=
  ∀ n, P6448681880932599856.a n = (A098924 (n + 1) : ℝ)

end A098924

/-! ## A098924.P12389884183039476184

`A151542(n)+A033574(n)`
-/

namespace A098924.P12389884183039476184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n + A033574 n

end

end A098924.P12389884183039476184

namespace A098924

/-- `A151542(n)+A033574(n)` -/
def P12389884183039476184.Spec : Prop :=
  ∀ n, P12389884183039476184.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P12125838338610071192

`A129428(n)-A014105(n)`
-/

namespace A098924.P12125838338610071192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n - A014105 n

end

end A098924.P12125838338610071192

namespace A098924

/-- `A129428(n)-A014105(n)` -/
def P12125838338610071192.Spec : Prop :=
  ∀ n, P12125838338610071192.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P848965443382821089

`A162942(n)-A270710(n)`
-/

namespace A098924.P848965443382821089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162942 n - A270710 n

end

end A098924.P848965443382821089

namespace A098924

/-- `A162942(n)-A270710(n)` -/
def P848965443382821089.Spec : Prop :=
  ∀ n, P848965443382821089.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P6168018938927084781

`A173309(n)+A000566(n+1)`
-/

namespace A098924.P6168018938927084781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173309 n + A000566 (n + 1)

end

end A098924.P6168018938927084781

namespace A098924

/-- `A173309(n)+A000566(n+1)` -/
def P6168018938927084781.Spec : Prop :=
  ∀ n, P6168018938927084781.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P3703064809745571231

`A289134(n+1)+A132756(n)`
-/

namespace A098924.P3703064809745571231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289134 (n + 1) + A132756 n

end

end A098924.P3703064809745571231

namespace A098924

/-- `A289134(n+1)+A132756(n)` -/
def P3703064809745571231.Spec : Prop :=
  ∀ n, P3703064809745571231.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P13627433752002087129

`A195318(n+1)-A161680(n)`
-/

namespace A098924.P13627433752002087129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195318 (n + 1) - A161680 n

end

end A098924.P13627433752002087129

namespace A098924

/-- `A195318(n+1)-A161680(n)` -/
def P13627433752002087129.Spec : Prop :=
  ∀ n, P13627433752002087129.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P241950756386478088

`A080956(n)+2*A164136(n)`
-/

namespace A098924.P241950756386478088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + 2 * A164136 n

end

end A098924.P241950756386478088

namespace A098924

/-- `A080956(n)+2*A164136(n)` -/
def P241950756386478088.Spec : Prop :=
  ∀ n, P241950756386478088.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P12846202527998726862

`A129428(n)-A000217(2*n)`
-/

namespace A098924.P12846202527998726862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n - A000217 (2 * n)

end

end A098924.P12846202527998726862

namespace A098924

/-- `A129428(n)-A000217(2*n)` -/
def P12846202527998726862.Spec : Prop :=
  ∀ n, P12846202527998726862.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P13407379960847685425

`A195317(n+1)+A115067(n+1)`
-/

namespace A098924.P13407379960847685425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1) + A115067 (n + 1)

end

end A098924.P13407379960847685425

namespace A098924

/-- `A195317(n+1)+A115067(n+1)` -/
def P13407379960847685425.Spec : Prop :=
  ∀ n, P13407379960847685425.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P9820906574837367269

`A000217(n+1)+6*A024966(n)`
-/

namespace A098924.P9820906574837367269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 6 * A024966 n

end

end A098924.P9820906574837367269

namespace A098924

/-- `A000217(n+1)+6*A024966(n)` -/
def P9820906574837367269.Spec : Prop :=
  ∀ n, P9820906574837367269.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P12495698804806741666

`4*n*A016969(n)+2-A192136(n)+n`
-/

namespace A098924.P12495698804806741666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A016969 n) + 2 - A192136 n + (n : ℤ)

end

end A098924.P12495698804806741666

namespace A098924

/-- `4*n*A016969(n)+2-A192136(n)+n` -/
def P12495698804806741666.Spec : Prop :=
  ∀ n, P12495698804806741666.a n = A098924 (n + 1)

end A098924

/-! ## A098924.P1560342700880187865

`A080956(n)+A173307(n)+A163758(n)`
-/

namespace A098924.P1560342700880187865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + (A173307 n + A163758 n)

end

end A098924.P1560342700880187865

namespace A098924

/-- `A080956(n)+A173307(n)+A163758(n)` -/
def P1560342700880187865.Spec : Prop :=
  ∀ n, P1560342700880187865.a n = A098924 (n + 1)

end A098924

/-!
# A098925: Distribution of the number of ways for a child to climb a staircase having r steps (one step or two steps at a time).

The programs for A098925, the canonical program `A098925.P12998610641323261996` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098925 has offset 0).

The definition of A098925 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092865, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098925.P12998610641323261996

`abs(A092865(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098925

/-- `abs(A092865(n))` -/
def P12998610641323261996.Spec : Prop :=
  ∀ n, P12998610641323261996.a n = A098925 n

theorem P12998610641323261996.correct : P12998610641323261996.Spec := by
  intro n
  simp only [A098925]

end A098925

/-! ## A098925.P12944189696033815580

`gcd(A000038(n), A092865(n))`
-/

namespace A098925.P12944189696033815580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A092865 n)

end

end A098925.P12944189696033815580

namespace A098925

/-- `gcd(A000038(n), A092865(n))` -/
def P12944189696033815580.Spec : Prop :=
  ∀ n, (P12944189696033815580.a n : ℤ) = A098925 n

end A098925

/-! ## A098925.P13810476843869329820

`lcm(A020985(n), A092865(n))`
-/

namespace A098925.P13810476843869329820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A092865 n)

end

end A098925.P13810476843869329820

namespace A098925

/-- `lcm(A020985(n), A092865(n))` -/
def P13810476843869329820.Spec : Prop :=
  ∀ n, (P13810476843869329820.a n : ℤ) = A098925 n

end A098925

/-! ## A098925.P11297416467285098877

`A102426(n+1)`
-/

namespace A098925.P11297416467285098877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (n + 1)

end

end A098925.P11297416467285098877

namespace A098925

/-- `A102426(n+1)` -/
def P11297416467285098877.Spec : Prop :=
  ∀ n, P11297416467285098877.a n = A098925 n

end A098925

/-! ## A098925.P4179694587263510506

`A102426(n)-Δ[-A102426(n)]`
-/

namespace A098925.P4179694587263510506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 n - (f1 (n + 1) - f1 n)

end

end A098925.P4179694587263510506

namespace A098925

/-- `A102426(n)-Δ[-A102426(n)]` -/
def P4179694587263510506.Spec : Prop :=
  ∀ n, P4179694587263510506.a n = A098925 n

end A098925

/-! ## A098925.P1192316640906797216

`A007318(A091995(n+1)-1)`
-/

namespace A098925.P1192316640906797216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A091995 (n + 1) - 1).toNat

end

end A098925.P1192316640906797216

namespace A098925

/-- `A007318(A091995(n+1)-1)` -/
def P1192316640906797216.Spec : Prop :=
  ∀ n, P1192316640906797216.a n = A098925 n

end A098925

/-! ## A098925.P12193268706669538246

`A208891(A091995(n+2))`
-/

namespace A098925.P12193268706669538246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208891 (A091995 (n + 2)).toNat

end

end A098925.P12193268706669538246

namespace A098925

/-- `A208891(A091995(n+2))` -/
def P12193268706669538246.Spec : Prop :=
  ∀ n, P12193268706669538246.a n = A098925 n

end A098925

/-! ## A098925.P6321185522871101316

`A108756(A091018(n))`
-/

namespace A098925.P6321185522871101316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 (A091018 n).toNat

end

end A098925.P6321185522871101316

namespace A098925

/-- `A108756(A091018(n))` -/
def P6321185522871101316.Spec : Prop :=
  ∀ n, P6321185522871101316.a n = A098925 n

end A098925

/-! ## A098925.P5152474126310345819

`A046854(round(n+1-(sqrt(n+1)-n)))`
-/

namespace A098925.P5152474126310345819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (SequenceMachineLib.roundAway ((n + 1 : ℝ) - (Real.sqrt (n + 1 : ℝ) - (n : ℝ)))).toNat

end

end A098925.P5152474126310345819

namespace A098925

/-- `A046854(round(n+1-(sqrt(n+1)-n)))` -/
def P5152474126310345819.Spec : Prop :=
  ∀ n, P5152474126310345819.a n = A098925 n

end A098925

/-! ## A098925.P6483683595501382149

`A168561(lt[0, A168561(n)])`
-/

namespace A098925.P6483683595501382149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A098925.P6483683595501382149

namespace A098925

/-- `A168561(lt[0, A168561(n)])` -/
def P6483683595501382149.Spec : Prop :=
  ∀ n, P6483683595501382149.a n = A098925 n

end A098925

/-! ## A098925.P9470287971306259797

`A026729(lt[0, A026729(n)])`
-/

namespace A098925.P9470287971306259797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A098925.P9470287971306259797

namespace A098925

/-- `A026729(lt[0, A026729(n)])` -/
def P9470287971306259797.Spec : Prop :=
  ∀ n, P9470287971306259797.a n = A098925 n

end A098925

/-! ## A098925.P2930126694844761334

`A206474(comp[n²]+n)`
-/

namespace A098925.P2930126694844761334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206474 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A098925.P2930126694844761334

namespace A098925

/-- `A206474(comp[n²]+n)` -/
def P2930126694844761334.Spec : Prop :=
  ∀ n, P2930126694844761334.a n = A098925 n

end A098925

/-! ## A098925.P5463536772667081296

`A284938(A274428(n+1))`
-/

namespace A098925.P5463536772667081296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (A274428 (n + 1)).toNat

end

end A098925.P5463536772667081296

namespace A098925

/-- `A284938(A274428(n+1))` -/
def P5463536772667081296.Spec : Prop :=
  ∀ n, P5463536772667081296.a n = A098925 n

end A098925

/-!
# A098928: Number of cubes that can be formed from the points of a cubical grid of n X n X n points.

The programs for A098928, there is no canonical definition to state claims against.
-/

/-! ## A098928.P14127613691799813351

`A275494(A011782(n))+A000537(n)`
-/

namespace A098928.P14127613691799813351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275494 (A011782 n).toNat + A000537 n

end

end A098928.P14127613691799813351

/-! ## A098928.P10847994038466481311

`A258651(A351503(n))+A000537(n)`
-/

namespace A098928.P10847994038466481311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A351503 n).toNat + A000537 n

end

end A098928.P10847994038466481311

/-!
# A098930: Numbers k such that 2*10^k + 5*R_k - 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A098930, there is no canonical definition to state claims against.
-/

/-! ## A098930.P4826555787282198625

`A101961(n+1)+1`
-/

namespace A098930.P4826555787282198625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101961 (n + 1) + 1

end

end A098930.P4826555787282198625

/-! ## A098930.P12914212264917827580

`A020725(A101961(n+1))`
-/

namespace A098930.P12914212264917827580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101961 (n + 1)).toNat

end

end A098930.P12914212264917827580

/-! ## A098930.P16233600015322632828

`abs(A131738(A101961(Δ[n²]-n)))`
-/

namespace A098930.P16233600015322632828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (A101961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat|

end

end A098930.P16233600015322632828

/-!
# A098931: a(0) = 1, a(n) = 1 + 2*3 + 4*5 + 6*7 + ... + (2n)*(2n+1) for n > 0.

The programs for A098931, the canonical program `A098931.P11203229354199299674` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098931 has offset 0).

The definition of A098931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098931.P11203229354199299674

`n*(4*n²+9*n+5)/3+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098931

/-- `n*(4*n²+9*n+5)/3+1` -/
def P11203229354199299674.Spec : Prop :=
  ∀ n, P11203229354199299674.a n = (A098931 n : ℚ)

end A098931

/-! ## A098931.P12609820779268265732

`∑[record[or(1, -n)²-n]]`
-/

namespace A098931.P12609820779268265732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098931.P12609820779268265732

namespace A098931

/-- `∑[record[or(1, -n)²-n]]` -/
def P12609820779268265732.Spec : Prop :=
  ∀ n, P12609820779268265732.a n = A098931 n

end A098931

/-! ## A098931.P14407340373580109264

`or(1, 2*∑[C(Δ[n²], 2)])`
-/

namespace A098931.P14407340373580109264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A098931.P14407340373580109264

namespace A098931

/-- `or(1, 2*∑[C(Δ[n²], 2)])` -/
def P14407340373580109264.Spec : Prop :=
  ∀ n, (P14407340373580109264.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P7567390691284159982

`xor(1, 2*∑[C(Δ[n²], 2)])`
-/

namespace A098931.P7567390691284159982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A098931.P7567390691284159982

namespace A098931

/-- `xor(1, 2*∑[C(Δ[n²], 2)])` -/
def P7567390691284159982.Spec : Prop :=
  ∀ n, (P7567390691284159982.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P4427249215013074591

`or(1, 2*∑[n*Δ[n²]])`
-/

namespace A098931.P4427249215013074591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A098931.P4427249215013074591

namespace A098931

/-- `or(1, 2*∑[n*Δ[n²]])` -/
def P4427249215013074591.Spec : Prop :=
  ∀ n, P4427249215013074591.a n = A098931 n

end A098931

/-! ## A098931.P12977884101497477706

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A098931.P12977884101497477706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 14] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098931.P12977884101497477706

namespace A098931

/-- `∑[∑[a(n-1)+8]]` -/
def P12977884101497477706.Spec : Prop :=
  ∀ n, (P12977884101497477706.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P867871111184789664

`∑[record[lcm(n+1, C(n+2, 2))]]`
-/

namespace A098931.P867871111184789664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (n + 2) 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098931.P867871111184789664

namespace A098931

/-- `∑[record[lcm(n+1, C(n+2, 2))]]` -/
def P867871111184789664.Spec : Prop :=
  ∀ n, (P867871111184789664.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P4464315929835760534

`∑[record[lcm(n-1, n^(n%2))]]`
-/

namespace A098931.P4464315929835760534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ (n % 2) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098931.P4464315929835760534

namespace A098931

/-- `∑[record[lcm(n-1, n^(n%2))]]` -/
def P4464315929835760534.Spec : Prop :=
  ∀ n, (P4464315929835760534.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P18158265073826882264

`abs(∑[record[or(1, n)²-n]]-n)`
-/

namespace A098931.P18158265073826882264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A098931.P18158265073826882264

namespace A098931

/-- `abs(∑[record[or(1, n)²-n]]-n)` -/
def P18158265073826882264.Spec : Prop :=
  ∀ n, P18158265073826882264.a n = A098931 n

end A098931

/-! ## A098931.P11383174385436629012

`∑[∑[ogf((1+3x+5x^2-x^3)/(1-2x+x^2))]]`
-/

namespace A098931.P11383174385436629012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098931.P11383174385436629012

namespace A098931

/-- `∑[∑[ogf((1+3x+5x^2-x^3)/(1-2x+x^2))]]` -/
def P11383174385436629012.Spec : Prop :=
  ∀ n, P11383174385436629012.a n = A098931 n

end A098931

/-! ## A098931.P3959565689331784599

`xor(1, ∑[2*n*(2*n+1)])`
-/

namespace A098931.P3959565689331784599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098931.P3959565689331784599

namespace A098931

/-- `xor(1, ∑[2*n*(2*n+1)])` -/
def P3959565689331784599.Spec : Prop :=
  ∀ n, (P3959565689331784599.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P5528993025511149073

`floor(a(n-1)+n*(4*n+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A098931.P5528993025511149073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * (4 * n + 2)

end

end A098931.P5528993025511149073

namespace A098931

/-- `floor(a(n-1)+n*(4*n+2))` -/
def P5528993025511149073.Spec : Prop :=
  ∀ n, (P5528993025511149073.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P9590378730364509260

`abs(2*n+a(n-1)+(2*n)²)` with `a(0)=1`
-/

namespace A098931.P9590378730364509260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + (2 * n) ^ 2)

end

end A098931.P9590378730364509260

namespace A098931

/-- `abs(2*n+a(n-1)+(2*n)²)` -/
def P9590378730364509260.Spec : Prop :=
  ∀ n, (P9590378730364509260.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P3542198707031646646

`ceil(2*n+a(n-1)+(2*n)²)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A098931.P3542198707031646646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + (2 * n) ^ 2)

end

end A098931.P3542198707031646646

namespace A098931

/-- `ceil(2*n+a(n-1)+(2*n)²)` -/
def P3542198707031646646.Spec : Prop :=
  ∀ n, (P3542198707031646646.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P14539116528462676308

`round(2*n+a(n-1)+(2*n)²)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A098931.P14539116528462676308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + (2 * n) ^ 2)

end

end A098931.P14539116528462676308

namespace A098931

/-- `round(2*n+a(n-1)+(2*n)²)` -/
def P14539116528462676308.Spec : Prop :=
  ∀ n, (P14539116528462676308.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P5565342763639676249

`abs(a(n-1)+(2*n+1)*2*n)` with `a(0)=1`
-/

namespace A098931.P5565342763639676249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * (2 * n)

end

end A098931.P5565342763639676249

namespace A098931

/-- `abs(a(n-1)+(2*n+1)*2*n)` -/
def P5565342763639676249.Spec : Prop :=
  ∀ n, (P5565342763639676249.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P9647563116719180947

`ceil(a(n-1)+(2*n+1)*2*n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A098931.P9647563116719180947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * (2 * n)

end

end A098931.P9647563116719180947

namespace A098931

/-- `ceil(a(n-1)+(2*n+1)*2*n)` -/
def P9647563116719180947.Spec : Prop :=
  ∀ n, (P9647563116719180947.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P17151667082173542822

`round(a(n-1)+(2*n+1)*2*n)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A098931.P17151667082173542822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * (2 * n)

end

end A098931.P17151667082173542822

namespace A098931

/-- `round(a(n-1)+(2*n+1)*2*n)` -/
def P17151667082173542822.Spec : Prop :=
  ∀ n, (P17151667082173542822.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P9979751854599019423

`∑[C(2, n+2)+(2*n+1)*2*n]`
-/

namespace A098931.P9979751854599019423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + (2 * n + 1) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098931.P9979751854599019423

namespace A098931

/-- `∑[C(2, n+2)+(2*n+1)*2*n]` -/
def P9979751854599019423.Spec : Prop :=
  ∀ n, (P9979751854599019423.a n : ℤ) = A098931 n

end A098931

/-! ## A098931.P12876437607322803412

`∑[floor(1/(n+1))+lcm(2*n+1, 2*n)]`
-/

namespace A098931.P12876437607322803412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ + (Nat.lcm (2 * n + 1) (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098931.P12876437607322803412

namespace A098931

/-- `∑[floor(1/(n+1))+lcm(2*n+1, 2*n)]` -/
def P12876437607322803412.Spec : Prop :=
  ∀ n, P12876437607322803412.a n = A098931 n

end A098931

/-!
# A098932: Numerators in the power series of a function f such that f(f(x)) = sin(x) where f(x) = Sum_{n>=1} a(n)/2^(n-1)*x^(2n-1)/(2n-1)!.

The programs for A098932, there is no canonical definition to state claims against.
-/

/-! ## A098932.P14400424373119694615

`A220113(n+1)/2^n`
-/

namespace A098932.P14400424373119694615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220113 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A098932.P14400424373119694615

/-! ## A098932.P8704840596660737689

`ceil(A220113(n+1)/A000079(n))`
-/

namespace A098932.P8704840596660737689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A220113 (n + 1) : ℚ) / (A000079 n : ℚ)⌉

end

end A098932.P8704840596660737689

/-! ## A098932.P15890591997863259809

`ceil(A220113(n+1)/A328679(n+1))`
-/

namespace A098932.P15890591997863259809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A220113 (n + 1) : ℚ) / (A328679 (n + 1) : ℚ)⌉

end

end A098932.P15890591997863259809

/-! ## A098932.P17528469910154732079

`gcd(A052137(n), A220113(n+1))*A048602(n)`
-/

namespace A098932.P17528469910154732079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052137 n) (A220113 (n + 1)) : ℤ) * A048602 n

end

end A098932.P17528469910154732079

/-! ## A098932.P931026301118691007

`A281779(A182105(n+1))+A220113(n+1)/A000079(n)`
-/

namespace A098932.P931026301118691007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281779 (A182105 (n + 1)).toNat : ℚ) + (A220113 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A098932.P931026301118691007

/-!
# A098933: Primes of the form p+14, where p is a prime.

The programs for A098933, there is no canonical definition to state claims against.
-/

/-! ## A098933.P17770389700036121217

`A087697(n+1)+7`
-/

namespace A098933.P17770389700036121217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087697 (n + 1) + 7

end

end A098933.P17770389700036121217

/-! ## A098933.P16472393058330977305

`A153417(n+1)+14`
-/

namespace A098933.P16472393058330977305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1) + 14

end

end A098933.P16472393058330977305

/-! ## A098933.P2180899156816726753

`A140446(2*(n+1))`
-/

namespace A098933.P2180899156816726753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140446 (2 * (n + 1))

end

end A098933.P2180899156816726753

/-! ## A098933.P4728480666003267371

`p?[p?[2*n+1]+14]`
-/

namespace A098933.P4728480666003267371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A098933.P4728480666003267371

/-! ## A098933.P8396580910244718341

`p?[A028815(n)+13]`
-/

namespace A098933.P8396580910244718341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098933.P8396580910244718341

/-! ## A098933.P17684724366372887005

`p?[A175221(n+1)+10]`
-/

namespace A098933.P17684724366372887005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098933.P17684724366372887005

/-! ## A098933.P3487284307478047935

`p?[A008864(n+1)+13]`
-/

namespace A098933.P3487284307478047935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098933.P3487284307478047935

/-! ## A098933.P9242584709064608589

`p?[A000040(n+1)+14]`
-/

namespace A098933.P9242584709064608589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098933.P9242584709064608589

/-! ## A098933.P13177750193255043553

`p?[A209259(n)+14]`
-/

namespace A098933.P13177750193255043553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098933.P13177750193255043553

/-! ## A098933.P10697916948660887652

`A020742(A088767(n+1))`
-/

namespace A098933.P10697916948660887652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A088767 (n + 1)).toNat

end

end A098933.P10697916948660887652

/-! ## A098933.P1693328432770533393

`A020719(A087697(n+1))`
-/

namespace A098933.P1693328432770533393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A087697 (n + 1)).toNat

end

end A098933.P1693328432770533393

/-! ## A098933.P12471403898030734346

`A224794(A153417(n+1))`
-/

namespace A098933.P12471403898030734346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224794 (A153417 (n + 1)).toNat

end

end A098933.P12471403898030734346

/-!
# A098935: a(n) = p^7 - p^5 - p^3 - p^2 where p is prime(n).

The programs for A098935, the canonical program `A098935.P1627606373687162864` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098935 has offset 1).

The definition of A098935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098935.P1627606373687162864

`A092759(n+1)-A135182(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098935

/-- `A092759(n+1)-A135182(n+1)` -/
def P1627606373687162864.Spec : Prop :=
  ∀ n, P1627606373687162864.a n = A098935 (n + 1)

theorem P1627606373687162864.correct : P1627606373687162864.Spec := by
  intro n
  simp only [A098935, Nat.add_sub_cancel]

end A098935

/-! ## A098935.P5762401621288478260

`A092759(n+1)-(A135178(n+1)+A050997(n+1))`
-/

namespace A098935.P5762401621288478260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) - (A135178 (n + 1) + A050997 (n + 1))

end

end A098935.P5762401621288478260

namespace A098935

/-- `A092759(n+1)-(A135178(n+1)+A050997(n+1))` -/
def P5762401621288478260.Spec : Prop :=
  ∀ n, P5762401621288478260.a n = A098935 (n + 1)

end A098935

/-! ## A098935.P716305439096488747

`(A138406(n+1)-A008864(n+1))*A001248(n+1)`
-/

namespace A098935.P716305439096488747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) - A008864 (n + 1)) * A001248 (n + 1)

end

end A098935.P716305439096488747

namespace A098935

/-- `(A138406(n+1)-A008864(n+1))*A001248(n+1)` -/
def P716305439096488747.Spec : Prop :=
  ∀ n, P716305439096488747.a n = A098935 (n + 1)

theorem P716305439096488747.correct : P716305439096488747.Spec := by
  intro n
  simp only [A098935, Nat.add_sub_cancel, A098935.P716305439096488747.a, A098935.P1627606373687162864.a, A001248, A001248.P16278241061688229202.a, A008864, A008864.P9177617808325052279.a, A092759, A092759.P10365930146465751826.a, A135182, A135182.P14277112270970235389.a, A138406, A138406.P10473857449717588869.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098935

/-! ## A098935.P11498955020730320116

`A001248(n+1)*A050997(n+1)-A135182(n+1)`
-/

namespace A098935.P11498955020730320116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A050997 (n + 1) - A135182 (n + 1)

end

end A098935.P11498955020730320116

namespace A098935

/-- `A001248(n+1)*A050997(n+1)-A135182(n+1)` -/
def P11498955020730320116.Spec : Prop :=
  ∀ n, P11498955020730320116.a n = A098935 (n + 1)

theorem P11498955020730320116.correct : P11498955020730320116.Spec := by
  intro n
  simp only [A098935, Nat.add_sub_cancel, A098935.P11498955020730320116.a, A098935.P1627606373687162864.a, A001248, A001248.P16278241061688229202.a, A050997, A050997.P5231147570234137425.a, A092759, A092759.P10365930146465751826.a, A135182, A135182.P14277112270970235389.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098935

/-! ## A098935.P4645055492644746975

`(A050997(n+1)-A181150(n+1))*A001248(n+1)`
-/

namespace A098935.P4645055492644746975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) - A181150 (n + 1)) * A001248 (n + 1)

end

end A098935.P4645055492644746975

namespace A098935

/-- `(A050997(n+1)-A181150(n+1))*A001248(n+1)` -/
def P4645055492644746975.Spec : Prop :=
  ∀ n, P4645055492644746975.a n = A098935 (n + 1)

theorem P4645055492644746975.correct : P4645055492644746975.Spec := by
  intro n
  simp only [A098935, Nat.add_sub_cancel, A098935.P4645055492644746975.a, A098935.P1627606373687162864.a, A001248, A001248.P16278241061688229202.a, A050997, A050997.P5231147570234137425.a, A092759, A092759.P10365930146465751826.a, A135182, A135182.P14277112270970235389.a, A181150, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098935

/-! ## A098935.P18079570855421554133

`A100484(n+1)*A138453(n+1)-A135178(n+1)`
-/

namespace A098935.P18079570855421554133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138453 (n + 1) - A135178 (n + 1)

end

end A098935.P18079570855421554133

namespace A098935

/-- `A100484(n+1)*A138453(n+1)-A135178(n+1)` -/
def P18079570855421554133.Spec : Prop :=
  ∀ n, P18079570855421554133.a n = A098935 (n + 1)

end A098935

/-!
# A098939: a(n) = (2^n - 1)^11 - 2.

The programs for A098939, the canonical program `A098939.P3973596728018751840` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098939 has offset 0).

The definition of A098939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)^11-2` (program `A098939.P3973596728018751840`, by `A098939.P3973596728018751840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098939.P3973596728018751840

`(2^n-1)^11-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098939

/-- `(2^n-1)^11-2` -/
def P3973596728018751840.Spec : Prop :=
  ∀ n, P3973596728018751840.a n = A098939 n

theorem P3973596728018751840.correct : P3973596728018751840.Spec := by
  intro n
  simp only [A098939]

end A098939

/-!
# A098940: a(n) = (2^n - 1)^7 - 2.

The programs for A098940, the canonical program `A098940.P5008818264351222965` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098940 has offset 0).

The definition of A098940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)^7-2` (program `A098940.P5008818264351222965`, by `A098940.P5008818264351222965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098940.P5008818264351222965

`(2^n-1)^7-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098940

/-- `(2^n-1)^7-2` -/
def P5008818264351222965.Spec : Prop :=
  ∀ n, P5008818264351222965.a n = A098940 n

theorem P5008818264351222965.correct : P5008818264351222965.Spec := by
  intro n
  simp only [A098940]

end A098940

/-! ## A098940.P8848488546928307458

`-(A024005(A000225(n))+1)`
-/

namespace A098940.P8848488546928307458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A024005 (A000225 n).toNat + 1)

end

end A098940.P8848488546928307458

namespace A098940

/-- `-(A024005(A000225(n))+1)` -/
def P8848488546928307458.Spec : Prop :=
  ∀ n, P8848488546928307458.a n = A098940 n

end A098940

/-! ## A098940.P9167687569129028290

`record[A001015(A153151(n))-2]`
-/

namespace A098940.P9167687569129028290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A153151 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098940.P9167687569129028290

namespace A098940

/-- `record[A001015(A153151(n))-2]` -/
def P9167687569129028290.Spec : Prop :=
  ∀ n, P9167687569129028290.a n = A098940 n

end A098940

/-! ## A098940.P10615441449153677054

`(A024005(A000225(n))+1)*A008683(A080359(n+1))`
-/

namespace A098940.P10615441449153677054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (A000225 n).toNat + 1) * A008683 (A080359 (n + 1)).toNat

end

end A098940.P10615441449153677054

namespace A098940

/-- `(A024005(A000225(n))+1)*A008683(A080359(n+1))` -/
def P10615441449153677054.Spec : Prop :=
  ∀ n, P10615441449153677054.a n = A098940 n

end A098940

/-! ## A098940.P14146474307087186299

`record[A001015(A153141(n))-2]`
-/

namespace A098940.P14146474307087186299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A153141 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098940.P14146474307087186299

namespace A098940

/-- `record[A001015(A153141(n))-2]` -/
def P14146474307087186299.Spec : Prop :=
  ∀ n, P14146474307087186299.a n = A098940 n

end A098940

/-!
# A098941: Numbers where 2 is the only even decimal digit.

The programs for A098941, there is no canonical definition to state claims against.
-/

/-! ## A098941.P6027507224654987652

`eq[2, A059905(A086066(n))]`
-/

namespace A098941.P6027507224654987652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098941.P6027507224654987652

/-! ## A098941.P9394639053488506845

`eq[2, A001613(A227362(n))]`
-/

namespace A098941.P9394639053488506845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098941.P9394639053488506845

/-! ## A098941.P13744939368413346195

`eq[2, A059906(2*A086066(n))]`
-/

namespace A098941.P13744939368413346195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098941.P13744939368413346195

/-! ## A098941.P12168820114555899007

`eq[A217096(n), A222211(A001613(n))]`
-/

namespace A098941.P12168820114555899007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098941.P12168820114555899007

/-! ## A098941.P2280947595629991760

`eq[A222211(A001613(n))², A055641(n)]`
-/

namespace A098941.P2280947595629991760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A001613 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098941.P2280947595629991760

/-!
# A098942: Numbers where 4 is the only even decimal digit.

The programs for A098942, there is no canonical definition to state claims against.
-/

/-! ## A098942.P15481607109816901819

`eq[4, A059905(A086066(n))]`
-/

namespace A098942.P15481607109816901819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098942.P15481607109816901819

/-! ## A098942.P10062226810414488494

`eq[4, A001613(A227362(n))]`
-/

namespace A098942.P10062226810414488494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098942.P10062226810414488494

/-! ## A098942.P10296042417970868917

`eq[4, A318702(A086066(n+1))]+1`
-/

namespace A098942.P10296042417970868917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A086066 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098942.P10296042417970868917

/-! ## A098942.P14761236257821580775

`eq[A040005(2*n), A318702(A086066(n))]`
-/

namespace A098942.P14761236257821580775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098942.P14761236257821580775

/-! ## A098942.P14384815991696317360

`eq[A217096(n), A222217(2*A001613(n))]`
-/

namespace A098942.P14384815991696317360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (2 * A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098942.P14384815991696317360

/-!
# A098943: Numbers where 6 is the only even decimal digit.

The programs for A098943, there is no canonical definition to state claims against.
-/

/-! ## A098943.P5733751704062120440

`eq[6, A001613(A227362(n))]`
-/

namespace A098943.P5733751704062120440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098943.P5733751704062120440

/-! ## A098943.P225239095431448320

`eq[8, A059905(A086066(n))]`
-/

namespace A098943.P225239095431448320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098943.P225239095431448320

/-! ## A098943.P3319716010656250039

`eq[A067898(n), A222215(A001613(n))]`
-/

namespace A098943.P3319716010656250039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098943.P3319716010656250039

/-! ## A098943.P17545867990033839640

`eq[A217096(n), A222215(A001613(n))]`
-/

namespace A098943.P17545867990033839640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098943.P17545867990033839640

/-! ## A098943.P14849099116638545927

`lt[A222215(A001613(n)), A168046(n)]`
-/

namespace A098943.P14849099116638545927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A001613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098943.P14849099116638545927

/-! ## A098943.P2318108208508659885

`lt[n*A001613(A222215(n)), A001613(n)]`
-/

namespace A098943.P2318108208508659885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001613 (A222215 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098943.P2318108208508659885

/-!
# A098944: Numbers where 8 is the only even decimal digit.

The programs for A098944, there is no canonical definition to state claims against.
-/

/-! ## A098944.P5269099257894961228

`eq[8, A001613(A227362(n))]`
-/

namespace A098944.P5269099257894961228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098944.P5269099257894961228

/-! ## A098944.P9036830820130395635

`eq[16, A059905(A086066(n))]`
-/

namespace A098944.P9036830820130395635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098944.P9036830820130395635

/-! ## A098944.P5885431056325358464

`eq[16, A318702(A086066(abs(1-n)+1))]`
-/

namespace A098944.P5885431056325358464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A086066 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098944.P5885431056325358464

/-! ## A098944.P17590899599931304348

`eq[A067898(n), A222217(A001613(n))]`
-/

namespace A098944.P17590899599931304348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098944.P17590899599931304348

/-! ## A098944.P9476971614169177380

`eq[A217096(n), A222217(A001613(n))]`
-/

namespace A098944.P9476971614169177380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098944.P9476971614169177380

/-!
# A098945: Numbers where 1 is the only odd decimal digit.

The programs for A098945, there is no canonical definition to state claims against.
-/

/-! ## A098945.P4875606342363404969

`record[A007957(n+1)/A007954(A225985(n+1))]`
-/

namespace A098945.P4875606342363404969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007957 (n + 1) : ℚ) / (A007954 (A225985 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098945.P4875606342363404969

/-! ## A098945.P13902665241428752418

`eq[1, A059906(A086066(n))]`
-/

namespace A098945.P13902665241428752418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098945.P13902665241428752418

/-! ## A098945.P7511785666968210728

`eq[2, A059905(2*A086066(n))]`
-/

namespace A098945.P7511785666968210728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (2 * A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098945.P7511785666968210728

/-! ## A098945.P15831699354668374949

`eq[A268643(n), A277543(A171797(n))]`
-/

namespace A098945.P15831699354668374949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098945.P15831699354668374949

/-! ## A098945.P715458740660053626

`eq[A268643(n), A277543(A308003(n))]`
-/

namespace A098945.P715458740660053626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A308003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098945.P715458740660053626

/-! ## A098945.P6658032411135137174

`record[A235049(A098941(n+1))]`
-/

namespace A098945.P6658032411135137174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A098941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098945.P6658032411135137174

/-! ## A098945.P1269316574231021259

`eq[2, A344908(A113581(n))]`
-/

namespace A098945.P1269316574231021259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098945.P1269316574231021259

/-!
# A098946: Numbers where 3 is the only odd decimal digit.

The programs for A098946, there is no canonical definition to state claims against.
-/

/-! ## A098946.P8362582700153723021

`eq[2, A059906(A086066(n))]`
-/

namespace A098946.P8362582700153723021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098946.P8362582700153723021

/-! ## A098946.P11063943921419151297

`eq[2, A059905(2*A086066(n))-2]`
-/

namespace A098946.P11063943921419151297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (2 * A086066 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098946.P11063943921419151297

/-! ## A098946.P10886545148492494981

`lt[A004179(n), A001613(A222234(n))]`
-/

namespace A098946.P10886545148492494981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098946.P10886545148492494981

/-! ## A098946.P5412951238613197914

`lt[A004183(n), A001613(A222238(n))]`
-/

namespace A098946.P5412951238613197914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098946.P5412951238613197914

/-! ## A098946.P13048438863605100727

`eq[5, A344908(A113581(n))]`
-/

namespace A098946.P13048438863605100727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098946.P13048438863605100727

/-!
# A098947: Numbers where 5 is the only odd decimal digit.

The programs for A098947, there is no canonical definition to state claims against.
-/

/-! ## A098947.P9758338564879063725

`eq[4, A059906(A086066(n))]`
-/

namespace A098947.P9758338564879063725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098947.P9758338564879063725

/-! ## A098947.P8715348968452687145

`record[A235049(A098943(n+1))]`
-/

namespace A098947.P8715348968452687145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A098943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098947.P8715348968452687145

/-! ## A098947.P6086565884964283503

`lt[n*A045841(A004180(n)), A045841(n)]`
-/

namespace A098947.P6086565884964283503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045841 (A004180 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098947.P6086565884964283503

/-! ## A098947.P1619925765718181054

`lt[n*A103181(A004180(n)), A103181(n)]`
-/

namespace A098947.P1619925765718181054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103181 (A004180 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098947.P1619925765718181054

/-! ## A098947.P4006775608823390243

`eq[11, A344908(A113581(n))]`
-/

namespace A098947.P4006775608823390243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098947.P4006775608823390243

/-!
# A098948: Numbers where 7 is the only odd decimal digit.

The programs for A098948, there is no canonical definition to state claims against.
-/

/-! ## A098948.P16901146679769492670

`eq[8, A059906(A086066(n))]`
-/

namespace A098948.P16901146679769492670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098948.P16901146679769492670

/-! ## A098948.P14075693857714566045

`eq[16, A059905(2*A086066(n))]`
-/

namespace A098948.P14075693857714566045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (2 * A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098948.P14075693857714566045

/-! ## A098948.P10067941199499228380

`lt[A004183(n), A001613(A222252(n))]`
-/

namespace A098948.P10067941199499228380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098948.P10067941199499228380

/-! ## A098948.P7007448182528437333

`eq[17, A344908(A113581(n))]`
-/

namespace A098948.P7007448182528437333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098948.P7007448182528437333

/-! ## A098948.P10845354850178435494

`lt[A330612(n+1), A001613(A222252(n))]`
-/

namespace A098948.P10845354850178435494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098948.P10845354850178435494

/-!
# A098949: Numbers where 9 is the only odd decimal digit.

The programs for A098949, there is no canonical definition to state claims against.
-/

/-! ## A098949.P1080153698889946742

`A276138(comp[A037465(n)]+1)`
-/

namespace A098949.P1080153698889946742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A098949.P1080153698889946742

/-! ## A098949.P7777495771358956867

`A276138(A333656(n+1)+1)`
-/

namespace A098949.P7777495771358956867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (A333656 (n + 1) + 1).toNat

end

end A098949.P7777495771358956867

/-! ## A098949.P3237307342437546389

`A276138(eq[1, A165051(6*n)%6]+1)`
-/

namespace A098949.P3237307342437546389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165051 (6 * n)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098949.P3237307342437546389

/-! ## A098949.P18296023458323428356

`∩[A011539(n+1), A276138(n+1)]`
-/

namespace A098949.P18296023458323428356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098949.P18296023458323428356

/-! ## A098949.P17813552212113636063

`eq[16, A059906(A086066(n))]`
-/

namespace A098949.P17813552212113636063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098949.P17813552212113636063

/-! ## A098949.P18196734208218764553

`∩[A007957(n+1), A276138(n+1)]`
-/

namespace A098949.P18196734208218764553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098949.P18196734208218764553

/-! ## A098949.P4561854644157957449

`∩[A169968(n+1), A276138(n+1)]`
-/

namespace A098949.P4561854644157957449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098949.P4561854644157957449

/-! ## A098949.P12597869569413056991

`∩[A276138(n+1), A383247(n+1)]`
-/

namespace A098949.P12597869569413056991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098949.P12597869569413056991

/-! ## A098949.P10422386172735523321

`∩[A276138(n+1), A383500(n+1)]`
-/

namespace A098949.P10422386172735523321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098949.P10422386172735523321

/-! ## A098949.P2982341915434521476

`eq[A102683(n), A277543(A171797(n))]`
-/

namespace A098949.P2982341915434521476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098949.P2982341915434521476

/-! ## A098949.P17222474194405063864

`eq[A102683(n), A277543(A308003(n))]`
-/

namespace A098949.P17222474194405063864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A308003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098949.P17222474194405063864

/-!
# A098950: Array read by antidiagonals: minimizing k-ordered sequences of maximum height Huffman tree.

The programs for A098950, there is no canonical definition to state claims against.
-/

/-! ## A098950.P14717559561264827224

`A189667(A169616(n+1)%A087275(3*n+4))`
-/

namespace A098950.P14717559561264827224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (Int.tmod (A169616 (n + 1)) (A087275 (3 * n + 4))).toNat

end

end A098950.P14717559561264827224

/-! ## A098950.P8579507490404998988

`A189667(A169616(n+1))%(A059496(n+1)%A128941(n))`
-/

namespace A098950.P8579507490404998988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189667 (A169616 (n + 1)).toNat) (Int.tmod (A059496 (n + 1)) (A128941 n))

end

end A098950.P8579507490404998988

/-! ## A098950.P7973532117538941839

`A368276(A239144(n))`
-/

namespace A098950.P7973532117538941839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368276 (A239144 n).toNat

end

end A098950.P7973532117538941839

/-! ## A098950.P3616113486773595050

`A329362(A257565(n+1))`
-/

namespace A098950.P3616113486773595050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A257565 (n + 1)).toNat

end

end A098950.P3616113486773595050

/-! ## A098950.P2858686514532934121

`A329231(A104246(n+1)*A119502(n))`
-/

namespace A098950.P2858686514532934121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329231 (A104246 (n + 1) * A119502 n).toNat

end

end A098950.P2858686514532934121

/-!
# A098952: Integers divisible by their number of digits.

The programs for A098952, the canonical program `A098952.P494826860385429382` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098952 has offset 1).

The definition of A098952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098952.P494826860385429382

`eq[n, lcm(n, A055642(n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098952

/-- `eq[n, lcm(n, A055642(n))]` -/
def P494826860385429382.Spec : Prop :=
  ∀ n, (P494826860385429382.a n : ℤ) = A098952 (n + 1)

theorem P494826860385429382.correct : P494826860385429382.Spec := by
  intro n
  simp only [A098952, Nat.add_sub_cancel]

end A098952

/-! ## A098952.P17852747585408194274

`eq[n%A055642(n), A060277(A050603(n))]`
-/

namespace A098952.P17852747585408194274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A055642 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060277 (A050603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098952.P17852747585408194274

namespace A098952

/-- `eq[n%A055642(n), A060277(A050603(n))]` -/
def P17852747585408194274.Spec : Prop :=
  ∀ n, (P17852747585408194274.a n : ℤ) = A098952 (n + 1)

end A098952

/-! ## A098952.P12418443548841095564

`eq[n, lcm(A004218(n+1), A028310(n))]`
-/

namespace A098952.P12418443548841095564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004218 (n + 1)) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098952.P12418443548841095564

namespace A098952

/-- `eq[n, lcm(A004218(n+1), A028310(n))]` -/
def P12418443548841095564.Spec : Prop :=
  ∀ n, (P12418443548841095564.a n : ℤ) = A098952 (n + 1)

end A098952

/-! ## A098952.P5633737589389464236

`eq[0, A160652(n)%A055642(n)]`
-/

namespace A098952.P5633737589389464236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160652 n) (A055642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098952.P5633737589389464236

namespace A098952

/-- `eq[0, A160652(n)%A055642(n)]` -/
def P5633737589389464236.Spec : Prop :=
  ∀ n, (P5633737589389464236.a n : ℤ) = A098952 (n + 1)

end A098952

/-!
# A098953: Slowest increasing sequence where each number is such that at least one pair of adjacent digits are consecutive, the first of the pair being the smaller.

The programs for A098953, there is no canonical definition to state claims against.
-/

/-! ## A098953.P261652947668794149

`A333614(A043317(n+2))+Δ[A029955(n+1)]`
-/

namespace A098953.P261652947668794149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333614 (A043317 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A098953.P261652947668794149

/-!
# A098954: Slowest increasing sequence where each number is such that at least one pair of adjacent digits are consecutive, the second one being the smallest.

The programs for A098954, there is no canonical definition to state claims against.
-/

/-! ## A098954.P3790828854678265001

`eq[9, A045910(A214950(A193581(n)))]`
-/

namespace A098954.P3790828854678265001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045910 (A214950 (A193581 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098954.P3790828854678265001

/-! ## A098954.P12326043950148850217

`eq[A014963(A062513(n+1)), A037860(n+1)]+1`
-/

namespace A098954.P12326043950148850217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062513 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A098954.P12326043950148850217

/-! ## A098954.P12501244657597518123

`eq[A037860(n+1), A270096(A191017(3*(n+1)))]+1`
-/

namespace A098954.P12501244657597518123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (A191017 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A098954.P12501244657597518123

/-! ## A098954.P4428239218520163859

`eq[1, A102781(A037860(n+1)^A040743(n)+1)]+1`
-/

namespace A098954.P4428239218520163859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (SequenceMachineLib.roundAway ((A037860 (n + 1) : ℚ) ^ (A040743 n : ℤ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098954.P4428239218520163859

/-!
# A098955: Numbers with property that the last digit is the length of the number (written in base 10).

The programs for A098955, the canonical program `A098955.P14080805560172354874` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098955 has offset 1).

The definition of A098955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098955.P14080805560172354874

`10*n+A004218(n+1)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098955

/-- `10*n+A004218(n+1)+1` -/
def P14080805560172354874.Spec : Prop :=
  ∀ n, P14080805560172354874.a n = A098955 (n + 1)

theorem P14080805560172354874.correct : P14080805560172354874.Spec := by
  intro n
  simp only [A098955, Nat.add_sub_cancel]

end A098955

/-!
# A098956: Numbers with property that the absolute difference between the last two digits of n is the length of n.

The programs for A098956, there is no canonical definition to state claims against.
-/

/-! ## A098956.P17268142188436289278

`eq[1, A228822(A347689(n))]`
-/

namespace A098956.P17268142188436289278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228822 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098956.P17268142188436289278

/-! ## A098956.P87418760413574661

`eq[A000030(A347689(n)), A055642(n)]`
-/

namespace A098956.P87418760413574661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098956.P87418760413574661

/-! ## A098956.P14291480093208247065

`eq[A000030(A347689(n)), A262190(n)]`
-/

namespace A098956.P14291480093208247065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098956.P14291480093208247065

/-! ## A098956.P17698511190055434659

`eq[A000030(A347689(n)), A348674(n)]`
-/

namespace A098956.P17698511190055434659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098956.P17698511190055434659

/-! ## A098956.P9035759963761569592

`eq[A054055(A347689(n)), A055642(n+2)]`
-/

namespace A098956.P9035759963761569592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098956.P9035759963761569592

/-!
# A098957: Decimal value of the reverse binary expansion of the prime numbers.

The programs for A098957, the canonical program `A098957.P4716822074248762999` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098957 has offset 1).

The definition of A098957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098957.P4716822074248762999

`A030101(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098957

/-- `A030101(A000040(n+1))` -/
def P4716822074248762999.Spec : Prop :=
  ∀ n, P4716822074248762999.a n = A098957 (n + 1)

theorem P4716822074248762999.correct : P4716822074248762999.Spec := by
  intro n
  simp only [A098957, Nat.add_sub_cancel]

end A098957

/-! ## A098957.P18259463971338548805

`A000040(n+1)-A265326(n+1)`
-/

namespace A098957.P18259463971338548805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A265326 (n + 1)

end

end A098957.P18259463971338548805

namespace A098957

/-- `A000040(n+1)-A265326(n+1)` -/
def P18259463971338548805.Spec : Prop :=
  ∀ n, P18259463971338548805.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P15594783132028191923

`A061227(n)-(A265326(n+1)+A004087(n+1))`
-/

namespace A098957.P15594783132028191923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061227 n - (A265326 (n + 1) + A004087 (n + 1))

end

end A098957.P15594783132028191923

namespace A098957

/-- `A061227(n)-(A265326(n+1)+A004087(n+1))` -/
def P15594783132028191923.Spec : Prop :=
  ∀ n, P15594783132028191923.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P4402878023487074692

`A004087(n+1)+A068396(n+1)-A265326(n+1)`
-/

namespace A098957.P4402878023487074692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + (A068396 (n + 1) - A265326 (n + 1))

end

end A098957.P4402878023487074692

namespace A098957

/-- `A004087(n+1)+A068396(n+1)-A265326(n+1)` -/
def P4402878023487074692.Spec : Prop :=
  ∀ n, P4402878023487074692.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P14790579387316513200

`A008578(n+2)-A265326(n+1)`
-/

namespace A098957.P14790579387316513200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A265326 (n + 1)

end

end A098957.P14790579387316513200

namespace A098957

/-- `A008578(n+2)-A265326(n+1)` -/
def P14790579387316513200.Spec : Prop :=
  ∀ n, P14790579387316513200.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P12058648732924225371

`A145341(A111333(n+1))`
-/

namespace A098957.P12058648732924225371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A111333 (n + 1)).toNat

end

end A098957.P12058648732924225371

namespace A098957

/-- `A145341(A111333(n+1))` -/
def P12058648732924225371.Spec : Prop :=
  ∀ n, P12058648732924225371.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P13111895637238042295

`A280995(A338524(n+1))`
-/

namespace A098957.P13111895637238042295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (A338524 (n + 1)).toNat

end

end A098957.P13111895637238042295

namespace A098957

/-- `A280995(A338524(n+1))` -/
def P13111895637238042295.Spec : Prop :=
  ∀ n, P13111895637238042295.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P1393983593116821002

`A162742(record[A006530(n+2)])`
-/

namespace A098957.P1393983593116821002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098957.P1393983593116821002

namespace A098957

/-- `A162742(record[A006530(n+2)])` -/
def P1393983593116821002.Spec : Prop :=
  ∀ n, P1393983593116821002.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P10892383280403248885

`A162742(record[A020639(n+2)])`
-/

namespace A098957.P10892383280403248885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098957.P10892383280403248885

namespace A098957

/-- `A162742(record[A020639(n+2)])` -/
def P10892383280403248885.Spec : Prop :=
  ∀ n, P10892383280403248885.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P11736128784890513707

`A057889(record[A006530(2*n+1)])`
-/

namespace A098957.P11736128784890513707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098957.P11736128784890513707

namespace A098957

/-- `A057889(record[A006530(2*n+1)])` -/
def P11736128784890513707.Spec : Prop :=
  ∀ n, P11736128784890513707.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P5323554215121452335

`A057889(record[A020639(2*n+1)])`
-/

namespace A098957.P5323554215121452335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098957.P5323554215121452335

namespace A098957

/-- `A057889(record[A020639(2*n+1)])` -/
def P5323554215121452335.Spec : Prop :=
  ∀ n, P5323554215121452335.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P3262096485533229584

`A182986(n+2)-A055945(A182986(n+2))`
-/

namespace A098957.P3262096485533229584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A055945 (A182986 (n + 2)).toNat

end

end A098957.P3262096485533229584

namespace A098957

/-- `A182986(n+2)-A055945(A182986(n+2))` -/
def P3262096485533229584.Spec : Prop :=
  ∀ n, P3262096485533229584.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P1991222386604441251

`A030101(A006005(n+1))`
-/

namespace A098957.P1991222386604441251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A006005 (n + 1)).toNat

end

end A098957.P1991222386604441251

namespace A098957

/-- `A030101(A006005(n+1))` -/
def P1991222386604441251.Spec : Prop :=
  ∀ n, P1991222386604441251.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P13141199733745283746

`A081431(A004087(n+1))`
-/

namespace A098957.P13141199733745283746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 (A004087 (n + 1)).toNat

end

end A098957.P13141199733745283746

namespace A098957

/-- `A081431(A004087(n+1))` -/
def P13141199733745283746.Spec : Prop :=
  ∀ n, P13141199733745283746.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P8555093541799935714

`A030101(A008578(n+2))`
-/

namespace A098957.P8555093541799935714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A008578 (n + 2)).toNat

end

end A098957.P8555093541799935714

namespace A098957

/-- `A030101(A008578(n+2))` -/
def P8555093541799935714.Spec : Prop :=
  ∀ n, P8555093541799935714.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P10336954306160576382

`A030101(eq[1, A032741(n)])`
-/

namespace A098957.P10336954306160576382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098957.P10336954306160576382

namespace A098957

/-- `A030101(eq[1, A032741(n)])` -/
def P10336954306160576382.Spec : Prop :=
  ∀ n, P10336954306160576382.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P7172686123772914649

`A030101(lt[A007920(n), 1])`
-/

namespace A098957.P7172686123772914649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A098957.P7172686123772914649

namespace A098957

/-- `A030101(lt[A007920(n), 1])` -/
def P7172686123772914649.Spec : Prop :=
  ∀ n, P7172686123772914649.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P11908209562395692820

`A030101(record[A006530(n+2)])`
-/

namespace A098957.P11908209562395692820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098957.P11908209562395692820

namespace A098957

/-- `A030101(record[A006530(n+2)])` -/
def P11908209562395692820.Spec : Prop :=
  ∀ n, P11908209562395692820.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P9069691258821671942

`A030101(record[A020639(n+2)])`
-/

namespace A098957.P9069691258821671942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098957.P9069691258821671942

namespace A098957

/-- `A030101(record[A020639(n+2)])` -/
def P9069691258821671942.Spec : Prop :=
  ∀ n, P9069691258821671942.a n = A098957 (n + 1)

end A098957

/-! ## A098957.P12293818077656976264

`A162742(2*A000040(n+1))`
-/

namespace A098957.P12293818077656976264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (2 * A000040 (n + 1)).toNat

end

end A098957.P12293818077656976264

namespace A098957

/-- `A162742(2*A000040(n+1))` -/
def P12293818077656976264.Spec : Prop :=
  ∀ n, P12293818077656976264.a n = A098957 (n + 1)

end A098957

/-!
# A098958: Sum of the first 10^n-th decimal digits of Pi.

The programs for A098958, there is no canonical definition to state claims against.
-/

/-! ## A098958.P8726032098916960611

`A039918(10^n)`
-/

namespace A098958.P8726032098916960611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039918 (10 ^ n)

end

end A098958.P8726032098916960611

/-!
# A098959: Numbers k such that 2*10^k + 6*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A098959, there is no canonical definition to state claims against.
-/

/-! ## A098959.P462088921928678483

`A101964(n+1)+1`
-/

namespace A098959.P462088921928678483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101964 (n + 1) + 1

end

end A098959.P462088921928678483

/-!
# A098960: Numbers k such that 2*10^k + 7*R_k - 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A098960, there is no canonical definition to state claims against.
-/

/-! ## A098960.P9335093943491955164

`A101966(n+1)+1`
-/

namespace A098960.P9335093943491955164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101966 (n + 1) + 1

end

end A098960.P9335093943491955164

/-! ## A098960.P4319079600113913010

`A020725(A101966(n+1))`
-/

namespace A098960.P4319079600113913010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101966 (n + 1)).toNat

end

end A098960.P4319079600113913010

/-!
# A098961: Sums of two squares and divisible by 13.

The programs for A098961, the canonical program `A098961.P11221875119800653851` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098961 has offset 1).

The definition of A098961 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098961.P11221875119800653851

`13*A001481(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098961

/-- `13*A001481(n+2)` -/
def P11221875119800653851.Spec : Prop :=
  ∀ n, P11221875119800653851.a n = A098961 (n + 1)

theorem P11221875119800653851.correct : P11221875119800653851.Spec := by
  intro n
  simp only [A098961, Nat.add_sub_cancel]

end A098961

/-! ## A098961.P6598247959126427063

`∑[13*A256435(n+1)]`
-/

namespace A098961.P6598247959126427063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A256435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098961.P6598247959126427063

namespace A098961

/-- `∑[13*A256435(n+1)]` -/
def P6598247959126427063.Spec : Prop :=
  ∀ n, P6598247959126427063.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P10770689645731252249

`Δ[13*A173256(n+1)]`
-/

namespace A098961.P10770689645731252249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A173256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098961.P10770689645731252249

namespace A098961

/-- `Δ[13*A173256(n+1)]` -/
def P10770689645731252249.Spec : Prop :=
  ∀ n, P10770689645731252249.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P9252472662029797969

`13*(A166687(n+2)-1)`
-/

namespace A098961.P9252472662029797969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (A166687 (n + 2) - 1)

end

end A098961.P9252472662029797969

namespace A098961

/-- `13*(A166687(n+2)-1)` -/
def P9252472662029797969.Spec : Prop :=
  ∀ n, P9252472662029797969.a n = A098961 (n + 1)

theorem P9252472662029797969.correct : P9252472662029797969.Spec := by
  intro n
  simp only [A098961, Nat.add_sub_cancel, A098961.P9252472662029797969.a, A098961.P11221875119800653851.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A166687, A166687.P18219030986989704232.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, A069011, A069011.P12730965949212328677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098961

/-! ## A098961.P7566788201650694726

`13*lt[1, A004018(n)]`
-/

namespace A098961.P7566788201650694726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A098961.P7566788201650694726

namespace A098961

/-- `13*lt[1, A004018(n)]` -/
def P7566788201650694726.Spec : Prop :=
  ∀ n, (P7566788201650694726.a n : ℤ) = A098961 (n + 1)

end A098961

/-! ## A098961.P12943645582518800558

`A008595(A001481(n+2))`
-/

namespace A098961.P12943645582518800558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A001481 (n + 2)).toNat

end

end A098961.P12943645582518800558

namespace A098961

/-- `A008595(A001481(n+2))` -/
def P12943645582518800558.Spec : Prop :=
  ∀ n, P12943645582518800558.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P10048974160475920758

`filter[A008595(n+1), A353814(#)]`
-/

namespace A098961.P10048974160475920758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098961.P10048974160475920758

namespace A098961

/-- `filter[A008595(n+1), A353814(#)]` -/
def P10048974160475920758.Spec : Prop :=
  ∀ n, P10048974160475920758.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P16086845340450883792

`filter[A008595(n+1), A229062(#)]`
-/

namespace A098961.P16086845340450883792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A098961.P16086845340450883792

namespace A098961

/-- `filter[A008595(n+1), A229062(#)]` -/
def P16086845340450883792.Spec : Prop :=
  ∀ n, P16086845340450883792.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P13740618163184706187

`filter[A166545(2*n+1), A229062(#)]`
-/

namespace A098961.P13740618163184706187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A098961.P13740618163184706187

namespace A098961

/-- `filter[A166545(2*n+1), A229062(#)]` -/
def P13740618163184706187.Spec : Prop :=
  ∀ n, P13740618163184706187.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P10835345927111196180

`filter[A176593(2*(n+1)), A229062(#)]`
-/

namespace A098961.P10835345927111196180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176593 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A098961.P10835345927111196180

namespace A098961

/-- `filter[A176593(2*(n+1)), A229062(#)]` -/
def P10835345927111196180.Spec : Prop :=
  ∀ n, P10835345927111196180.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P11899609800489307114

`filter[A258589(2*(n+1)), A229062(#)]`
-/

namespace A098961.P11899609800489307114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258589 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A098961.P11899609800489307114

namespace A098961

/-- `filter[A258589(2*(n+1)), A229062(#)]` -/
def P11899609800489307114.Spec : Prop :=
  ∀ n, P11899609800489307114.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P2013280587351095380

`filter[A166545(2*n+1), A353814(#)]`
-/

namespace A098961.P2013280587351095380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098961.P2013280587351095380

namespace A098961

/-- `filter[A166545(2*n+1), A353814(#)]` -/
def P2013280587351095380.Spec : Prop :=
  ∀ n, P2013280587351095380.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P17869898926470368670

`filter[A176593(2*(n+1)), A353814(#)]`
-/

namespace A098961.P17869898926470368670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176593 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098961.P17869898926470368670

namespace A098961

/-- `filter[A176593(2*(n+1)), A353814(#)]` -/
def P17869898926470368670.Spec : Prop :=
  ∀ n, P17869898926470368670.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P13586010603527133073

`filter[A258589(2*(n+1)), A353814(#)]`
-/

namespace A098961.P13586010603527133073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258589 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098961.P13586010603527133073

namespace A098961

/-- `filter[A258589(2*(n+1)), A353814(#)]` -/
def P13586010603527133073.Spec : Prop :=
  ∀ n, P13586010603527133073.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P1636150234133805748

`A112653(A128106(n+2))`
-/

namespace A098961.P1636150234133805748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A128106 (n + 2)).toNat

end

end A098961.P1636150234133805748

namespace A098961

/-- `A112653(A128106(n+2))` -/
def P1636150234133805748.Spec : Prop :=
  ∀ n, P1636150234133805748.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P12364025265118234723

`filter[A312926(3*n), A353814(#)]`
-/

namespace A098961.P12364025265118234723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098961.P12364025265118234723

namespace A098961

/-- `filter[A312926(3*n), A353814(#)]` -/
def P12364025265118234723.Spec : Prop :=
  ∀ n, P12364025265118234723.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P3884684262709395431

`filter[A312938(3*n), A353814(#)]`
-/

namespace A098961.P3884684262709395431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312938 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098961.P3884684262709395431

namespace A098961

/-- `filter[A312938(3*n), A353814(#)]` -/
def P3884684262709395431.Spec : Prop :=
  ∀ n, P3884684262709395431.a n = A098961 (n + 1)

end A098961

/-! ## A098961.P15573844125924938406

`∩[A004431(n+1), A008595(n)]`
-/

namespace A098961.P15573844125924938406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098961.P15573844125924938406

namespace A098961

/-- `∩[A004431(n+1), A008595(n)]` -/
def P15573844125924938406.Spec : Prop :=
  ∀ n, (P15573844125924938406.a n : ℤ) = A098961 (n + 1)

end A098961

/-! ## A098961.P6512419279635745417

`∩[A000404(n+1), A008595(n)]`
-/

namespace A098961.P6512419279635745417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098961.P6512419279635745417

namespace A098961

/-- `∩[A000404(n+1), A008595(n)]` -/
def P6512419279635745417.Spec : Prop :=
  ∀ n, (P6512419279635745417.a n : ℤ) = A098961 (n + 1)

end A098961

/-! ## A098961.P12828905360009017640

`∩[A001983(n+1), A008595(n)]`
-/

namespace A098961.P12828905360009017640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098961.P12828905360009017640

namespace A098961

/-- `∩[A001983(n+1), A008595(n)]` -/
def P12828905360009017640.Spec : Prop :=
  ∀ n, (P12828905360009017640.a n : ℤ) = A098961 (n + 1)

end A098961

/-!
# A098962: Smallest sequence such that over all terms each prime p occurs exactly p times as prime factor; a(1)=1.

The programs for A098962, there is no canonical definition to state claims against.
-/

/-! ## A098962.P2969325364288568572

`∩[A081306(n+1), A382913(n+1)]`
-/

namespace A098962.P2969325364288568572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098962.P2969325364288568572

/-! ## A098962.P3563260657376537892

`∩[A382913(n+1), A395790(n+1)]`
-/

namespace A098962.P3563260657376537892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098962.P3563260657376537892

/-! ## A098962.P9385430360844707809

`∩[A387177(n+1), A395790(n+1)]`
-/

namespace A098962.P9385430360844707809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098962.P9385430360844707809

/-! ## A098962.P11256507156865237830

`lt[A293936(A078898(n)), A001222(n+5)]`
-/

namespace A098962.P11256507156865237830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293936 (A078898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098962.P11256507156865237830

/-! ## A098962.P1023931715159809250

`lt[A008587(A116900(n)), A115384(n)]`
-/

namespace A098962.P1023931715159809250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A116900 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098962.P1023931715159809250

/-!
# A098964: Number of elements in the free semigroup on 2 generators x, y which can be constructed from x and y using at most n multiplications.

The programs for A098964, there is no canonical definition to state claims against.
-/

/-! ## A098964.P16204497549746283394

`A023444(4*A006116(n))`
-/

namespace A098964.P16204497549746283394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (4 * A006116 n).toNat

end

end A098964.P16204497549746283394

/-!
# A098965: Number of integer partitions of n into distinct parts > 1 with a part dividing all the other parts.

The programs for A098965, there is no canonical definition to state claims against.
-/

/-! ## A098965.P4156821727908008247

`∑{d}[n+1, A096765(#%(n+1))]`
-/

namespace A098965.P4156821727908008247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096765 (d % (n + 1))

end

end A098965.P4156821727908008247

/-! ## A098965.P17801434313644539397

`A097986(n+1)-A025147(n)`
-/

namespace A098965.P17801434313644539397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097986 (n + 1) - A025147 n

end

end A098965.P17801434313644539397

/-! ## A098965.P7848972371968971155

`∑{d}[n+1, A025147(#-1)]-A025147(n)`
-/

namespace A098965.P7848972371968971155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025147 (d - 1) - A025147 n

end

end A098965.P7848972371968971155

/-! ## A098965.P15461658002905750614

`∑{d}[n+1, A097986(#)*A157658((n+1)/#)]`
-/

namespace A098965.P15461658002905750614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097986 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A098965.P15461658002905750614

/-! ## A098965.P247780260683863483

`A047966(n+1)-(A329436(n+1)+A025147(n))`
-/

namespace A098965.P247780260683863483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - (A329436 (n + 1) + A025147 n)

end

end A098965.P247780260683863483

/-! ## A098965.P2614270456470109507

`A097986(n+1)-A096765(n+1)`
-/

namespace A098965.P2614270456470109507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097986 (n + 1) - A096765 (n + 1)

end

end A098965.P2614270456470109507

/-! ## A098965.P16300440394264793774

`∑{d}[n+1, A096765(#)]-A025147(n)`
-/

namespace A098965.P16300440394264793774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096765 d - A025147 n

end

end A098965.P16300440394264793774

/-! ## A098965.P14767560610790203571

`∑{d}[n+1, A096765(#)]-A096765(n+1)`
-/

namespace A098965.P14767560610790203571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096765 d - A096765 (n + 1)

end

end A098965.P14767560610790203571

/-! ## A098965.P3399461265116924980

`A047966(n+1)-(A329436(n+1)+A096765(n+1))`
-/

namespace A098965.P3399461265116924980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - (A329436 (n + 1) + A096765 (n + 1))

end

end A098965.P3399461265116924980

/-! ## A098965.P16227250437803286518

`A097986(n+1)-A015716(A000124(n))`
-/

namespace A098965.P16227250437803286518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097986 (n + 1) - A015716 (A000124 n).toNat

end

end A098965.P16227250437803286518

/-!
# A098966: Number of (k+1)-tuples of integers modulo n (x_1,...,x_k,s) such that at least one subset of the x_i sums to s mod n. In other words, n^k times the expected number of distinct subset sums mod n of k integers mod n chosen uniformly at random. Read by antidiagonals, i.e., with entries in the order (n,k)=(1,1),(1,2),(2,1),(1,3),(2,2),(3,1),...

The programs for A098966, there is no canonical definition to state claims against.
-/

/-! ## A098966.P1804351298921980312

`A094681(lcm(A177767(n), A208931(n+1)))`
-/

namespace A098966.P1804351298921980312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094681 (Int.lcm (A177767 n) (A208931 (n + 1)))

end

end A098966.P1804351298921980312

/-! ## A098966.P4874810228478564024

`or(A132426(A156920(n)), A158405(n+1))`
-/

namespace A098966.P4874810228478564024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132426 (A156920 n).toNat) (A158405 (n + 1))

end

end A098966.P4874810228478564024

/-! ## A098966.P18012898148577228604

`A094681(A208931(n+1)^A065518(n+1))`
-/

namespace A098966.P18012898148577228604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094681 (SequenceMachineLib.roundAway ((A208931 (n + 1) : ℚ) ^ (A065518 (n + 1) : ℤ))).toNat

end

end A098966.P18012898148577228604

/-! ## A098966.P7448802895505119560

`A118759(or(A008957(n+1), A308690(n+1)))`
-/

namespace A098966.P7448802895505119560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor (A008957 (n + 1)) (A308690 (n + 1))).toNat

end

end A098966.P7448802895505119560

/-!
# A098968: Record values for size of sea of composite numbers surrounding primes.

The programs for A098968, there is no canonical definition to state claims against.
-/

/-! ## A098968.P12438882169180333405

`A031132(A151878(n)+n)-(A010051(2*(n+1))+2)`
-/

namespace A098968.P12438882169180333405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031132 (A151878 n + (n : ℤ)).toNat - (A010051 (2 * (n + 1)) + 2)

end

end A098968.P12438882169180333405

/-! ## A098968.P11532928000702663741

`A031132(A151878(n)+n)-A067018(A005384(n+1))`
-/

namespace A098968.P11532928000702663741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031132 (A151878 n + (n : ℤ)).toNat - A067018 (A005384 (n + 1)).toNat

end

end A098968.P11532928000702663741

/-! ## A098968.P8390505931648648951

`record[A159461(n+1)]`
-/

namespace A098968.P8390505931648648951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098968.P8390505931648648951

/-! ## A098968.P8113329887686581654

`record[A075527(n)-2]`
-/

namespace A098968.P8113329887686581654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098968.P8113329887686581654

/-! ## A098968.P2716046512337239718

`record[A046930(n+1)%(n+1)]`
-/

namespace A098968.P2716046512337239718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046930 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098968.P2716046512337239718

/-!
# A098969: Where the records (A098968) occur in A046930 (if initial term is 0 not 1).

The programs for A098969, there is no canonical definition to state claims against.
-/

/-! ## A098969.P17982713156898064343

`A000720(A096265(n+1))`
-/

namespace A098969.P17982713156898064343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096265 (n + 1)).toNat

end

end A098969.P17982713156898064343

/-! ## A098969.P13998629392413505346

`∑{d}[A096265(n+1), A061395(#)]`
-/

namespace A098969.P13998629392413505346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A098969.P13998629392413505346

/-! ## A098969.P18003086528437640938

`A061395(A054977(n)*A096265(n+1))`
-/

namespace A098969.P18003086528437640938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A054977 n * A096265 (n + 1)).toNat

end

end A098969.P18003086528437640938

/-!
# A098970: Numbers k such that (12*k)^2 can be expressed as the sum of the cubes of two distinct primes.

The programs for A098970, there is no canonical definition to state claims against.
-/

/-! ## A098970.P14255430659645766111

`A145767(n+2)/12`
-/

namespace A098970.P14255430659645766111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145767 (n + 2) : ℚ) / 12

end

end A098970.P14255430659645766111

/-!
# A098971: a(0)=1; for n > 0, a(n)=a(floor(n/2))+2*a(floor(n/4)).

The programs for A098971, the canonical program `A098971.P1998349697324570023` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098971 has offset 0).

The definition of A098971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+2*a(floor(n/4))` (program `A098971.P1998349697324570023`, by `A098971.P1998349697324570023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098971.P1998349697324570023

`a(floor(n/2))+2*a(floor(n/4))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098971

/-- `a(floor(n/2))+2*a(floor(n/4))` -/
def P1998349697324570023.Spec : Prop :=
  ∀ n, (P1998349697324570023.a n : ℤ) = A098971 n

theorem P1998349697324570023.correct : P1998349697324570023.Spec := by
  intro n
  simp only [A098971]

end A098971

/-! ## A098971.P17528510151891061845

`round(2^(ceil(log2(n+1))+2)/3)`
-/

namespace A098971.P17528510151891061845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 2 : ℤ) / 3)

end

end A098971.P17528510151891061845

namespace A098971

/-- `round(2^(ceil(log2(n+1))+2)/3)` -/
def P17528510151891061845.Spec : Prop :=
  ∀ n, P17528510151891061845.a n = A098971 n

end A098971

/-! ## A098971.P14322227419252670676

`a(floor(n/4))+2^ceil(log2(n+1))` with `a(0)=1`
-/

namespace A098971.P14322227419252670676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A098971.P14322227419252670676

namespace A098971

/-- `a(floor(n/4))+2^ceil(log2(n+1))` -/
def P14322227419252670676.Spec : Prop :=
  ∀ n, P14322227419252670676.a n = (A098971 n : ℚ)

end A098971

/-! ## A098971.P3125846675888052282

`A283642(ceil(log2(n+1)))`
-/

namespace A098971.P3125846675888052282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A098971.P3125846675888052282

namespace A098971

/-- `A283642(ceil(log2(n+1)))` -/
def P3125846675888052282.Spec : Prop :=
  ∀ n, P3125846675888052282.a n = A098971 n

end A098971

/-! ## A098971.P4464242446100813025

`A001045(ceil(log2(n+1))+2)`
-/

namespace A098971.P4464242446100813025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 2).toNat

end

end A098971.P4464242446100813025

namespace A098971

/-- `A001045(ceil(log2(n+1))+2)` -/
def P4464242446100813025.Spec : Prop :=
  ∀ n, P4464242446100813025.a n = A098971 n

end A098971

/-! ## A098971.P10774232954219688965

`A008576(A053644(n))`
-/

namespace A098971.P10774232954219688965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A053644 n).toNat

end

end A098971.P10774232954219688965

namespace A098971

/-- `A008576(A053644(n))` -/
def P10774232954219688965.Spec : Prop :=
  ∀ n, P10774232954219688965.a n = A098971 n

end A098971

/-! ## A098971.P5692596284891327447

`A020946(A083662(n))`
-/

namespace A098971.P5692596284891327447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A083662 n).toNat

end

end A098971.P5692596284891327447

namespace A098971

/-- `A020946(A083662(n))` -/
def P5692596284891327447.Spec : Prop :=
  ∀ n, P5692596284891327447.a n = A098971 n

end A098971

/-! ## A098971.P624760768086741686

`A047425(a(floor(n/2)))` with `a(0)=1`
-/

namespace A098971.P624760768086741686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047425 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A098971.P624760768086741686

namespace A098971

/-- `A047425(a(floor(n/2)))` -/
def P624760768086741686.Spec : Prop :=
  ∀ n, P624760768086741686.a n = A098971 n

end A098971

/-! ## A098971.P1882741722541491302

`or(1, A213064(a(floor(n/2))))` with `a(0)=1`
-/

namespace A098971.P1882741722541491302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A213064 (a ⌊(n : ℚ) / 2⌋.toNat).toNat)

end

end A098971.P1882741722541491302

namespace A098971

/-- `or(1, A213064(a(floor(n/2))))` -/
def P1882741722541491302.Spec : Prop :=
  ∀ n, P1882741722541491302.a n = A098971 n

end A098971

/-! ## A098971.P10340683979302368176

`A042965(2^ceil(log2(n+1))+1)`
-/

namespace A098971.P10340683979302368176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1)).toNat

end

end A098971.P10340683979302368176

namespace A098971

/-- `A042965(2^ceil(log2(n+1))+1)` -/
def P10340683979302368176.Spec : Prop :=
  ∀ n, P10340683979302368176.a n = A098971 n

end A098971

/-! ## A098971.P12337281154510489484

`A006369(A062383(n))`
-/

namespace A098971.P12337281154510489484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A062383 n).toNat

end

end A098971.P12337281154510489484

namespace A098971

/-- `A006369(A062383(n))` -/
def P12337281154510489484.Spec : Prop :=
  ∀ n, P12337281154510489484.a n = A098971 n

end A098971

/-! ## A098971.P3583789807556652933

`A047564(A038572(2*n+1)-n)`
-/

namespace A098971.P3583789807556652933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 (A038572 (2 * n + 1) - (n : ℤ)).toNat

end

end A098971.P3583789807556652933

namespace A098971

/-- `A047564(A038572(2*n+1)-n)` -/
def P3583789807556652933.Spec : Prop :=
  ∀ n, P3583789807556652933.a n = A098971 n

end A098971

/-! ## A098971.P16457127387894042396

`A047564(2*n+1-A053645(2*n+1))`
-/

namespace A098971.P16457127387894042396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 ((2 * n + 1 : ℤ) - A053645 (2 * n + 1)).toNat

end

end A098971.P16457127387894042396

namespace A098971

/-- `A047564(2*n+1-A053645(2*n+1))` -/
def P16457127387894042396.Spec : Prop :=
  ∀ n, P16457127387894042396.a n = A098971 n

end A098971

/-! ## A098971.P13972977407090658624

`A073370(A000217(A070939(2*n)))`
-/

namespace A098971.P13972977407090658624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A000217 (A070939 (2 * n)).toNat).toNat

end

end A098971.P13972977407090658624

namespace A098971

/-- `A073370(A000217(A070939(2*n)))` -/
def P13972977407090658624.Spec : Prop :=
  ∀ n, P13972977407090658624.a n = A098971 n

end A098971

/-! ## A098971.P4841668536018676613

`A122198(A054429(A053644(2*n+1)))`
-/

namespace A098971.P4841668536018676613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122198 (A054429 (A053644 (2 * n + 1)).toNat).toNat

end

end A098971.P4841668536018676613

namespace A098971

/-- `A122198(A054429(A053644(2*n+1)))` -/
def P4841668536018676613.Spec : Prop :=
  ∀ n, P4841668536018676613.a n = A098971 n

end A098971

/-! ## A098971.P2844628875266553365

`A059319(A003817(n))`
-/

namespace A098971.P2844628875266553365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059319 (A003817 n).toNat

end

end A098971.P2844628875266553365

namespace A098971

/-- `A059319(A003817(n))` -/
def P2844628875266553365.Spec : Prop :=
  ∀ n, P2844628875266553365.a n = A098971 n

end A098971

/-! ## A098971.P18046348342650257141

`A380443(A280510(2*n+1)-1)`
-/

namespace A098971.P18046348342650257141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380443 (A280510 (2 * n + 1) - 1).toNat

end

end A098971.P18046348342650257141

namespace A098971

/-- `A380443(A280510(2*n+1)-1)` -/
def P18046348342650257141.Spec : Prop :=
  ∀ n, P18046348342650257141.a n = A098971 n

end A098971

/-! ## A098971.P9328695757703210414

`A380443(A092754(A053644(A092754(2*n+1))))`
-/

namespace A098971.P9328695757703210414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380443 (A092754 (A053644 (A092754 (2 * n + 1)).toNat).toNat).toNat

end

end A098971.P9328695757703210414

namespace A098971

/-- `A380443(A092754(A053644(A092754(2*n+1))))` -/
def P9328695757703210414.Spec : Prop :=
  ∀ n, P9328695757703210414.a n = A098971 n

end A098971

/-! ## A098971.P14041372656020574263

`A105670(A062383(2*n))`
-/

namespace A098971.P14041372656020574263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A062383 (2 * n)).toNat

end

end A098971.P14041372656020574263

namespace A098971

/-- `A105670(A062383(2*n))` -/
def P14041372656020574263.Spec : Prop :=
  ∀ n, P14041372656020574263.a n = A098971 n

end A098971

/-! ## A098971.P1528055783036275081

`A105670(A053644(2*(2*n+1)))`
-/

namespace A098971.P1528055783036275081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A053644 (2 * (2 * n + 1))).toNat

end

end A098971.P1528055783036275081

namespace A098971

/-- `A105670(A053644(2*(2*n+1)))` -/
def P1528055783036275081.Spec : Prop :=
  ∀ n, P1528055783036275081.a n = A098971 n

end A098971

/-!
# A098972: a(0) = 1; for n > 0, a(n) = 2*a(floor(n/2)) + 3*a(floor(n/3)).

The programs for A098972, the canonical program `A098972.P6716606829037408340` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098972 has offset 0).

The definition of A098972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(floor(n/2))+3*a(floor(n/3))` (program `A098972.P6716606829037408340`, by `A098972.P6716606829037408340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098972.P6716606829037408340

`2*a(floor(n/2))+3*a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098972

/-- `2*a(floor(n/2))+3*a(floor(n/3))` -/
def P6716606829037408340.Spec : Prop :=
  ∀ n, (P6716606829037408340.a n : ℤ) = A098972 n

theorem P6716606829037408340.correct : P6716606829037408340.Spec := by
  intro n
  simp only [A098972]

end A098972

/-!
# A098973: Primes of the form 5p - 2q where p and q are successive primes (p

The programs for A098973, there is no canonical definition to state claims against.
-/

/-! ## A098973.P3701340330348734186

`p?[A107471(n+1)+A100484(n+1)]`
-/

namespace A098973.P3701340330348734186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107471 (n + 1) + A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098973.P3701340330348734186

/-! ## A098973.P16109259619830380755

`p?[A001749(n+1)-A210497(n+1)]`
-/

namespace A098973.P16109259619830380755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - A210497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098973.P16109259619830380755

/-! ## A098973.P5695806133613566754

`p?[A000040(n+1)+2*A062234(n+1)]`
-/

namespace A098973.P5695806133613566754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A062234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098973.P5695806133613566754

/-! ## A098973.P9614510491094239367

`p?[A107471(n+1)+2*A000040(n+1)]`
-/

namespace A098973.P9614510491094239367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107471 (n + 1) + 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098973.P9614510491094239367

/-! ## A098973.P16177509098774202754

`p?[2*A098764(n+1)-A000040(n+1)]`
-/

namespace A098973.P16177509098774202754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098764 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098973.P16177509098774202754

/-!
# A098974: Primes p such that q-p = 24, where q is the next prime after p.

The programs for A098974, there is no canonical definition to state claims against.
-/

/-! ## A098974.P15465908296077231598

`A126720(n+1)-24`
-/

namespace A098974.P15465908296077231598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126720 (n + 1) - 24

end

end A098974.P15465908296077231598

/-! ## A098974.P7284771979180626613

`A055670(A320710(n+1))-1`
-/

namespace A098974.P7284771979180626613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320710 (n + 1)).toNat - 1

end

end A098974.P7284771979180626613

/-! ## A098974.P10389396035379025500

`abs(24-A001748(A320710(n+1)+1)/3)`
-/

namespace A098974.P10389396035379025500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |24 - (A001748 (A320710 (n + 1) + 1).toNat : ℚ) / 3|

end

end A098974.P10389396035379025500

/-! ## A098974.P5755639905457712696

`A000040(A320710(n+1))`
-/

namespace A098974.P5755639905457712696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320710 (n + 1)).toNat

end

end A098974.P5755639905457712696

/-! ## A098974.P11358716888557385388

`A008578(A320710(n+1)+1)`
-/

namespace A098974.P11358716888557385388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320710 (n + 1) + 1).toNat

end

end A098974.P11358716888557385388

/-! ## A098974.P10324478746312049731

`A175787(A320710(n+1)+1)`
-/

namespace A098974.P10324478746312049731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320710 (n + 1) + 1).toNat

end

end A098974.P10324478746312049731

/-! ## A098974.P4616205456335015535

`A045319(A320710(n+1)-1)`
-/

namespace A098974.P4616205456335015535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320710 (n + 1) - 1).toNat

end

end A098974.P4616205456335015535

/-! ## A098974.P4791767339130666812

`A045344(A320710(n+1)-1)`
-/

namespace A098974.P4791767339130666812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A320710 (n + 1) - 1).toNat

end

end A098974.P4791767339130666812

/-! ## A098974.P13215775345064710190

`A065091(A320710(n+1)-1)`
-/

namespace A098974.P13215775345064710190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320710 (n + 1) - 1).toNat

end

end A098974.P13215775345064710190

/-! ## A098974.P14792423497048354354

`A004139(A320710(n+1)-2)`
-/

namespace A098974.P14792423497048354354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320710 (n + 1) - 2).toNat

end

end A098974.P14792423497048354354

/-! ## A098974.P11443120047071644186

`∑{d}[A320710(n+1), A007444(#)]`
-/

namespace A098974.P11443120047071644186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A098974.P11443120047071644186

/-! ## A098974.P5349222098718272606

`A093515(2*(A320710(n+1)-1))`
-/

namespace A098974.P5349222098718272606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * (A320710 (n + 1) - 1)).toNat

end

end A098974.P5349222098718272606

/-! ## A098974.P4808732314246357626

`A006005(A320710(2*(n+1)-(n+1)))`
-/

namespace A098974.P4808732314246357626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A320710 (2 * (n + 1) - (n + 1))).toNat

end

end A098974.P4808732314246357626

/-! ## A098974.P3882101328772505837

`A093515(A320710(n+1)+A320710(n+1)-2)`
-/

namespace A098974.P3882101328772505837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A320710 (n + 1) + (A320710 (n + 1) - 2)).toNat

end

end A098974.P3882101328772505837

/-! ## A098974.P10252484688088757094

`A006530(A040976(A320710(n+1))+2)`
-/

namespace A098974.P10252484688088757094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040976 (A320710 (n + 1)).toNat + 2).toNat

end

end A098974.P10252484688088757094

/-!
# A098975: Nonzero elements of table A071675; also counts selected ordered multisets of the values {1,2,3}.

The programs for A098975, there is no canonical definition to state claims against.
-/

/-! ## A098975.P4130941268647688886

`A071675(lt[0, A071675(n)])`
-/

namespace A098975.P4130941268647688886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A098975.P4130941268647688886

/-! ## A098975.P11285172457537857922

`A071675(eq[A239829(n+1), A239830(n)])`
-/

namespace A098975.P11285172457537857922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098975.P11285172457537857922

/-! ## A098975.P13052693428572865772

`A071675(eq[A130321(n), A209438(n)])`
-/

namespace A098975.P13052693428572865772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098975.P13052693428572865772

/-! ## A098975.P5126825834543168424

`A071675(eq[0, A000007(A071675(n))])`
-/

namespace A098975.P5126825834543168424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A071675 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098975.P5126825834543168424

/-! ## A098975.P13223678022765165203

`A071675(eq[1, A057427(A071675(n))])`
-/

namespace A098975.P13223678022765165203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A071675 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098975.P13223678022765165203

/-!
# A098976: Upper prime of a difference of 22 between consecutive primes.

The programs for A098976, there is no canonical definition to state claims against.
-/

/-! ## A098976.P542313965932623688

`A061779(n+1)+22`
-/

namespace A098976.P542313965932623688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061779 (n + 1) + 22

end

end A098976.P542313965932623688

/-! ## A098976.P590268158424225601

`p?[A164513(n+1)+22]`
-/

namespace A098976.P590268158424225601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164513 (n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098976.P590268158424225601

/-! ## A098976.P11555510932680139673

`A045319(A320709(n+1))`
-/

namespace A098976.P11555510932680139673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320709 (n + 1)).toNat

end

end A098976.P11555510932680139673

/-! ## A098976.P11048284146678049066

`A000040(A320709(n+1)+1)`
-/

namespace A098976.P11048284146678049066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320709 (n + 1) + 1).toNat

end

end A098976.P11048284146678049066

/-! ## A098976.P6476460109504178867

`A006005(A320709(n+1)+1)`
-/

namespace A098976.P6476460109504178867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A320709 (n + 1) + 1).toNat

end

end A098976.P6476460109504178867

/-! ## A098976.P3033094468986417310

`A004139(A320709(n+1)-1)`
-/

namespace A098976.P3033094468986417310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320709 (n + 1) - 1).toNat

end

end A098976.P3033094468986417310

/-! ## A098976.P11754962350947166339

`A008578(A320709(n+1)+2)`
-/

namespace A098976.P11754962350947166339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320709 (n + 1) + 2).toNat

end

end A098976.P11754962350947166339

/-! ## A098976.P6194645959220861437

`A175787(A320709(n+1)+2)`
-/

namespace A098976.P6194645959220861437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320709 (n + 1) + 2).toNat

end

end A098976.P6194645959220861437

/-! ## A098976.P1809046971892191155

`A006093(A320709(n+1)+1)+1`
-/

namespace A098976.P1809046971892191155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A320709 (n + 1) + 1).toNat + 1

end

end A098976.P1809046971892191155

/-! ## A098976.P16791875248643562013

`A008864(A320709(n+1)+1)-1`
-/

namespace A098976.P16791875248643562013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A320709 (n + 1) + 1).toNat - 1

end

end A098976.P16791875248643562013

/-! ## A098976.P9914009522193962915

`A001747(A320709(n+1)+2)/2`
-/

namespace A098976.P9914009522193962915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A320709 (n + 1) + 2).toNat : ℚ) / 2

end

end A098976.P9914009522193962915

/-! ## A098976.P17482924267185649720

`∑{d}[A320709(n+1)+1, A007444(#)]`
-/

namespace A098976.P17482924267185649720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320709 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A098976.P17482924267185649720

/-! ## A098976.P11330933007286257269

`A001248(A320709(n+1)+1)^(1/2)`
-/

namespace A098976.P11330933007286257269
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001248 (A320709 (n + 1) + 1).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A098976.P11330933007286257269

/-! ## A098976.P14096063187761526669

`A065091(2*A320709(n+1)-A320709(n+1))`
-/

namespace A098976.P14096063187761526669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * A320709 (n + 1) - A320709 (n + 1)).toNat

end

end A098976.P14096063187761526669

/-! ## A098976.P16045273459168455294

`A151800(A061779(n+1))`
-/

namespace A098976.P16045273459168455294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A061779 (n + 1)).toNat

end

end A098976.P16045273459168455294

/-! ## A098976.P9385740083777805427

`record[A006530(A164513(abs(1-n)+1)+22)]`
-/

namespace A098976.P9385740083777805427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A164513 (|1 - (n : ℤ)| + 1).toNat + 22).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098976.P9385740083777805427

/-!
# A098977: Triangle read by rows: counts ordered trees by number of edges and position of first edge that terminates at a vertex of outdegree 1.

The programs for A098977, there is no canonical definition to state claims against.
-/

/-! ## A098977.P9635528141236096779

`A059346(A061579(n)+A035214(n))`
-/

namespace A098977.P9635528141236096779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A061579 n + A035214 n).toNat

end

end A098977.P9635528141236096779

/-! ## A098977.P12324768946266986677

`A059346(A038722(n+1)+A010054(n))`
-/

namespace A098977.P12324768946266986677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A038722 (n + 1) + A010054 n).toNat

end

end A098977.P12324768946266986677

/-! ## A098977.P13422345868187114768

`A059346(A073423(n)+A038722(n+1))`
-/

namespace A098977.P13422345868187114768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A073423 n + A038722 (n + 1)).toNat

end

end A098977.P13422345868187114768

/-! ## A098977.P14982785488102295827

`A202193(n+1)+A107846(A202192(n)+1)`
-/

namespace A098977.P14982785488102295827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202193 (n + 1) + A107846 (A202192 n + 1).toNat

end

end A098977.P14982785488102295827

/-!
# A098981: Total number of self-intersections of all n-step walks on the square lattice starting at the origin.

The programs for A098981, there is no canonical definition to state claims against.
-/

/-! ## A098981.P5689448915485863985

`A000010(A108427(n+1))%A108486(n)`
-/

namespace A098981.P5689448915485863985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A108427 (n + 1)).toNat) (A108486 n)

end

end A098981.P5689448915485863985

/-! ## A098981.P10732062279030344090

`and(A008574(A278455(n+1)), A135882(n))`
-/

namespace A098981.P10732062279030344090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008574 (A278455 (n + 1)).toNat) (A135882 n)

end

end A098981.P10732062279030344090

/-!
# A098982: Total number of self-intersections of all walks on the triangular lattice starting at the origin.

The programs for A098982, there is no canonical definition to state claims against.
-/

/-! ## A098982.P13177256436403904653

`3*A133009((n+3)^n)`
-/

namespace A098982.P13177256436403904653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133009 ((n + 3) ^ n)

end

end A098982.P13177256436403904653

/-!
# A098983: Number of ways of writing n as a sum of a prime and a squarefree number.

The programs for A098983, there is no canonical definition to state claims against.
-/

/-! ## A098983.P10330585103621270176

`A282318(n)+A073610(C(2, n+2)+n)`
-/

namespace A098983.P10330585103621270176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + A073610 (Nat.choose 2 (n + 2) + n)

end

end A098983.P10330585103621270176

/-! ## A098983.P2396247932299522768

`A282318(n)+A073610(A028310(n))`
-/

namespace A098983.P2396247932299522768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + A073610 (A028310 n).toNat

end

end A098983.P2396247932299522768

/-! ## A098983.P12435573860664247390

`A282318(n)+A073610(A000007(n)+n)`
-/

namespace A098983.P12435573860664247390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + A073610 (A000007 n + (n : ℤ)).toNat

end

end A098983.P12435573860664247390

/-! ## A098983.P17830394540941690677

`A282318(n)+A073610(A123108(2*n))`
-/

namespace A098983.P17830394540941690677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + A073610 (A123108 (2 * n)).toNat

end

end A098983.P17830394540941690677

/-! ## A098983.P4457629904207555414

`A282318(n)+A073610(A233583(n+1))`
-/

namespace A098983.P4457629904207555414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + A073610 (A233583 (n + 1)).toNat

end

end A098983.P4457629904207555414

/-!
# A098984: Numerators in series expansion of log( Sum_{m=-oo,oo} q^(m^2) ).

The programs for A098984, there is no canonical definition to state claims against.
-/

/-! ## A098984.P7504225598639234191

`2*A098986(n)`
-/

namespace A098984.P7504225598639234191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098986 n

end

end A098984.P7504225598639234191

/-! ## A098984.P369480936621439071

`A098986((n^(1/2))²)+A098986(n)`
-/

namespace A098984.P369480936621439071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098986 (SequenceMachineLib.roundAway (((n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2)).toNat + A098986 n

end

end A098984.P369480936621439071

/-! ## A098984.P7653399223569734528

`(A098986(n)+A098986(n))/A054977(n)`
-/

namespace A098984.P7653399223569734528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098986 n + A098986 n : ℚ) / (A054977 n : ℚ)

end

end A098984.P7653399223569734528

/-! ## A098984.P2182964309127159900

`A098986(n)+A098986(n)%A000124(n)`
-/

namespace A098984.P2182964309127159900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098986 n + Int.tmod (A098986 n) (A000124 n)

end

end A098984.P2182964309127159900

/-! ## A098984.P13219202577240134172

`(A098986(n)+A098986(n))%A004771(n)`
-/

namespace A098984.P13219202577240134172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098986 n + A098986 n) (A004771 n)

end

end A098984.P13219202577240134172

/-! ## A098984.P5891793742167291942

`A098986(n)+A098986(n)^A000108(C(2, n+2))`
-/

namespace A098984.P5891793742167291942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098986 n : ℚ) + (A098986 n : ℚ) ^ (A000108 (Nat.choose 2 (n + 2)) : ℤ)

end

end A098984.P5891793742167291942

/-! ## A098984.P6136078428017904935

`A098986(n)+A098986(n)/A006530(gcd(n, n+1))`
-/

namespace A098984.P6136078428017904935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098986 n : ℚ) + (A098986 n : ℚ) / (A006530 (Nat.gcd n (n + 1)) : ℚ)

end

end A098984.P6136078428017904935

/-!
# A098985: Denominators in series expansion of log( Sum_{m=-oo,oo} q^(m^2) ).

The programs for A098985, the canonical program `A098985.P11316927395599440814` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098985 has offset 0).

The definition of A098985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098985.P11316927395599440814

`A000265(A098988(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A098985

/-- `A000265(A098988(n))` -/
def P11316927395599440814.Spec : Prop :=
  ∀ n, P11316927395599440814.a n = A098985 n

theorem P11316927395599440814.correct : P11316927395599440814.Spec := by
  intro n
  simp only [A098985]

end A098985

/-! ## A098985.P4828370394970643210

`A302044(2*A098988(n))`
-/

namespace A098985.P4828370394970643210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A098988 n).toNat

end

end A098985.P4828370394970643210

namespace A098985

/-- `A302044(2*A098988(n))` -/
def P4828370394970643210.Spec : Prop :=
  ∀ n, P4828370394970643210.a n = A098985 n

end A098985

/-! ## A098985.P11224919033412795584

`gcd(A098988(n), A129527(n))`
-/

namespace A098985.P11224919033412795584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098988 n) (A129527 n)

end

end A098985.P11224919033412795584

namespace A098985

/-- `gcd(A098988(n), A129527(n))` -/
def P11224919033412795584.Spec : Prop :=
  ∀ n, (P11224919033412795584.a n : ℤ) = A098985 n

end A098985

/-! ## A098985.P15019014156773648254

`A098988(2*n-A129527(n))`
-/

namespace A098985.P15019014156773648254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098988 ((2 * n : ℤ) - A129527 n).toNat

end

end A098985.P15019014156773648254

namespace A098985

/-- `A098988(2*n-A129527(n))` -/
def P15019014156773648254.Spec : Prop :=
  ∀ n, P15019014156773648254.a n = A098985 n

end A098985

/-! ## A098985.P10690128739369556937

`A098988(n-A129527(n)+n)`
-/

namespace A098985.P10690128739369556937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098988 ((n : ℤ) - A129527 n + (n : ℤ)).toNat

end

end A098985.P10690128739369556937

namespace A098985

/-- `A098988(n-A129527(n)+n)` -/
def P10690128739369556937.Spec : Prop :=
  ∀ n, P10690128739369556937.a n = A098985 n

end A098985

/-! ## A098985.P12460960438963034677

`A098988(n-(A129527(n)-n))`
-/

namespace A098985.P12460960438963034677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098988 ((n : ℤ) - (A129527 n - (n : ℤ))).toNat

end

end A098985.P12460960438963034677

namespace A098985

/-- `A098988(n-(A129527(n)-n))` -/
def P12460960438963034677.Spec : Prop :=
  ∀ n, P12460960438963034677.a n = A098985 n

end A098985

/-! ## A098985.P15168164488182007953

`A017666(A000265(abs(1-n)+1))`
-/

namespace A098985.P15168164488182007953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A000265 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A098985.P15168164488182007953

namespace A098985

/-- `A017666(A000265(abs(1-n)+1))` -/
def P15168164488182007953.Spec : Prop :=
  ∀ n, P15168164488182007953.a n = A098985 n

end A098985

/-! ## A098985.P3520944891901286749

`A028234(2*A098988(n))`
-/

namespace A098985.P3520944891901286749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A098988 n).toNat

end

end A098985.P3520944891901286749

namespace A098985

/-- `A028234(2*A098988(n))` -/
def P3520944891901286749.Spec : Prop :=
  ∀ n, P3520944891901286749.a n = A098985 n

end A098985

/-! ## A098985.P8486495142623710894

`A139391(2*A098988(n))`
-/

namespace A098985.P8486495142623710894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A098988 n).toNat

end

end A098985.P8486495142623710894

namespace A098985

/-- `A139391(2*A098988(n))` -/
def P8486495142623710894.Spec : Prop :=
  ∀ n, P8486495142623710894.a n = A098985 n

end A098985

/-! ## A098985.P15062481606979329231

`A098988(gcd(n, A046983(n)))`
-/

namespace A098985.P15062481606979329231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098988 (Int.gcd (n : ℤ) (A046983 n))

end

end A098985.P15062481606979329231

namespace A098985

/-- `A098988(gcd(n, A046983(n)))` -/
def P15062481606979329231.Spec : Prop :=
  ∀ n, P15062481606979329231.a n = A098985 n

end A098985

/-!
# A098986: Numerators (divided by 2) in series expansion of log( Sum_{m=-oo,oo} q^(m^2) ).

The programs for A098986, there is no canonical definition to state claims against.
-/

/-! ## A098986.P5931751436590885096

`A098984(n)/2`
-/

namespace A098986.P5931751436590885096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098984 n : ℚ) / 2

end

end A098986.P5931751436590885096

/-! ## A098986.P1024534253092432237

`A115607(A028310(n))%A070663(A038238(n))`
-/

namespace A098986.P1024534253092432237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115607 (A028310 n).toNat) (A070663 (A038238 n).toNat)

end

end A098986.P1024534253092432237

/-! ## A098986.P17482672261933236411

`A115607(round(sqrt(n²+1)))%A200403(n+1)`
-/

namespace A098986.P17482672261933236411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115607 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A200403 (n + 1))

end

end A098986.P17482672261933236411

/-! ## A098986.P10471267565727559144

`A062157(n)*A193349(A011782(n))`
-/

namespace A098986.P10471267565727559144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A193349 (A011782 n).toNat

end

end A098986.P10471267565727559144

/-! ## A098986.P15822080890491179699

`A115607(A028310(n))%A143882(n)`
-/

namespace A098986.P15822080890491179699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115607 (A028310 n).toNat) (A143882 n)

end

end A098986.P15822080890491179699

/-!
# A098987: Numerators in series expansion of log(Product_{m>=0} (1+q^m)).

The programs for A098987, there is no canonical definition to state claims against.
-/

/-! ## A098987.P2794588450774059139

`gcd(A098986(n), A132277(A133263(n)))`
-/

namespace A098987.P2794588450774059139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098986 n) (A132277 (A133263 n).toNat)

end

end A098987.P2794588450774059139

/-!
# A098988: Denominators in series expansion of log(Product_{m>=1} (1+q^m)).

The programs for A098988, the canonical program `A098988.P773780292752232534` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098988 has offset 0).

The definition of A098988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098988.P773780292752232534

`gcd(n, n/A353688(n)*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098988

/-- `gcd(n, n/A353688(n)*a(n-1))` -/
def P773780292752232534.Spec : Prop :=
  ∀ n, (P773780292752232534.a n : ℤ) = A098988 n

theorem P773780292752232534.correct : P773780292752232534.Spec := by
  intro n
  simp only [A098988]

end A098988

/-! ## A098988.P15661509094791700076

`floor(Δ[n²]/A004277(A353688(n)))`
-/

namespace A098988.P15661509094791700076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A004277 (A353688 n).toNat : ℚ)⌋

end

end A098988.P15661509094791700076

namespace A098988

/-- `floor(Δ[n²]/A004277(A353688(n)))` -/
def P15661509094791700076.Spec : Prop :=
  ∀ n, P15661509094791700076.a n = A098988 n

end A098988

/-! ## A098988.P411760860380938068

`n/A353688(n)*a(A000038(n))` with `a(0)=1`
-/

namespace A098988.P411760860380938068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A353688 n : ℚ) * a (A000038 n).toNat

end

end A098988.P411760860380938068

namespace A098988

/-- `n/A353688(n)*a(A000038(n))` -/
def P411760860380938068.Spec : Prop :=
  ∀ n, P411760860380938068.a n = (A098988 n : ℚ)

end A098988

/-! ## A098988.P5251211937753269367

`round(sqrt(n²+1))/A353688(A028310(n))`
-/

namespace A098988.P5251211937753269367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ) / (A353688 (A028310 n).toNat : ℚ)

end

end A098988.P5251211937753269367

namespace A098988

/-- `round(sqrt(n²+1))/A353688(A028310(n))` -/
def P5251211937753269367.Spec : Prop :=
  ∀ n, P5251211937753269367.a n = (A098988 n : ℚ)

end A098988

/-! ## A098988.P7902650672195638019

`A004277(n)/A004277(A353688(n))`
-/

namespace A098988.P7902650672195638019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A004277 (A353688 n).toNat : ℚ)

end

end A098988.P7902650672195638019

namespace A098988

/-- `A004277(n)/A004277(A353688(n))` -/
def P7902650672195638019.Spec : Prop :=
  ∀ n, P7902650672195638019.a n = (A098988 n : ℚ)

end A098988

/-! ## A098988.P990846782467725068

`A008458(n)/A008458(A353688(n))`
-/

namespace A098988.P990846782467725068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008458 (A353688 n).toNat : ℚ)

end

end A098988.P990846782467725068

namespace A098988

/-- `A008458(n)/A008458(A353688(n))` -/
def P990846782467725068.Spec : Prop :=
  ∀ n, P990846782467725068.a n = (A098988 n : ℚ)

end A098988

/-! ## A098988.P10557896510749753985

`A008486(n)/A008486(A353688(n))`
-/

namespace A098988.P10557896510749753985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A008486 (A353688 n).toNat : ℚ)

end

end A098988.P10557896510749753985

namespace A098988

/-- `A008486(n)/A008486(A353688(n))` -/
def P10557896510749753985.Spec : Prop :=
  ∀ n, P10557896510749753985.a n = (A098988 n : ℚ)

end A098988

/-! ## A098988.P6993768427824136114

`n*A000010(a(A191265(n)))/A353688(n)` with `a(0)=1`
-/

namespace A098988.P6993768427824136114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((A000010 (SequenceMachineLib.roundAway (a (A191265 n).toNat)).toNat : ℚ) / (A353688 n : ℚ))

end

end A098988.P6993768427824136114

namespace A098988

/-- `n*A000010(a(A191265(n)))/A353688(n)` -/
def P6993768427824136114.Spec : Prop :=
  ∀ n, P6993768427824136114.a n = (A098988 n : ℚ)

end A098988

/-!
# A098991: Numbers n where A098035(n)=0.

The programs for A098991, the canonical program `A098991.P5792837169112827656` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098991 has offset 1).

The definition of A098991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098991.P5792837169112827656

`eq[0, A098035(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A098991

/-- `eq[0, A098035(n+1)]+1` -/
def P5792837169112827656.Spec : Prop :=
  ∀ n, (P5792837169112827656.a n : ℤ) = A098991 (n + 1)

theorem P5792837169112827656.correct : P5792837169112827656.Spec := by
  intro n
  simp only [A098991, Nat.add_sub_cancel]

end A098991

/-! ## A098991.P4118268750405828309

`record[gcd(n+5, A098035(n+5))]`
-/

namespace A098991.P4118268750405828309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A098035 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098991.P4118268750405828309

namespace A098991

/-- `record[gcd(n+5, A098035(n+5))]` -/
def P4118268750405828309.Spec : Prop :=
  ∀ n, (P4118268750405828309.a n : ℤ) = A098991 (n + 1)

end A098991

/-! ## A098991.P10932436894354811473

`eq[0, A098035(A028310(n))]`
-/

namespace A098991.P10932436894354811473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098991.P10932436894354811473

namespace A098991

/-- `eq[0, A098035(A028310(n))]` -/
def P10932436894354811473.Spec : Prop :=
  ∀ n, (P10932436894354811473.a n : ℤ) = A098991 (n + 1)

end A098991

/-! ## A098991.P13331241203556986684

`A020725(eq[0, A098035(n+1)])`
-/

namespace A098991.P13331241203556986684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098991.P13331241203556986684

namespace A098991

/-- `A020725(eq[0, A098035(n+1)])` -/
def P13331241203556986684.Spec : Prop :=
  ∀ n, P13331241203556986684.a n = A098991 (n + 1)

end A098991

/-! ## A098991.P16220644937050071766

`eq[0, A098035(A233583(n+1))]`
-/

namespace A098991.P16220644937050071766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098035 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098991.P16220644937050071766

namespace A098991

/-- `eq[0, A098035(A233583(n+1))]` -/
def P16220644937050071766.Spec : Prop :=
  ∀ n, (P16220644937050071766.a n : ℤ) = A098991 (n + 1)

end A098991

/-!
# A098992: Number of permutations of [n] with exactly 2 descents which avoid the pattern 1324.

The programs for A098992, the canonical program `A098992.P14496484920086602184` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098992 has offset 1).

The definition of A098992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098992.P14496484920086602184

`∑[∑[∑[∑[∑[n]+a(n-1)]]]]` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098992

/-- `∑[∑[∑[∑[∑[n]+a(n-1)]]]]` -/
def P14496484920086602184.Spec : Prop :=
  ∀ n, (P14496484920086602184.a n : ℤ) = A098992 (n + 1)

theorem P14496484920086602184.correct : P14496484920086602184.Spec := by
  intro n
  simp only [A098992, Nat.add_sub_cancel]

end A098992

/-! ## A098992.P2437828011594554194

`A145129(n)-A133252(n)`
-/

namespace A098992.P2437828011594554194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 n - A133252 n

end

end A098992.P2437828011594554194

namespace A098992

/-- `A145129(n)-A133252(n)` -/
def P2437828011594554194.Spec : Prop :=
  ∀ n, P2437828011594554194.a n = A098992 (n + 1)

end A098992

/-! ## A098992.P13720410441638917865

`A145129(n)-∑[A006000(n)]`
-/

namespace A098992.P13720410441638917865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098992.P13720410441638917865

namespace A098992

/-- `A145129(n)-∑[A006000(n)]` -/
def P13720410441638917865.Spec : Prop :=
  ∀ n, P13720410441638917865.a n = A098992 (n + 1)

end A098992

/-! ## A098992.P15851990006822358590

`∑[∑[A027658(n)-A084849(n)]]`
-/

namespace A098992.P15851990006822358590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n - A084849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098992.P15851990006822358590

namespace A098992

/-- `∑[∑[A027658(n)-A084849(n)]]` -/
def P15851990006822358590.Spec : Prop :=
  ∀ n, P15851990006822358590.a n = A098992 (n + 1)

end A098992

/-! ## A098992.P5168217739700827047

`A027818(n)-(A034265(n)+A001296(n))`
-/

namespace A098992.P5168217739700827047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 n - (A034265 n + A001296 n)

end

end A098992.P5168217739700827047

namespace A098992

/-- `A027818(n)-(A034265(n)+A001296(n))` -/
def P5168217739700827047.Spec : Prop :=
  ∀ n, P5168217739700827047.a n = A098992 (n + 1)

end A098992

/-! ## A098992.P13528294987588337981

`A145129(n)-(A000914(n)+A000217(n+1))`
-/

namespace A098992.P13528294987588337981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 n - (A000914 n + A000217 (n + 1))

end

end A098992.P13528294987588337981

namespace A098992

/-- `A145129(n)-(A000914(n)+A000217(n+1))` -/
def P13528294987588337981.Spec : Prop :=
  ∀ n, P13528294987588337981.a n = A098992 (n + 1)

end A098992

/-!
# A098993: a(n) is the smallest value for which a(n), a(n)+1, ..., a(n)+n-1 are all lengths of hypotenuses of Pythagorean triangles.

The programs for A098993, there is no canonical definition to state claims against.
-/

/-! ## A098993.P665331503794268262

`A099799(A003271(n)*A361236(3*n))`
-/

namespace A098993.P665331503794268262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099799 (A003271 n * A361236 (3 * n)).toNat

end

end A098993.P665331503794268262

/-!
# A098994: Number of permutations of [n] with exactly 3 descents which avoid the pattern 1324.

The programs for A098994, there is no canonical definition to state claims against.
-/

/-! ## A098994.P12579179551402292949

`A341474(C(comp[ceil(ϕ*n)], 8))`
-/

namespace A098994.P12579179551402292949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341474 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 8)

end

end A098994.P12579179551402292949

/-! ## A098994.P15399866503942007751

`A064460(A262046(n))`
-/

namespace A098994.P15399866503942007751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064460 (A262046 n).toNat

end

end A098994.P15399866503942007751

/-!
# A098995: Number of permutations of [n] with exactly 4 descents which avoid the pattern 1324.

The programs for A098995, there is no canonical definition to state claims against.
-/

/-! ## A098995.P109856808539298858

`A062108(A243648(n)+A243647(n))`
-/

namespace A098995.P109856808539298858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A243648 n + A243647 n).toNat

end

end A098995.P109856808539298858

/-! ## A098995.P17170350279785046830

`A000330(A214951(n))%A001003(n)`
-/

namespace A098995.P17170350279785046830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000330 (A214951 n).toNat) (A001003 n)

end

end A098995.P17170350279785046830

/-! ## A098995.P15138095357031869725

`A332978(n+1)%A333004(A215649(n))`
-/

namespace A098995.P15138095357031869725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332978 (n + 1)) (A333004 (A215649 n).toNat)

end

end A098995.P15138095357031869725

/-!
# A098996: a(n) = p*(p + 1)*(2*p + 1) where p is the n-th prime.

The programs for A098996, the canonical program `A098996.P17214224582851074437` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098996 has offset 1).

The definition of A098996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098996.P17214224582851074437

`A000040(n+1)*(A000040(n+1)+1)*(2*A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098996

/-- `A000040(n+1)*(A000040(n+1)+1)*(2*A000040(n+1)+1)` -/
def P17214224582851074437.Spec : Prop :=
  ∀ n, P17214224582851074437.a n = A098996 (n + 1)

theorem P17214224582851074437.correct : P17214224582851074437.Spec := by
  intro n
  simp only [A098996, Nat.add_sub_cancel]

end A098996

/-! ## A098996.P6790144601473537847

`6*A262247(n+1)`
-/

namespace A098996.P6790144601473537847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A262247 (n + 1)

end

end A098996.P6790144601473537847

namespace A098996

/-- `6*A262247(n+1)` -/
def P6790144601473537847.Spec : Prop :=
  ∀ n, P6790144601473537847.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P13067823044953098787

`A178398(n+1)+A135178(n+1)`
-/

namespace A098996.P13067823044953098787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) + A135178 (n + 1)

end

end A098996.P13067823044953098787

namespace A098996

/-- `A178398(n+1)+A135178(n+1)` -/
def P13067823044953098787.Spec : Prop :=
  ∀ n, P13067823044953098787.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P13845422563430084294

`A036690(n+1)*A072055(n+1)`
-/

namespace A098996.P13845422563430084294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) * A072055 (n + 1)

end

end A098996.P13845422563430084294

namespace A098996

/-- `A036690(n+1)*A072055(n+1)` -/
def P13845422563430084294.Spec : Prop :=
  ∀ n, P13845422563430084294.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P11407534102607779913

`A000040(n+1)*A382070(n+1)`
-/

namespace A098996.P11407534102607779913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A382070 (n + 1)

end

end A098996.P11407534102607779913

namespace A098996

/-- `A000040(n+1)*A382070(n+1)` -/
def P11407534102607779913.Spec : Prop :=
  ∀ n, P11407534102607779913.a n = A098996 (n + 1)

theorem P11407534102607779913.correct : P11407534102607779913.Spec := by
  intro n
  simp only [A098996, Nat.add_sub_cancel, A098996.P11407534102607779913.a, A098996.P17214224582851074437.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A382070, A382070.P7201143770269954328.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098996

/-! ## A098996.P15762368298757653340

`A178398(n+1)+A181151(n+1)-1`
-/

namespace A098996.P15762368298757653340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) + (A181151 (n + 1) - 1)

end

end A098996.P15762368298757653340

namespace A098996

/-- `A178398(n+1)+A181151(n+1)-1` -/
def P15762368298757653340.Spec : Prop :=
  ∀ n, P15762368298757653340.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P17771735749768510052

`(A060800(n+1)-1)*A072055(n+1)`
-/

namespace A098996.P17771735749768510052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060800 (n + 1) - 1) * A072055 (n + 1)

end

end A098996.P17771735749768510052

namespace A098996

/-- `(A060800(n+1)-1)*A072055(n+1)` -/
def P17771735749768510052.Spec : Prop :=
  ∀ n, P17771735749768510052.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P18287031194907522745

`A036690(n+1)+2*A135178(n+1)`
-/

namespace A098996.P18287031194907522745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + 2 * A135178 (n + 1)

end

end A098996.P18287031194907522745

namespace A098996

/-- `A036690(n+1)+2*A135178(n+1)` -/
def P18287031194907522745.Spec : Prop :=
  ∀ n, P18287031194907522745.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P14871596840350442399

`2*(A181149(n+1)+A008837(n+1))`
-/

namespace A098996.P14871596840350442399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181149 (n + 1) + A008837 (n + 1))

end

end A098996.P14871596840350442399

namespace A098996

/-- `2*(A181149(n+1)+A008837(n+1))` -/
def P14871596840350442399.Spec : Prop :=
  ∀ n, P14871596840350442399.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P18339189931568760562

`A036689(n+1)+2*A181149(n+1)`
-/

namespace A098996.P18339189931568760562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + 2 * A181149 (n + 1)

end

end A098996.P18339189931568760562

namespace A098996

/-- `A036689(n+1)+2*A181149(n+1)` -/
def P18339189931568760562.Spec : Prop :=
  ∀ n, P18339189931568760562.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P12387282399270399078

`2*(A179546(n+1)+A066886(n+1))`
-/

namespace A098996.P12387282399270399078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A179546 (n + 1) + A066886 (n + 1))

end

end A098996.P12387282399270399078

namespace A098996

/-- `2*(A179546(n+1)+A066886(n+1))` -/
def P12387282399270399078.Spec : Prop :=
  ∀ n, P12387282399270399078.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P16356020958433738851

`2*A178398(n+1)-A036690(n+1)`
-/

namespace A098996.P16356020958433738851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178398 (n + 1) - A036690 (n + 1)

end

end A098996.P16356020958433738851

namespace A098996

/-- `2*A178398(n+1)-A036690(n+1)` -/
def P16356020958433738851.Spec : Prop :=
  ∀ n, P16356020958433738851.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P14571419792372413780

`A001248(n+1)+A181149(n+1)+A135178(n+1)`
-/

namespace A098996.P14571419792372413780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A181149 (n + 1) + A135178 (n + 1))

end

end A098996.P14571419792372413780

namespace A098996

/-- `A001248(n+1)+A181149(n+1)+A135178(n+1)` -/
def P14571419792372413780.Spec : Prop :=
  ∀ n, P14571419792372413780.a n = A098996 (n + 1)

theorem P14571419792372413780.correct : P14571419792372413780.Spec := by
  intro n
  simp only [A098996, Nat.add_sub_cancel, A098996.P14571419792372413780.a, A098996.P17214224582851074437.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A135178, A135178.P2117100385622879640.a, A181149, A181149.P13811606423061194343.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098996

/-! ## A098996.P12117290804077941359

`(A008864(n+1)+A000040(n+1))*A036690(n+1)`
-/

namespace A098996.P12117290804077941359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) + A000040 (n + 1)) * A036690 (n + 1)

end

end A098996.P12117290804077941359

namespace A098996

/-- `(A008864(n+1)+A000040(n+1))*A036690(n+1)` -/
def P12117290804077941359.Spec : Prop :=
  ∀ n, P12117290804077941359.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P10828871118596191703

`(A036690(n+1)+A001248(n+1))*A008864(n+1)`
-/

namespace A098996.P10828871118596191703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) + A001248 (n + 1)) * A008864 (n + 1)

end

end A098996.P10828871118596191703

namespace A098996

/-- `(A036690(n+1)+A001248(n+1))*A008864(n+1)` -/
def P10828871118596191703.Spec : Prop :=
  ∀ n, P10828871118596191703.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P12503317923127501780

`(A110833(n+1)+A036690(n+1))*A000040(n+1)`
-/

namespace A098996.P12503317923127501780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110833 (n + 1) + A036690 (n + 1)) * A000040 (n + 1)

end

end A098996.P12503317923127501780

namespace A098996

/-- `(A110833(n+1)+A036690(n+1))*A000040(n+1)` -/
def P12503317923127501780.Spec : Prop :=
  ∀ n, P12503317923127501780.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P12142482524717824300

`A178398(n+1)+A000040(n+1)*A036690(n+1)`
-/

namespace A098996.P12142482524717824300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) + A000040 (n + 1) * A036690 (n + 1)

end

end A098996.P12142482524717824300

namespace A098996

/-- `A178398(n+1)+A000040(n+1)*A036690(n+1)` -/
def P12142482524717824300.Spec : Prop :=
  ∀ n, P12142482524717824300.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P1891120478472660375

`(A306190(n+1)+A072055(n+1))*A072055(n+1)`
-/

namespace A098996.P1891120478472660375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A306190 (n + 1) + A072055 (n + 1)) * A072055 (n + 1)

end

end A098996.P1891120478472660375

namespace A098996

/-- `(A306190(n+1)+A072055(n+1))*A072055(n+1)` -/
def P1891120478472660375.Spec : Prop :=
  ∀ n, P1891120478472660375.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P704423501998187189

`(A060800(n+1)-A036689(n+1))*A036690(n+1)`
-/

namespace A098996.P704423501998187189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060800 (n + 1) - A036689 (n + 1)) * A036690 (n + 1)

end

end A098996.P704423501998187189

namespace A098996

/-- `(A060800(n+1)-A036689(n+1))*A036690(n+1)` -/
def P704423501998187189.Spec : Prop :=
  ∀ n, P704423501998187189.a n = A098996 (n + 1)

end A098996

/-! ## A098996.P12111609335298412053

`A036690(n+1)*A060800(n+1)-A138402(n+1)`
-/

namespace A098996.P12111609335298412053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) * A060800 (n + 1) - A138402 (n + 1)

end

end A098996.P12111609335298412053

namespace A098996

/-- `A036690(n+1)*A060800(n+1)-A138402(n+1)` -/
def P12111609335298412053.Spec : Prop :=
  ∀ n, P12111609335298412053.a n = A098996 (n + 1)

end A098996

/-!
# A098997: (1/30)*(p(p+1)(2p+1)(3p^2+3p-1)) where p is prime.

The programs for A098997, the canonical program `A098997.P10983094338893603845` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098997 has offset 1).

The definition of A098997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098997.P10983094338893603845

`A000538(A000040(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098997

/-- `A000538(A000040(n+1))` -/
def P10983094338893603845.Spec : Prop :=
  ∀ n, P10983094338893603845.a n = A098997 (n + 1)

theorem P10983094338893603845.correct : P10983094338893603845.Spec := by
  intro n
  simp only [A098997, Nat.add_sub_cancel]

end A098997

/-! ## A098997.P906388624297274961

`A000538(A008578(n+2))`
-/

namespace A098997.P906388624297274961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A008578 (n + 2)).toNat

end

end A098997.P906388624297274961

namespace A098997

/-- `A000538(A008578(n+2))` -/
def P906388624297274961.Spec : Prop :=
  ∀ n, P906388624297274961.a n = A098997 (n + 1)

end A098997

/-! ## A098997.P11263618713003901725

`A000538(A182986(n+2))`
-/

namespace A098997.P11263618713003901725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A182986 (n + 2)).toNat

end

end A098997.P11263618713003901725

namespace A098997

/-- `A000538(A182986(n+2))` -/
def P11263618713003901725.Spec : Prop :=
  ∀ n, P11263618713003901725.a n = A098997 (n + 1)

end A098997

/-! ## A098997.P8105187255056799842

`A000538(record[A006530(n+2)])`
-/

namespace A098997.P8105187255056799842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098997.P8105187255056799842

namespace A098997

/-- `A000538(record[A006530(n+2)])` -/
def P8105187255056799842.Spec : Prop :=
  ∀ n, P8105187255056799842.a n = A098997 (n + 1)

end A098997

/-! ## A098997.P460144573834877947

`A000538(record[A014963(n+2)])`
-/

namespace A098997.P460144573834877947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098997.P460144573834877947

namespace A098997

/-- `A000538(record[A014963(n+2)])` -/
def P460144573834877947.Spec : Prop :=
  ∀ n, P460144573834877947.a n = A098997 (n + 1)

end A098997

/-! ## A098997.P6133151084391542843

`A000538(record[A020639(n+2)])`
-/

namespace A098997.P6133151084391542843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098997.P6133151084391542843

namespace A098997

/-- `A000538(record[A020639(n+2)])` -/
def P6133151084391542843.Spec : Prop :=
  ∀ n, P6133151084391542843.a n = A098997 (n + 1)

end A098997

/-! ## A098997.P3300179700892360557

`A000538(A040976(n+1)+2)`
-/

namespace A098997.P3300179700892360557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A040976 (n + 1) + 2).toNat

end

end A098997.P3300179700892360557

namespace A098997

/-- `A000538(A040976(n+1)+2)` -/
def P3300179700892360557.Spec : Prop :=
  ∀ n, P3300179700892360557.a n = A098997 (n + 1)

theorem P3300179700892360557.correct : P3300179700892360557.Spec := by
  intro n
  simp only [A098997, Nat.add_sub_cancel, A098997.P3300179700892360557.a, A098997.P10983094338893603845.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000538, A000538.P5786260250335175589.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098997

/-! ## A098997.P14588257455821726989

`A000538(eq[2, A000005(n+1)]+1)`
-/

namespace A098997.P14588257455821726989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098997.P14588257455821726989

namespace A098997

/-- `A000538(eq[2, A000005(n+1)]+1)` -/
def P14588257455821726989.Spec : Prop :=
  ∀ n, P14588257455821726989.a n = A098997 (n + 1)

end A098997

/-! ## A098997.P2423820188413203576

`A000538(A014689(n+1)+1+n)`
-/

namespace A098997.P2423820188413203576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A014689 (n + 1) + 1 + (n : ℤ)).toNat

end

end A098997.P2423820188413203576

namespace A098997

/-- `A000538(A014689(n+1)+1+n)` -/
def P2423820188413203576.Spec : Prop :=
  ∀ n, P2423820188413203576.a n = A098997 (n + 1)

theorem P2423820188413203576.correct : P2423820188413203576.Spec := by
  intro n
  simp only [A098997, Nat.add_sub_cancel, A098997.P2423820188413203576.a, A098997.P10983094338893603845.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000538, A000538.P5786260250335175589.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098997

/-!
# A098998: p(11p-7) where p is prime.

The programs for A098998, the canonical program `A098998.P9371131733342517634` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098998 has offset 1).

The definition of A098998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098998.P18358923054298234016

`2*(A267217(n+1)+A116995(n+1))`
-/

namespace A098998.P18358923054298234016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A267217 (n + 1) + A116995 (n + 1))

end

end A098998.P18358923054298234016

namespace A098998

/-- `2*(A267217(n+1)+A116995(n+1))` -/
def P18358923054298234016.Spec : Prop :=
  ∀ n, P18358923054298234016.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P9371131733342517634

`(11*A000040(n+1)-7)*A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098998

/-- `(11*A000040(n+1)-7)*A000040(n+1)` -/
def P9371131733342517634.Spec : Prop :=
  ∀ n, P9371131733342517634.a n = A098998 (n + 1)

theorem P9371131733342517634.correct : P9371131733342517634.Spec := by
  intro n
  simp only [A098998, Nat.add_sub_cancel]

end A098998

/-! ## A098998.P11160505301749695223

`record[(11*n+15)*A014963(n+2)]`
-/

namespace A098998.P11160505301749695223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 15 : ℤ) * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098998.P11160505301749695223

namespace A098998

/-- `record[(11*n+15)*A014963(n+2)]` -/
def P11160505301749695223.Spec : Prop :=
  ∀ n, P11160505301749695223.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P16955664302037135864

`2*A180223(Δ[A007504(n)])`
-/

namespace A098998.P16955664302037135864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (n + 1) - f1 n).toNat

end

end A098998.P16955664302037135864

namespace A098998

/-- `2*A180223(Δ[A007504(n)])` -/
def P16955664302037135864.Spec : Prop :=
  ∀ n, P16955664302037135864.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P14247212136066013175

`2*A180223(p?[A014681(n)])`
-/

namespace A098998.P14247212136066013175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098998.P14247212136066013175

namespace A098998

/-- `2*A180223(p?[A014681(n)])` -/
def P14247212136066013175.Spec : Prop :=
  ∀ n, P14247212136066013175.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P18004990136004513301

`2*A180223(p?[A064429(n)])`
-/

namespace A098998.P18004990136004513301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098998.P18004990136004513301

namespace A098998

/-- `2*A180223(p?[A064429(n)])` -/
def P18004990136004513301.Spec : Prop :=
  ∀ n, P18004990136004513301.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P18124479386873524733

`2*A180223(p?[A143051(n)])`
-/

namespace A098998.P18124479386873524733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098998.P18124479386873524733

namespace A098998

/-- `2*A180223(p?[A143051(n)])` -/
def P18124479386873524733.Spec : Prop :=
  ∀ n, P18124479386873524733.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P18244005845123066183

`2*A180223(A000040(n+1))`
-/

namespace A098998.P18244005845123066183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (A000040 (n + 1)).toNat

end

end A098998.P18244005845123066183

namespace A098998

/-- `2*A180223(A000040(n+1))` -/
def P18244005845123066183.Spec : Prop :=
  ∀ n, P18244005845123066183.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P548225214184314645

`2*A180223(record[A014963(n+2)])`
-/

namespace A098998.P548225214184314645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098998.P548225214184314645

namespace A098998

/-- `2*A180223(record[A014963(n+2)])` -/
def P548225214184314645.Spec : Prop :=
  ∀ n, P548225214184314645.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P15032108401386248133

`2*A180223(record[A020639(n+2)])`
-/

namespace A098998.P15032108401386248133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098998.P15032108401386248133

namespace A098998

/-- `2*A180223(record[A020639(n+2)])` -/
def P15032108401386248133.Spec : Prop :=
  ∀ n, P15032108401386248133.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P11086858733931152704

`record[A014963(n+2)*A017437(n+1)]`
-/

namespace A098998.P11086858733931152704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A017437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098998.P11086858733931152704

namespace A098998

/-- `record[A014963(n+2)*A017437(n+1)]` -/
def P11086858733931152704.Spec : Prop :=
  ∀ n, P11086858733931152704.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P13987522553848473061

`record[A017437(n+1)*A020639(n+2)]`
-/

namespace A098998.P13987522553848473061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 (n + 1) * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098998.P13987522553848473061

namespace A098998

/-- `record[A017437(n+1)*A020639(n+2)]` -/
def P13987522553848473061.Spec : Prop :=
  ∀ n, P13987522553848473061.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P39208548152400913

`2*A180223(p?[A001057(n)])`
-/

namespace A098998.P39208548152400913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098998.P39208548152400913

namespace A098998

/-- `2*A180223(p?[A001057(n)])` -/
def P39208548152400913.Spec : Prop :=
  ∀ n, P39208548152400913.a n = A098998 (n + 1)

end A098998

/-! ## A098998.P2939045870656310062

`2*A180223(p?[A006370(n)])`
-/

namespace A098998.P2939045870656310062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098998.P2939045870656310062

namespace A098998

/-- `2*A180223(p?[A006370(n)])` -/
def P2939045870656310062.Spec : Prop :=
  ∀ n, P2939045870656310062.a n = A098998 (n + 1)

end A098998

/-!
# A098999: Sum of cubes of the first n primes.

The programs for A098999, the canonical program `A098999.P11172421746672696162` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098999 has offset 1).

The definition of A098999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098999.P11172421746672696162

`∑[A030078(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098999

/-- `∑[A030078(n+1)]` -/
def P11172421746672696162.Spec : Prop :=
  ∀ n, P11172421746672696162.a n = A098999 (n + 1)

theorem P11172421746672696162.correct : P11172421746672696162.Spec := by
  intro n
  simp only [A098999, Nat.add_sub_cancel]

end A098999

/-! ## A098999.P14526271078797700333

`∑[sqrt(A030516(n+1))]`
-/

namespace A098999.P14526271078797700333
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P14526271078797700333

namespace A098999

/-- `∑[sqrt(A030516(n+1))]` -/
def P14526271078797700333.Spec : Prop :=
  ∀ n, P14526271078797700333.a n = (A098999 (n + 1) : ℝ)

end A098999

/-! ## A098999.P11212526307195309881

`∑[A153481(n+1)+2]`
-/

namespace A098999.P11212526307195309881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P11212526307195309881

namespace A098999

/-- `∑[A153481(n+1)+2]` -/
def P11212526307195309881.Spec : Prop :=
  ∀ n, P11212526307195309881.a n = A098999 (n + 1)

theorem P11212526307195309881.correct : P11212526307195309881.Spec := by
  intro n
  simp only [A098999, Nat.add_sub_cancel, A098999.P11212526307195309881.f1, A098999.P11212526307195309881.a, A098999.P11172421746672696162.f1, A098999.P11172421746672696162.a, A030078, A030078.P13819432151207990454.a, A153481, A153481.P8415490273972627534.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098999

/-! ## A098999.P3076606111784478585

`∑[A172190(n+1)/2]`
-/

namespace A098999.P3076606111784478585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172190 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P3076606111784478585

namespace A098999

/-- `∑[A172190(n+1)/2]` -/
def P3076606111784478585.Spec : Prop :=
  ∀ n, P3076606111784478585.a n = (A098999 (n + 1) : ℚ)

end A098999

/-! ## A098999.P11836473953387164767

`∑[A000040(n+1)^3]`
-/

namespace A098999.P11836473953387164767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P11836473953387164767

namespace A098999

/-- `∑[A000040(n+1)^3]` -/
def P11836473953387164767.Spec : Prop :=
  ∀ n, P11836473953387164767.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P2378908473540702779

`∑[sqrt(sqrt(A030631(n+1)))]`
-/

namespace A098999.P2378908473540702779
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A030631 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P2378908473540702779

namespace A098999

/-- `∑[sqrt(sqrt(A030631(n+1)))]` -/
def P2378908473540702779.Spec : Prop :=
  ∀ n, P2378908473540702779.a n = (A098999 (n + 1) : ℝ)

end A098999

/-! ## A098999.P1474119523826394390

`∑[Δ[A007504(n)]*A001248(n+1)]`
-/

namespace A098999.P1474119523826394390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P1474119523826394390

namespace A098999

/-- `∑[Δ[A007504(n)]*A001248(n+1)]` -/
def P1474119523826394390.Spec : Prop :=
  ∀ n, P1474119523826394390.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P12602881773617613913

`∑[A000040(n+1)*A001248(n+1)]`
-/

namespace A098999.P12602881773617613913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P12602881773617613913

namespace A098999

/-- `∑[A000040(n+1)*A001248(n+1)]` -/
def P12602881773617613913.Spec : Prop :=
  ∀ n, P12602881773617613913.a n = A098999 (n + 1)

theorem P12602881773617613913.correct : P12602881773617613913.Spec := by
  intro n
  simp only [A098999, Nat.add_sub_cancel, A098999.P12602881773617613913.f1, A098999.P12602881773617613913.a, A098999.P11172421746672696162.f1, A098999.P11172421746672696162.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098999

/-! ## A098999.P4000354899006527243

`∑[A000040(n+1)²*Δ[A007504(n)]]`
-/

namespace A098999.P4000354899006527243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P4000354899006527243

namespace A098999

/-- `∑[A000040(n+1)²*Δ[A007504(n)]]` -/
def P4000354899006527243.Spec : Prop :=
  ∀ n, P4000354899006527243.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P2064891344638172582

`∑[A273960(n+1)²*A000040(n+1)]`
-/

namespace A098999.P2064891344638172582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P2064891344638172582

namespace A098999

/-- `∑[A273960(n+1)²*A000040(n+1)]` -/
def P2064891344638172582.Spec : Prop :=
  ∀ n, P2064891344638172582.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P10981383517936447724

`∑[∑[A054541(n+1)]*A001248(n+1)]`
-/

namespace A098999.P10981383517936447724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P10981383517936447724

namespace A098999

/-- `∑[∑[A054541(n+1)]*A001248(n+1)]` -/
def P10981383517936447724.Spec : Prop :=
  ∀ n, P10981383517936447724.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P14017866419655750436

`∑[A000040(n+1)²*∑[A054541(n+1)]]`
-/

namespace A098999.P14017866419655750436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P14017866419655750436

namespace A098999

/-- `∑[A000040(n+1)²*∑[A054541(n+1)]]` -/
def P14017866419655750436.Spec : Prop :=
  ∀ n, P14017866419655750436.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P7201623782377421035

`∑[A000040(2*n+1-n)²*A000040(n+1)]`
-/

namespace A098999.P7201623782377421035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1 - n) ^ 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P7201623782377421035

namespace A098999

/-- `∑[A000040(2*n+1-n)²*A000040(n+1)]` -/
def P7201623782377421035.Spec : Prop :=
  ∀ n, P7201623782377421035.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P7912480885549647119

`∑[(A036689(n+1)+A000040(n+1))*A000040(n+1)]`
-/

namespace A098999.P7912480885549647119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P7912480885549647119

namespace A098999

/-- `∑[(A036689(n+1)+A000040(n+1))*A000040(n+1)]` -/
def P7912480885549647119.Spec : Prop :=
  ∀ n, P7912480885549647119.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P6857745937898545831

`∑[A008578(n+2)^3]`
-/

namespace A098999.P6857745937898545831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P6857745937898545831

namespace A098999

/-- `∑[A008578(n+2)^3]` -/
def P6857745937898545831.Spec : Prop :=
  ∀ n, P6857745937898545831.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P4169697377642718041

`∑[A182986(n+2)²*A182986(n+2)]`
-/

namespace A098999.P4169697377642718041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) ^ 2 * A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P4169697377642718041

namespace A098999

/-- `∑[A182986(n+2)²*A182986(n+2)]` -/
def P4169697377642718041.Spec : Prop :=
  ∀ n, P4169697377642718041.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P2381129764777132952

`∑[A158611(n+3)^3]`
-/

namespace A098999.P2381129764777132952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P2381129764777132952

namespace A098999

/-- `∑[A158611(n+3)^3]` -/
def P2381129764777132952.Spec : Prop :=
  ∀ n, P2381129764777132952.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P6106688010681032661

`∑[record[A006530(n+2)^3]]`
-/

namespace A098999.P6106688010681032661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P6106688010681032661

namespace A098999

/-- `∑[record[A006530(n+2)^3]]` -/
def P6106688010681032661.Spec : Prop :=
  ∀ n, P6106688010681032661.a n = A098999 (n + 1)

end A098999

/-! ## A098999.P8580029907514982076

`∑[record[A020639(n+2)^3]]`
-/

namespace A098999.P8580029907514982076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098999.P8580029907514982076

namespace A098999

/-- `∑[record[A020639(n+2)^3]]` -/
def P8580029907514982076.Spec : Prop :=
  ∀ n, P8580029907514982076.a n = A098999 (n + 1)

end A098999

