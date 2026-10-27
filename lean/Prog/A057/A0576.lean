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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A057601: a(0) = a(1) = 1; a(n+1) is the number of partitions of n into parts a(k), 0 <= k <= n, each k occurring at most once.

The programs for A057601, there is no canonical definition to state claims against.
-/

/-! ## A057601.P8055840646814059638

`A004526(A050070(n+1)+A028240(n))`
-/

namespace A057601.P8055840646814059638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050070 (n + 1) + A028240 n).toNat

end

end A057601.P8055840646814059638

/-! ## A057601.P15774904295304179934

`A123108(A050070(n+1)+A028240(n))`
-/

namespace A057601.P15774904295304179934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A050070 (n + 1) + A028240 n).toNat

end

end A057601.P15774904295304179934

/-! ## A057601.P4714801750414270770

`A004526(A151839(n)+A050070(n+1))`
-/

namespace A057601.P4714801750414270770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151839 n + A050070 (n + 1)).toNat

end

end A057601.P4714801750414270770

/-! ## A057601.P12413152038898738549

`A123108(A151839(n)+A050070(n+1))`
-/

namespace A057601.P12413152038898738549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A151839 n + A050070 (n + 1)).toNat

end

end A057601.P12413152038898738549

/-! ## A057601.P14553143507061034246

`A008619(A050070(n+1))-A010060(A131577(n))`
-/

namespace A057601.P14553143507061034246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A050070 (n + 1)).toNat - A010060 (A131577 n).toNat

end

end A057601.P14553143507061034246

/-!
# A057602: a(1)=2, a(n+1) is the smallest integer > a(n) such that the smallest prime factor of a(n+1) is the largest prime factor of a(n).

The programs for A057602, the canonical program `A057602.P3191110448721845909` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057602 has offset 1).

The definition of A057602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057602.P17304247904212181643

`∪[A007352(n+1), A033476(n)]`
-/

namespace A057602.P17304247904212181643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057602.P17304247904212181643

namespace A057602

/-- `∪[A007352(n+1), A033476(n)]` -/
def P17304247904212181643.Spec : Prop :=
  ∀ n, (P17304247904212181643.a n : ℤ) = A057602 (n + 1)

end A057602

/-! ## A057602.P3191110448721845909

`A000040(A008619(n))*A008578(A080513(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057602

/-- `A000040(A008619(n))*A008578(A080513(n))` -/
def P3191110448721845909.Spec : Prop :=
  ∀ n, P3191110448721845909.a n = A057602 (n + 1)

theorem P3191110448721845909.correct : P3191110448721845909.Spec := by
  intro n
  simp only [A057602, Nat.add_sub_cancel]

end A057602

/-! ## A057602.P15610985379475527035

`A171645(n+2)/2`
-/

namespace A057602.P15610985379475527035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171645 (n + 2) : ℚ) / 2

end

end A057602.P15610985379475527035

namespace A057602

/-- `A171645(n+2)/2` -/
def P15610985379475527035.Spec : Prop :=
  ∀ n, P15610985379475527035.a n = (A057602 (n + 1) : ℚ)

end A057602

/-! ## A057602.P11158765065768409499

`A008578(A080513(n+1))*A008578(A080513(n))`
-/

namespace A057602.P11158765065768409499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A080513 (n + 1)).toNat * A008578 (A080513 n).toNat

end

end A057602.P11158765065768409499

namespace A057602

/-- `A008578(A080513(n+1))*A008578(A080513(n))` -/
def P11158765065768409499.Spec : Prop :=
  ∀ n, P11158765065768409499.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P11753652273128373302

`A008578(A110654(n+3))*A008578(A110654(n)+1)`
-/

namespace A057602.P11753652273128373302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A110654 (n + 3)).toNat * A008578 (A110654 n + 1).toNat

end

end A057602.P11753652273128373302

namespace A057602

/-- `A008578(A110654(n+3))*A008578(A110654(n)+1)` -/
def P11753652273128373302.Spec : Prop :=
  ∀ n, P11753652273128373302.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P3967563890231015475

`A064989(A109763(n+2))*A109763(n+1)`
-/

namespace A057602.P3967563890231015475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A109763 (n + 2)).toNat * A109763 (n + 1)

end

end A057602.P3967563890231015475

namespace A057602

/-- `A064989(A109763(n+2))*A109763(n+1)` -/
def P3967563890231015475.Spec : Prop :=
  ∀ n, P3967563890231015475.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P8919971215192162899

`∩[A036441(n+1), A156759(n+1)]`
-/

namespace A057602.P8919971215192162899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057602.P8919971215192162899

namespace A057602

/-- `∩[A036441(n+1), A156759(n+1)]` -/
def P8919971215192162899.Spec : Prop :=
  ∀ n, (P8919971215192162899.a n : ℤ) = A057602 (n + 1)

end A057602

/-! ## A057602.P12891697733203334904

`A036441(∑[A075526(A004526(n))])`
-/

namespace A057602.P12891697733203334904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057602.P12891697733203334904

namespace A057602

/-- `A036441(∑[A075526(A004526(n))])` -/
def P12891697733203334904.Spec : Prop :=
  ∀ n, P12891697733203334904.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P5386610593862266686

`∩[A076271(n+1), A156759(n+1)]`
-/

namespace A057602.P5386610593862266686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057602.P5386610593862266686

namespace A057602

/-- `∩[A076271(n+1), A156759(n+1)]` -/
def P5386610593862266686.Spec : Prop :=
  ∀ n, (P5386610593862266686.a n : ℤ) = A057602 (n + 1)

end A057602

/-! ## A057602.P12177534458694765190

`p?[A004526(n)]*A008578(A080513(n))`
-/

namespace A057602.P12177534458694765190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008578 (A080513 n).toNat

end

end A057602.P12177534458694765190

namespace A057602

/-- `p?[A004526(n)]*A008578(A080513(n))` -/
def P12177534458694765190.Spec : Prop :=
  ∀ n, P12177534458694765190.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P8437191234807767142

`p?[A110654(n)]*A008578(A080513(n))`
-/

namespace A057602.P8437191234807767142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008578 (A080513 n).toNat

end

end A057602.P8437191234807767142

namespace A057602

/-- `p?[A110654(n)]*A008578(A080513(n))` -/
def P8437191234807767142.Spec : Prop :=
  ∀ n, P8437191234807767142.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P11915050546996299774

`p?[A008619(n)]*A008578(A008619(n+1))`
-/

namespace A057602.P11915050546996299774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008578 (A008619 (n + 1)).toNat

end

end A057602.P11915050546996299774

namespace A057602

/-- `p?[A008619(n)]*A008578(A008619(n+1))` -/
def P11915050546996299774.Spec : Prop :=
  ∀ n, P11915050546996299774.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P14831887873113613830

`p?[A004526(n)]*A008578(A004526(n+3))`
-/

namespace A057602.P14831887873113613830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008578 (A004526 (n + 3)).toNat

end

end A057602.P14831887873113613830

namespace A057602

/-- `p?[A004526(n)]*A008578(A004526(n+3))` -/
def P14831887873113613830.Spec : Prop :=
  ∀ n, P14831887873113613830.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P3498383370099944846

`∩[A143145(n+1), A156759(n+1)]`
-/

namespace A057602.P3498383370099944846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057602.P3498383370099944846

namespace A057602

/-- `∩[A143145(n+1), A156759(n+1)]` -/
def P3498383370099944846.Spec : Prop :=
  ∀ n, (P3498383370099944846.a n : ℤ) = A057602 (n + 1)

end A057602

/-! ## A057602.P4565964789942517270

`A083221(A117142(n+2))`
-/

namespace A057602.P4565964789942517270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (A117142 (n + 2)).toNat

end

end A057602.P4565964789942517270

namespace A057602

/-- `A083221(A117142(n+2))` -/
def P4565964789942517270.Spec : Prop :=
  ∀ n, P4565964789942517270.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P13325974079966390359

`A083221(lt[A028326(n)², 3*n])`
-/

namespace A057602.P13325974079966390359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057602.P13325974079966390359

namespace A057602

/-- `A083221(lt[A028326(n)², 3*n])` -/
def P13325974079966390359.Spec : Prop :=
  ∀ n, P13325974079966390359.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P1390819192580832558

`record[A083221(n+2)/A193592(n+2)]`
-/

namespace A057602.P1390819192580832558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083221 (n + 2) : ℚ) / (A193592 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057602.P1390819192580832558

namespace A057602

/-- `record[A083221(n+2)/A193592(n+2)]` -/
def P1390819192580832558.Spec : Prop :=
  ∀ n, P1390819192580832558.a n = (A057602 (n + 1) : ℚ)

end A057602

/-! ## A057602.P9696660969623407176

`record[(A249741(n+1)+1)/A193592(n+2)]`
-/

namespace A057602.P9696660969623407176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249741 (n + 1) + 1 : ℚ) / (A193592 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057602.P9696660969623407176

namespace A057602

/-- `record[(A249741(n+1)+1)/A193592(n+2)]` -/
def P9696660969623407176.Spec : Prop :=
  ∀ n, P9696660969623407176.a n = (A057602 (n + 1) : ℚ)

end A057602

/-! ## A057602.P11979936928768938248

`A000040(floor(n/2)+1)*A006530(a(n-1))` with `a(0)=2`
-/

namespace A057602.P11979936928768938248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (⌊(n : ℚ) / 2⌋ + 1).toNat * A006530 (a (n - 1)).toNat

end

end A057602.P11979936928768938248

namespace A057602

/-- `A000040(floor(n/2)+1)*A006530(a(n-1))` -/
def P11979936928768938248.Spec : Prop :=
  ∀ n, P11979936928768938248.a n = A057602 (n + 1)

end A057602

/-! ## A057602.P4156046695673807143

`filter[A036441(n+1), A101040(#)]`
-/

namespace A057602.P4156046695673807143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A057602.P4156046695673807143

namespace A057602

/-- `filter[A036441(n+1), A101040(#)]` -/
def P4156046695673807143.Spec : Prop :=
  ∀ n, P4156046695673807143.a n = A057602 (n + 1)

end A057602

/-!
# A057603: Second term of continued fraction for log(n).

The programs for A057603, the canonical program `A057603.P7626372472509598864` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057603 has offset 2).

The definition of A057603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057603.P7626372472509598864

`floor(1/(log(n+2)-floor(log(n+2))))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057603

/-- `floor(1/(log(n+2)-floor(log(n+2))))` -/
def P7626372472509598864.Spec : Prop :=
  ∀ n, P7626372472509598864.a n = A057603 (n + 2)

theorem P7626372472509598864.correct : P7626372472509598864.Spec := by
  intro n
  simp only [A057603, Nat.add_sub_cancel]

end A057603

/-!
# A057604: Primes of the form 4*k^2 + 163.

The programs for A057604, the canonical program `A057604.P13337693770831456801` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057604 has offset 1).

The definition of A057604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057604.P13337693770831456801

`xor(1, p?[163+n²])+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057604

/-- `xor(1, p?[163+n²])+1` -/
def P13337693770831456801.Spec : Prop :=
  ∀ n, (P13337693770831456801.a n : ℤ) = A057604 (n + 1)

theorem P13337693770831456801.correct : P13337693770831456801.Spec := by
  intro n
  simp only [A057604, Nat.add_sub_cancel]

end A057604

/-! ## A057604.P17375468300485454653

`abs(p?[163+n²]-1)+1`
-/

namespace A057604.P17375468300485454653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  163 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1| + 1

end

end A057604.P17375468300485454653

namespace A057604

/-- `abs(p?[163+n²]-1)+1` -/
def P17375468300485454653.Spec : Prop :=
  ∀ n, P17375468300485454653.a n = A057604 (n + 1)

end A057604

/-! ## A057604.P310259223167330950

`p?[163+n²]+and(1, 2*n)`
-/

namespace A057604.P310259223167330950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  163 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.land 1 (2 * n)

end

end A057604.P310259223167330950

namespace A057604

/-- `p?[163+n²]+and(1, 2*n)` -/
def P310259223167330950.Spec : Prop :=
  ∀ n, (P310259223167330950.a n : ℤ) = A057604 (n + 1)

end A057604

/-! ## A057604.P15542327472131365679

`p?[163+n²]/and(1, A250024(n+4))`
-/

namespace A057604.P15542327472131365679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  163 + n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (Int.land 1 (A250024 (n + 4)) : ℚ)

end

end A057604.P15542327472131365679

namespace A057604

/-- `p?[163+n²]/and(1, A250024(n+4))` -/
def P15542327472131365679.Spec : Prop :=
  ∀ n, P15542327472131365679.a n = (A057604 (n + 1) : ℚ)

end A057604

/-! ## A057604.P13630280948355798342

`p?[163+n²]/(1-A008683(4*(n+1)))`
-/

namespace A057604.P13630280948355798342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  163 + n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (1 - A008683 (4 * (n + 1)) : ℚ)

end

end A057604.P13630280948355798342

namespace A057604

/-- `p?[163+n²]/(1-A008683(4*(n+1)))` -/
def P13630280948355798342.Spec : Prop :=
  ∀ n, P13630280948355798342.a n = (A057604 (n + 1) : ℚ)

end A057604

/-! ## A057604.P11780720201725374264

`A183063(A183087(n+1))+p?[163+n²]`
-/

namespace A057604.P11780720201725374264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  163 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A183087 (n + 1)).toNat + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A057604.P11780720201725374264

namespace A057604

/-- `A183063(A183087(n+1))+p?[163+n²]` -/
def P11780720201725374264.Spec : Prop :=
  ∀ n, P11780720201725374264.a n = A057604 (n + 1)

end A057604

/-! ## A057604.P10636165745021970342

`record[A006530(163+n²)]`
-/

namespace A057604.P10636165745021970342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (163 + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057604.P10636165745021970342

namespace A057604

/-- `record[A006530(163+n²)]` -/
def P10636165745021970342.Spec : Prop :=
  ∀ n, P10636165745021970342.a n = A057604 (n + 1)

end A057604

/-!
# A057605: Nonnegative n such that 4*n^2 + 163 is prime.

The programs for A057605, there is no canonical definition to state claims against.
-/

/-! ## A057605.P11357457283297962123

`comp[A000217(n)+20]%A165608(n+1)`
-/

namespace A057605.P11357457283297962123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A165608 (n + 1))

end

end A057605.P11357457283297962123

/-! ## A057605.P12854876107574648369

`comp[A000217(n)+20]*A272867(A127473(n+1))`
-/

namespace A057605.P12854876107574648369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A272867 (A127473 (n + 1)).toNat

end

end A057605.P12854876107574648369

/-! ## A057605.P17138728662404866117

`A001222(A256481(n))*comp[A000217(n)+20]`
-/

namespace A057605.P17138728662404866117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256481 n).toNat * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A057605.P17138728662404866117

/-! ## A057605.P15982866090315843397

`A001222(A186782(n+1))*comp[A000217(n)+20]`
-/

namespace A057605.P15982866090315843397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A186782 (n + 1)).toNat * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A057605.P15982866090315843397

/-! ## A057605.P4309722754761747730

`A014963(A334185(n+1))*comp[A000217(n)+20]`
-/

namespace A057605.P4309722754761747730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A334185 (n + 1)).toNat * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A057605.P4309722754761747730

/-!
# A057608: Maximal size of binary code of length n that corrects one transposition (end-around transposition not included).

The programs for A057608, there is no canonical definition to state claims against.
-/

/-! ## A057608.P15365585474777982882

`A181391(n+1)+A010101(n+1)`
-/

namespace A057608.P15365585474777982882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + A010101 (n + 1)

end

end A057608.P15365585474777982882

/-! ## A057608.P5551782659219872175

`A056813(A025192(n))+A048766(n)`
-/

namespace A057608.P5551782659219872175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A025192 n).toNat + A048766 n

end

end A057608.P5551782659219872175

/-! ## A057608.P2245141974550149376

`A320921(n)+A055091(A000217(n))`
-/

namespace A057608.P2245141974550149376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n + A055091 (A000217 n).toNat

end

end A057608.P2245141974550149376

/-!
# A057609: Powers of a prime lucky number (A031157) but excluding lucky numbers (A000959).

The programs for A057609, there is no canonical definition to state claims against.
-/

/-! ## A057609.P1972713690307598282

`A319163(A325545(n+3)+3)`
-/

namespace A057609.P1972713690307598282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319163 (A325545 (n + 3) + 3).toNat

end

end A057609.P1972713690307598282

/-!
# A057612: Numbers that are both Mersenne numbers (A001348) and lucky numbers (A000959).

The programs for A057612, there is no canonical definition to state claims against.
-/

/-! ## A057612.P4288273644138726931

`2^p?[comp[∑[∑[2^n]]]]-1`
-/

namespace A057612.P4288273644138726931
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A057612.P4288273644138726931

/-! ## A057612.P17262510582738732471

`A001348(comp[5*n])`
-/

namespace A057612.P17262510582738732471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A057612.P17262510582738732471

/-! ## A057612.P11960552282688731191

`A006515(comp[5*n])`
-/

namespace A057612.P11960552282688731191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006515 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A057612.P11960552282688731191

/-! ## A057612.P12938980639767225569

`2^A042990(n)-1`
-/

namespace A057612.P12938980639767225569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A042990 n : ℤ) - 1

end

end A057612.P12938980639767225569

/-!
# A057613: Numbers that are both lucky numbers (A000959) and of form 2^k-1 (A000225).

The programs for A057613, there is no canonical definition to state claims against.
-/

/-! ## A057613.P15081366364868342518

`∩[A000225(n), A000959(n+1)]`
-/

namespace A057613.P15081366364868342518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057613.P15081366364868342518

/-! ## A057613.P12705579393243668994

`∩[A000959(n+1), A052955(n)]`
-/

namespace A057613.P12705579393243668994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057613.P12705579393243668994

/-! ## A057613.P7395775369389578183

`∩[A000959(n+1), A075427(n)]`
-/

namespace A057613.P7395775369389578183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057613.P7395775369389578183

/-! ## A057613.P2813001061221940298

`∩[A000959(n+1), A088163(n)]`
-/

namespace A057613.P2813001061221940298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057613.P2813001061221940298

/-! ## A057613.P14701772875742932217

`∩[A000959(n+1), A097110(n)]`
-/

namespace A057613.P14701772875742932217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057613.P14701772875742932217

/-!
# A057614: a(n+1) = a(n)/2 if 2|a(n), a(n)/3 if 3|a(n), a(n)/5 if 5|a(n), a(n)/7 if 7|a(n), otherwise 11*a(n)+1.

The programs for A057614, there is no canonical definition to state claims against.
-/

/-! ## A057614.P12819839099642303826

`filter[A037103(n+1), A189576(#)]`
-/

namespace A057614.P12819839099642303826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189576 (f1 j).toNat = 1) n)

end

end A057614.P12819839099642303826

/-!
# A057615: ATS: Add Then Sort (i.e., double previous term and then sort digits).

The programs for A057615, there is no canonical definition to state claims against.
-/

/-! ## A057615.P7320143989665895488

`A004185(2*a(n-1))` with `a(0)=1`
-/

namespace A057615.P7320143989665895488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (2 * a (n - 1)).toNat

end

end A057615.P7320143989665895488

/-!
# A057616: Lucky numbers that are the product of the first m lucky numbers for some m.

The programs for A057616, there is no canonical definition to state claims against.
-/

/-! ## A057616.P12294174233999133563

`A256625(comp[5*(n-10)])`
-/

namespace A057616.P12294174233999133563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) - 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256625 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A057616.P12294174233999133563

/-!
# A057617: Order of subgroup bP_{m+1} of group Theta_m of h-cobordism classes of smooth homotopy m-spheres defined by those homotopy m-spheres which bound parallelizable (m+1)-manifolds, where m = 2n+1.

The programs for A057617, there is no canonical definition to state claims against.
-/

/-! ## A057617.P7551239801296523267

`A187595(Δ[n²])`
-/

namespace A057617.P7551239801296523267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187595 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057617.P7551239801296523267

/-! ## A057617.P11976390164653655515

`A020985(n)²*A187595(2*n+1)`
-/

namespace A057617.P11976390164653655515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A187595 (2 * n + 1)

end

end A057617.P11976390164653655515

/-! ## A057617.P7041857557633431648

`A187595(2*n+1)*A187595(2*(n+1))`
-/

namespace A057617.P7041857557633431648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187595 (2 * n + 1) * A187595 (2 * (n + 1))

end

end A057617.P7041857557633431648

/-! ## A057617.P15869569446586930862

`A001676(2*n+1)/A187717(2*n+1)`
-/

namespace A057617.P15869569446586930862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001676 (2 * n + 1) : ℚ) / (A187717 (2 * n + 1) : ℚ)

end

end A057617.P15869569446586930862

/-! ## A057617.P8239479089952561674

`A187595(2*n+1)+A083527(A136480(n))`
-/

namespace A057617.P8239479089952561674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187595 (2 * n + 1) + A083527 (A136480 n).toNat

end

end A057617.P8239479089952561674

/-!
# A057619: Initial prime in first sequence of n primes congruent to 3 modulo 4.

The programs for A057619, there is no canonical definition to state claims against.
-/

/-! ## A057619.P14790720260413248174

`A055624(A022294(n+1)-3)`
-/

namespace A057619.P14790720260413248174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055624 (A022294 (n + 1) - 3).toNat

end

end A057619.P14790720260413248174

/-!
# A057620: Initial prime in first sequence of n consecutive primes congruent to 1 modulo 6.

The programs for A057620, there is no canonical definition to state claims against.
-/

/-! ## A057620.P13852965255784911237

`A001748(A247816(n+1))/3`
-/

namespace A057620.P13852965255784911237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A247816 (n + 1)).toNat : ℚ) / 3

end

end A057620.P13852965255784911237

/-! ## A057620.P11925051716385460278

`A055625(A077082(n+1))`
-/

namespace A057620.P11925051716385460278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055625 (A077082 (n + 1)).toNat

end

end A057620.P11925051716385460278

/-! ## A057620.P17580837385109237340

`A000040(A247816(n+1))`
-/

namespace A057620.P17580837385109237340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247816 (n + 1)).toNat

end

end A057620.P17580837385109237340

/-!
# A057621: Initial prime in first sequence of n primes congruent to 2 modulo 3.

The programs for A057621, there is no canonical definition to state claims against.
-/

/-! ## A057621.P1950277411409932831

`or((a(floor(n/2))+n)%2, A057622(n+1))` with `a(0)=2`
-/

namespace A057621.P1950277411409932831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (Int.tmod (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2) (A057622 (n + 1))

end

end A057621.P1950277411409932831

/-! ## A057621.P1148866681284881236

`A057622((n+1)%(a(and(n, n-1))+and(n, -n)²))` with `a(0)=2`
-/

namespace A057621.P1148866681284881236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057622 (Int.tmod (n + 1 : ℤ) (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + Int.land (n : ℤ) (-(n : ℤ)) ^ 2)).toNat

end

end A057621.P1148866681284881236

/-! ## A057621.P17098156687946243491

`A057622(n+1)%A061173(n)`
-/

namespace A057621.P17098156687946243491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057622 (n + 1)) (A061173 n)

end

end A057621.P17098156687946243491

/-! ## A057621.P467990265720168718

`floor(A057622(n+1)/A054977(n))`
-/

namespace A057621.P467990265720168718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057622 (n + 1) : ℚ) / (A054977 n : ℚ)⌋

end

end A057621.P467990265720168718

/-! ## A057621.P2317817337700359376

`A057622(n+1)-3*A000007(n)`
-/

namespace A057621.P2317817337700359376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057622 (n + 1) - 3 * A000007 n

end

end A057621.P2317817337700359376

/-!
# A057622: Initial prime in first sequence of n consecutive primes congruent to 5 modulo 6.

The programs for A057622, there is no canonical definition to state claims against.
-/

/-! ## A057622.P2819642746428821749

`A000040(A247967(n+1))`
-/

namespace A057622.P2819642746428821749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247967 (n + 1)).toNat

end

end A057622.P2819642746428821749

/-! ## A057622.P6656308724765226317

`A057621(n+1)+C(3, (n+1)²)`
-/

namespace A057622.P6656308724765226317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057621 (n + 1) + (Nat.choose 3 ((n + 1) ^ 2) : ℤ)

end

end A057622.P6656308724765226317

/-! ## A057622.P10540442580707083485

`A057621(n+1)+6-A040006(n)`
-/

namespace A057622.P10540442580707083485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057621 (n + 1) + (6 - A040006 n)

end

end A057622.P10540442580707083485

/-! ## A057622.P7852365497610683230

`A251733(floor(1/(n+1)))+A057621(n+1)`
-/

namespace A057622.P7852365497610683230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251733 ⌊1 / (n + 1 : ℚ)⌋.toNat + A057621 (n + 1)

end

end A057622.P7852365497610683230

/-!
# A057623: a(n) = n! * (sum of reciprocals of all parts in unrestricted partitions of n).

The programs for A057623, there is no canonical definition to state claims against.
-/

/-! ## A057623.P10059433158481200194

`abs(A234937(A000124(n+1)))`
-/

namespace A057623.P10059433158481200194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A234937 (A000124 (n + 1)).toNat|

end

end A057623.P10059433158481200194

/-! ## A057623.P5663560552363011927

`record[gcd(A234937(n+2), A294289(n))]`
-/

namespace A057623.P5663560552363011927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A234937 (n + 2)) (A294289 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057623.P5663560552363011927

/-! ## A057623.P16451922068499837456

`lcm(A172356(n), A234937(A000124(n+1)))`
-/

namespace A057623.P16451922068499837456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A172356 n) (A234937 (A000124 (n + 1)).toNat)

end

end A057623.P16451922068499837456

/-! ## A057623.P16230302619500541368

`A000007(n+1)-A234937(A000124(n+1))`
-/

namespace A057623.P16230302619500541368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A234937 (A000124 (n + 1)).toNat

end

end A057623.P16230302619500541368

/-! ## A057623.P8214381392208416785

`A008683(A051698(n))*A234937(A000124(n+1))`
-/

namespace A057623.P8214381392208416785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat * A234937 (A000124 (n + 1)).toNat

end

end A057623.P8214381392208416785

/-! ## A057623.P10115887573596323398

`A008683(A001248(n+1))-A234937(A000124(n+1))`
-/

namespace A057623.P10115887573596323398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001248 (n + 1)).toNat - A234937 (A000124 (n + 1)).toNat

end

end A057623.P10115887573596323398

/-! ## A057623.P17710058050767365798

`A008683(A001749(n+1))-A234937(A000124(n+1))`
-/

namespace A057623.P17710058050767365798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001749 (n + 1)).toNat - A234937 (A000124 (n + 1)).toNat

end

end A057623.P17710058050767365798

/-! ## A057623.P13214528435754751925

`A008683(A015919(n+2))*A234937(A000124(n+1))`
-/

namespace A057623.P13214528435754751925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A015919 (n + 2)).toNat * A234937 (A000124 (n + 1)).toNat

end

end A057623.P13214528435754751925

/-! ## A057623.P3423725515232952437

`A008683(A033250(n+2))*A234937(A000124(n+1))`
-/

namespace A057623.P3423725515232952437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A033250 (n + 2)).toNat * A234937 (A000124 (n + 1)).toNat

end

end A057623.P3423725515232952437

/-! ## A057623.P13887745678085938883

`A234937(A000124(n+1))/A008683(A015919(n+3))`
-/

namespace A057623.P13887745678085938883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234937 (A000124 (n + 1)).toNat : ℚ) / (A008683 (A015919 (n + 3)).toNat : ℚ)

end

end A057623.P13887745678085938883

/-!
# A057624: Initial prime in first sequence of n primes congruent to 1 modulo 4.

The programs for A057624, there is no canonical definition to state claims against.
-/

/-! ## A057624.P3172842729948538352

`A376396(∑[n]+1)`
-/

namespace A057624.P3172842729948538352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A057624.P3172842729948538352

/-! ## A057624.P11235081946858417059

`A000040(A363016(n+1))`
-/

namespace A057624.P11235081946858417059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A363016 (n + 1)).toNat

end

end A057624.P11235081946858417059

/-! ## A057624.P3111720947287475332

`or(1, A376396(A000124(n)))`
-/

namespace A057624.P3111720947287475332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A376396 (A000124 n).toNat)

end

end A057624.P3111720947287475332

/-! ## A057624.P1897134791286937563

`A008578(A363016(n+1)+1)`
-/

namespace A057624.P1897134791286937563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A363016 (n + 1) + 1).toNat

end

end A057624.P1897134791286937563

/-! ## A057624.P12801729699598084174

`A045344(A363016(n+1)-1)`
-/

namespace A057624.P12801729699598084174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A363016 (n + 1) - 1).toNat

end

end A057624.P12801729699598084174

/-!
# A057625: a(n) = n! * sum 1/k! where the sum is over all positive integers k that divide n.

The programs for A057625, the canonical program `A057625.P18040819122940717939` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057625 has offset 1).

The definition of A057625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057625.P18040819122940717939

`(n+1)!*∑{d}[n+1, 1/#!]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057625

/-- `(n+1)!*∑{d}[n+1, 1/#!]` -/
def P18040819122940717939.Spec : Prop :=
  ∀ n, P18040819122940717939.a n = (A057625 (n + 1) : ℚ)

end A057625

/-! ## A057625.P742007272924654161

`∑{d}[n+1, (n+1)!/#!]`
-/

namespace A057625.P742007272924654161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial (n + 1) : ℚ) / (Nat.factorial d : ℚ)

end

end A057625.P742007272924654161

namespace A057625

/-- `∑{d}[n+1, (n+1)!/#!]` -/
def P742007272924654161.Spec : Prop :=
  ∀ n, P742007272924654161.a n = (A057625 (n + 1) : ℚ)

end A057625

/-! ## A057625.P14086444743385407369

`2*A330254(n+1)-A132958(n+1)`
-/

namespace A057625.P14086444743385407369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330254 (n + 1) - A132958 (n + 1)

end

end A057625.P14086444743385407369

namespace A057625

/-- `2*A330254(n+1)-A132958(n+1)` -/
def P14086444743385407369.Spec : Prop :=
  ∀ n, P14086444743385407369.a n = A057625 (n + 1)

end A057625

/-!
# A057626: Initial prime in first sequence of n primes congruent to 2 modulo 5.

The programs for A057626, there is no canonical definition to state claims against.
-/

/-! ## A057626.P16517281384658927981

`A068150(n+1)+val(a(n-1), 32)` with `a(0)=2`
-/

namespace A057626.P16517281384658927981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A068150 (n + 1) + (SequenceMachineLib.valuation (a (n - 1)).toNat 32 : ℤ)

end

end A057626.P16517281384658927981

/-! ## A057626.P3679392849341345746

`A068150(n+1)%Δ[A024087(n)]`
-/

namespace A057626.P3679392849341345746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068150 (n + 1)) (f1 (n + 1) - f1 n)

end

end A057626.P3679392849341345746

/-! ## A057626.P17557220003836515830

`A068150(n+1)-5*A000007(n)`
-/

namespace A057626.P17557220003836515830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068150 (n + 1) - 5 * A000007 n

end

end A057626.P17557220003836515830

/-! ## A057626.P5483498099889893761

`and(or(2, A057428(n)), A068150(n+1))`
-/

namespace A057626.P5483498099889893761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor 2 (A057428 n)) (A068150 (n + 1))

end

end A057626.P5483498099889893761

/-! ## A057626.P14323877630817037484

`floor(A068150(n+1)/A014963(9*n+3))`
-/

namespace A057626.P14323877630817037484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068150 (n + 1) : ℚ) / (A014963 (9 * n + 3) : ℚ)⌋

end

end A057626.P14323877630817037484

/-!
# A057627: Number of nonsquarefree numbers not exceeding n.

The programs for A057627, the canonical program `A057627.P17607436213288797797` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057627 has offset 1).

The definition of A057627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057627.P17607436213288797797

`n+1-A013928(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057627

/-- `n+1-A013928(n+2)` -/
def P17607436213288797797.Spec : Prop :=
  ∀ n, P17607436213288797797.a n = A057627 (n + 1)

theorem P17607436213288797797.correct : P17607436213288797797.Spec := by
  intro n
  simp only [A057627, Nat.add_sub_cancel]

end A057627

/-! ## A057627.P6133541114321204040

`∑[floor(atan(∏{e}[n+1, #]))]`
-/

namespace A057627.P6133541114321204040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P6133541114321204040

namespace A057627

/-- `∑[floor(atan(∏{e}[n+1, #]))]` -/
def P6133541114321204040.Spec : Prop :=
  ∀ n, P6133541114321204040.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P6283068793687738829

`∑[C(n, C(∏{p}[n+1, #], n))]`
-/

namespace A057627.P6283068793687738829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P6283068793687738829

namespace A057627

/-- `∑[C(n, C(∏{p}[n+1, #], n))]` -/
def P6283068793687738829.Spec : Prop :=
  ∀ n, (P6283068793687738829.a n : ℤ) = A057627 (n + 1)

end A057627

/-! ## A057627.P5306445132616793998

`∑[n²%((n+1)/∏{p}[n+1, #])]`
-/

namespace A057627.P5306445132616793998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P5306445132616793998

namespace A057627

/-- `∑[n²%((n+1)/∏{p}[n+1, #])]` -/
def P5306445132616793998.Spec : Prop :=
  ∀ n, P5306445132616793998.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P15470655454183855040

`∑[Δ[n^3]%∏{p}[n+1, #^val(n+1, #²)]]`
-/

namespace A057627.P15470655454183855040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ((∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P15470655454183855040

namespace A057627

/-- `∑[Δ[n^3]%∏{p}[n+1, #^val(n+1, #²)]]` -/
def P15470655454183855040.Spec : Prop :=
  ∀ n, P15470655454183855040.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P15586029015345515521

`∑[(2*n+3)%∏{p}[n+1, #^val(n+1, #²)]²]`
-/

namespace A057627.P15586029015345515521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) % (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P15586029015345515521

namespace A057627

/-- `∑[(2*n+3)%∏{p}[n+1, #^val(n+1, #²)]²]` -/
def P15586029015345515521.Spec : Prop :=
  ∀ n, (P15586029015345515521.a n : ℤ) = A057627 (n + 1)

end A057627

/-! ## A057627.P11266545331631399559

`∑[A107078(n+1)]`
-/

namespace A057627.P11266545331631399559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P11266545331631399559

namespace A057627

/-- `∑[A107078(n+1)]` -/
def P11266545331631399559.Spec : Prop :=
  ∀ n, P11266545331631399559.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P9408834834624660333

`∑[log2(A007424(n+1))]`
-/

namespace A057627.P9408834834624660333
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007424 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P9408834834624660333

namespace A057627

/-- `∑[log2(A007424(n+1))]` -/
def P9408834834624660333.Spec : Prop :=
  ∀ n, P9408834834624660333.a n = (A057627 (n + 1) : ℝ)

end A057627

/-! ## A057627.P3592191767680468847

`∑[char[A105570(n)-1]]`
-/

namespace A057627.P3592191767680468847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P3592191767680468847

namespace A057627

/-- `∑[char[A105570(n)-1]]` -/
def P3592191767680468847.Spec : Prop :=
  ∀ n, (P3592191767680468847.a n : ℤ) = A057627 (n + 1)

end A057627

/-! ## A057627.P7395559250948242513

`∑[1-A008966(n+1)]`
-/

namespace A057627.P7395559250948242513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P7395559250948242513

namespace A057627

/-- `∑[1-A008966(n+1)]` -/
def P7395559250948242513.Spec : Prop :=
  ∀ n, P7395559250948242513.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P14405004716480653148

`∑[A087049(n+1)]-1`
-/

namespace A057627.P14405004716480653148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057627.P14405004716480653148

namespace A057627

/-- `∑[A087049(n+1)]-1` -/
def P14405004716480653148.Spec : Prop :=
  ∀ n, P14405004716480653148.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P15416707278543436379

`∑[A380454(4*(n+1))]`
-/

namespace A057627.P15416707278543436379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380454 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P15416707278543436379

namespace A057627

/-- `∑[A380454(4*(n+1))]` -/
def P15416707278543436379.Spec : Prop :=
  ∀ n, P15416707278543436379.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P5602400935766451908

`∑[floor(cos(A008683(n+1)))]`
-/

namespace A057627.P5602400935766451908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A008683 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P5602400935766451908

namespace A057627

/-- `∑[floor(cos(A008683(n+1)))]` -/
def P5602400935766451908.Spec : Prop :=
  ∀ n, P5602400935766451908.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P1171316143158966900

`n+2-A107079(n+2)`
-/

namespace A057627.P1171316143158966900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A107079 (n + 2)

end

end A057627.P1171316143158966900

namespace A057627

/-- `n+2-A107079(n+2)` -/
def P1171316143158966900.Spec : Prop :=
  ∀ n, P1171316143158966900.a n = A057627 (n + 1)

theorem P1171316143158966900.correct : P1171316143158966900.Spec := by
  intro n
  simp only [A057627, Nat.add_sub_cancel, A057627.P1171316143158966900.a, A057627.P17607436213288797797.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A107079, A107079.P8145768499534566836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057627

/-! ## A057627.P17739019914386474042

`A345743(n+1)%(n+1)`
-/

namespace A057627.P17739019914386474042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345743 (n + 1)) (n + 1 : ℤ)

end

end A057627.P17739019914386474042

namespace A057627

/-- `A345743(n+1)%(n+1)` -/
def P17739019914386474042.Spec : Prop :=
  ∀ n, P17739019914386474042.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P14432427419831774590

`∑[1-abs(A080323(n+1))]`
-/

namespace A057627.P14432427419831774590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A080323 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P14432427419831774590

namespace A057627

/-- `∑[1-abs(A080323(n+1))]` -/
def P14432427419831774590.Spec : Prop :=
  ∀ n, P14432427419831774590.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P3217042163146956932

`∑[1-abs(A157657(n+1))]`
-/

namespace A057627.P3217042163146956932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A157657 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P3217042163146956932

namespace A057627

/-- `∑[1-abs(A157657(n+1))]` -/
def P3217042163146956932.Spec : Prop :=
  ∀ n, P3217042163146956932.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P1060488397481043983

`∑[1-abs(A359155(n+1))]`
-/

namespace A057627.P1060488397481043983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A359155 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P1060488397481043983

namespace A057627

/-- `∑[1-abs(A359155(n+1))]` -/
def P1060488397481043983.Spec : Prop :=
  ∀ n, P1060488397481043983.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P13015960662784795116

`∑[1-A069158(n+1)²]`
-/

namespace A057627.P13015960662784795116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A069158 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057627.P13015960662784795116

namespace A057627

/-- `∑[1-A069158(n+1)²]` -/
def P13015960662784795116.Spec : Prop :=
  ∀ n, P13015960662784795116.a n = A057627 (n + 1)

end A057627

/-! ## A057627.P3463633321524030255

`A379771(n+1)+A069637(n+1)`
-/

namespace A057627.P3463633321524030255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379771 (n + 1) + A069637 (n + 1)

end

end A057627.P3463633321524030255

namespace A057627

/-- `A379771(n+1)+A069637(n+1)` -/
def P3463633321524030255.Spec : Prop :=
  ∀ n, P3463633321524030255.a n = A057627 (n + 1)

end A057627

/-!
# A057628: Primes such that replacing each digit d with d copies of the digit d produces a prime. Zeros are not allowed.

The programs for A057628, there is no canonical definition to state claims against.
-/

/-! ## A057628.P7081289055815123882

`∩[A038618(n+1), A057630(n+1)]`
-/

namespace A057628.P7081289055815123882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057628.P7081289055815123882

/-! ## A057628.P7467420673848321995

`∩[A057630(n+1), A195943(n+1)]`
-/

namespace A057628.P7467420673848321995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057628.P7467420673848321995

/-! ## A057628.P6482404652302895931

`∩[A057630(n+1), A392375(n+1)]`
-/

namespace A057628.P6482404652302895931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057628.P6482404652302895931

/-! ## A057628.P16140989376702424609

`∩[A057630(n+1), A061116(n+1)]`
-/

namespace A057628.P16140989376702424609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057628.P16140989376702424609

/-! ## A057628.P11755858407140189098

`filter[A057630(n+1), A209929(#)]`
-/

namespace A057628.P11755858407140189098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A057628.P11755858407140189098

/-! ## A057628.P11519414675025041153

`∩[A052382(n+1), A057630(n+1)]`
-/

namespace A057628.P11519414675025041153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057628.P11519414675025041153

/-! ## A057628.P1189271150723700257

`record[A004719(A057630(n+1))]`
-/

namespace A057628.P1189271150723700257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A057630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057628.P1189271150723700257

/-! ## A057628.P8494929370927601258

`filter[A057630(n+1), A168046(#)]`
-/

namespace A057628.P8494929370927601258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A057628.P8494929370927601258

/-!
# A057629: Number of alternating sign 2n X 2n matrices invariant under flips in both diagonals.

The programs for A057629, there is no canonical definition to state claims against.
-/

/-! ## A057629.P12936296323387786240

`A005162(2*(n+1))`
-/

namespace A057629.P12936296323387786240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005162 (2 * (n + 1))

end

end A057629.P12936296323387786240

/-! ## A057629.P16665830576349598896

`lcm(2, A005162(record[2-xor(1, -n)]))`
-/

namespace A057629.P16665830576349598896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A057629.P16665830576349598896

/-! ## A057629.P8381044911834961371

`record[A005162(A013942(n+1))]`
-/

namespace A057629.P8381044911834961371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005162 (A013942 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057629.P8381044911834961371

/-! ## A057629.P8787744648178005670

`record[A005162(A014681(n+1))]`
-/

namespace A057629.P8787744648178005670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005162 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057629.P8787744648178005670

/-!
# A057630: Primes such that replacing each digit d with d copies of the digit d produces a prime. Zeros are allowed.

The programs for A057630, there is no canonical definition to state claims against.
-/

/-! ## A057630.P378755176182371943

`p?[A232764(n+1)]`
-/

namespace A057630.P378755176182371943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057630.P378755176182371943

/-! ## A057630.P578996085786525946

`filter[A232764(n+1), A010051(#)]`
-/

namespace A057630.P578996085786525946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A057630.P578996085786525946

/-! ## A057630.P12100930294445292029

`filter[A232764(n+1), A080339(#)]`
-/

namespace A057630.P12100930294445292029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A057630.P12100930294445292029

/-! ## A057630.P5223053258199153602

`filter[A232764(n+1), A080545(#)]`
-/

namespace A057630.P5223053258199153602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A057630.P5223053258199153602

/-! ## A057630.P7987775158743837564

`filter[A232764(n+1), A171387(#)]`
-/

namespace A057630.P7987775158743837564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A057630.P7987775158743837564

/-!
# A057635: a(n) is the largest m such that phi(m) = n, where phi is Euler's totient function = A000010, or a(n) = 0 if no such m exists.

The programs for A057635, there is no canonical definition to state claims against.
-/

/-! ## A057635.P11210727447241316702

`A066900(n+1)*A264739(n+1)`
-/

namespace A057635.P11210727447241316702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066900 (n + 1) * A264739 (n + 1)

end

end A057635.P11210727447241316702

/-! ## A057635.P7387215552616683787

`A264739(n+1)*A319048(n+1)`
-/

namespace A057635.P7387215552616683787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1) * A319048 (n + 1)

end

end A057635.P7387215552616683787

/-! ## A057635.P12980248650517515519

`lcm(A066900(n+1), A323169(n+1))`
-/

namespace A057635.P12980248650517515519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066900 (n + 1)) (A323169 (n + 1))

end

end A057635.P12980248650517515519

/-! ## A057635.P13097980106927002293

`lcm(2*A323169(n+1), A319048(n+1))`
-/

namespace A057635.P13097980106927002293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A323169 (n + 1)) (A319048 (n + 1))

end

end A057635.P13097980106927002293

/-! ## A057635.P18162609014451501105

`floor(atan(A014197(n+1)))*A319048(n+1)`
-/

namespace A057635.P18162609014451501105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A014197 (n + 1) : ℝ)⌋ * A319048 (n + 1)

end

end A057635.P18162609014451501105

/-! ## A057635.P15435971793635417311

`A006511(A264810(n+1))*A264739(n+1)`
-/

namespace A057635.P15435971793635417311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (A264810 (n + 1)).toNat * A264739 (n + 1)

end

end A057635.P15435971793635417311

/-! ## A057635.P10788129538517935267

`A006511(∑[A264739(n+1)])*A264739(n+1)`
-/

namespace A057635.P10788129538517935267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A264739 (n + 1)

end

end A057635.P10788129538517935267

/-! ## A057635.P1246117684331655537

`A319048(n+1)%A004011(A049283(n+1))`
-/

namespace A057635.P1246117684331655537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319048 (n + 1)) (A004011 (A049283 (n + 1)).toNat)

end

end A057635.P1246117684331655537

/-! ## A057635.P12575512916645768599

`A028476(A061026(n+1))*A264739(n+1)`
-/

namespace A057635.P12575512916645768599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A061026 (n + 1)).toNat * A264739 (n + 1)

end

end A057635.P12575512916645768599

/-!
# A057637: a(n) is the largest number k such that sigma(k) = n, where sigma is the sum of divisors function A000203, or 0 if no such k exists.

The programs for A057637, there is no canonical definition to state claims against.
-/

/-! ## A057637.P10534131378705814129

`A085790(∑[A054973(n+1)])*A175192(n+1)`
-/

namespace A057637.P10534131378705814129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A175192 (n + 1)

end

end A057637.P10534131378705814129

/-! ## A057637.P7189267697173148702

`A175192(n+1)*A329821(∑[A175192(n+1)])`
-/

namespace A057637.P7189267697173148702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1) * A329821 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057637.P7189267697173148702

/-! ## A057637.P7663114412042868607

`A299762(∑[∏{d}[A054973(n+1), #]])`
-/

namespace A057637.P7663114412042868607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057637.P7663114412042868607

/-! ## A057637.P6047348872610005580

`A299762(∑[∏{p}[A054973(n+1), #]])`
-/

namespace A057637.P6047348872610005580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057637.P6047348872610005580

/-! ## A057637.P15163258615658655942

`A299762(∑[A006530(A054973(n+1)!)])`
-/

namespace A057637.P15163258615658655942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A054973 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299762 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057637.P15163258615658655942

/-!
# A057639: First differences of zero-sites (A028442) of Mertens's function A002321.

The programs for A057639, the canonical program `A057639.P1267725815179592104` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057639 has offset 1).

The definition of A057639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028442, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057639.P1267725815179592104

`A028442(n+2)-A028442(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057639

/-- `A028442(n+2)-A028442(n+1)` -/
def P1267725815179592104.Spec : Prop :=
  ∀ n, P1267725815179592104.a n = A057639 (n + 1)

theorem P1267725815179592104.correct : P1267725815179592104.Spec := by
  intro n
  simp only [A057639, Nat.add_sub_cancel]

end A057639

/-! ## A057639.P3942939135156820615

`Δ[A028442(n+1)]`
-/

namespace A057639.P3942939135156820615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057639.P3942939135156820615

namespace A057639

/-- `Δ[A028442(n+1)]` -/
def P3942939135156820615.Spec : Prop :=
  ∀ n, P3942939135156820615.a n = A057639 (n + 1)

theorem P3942939135156820615.correct : P3942939135156820615.Spec := by
  intro n
  simp only [A057639, Nat.add_sub_cancel, A057639.P3942939135156820615.f1, A057639.P3942939135156820615.a, A057639.P1267725815179592104.a, SequenceMachineLib.memo_apply]

end A057639

/-! ## A057639.P4711107865890623485

`Δ[A100306(n+2)]`
-/

namespace A057639.P4711107865890623485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057639.P4711107865890623485

namespace A057639

/-- `Δ[A100306(n+2)]` -/
def P4711107865890623485.Spec : Prop :=
  ∀ n, P4711107865890623485.a n = A057639 (n + 1)

end A057639

/-! ## A057639.P15190238520333592758

`A100306(n+3)-A100306(n+2)`
-/

namespace A057639.P15190238520333592758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 3) - A100306 (n + 2)

end

end A057639.P15190238520333592758

namespace A057639

/-- `A100306(n+3)-A100306(n+2)` -/
def P15190238520333592758.Spec : Prop :=
  ∀ n, P15190238520333592758.a n = A057639 (n + 1)

end A057639

/-! ## A057639.P13958328135797902453

`Δ[eq[0, A008683(n+2)+a(n-1)]]` with `a(0)=0`
-/

namespace A057639.P13958328135797902453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  A008683 (n + 2) + f3 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A057639.P13958328135797902453

namespace A057639

/-- `Δ[eq[0, A008683(n+2)+a(n-1)]]` -/
def P13958328135797902453.Spec : Prop :=
  ∀ n, P13958328135797902453.a n = A057639 (n + 1)

end A057639

/-! ## A057639.P1239778879546672502

`Δ[A062982(n+2)]`
-/

namespace A057639.P1239778879546672502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057639.P1239778879546672502

namespace A057639

/-- `Δ[A062982(n+2)]` -/
def P1239778879546672502.Spec : Prop :=
  ∀ n, P1239778879546672502.a n = A057639 (n + 1)

end A057639

/-! ## A057639.P1951449524419997213

`A062982(n+3)-A062982(n+2)`
-/

namespace A057639.P1951449524419997213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 3) - A062982 (n + 2)

end

end A057639.P1951449524419997213

namespace A057639

/-- `A062982(n+3)-A062982(n+2)` -/
def P1951449524419997213.Spec : Prop :=
  ∀ n, P1951449524419997213.a n = A057639 (n + 1)

end A057639

/-! ## A057639.P6359888493166360550

`Δ[eq[0, A002321(n+1)]]`
-/

namespace A057639.P6359888493166360550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A057639.P6359888493166360550

namespace A057639

/-- `Δ[eq[0, A002321(n+1)]]` -/
def P6359888493166360550.Spec : Prop :=
  ∀ n, P6359888493166360550.a n = A057639 (n + 1)

end A057639

/-! ## A057639.P17769741639475858507

`Δ[eq[1, a(n-1)-A157657(n+1)]]` with `a(0)=2`
-/

namespace A057639.P17769741639475858507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) - A157657 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A057639.P17769741639475858507

namespace A057639

/-- `Δ[eq[1, a(n-1)-A157657(n+1)]]` -/
def P17769741639475858507.Spec : Prop :=
  ∀ n, P17769741639475858507.a n = A057639 (n + 1)

end A057639

/-!
# A057640: a(n) = floor(H(n) + exp(H(n))*log(H(n))), where H(n) = Sum_{k=1..n} 1/k.

The programs for A057640, there is no canonical definition to state claims against.
-/

/-! ## A057640.P9810467932757261908

`A353130(n+1)+1+n`
-/

namespace A057640.P9810467932757261908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353130 (n + 1) + 1 + (n : ℤ)

end

end A057640.P9810467932757261908

/-! ## A057640.P15643444046147326132

`A057641(n+1)+∑{d}[n+1, #]`
-/

namespace A057640.P15643444046147326132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A057640.P15643444046147326132

/-! ## A057640.P13881616220763079161

`A057641(n+1)+A000203(n+1)`
-/

namespace A057640.P13881616220763079161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + A000203 (n + 1)

end

end A057640.P13881616220763079161

/-! ## A057640.P15642282719596313653

`A245092(2*n+1)+A057641(n+1)`
-/

namespace A057640.P15642282719596313653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + A057641 (n + 1)

end

end A057640.P15642282719596313653

/-! ## A057640.P9983789395353894290

`A057641(n+1)+A074400(n+1)/2`
-/

namespace A057640.P9983789395353894290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057641 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A057640.P9983789395353894290

/-! ## A057640.P1899750950823522418

`n+1+A057641(n+1)+A001065(n+1)`
-/

namespace A057640.P1899750950823522418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A057641 (n + 1) + A001065 (n + 1))

end

end A057640.P1899750950823522418

/-! ## A057640.P2978968768159610574

`A057641(n+1)+A079527(n+1)-A079526(n+1)`
-/

namespace A057640.P2978968768159610574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + (A079527 (n + 1) - A079526 (n + 1))

end

end A057640.P2978968768159610574

/-! ## A057640.P6371290900985763822

`A000093(n+1)+A057641(n+1)-A055682(n+1)`
-/

namespace A057640.P6371290900985763822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1) + (A057641 (n + 1) - A055682 (n + 1))

end

end A057640.P6371290900985763822

/-! ## A057640.P14181814269615047817

`A057641(n+1)+A060903(n+1)-A058208(n+1)`
-/

namespace A057640.P14181814269615047817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + (A060903 (n + 1) - A058208 (n + 1))

end

end A057640.P14181814269615047817

/-! ## A057640.P795784642420446683

`A057641(n+1)+A026741(A074400(n+1))`
-/

namespace A057640.P795784642420446683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + A026741 (A074400 (n + 1)).toNat

end

end A057640.P795784642420446683

/-! ## A057640.P15709355892504712259

`A057641(n+1)+A056926(A072861(n+1))`
-/

namespace A057640.P15709355892504712259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + A056926 (A072861 (n + 1)).toNat

end

end A057640.P15709355892504712259

/-!
# A057641: a(n) = floor(H(n) + exp(H(n))*log(H(n))) - sigma(n), where H(n) = Sum_{k=1..n} 1/k and sigma(n) (A000203) is the sum of the divisors of n.

The programs for A057641, there is no canonical definition to state claims against.
-/

/-! ## A057641.P6332373680024802978

`A057640(n+1)-A000203(n+1)`
-/

namespace A057641.P6332373680024802978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - A000203 (n + 1)

end

end A057641.P6332373680024802978

/-! ## A057641.P5724437473471350786

`Δ[A328367(n+1-ceil(n/(n+1)))]`
-/

namespace A057641.P5724437473471350786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328367 ((n + 1 : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057641.P5724437473471350786

/-! ## A057641.P18179563496805261855

`A057640(n+1)-Δ[A160664(n)]`
-/

namespace A057641.P18179563496805261855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - (f1 (n + 1) - f1 n)

end

end A057641.P18179563496805261855

/-! ## A057641.P11060196722531653094

`A353130(n+1)-A001065(n+1)`
-/

namespace A057641.P11060196722531653094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353130 (n + 1) - A001065 (n + 1)

end

end A057641.P11060196722531653094

/-! ## A057641.P8715411710302294436

`A057640(n+1)-sqrt(A072861(n+1))`
-/

namespace A057641.P8715411710302294436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057640 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

end

end A057641.P8715411710302294436

/-! ## A057641.P4460928301695902292

`A057640(n+1)+1-A088580(n+1)`
-/

namespace A057641.P4460928301695902292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) + (1 - A088580 (n + 1))

end

end A057641.P4460928301695902292

/-! ## A057641.P4874300097245350537

`A057640(n+1)-A074400(n+1)/2`
-/

namespace A057641.P4874300097245350537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057640 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A057641.P4874300097245350537

/-! ## A057641.P18162484633336432510

`A057640(n+1)-(A001065(n+1)+1+n)`
-/

namespace A057641.P18162484633336432510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - (A001065 (n + 1) + 1 + (n : ℤ))

end

end A057641.P18162484633336432510

/-! ## A057641.P1903711131184665009

`A057640(n+1)-(A237588(n+1)+Δ[n²])`
-/

namespace A057641.P1903711131184665009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A057641.P1903711131184665009

/-! ## A057641.P12543562959990719316

`A057640(n+1)-(2*(n+1)-A033879(n+1))`
-/

namespace A057641.P12543562959990719316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - ((2 * (n + 1) : ℤ) - A033879 (n + 1))

end

end A057641.P12543562959990719316

/-! ## A057641.P588962551944632795

`A057640(n+1)+A079526(n+1)-A079527(n+1)`
-/

namespace A057641.P588962551944632795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) + (A079526 (n + 1) - A079527 (n + 1))

end

end A057641.P588962551944632795

/-! ## A057641.P9436022960930573811

`A057640(n+1)-(A324122(n+1)+A324121(n+1))`
-/

namespace A057641.P9436022960930573811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - (A324122 (n + 1) + A324121 (n + 1))

end

end A057641.P9436022960930573811

/-! ## A057641.P15341670985921614851

`A328367(n+1)-A328367(A123108(2*n))`
-/

namespace A057641.P15341670985921614851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328367 (n + 1) - A328367 (A123108 (2 * n)).toNat

end

end A057641.P15341670985921614851

/-! ## A057641.P12111812114706450369

`A026741(2*A057640(n+1)-A074400(n+1))`
-/

namespace A057641.P12111812114706450369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A057640 (n + 1) - A074400 (n + 1)).toNat

end

end A057641.P12111812114706450369

/-! ## A057641.P11146364213751487542

`A026741(A057640(n+1)+A057640(n+1)-A074400(n+1))`
-/

namespace A057641.P11146364213751487542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A057640 (n + 1) + (A057640 (n + 1) - A074400 (n + 1))).toNat

end

end A057641.P11146364213751487542

/-! ## A057641.P11093137145750778995

`A057640(n+1)-A026741(A074400(n+1))`
-/

namespace A057641.P11093137145750778995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - A026741 (A074400 (n + 1)).toNat

end

end A057641.P11093137145750778995

/-! ## A057641.P2679766397404237979

`A328367(n+1)-A328367(A233583(n+1))`
-/

namespace A057641.P2679766397404237979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328367 (n + 1) - A328367 (A233583 (n + 1)).toNat

end

end A057641.P2679766397404237979

/-!
# A057643: Least common multiple of all (k+1)'s, where the k's are the positive divisors of n.

The programs for A057643, there is no canonical definition to state claims against.
-/

/-! ## A057643.P9790523416256705542

`lcm(A119250(n+1), A263326(n+1))`
-/

namespace A057643.P9790523416256705542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119250 (n + 1)) (A263326 (n + 1))

end

end A057643.P9790523416256705542

/-! ## A057643.P10233069415252600078

`A271410(2*∑{d}[n+1, 2^(#-1)])`
-/

namespace A057643.P10233069415252600078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (SequenceMachineLib.roundAway (2 * (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)))).toNat

end

end A057643.P10233069415252600078

/-! ## A057643.P7903851820972284856

`A271410(∑{d}[n+1, 2^(#-1)]+∑{d}[n+1, 2^#]/2)`
-/

namespace A057643.P7903851820972284856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) + ((∑ d ∈ Nat.divisors (f2 n), 2 ^ d : ℕ) : ℚ) / 2)).toNat

end

end A057643.P7903851820972284856

/-! ## A057643.P15207080923623709088

`A271410(A055895(n+1))`
-/

namespace A057643.P15207080923623709088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A055895 (n + 1)).toNat

end

end A057643.P15207080923623709088

/-!
# A057647: Number of walks of length n on the upper-right part of the hexagonal lattice.

The programs for A057647, there is no canonical definition to state claims against.
-/

/-! ## A057647.P12668986901020579386

`A008621(A108982(n))+floor(n/2)`
-/

namespace A057647.P12668986901020579386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A108982 n).toNat + ⌊(n : ℚ) / 2⌋

end

end A057647.P12668986901020579386

/-! ## A057647.P6340905643097655799

`A008621(A108982(n)+comp[or(2, n)+n])`
-/

namespace A057647.P6340905643097655799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A108982 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A057647.P6340905643097655799

/-!
# A057648: Number of excursions of length n on the upper-right part of the hexagonal lattice.

The programs for A057648, there is no canonical definition to state claims against.
-/

/-! ## A057648.P18030928758735235261

`A065710(A077054(n)+n^4)`
-/

namespace A057648.P18030928758735235261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (A077054 n + (n ^ 4 : ℤ)).toNat

end

end A057648.P18030928758735235261

/-! ## A057648.P1858491644702290291

`xor(A026400(A181939(n)), A323905(3*n+1))`
-/

namespace A057648.P1858491644702290291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026400 (A181939 n).toNat) (A323905 (3 * n + 1))

end

end A057648.P1858491644702290291

/-!
# A057649: Nearest integer to ratio of volume of n-dimensional cube of side 2 to volume of n-dimensional ball of radius 1.

The programs for A057649, there is no canonical definition to state claims against.
-/

/-! ## A057649.P15184829663453400622

`A072168(n)+A010051(A193472(n))`
-/

namespace A057649.P15184829663453400622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072168 n + A010051 (A193472 n).toNat

end

end A057649.P15184829663453400622

/-! ## A057649.P14554141626654909055

`A257639(C(A000081(n)+2, 2)+1)`
-/

namespace A057649.P14554141626654909055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Nat.choose (A000081 n + 2).toNat 2 + 1)

end

end A057649.P14554141626654909055

/-! ## A057649.P13625666116218282006

`A072168(n)+A025456(A052709(n))`
-/

namespace A057649.P13625666116218282006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072168 n + A025456 (A052709 n).toNat

end

end A057649.P13625666116218282006

/-! ## A057649.P15868892750206187286

`A072168(n)+A016389(A070559(n))`
-/

namespace A057649.P15868892750206187286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072168 n + A016389 (A070559 n).toNat

end

end A057649.P15868892750206187286

/-! ## A057649.P333222697594254761

`A257639(A325289(n)+A001006(n))`
-/

namespace A057649.P333222697594254761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A325289 n + A001006 n).toNat

end

end A057649.P333222697594254761

/-!
# A057650: Second step in Goodstein sequences, i.e., g(4) if g(2)=n: (first step) write g(2)=n in hereditary representation base 2, bump to base 3, then subtract 1 to produce g(3)=A056004(n), then (second step) write g(3) in hereditary representation base 3, bump to base 4, then subtract 1 to produce g(4).

The programs for A057650, there is no canonical definition to state claims against.
-/

/-! ## A057650.P10231564540200330754

`A296441(A056115(n)+12)`
-/

namespace A057650.P10231564540200330754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A056115 n + 12).toNat

end

end A057650.P10231564540200330754

/-! ## A057650.P12404104283185183635

`A296441(eq[8, A330964(n)])`
-/

namespace A057650.P12404104283185183635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057650.P12404104283185183635

/-! ## A057650.P15721835718141878857

`A296441(eq[3, A106234(n+1)])`
-/

namespace A057650.P15721835718141878857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057650.P15721835718141878857

/-! ## A057650.P5123495161333123769

`A296441(eq[8, A140996(n)]+1)`
-/

namespace A057650.P5123495161333123769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057650.P5123495161333123769

/-! ## A057650.P12438139511097287855

`A296441(eq[8, A286158(n+1)])`
-/

namespace A057650.P12438139511097287855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057650.P12438139511097287855

/-!
# A057651: a(n) = (3*5^n - 1)/2.

The programs for A057651, the canonical program `A057651.P11740344156154487793` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057651 has offset 0).

The definition of A057651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*5^n-1)/2` (program `A057651.P8536430456661999914`, by `A057651.P8536430456661999914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057651.P8536430456661999914

`(3*5^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057651.P8536430456661999914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 5 ^ n : ℤ) - 1 : ℚ) / 2

end

end A057651.P8536430456661999914

namespace A057651

/-- `(3*5^n-1)/2` -/
def P8536430456661999914.Spec : Prop :=
  ∀ n, P8536430456661999914.a n = (A057651 n : ℚ)

theorem P8536430456661999914.correct : P8536430456661999914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A057651, Nat.add_sub_cancel, A057651.P8536430456661999914.a, A057651.P11740344156154487793.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A057651, Nat.add_sub_cancel, A057651.P8536430456661999914.a, A057651.P11740344156154487793.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057651

/-! ## A057651.P11740344156154487793

`5*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057651

/-- `5*a(n-1)+2` -/
def P11740344156154487793.Spec : Prop :=
  ∀ n, (P11740344156154487793.a n : ℤ) = A057651 n

theorem P11740344156154487793.correct : P11740344156154487793.Spec := by
  intro n
  simp only [A057651]

end A057651

/-! ## A057651.P13492275665884505626

`A097162(2*n)`
-/

namespace A057651.P13492275665884505626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097162 (2 * n)

end

end A057651.P13492275665884505626

namespace A057651

/-- `A097162(2*n)` -/
def P13492275665884505626.Spec : Prop :=
  ∀ n, P13492275665884505626.a n = A057651 n

end A057651

/-! ## A057651.P14118217490863764586

`ogf((1+x)/(1-6x+5x^2))`
-/

namespace A057651.P14118217490863764586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 5] n

end

end A057651.P14118217490863764586

namespace A057651

/-- `ogf((1+x)/(1-6x+5x^2))` -/
def P14118217490863764586.Spec : Prop :=
  ∀ n, P14118217490863764586.a n = A057651 n

end A057651

/-! ## A057651.P17393555072855816680

`lcm(5, a(n-1))+2` with `a(0)=1`
-/

namespace A057651.P17393555072855816680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 2

end

end A057651.P17393555072855816680

namespace A057651

/-- `lcm(5, a(n-1))+2` -/
def P17393555072855816680.Spec : Prop :=
  ∀ n, (P17393555072855816680.a n : ℤ) = A057651 n

end A057651

/-! ## A057651.P4855174933775177695

`∑[5*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A057651.P4855174933775177695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057651.P4855174933775177695

namespace A057651

/-- `∑[5*a(n-1)]` -/
def P4855174933775177695.Spec : Prop :=
  ∀ n, (P4855174933775177695.a n : ℤ) = A057651 n

end A057651

/-! ## A057651.P11341183088766043173

`7-5*(1-a(n-1))` with `a(0)=1`
-/

namespace A057651.P11341183088766043173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - 5 * (1 - a (n - 1))

end

end A057651.P11341183088766043173

namespace A057651

/-- `7-5*(1-a(n-1))` -/
def P11341183088766043173.Spec : Prop :=
  ∀ n, P11341183088766043173.a n = A057651 n

end A057651

/-! ## A057651.P2691731133014586957

`a(n-1)/(1-4/5)+2` with `a(0)=1`
-/

namespace A057651.P2691731133014586957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) + 2

end

end A057651.P2691731133014586957

namespace A057651

/-- `a(n-1)/(1-4/5)+2` -/
def P2691731133014586957.Spec : Prop :=
  ∀ n, P2691731133014586957.a n = (A057651 n : ℚ)

end A057651

/-! ## A057651.P3912881435586007526

`2-a(n-1)/(4/5-1)` with `a(0)=1`
-/

namespace A057651.P3912881435586007526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 - a (n - 1) / ((4 : ℚ) / 5 - 1)

end

end A057651.P3912881435586007526

namespace A057651

/-- `2-a(n-1)/(4/5-1)` -/
def P3912881435586007526.Spec : Prop :=
  ∀ n, P3912881435586007526.a n = (A057651 n : ℚ)

end A057651

/-! ## A057651.P12349529898000544563

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` with `a(0)=1`
-/

namespace A057651.P12349529898000544563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 2))))

end

end A057651.P12349529898000544563

namespace A057651

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` -/
def P12349529898000544563.Spec : Prop :=
  ∀ n, (P12349529898000544563.a n : ℤ) = A057651 n

theorem P12349529898000544563.correct : P12349529898000544563.Spec := by
  intro n
  simp only [A057651, Nat.add_sub_cancel, A057651.P12349529898000544563.a, A057651.P11740344156154487793.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057651

/-! ## A057651.P130095799875127061

`∑[A003948(n)]`
-/

namespace A057651.P130095799875127061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057651.P130095799875127061

namespace A057651

/-- `∑[A003948(n)]` -/
def P130095799875127061.Spec : Prop :=
  ∀ n, P130095799875127061.a n = A057651 n

end A057651

/-! ## A057651.P576590191442813232

`A199213(n)-1`
-/

namespace A057651.P576590191442813232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199213 n - 1

end

end A057651.P576590191442813232

namespace A057651

/-- `A199213(n)-1` -/
def P576590191442813232.Spec : Prop :=
  ∀ n, P576590191442813232.a n = A057651 n

end A057651

/-! ## A057651.P5844066930258444242

`2-A165755(n)`
-/

namespace A057651.P5844066930258444242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A165755 n

end

end A057651.P5844066930258444242

namespace A057651

/-- `2-A165755(n)` -/
def P5844066930258444242.Spec : Prop :=
  ∀ n, P5844066930258444242.a n = A057651 n

end A057651

/-! ## A057651.P9690884637397635007

`A238366(2*n)`
-/

namespace A057651.P9690884637397635007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238366 (2 * n)

end

end A057651.P9690884637397635007

namespace A057651

/-- `A238366(2*n)` -/
def P9690884637397635007.Spec : Prop :=
  ∀ n, P9690884637397635007.a n = A057651 n

end A057651

/-! ## A057651.P7090730061500469600

`Δ[A268414(n)]-1`
-/

namespace A057651.P7090730061500469600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A057651.P7090730061500469600

namespace A057651

/-- `Δ[A268414(n)]-1` -/
def P7090730061500469600.Spec : Prop :=
  ∀ n, P7090730061500469600.a n = A057651 n

end A057651

/-! ## A057651.P15805724321219488661

`2*A125833(n)+1`
-/

namespace A057651.P15805724321219488661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125833 n + 1

end

end A057651.P15805724321219488661

namespace A057651

/-- `2*A125833(n)+1` -/
def P15805724321219488661.Spec : Prop :=
  ∀ n, P15805724321219488661.a n = A057651 n

end A057651

/-! ## A057651.P11586573354694279412

`2*A083065(n)-1`
-/

namespace A057651.P11586573354694279412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083065 n - 1

end

end A057651.P11586573354694279412

namespace A057651

/-- `2*A083065(n)-1` -/
def P11586573354694279412.Spec : Prop :=
  ∀ n, P11586573354694279412.a n = A057651 n

end A057651

/-! ## A057651.P17071014004984149051

`A199214(n)/2-1`
-/

namespace A057651.P17071014004984149051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199214 n : ℚ) / 2 - 1

end

end A057651.P17071014004984149051

namespace A057651

/-- `A199214(n)/2-1` -/
def P17071014004984149051.Spec : Prop :=
  ∀ n, P17071014004984149051.a n = (A057651 n : ℚ)

theorem P17071014004984149051.correct : P17071014004984149051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A057651, Nat.add_sub_cancel, A057651.P17071014004984149051.a, A057651.P11740344156154487793.a, A199214, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A057651, Nat.add_sub_cancel, A057651.P17071014004984149051.a, A057651.P11740344156154487793.a, A199214, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A057651

/-! ## A057651.P14424640707007653972

`3*A034478(n)-2`
-/

namespace A057651.P14424640707007653972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034478 n - 2

end

end A057651.P14424640707007653972

namespace A057651

/-- `3*A034478(n)-2` -/
def P14424640707007653972.Spec : Prop :=
  ∀ n, P14424640707007653972.a n = A057651 n

end A057651

/-! ## A057651.P3548174945924199238

`3*A137410(n)+4`
-/

namespace A057651.P3548174945924199238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A137410 n + 4

end

end A057651.P3548174945924199238

namespace A057651

/-- `3*A137410(n)+4` -/
def P3548174945924199238.Spec : Prop :=
  ∀ n, P3548174945924199238.a n = A057651 n

end A057651

/-!
# A057652: Numbers n such that n-2^k is a lucky number for all k such that 1 < 2^k < n.

The programs for A057652, there is no canonical definition to state claims against.
-/

/-! ## A057652.P16881707589375116124

`∑[A104684((floor(n/3)*ceil(n/3))²)]`
-/

namespace A057652.P16881707589375116124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 ((⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057652.P16881707589375116124

/-! ## A057652.P14611585413136783527

`∑[A036038(A001004(n))]`
-/

namespace A057652.P14611585413136783527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (A001004 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057652.P14611585413136783527

/-! ## A057652.P13781948676337852338

`∑[A035206(A002851(n))]`
-/

namespace A057652.P13781948676337852338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (A002851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057652.P13781948676337852338

/-!
# A057653: Odd numbers of form x^2 + y^2.

The programs for A057653, the canonical program `A057653.P8862115344835850100` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057653 has offset 1).

The definition of A057653 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097269, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057653.P8862115344835850100

`A097269(n+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A057653

/-- `A097269(n+1)/2` -/
def P8862115344835850100.Spec : Prop :=
  ∀ n, P8862115344835850100.a n = (A057653 (n + 1) : ℚ)

end A057653

/-! ## A057653.P292054920705969126

`4*A020756(n+1)+1`
-/

namespace A057653.P292054920705969126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020756 (n + 1) + 1

end

end A057653.P292054920705969126

namespace A057653

/-- `4*A020756(n+1)+1` -/
def P292054920705969126.Spec : Prop :=
  ∀ n, P292054920705969126.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P16669945135090155802

`A016825(A020756(n+1))-1`
-/

namespace A057653.P16669945135090155802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A020756 (n + 1)).toNat - 1

end

end A057653.P16669945135090155802

namespace A057653

/-- `A016825(A020756(n+1))-1` -/
def P16669945135090155802.Spec : Prop :=
  ∀ n, P16669945135090155802.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P16366821040865391405

`record[lcm(2, A046711(n+1))/2]`
-/

namespace A057653.P16366821040865391405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A046711 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057653.P16366821040865391405

namespace A057653

/-- `record[lcm(2, A046711(n+1))/2]` -/
def P16366821040865391405.Spec : Prop :=
  ∀ n, P16366821040865391405.a n = (A057653 (n + 1) : ℚ)

end A057653

/-! ## A057653.P7388950162594651119

`filter[A046711(n+1), A035263(#)]`
-/

namespace A057653.P7388950162594651119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A057653.P7388950162594651119

namespace A057653

/-- `filter[A046711(n+1), A035263(#)]` -/
def P7388950162594651119.Spec : Prop :=
  ∀ n, P7388950162594651119.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P8551437871209881839

`filter[A046711(n+1), A152822(#)]`
-/

namespace A057653.P8551437871209881839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A057653.P8551437871209881839

namespace A057653

/-- `filter[A046711(n+1), A152822(#)]` -/
def P8551437871209881839.Spec : Prop :=
  ∀ n, P8551437871209881839.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P18192848070126694183

`filter[A046711(n+1), A372574(#)]`
-/

namespace A057653.P18192848070126694183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A057653.P18192848070126694183

namespace A057653

/-- `filter[A046711(n+1), A372574(#)]` -/
def P18192848070126694183.Spec : Prop :=
  ∀ n, P18192848070126694183.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P17019374044872582421

`filter[A046711(n+1), A373136(#)]`
-/

namespace A057653.P17019374044872582421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A057653.P17019374044872582421

namespace A057653

/-- `filter[A046711(n+1), A373136(#)]` -/
def P17019374044872582421.Spec : Prop :=
  ∀ n, P17019374044872582421.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P15417709629197333063

`filter[A046711(n+1), A373157(#)]`
-/

namespace A057653.P15417709629197333063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A057653.P15417709629197333063

namespace A057653

/-- `filter[A046711(n+1), A373157(#)]` -/
def P15417709629197333063.Spec : Prop :=
  ∀ n, P15417709629197333063.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P12406179015073635706

`filter[A046711(n+1), A379952(#)]`
-/

namespace A057653.P12406179015073635706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A057653.P12406179015073635706

namespace A057653

/-- `filter[A046711(n+1), A379952(#)]` -/
def P12406179015073635706.Spec : Prop :=
  ∀ n, P12406179015073635706.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P5949241038332292161

`∩[2*n+1, A020668(n+1)]`
-/

namespace A057653.P5949241038332292161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057653.P5949241038332292161

namespace A057653

/-- `∩[2*n+1, A020668(n+1)]` -/
def P5949241038332292161.Spec : Prop :=
  ∀ n, (P5949241038332292161.a n : ℤ) = A057653 (n + 1)

end A057653

/-! ## A057653.P4749209884267589378

`filter[A020668(n+1), A098725(#)]`
-/

namespace A057653.P4749209884267589378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A057653.P4749209884267589378

namespace A057653

/-- `filter[A020668(n+1), A098725(#)]` -/
def P4749209884267589378.Spec : Prop :=
  ∀ n, P4749209884267589378.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P17724338664972626000

`filter[A020668(n+1), A166486(#)]`
-/

namespace A057653.P17724338664972626000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A057653.P17724338664972626000

namespace A057653

/-- `filter[A020668(n+1), A166486(#)]` -/
def P17724338664972626000.Spec : Prop :=
  ∀ n, P17724338664972626000.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P14291794367170561790

`filter[A020668(n+2), A039982(#)]`
-/

namespace A057653.P14291794367170561790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A057653.P14291794367170561790

namespace A057653

/-- `filter[A020668(n+2), A039982(#)]` -/
def P14291794367170561790.Spec : Prop :=
  ∀ n, P14291794367170561790.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P6725668407510615559

`A000265(A097269(n+1))`
-/

namespace A057653.P6725668407510615559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A097269 (n + 1)).toNat

end

end A057653.P6725668407510615559

namespace A057653

/-- `A000265(A097269(n+1))` -/
def P6725668407510615559.Spec : Prop :=
  ∀ n, P6725668407510615559.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P15730801546551749796

`4*eq[3, A176873(n)]+1`
-/

namespace A057653.P15730801546551749796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057653.P15730801546551749796

namespace A057653

/-- `4*eq[3, A176873(n)]+1` -/
def P15730801546551749796.Spec : Prop :=
  ∀ n, (P15730801546551749796.a n : ℤ) = A057653 (n + 1)

end A057653

/-! ## A057653.P14485281227403875982

`4*eq[0, C(2, A008441(n)+2)]+1`
-/

namespace A057653.P14485281227403875982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A008441 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057653.P14485281227403875982

namespace A057653

/-- `4*eq[0, C(2, A008441(n)+2)]+1` -/
def P14485281227403875982.Spec : Prop :=
  ∀ n, (P14485281227403875982.a n : ℤ) = A057653 (n + 1)

end A057653

/-! ## A057653.P5065672351763389756

`A016813(A020756(n+1))`
-/

namespace A057653.P5065672351763389756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A020756 (n + 1)).toNat

end

end A057653.P5065672351763389756

namespace A057653

/-- `A016813(A020756(n+1))` -/
def P5065672351763389756.Spec : Prop :=
  ∀ n, P5065672351763389756.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P15106988941781560438

`A016813(lt[0, A008441(n)])`
-/

namespace A057653.P15106988941781560438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A057653.P15106988941781560438

namespace A057653

/-- `A016813(lt[0, A008441(n)])` -/
def P15106988941781560438.Spec : Prop :=
  ∀ n, P15106988941781560438.a n = A057653 (n + 1)

end A057653

/-! ## A057653.P7950115557280318888

`filter[A016813(n), A229062(#)]`
-/

namespace A057653.P7950115557280318888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A057653.P7950115557280318888

namespace A057653

/-- `filter[A016813(n), A229062(#)]` -/
def P7950115557280318888.Spec : Prop :=
  ∀ n, P7950115557280318888.a n = A057653 (n + 1)

end A057653

/-!
# A057655: The circle problem: number of points (x,y) in square lattice with x^2 + y^2 <= n.

The programs for A057655, the canonical program `A057655.P8142405424443184292` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057655 has offset 0).

The definition of A057655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057655.P8142405424443184292

`A014198(n)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057655

/-- `A014198(n)+1` -/
def P8142405424443184292.Spec : Prop :=
  ∀ n, P8142405424443184292.a n = A057655 n

theorem P8142405424443184292.correct : P8142405424443184292.Spec := by
  intro n
  simp only [A057655]

end A057655

/-! ## A057655.P1694310063327577407

`∑[A004018(n)]`
-/

namespace A057655.P1694310063327577407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057655.P1694310063327577407

namespace A057655

/-- `∑[A004018(n)]` -/
def P1694310063327577407.Spec : Prop :=
  ∀ n, P1694310063327577407.a n = A057655 n

end A057655

/-! ## A057655.P18196968526537492387

`∑[abs(A104794(n))]`
-/

namespace A057655.P18196968526537492387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057655.P18196968526537492387

namespace A057655

/-- `∑[abs(A104794(n))]` -/
def P18196968526537492387.Spec : Prop :=
  ∀ n, P18196968526537492387.a n = A057655 n

end A057655

/-! ## A057655.P8569676621114655761

`4*A014200(n)+1`
-/

namespace A057655.P8569676621114655761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014200 n + 1

end

end A057655.P8569676621114655761

namespace A057655

/-- `4*A014200(n)+1` -/
def P8569676621114655761.Spec : Prop :=
  ∀ n, P8569676621114655761.a n = A057655 n

end A057655

/-! ## A057655.P4813773672272163017

`A016813(A014200(n))`
-/

namespace A057655.P4813773672272163017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A014200 n).toNat

end

end A057655.P4813773672272163017

namespace A057655

/-- `A016813(A014200(n))` -/
def P4813773672272163017.Spec : Prop :=
  ∀ n, P4813773672272163017.a n = A057655 n

end A057655

/-! ## A057655.P10021483442709518591

`A057961(∑[char[A001481(n+1)]])`
-/

namespace A057655.P10021483442709518591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057655.P10021483442709518591

namespace A057655

/-- `A057961(∑[char[A001481(n+1)]])` -/
def P10021483442709518591.Spec : Prop :=
  ∀ n, P10021483442709518591.a n = A057655 n

end A057655

/-! ## A057655.P4123444322970726230

`A002522(n)-(n²-A014198(n))`
-/

namespace A057655.P4123444322970726230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A014198 n)

end

end A057655.P4123444322970726230

namespace A057655

/-- `A002522(n)-(n²-A014198(n))` -/
def P4123444322970726230.Spec : Prop :=
  ∀ n, P4123444322970726230.a n = A057655 n

theorem P4123444322970726230.correct : P4123444322970726230.Spec := by
  intro n
  simp only [A057655, Nat.add_sub_cancel, A057655.P4123444322970726230.a, A057655.P8142405424443184292.a, A002522, A002522.P3778392011853271743.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057655

/-! ## A057655.P17391224549647199539

`A256465(n+1)-A105673(n+1)`
-/

namespace A057655.P17391224549647199539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256465 (n + 1) - A105673 (n + 1)

end

end A057655.P17391224549647199539

namespace A057655

/-- `A256465(n+1)-A105673(n+1)` -/
def P17391224549647199539.Spec : Prop :=
  ∀ n, P17391224549647199539.a n = A057655 n

theorem P17391224549647199539.correct : P17391224549647199539.Spec := by
  intro n
  simp only [A057655, Nat.add_sub_cancel, A057655.P17391224549647199539.a, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, A256465, A256465.P12543537309397973393.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057655

/-! ## A057655.P16096448706347182352

`A005408(2*A014200(n))`
-/

namespace A057655.P16096448706347182352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A014200 n).toNat

end

end A057655.P16096448706347182352

namespace A057655

/-- `A005408(2*A014200(n))` -/
def P16096448706347182352.Spec : Prop :=
  ∀ n, P16096448706347182352.a n = A057655 n

end A057655

/-! ## A057655.P8235809330765834428

`A005408(A014198(n)/2)`
-/

namespace A057655.P8235809330765834428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A014198 n : ℚ) / 2)).toNat

end

end A057655.P8235809330765834428

namespace A057655

/-- `A005408(A014198(n)/2)` -/
def P8235809330765834428.Spec : Prop :=
  ∀ n, P8235809330765834428.a n = A057655 n

end A057655

/-! ## A057655.P18205677933063016233

`∑[A104794(2*n)]`
-/

namespace A057655.P18205677933063016233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057655.P18205677933063016233

namespace A057655

/-- `∑[A104794(2*n)]` -/
def P18205677933063016233.Spec : Prop :=
  ∀ n, P18205677933063016233.a n = A057655 n

end A057655

/-! ## A057655.P9357959409208413866

`A004442(A014198(n))`
-/

namespace A057655.P9357959409208413866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A014198 n).toNat

end

end A057655.P9357959409208413866

namespace A057655

/-- `A004442(A014198(n))` -/
def P9357959409208413866.Spec : Prop :=
  ∀ n, P9357959409208413866.a n = A057655 n

end A057655

/-! ## A057655.P12044424578342892620

`∑[A004531(4*n)]`
-/

namespace A057655.P12044424578342892620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057655.P12044424578342892620

namespace A057655

/-- `∑[A004531(4*n)]` -/
def P12044424578342892620.Spec : Prop :=
  ∀ n, P12044424578342892620.a n = A057655 n

end A057655

/-! ## A057655.P9485360407010688809

`A104794(4*n)+a(n-1)` with `a(0)=1`
-/

namespace A057655.P9485360407010688809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104794 (4 * n) + a (n - 1)

end

end A057655.P9485360407010688809

namespace A057655

/-- `A104794(4*n)+a(n-1)` -/
def P9485360407010688809.Spec : Prop :=
  ∀ n, P9485360407010688809.a n = A057655 n

end A057655

/-! ## A057655.P13644450308500773252

`∑[A134014(4*n)]`
-/

namespace A057655.P13644450308500773252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057655.P13644450308500773252

namespace A057655

/-- `∑[A134014(4*n)]` -/
def P13644450308500773252.Spec : Prop :=
  ∀ n, P13644450308500773252.a n = A057655 n

end A057655

/-! ## A057655.P14669892249520188826

`A008619(2*A014198(n))`
-/

namespace A057655.P14669892249520188826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A014198 n).toNat

end

end A057655.P14669892249520188826

namespace A057655

/-- `A008619(2*A014198(n))` -/
def P14669892249520188826.Spec : Prop :=
  ∀ n, P14669892249520188826.a n = A057655 n

end A057655

/-! ## A057655.P17873259399244777105

`A028242(2*A014198(n))`
-/

namespace A057655.P17873259399244777105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A014198 n).toNat

end

end A057655.P17873259399244777105

namespace A057655

/-- `A028242(2*A014198(n))` -/
def P17873259399244777105.Spec : Prop :=
  ∀ n, P17873259399244777105.a n = A057655 n

end A057655

/-! ## A057655.P13064754343324052236

`A029579(2*A014198(n))`
-/

namespace A057655.P13064754343324052236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A014198 n).toNat

end

end A057655.P13064754343324052236

namespace A057655

/-- `A029579(2*A014198(n))` -/
def P13064754343324052236.Spec : Prop :=
  ∀ n, P13064754343324052236.a n = A057655 n

end A057655

/-! ## A057655.P9071876110479148824

`∑[abs(A256282(9*n))]`
-/

namespace A057655.P9071876110479148824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256282 (9 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057655.P9071876110479148824

namespace A057655

/-- `∑[abs(A256282(9*n))]` -/
def P9071876110479148824.Spec : Prop :=
  ∀ n, P9071876110479148824.a n = A057655 n

end A057655

/-! ## A057655.P4767453938170352119

`∑[A122141(∑[n+2])]`
-/

namespace A057655.P4767453938170352119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057655.P4767453938170352119

namespace A057655

/-- `∑[A122141(∑[n+2])]` -/
def P4767453938170352119.Spec : Prop :=
  ∀ n, P4767453938170352119.a n = A057655 n

end A057655

/-!
# A057656: Number of points (x,y) in square lattice with (x-1/2)^2+y^2 <= n.

The programs for A057656, the canonical program `A057656.P13929880755277153593` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057656 has offset 0).

The definition of A057656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057656.P13881014089363268966

`∑[A004020(n)]`
-/

namespace A057656.P13881014089363268966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P13881014089363268966

namespace A057656

/-- `∑[A004020(n)]` -/
def P13881014089363268966.Spec : Prop :=
  ∀ n, P13881014089363268966.a n = A057656 n

end A057656

/-! ## A057656.P286725555748506153

`2*A199015(n)`
-/

namespace A057656.P286725555748506153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199015 n

end

end A057656.P286725555748506153

namespace A057656

/-- `2*A199015(n)` -/
def P286725555748506153.Spec : Prop :=
  ∀ n, P286725555748506153.a n = A057656 n

end A057656

/-! ## A057656.P13929880755277153593

`∑[2*A008441(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057656

/-- `∑[2*A008441(n)]` -/
def P13929880755277153593.Spec : Prop :=
  ∀ n, P13929880755277153593.a n = A057656 n

theorem P13929880755277153593.correct : P13929880755277153593.Spec := by
  intro n
  simp only [A057656]

end A057656

/-! ## A057656.P9727341429624288520

`∑[A005883(n)/2]`
-/

namespace A057656.P9727341429624288520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P9727341429624288520

namespace A057656

/-- `∑[A005883(n)/2]` -/
def P9727341429624288520.Spec : Prop :=
  ∀ n, P9727341429624288520.a n = (A057656 n : ℚ)

theorem P9727341429624288520.correct : P9727341429624288520.Spec := by
  intro n
  simp only [A057656, Nat.add_sub_cancel, A057656.P9727341429624288520.f1, A057656.P9727341429624288520.a, A057656.P13929880755277153593.f1, A057656.P13929880755277153593.a, A005883, A005883.P3734216093274140482.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057656

/-! ## A057656.P14812707212013254594

`∑[abs(2*A134343(n))]`
-/

namespace A057656.P14812707212013254594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A134343 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P14812707212013254594

namespace A057656

/-- `∑[abs(2*A134343(n))]` -/
def P14812707212013254594.Spec : Prop :=
  ∀ n, P14812707212013254594.a n = A057656 n

end A057656

/-! ## A057656.P3432020699494720663

`A199015(n+1)+A199015(n)-A008441(n+1)`
-/

namespace A057656.P3432020699494720663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199015 (n + 1) + (A199015 n - A008441 (n + 1))

end

end A057656.P3432020699494720663

namespace A057656

/-- `A199015(n+1)+A199015(n)-A008441(n+1)` -/
def P3432020699494720663.Spec : Prop :=
  ∀ n, P3432020699494720663.a n = A057656 n

end A057656

/-! ## A057656.P15265998086654818897

`A199015(n+1)+A199015(n+1)-A004020(n+1)`
-/

namespace A057656.P15265998086654818897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199015 (n + 1) + (A199015 (n + 1) - A004020 (n + 1))

end

end A057656.P15265998086654818897

namespace A057656

/-- `A199015(n+1)+A199015(n+1)-A004020(n+1)` -/
def P15265998086654818897.Spec : Prop :=
  ∀ n, P15265998086654818897.a n = A057656 n

end A057656

/-! ## A057656.P14110135543396330527

`A004277(A199015(n))`
-/

namespace A057656.P14110135543396330527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A199015 n).toNat

end

end A057656.P14110135543396330527

namespace A057656

/-- `A004277(A199015(n))` -/
def P14110135543396330527.Spec : Prop :=
  ∀ n, P14110135543396330527.a n = A057656 n

end A057656

/-! ## A057656.P8635380212793289300

`∑[2*A125079(2*n)]`
-/

namespace A057656.P8635380212793289300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P8635380212793289300

namespace A057656

/-- `∑[2*A125079(2*n)]` -/
def P8635380212793289300.Spec : Prop :=
  ∀ n, P8635380212793289300.a n = A057656 n

end A057656

/-! ## A057656.P9960591943482866095

`∑[2*A116604(2*n)]`
-/

namespace A057656.P9960591943482866095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116604 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P9960591943482866095

namespace A057656

/-- `∑[2*A116604(2*n)]` -/
def P9960591943482866095.Spec : Prop :=
  ∀ n, P9960591943482866095.a n = A057656 n

end A057656

/-! ## A057656.P9100225075506607559

`∑[2*A129447(2*n)]`
-/

namespace A057656.P9100225075506607559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129447 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P9100225075506607559

namespace A057656

/-- `∑[2*A129447(2*n)]` -/
def P9100225075506607559.Spec : Prop :=
  ∀ n, P9100225075506607559.a n = A057656 n

end A057656

/-! ## A057656.P9672950596515683371

`∑[2*A138741(2*n)]`
-/

namespace A057656.P9672950596515683371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138741 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P9672950596515683371

namespace A057656

/-- `∑[2*A138741(2*n)]` -/
def P9672950596515683371.Spec : Prop :=
  ∀ n, P9672950596515683371.a n = A057656 n

end A057656

/-! ## A057656.P8212662722812108833

`∑[A004531(4*n+1)]`
-/

namespace A057656.P8212662722812108833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P8212662722812108833

namespace A057656

/-- `∑[A004531(4*n+1)]` -/
def P8212662722812108833.Spec : Prop :=
  ∀ n, P8212662722812108833.a n = A057656 n

end A057656

/-! ## A057656.P4568499397208132699

`∑[A004018(4*n+1)/2]`
-/

namespace A057656.P4568499397208132699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 (4 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P4568499397208132699

namespace A057656

/-- `∑[A004018(4*n+1)/2]` -/
def P4568499397208132699.Spec : Prop :=
  ∀ n, P4568499397208132699.a n = (A057656 n : ℚ)

end A057656

/-! ## A057656.P4571696632356173163

`∑[2*A138952(A005408(2*n))]`
-/

namespace A057656.P4571696632356173163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138952 (A005408 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057656.P4571696632356173163

namespace A057656

/-- `∑[2*A138952(A005408(2*n))]` -/
def P4571696632356173163.Spec : Prop :=
  ∀ n, P4571696632356173163.a n = A057656 n

end A057656

/-! ## A057656.P6829121962213243973

`A004277(∑[A113446(2*n+2*n+1)])`
-/

namespace A057656.P6829121962213243973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057656.P6829121962213243973

namespace A057656

/-- `A004277(∑[A113446(2*n+2*n+1)])` -/
def P6829121962213243973.Spec : Prop :=
  ∀ n, P6829121962213243973.a n = A057656 n

end A057656

/-!
# A057658: a(n) = n*(n+1)^2*(n+2)^3*(n+3)^2*(n+4).

The programs for A057658, the canonical program `A057658.P4641055882307776189` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057658 has offset 0).

The definition of A057658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)²*(n+2)^3*(n+3)²*(n+4)` (program `A057658.P4641055882307776189`, by `A057658.P4641055882307776189.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057658.P4641055882307776189

`n*(n+1)²*(n+2)^3*(n+3)²*(n+4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057658

/-- `n*(n+1)²*(n+2)^3*(n+3)²*(n+4)` -/
def P4641055882307776189.Spec : Prop :=
  ∀ n, (P4641055882307776189.a n : ℤ) = A057658 n

theorem P4641055882307776189.correct : P4641055882307776189.Spec := by
  intro n
  simp only [A057658]

end A057658

/-! ## A057658.P4609344563337317632

`Δ[A052787(n+4)*A300847(n+3)]`
-/

namespace A057658.P4609344563337317632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 (n + 4) * A300847 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057658.P4609344563337317632

namespace A057658

/-- `Δ[A052787(n+4)*A300847(n+3)]` -/
def P4609344563337317632.Spec : Prop :=
  ∀ n, P4609344563337317632.a n = A057658 n

theorem P4609344563337317632.correct : P4609344563337317632.Spec := by
  intro n
  simp only [A057658, Nat.add_sub_cancel, A057658.P4609344563337317632.f1, A057658.P4609344563337317632.a, A057658.P4641055882307776189.a, A052787, A052787.P3134947303530466889.a, A300847, A300847.P3184734527947357789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057658

/-! ## A057658.P15007386168467606958

`∏{d}[A006881(n+1)², A001222(#)+n]`
-/

namespace A057658.P15007386168467606958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A001222 d + (n : ℤ))

end

end A057658.P15007386168467606958

namespace A057658

/-- `∏{d}[A006881(n+1)², A001222(#)+n]` -/
def P15007386168467606958.Spec : Prop :=
  ∀ n, P15007386168467606958.a n = A057658 n

end A057658

/-! ## A057658.P1959545255724170854

`∏{d}[A176312(n+1)², A001222(#)+n]`
-/

namespace A057658.P1959545255724170854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A001222 d + (n : ℤ))

end

end A057658.P1959545255724170854

namespace A057658

/-- `∏{d}[A176312(n+1)², A001222(#)+n]` -/
def P1959545255724170854.Spec : Prop :=
  ∀ n, P1959545255724170854.a n = A057658 n

end A057658

/-! ## A057658.P3677438487337214158

`∏{d}[A108605(n+1)², A001222(#)+n]`
-/

namespace A057658.P3677438487337214158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A001222 d + (n : ℤ))

end

end A057658.P3677438487337214158

namespace A057658

/-- `∏{d}[A108605(n+1)², A001222(#)+n]` -/
def P3677438487337214158.Spec : Prop :=
  ∀ n, P3677438487337214158.a n = A057658 n

end A057658

/-!
# A057659: Prime numbers whose square is composed of just two different decimal digits.

The programs for A057659, there is no canonical definition to state claims against.
-/

/-! ## A057659.P4769588509736771863

`p?[A016069(n+1)]`
-/

namespace A057659.P4769588509736771863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057659.P4769588509736771863

/-!
# A057660: a(n) = Sum_{k=1..n} n/gcd(n,k).

The programs for A057660, the canonical program `A057660.P308819105178745283` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057660 has offset 1).

The definition of A057660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057660.P10670748428413945388

`A001157((n+1)²)/A000203((n+1)²)`
-/

namespace A057660.P10670748428413945388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 ((n + 1) ^ 2) : ℚ) / (A000203 ((n + 1) ^ 2) : ℚ)

end

end A057660.P10670748428413945388

namespace A057660

/-- `A001157((n+1)²)/A000203((n+1)²)` -/
def P10670748428413945388.Spec : Prop :=
  ∀ n, P10670748428413945388.a n = (A057660 (n + 1) : ℚ)

end A057660

/-! ## A057660.P308819105178745283

`A001157(A000290(n+1))/A065764(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057660

/-- `A001157(A000290(n+1))/A065764(n+1)` -/
def P308819105178745283.Spec : Prop :=
  ∀ n, P308819105178745283.a n = (A057660 (n + 1) : ℚ)

end A057660

/-! ## A057660.P2636852431585405636

`∑[A292302(n+1)]`
-/

namespace A057660.P2636852431585405636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057660.P2636852431585405636

namespace A057660

/-- `∑[A292302(n+1)]` -/
def P2636852431585405636.Spec : Prop :=
  ∀ n, P2636852431585405636.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P17720775178177408970

`A365076(n+1)-1`
-/

namespace A057660.P17720775178177408970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365076 (n + 1) - 1

end

end A057660.P17720775178177408970

namespace A057660

/-- `A365076(n+1)-1` -/
def P17720775178177408970.Spec : Prop :=
  ∀ n, P17720775178177408970.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P12632961094751533402

`∑{d}[n+1, A002618(#)]`
-/

namespace A057660.P12632961094751533402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d

end

end A057660.P12632961094751533402

namespace A057660

/-- `∑{d}[n+1, A002618(#)]` -/
def P12632961094751533402.Spec : Prop :=
  ∀ n, P12632961094751533402.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P12381579528489261862

`2*A332049(n+1)+1`
-/

namespace A057660.P12381579528489261862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332049 (n + 1) + 1

end

end A057660.P12381579528489261862

namespace A057660

/-- `2*A332049(n+1)+1` -/
def P12381579528489261862.Spec : Prop :=
  ∀ n, P12381579528489261862.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P3948645007978934909

`2*A057661(n+1)-1`
-/

namespace A057660.P3948645007978934909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057661 (n + 1) - 1

end

end A057660.P3948645007978934909

namespace A057660

/-- `2*A057661(n+1)-1` -/
def P3948645007978934909.Spec : Prop :=
  ∀ n, P3948645007978934909.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P13488526336492631615

`∑{d}[n+1, #*A000010(#)]`
-/

namespace A057660.P13488526336492631615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 d

end

end A057660.P13488526336492631615

namespace A057660

/-- `∑{d}[n+1, #*A000010(#)]` -/
def P13488526336492631615.Spec : Prop :=
  ∀ n, P13488526336492631615.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P2850081267849328576

`A086148(n+1)-2*(n+1)`
-/

namespace A057660.P2850081267849328576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086148 (n + 1) - (2 * (n + 1) : ℤ)

end

end A057660.P2850081267849328576

namespace A057660

/-- `A086148(n+1)-2*(n+1)` -/
def P2850081267849328576.Spec : Prop :=
  ∀ n, P2850081267849328576.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P9675754224677134609

`2*∑{d}[n+1, A023896(#)]-1`
-/

namespace A057660.P9675754224677134609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A023896 d) - 1

end

end A057660.P9675754224677134609

namespace A057660

/-- `2*∑{d}[n+1, A023896(#)]-1` -/
def P9675754224677134609.Spec : Prop :=
  ∀ n, P9675754224677134609.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P17844126410938440847

`∑{d}[n+1, #*A340850((n+1)/#)]`
-/

namespace A057660.P17844126410938440847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057660.P17844126410938440847

namespace A057660

/-- `∑{d}[n+1, #*A340850((n+1)/#)]` -/
def P17844126410938440847.Spec : Prop :=
  ∀ n, P17844126410938440847.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P6404484788641767675

`2*(A051193(n+1)/(n+1)-1)+1`
-/

namespace A057660.P6404484788641767675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A051193 (n + 1) : ℚ) / (n + 1 : ℚ) - 1) + 1

end

end A057660.P6404484788641767675

namespace A057660

/-- `2*(A051193(n+1)/(n+1)-1)+1` -/
def P6404484788641767675.Spec : Prop :=
  ∀ n, P6404484788641767675.a n = (A057660 (n + 1) : ℚ)

end A057660

/-! ## A057660.P17118816110906892157

`A332049(n+1)+A057661(n+1)`
-/

namespace A057660.P17118816110906892157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332049 (n + 1) + A057661 (n + 1)

end

end A057660.P17118816110906892157

namespace A057660

/-- `A332049(n+1)+A057661(n+1)` -/
def P17118816110906892157.Spec : Prop :=
  ∀ n, P17118816110906892157.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P8283220068663782671

`A065827(n+1)/A065764(n+1)`
-/

namespace A057660.P8283220068663782671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065827 (n + 1) : ℚ) / (A065764 (n + 1) : ℚ)

end

end A057660.P8283220068663782671

namespace A057660

/-- `A065827(n+1)/A065764(n+1)` -/
def P8283220068663782671.Spec : Prop :=
  ∀ n, P8283220068663782671.a n = (A057660 (n + 1) : ℚ)

end A057660

/-! ## A057660.P707502201460856679

`∑{d}[n+1, A000290(#)*A023900((n+1)/#)]`
-/

namespace A057660.P707502201460856679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057660.P707502201460856679

namespace A057660

/-- `∑{d}[n+1, A000290(#)*A023900((n+1)/#)]` -/
def P707502201460856679.Spec : Prop :=
  ∀ n, P707502201460856679.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P15257561555646022681

`∑{d}[n+1, A007433(#)*A046692((n+1)/#)]`
-/

namespace A057660.P15257561555646022681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057660.P15257561555646022681

namespace A057660

/-- `∑{d}[n+1, A007433(#)*A046692((n+1)/#)]` -/
def P15257561555646022681.Spec : Prop :=
  ∀ n, P15257561555646022681.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P13967491027209697797

`∑{d}[n+1, A001157(#)*A055615((n+1)/#)]`
-/

namespace A057660.P13967491027209697797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057660.P13967491027209697797

namespace A057660

/-- `∑{d}[n+1, A001157(#)*A055615((n+1)/#)]` -/
def P13967491027209697797.Spec : Prop :=
  ∀ n, P13967491027209697797.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P5491931051040886888

`∑{d}[n+1, A000005(#)*A063445((n+1)/#)]`
-/

namespace A057660.P5491931051040886888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057660.P5491931051040886888

namespace A057660

/-- `∑{d}[n+1, A000005(#)*A063445((n+1)/#)]` -/
def P5491931051040886888.Spec : Prop :=
  ∀ n, P5491931051040886888.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P15715649247457461669

`∑{d}[n+1, A020478(#)*A063453((n+1)/#)]`
-/

namespace A057660.P15715649247457461669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020478 d * A063453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057660.P15715649247457461669

namespace A057660

/-- `∑{d}[n+1, A020478(#)*A063453((n+1)/#)]` -/
def P15715649247457461669.Spec : Prop :=
  ∀ n, P15715649247457461669.a n = A057660 (n + 1)

end A057660

/-! ## A057660.P14093915147951791252

`∑{d}[n+1, A034676(#)*A061019((n+1)/#)]`
-/

namespace A057660.P14093915147951791252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057660.P14093915147951791252

namespace A057660

/-- `∑{d}[n+1, A034676(#)*A061019((n+1)/#)]` -/
def P14093915147951791252.Spec : Prop :=
  ∀ n, P14093915147951791252.a n = A057660 (n + 1)

end A057660

/-!
# A057661: a(n) = Sum_{k=1..n} lcm(n,k)/n.

The programs for A057661, the canonical program `A057661.P8562176095648835282` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057661 has offset 1).

The definition of A057661 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057661.P8562176095648835282

`(1+A057660(n+1))/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057661

/-- `(1+A057660(n+1))/2` -/
def P8562176095648835282.Spec : Prop :=
  ∀ n, P8562176095648835282.a n = (A057661 (n + 1) : ℚ)

end A057661

/-! ## A057661.P7789588245846190058

`A051193(n+1)/(n+1)`
-/

namespace A057661.P7789588245846190058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051193 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A057661.P7789588245846190058

namespace A057661

/-- `A051193(n+1)/(n+1)` -/
def P7789588245846190058.Spec : Prop :=
  ∀ n, P7789588245846190058.a n = (A057661 (n + 1) : ℚ)

end A057661

/-! ## A057661.P8152172454002999729

`A332049(n+1)+1`
-/

namespace A057661.P8152172454002999729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332049 (n + 1) + 1

end

end A057661.P8152172454002999729

namespace A057661

/-- `A332049(n+1)+1` -/
def P8152172454002999729.Spec : Prop :=
  ∀ n, P8152172454002999729.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P5982840388875312008

`A365076(n+1)/2`
-/

namespace A057661.P5982840388875312008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365076 (n + 1) : ℚ) / 2

end

end A057661.P5982840388875312008

namespace A057661

/-- `A365076(n+1)/2` -/
def P5982840388875312008.Spec : Prop :=
  ∀ n, P5982840388875312008.a n = (A057661 (n + 1) : ℚ)

end A057661

/-! ## A057661.P13450264183463327468

`∑{d}[n+1, A023896(#)]`
-/

namespace A057661.P13450264183463327468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d

end

end A057661.P13450264183463327468

namespace A057661

/-- `∑{d}[n+1, A023896(#)]` -/
def P13450264183463327468.Spec : Prop :=
  ∀ n, P13450264183463327468.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P17827210561950033892

`ceil(A057660(n+1)/2)`
-/

namespace A057661.P17827210561950033892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057660 (n + 1) : ℚ) / 2⌉

end

end A057661.P17827210561950033892

namespace A057661

/-- `ceil(A057660(n+1)/2)` -/
def P17827210561950033892.Spec : Prop :=
  ∀ n, P17827210561950033892.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P1451631413139338444

`(∑[A292302(n+1)]+1)/2`
-/

namespace A057661.P1451631413139338444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A057661.P1451631413139338444

namespace A057661

/-- `(∑[A292302(n+1)]+1)/2` -/
def P1451631413139338444.Spec : Prop :=
  ∀ n, P1451631413139338444.a n = (A057661 (n + 1) : ℚ)

end A057661

/-! ## A057661.P17967093820152387849

`(∑{d}[n+1, #*A000010(#)]+1)/2`
-/

namespace A057661.P17967093820152387849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 d + 1 : ℤ) : ℚ) / 2

end

end A057661.P17967093820152387849

namespace A057661

/-- `(∑{d}[n+1, #*A000010(#)]+1)/2` -/
def P17967093820152387849.Spec : Prop :=
  ∀ n, P17967093820152387849.a n = (A057661 (n + 1) : ℚ)

end A057661

/-! ## A057661.P7854703796396223398

`∑{d}[n+1, A000217(#)*A023900((n+1)/#)]`
-/

namespace A057661.P7854703796396223398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P7854703796396223398

namespace A057661

/-- `∑{d}[n+1, A000217(#)*A023900((n+1)/#)]` -/
def P7854703796396223398.Spec : Prop :=
  ∀ n, P7854703796396223398.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P6057184235048714329

`∑{d}[n+1, A007437(#)*A055615((n+1)/#)]`
-/

namespace A057661.P6057184235048714329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P6057184235048714329

namespace A057661

/-- `∑{d}[n+1, A007437(#)*A055615((n+1)/#)]` -/
def P6057184235048714329.Spec : Prop :=
  ∀ n, P6057184235048714329.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P16199259883433554993

`∑{d}[n+1, A001157(#)*A125287((n+1)/#)]`
-/

namespace A057661.P16199259883433554993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A125287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P16199259883433554993

namespace A057661

/-- `∑{d}[n+1, A001157(#)*A125287((n+1)/#)]` -/
def P16199259883433554993.Spec : Prop :=
  ∀ n, P16199259883433554993.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P7971743951223482366

`∑{d}[n+1, A007438(#)*A130054((n+1)/#)]`
-/

namespace A057661.P7971743951223482366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P7971743951223482366

namespace A057661

/-- `∑{d}[n+1, A007438(#)*A130054((n+1)/#)]` -/
def P7971743951223482366.Spec : Prop :=
  ∀ n, P7971743951223482366.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P8001928734503666091

`∑{d}[n+1, A046692(#)*A326826((n+1)/#)]`
-/

namespace A057661.P8001928734503666091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A326826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P8001928734503666091

namespace A057661

/-- `∑{d}[n+1, A046692(#)*A326826((n+1)/#)]` -/
def P8001928734503666091.Spec : Prop :=
  ∀ n, P8001928734503666091.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P3272259785648175175

`∑{d}[n+1, A046970(#)*A344510((n+1)/#)]`
-/

namespace A057661.P3272259785648175175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A344510 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P3272259785648175175

namespace A057661

/-- `∑{d}[n+1, A046970(#)*A344510((n+1)/#)]` -/
def P3272259785648175175.Spec : Prop :=
  ∀ n, P3272259785648175175.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P8675268880522314865

`∑{d}[n+1, A101035(#)*A309731((n+1)/#)]`
-/

namespace A057661.P8675268880522314865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P8675268880522314865

namespace A057661

/-- `∑{d}[n+1, A101035(#)*A309731((n+1)/#)]` -/
def P8675268880522314865.Spec : Prop :=
  ∀ n, P8675268880522314865.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P330351225146171957

`∑{d}[n+1, A061020(#)*A390806((n+1)/#)]`
-/

namespace A057661.P330351225146171957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A390806 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P330351225146171957

namespace A057661

/-- `∑{d}[n+1, A061020(#)*A390806((n+1)/#)]` -/
def P330351225146171957.Spec : Prop :=
  ∀ n, P330351225146171957.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P8398704808508399861

`∑{d}[n+1, A309322(#)*A328641((n+1)/#)]`
-/

namespace A057661.P8398704808508399861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309322 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P8398704808508399861

namespace A057661

/-- `∑{d}[n+1, A309322(#)*A328641((n+1)/#)]` -/
def P8398704808508399861.Spec : Prop :=
  ∀ n, P8398704808508399861.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P16495447532731639543

`∑{d}[n+1, A309732(#)*A351654((n+1)/#)]`
-/

namespace A057661.P16495447532731639543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309732 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P16495447532731639543

namespace A057661

/-- `∑{d}[n+1, A309732(#)*A351654((n+1)/#)]` -/
def P16495447532731639543.Spec : Prop :=
  ∀ n, P16495447532731639543.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P7600145278502874351

`∑{d}[n+1, A349343(#)*A365007((n+1)/#)]`
-/

namespace A057661.P7600145278502874351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349343 d * A365007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P7600145278502874351

namespace A057661

/-- `∑{d}[n+1, A349343(#)*A365007((n+1)/#)]` -/
def P7600145278502874351.Spec : Prop :=
  ∀ n, P7600145278502874351.a n = A057661 (n + 1)

end A057661

/-! ## A057661.P16924436383686489400

`∑{d}[n+1, A033999(#-1)*A390804((n+1)/#)]`
-/

namespace A057661.P16924436383686489400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A390804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057661.P16924436383686489400

namespace A057661

/-- `∑{d}[n+1, A033999(#-1)*A390804((n+1)/#)]` -/
def P16924436383686489400.Spec : Prop :=
  ∀ n, P16924436383686489400.a n = A057661 (n + 1)

end A057661

/-!
# A057662: Smallest prime q such that q + 2^prime(n) is a prime, where prime(n) is the n-th prime.

The programs for A057662, there is no canonical definition to state claims against.
-/

/-! ## A057662.P11403040449347174684

`A056206(A000040(n+1))`
-/

namespace A057662.P11403040449347174684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A000040 (n + 1)).toNat

end

end A057662.P11403040449347174684

/-! ## A057662.P6319991271791292854

`A056206(p?[xor(1, n)])`
-/

namespace A057662.P6319991271791292854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057662.P6319991271791292854

/-! ## A057662.P3167707438603611727

`A056206(p?[comp[n²]])`
-/

namespace A057662.P3167707438603611727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057662.P3167707438603611727

/-! ## A057662.P15754979999243700199

`A056206(Δ[A007504(n)])`
-/

namespace A057662.P15754979999243700199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (f1 (n + 1) - f1 n).toNat

end

end A057662.P15754979999243700199

/-! ## A057662.P1266126644002632176

`A056206(A006005(n+1))`
-/

namespace A057662.P1266126644002632176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A006005 (n + 1)).toNat

end

end A057662.P1266126644002632176

/-! ## A057662.P2219352255101185139

`A056206(A008578(n+2))`
-/

namespace A057662.P2219352255101185139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A008578 (n + 2)).toNat

end

end A057662.P2219352255101185139

/-! ## A057662.P5045178544067050992

`A056206(A075643(n+2))`
-/

namespace A057662.P5045178544067050992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A075643 (n + 2)).toNat

end

end A057662.P5045178544067050992

/-! ## A057662.P15794922776231424928

`A056206(A171525(n+2))`
-/

namespace A057662.P15794922776231424928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A171525 (n + 2)).toNat

end

end A057662.P15794922776231424928

/-! ## A057662.P9106459900624288482

`A056206(A175787(n+2))`
-/

namespace A057662.P9106459900624288482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A175787 (n + 2)).toNat

end

end A057662.P9106459900624288482

/-! ## A057662.P6740484089481501466

`A056206(A182986(n+2))`
-/

namespace A057662.P6740484089481501466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A182986 (n + 2)).toNat

end

end A057662.P6740484089481501466

/-! ## A057662.P5864726507191083239

`A056206(record[A006530(n+2)])`
-/

namespace A057662.P5864726507191083239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057662.P5864726507191083239

/-! ## A057662.P1479551434824250562

`A056206(record[A014963(n+2)])`
-/

namespace A057662.P1479551434824250562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057662.P1479551434824250562

/-! ## A057662.P11214374844053833739

`A056206(record[A020639(n+2)])`
-/

namespace A057662.P11214374844053833739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057662.P11214374844053833739

/-! ## A057662.P6668799241268736913

`A056206(record[p?[A056192(n+1)]])`
-/

namespace A057662.P6668799241268736913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057662.P6668799241268736913

/-! ## A057662.P9624275907734899166

`A056206(A007504(n+1)-A007504(n))`
-/

namespace A057662.P9624275907734899166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (A007504 (n + 1) - A007504 n).toNat

end

end A057662.P9624275907734899166

/-! ## A057662.P17101049735940408931

`A056206(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A057662.P17101049735940408931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A057662.P17101049735940408931

/-! ## A057662.P18119244538111102793

`A056206(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A057662.P18119244538111102793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A057662.P18119244538111102793

/-!
# A057663: Primes p such that p + 2^p is also a prime.

The programs for A057663, there is no canonical definition to state claims against.
-/

/-! ## A057663.P10143635571724346202

`p?[A052007(n+1)]`
-/

namespace A057663.P10143635571724346202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057663.P10143635571724346202

/-!
# A057665: Numbers k such that prime(k) + 2^prime(k) is prime.

The programs for A057665, there is no canonical definition to state claims against.
-/

/-! ## A057665.P3217794708871482617

`A000720(A057663(n+1))`
-/

namespace A057665.P3217794708871482617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057663 (n + 1)).toNat

end

end A057665.P3217794708871482617

/-!
# A057666: a(n) = n*(n+1)^2*(n+2)*(n+3)^2*(n+4).

The programs for A057666, the canonical program `A057666.P17681084384234281925` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057666 has offset 0).

The definition of A057666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)²*(n+2)*(n+3)²*(n+4)` (program `A057666.P17681084384234281925`, by `A057666.P17681084384234281925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057666.P17681084384234281925

`n*(n+1)²*(n+2)*(n+3)²*(n+4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057666

/-- `n*(n+1)²*(n+2)*(n+3)²*(n+4)` -/
def P17681084384234281925.Spec : Prop :=
  ∀ n, (P17681084384234281925.a n : ℤ) = A057666 n

theorem P17681084384234281925.correct : P17681084384234281925.Spec := by
  intro n
  simp only [A057666]

end A057666

/-! ## A057666.P4679132822640634980

`A057658(n)/(n+2)²`
-/

namespace A057666.P4679132822640634980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057658 n : ℚ) / ((n + 2) ^ 2 : ℚ)

end

end A057666.P4679132822640634980

namespace A057666

/-- `A057658(n)/(n+2)²` -/
def P4679132822640634980.Spec : Prop :=
  ∀ n, P4679132822640634980.a n = (A057666 n : ℚ)

end A057666

/-! ## A057666.P16951477355745465392

`∑[∑[∑[10*12*A008893(n)]]]`
-/

namespace A057666.P16951477355745465392
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (12 * A008893 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057666.P16951477355745465392

namespace A057666

/-- `∑[∑[∑[10*12*A008893(n)]]]` -/
def P16951477355745465392.Spec : Prop :=
  ∀ n, P16951477355745465392.a n = A057666 n

end A057666

/-! ## A057666.P3307429589879953544

`∏{d}[A006881(n+1)², A001222(#)+n]/(n+2)²`
-/

namespace A057666.P3307429589879953544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, (A001222 d + (n : ℤ)) : ℤ) : ℚ) / ((n + 2) ^ 2 : ℚ)

end

end A057666.P3307429589879953544

namespace A057666

/-- `∏{d}[A006881(n+1)², A001222(#)+n]/(n+2)²` -/
def P3307429589879953544.Spec : Prop :=
  ∀ n, P3307429589879953544.a n = (A057666 n : ℚ)

end A057666

/-!
# A057667: Primes q of form q = 10p + 3, where p is an odd prime.

The programs for A057667, there is no canonical definition to state claims against.
-/

/-! ## A057667.P4699548944824127285

`A055782(n+2)`
-/

namespace A057667.P4699548944824127285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055782 (n + 2)

end

end A057667.P4699548944824127285

/-! ## A057667.P9806154133821071516

`∩[A030431(n+1), A227919(n+2)]`
-/

namespace A057667.P9806154133821071516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P9806154133821071516

/-! ## A057667.P7466111035401798404

`∩[A141885(n+1), A227919(n+1)]`
-/

namespace A057667.P7466111035401798404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P7466111035401798404

/-! ## A057667.P2993524659498056876

`p?[10*p?[2*n+1]+3]`
-/

namespace A057667.P2993524659498056876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A057667.P2993524659498056876

/-! ## A057667.P6215549005482524753

`p?[A142342(n+2)+3]`
-/

namespace A057667.P6215549005482524753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057667.P6215549005482524753

/-! ## A057667.P7577395450461491033

`p?[10*A000040(n+2)+3]`
-/

namespace A057667.P7577395450461491033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057667.P7577395450461491033

/-! ## A057667.P6961046490808261137

`∩[A045414(n+1), A227919(n+2)]`
-/

namespace A057667.P6961046490808261137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P6961046490808261137

/-! ## A057667.P3048754259091329238

`∩[A004617(n+1), A227919(n+2)]`
-/

namespace A057667.P3048754259091329238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P3048754259091329238

/-! ## A057667.P10843934525194025562

`p?[record[A112375(n+2)+2]]`
-/

namespace A057667.P10843934525194025562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112375 (n + 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057667.P10843934525194025562

/-! ## A057667.P12710125052100948694

`p?[A017305(p?[2*n+1])]`
-/

namespace A057667.P12710125052100948694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057667.P12710125052100948694

/-! ## A057667.P15079272412403451445

`p?[A008592(p?[2*n+1])+3]`
-/

namespace A057667.P15079272412403451445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057667.P15079272412403451445

/-! ## A057667.P15747933804206122995

`A017305(A023238(n+2))`
-/

namespace A057667.P15747933804206122995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A023238 (n + 2)).toNat

end

end A057667.P15747933804206122995

/-! ## A057667.P12808972455455019368

`p?[A017305(A000040(n+2))]`
-/

namespace A057667.P12808972455455019368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057667.P12808972455455019368

/-! ## A057667.P12543448759788930570

`p?[A019428(A072055(n+2))]`
-/

namespace A057667.P12543448759788930570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A072055 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057667.P12543448759788930570

/-! ## A057667.P9998205759434114893

`∩[A227919(n+2), A017305(n)]`
-/

namespace A057667.P9998205759434114893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P9998205759434114893

/-! ## A057667.P3476933167915367501

`∩[A067870(n+1), A227919(n+1)]`
-/

namespace A057667.P3476933167915367501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P3476933167915367501

/-! ## A057667.P14797813213027835101

`∩[10*n+9+A016897(2*n), A227919(n+2)]`
-/

namespace A057667.P14797813213027835101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 9 : ℤ) + A016897 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P14797813213027835101

/-! ## A057667.P8213021518412673305

`∩[A235089(2*n+1)+A235089(2*(n+1)), A227919(n+2)]`
-/

namespace A057667.P8213021518412673305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (2 * n + 1) + A235089 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P8213021518412673305

/-! ## A057667.P777467886318156050

`∩[A277590(n+1), A227919(n+2)]`
-/

namespace A057667.P777467886318156050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P777467886318156050

/-! ## A057667.P5989840379800799662

`∩[A072683(n+1), A227919(n+1)]`
-/

namespace A057667.P5989840379800799662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057667.P5989840379800799662

/-!
# A057668: Number of minimal 7-covers of a labeled n-set.

The programs for A057668, there is no canonical definition to state claims against.
-/

/-! ## A057668.P7040367822880951594

`A035348(eq[11, A066657(n)])`
-/

namespace A057668.P7040367822880951594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057668.P7040367822880951594

/-! ## A057668.P14661992065354663289

`A035348(eq[6, A002262(n)]+1)`
-/

namespace A057668.P14661992065354663289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057668.P14661992065354663289

/-! ## A057668.P1689647299408820457

`A035348(eq[8, A131818(n+1)])`
-/

namespace A057668.P1689647299408820457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057668.P1689647299408820457

/-! ## A057668.P14287161391195956140

`A035348(Δ[A023551(n+1)]+13)`
-/

namespace A057668.P14287161391195956140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (f1 (n + 1) - f1 n + 13).toNat

end

end A057668.P14287161391195956140

/-! ## A057668.P17751784712881653535

`A035348(floor(acot(n))+A167499(n+5)+2)`
-/

namespace A057668.P17751784712881653535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A167499 (n + 5) + 2)).toNat

end

end A057668.P17751784712881653535

/-!
# A057670: a(n) = Sum_{k|n} lcm(k, n/k).

The programs for A057670, the canonical program `A057670.P12937353314241639351` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057670 has offset 1).

The definition of A057670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057670.P12937353314241639351

`∑{d}[n+1, lcm(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057670

/-- `∑{d}[n+1, lcm(#, (n+1)/#)]` -/
def P12937353314241639351.Spec : Prop :=
  ∀ n, (P12937353314241639351.a n : ℤ) = A057670 (n + 1)

theorem P12937353314241639351.correct : P12937353314241639351.Spec := by
  intro n
  simp only [A057670, Nat.add_sub_cancel]

end A057670

/-! ## A057670.P10853481967118692608

`∑{d}[n+1, (n+1)/A000188(#)]`
-/

namespace A057670.P10853481967118692608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (A000188 d : ℚ)

end

end A057670.P10853481967118692608

namespace A057670

/-- `∑{d}[n+1, (n+1)/A000188(#)]` -/
def P10853481967118692608.Spec : Prop :=
  ∀ n, P10853481967118692608.a n = (A057670 (n + 1) : ℚ)

end A057670

/-! ## A057670.P4104692291834885360

`∑{d}[n+1, (n+1)/(A057918(#)+1)]`
-/

namespace A057670.P4104692291834885360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (A057918 d + 1 : ℚ)

end

end A057670.P4104692291834885360

namespace A057670

/-- `∑{d}[n+1, (n+1)/(A057918(#)+1)]` -/
def P4104692291834885360.Spec : Prop :=
  ∀ n, P4104692291834885360.a n = (A057670 (n + 1) : ℚ)

end A057670

/-! ## A057670.P10900473614205685029

`∑{d}[n+1, #*A019554((n+1)/#)]`
-/

namespace A057670.P10900473614205685029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057670.P10900473614205685029

namespace A057670

/-- `∑{d}[n+1, #*A019554((n+1)/#)]` -/
def P10900473614205685029.Spec : Prop :=
  ∀ n, P10900473614205685029.a n = A057670 (n + 1)

end A057670

/-! ## A057670.P2069749719094249674

`∑{d}[n+1, A069290(#)*A078439((n+1)/#)]`
-/

namespace A057670.P2069749719094249674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069290 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057670.P2069749719094249674

namespace A057670

/-- `∑{d}[n+1, A069290(#)*A078439((n+1)/#)]` -/
def P2069749719094249674.Spec : Prop :=
  ∀ n, P2069749719094249674.a n = A057670 (n + 1)

end A057670

/-! ## A057670.P7493277835958038033

`∑{d}[n+1, A064950(#)*A178450((n+1)/#)]`
-/

namespace A057670.P7493277835958038033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064950 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057670.P7493277835958038033

namespace A057670

/-- `∑{d}[n+1, A064950(#)*A178450((n+1)/#)]` -/
def P7493277835958038033.Spec : Prop :=
  ∀ n, P7493277835958038033.a n = A057670 (n + 1)

end A057670

/-! ## A057670.P3288481473413359292

`∑{d}[n+1, A000010(#)*A346613((n+1)/#)]`
-/

namespace A057670.P3288481473413359292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A346613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057670.P3288481473413359292

namespace A057670

/-- `∑{d}[n+1, A000010(#)*A346613((n+1)/#)]` -/
def P3288481473413359292.Spec : Prop :=
  ∀ n, P3288481473413359292.a n = A057670 (n + 1)

end A057670

/-! ## A057670.P11099545498677099076

`∑{d}[n+1, A000203(#)*A346612((n+1)/#)]`
-/

namespace A057670.P11099545498677099076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057670.P11099545498677099076

namespace A057670

/-- `∑{d}[n+1, A000203(#)*A346612((n+1)/#)]` -/
def P11099545498677099076.Spec : Prop :=
  ∀ n, P11099545498677099076.a n = A057670 (n + 1)

end A057670

/-! ## A057670.P16214537079456385308

`∑{d}[n+1, A019554(#*(n+1))]`
-/

namespace A057670.P16214537079456385308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019554 (d * (n + 1))

end

end A057670.P16214537079456385308

namespace A057670

/-- `∑{d}[n+1, A019554(#*(n+1))]` -/
def P16214537079456385308.Spec : Prop :=
  ∀ n, P16214537079456385308.a n = A057670 (n + 1)

end A057670

/-!
# A057671: a(n) equals floor(Vc(n) - Vs(n)), where Vc(n) is the volume of the cube with side length n and Vs(n) is the volume of the sphere of diameter n.

The programs for A057671, the canonical program `A057671.P10779588522006092660` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057671 has offset 1).

The definition of A057671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057671.P10779588522006092660

`floor((n+1)^3*(1-π/6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057671

/-- `floor((n+1)^3*(1-π/6))` -/
def P10779588522006092660.Spec : Prop :=
  ∀ n, P10779588522006092660.a n = A057671 (n + 1)

theorem P10779588522006092660.correct : P10779588522006092660.Spec := by
  intro n
  simp only [A057671, Nat.add_sub_cancel]

end A057671

/-! ## A057671.P1334822557928978259

`A068601(n+1)-A228272(n+1)`
-/

namespace A057671.P1334822557928978259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - A228272 (n + 1)

end

end A057671.P1334822557928978259

namespace A057671

/-- `A068601(n+1)-A228272(n+1)` -/
def P1334822557928978259.Spec : Prop :=
  ∀ n, P1334822557928978259.a n = A057671 (n + 1)

end A057671

/-! ## A057671.P16960467579124753021

`A068601(n+1)-floor(A114378(n+1)/6)`
-/

namespace A057671.P16960467579124753021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - ⌊(A114378 (n + 1) : ℚ) / 6⌋

end

end A057671.P16960467579124753021

namespace A057671

/-- `A068601(n+1)-floor(A114378(n+1)/6)` -/
def P16960467579124753021.Spec : Prop :=
  ∀ n, P16960467579124753021.a n = A057671 (n + 1)

end A057671

/-! ## A057671.P4709829894348446967

`A068601(n+1)-floor(A140758((n+1)^3)/3)`
-/

namespace A057671.P4709829894348446967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - ⌊(A140758 ((n + 1) ^ 3) : ℚ) / 3⌋

end

end A057671.P4709829894348446967

namespace A057671

/-- `A068601(n+1)-floor(A140758((n+1)^3)/3)` -/
def P4709829894348446967.Spec : Prop :=
  ∀ n, P4709829894348446967.a n = A057671 (n + 1)

end A057671

/-! ## A057671.P3199521340330345055

`A182260(n+1)+A001222(A008485(n))`
-/

namespace A057671.P3199521340330345055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) + A001222 (A008485 n).toNat

end

end A057671.P3199521340330345055

namespace A057671

/-- `A182260(n+1)+A001222(A008485(n))` -/
def P3199521340330345055.Spec : Prop :=
  ∀ n, P3199521340330345055.a n = A057671 (n + 1)

end A057671

/-!
# A057672: a(n) equals floor(As(n) - Ac(n)), where As(n) is the area of the square with side length n and Ac(n) is the area of the circle of diameter n.

The programs for A057672, the canonical program `A057672.P4311813055474292892` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057672 has offset 1).

The definition of A057672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057672.P4311813055474292892

`floor((n+1)²*(1-π/4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057672

/-- `floor((n+1)²*(1-π/4))` -/
def P4311813055474292892.Spec : Prop :=
  ∀ n, P4311813055474292892.a n = A057672 (n + 1)

theorem P4311813055474292892.correct : P4311813055474292892.Spec := by
  intro n
  simp only [A057672, Nat.add_sub_cancel]

end A057672

/-! ## A057672.P3900105481414460228

`ceil((1-atan(1))*(n+1)²)-1`
-/

namespace A057672.P3900105481414460228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.arctan (1 : ℝ)) * ((n + 1) ^ 2 : ℝ)⌉ - 1

end

end A057672.P3900105481414460228

namespace A057672

/-- `ceil((1-atan(1))*(n+1)²)-1` -/
def P3900105481414460228.Spec : Prop :=
  ∀ n, P3900105481414460228.a n = A057672 (n + 1)

end A057672

/-! ## A057672.P13225920126246619800

`A002265(A235532(n+1))`
-/

namespace A057672.P13225920126246619800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A235532 (n + 1)).toNat

end

end A057672.P13225920126246619800

namespace A057672

/-- `A002265(A235532(n+1))` -/
def P13225920126246619800.Spec : Prop :=
  ∀ n, P13225920126246619800.a n = A057672 (n + 1)

end A057672

/-!
# A057674: Primes -p+2^n with smallest p prime, arising in A057674.

The programs for A057674, there is no canonical definition to state claims against.
-/

/-! ## A057674.P17000242054390657137

`2^(n+1)-A057673(n+1)`
-/

namespace A057674.P17000242054390657137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A057673 (n + 1)

end

end A057674.P17000242054390657137

/-! ## A057674.P15261366386683635740

`A126646(n)-A000010(A057673(n+1))`
-/

namespace A057674.P15261366386683635740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A000010 (A057673 (n + 1)).toNat

end

end A057674.P15261366386683635740

/-! ## A057674.P12879208652271455744

`∑[A000079(n)]-A000010(A057673(n+1))`
-/

namespace A057674.P12879208652271455744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000010 (A057673 (n + 1)).toNat

end

end A057674.P12879208652271455744

/-! ## A057674.P12547546118366373979

`A000079(n+1)-A014963(A057673(n+1))`
-/

namespace A057674.P12547546118366373979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A014963 (A057673 (n + 1)).toNat

end

end A057674.P12547546118366373979

/-! ## A057674.P3599588562076389380

`A056208(n+1)-(A057673(n+1)+A056206(n+1))`
-/

namespace A057674.P3599588562076389380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 (n + 1) - (A057673 (n + 1) + A056206 (n + 1))

end

end A057674.P3599588562076389380

/-! ## A057674.P13149933645607554864

`Δ[A000051(n+1)-∑[A057673(n)]]`
-/

namespace A057674.P13149933645607554864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057674.P13149933645607554864

/-!
# A057675: a(n) = 1 - (5/6)*n + (5/2)*n^2 + (10/3)*n^3 + n^4.

The programs for A057675, the canonical program `A057675.P2630206491767238085` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057675 has offset 0).

The definition of A057675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057675.P2630206491767238085

`1-5/6*n+5/2*n²+10/3*n^3+n^4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057675

/-- `1-5/6*n+5/2*n²+10/3*n^3+n^4` -/
def P2630206491767238085.Spec : Prop :=
  ∀ n, P2630206491767238085.a n = (A057675 n : ℚ)

end A057675

/-! ## A057675.P17483967312756797901

`∑[(n+1)*A081350(2*n)]`
-/

namespace A057675.P17483967312756797901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081350 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057675.P17483967312756797901

namespace A057675

/-- `∑[(n+1)*A081350(2*n)]` -/
def P17483967312756797901.Spec : Prop :=
  ∀ n, P17483967312756797901.a n = A057675 n

end A057675

/-! ## A057675.P10800471466016498754

`∑[A005408(n)*A212342(2*n)]`
-/

namespace A057675.P10800471466016498754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A212342 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057675.P10800471466016498754

namespace A057675

/-- `∑[A005408(n)*A212342(2*n)]` -/
def P10800471466016498754.Spec : Prop :=
  ∀ n, P10800471466016498754.a n = A057675 n

end A057675

/-! ## A057675.P5929605083742730766

`∑[abs(A160378(2*n+1)-A005917(n+1))]`
-/

namespace A057675.P5929605083742730766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160378 (2 * n + 1) - A005917 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057675.P5929605083742730766

namespace A057675

/-- `∑[abs(A160378(2*n+1)-A005917(n+1))]` -/
def P5929605083742730766.Spec : Prop :=
  ∀ n, P5929605083742730766.a n = A057675 n

end A057675

/-! ## A057675.P994798104132991457

`∑[(n+1)*A264798(n²)]`
-/

namespace A057675.P994798104132991457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A264798 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057675.P994798104132991457

namespace A057675

/-- `∑[(n+1)*A264798(n²)]` -/
def P994798104132991457.Spec : Prop :=
  ∀ n, P994798104132991457.a n = A057675 n

end A057675

/-!
# A057676: Smallest prime q such that 2^prime(n) - q is prime.

The programs for A057676, there is no canonical definition to state claims against.
-/

/-! ## A057676.P6638917160026831225

`A057673(p?[comp[n²]])`
-/

namespace A057676.P6638917160026831225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057676.P6638917160026831225

/-! ## A057676.P2789692791439745537

`A057673(Δ[A007504(n)])`
-/

namespace A057676.P2789692791439745537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (f1 (n + 1) - f1 n).toNat

end

end A057676.P2789692791439745537

/-! ## A057676.P13611478883895920333

`A057673(A000040(n+1))`
-/

namespace A057676.P13611478883895920333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A000040 (n + 1)).toNat

end

end A057676.P13611478883895920333

/-! ## A057676.P10926415251879099932

`A057673(A008578(n+2))`
-/

namespace A057676.P10926415251879099932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A008578 (n + 2)).toNat

end

end A057676.P10926415251879099932

/-! ## A057676.P2480909746753734175

`A057673(A182986(n+2))`
-/

namespace A057676.P2480909746753734175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A182986 (n + 2)).toNat

end

end A057676.P2480909746753734175

/-! ## A057676.P6187702523770973876

`A057673(record[A006530(n+2)])`
-/

namespace A057676.P6187702523770973876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057676.P6187702523770973876

/-! ## A057676.P6508878237963845702

`A057673(record[A014963(n+2)])`
-/

namespace A057676.P6508878237963845702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057676.P6508878237963845702

/-! ## A057676.P16457840740485536432

`A057673(record[A020639(n+2)])`
-/

namespace A057676.P16457840740485536432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057676.P16457840740485536432

/-! ## A057676.P5851904706413348609

`A057673(A006093(n+1)+1)`
-/

namespace A057676.P5851904706413348609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A006093 (n + 1) + 1).toNat

end

end A057676.P5851904706413348609

/-! ## A057676.P1062774614054567198

`A057673(A040976(n+1)+2)`
-/

namespace A057676.P1062774614054567198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A040976 (n + 1) + 2).toNat

end

end A057676.P1062774614054567198

/-! ## A057676.P7721146737789581970

`A057673(A014692(n+1)+n)`
-/

namespace A057676.P7721146737789581970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A057676.P7721146737789581970

/-! ## A057676.P14693479001114956641

`A057673(record[A000010(n+1)+1])`
-/

namespace A057676.P14693479001114956641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057676.P14693479001114956641

/-! ## A057676.P5802705576317307391

`A057673(A007504(n+1)-A007504(n))`
-/

namespace A057676.P5802705576317307391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A007504 (n + 1) - A007504 n).toNat

end

end A057676.P5802705576317307391

/-!
# A057677: a(n) is the numerator of b(n) where b(n)=1/b(n-1)+1/b(n-2) with b(1)=1 and b(2)=2.

The programs for A057677, the canonical program `A057677.P3998858233446129363` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057677 has offset 1).

The definition of A057677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057677.P3998858233446129363

`a(n-2)²*a(n-3)+a(n-1)*a(n-3)*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057677

/-- `a(n-2)²*a(n-3)+a(n-1)*a(n-3)*a(n-4)` -/
def P3998858233446129363.Spec : Prop :=
  ∀ n, (P3998858233446129363.a n : ℤ) = A057677 (n + 1)

theorem P3998858233446129363.correct : P3998858233446129363.Spec := by
  intro n
  simp only [A057677, Nat.add_sub_cancel]

end A057677

/-! ## A057677.P17917183773104341763

`gcd(A066932(n+2), A066932(n+3))`
-/

namespace A057677.P17917183773104341763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066932 (n + 2)) (A066932 (n + 3))

end

end A057677.P17917183773104341763

namespace A057677

/-- `gcd(A066932(n+2), A066932(n+3))` -/
def P17917183773104341763.Spec : Prop :=
  ∀ n, (P17917183773104341763.a n : ℤ) = A057677 (n + 1)

end A057677

/-!
# A057681: a(n) = Sum_{j=0..floor(n/3)} (-1)^j*binomial(n,3*j).

The programs for A057681, the canonical program `A057681.P4577860553955694504` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057681 has offset 0).

The definition of A057681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057681.P4577860553955694504

`3*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057681

/-- `3*a(n-1)-3*a(n-2)` -/
def P4577860553955694504.Spec : Prop :=
  ∀ n, P4577860553955694504.a n = A057681 n

theorem P4577860553955694504.correct : P4577860553955694504.Spec := by
  intro n
  simp only [A057681]

end A057681

/-! ## A057681.P14810853507223370067

`ogf((1-2x+x^2)/(1-3x+3x^2))`
-/

namespace A057681.P14810853507223370067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3] n

end

end A057681.P14810853507223370067

namespace A057681

/-- `ogf((1-2x+x^2)/(1-3x+3x^2))` -/
def P14810853507223370067.Spec : Prop :=
  ∀ n, P14810853507223370067.a n = A057681 n

end A057681

/-! ## A057681.P14269366850542644556

`3*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A057681.P14269366850542644556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * (a (n - 1) - a (n - 2))

end

end A057681.P14269366850542644556

namespace A057681

/-- `3*(a(n-1)-a(n-2))` -/
def P14269366850542644556.Spec : Prop :=
  ∀ n, P14269366850542644556.a n = A057681 n

theorem P14269366850542644556.correct : P14269366850542644556.Spec := by
  intro n
  simp only [A057681, Nat.add_sub_cancel, A057681.P14269366850542644556.a, A057681.P4577860553955694504.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057681

/-! ## A057681.P520014740065490499

`Δ[A057682(n)]`
-/

namespace A057681.P520014740065490499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057681.P520014740065490499

namespace A057681

/-- `Δ[A057682(n)]` -/
def P520014740065490499.Spec : Prop :=
  ∀ n, P520014740065490499.a n = A057681 n

end A057681

/-! ## A057681.P7498291879420777927

`A103312(n+1)`
-/

namespace A057681.P7498291879420777927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1)

end

end A057681.P7498291879420777927

namespace A057681

/-- `A103312(n+1)` -/
def P7498291879420777927.Spec : Prop :=
  ∀ n, P7498291879420777927.a n = A057681 n

end A057681

/-! ## A057681.P17527079968294308231

`A057682(n+1)-A057682(n)`
-/

namespace A057681.P17527079968294308231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 1) - A057682 n

end

end A057681.P17527079968294308231

namespace A057681

/-- `A057682(n+1)-A057682(n)` -/
def P17527079968294308231.Spec : Prop :=
  ∀ n, P17527079968294308231.a n = A057681 n

end A057681

/-! ## A057681.P7631722701267079083

`ceil(A057682(n+2)/3)`
-/

namespace A057681.P7631722701267079083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057682 (n + 2) : ℚ) / 3⌉

end

end A057681.P7631722701267079083

namespace A057681

/-- `ceil(A057682(n+2)/3)` -/
def P7631722701267079083.Spec : Prop :=
  ∀ n, P7631722701267079083.a n = A057681 n

end A057681

/-! ## A057681.P3550127187870483963

`A131023(n+1)-A131577(n)`
-/

namespace A057681.P3550127187870483963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131023 (n + 1) - A131577 n

end

end A057681.P3550127187870483963

namespace A057681

/-- `A131023(n+1)-A131577(n)` -/
def P3550127187870483963.Spec : Prop :=
  ∀ n, P3550127187870483963.a n = A057681 n

end A057681

/-! ## A057681.P16798212646129264479

`2*A306847(n)-A024493(n)`
-/

namespace A057681.P16798212646129264479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306847 n - A024493 n

end

end A057681.P16798212646129264479

namespace A057681

/-- `2*A306847(n)-A024493(n)` -/
def P16798212646129264479.Spec : Prop :=
  ∀ n, P16798212646129264479.a n = A057681 n

end A057681

/-! ## A057681.P4372800191012524690

`2*A129339(n+1)-∑[A129339(n+1)]`
-/

namespace A057681.P4372800191012524690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129339 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057681.P4372800191012524690

namespace A057681

/-- `2*A129339(n+1)-∑[A129339(n+1)]` -/
def P4372800191012524690.Spec : Prop :=
  ∀ n, P4372800191012524690.a n = A057681 n

end A057681

/-! ## A057681.P14011979942735869815

`Δ[Δ[A129339(n+1)-A131023(n+1)]]`
-/

namespace A057681.P14011979942735869815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A131023 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057681.P14011979942735869815

namespace A057681

/-- `Δ[Δ[A129339(n+1)-A131023(n+1)]]` -/
def P14011979942735869815.Spec : Prop :=
  ∀ n, P14011979942735869815.a n = A057681 n

end A057681

/-! ## A057681.P6721842575977051993

`A092236(n)-A140429(n)`
-/

namespace A057681.P6721842575977051993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092236 n - A140429 n

end

end A057681.P6721842575977051993

namespace A057681

/-- `A092236(n)-A140429(n)` -/
def P6721842575977051993.Spec : Prop :=
  ∀ n, P6721842575977051993.a n = A057681 n

end A057681

/-! ## A057681.P5307694756193525218

`Δ[A057083(n)]/A165020(n+4)`
-/

namespace A057681.P5307694756193525218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057083 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A165020 (n + 4) : ℚ)

end

end A057681.P5307694756193525218

namespace A057681

/-- `Δ[A057083(n)]/A165020(n+4)` -/
def P5307694756193525218.Spec : Prop :=
  ∀ n, P5307694756193525218.a n = (A057681 n : ℚ)

end A057681

/-! ## A057681.P14463372691474124798

`A307039(∑[n+3])`
-/

namespace A057681.P14463372691474124798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057681.P14463372691474124798

namespace A057681

/-- `A307039(∑[n+3])` -/
def P14463372691474124798.Spec : Prop :=
  ∀ n, P14463372691474124798.a n = A057681 n

end A057681

/-!
# A057682: a(n) = Sum_{j=0..floor(n/3)} (-1)^j*binomial(n,3*j+1).

The programs for A057682, the canonical program `A057682.P17592790748824033871` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057682 has offset 0).

The definition of A057682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057682.P17592790748824033871

`3*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057682

/-- `3*a(n-1)-3*a(n-2)` -/
def P17592790748824033871.Spec : Prop :=
  ∀ n, P17592790748824033871.a n = A057682 n

theorem P17592790748824033871.correct : P17592790748824033871.Spec := by
  intro n
  simp only [A057682]

end A057682

/-! ## A057682.P7176379501827633246

`ogf((x-x^2)/(1-3x+3x^2))`
-/

namespace A057682.P7176379501827633246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, 3] n

end

end A057682.P7176379501827633246

namespace A057682

/-- `ogf((x-x^2)/(1-3x+3x^2))` -/
def P7176379501827633246.Spec : Prop :=
  ∀ n, P7176379501827633246.a n = A057682 n

end A057682

/-! ## A057682.P6532896733202609954

`3*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A057682.P6532896733202609954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * (a (n - 1) - a (n - 2))

end

end A057682.P6532896733202609954

namespace A057682

/-- `3*(a(n-1)-a(n-2))` -/
def P6532896733202609954.Spec : Prop :=
  ∀ n, P6532896733202609954.a n = A057682 n

theorem P6532896733202609954.correct : P6532896733202609954.Spec := by
  intro n
  simp only [A057682, Nat.add_sub_cancel, A057682.P6532896733202609954.a, A057682.P17592790748824033871.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057682

/-! ## A057682.P7125876596056030206

`∑[A103312(n)]`
-/

namespace A057682.P7125876596056030206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057682.P7125876596056030206

namespace A057682

/-- `∑[A103312(n)]` -/
def P7125876596056030206.Spec : Prop :=
  ∀ n, P7125876596056030206.a n = A057682 n

end A057682

/-! ## A057682.P2256374385784058266

`A057681(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A057682.P2256374385784058266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057681 (n - 1) + a (n - 1)

end

end A057682.P2256374385784058266

namespace A057682

/-- `A057681(n-1)+a(n-1)` -/
def P2256374385784058266.Spec : Prop :=
  ∀ n, P2256374385784058266.a n = A057682 n

end A057682

/-! ## A057682.P15083569885314302809

`∑[A057681(n-A057681(floor(4/(n+1))))]`
-/

namespace A057682.P15083569885314302809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 ((n : ℤ) - A057681 ⌊4 / (n + 1 : ℚ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057682.P15083569885314302809

namespace A057682

/-- `∑[A057681(n-A057681(floor(4/(n+1))))]` -/
def P15083569885314302809.Spec : Prop :=
  ∀ n, P15083569885314302809.a n = A057682 n

end A057682

/-! ## A057682.P9793780035433526114

`floor(A057083(n)/3)`
-/

namespace A057682.P9793780035433526114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057083 n : ℚ) / 3⌋

end

end A057682.P9793780035433526114

namespace A057682

/-- `floor(A057083(n)/3)` -/
def P9793780035433526114.Spec : Prop :=
  ∀ n, P9793780035433526114.a n = A057682 n

end A057682

/-! ## A057682.P10232639612481656457

`∑[A057681(n)]-A057681(n)`
-/

namespace A057682.P10232639612481656457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057681 n

end

end A057682.P10232639612481656457

namespace A057682

/-- `∑[A057681(n)]-A057681(n)` -/
def P10232639612481656457.Spec : Prop :=
  ∀ n, P10232639612481656457.a n = A057682 n

end A057682

/-! ## A057682.P6215778033791552313

`Δ[Δ[n-A103312(n+1)]]`
-/

namespace A057682.P6215778033791552313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057682.P6215778033791552313

namespace A057682

/-- `Δ[Δ[n-A103312(n+1)]]` -/
def P6215778033791552313.Spec : Prop :=
  ∀ n, P6215778033791552313.a n = A057682 n

end A057682

/-! ## A057682.P6104081278230869301

`A134581(n)-A140343(n)`
-/

namespace A057682.P6104081278230869301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134581 n - A140343 n

end

end A057682.P6104081278230869301

namespace A057682

/-- `A134581(n)-A140343(n)` -/
def P6104081278230869301.Spec : Prop :=
  ∀ n, P6104081278230869301.a n = A057682 n

end A057682

/-! ## A057682.P14205428554940264937

`Δ[A057681(n)-A057681(n+1)]`
-/

namespace A057682.P14205428554940264937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n - A057681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057682.P14205428554940264937

namespace A057682

/-- `Δ[A057681(n)-A057681(n+1)]` -/
def P14205428554940264937.Spec : Prop :=
  ∀ n, P14205428554940264937.a n = A057682 n

end A057682

/-! ## A057682.P4237518159692593445

`A131292(2*n+1)-A131292(2*n)`
-/

namespace A057682.P4237518159692593445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131292 (2 * n + 1) - A131292 (2 * n)

end

end A057682.P4237518159692593445

namespace A057682

/-- `A131292(2*n+1)-A131292(2*n)` -/
def P4237518159692593445.Spec : Prop :=
  ∀ n, P4237518159692593445.a n = A057682 n

end A057682

/-! ## A057682.P1723867878917034379

`A129339(n+1)-A011782(n)`
-/

namespace A057682.P1723867878917034379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A011782 n

end

end A057682.P1723867878917034379

namespace A057682

/-- `A129339(n+1)-A011782(n)` -/
def P1723867878917034379.Spec : Prop :=
  ∀ n, P1723867878917034379.a n = A057682 n

end A057682

/-! ## A057682.P18137565517484287631

`Δ[A024495(n)-2*A290993(n)]`
-/

namespace A057682.P18137565517484287631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n - 2 * A290993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057682.P18137565517484287631

namespace A057682

/-- `Δ[A024495(n)-2*A290993(n)]` -/
def P18137565517484287631.Spec : Prop :=
  ∀ n, P18137565517484287631.a n = A057682 n

end A057682

/-! ## A057682.P382332053213719326

`Δ[A129339(n+1)-A131023(n+1)]`
-/

namespace A057682.P382332053213719326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A131023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057682.P382332053213719326

namespace A057682

/-- `Δ[A129339(n+1)-A131023(n+1)]` -/
def P382332053213719326.Spec : Prop :=
  ∀ n, P382332053213719326.a n = A057682 n

end A057682

/-! ## A057682.P10439026699963328072

`A131023(n+1)+A131023(n+1)-A131023(n+2)`
-/

namespace A057682.P10439026699963328072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131023 (n + 1) + (A131023 (n + 1) - A131023 (n + 2))

end

end A057682.P10439026699963328072

namespace A057682

/-- `A131023(n+1)+A131023(n+1)-A131023(n+2)` -/
def P10439026699963328072.Spec : Prop :=
  ∀ n, P10439026699963328072.a n = A057682 n

end A057682

/-! ## A057682.P2980296353909215909

`A220399(∑[n]+1)`
-/

namespace A057682.P2980296353909215909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220399 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A057682.P2980296353909215909

namespace A057682

/-- `A220399(∑[n]+1)` -/
def P2980296353909215909.Spec : Prop :=
  ∀ n, P2980296353909215909.a n = A057682 n

end A057682

/-!
# A057684: Trajectory of 13 under the '13x+1' map.

The programs for A057684, there is no canonical definition to state claims against.
-/

/-! ## A057684.P10563041850286974018

`A368085(A000096(n+5)-4)`
-/

namespace A057684.P10563041850286974018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368085 (A000096 (n + 5) - 4).toNat

end

end A057684.P10563041850286974018

/-!
# A057688: Trajectory of 5 under the '5x+1' map.

The programs for A057688, there is no canonical definition to state claims against.
-/

/-! ## A057688.P9221795342826033699

`A133419(a(n-1))` with `a(0)=5`
-/

namespace A057688.P9221795342826033699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A133419 (a (n - 1)).toNat

end

end A057688.P9221795342826033699

/-!
# A057690: Length of cycle in trajectory of P under the 'Px+1' map, where P = n-th prime, or -1 if trajectory does not cycle.

The programs for A057690, there is no canonical definition to state claims against.
-/

/-! ## A057690.P2702795043753702468

`∑{e}[A160656(n+2)+1, #]+1`
-/

namespace A057690.P2702795043753702468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A057690.P2702795043753702468

/-! ## A057690.P12158494860531341495

`A069904(A160656(n+2))+1`
-/

namespace A057690.P12158494860531341495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A160656 (n + 2)).toNat + 1

end

end A057690.P12158494860531341495

/-! ## A057690.P12133140687334649923

`A073093(A160656(n+2)+1)`
-/

namespace A057690.P12133140687334649923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A160656 (n + 2) + 1).toNat

end

end A057690.P12133140687334649923

/-! ## A057690.P12175331437902722507

`A001222(A160656(n+2)+1)+1`
-/

namespace A057690.P12175331437902722507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A160656 (n + 2) + 1).toNat + 1

end

end A057690.P12175331437902722507

/-! ## A057690.P9158362001598204295

`A001222(A002378(A160656(n+2)))`
-/

namespace A057690.P9158362001598204295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002378 (A160656 (n + 2)).toNat).toNat

end

end A057690.P9158362001598204295

/-! ## A057690.P10304477679811341286

`A001222(A026491(p?[A160656(n+1)]))`
-/

namespace A057690.P10304477679811341286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A026491 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A057690.P10304477679811341286

/-! ## A057690.P11782607797170587798

`A001222(A066104(p?[A160656(n+1)]))`
-/

namespace A057690.P11782607797170587798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A057690.P11782607797170587798

/-! ## A057690.P884609776854139464

`A001222(A000203(2*A160656(n+2)))`
-/

namespace A057690.P884609776854139464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (2 * A160656 (n + 2)).toNat).toNat

end

end A057690.P884609776854139464

/-! ## A057690.P17901685582747868927

`A001222(A045943(p?[A160656(n+1)]))`
-/

namespace A057690.P17901685582747868927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045943 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A057690.P17901685582747868927

/-!
# A057693: Number of permutations on n letters that have only cycles of length 3 or less.

The programs for A057693, the canonical program `A057693.P14042296473884531233` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057693 has offset 0).

The definition of A057693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057693.P14042296473884531233

`a(n-1)+(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057693

/-- `a(n-1)+(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)` -/
def P14042296473884531233.Spec : Prop :=
  ∀ n, P14042296473884531233.a n = A057693 n

theorem P14042296473884531233.correct : P14042296473884531233.Spec := by
  intro n
  simp only [A057693]

end A057693

/-! ## A057693.P6488814906299314831

`A071007(n)+A000085(n)`
-/

namespace A057693.P6488814906299314831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071007 n + A000085 n

end

end A057693.P6488814906299314831

namespace A057693

/-- `A071007(n)+A000085(n)` -/
def P6488814906299314831.Spec : Prop :=
  ∀ n, P6488814906299314831.a n = A057693 n

theorem P6488814906299314831.correct : P6488814906299314831.Spec := by
  intro n
  simp only [A057693, Nat.add_sub_cancel, A057693.P6488814906299314831.a, A057693.P14042296473884531233.a, A000085, A000085.P6317799103021482191.a, A071007, A071007.P3643576512482097279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057693

/-! ## A057693.P11937942002013285202

`n!-A202364(n)`
-/

namespace A057693.P11937942002013285202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A202364 n

end

end A057693.P11937942002013285202

namespace A057693

/-- `n!-A202364(n)` -/
def P11937942002013285202.Spec : Prop :=
  ∀ n, P11937942002013285202.a n = A057693 n

end A057693

/-! ## A057693.P14987070296022339298

`A000142(n)-A202364(n)`
-/

namespace A057693.P14987070296022339298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A202364 n

end

end A057693.P14987070296022339298

namespace A057693

/-- `A000142(n)-A202364(n)` -/
def P14987070296022339298.Spec : Prop :=
  ∀ n, P14987070296022339298.a n = A057693 n

end A057693

/-! ## A057693.P3128658292298223150

`A094587(∑[n])-A202364(n)`
-/

namespace A057693.P3128658292298223150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (∑ j ∈ Finset.range (n + 1), f1 j) - A202364 n

end

end A057693.P3128658292298223150

namespace A057693

/-- `A094587(∑[n])-A202364(n)` -/
def P3128658292298223150.Spec : Prop :=
  ∀ n, P3128658292298223150.a n = A057693 n

end A057693

/-! ## A057693.P15819265402573494048

`∏[A028310(n)]-A202364(n)`
-/

namespace A057693.P15819265402573494048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A202364 n

end

end A057693.P15819265402573494048

namespace A057693

/-- `∏[A028310(n)]-A202364(n)` -/
def P15819265402573494048.Spec : Prop :=
  ∀ n, P15819265402573494048.a n = A057693 n

end A057693

/-! ## A057693.P68817126433138959

`A008279(A000096(n))-A202364(n)`
-/

namespace A057693.P68817126433138959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat - A202364 n

end

end A057693.P68817126433138959

namespace A057693

/-- `A008279(A000096(n))-A202364(n)` -/
def P68817126433138959.Spec : Prop :=
  ∀ n, P68817126433138959.a n = A057693 n

end A057693

/-! ## A057693.P5875530655382370408

`A068424(A179865(n+1))-A202364(n)`
-/

namespace A057693.P5875530655382370408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (A179865 (n + 1)).toNat - A202364 n

end

end A057693.P5875530655382370408

namespace A057693

/-- `A068424(A179865(n+1))-A202364(n)` -/
def P5875530655382370408.Spec : Prop :=
  ∀ n, P5875530655382370408.a n = A057693 n

end A057693

/-! ## A057693.P2133003512117039285

`A166350(A034856(n+1))-A202364(n)`
-/

namespace A057693.P2133003512117039285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A034856 (n + 1)).toNat - A202364 n

end

end A057693.P2133003512117039285

namespace A057693

/-- `A166350(A034856(n+1))-A202364(n)` -/
def P2133003512117039285.Spec : Prop :=
  ∀ n, P2133003512117039285.a n = A057693 n

end A057693

/-!
# A057694: Chance of holding n-th best poker hand or better is approximately 1/a(n).

The programs for A057694, there is no canonical definition to state claims against.
-/

/-! ## A057694.P3235798067981033936

`or(A010673(n)², A014355(n+1))`
-/

namespace A057694.P3235798067981033936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 n ^ 2) (A014355 (n + 1))

end

end A057694.P3235798067981033936

/-! ## A057694.P15730328270446303596

`or(and(4, A000311(n)), A014355(n+1))`
-/

namespace A057694.P15730328270446303596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 4 (A000311 n)) (A014355 (n + 1))

end

end A057694.P15730328270446303596

/-! ## A057694.P5266652589808601245

`or(and(4, A017769(n)), A014355(n+1))`
-/

namespace A057694.P5266652589808601245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 4 (A017769 n)) (A014355 (n + 1))

end

end A057694.P5266652589808601245

/-! ## A057694.P11228917807431773656

`or(A345060(n+1)², A014355(n+1))`
-/

namespace A057694.P11228917807431773656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A345060 (n + 1) ^ 2) (A014355 (n + 1))

end

end A057694.P11228917807431773656

/-! ## A057694.P9166835212433178037

`or(2*A010673(n+2), A014355(n+1))`
-/

namespace A057694.P9166835212433178037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A010673 (n + 2)) (A014355 (n + 1))

end

end A057694.P9166835212433178037

/-!
# A057696: Number of letters in n in Brazilian Portuguese (not counting spaces).

The programs for A057696, there is no canonical definition to state claims against.
-/

/-! ## A057696.P8080833265345966295

`A283431(A057697(n)²)`
-/

namespace A057696.P8080833265345966295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A057697 n ^ 2).toNat

end

end A057696.P8080833265345966295

/-! ## A057696.P9515030374000996775

`A057697(n)%A057702(3*n)`
-/

namespace A057696.P9515030374000996775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057697 n) (A057702 (3 * n))

end

end A057696.P9515030374000996775

/-! ## A057696.P13143697601716468803

`A057697(n)*A057979(A118658(n))`
-/

namespace A057696.P13143697601716468803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057697 n * A057979 (A118658 n).toNat

end

end A057696.P13143697601716468803

/-! ## A057696.P16474280984086729325

`A057697(n)%A031292(A007865(n))`
-/

namespace A057696.P16474280984086729325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057697 n) (A031292 (A007865 n).toNat)

end

end A057696.P16474280984086729325

/-! ## A057696.P4675125741637622474

`A057697(n)+A000122(A061248(n+1))`
-/

namespace A057696.P4675125741637622474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057697 n + A000122 (A061248 (n + 1)).toNat

end

end A057696.P4675125741637622474

/-!
# A057697: Number of characters in n (including spaces) in Brazilian Portuguese.

The programs for A057697, there is no canonical definition to state claims against.
-/

/-! ## A057697.P8507729589314503378

`A057696(n)+∑[A001221(A036877(n+2)!)]`
-/

namespace A057697.P8507729589314503378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A036877 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057696 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057697.P8507729589314503378

/-! ## A057697.P1985181879339008325

`A057696(lt[A057669(n), A057685(3*n+4)])`
-/

namespace A057697.P1985181879339008325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057685 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057696 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057697.P1985181879339008325

