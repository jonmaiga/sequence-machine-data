import SequenceMachineLib
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C026

/-!
# A141802: Numbers n such that 2*29^n + 1 is prime.

The programs for A141802, there is no canonical definition to state claims against.
-/

/-! ## A141802.P18158302839939691693

`A238588(A256179(n+1)-1)+n`
-/

namespace A141802.P18158302839939691693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238588 (A256179 (n + 1) - 1).toNat + (n : ℤ)

end

end A141802.P18158302839939691693

/-! ## A141802.P8516332425187772170

`eq[A001971(A262677(n)), A262694(n)]`
-/

namespace A141802.P8516332425187772170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A262677 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141802.P8516332425187772170

/-! ## A141802.P3861627344941808908

`∪[A000225(n), A117767(A255930(n))]`
-/

namespace A141802.P3861627344941808908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (A255930 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141802.P3861627344941808908

/-!
# A141803: Triangle read by rows derived from generalized Thue-Morse sequences.

The programs for A141803, there is no canonical definition to state claims against.
-/

/-! ## A141803.P6994968022991509528

`A051777(n+1)+A011655(A297802(2*(n+1)))`
-/

namespace A141803.P6994968022991509528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1) + A011655 (A297802 (2 * (n + 1))).toNat

end

end A141803.P6994968022991509528

/-! ## A141803.P10656134533614499223

`gcd(A156348(A003204(n)), A293388(n))`
-/

namespace A141803.P10656134533614499223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156348 (A003204 n).toNat) (A293388 n)

end

end A141803.P10656134533614499223

/-! ## A141803.P6643293661476059470

`A003983(n+1)-A025465(A022112(n))`
-/

namespace A141803.P6643293661476059470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - A025465 (A022112 n).toNat

end

end A141803.P6643293661476059470

/-! ## A141803.P1670283415339032533

`A003983(n+1)-A091447(A221596(n+1))`
-/

namespace A141803.P1670283415339032533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - A091447 (A221596 (n + 1)).toNat

end

end A141803.P1670283415339032533

/-! ## A141803.P15222094923645368323

`A029653(A161535(n+1))%A161535(A185045(n+1))`
-/

namespace A141803.P15222094923645368323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029653 (A161535 (n + 1)).toNat) (A161535 (A185045 (n + 1)).toNat)

end

end A141803.P15222094923645368323

/-!
# A141806: Terms of A024670 that are not in A141805.

The programs for A141806, there is no canonical definition to state claims against.
-/

/-! ## A141806.P14516630907202899058

`∩[A024670(n+1), A031980(n+1)]`
-/

namespace A141806.P14516630907202899058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141806.P14516630907202899058

/-! ## A141806.P9437399980921997093

`A055012(A032551(n+1)+91)`
-/

namespace A141806.P9437399980921997093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A032551 (n + 1) + 91).toNat

end

end A141806.P9437399980921997093

/-! ## A141806.P7375253092669631699

`A352172(A050683(n+1))+A352172(n+1)`
-/

namespace A141806.P7375253092669631699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352172 (A050683 (n + 1)).toNat + A352172 (n + 1)

end

end A141806.P7375253092669631699

/-!
# A141807: Numbers k such that the maximal prime power divisors of k form a run of integers.

The programs for A141807, there is no canonical definition to state claims against.
-/

/-! ## A141807.P14224503606836353038

`eq[A100574(n+1), A297155(n+1)]+1`
-/

namespace A141807.P14224503606836353038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A141807.P14224503606836353038

/-! ## A141807.P6437666999872445430

`record[gcd(n+1, 1-A229997(n+1))]`
-/

namespace A141807.P6437666999872445430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - A229997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141807.P6437666999872445430

/-! ## A141807.P14789430698906384708

`eq[A000120(A325789(n+1)), A231813(n)]`
-/

namespace A141807.P14789430698906384708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A325789 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141807.P14789430698906384708

/-!
# A141808: Numbers k such that the maximal prime power divisors of k form a nontrivial run of integers.

The programs for A141808, there is no canonical definition to state claims against.
-/

/-! ## A141808.P567669115588883754

`∩[A141807(n+1), A145278(n+1)]`
-/

namespace A141808.P567669115588883754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141808.P567669115588883754

/-! ## A141808.P16002856757795147451

`∩[A141807(n+1), A305188(n+1)]`
-/

namespace A141808.P16002856757795147451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141808.P16002856757795147451

/-! ## A141808.P9984434452867565736

`∩[A141807(n+1), A318145(n+1)]`
-/

namespace A141808.P9984434452867565736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141808.P9984434452867565736

/-! ## A141808.P11239983023927028531

`∩[A001284(n+1), A141807(n+1)]`
-/

namespace A141808.P11239983023927028531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141808.P11239983023927028531

/-! ## A141808.P10765519380358395438

`∩[A005279(n+1), A141807(n+1)]`
-/

namespace A141808.P10765519380358395438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141808.P10765519380358395438

/-!
# A141809: Irregular table: Row n (of A001221(n) terms, for n>=2) consists of the largest powers that divides n of each distinct prime that divides n. Terms are arranged by the size of the distinct primes. Row 1 = (1).

The programs for A141809, there is no canonical definition to state claims against.
-/

/-! ## A141809.P7117847064154628088

`A027748(n+1)^A124010(n+1)`
-/

namespace A141809.P7117847064154628088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027748 (n + 1) : ℚ) ^ (A124010 (n + 1) : ℤ)

end

end A141809.P7117847064154628088

/-! ## A141809.P4889216799572588965

`A027748(n+1)^A035306(2*(n+1))`
-/

namespace A141809.P4889216799572588965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027748 (n + 1) : ℚ) ^ (A035306 (2 * (n + 1)) : ℤ)

end

end A141809.P4889216799572588965

/-! ## A141809.P14640805215353704571

`A035306(2*n+1)^A124010(n+1)`
-/

namespace A141809.P14640805215353704571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035306 (2 * n + 1) : ℚ) ^ (A124010 (n + 1) : ℤ)

end

end A141809.P14640805215353704571

/-! ## A141809.P12434642912389112257

`A035306(2*n+1)^A035306(2*(n+1))`
-/

namespace A141809.P12434642912389112257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035306 (2 * n + 1) : ℚ) ^ (A035306 (2 * (n + 1)) : ℤ)

end

end A141809.P12434642912389112257

/-!
# A141810: Irregular table: Row n (of A001221(n) terms, for n>=2) consists of the largest powers that divides n of each distinct prime that divides n. Terms are arranged by the sizes of the prime-powers. Row 1 = (1).

The programs for A141810, there is no canonical definition to state claims against.
-/

/-! ## A141810.P16209395350452326082

`A394674(A118759(n)+1)`
-/

namespace A141810.P16209395350452326082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394674 (A118759 n + 1).toNat

end

end A141810.P16209395350452326082

/-! ## A141810.P17710323796478355214

`filter[A394674(n+1), A168046(#)]`
-/

namespace A141810.P17710323796478355214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A141810.P17710323796478355214

/-! ## A141810.P7684885985516153316

`filter[A394674(n+1), A209929(#)]`
-/

namespace A141810.P7684885985516153316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A141810.P7684885985516153316

/-! ## A141810.P7806972430414260273

`filter[A394674(n+1), A322674(#)]`
-/

namespace A141810.P7806972430414260273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322674 (f1 j).toNat = 1) n)

end

end A141810.P7806972430414260273

/-! ## A141810.P53883594730377308

`gcd(A143770(n+1), A394674(n+1))`
-/

namespace A141810.P53883594730377308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143770 (n + 1)) (A394674 (n + 1))

end

end A141810.P53883594730377308

/-! ## A141810.P7181083298257124188

`and(A127229(n+5), A394674(n+1))`
-/

namespace A141810.P7181083298257124188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127229 (n + 5)) (A394674 (n + 1))

end

end A141810.P7181083298257124188

/-! ## A141810.P3787804914829510340

`A394674(n+1)%A002189(n)`
-/

namespace A141810.P3787804914829510340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394674 (n + 1)) (A002189 n)

end

end A141810.P3787804914829510340

/-!
# A141811: Partial Catalan numbers: triangle read by rows n = 1, 2, 3, ... and columns k = 0, 1, ..., n-1.

The programs for A141811, the canonical program `A141811.P3259145335164185282` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141811 has offset 1).

The definition of A141811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141811.P15107641914021436835

`A078391(n)*A099375(n)`
-/

namespace A141811.P15107641914021436835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 n * A099375 n

end

end A141811.P15107641914021436835

namespace A141811

/-- `A078391(n)*A099375(n)` -/
def P15107641914021436835.Spec : Prop :=
  ∀ n, P15107641914021436835.a n = A141811 (n + 1)

end A141811

/-! ## A141811.P8026730903595729279

`(A212012(n+1)-1)*A078391(n)`
-/

namespace A141811.P8026730903595729279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) - 1) * A078391 n

end

end A141811.P8026730903595729279

namespace A141811

/-- `(A212012(n+1)-1)*A078391(n)` -/
def P8026730903595729279.Spec : Prop :=
  ∀ n, P8026730903595729279.a n = A141811 (n + 1)

end A141811

/-! ## A141811.P17218278204856780910

`A005408(A025581(n))*A078391(n)`
-/

namespace A141811.P17218278204856780910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025581 n).toNat * A078391 n

end

end A141811.P17218278204856780910

namespace A141811

/-- `A005408(A025581(n))*A078391(n)` -/
def P17218278204856780910.Spec : Prop :=
  ∀ n, P17218278204856780910.a n = A141811 (n + 1)

end A141811

/-! ## A141811.P18225901547910745017

`A004273(A004736(n+1))*A078391(n)`
-/

namespace A141811.P18225901547910745017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004736 (n + 1)).toNat * A078391 n

end

end A141811.P18225901547910745017

namespace A141811

/-- `A004273(A004736(n+1))*A078391(n)` -/
def P18225901547910745017.Spec : Prop :=
  ∀ n, P18225901547910745017.a n = A141811 (n + 1)

end A141811

/-! ## A141811.P3259145335164185282

`A000108(A002262(n))*A001700(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141811

/-- `A000108(A002262(n))*A001700(A025581(n))` -/
def P3259145335164185282.Spec : Prop :=
  ∀ n, P3259145335164185282.a n = A141811 (n + 1)

theorem P3259145335164185282.correct : P3259145335164185282.Spec := by
  intro n
  simp only [A141811, Nat.add_sub_cancel]

end A141811

/-! ## A141811.P16078248478281231094

`A000108(A002262(n))*A001405(A099375(n))`
-/

namespace A141811.P16078248478281231094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A001405 (A099375 n).toNat

end

end A141811.P16078248478281231094

namespace A141811

/-- `A000108(A002262(n))*A001405(A099375(n))` -/
def P16078248478281231094.Spec : Prop :=
  ∀ n, P16078248478281231094.a n = A141811 (n + 1)

end A141811

/-! ## A141811.P1501482698161697529

`A000108(A002262(n))*A088218(A004736(n+1))`
-/

namespace A141811.P1501482698161697529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A088218 (A004736 (n + 1)).toNat

end

end A141811.P1501482698161697529

namespace A141811

/-- `A000108(A002262(n))*A088218(A004736(n+1))` -/
def P1501482698161697529.Spec : Prop :=
  ∀ n, P1501482698161697529.a n = A141811 (n + 1)

end A141811

/-! ## A141811.P8463995421027176492

`A037952(A099375(n))*A120588(A002260(n+1))`
-/

namespace A141811.P8463995421027176492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A099375 n).toNat * A120588 (A002260 (n + 1)).toNat

end

end A141811.P8463995421027176492

namespace A141811

/-- `A037952(A099375(n))*A120588(A002260(n+1))` -/
def P8463995421027176492.Spec : Prop :=
  ∀ n, P8463995421027176492.a n = A141811 (n + 1)

end A141811

/-! ## A141811.P5634591245843417067

`A001263(n+1)/A007318(n)*A135573(n)`
-/

namespace A141811.P5634591245843417067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A135573 n : ℚ)

end

end A141811.P5634591245843417067

namespace A141811

/-- `A001263(n+1)/A007318(n)*A135573(n)` -/
def P5634591245843417067.Spec : Prop :=
  ∀ n, P5634591245843417067.a n = (A141811 (n + 1) : ℚ)

end A141811

/-! ## A141811.P15655866535430455955

`A099375(n)*A246596(A089633(n))`
-/

namespace A141811.P15655866535430455955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A246596 (A089633 n).toNat

end

end A141811.P15655866535430455955

namespace A141811

/-- `A099375(n)*A246596(A089633(n))` -/
def P15655866535430455955.Spec : Prop :=
  ∀ n, P15655866535430455955.a n = A141811 (n + 1)

end A141811

/-!
# A141812: RMS values of the RMS numbers: a(n) is the root mean square of the divisors of A140480(n).

The programs for A141812, there is no canonical definition to state claims against.
-/

/-! ## A141812.P13173292086092820251

`A351346(∑[A003701(n)]²)`
-/

namespace A141812.P13173292086092820251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A141812.P13173292086092820251

/-! ## A141812.P6068030197509139570

`A351346(∑[A076132(n+1)]²)`
-/

namespace A141812.P6068030197509139570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A141812.P6068030197509139570

/-!
# A141813: Primitive RMS numbers: RMS numbers which are not the product of two smaller RMS numbers.

The programs for A141813, there is no canonical definition to state claims against.
-/

/-! ## A141813.P12893310234267409114

`filter[A140480(n+1), A190938(#)]`
-/

namespace A141813.P12893310234267409114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A141813.P12893310234267409114

/-! ## A141813.P4607074306669159590

`filter[A140480(n+1), A267349(#)]`
-/

namespace A141813.P4607074306669159590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267349 (f1 j).toNat = 1) n)

end

end A141813.P4607074306669159590

/-!
# A141814: RMS values of the Primitive RMS numbers: a(n) is the Root Mean Square of the divisors of A141813(n).

The programs for A141814, there is no canonical definition to state claims against.
-/

/-! ## A141814.P174365363260728551

`filter[A141812(n+1), A189094(#)]`
-/

namespace A141814.P174365363260728551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189094 (f1 j).toNat = 1) n)

end

end A141814.P174365363260728551

/-! ## A141814.P6482520948578187500

`filter[A141812(n+1), A122895(#)]`
-/

namespace A141814.P6482520948578187500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A141814.P6482520948578187500

/-! ## A141814.P14019104667035587000

`A141812(record[A008480(n+1)-A178101(n+1)])`
-/

namespace A141814.P14019104667035587000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A178101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141812 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141814.P14019104667035587000

/-!
# A141817: "Early bird" squares: write the natural numbers in a string 12345678910111213.... Sequence gives squares which occur in the string ahead of their natural place.

The programs for A141817, there is no canonical definition to state claims against.
-/

/-! ## A141817.P8145457702852835400

`A038678(∑[A000045((n+1)²/∏{p}[n+1, #]-n)]+1)`
-/

namespace A141817.P8145457702852835400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) - (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038678 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A141817.P8145457702852835400

/-! ## A141817.P6254974183873432658

`(∑[A243928(A364961(n+1))]+7)²`
-/

namespace A141817.P6254974183873432658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243928 (A364961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 7) ^ 2

end

end A141817.P6254974183873432658

/-!
# A141818: "Early bird" prime numbers: write the natural numbers in a string 12345678910111213.... Sequence gives prime numbers which occur in the string ahead of their natural place.

The programs for A141818, there is no canonical definition to state claims against.
-/

/-! ## A141818.P1616898859659468844

`p?[A116700(A085736(n+1))]`
-/

namespace A141818.P1616898859659468844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (A085736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141818.P1616898859659468844

/-! ## A141818.P12548813063870613962

`∩[A095737(n+1), A116700(n+1)]`
-/

namespace A141818.P12548813063870613962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141818.P12548813063870613962

/-! ## A141818.P8731293273724493680

`p?[A116700(n+1)]%A088872(n+1)`
-/

namespace A141818.P8731293273724493680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A088872 (n + 1))

end

end A141818.P8731293273724493680

/-! ## A141818.P5211167611809261305

`p?[A116700(n+1)%A106298(n+1)]`
-/

namespace A141818.P5211167611809261305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116700 (n + 1)) (A106298 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141818.P5211167611809261305

/-! ## A141818.P13613654060956911387

`p?[A116700(n+2)]%A131982(n+1)`
-/

namespace A141818.P13613654060956911387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A131982 (n + 1))

end

end A141818.P13613654060956911387

/-!
# A141819: a(1)=1. a(n) = the smallest integer > a(n-1) that is coprime to the number of 1's in the binary representation of n.

The programs for A141819, there is no canonical definition to state claims against.
-/

/-! ## A141819.P16377887966649850898

`eq[A020987(A138123(n+1)), A059841(n)]`
-/

namespace A141819.P16377887966649850898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 (A138123 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141819.P16377887966649850898

/-! ## A141819.P3592078205842864057

`lt[A000007(n), A324732(A140672(2*(n+1)))]`
-/

namespace A141819.P3592078205842864057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (A140672 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141819.P3592078205842864057

/-!
# A141820: a(1)=1. a(n) = the smallest integer > a(n-1) that is divisible by the number of 1's in the binary representation of n.

The programs for A141820, there is no canonical definition to state claims against.
-/

/-! ## A141820.P9056886944029165091

`A001222(∏[A091866(n)+1])+n`
-/

namespace A141820.P9056886944029165091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A141820.P9056886944029165091

/-!
# A141823: Integers k>1 such that A141822(k)=4.

The programs for A141823, there is no canonical definition to state claims against.
-/

/-! ## A141823.P15782197257393893390

`eq[4, A141822(n+2)]+2`
-/

namespace A141823.P15782197257393893390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141822 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A141823.P15782197257393893390

/-! ## A141823.P10228732543371254829

`A009056(eq[4, A141822(n+2)])`
-/

namespace A141823.P10228732543371254829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141822 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141823.P10228732543371254829

/-! ## A141823.P7526249397554634907

`eq[4, A141822(n/A246465(a(n-1)))]` with `a(0)=2, a(1)=3`
-/

namespace A141823.P7526249397554634907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A141822 (SequenceMachineLib.roundAway ((n : ℚ) / (A246465 (f2 (n - 1)).toNat : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141823.P7526249397554634907

/-! ## A141823.P2739770543998478796

`eq[4, A141822(A233583(n+1))]`
-/

namespace A141823.P2739770543998478796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141822 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141823.P2739770543998478796

/-!
# A141824: Antidiagonals of table A047888 (which counts longest increasing subsequences and pattern avoidances).

The programs for A141824, there is no canonical definition to state claims against.
-/

/-! ## A141824.P6549185674599837536

`A125654(lcm(n+1, ∑{e}[n+1, #]))`
-/

namespace A141824.P6549185674599837536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125654 (Nat.lcm (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A141824.P6549185674599837536

/-! ## A141824.P10020643493742538937

`A125654(C(n+1, (n+1)/∏{p}[n+1, gcd(n+1, #²)]))`
-/

namespace A141824.P10020643493742538937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125654 (Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat)

end

end A141824.P10020643493742538937

/-! ## A141824.P9885304470303128483

`A125654(A237344(n+1))`
-/

namespace A141824.P9885304470303128483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125654 (A237344 (n + 1)).toNat

end

end A141824.P9885304470303128483

/-!
# A141825: Encodes permutations which "avoid" the subsequence "123" based on the mapping described in A051683.

The programs for A141825, there is no canonical definition to state claims against.
-/

/-! ## A141825.P5926983546427734598

`eq[A275947(A276089(n)), A275962(n)]`
-/

namespace A141825.P5926983546427734598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A276089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141825.P5926983546427734598

/-! ## A141825.P16561383778609422087

`lt[A275947(n), A225245(A014648(2*n+5))]`
-/

namespace A141825.P16561383778609422087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 (A014648 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141825.P16561383778609422087

/-! ## A141825.P2414209201886657533

`eq[A028303(A087966(n+1)), A275947(n)]`
-/

namespace A141825.P2414209201886657533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A087966 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141825.P2414209201886657533

/-! ## A141825.P15340256088816452108

`eq[A000122(A001157(2*(n+1))), A275962(n)]`
-/

namespace A141825.P15340256088816452108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A001157 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141825.P15340256088816452108

/-! ## A141825.P3416752899228362561

`eq[A010054(A007623(3*(n+1))), A275962(n)]`
-/

namespace A141825.P3416752899228362561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007623 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141825.P3416752899228362561

/-!
# A141826: Bisect sequence A057113.

The programs for A141826, there is no canonical definition to state claims against.
-/

/-! ## A141826.P10073279104378690987

`A057113(2*n)`
-/

namespace A141826.P10073279104378690987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057113 (2 * n)

end

end A141826.P10073279104378690987

/-! ## A141826.P4712088587520366886

`or(char[2], A057113(A005843(n)))`
-/

namespace A141826.P4712088587520366886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A057113 (A005843 n).toNat)

end

end A141826.P4712088587520366886

/-! ## A141826.P8408133791944731849

`A057113(A004277(n))%∑[n+1]²`
-/

namespace A141826.P8408133791944731849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057113 (A004277 n).toNat) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A141826.P8408133791944731849

/-! ## A141826.P3790891752260903232

`A056019(A056019(A057113(n+n)))`
-/

namespace A141826.P3790891752260903232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A056019 (A057113 (n + n)).toNat).toNat

end

end A141826.P3790891752260903232

/-! ## A141826.P6064860641323954293

`A057113(A004277(n))-A000007(n)`
-/

namespace A141826.P6064860641323954293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057113 (A004277 n).toNat - A000007 n

end

end A141826.P6064860641323954293

/-! ## A141826.P8855708020813284703

`∑{d}[A057113(A005843(n)), A000010(#)]`
-/

namespace A141826.P8855708020813284703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057113 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A141826.P8855708020813284703

/-! ## A141826.P14130524386254285162

`A057113(A005843(n))%A000032(n+3)`
-/

namespace A141826.P14130524386254285162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057113 (A005843 n).toNat) (A000032 (n + 3))

end

end A141826.P14130524386254285162

/-! ## A141826.P13584267073866120001

`A057113(A005843(n))/A000041(C(n, 64))`
-/

namespace A141826.P13584267073866120001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057113 (A005843 n).toNat : ℚ) / (A000041 (Nat.choose n 64) : ℚ)

end

end A141826.P13584267073866120001

/-! ## A141826.P6398690920381249575

`A057113(A005843(n))+and(2, A007318(n)²)`
-/

namespace A141826.P6398690920381249575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057113 (A005843 n).toNat + Int.land 2 (A007318 n ^ 2)

end

end A141826.P6398690920381249575

/-!
# A141827: a(n) = (n^3*a(n-1) - 1)/(n - 1) for n >= 2, with a(0) = 1, a(1) = 4.

The programs for A141827, the canonical program `A141827.P13558002811751239954` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141827 has offset 0).

The definition of A141827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141827.P13558002811751239954

`(n^3*a(n-1)-1)/(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141827

/-- `(n^3*a(n-1)-1)/(n-1)` -/
def P13558002811751239954.Spec : Prop :=
  ∀ n, P13558002811751239954.a n = (A141827 n : ℚ)

end A141827

/-! ## A141827.P15700587370207839596

`Δ[A215176(2*n+1)]/(n+2)`
-/

namespace A141827.P15700587370207839596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215176 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 2 : ℚ)

end

end A141827.P15700587370207839596

namespace A141827

/-- `Δ[A215176(2*n+1)]/(n+2)` -/
def P15700587370207839596.Spec : Prop :=
  ∀ n, P15700587370207839596.a n = (A141827 n : ℚ)

end A141827

/-! ## A141827.P9347240203180847243

`A215176(2*(n+1))-A215176(2*n+1)`
-/

namespace A141827.P9347240203180847243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215176 (2 * (n + 1)) - A215176 (2 * n + 1)

end

end A141827.P9347240203180847243

namespace A141827

/-- `A215176(2*(n+1))-A215176(2*n+1)` -/
def P9347240203180847243.Spec : Prop :=
  ∀ n, P9347240203180847243.a n = A141827 n

end A141827

/-! ## A141827.P17373525942094446685

`A228229(n)+A336809(n)-A006040(n)`
-/

namespace A141827.P17373525942094446685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228229 n + (A336809 n - A006040 n)

end

end A141827.P17373525942094446685

namespace A141827

/-- `A228229(n)+A336809(n)-A006040(n)` -/
def P17373525942094446685.Spec : Prop :=
  ∀ n, P17373525942094446685.a n = A141827 n

end A141827

/-!
# A141828: a(n) = (n^4*a(n-1)-1)/(n-1) for n >= 2, with a(0) = 1, a(1) = 5.

The programs for A141828, the canonical program `A141828.P18226711279540050520` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141828 has offset 0).

The definition of A141828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141828.P18226711279540050520

`(n^4*a(n-1)-1)/(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141828

/-- `(n^4*a(n-1)-1)/(n-1)` -/
def P18226711279540050520.Spec : Prop :=
  ∀ n, P18226711279540050520.a n = (A141828 n : ℚ)

end A141828

/-!
# A141829: a(n) = the number of positive divisors of (p(n)-1) that are each <= p(n+1)-p(n), where p(n) is the n-th prime.

The programs for A141829, there is no canonical definition to state claims against.
-/

/-! ## A141829.P15008274119872717184

`A067132(∑[A000055(A053644(n))])`
-/

namespace A141829.P15008274119872717184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A053644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141829.P15008274119872717184

/-! ## A141829.P9358965385848930952

`A073093(or(A101173(n+1), A314898(n)))`
-/

namespace A141829.P9358965385848930952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (Int.lor (A101173 (n + 1)) (A314898 n)).toNat

end

end A141829.P9358965385848930952

/-! ## A141829.P1291810916363812724

`xor(A010051(n+1), A106052(A002445(n)))`
-/

namespace A141829.P1291810916363812724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (n + 1)) (A106052 (A002445 n).toNat)

end

end A141829.P1291810916363812724

/-! ## A141829.P13019724391516718286

`A293442(lt[A316854(n+1), A304092(n+5)])`
-/

namespace A141829.P13019724391516718286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141829.P13019724391516718286

/-! ## A141829.P20660260117751372

`A132423(A345333(n)+A001223(n+1))`
-/

namespace A141829.P20660260117751372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132423 (A345333 n + A001223 (n + 1)).toNat

end

end A141829.P20660260117751372

/-!
# A141830: Primes p such that 1|p, 2|(p+1), 3|(p+2), 4|(p+3),...,(q-p)|(q-1), where q is the prime immediately after p.

The programs for A141830, there is no canonical definition to state claims against.
-/

/-! ## A141830.P7281810005427808854

`p?[A065091(n+1)-A141829(n+1)]`
-/

namespace A141830.P7281810005427808854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A141829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141830.P7281810005427808854

/-! ## A141830.P1357944769801458013

`p?[A000040(n+2)-A141829(n+1)]`
-/

namespace A141830.P1357944769801458013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A141829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141830.P1357944769801458013

/-! ## A141830.P10599466084036763850

`record[A020639(A065091(n+1)-A141829(n+1))]`
-/

namespace A141830.P10599466084036763850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A065091 (n + 1) - A141829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141830.P10599466084036763850

/-! ## A141830.P10393798829112817335

`p?[p?[A164028(n+1)]-A141829(n+1)]`
-/

namespace A141830.P10393798829112817335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A141829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141830.P10393798829112817335

/-! ## A141830.P6657267923396671040

`p?[A151800(n+2)-A055874(n+1)]`
-/

namespace A141830.P6657267923396671040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 2) - A055874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141830.P6657267923396671040

/-! ## A141830.P1668583043182375477

`p?[A007918(n)-A137866(n+1)]`
-/

namespace A141830.P1668583043182375477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - A137866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141830.P1668583043182375477

/-! ## A141830.P18108578894164702210

`record[A020639(A151800(n)-A137866(n+1))]`
-/

namespace A141830.P18108578894164702210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A151800 n - A137866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141830.P18108578894164702210

/-!
# A141831: Primes not in sequence A141830.

The programs for A141831, there is no canonical definition to state claims against.
-/

/-! ## A141831.P17021203620045980149

`p?[lt[A317358(n+1), A329273(n+1)]]`
-/

namespace A141831.P17021203620045980149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317358 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329273 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141831.P17021203620045980149

/-! ## A141831.P2672266336000962370

`A049591(comp[A225364(n+1)-A335927(n+1)])`
-/

namespace A141831.P2672266336000962370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225364 (n + 1) - A335927 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A141831.P2672266336000962370

/-! ## A141831.P5747821290723703706

`∩[A040999(n+1), A329996(n+1)]`
-/

namespace A141831.P5747821290723703706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141831.P5747821290723703706

/-! ## A141831.P17438498589556298208

`∩[A049591(n+1), A329996(n+1)]`
-/

namespace A141831.P17438498589556298208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141831.P17438498589556298208

/-! ## A141831.P15685218701621841850

`∩[A058620(n+1), A329996(n+1)]`
-/

namespace A141831.P15685218701621841850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141831.P15685218701621841850

/-!
# A141832: Integers n>1 such that A141822(n)=2.

The programs for A141832, there is no canonical definition to state claims against.
-/

/-! ## A141832.P2171881879761193877

`A228853(n+2)`
-/

namespace A141832.P2171881879761193877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (n + 2)

end

end A141832.P2171881879761193877

/-! ## A141832.P12126361950545847595

`eq[2, A141822(n+2)]+2`
-/

namespace A141832.P12126361950545847595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141822 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A141832.P12126361950545847595

/-! ## A141832.P1513403082516468237

`record[A228853(A028242(A133265(n)))]`
-/

namespace A141832.P1513403082516468237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (A028242 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141832.P1513403082516468237

/-! ## A141832.P13756058605447701649

`record[A228853(A008619(A165754(n)))]`
-/

namespace A141832.P13756058605447701649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (A008619 (A165754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141832.P13756058605447701649

/-! ## A141832.P2798239389779875164

`record[A228853(A080513(A057979(n)))]`
-/

namespace A141832.P2798239389779875164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (A080513 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141832.P2798239389779875164

/-! ## A141832.P14527314925297182010

`record[A228853(A000267(A008611(n)))]`
-/

namespace A141832.P14527314925297182010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (A000267 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141832.P14527314925297182010

/-! ## A141832.P11359175699198123073

`record[A228853(A257213(A005408(n)))]`
-/

namespace A141832.P11359175699198123073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (A257213 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141832.P11359175699198123073

/-! ## A141832.P14654916768198987719

`record[A228853(A000267(A309108(n)))]`
-/

namespace A141832.P14654916768198987719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (A000267 (A309108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141832.P14654916768198987719

/-!
# A141833: Integers n>1 such that A141822(n)=3.

The programs for A141833, there is no canonical definition to state claims against.
-/

/-! ## A141833.P15746367865370453814

`eq[3, A141822(n+2)]+2`
-/

namespace A141833.P15746367865370453814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141822 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A141833.P15746367865370453814

/-! ## A141833.P3531564013818831245

`A009056(eq[3, A141822(n+2)])`
-/

namespace A141833.P3531564013818831245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141822 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141833.P3531564013818831245

/-! ## A141833.P17464859986709523963

`eq[3, A141822(n/A246465(a(n-1)))]` with `a(0)=4, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A141833.P17464859986709523963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 2, 2] fun n f2 =>
  A141822 (SequenceMachineLib.roundAway ((n : ℚ) / (A246465 (f2 (n - 1)).toNat : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141833.P17464859986709523963

/-! ## A141833.P8675761773185847603

`eq[3, A141822(A233583(n+1))]`
-/

namespace A141833.P8675761773185847603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141822 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141833.P8675761773185847603

/-!
# A141834: Sum of the lengths of the cycles at a vertex of the complete graph K_n.

The programs for A141834, there is no canonical definition to state claims against.
-/

/-! ## A141834.P6418240127887185422

`Δ[(∑[2*n]+a(n-1))*(n+2)]` with `a(0)=0`
-/

namespace A141834.P6418240127887185422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141834.P6418240127887185422

/-! ## A141834.P10021720517538147017

`Δ[(a(n-1)+n²+n)*(n+2)]` with `a(0)=0`
-/

namespace A141834.P10021720517538147017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + (n ^ 2 + n)) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141834.P10021720517538147017

/-! ## A141834.P8628791091139426360

`∑[∑[A001341(n)]]`
-/

namespace A141834.P8628791091139426360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001341 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141834.P8628791091139426360

/-! ## A141834.P3820511488155809808

`∑[A001340(n+1)-2]`
-/

namespace A141834.P3820511488155809808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001340 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141834.P3820511488155809808

/-! ## A141834.P1598593083575970202

`∑[∑[A276588(∑[n+3])]]`
-/

namespace A141834.P1598593083575970202
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276588 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141834.P1598593083575970202

/-!
# A141838: a(n) = first term that can be reduced in n steps via repeated interpretation of a(n) as a base b+1 number where b is the largest digit of a(n), such that b is always 4 so that each interpretation is base 5. Terms already fully reduced (i.e., single digits) are excluded.

The programs for A141838, there is no canonical definition to state claims against.
-/

/-! ## A141838.P5514882857134837743

`A023383(n+2)+4`
-/

namespace A141838.P5514882857134837743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023383 (n + 2) + 4

end

end A141838.P5514882857134837743

/-! ## A141838.P6935548804151565019

`A007091(a(n-1))` with `a(0)=14`
-/

namespace A141838.P6935548804151565019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A007091 (a (n - 1)).toNat

end

end A141838.P6935548804151565019

/-!
# A141844: Expansion of (1+x)*(1+x^2)/((1-x)^2*(1+x+x^2)*(1-4*x)).

The programs for A141844, the canonical program `A141844.P7524308810071313041` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141844 has offset 0).

The definition of A141844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141844.P7524308810071313041

`5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=113, a(4)=458`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141844

/-- `5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` -/
def P7524308810071313041.Spec : Prop :=
  ∀ n, P7524308810071313041.a n = A141844 n

theorem P7524308810071313041.correct : P7524308810071313041.Spec := by
  intro n
  simp only [A141844]

end A141844

/-! ## A141844.P638706520317583518

`comp[4*n]+4*a(n-1)` with `a(0)=1`
-/

namespace A141844.P638706520317583518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 4 * a (n - 1)

end

end A141844.P638706520317583518

namespace A141844

/-- `comp[4*n]+4*a(n-1)` -/
def P638706520317583518.Spec : Prop :=
  ∀ n, (P638706520317583518.a n : ℤ) = A141844 n

end A141844

/-! ## A141844.P9054620820970235975

`floor(4*(a(n-1)+n/3))+1` with `a(0)=1`
-/

namespace A141844.P9054620820970235975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊4 * ((a (n - 1) : ℚ) + (n : ℚ) / 3)⌋ + 1

end

end A141844.P9054620820970235975

namespace A141844

/-- `floor(4*(a(n-1)+n/3))+1` -/
def P9054620820970235975.Spec : Prop :=
  ∀ n, P9054620820970235975.a n = A141844 n

end A141844

/-! ## A141844.P9571847342259563460

`∑[4*a(n-1)+2-n²%3]` with `a(0)=1`
-/

namespace A141844.P9571847342259563460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141844.P9571847342259563460

namespace A141844

/-- `∑[4*a(n-1)+2-n²%3]` -/
def P9571847342259563460.Spec : Prop :=
  ∀ n, P9571847342259563460.a n = A141844 n

end A141844

/-! ## A141844.P2063262330157169513

`A178744(n)+A037545(n+1)`
-/

namespace A141844.P2063262330157169513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178744 n + A037545 (n + 1)

end

end A141844.P2063262330157169513

namespace A141844

/-- `A178744(n)+A037545(n+1)` -/
def P2063262330157169513.Spec : Prop :=
  ∀ n, P2063262330157169513.a n = A141844 n

end A141844

/-! ## A141844.P1884095989119321764

`A368345(n)+A014825(n+1)`
-/

namespace A141844.P1884095989119321764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368345 n + A014825 (n + 1)

end

end A141844.P1884095989119321764

namespace A141844

/-- `A368345(n)+A014825(n+1)` -/
def P1884095989119321764.Spec : Prop :=
  ∀ n, P1884095989119321764.a n = A141844 n

end A141844

/-! ## A141844.P15037826974766286353

`A178872(n)+∑[A037590(n+1)]`
-/

namespace A141844.P15037826974766286353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141844.P15037826974766286353

namespace A141844

/-- `A178872(n)+∑[A037590(n+1)]` -/
def P15037826974766286353.Spec : Prop :=
  ∀ n, P15037826974766286353.a n = A141844 n

end A141844

/-! ## A141844.P15240767793447438071

`∑[A037553(n+1)-A000079(n)²]`
-/

namespace A141844.P15240767793447438071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037553 (n + 1) - A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141844.P15240767793447438071

namespace A141844

/-- `∑[A037553(n+1)-A000079(n)²]` -/
def P15240767793447438071.Spec : Prop :=
  ∀ n, P15240767793447438071.a n = A141844 n

end A141844

/-! ## A141844.P6670409646064851132

`∑[A195904(2*n+1)+A002450(n)]`
-/

namespace A141844.P6670409646064851132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (2 * n + 1) + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141844.P6670409646064851132

namespace A141844

/-- `∑[A195904(2*n+1)+A002450(n)]` -/
def P6670409646064851132.Spec : Prop :=
  ∀ n, P6670409646064851132.a n = A141844 n

end A141844

/-! ## A141844.P8110418580567342866

`∑[2*A033122(n+1)]-A033122(n+1)`
-/

namespace A141844.P8110418580567342866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033122 (n + 1)

end

end A141844.P8110418580567342866

namespace A141844

/-- `∑[2*A033122(n+1)]-A033122(n+1)` -/
def P8110418580567342866.Spec : Prop :=
  ∀ n, P8110418580567342866.a n = A141844 n

end A141844

/-! ## A141844.P9104066220016411871

`A033140(n+1)+A368345(n)+A178710(n+1)`
-/

namespace A141844.P9104066220016411871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033140 (n + 1) + (A368345 n + A178710 (n + 1))

end

end A141844.P9104066220016411871

namespace A141844

/-- `A033140(n+1)+A368345(n)+A178710(n+1)` -/
def P9104066220016411871.Spec : Prop :=
  ∀ n, P9104066220016411871.a n = A141844 n

end A141844

/-!
# A141845: a(n) = 5*a(n-1) + A047201(n), a(1) = 1. A047201 = numbers not divisible by 5: (1, 2, 3, 4, 6, 7, 8, 9, 11, ...).

The programs for A141845, the canonical program `A141845.P4237322174291289607` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141845 has offset 1).

The definition of A141845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141845.P10037560385346214439

`floor((n+1)*atan(3))+lcm(5, a(n-1))` with `a(0)=1`
-/

namespace A141845.P10037560385346214439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℝ) * Real.arctan (3 : ℝ)⌋ + (Int.lcm 5 (a (n - 1)) : ℤ)

end

end A141845.P10037560385346214439

namespace A141845

/-- `floor((n+1)*atan(3))+lcm(5, a(n-1))` -/
def P10037560385346214439.Spec : Prop :=
  ∀ n, P10037560385346214439.a n = A141845 (n + 1)

end A141845

/-! ## A141845.P4237322174291289607

`5*a(n-1)+A047201(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141845

/-- `5*a(n-1)+A047201(n+1)` -/
def P4237322174291289607.Spec : Prop :=
  ∀ n, P4237322174291289607.a n = A141845 (n + 1)

theorem P4237322174291289607.correct : P4237322174291289607.Spec := by
  intro n
  simp only [A141845, Nat.add_sub_cancel]

end A141845

/-! ## A141845.P11970716275148452403

`5*a(n-1)+A008621(5*n)` with `a(0)=1`
-/

namespace A141845.P11970716275148452403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A008621 (5 * n)

end

end A141845.P11970716275148452403

namespace A141845

/-- `5*a(n-1)+A008621(5*n)` -/
def P11970716275148452403.Spec : Prop :=
  ∀ n, P11970716275148452403.a n = A141845 (n + 1)

end A141845

/-! ## A141845.P5807225621733962657

`5*a(n-1)+A002265(5*n)+1` with `a(0)=1`
-/

namespace A141845.P5807225621733962657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A002265 (5 * n) + 1)

end

end A141845.P5807225621733962657

namespace A141845

/-- `5*a(n-1)+A002265(5*n)+1` -/
def P5807225621733962657.Spec : Prop :=
  ∀ n, P5807225621733962657.a n = A141845 (n + 1)

end A141845

/-! ## A141845.P3275510297995239386

`5*a(n-1)+A110655(5*n+1)` with `a(0)=1`
-/

namespace A141845.P3275510297995239386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A110655 (5 * n + 1)

end

end A141845.P3275510297995239386

namespace A141845

/-- `5*a(n-1)+A110655(5*n+1)` -/
def P3275510297995239386.Spec : Prop :=
  ∀ n, P3275510297995239386.a n = A141845 (n + 1)

end A141845

/-!
# A141846: Triangle read by rows: A051731 * A051953^(n-k) * 0^(n-k), 1 <= k <= n.

The programs for A141846, the canonical program `A141846.P12023117412264450593` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141846 has offset 1).

The definition of A141846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141846.P569156311444157567

`A144515(n)*A328496(n+1)`
-/

namespace A141846.P569156311444157567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144515 n * A328496 (n + 1)

end

end A141846.P569156311444157567

namespace A141846

/-- `A144515(n)*A328496(n+1)` -/
def P569156311444157567.Spec : Prop :=
  ∀ n, P569156311444157567.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P12023117412264450593

`∑{d}[A127093(n+1), A062790(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141846

/-- `∑{d}[A127093(n+1), A062790(#)]` -/
def P12023117412264450593.Spec : Prop :=
  ∀ n, P12023117412264450593.a n = A141846 (n + 1)

theorem P12023117412264450593.correct : P12023117412264450593.Spec := by
  intro n
  simp only [A141846, Nat.add_sub_cancel]

end A141846

/-! ## A141846.P16381389136069169928

`A127093(n+1)-A054522(n+1)`
-/

namespace A141846.P16381389136069169928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) - A054522 (n + 1)

end

end A141846.P16381389136069169928

namespace A141846

/-- `A127093(n+1)-A054522(n+1)` -/
def P16381389136069169928.Spec : Prop :=
  ∀ n, P16381389136069169928.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P13329933367336778137

`A051731(n+1)*A328496(n+1)`
-/

namespace A141846.P13329933367336778137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A328496 (n + 1)

end

end A141846.P13329933367336778137

namespace A141846

/-- `A051731(n+1)*A328496(n+1)` -/
def P13329933367336778137.Spec : Prop :=
  ∀ n, P13329933367336778137.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P9981490314930088070

`A158902(n+1)*A328496(n+1)`
-/

namespace A141846.P9981490314930088070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158902 (n + 1) * A328496 (n + 1)

end

end A141846.P9981490314930088070

namespace A141846

/-- `A158902(n+1)*A328496(n+1)` -/
def P9981490314930088070.Spec : Prop :=
  ∀ n, P9981490314930088070.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P3103054142689099483

`A158906(n+1)*A328496(n+1)`
-/

namespace A141846.P3103054142689099483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1) * A328496 (n + 1)

end

end A141846.P3103054142689099483

namespace A141846

/-- `A158906(n+1)*A328496(n+1)` -/
def P3103054142689099483.Spec : Prop :=
  ∀ n, P3103054142689099483.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P16332855093699202031

`and(A130888(n+1), A328496(n+1))`
-/

namespace A141846.P16332855093699202031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A328496 (n + 1))

end

end A141846.P16332855093699202031

namespace A141846

/-- `and(A130888(n+1), A328496(n+1))` -/
def P16332855093699202031.Spec : Prop :=
  ∀ n, P16332855093699202031.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P11619907291979304323

`((2*n+1)*A054522(n+1))%A002260(n+1)`
-/

namespace A141846.P11619907291979304323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) * A054522 (n + 1)) (A002260 (n + 1))

end

end A141846.P11619907291979304323

namespace A141846

/-- `((2*n+1)*A054522(n+1))%A002260(n+1)` -/
def P11619907291979304323.Spec : Prop :=
  ∀ n, P11619907291979304323.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P10158474500359648213

`A051953(A028310(A127093(n+1)))`
-/

namespace A141846.P10158474500359648213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 (A127093 (n + 1)).toNat).toNat

end

end A141846.P10158474500359648213

namespace A141846

/-- `A051953(A028310(A127093(n+1)))` -/
def P10158474500359648213.Spec : Prop :=
  ∀ n, P10158474500359648213.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P8671230945982209470

`A051731(n+1)*A051953(A002260(n+1))`
-/

namespace A141846.P8671230945982209470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A051953 (A002260 (n + 1)).toNat

end

end A141846.P8671230945982209470

namespace A141846

/-- `A051731(n+1)*A051953(A002260(n+1))` -/
def P8671230945982209470.Spec : Prop :=
  ∀ n, P8671230945982209470.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P13413894475180431402

`A051731(n+1)*A051953(A050873(n+1))`
-/

namespace A141846.P13413894475180431402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A051953 (A050873 (n + 1)).toNat

end

end A141846.P13413894475180431402

namespace A141846

/-- `A051731(n+1)*A051953(A050873(n+1))` -/
def P13413894475180431402.Spec : Prop :=
  ∀ n, P13413894475180431402.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P3701202862367797541

`A002260(n+1)*A051731(n+1)-A054522(n+1)`
-/

namespace A141846.P3701202862367797541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051731 (n + 1) - A054522 (n + 1)

end

end A141846.P3701202862367797541

namespace A141846

/-- `A002260(n+1)*A051731(n+1)-A054522(n+1)` -/
def P3701202862367797541.Spec : Prop :=
  ∀ n, P3701202862367797541.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P15777416323476380884

`A051953(A307662(n+1))`
-/

namespace A141846.P15777416323476380884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A307662 (n + 1)).toNat

end

end A141846.P15777416323476380884

namespace A141846

/-- `A051953(A307662(n+1))` -/
def P15777416323476380884.Spec : Prop :=
  ∀ n, P15777416323476380884.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P2710067029909887154

`A319700(2*A307662(n+1))`
-/

namespace A141846.P2710067029909887154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * A307662 (n + 1)).toNat

end

end A141846.P2710067029909887154

namespace A141846

/-- `A319700(2*A307662(n+1))` -/
def P2710067029909887154.Spec : Prop :=
  ∀ n, P2710067029909887154.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P8831673849733719355

`∑{d}[A307662(n+1), A062790(#)]`
-/

namespace A141846.P8831673849733719355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A141846.P8831673849733719355

namespace A141846

/-- `∑{d}[A307662(n+1), A062790(#)]` -/
def P8831673849733719355.Spec : Prop :=
  ∀ n, P8831673849733719355.a n = A141846 (n + 1)

end A141846

/-! ## A141846.P1032721731769164424

`A174852(n+1)*A328496(n+1)`
-/

namespace A141846.P1032721731769164424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174852 (n + 1) * A328496 (n + 1)

end

end A141846.P1032721731769164424

namespace A141846

/-- `A174852(n+1)*A328496(n+1)` -/
def P1032721731769164424.Spec : Prop :=
  ∀ n, P1032721731769164424.a n = A141846 (n + 1)

end A141846

/-!
# A141847: Least number k such that sigma_2(k) >= 2^n.

The programs for A141847, there is no canonical definition to state claims against.
-/

/-! ## A141847.P3757425743574247448

`A039900(n)+A001285(A266963(n+1))`
-/

namespace A141847.P3757425743574247448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A001285 (A266963 (n + 1)).toNat

end

end A141847.P3757425743574247448

/-! ## A141847.P4748310511661463257

`ceil(root(A151526(2*n+3), 5))`
-/

namespace A141847.P4748310511661463257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151526 (2 * n + 3) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A141847.P4748310511661463257

/-! ## A141847.P10226839463879174848

`A337769(A278706(n+1)+1)`
-/

namespace A141847.P10226839463879174848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A278706 (n + 1) + 1).toNat

end

end A141847.P10226839463879174848

/-! ## A141847.P5343576039628055068

`A028310(n)+A003002(A152718(n))`
-/

namespace A141847.P5343576039628055068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A003002 (A152718 n).toNat

end

end A141847.P5343576039628055068

/-! ## A141847.P1779044656950013072

`A353458(A319629(n))+A027342(n)`
-/

namespace A141847.P1779044656950013072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A319629 n).toNat + A027342 n

end

end A141847.P1779044656950013072

/-!
# A141848: Decimal expansion of the Pell constant.

The programs for A141848, there is no canonical definition to state claims against.
-/

/-! ## A141848.P11709539923464011685

`9-A132020(n)`
-/

namespace A141848.P11709539923464011685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A132020 n

end

end A141848.P11709539923464011685

/-!
# A141849: Primes congruent to 1 mod 11.

The programs for A141849, the canonical program `A141849.P13731461525299827843` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141849 has offset 1).

The definition of A141849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141849.P13731461525299827843

`∪[A142049(n+1), A142062(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141849

/-- `∪[A142049(n+1), A142062(n+1)]` -/
def P13731461525299827843.Spec : Prop :=
  ∀ n, (P13731461525299827843.a n : ℤ) = A141849 (n + 1)

theorem P13731461525299827843.correct : P13731461525299827843.Spec := by
  intro n
  simp only [A141849, Nat.add_sub_cancel]

end A141849

/-! ## A141849.P3354167878291350315

`∪[A142292(n+1), A142302(n+1)]`
-/

namespace A141849.P3354167878291350315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P3354167878291350315

namespace A141849

/-- `∪[A142292(n+1), A142302(n+1)]` -/
def P3354167878291350315.Spec : Prop :=
  ∀ n, (P3354167878291350315.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P9038129352396391923

`p?[11*n+1]`
-/

namespace A141849.P9038129352396391923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141849.P9038129352396391923

namespace A141849

/-- `p?[11*n+1]` -/
def P9038129352396391923.Spec : Prop :=
  ∀ n, (P9038129352396391923.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P991022758455862702

`or(1, p?[a(n-1)+11])` with `a(0)=1`
-/

namespace A141849.P991022758455862702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141849.P991022758455862702

namespace A141849

/-- `or(1, p?[a(n-1)+11])` -/
def P991022758455862702.Spec : Prop :=
  ∀ n, (P991022758455862702.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P5518550085645042318

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=1`
-/

namespace A141849.P5518550085645042318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141849.P5518550085645042318

namespace A141849

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P5518550085645042318.Spec : Prop :=
  ∀ n, (P5518550085645042318.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P17687724002905821148

`∑{p}[p?[a(n-1)+11], #]` with `a(0)=1`
-/

namespace A141849.P17687724002905821148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141849.P17687724002905821148

namespace A141849

/-- `∑{p}[p?[a(n-1)+11], #]` -/
def P17687724002905821148.Spec : Prop :=
  ∀ n, (P17687724002905821148.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P3438470295785427304

`∏{p}[p?[a(n-1)+11], #]` with `a(0)=1`
-/

namespace A141849.P3438470295785427304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141849.P3438470295785427304

namespace A141849

/-- `∏{p}[p?[a(n-1)+11], #]` -/
def P3438470295785427304.Spec : Prop :=
  ∀ n, (P3438470295785427304.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P9637929617053539260

`∩[A215390(n+1), A215163(n+1)]`
-/

namespace A141849.P9637929617053539260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P9637929617053539260

namespace A141849

/-- `∩[A215390(n+1), A215163(n+1)]` -/
def P9637929617053539260.Spec : Prop :=
  ∀ n, (P9637929617053539260.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P7454798295812716333

`∩[A215214(n+1), A215163(n+1)]`
-/

namespace A141849.P7454798295812716333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P7454798295812716333

namespace A141849

/-- `∩[A215214(n+1), A215163(n+1)]` -/
def P7454798295812716333.Spec : Prop :=
  ∀ n, (P7454798295812716333.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P15642297460757024218

`∩[A215134(n+1), A215163(n+1)]`
-/

namespace A141849.P15642297460757024218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P15642297460757024218

namespace A141849

/-- `∩[A215134(n+1), A215163(n+1)]` -/
def P15642297460757024218.Spec : Prop :=
  ∀ n, (P15642297460757024218.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P8437728289531464824

`∩[A215163(n+1), A215306(n+1)]`
-/

namespace A141849.P8437728289531464824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P8437728289531464824

namespace A141849

/-- `∩[A215163(n+1), A215306(n+1)]` -/
def P8437728289531464824.Spec : Prop :=
  ∀ n, (P8437728289531464824.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P2091249809770401649

`∩[A215163(n+1), A215382(n+1)]`
-/

namespace A141849.P2091249809770401649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P2091249809770401649

namespace A141849

/-- `∩[A215163(n+1), A215382(n+1)]` -/
def P2091249809770401649.Spec : Prop :=
  ∀ n, (P2091249809770401649.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P9956274402994431458

`∩[A056874(n+1), A215390(n+1)]`
-/

namespace A141849.P9956274402994431458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P9956274402994431458

namespace A141849

/-- `∩[A056874(n+1), A215390(n+1)]` -/
def P9956274402994431458.Spec : Prop :=
  ∀ n, (P9956274402994431458.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P1309782989244340855

`∩[A137978(n+1), A215163(n+1)]`
-/

namespace A141849.P1309782989244340855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P1309782989244340855

namespace A141849

/-- `∩[A137978(n+1), A215163(n+1)]` -/
def P1309782989244340855.Spec : Prop :=
  ∀ n, (P1309782989244340855.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P5491550105018379111

`∩[A137978(n+1), A215390(n+1)]`
-/

namespace A141849.P5491550105018379111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P5491550105018379111

namespace A141849

/-- `∩[A137978(n+1), A215390(n+1)]` -/
def P5491550105018379111.Spec : Prop :=
  ∀ n, (P5491550105018379111.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P11108605643039935155

`∩[A352494(n+1), A137978(n+1)]`
-/

namespace A141849.P11108605643039935155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P11108605643039935155

namespace A141849

/-- `∩[A352494(n+1), A137978(n+1)]` -/
def P11108605643039935155.Spec : Prop :=
  ∀ n, (P11108605643039935155.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P184854986465934064

`∩[A296920(n+1), A215390(n+1)]`
-/

namespace A141849.P184854986465934064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P184854986465934064

namespace A141849

/-- `∩[A296920(n+1), A215390(n+1)]` -/
def P184854986465934064.Spec : Prop :=
  ∀ n, (P184854986465934064.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P6291201878329272235

`∩[A296920(n+1), A352494(n+1)]`
-/

namespace A141849.P6291201878329272235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P6291201878329272235

namespace A141849

/-- `∩[A296920(n+1), A352494(n+1)]` -/
def P6291201878329272235.Spec : Prop :=
  ∀ n, (P6291201878329272235.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P10725881978956962209

`∩[A215318(n+1), A215163(n+1)]`
-/

namespace A141849.P10725881978956962209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P10725881978956962209

namespace A141849

/-- `∩[A215318(n+1), A215163(n+1)]` -/
def P10725881978956962209.Spec : Prop :=
  ∀ n, (P10725881978956962209.a n : ℤ) = A141849 (n + 1)

end A141849

/-! ## A141849.P3159974912684701364

`∩[A215310(n+1), A352494(n+1)]`
-/

namespace A141849.P3159974912684701364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P3159974912684701364

namespace A141849

/-- `∩[A215310(n+1), A352494(n+1)]` -/
def P3159974912684701364.Spec : Prop :=
  ∀ n, (P3159974912684701364.a n : ℤ) = A141849 (n + 1)

end A141849

/-!
# A141850: Primes congruent to 3 mod 11.

The programs for A141850, the canonical program `A141850.P2965218855640811810` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141850 has offset 1).

The definition of A141850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7814 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141850.P5936074744478517256

`∪[A142293(n+1), A142303(n+1)]`
-/

namespace A141850.P5936074744478517256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P5936074744478517256

namespace A141850

/-- `∪[A142293(n+1), A142303(n+1)]` -/
def P5936074744478517256.Spec : Prop :=
  ∀ n, (P5936074744478517256.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P2965218855640811810

`p?[11*n+3]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141850

/-- `p?[11*n+3]` -/
def P2965218855640811810.Spec : Prop :=
  ∀ n, (P2965218855640811810.a n : ℤ) = A141850 (n + 1)

theorem P2965218855640811810.correct : P2965218855640811810.Spec := by
  intro n
  simp only [A141850, Nat.add_sub_cancel]

end A141850

/-! ## A141850.P14624274621572737562

`or(1, p?[11*n-8])`
-/

namespace A141850.P14624274621572737562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141850.P14624274621572737562

namespace A141850

/-- `or(1, p?[11*n-8])` -/
def P14624274621572737562.Spec : Prop :=
  ∀ n, P14624274621572737562.a n = A141850 (n + 1)

end A141850

/-! ## A141850.P18147757286392944213

`∑{p}[p?[11*n-8], #]`
-/

namespace A141850.P18147757286392944213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141850.P18147757286392944213

namespace A141850

/-- `∑{p}[p?[11*n-8], #]` -/
def P18147757286392944213.Spec : Prop :=
  ∀ n, (P18147757286392944213.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P13642217547313701254

`∩[A214888(n+1), A215106(n+1)]`
-/

namespace A141850.P13642217547313701254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P13642217547313701254

namespace A141850

/-- `∩[A214888(n+1), A215106(n+1)]` -/
def P13642217547313701254.Spec : Prop :=
  ∀ n, (P13642217547313701254.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P6962972456184724152

`∩[A215106(n+1), A215374(n+1)]`
-/

namespace A141850.P6962972456184724152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P6962972456184724152

namespace A141850

/-- `∩[A215106(n+1), A215374(n+1)]` -/
def P6962972456184724152.Spec : Prop :=
  ∀ n, (P6962972456184724152.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P4363184527835268261

`∩[A215106(n+1), A215279(n+1)]`
-/

namespace A141850.P4363184527835268261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P4363184527835268261

namespace A141850

/-- `∩[A215106(n+1), A215279(n+1)]` -/
def P4363184527835268261.Spec : Prop :=
  ∀ n, (P4363184527835268261.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P2032552013801401000

`∩[A215106(n+1), A215358(n+1)]`
-/

namespace A141850.P2032552013801401000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P2032552013801401000

namespace A141850

/-- `∩[A215106(n+1), A215358(n+1)]` -/
def P2032552013801401000.Spec : Prop :=
  ∀ n, (P2032552013801401000.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P11424915849304941992

`∩[A215106(n+1), A215134(n+1)]`
-/

namespace A141850.P11424915849304941992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P11424915849304941992

namespace A141850

/-- `∩[A215106(n+1), A215134(n+1)]` -/
def P11424915849304941992.Spec : Prop :=
  ∀ n, (P11424915849304941992.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P2741703891763384213

`∩[A215106(n+1), A215378(n+1)]`
-/

namespace A141850.P2741703891763384213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P2741703891763384213

namespace A141850

/-- `∩[A215106(n+1), A215378(n+1)]` -/
def P2741703891763384213.Spec : Prop :=
  ∀ n, (P2741703891763384213.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P406131649460834672

`∩[A215106(n+1), A215302(n+1)]`
-/

namespace A141850.P406131649460834672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P406131649460834672

namespace A141850

/-- `∩[A215106(n+1), A215302(n+1)]` -/
def P406131649460834672.Spec : Prop :=
  ∀ n, (P406131649460834672.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P13943248764523612958

`∩[A056874(n+1), A214888(n+1)]`
-/

namespace A141850.P13943248764523612958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P13943248764523612958

namespace A141850

/-- `∩[A056874(n+1), A214888(n+1)]` -/
def P13943248764523612958.Spec : Prop :=
  ∀ n, (P13943248764523612958.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P4857307953455469677

`∩[A056874(n+1), A215386(n+1)]`
-/

namespace A141850.P4857307953455469677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P4857307953455469677

namespace A141850

/-- `∩[A056874(n+1), A215386(n+1)]` -/
def P4857307953455469677.Spec : Prop :=
  ∀ n, (P4857307953455469677.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P3326970531141856704

`∩[A214888(n+1), A296920(n+1)]`
-/

namespace A141850.P3326970531141856704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P3326970531141856704

namespace A141850

/-- `∩[A214888(n+1), A296920(n+1)]` -/
def P3326970531141856704.Spec : Prop :=
  ∀ n, (P3326970531141856704.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P17156614243454301481

`∩[A215374(n+1), A296920(n+1)]`
-/

namespace A141850.P17156614243454301481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P17156614243454301481

namespace A141850

/-- `∩[A215374(n+1), A296920(n+1)]` -/
def P17156614243454301481.Spec : Prop :=
  ∀ n, (P17156614243454301481.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P6176205531555325429

`∩[A215386(n+1), A296920(n+1)]`
-/

namespace A141850.P6176205531555325429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P6176205531555325429

namespace A141850

/-- `∩[A215386(n+1), A296920(n+1)]` -/
def P6176205531555325429.Spec : Prop :=
  ∀ n, (P6176205531555325429.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P16434821889464649733

`∩[A137978(n+1), A214888(n+1)]`
-/

namespace A141850.P16434821889464649733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P16434821889464649733

namespace A141850

/-- `∩[A137978(n+1), A214888(n+1)]` -/
def P16434821889464649733.Spec : Prop :=
  ∀ n, (P16434821889464649733.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P16542891835412906458

`∩[A137978(n+1), A215279(n+1)]`
-/

namespace A141850.P16542891835412906458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P16542891835412906458

namespace A141850

/-- `∩[A137978(n+1), A215279(n+1)]` -/
def P16542891835412906458.Spec : Prop :=
  ∀ n, (P16542891835412906458.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P9272994158211009388

`∩[A137978(n+1), A215350(n+1)]`
-/

namespace A141850.P9272994158211009388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P9272994158211009388

namespace A141850

/-- `∩[A137978(n+1), A215350(n+1)]` -/
def P9272994158211009388.Spec : Prop :=
  ∀ n, (P9272994158211009388.a n : ℤ) = A141850 (n + 1)

end A141850

/-! ## A141850.P7406876918405453277

`∩[A137978(n+1), A215358(n+1)]`
-/

namespace A141850.P7406876918405453277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141850.P7406876918405453277

namespace A141850

/-- `∩[A137978(n+1), A215358(n+1)]` -/
def P7406876918405453277.Spec : Prop :=
  ∀ n, (P7406876918405453277.a n : ℤ) = A141850 (n + 1)

end A141850

/-!
# A141851: Primes congruent to 4 mod 11.

The programs for A141851, the canonical program `A141851.P13840469523401039223` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141851 has offset 1).

The definition of A141851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141851.P13840469523401039223

`∪[A142051(n+1), A142064(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141851

/-- `∪[A142051(n+1), A142064(n+1)]` -/
def P13840469523401039223.Spec : Prop :=
  ∀ n, (P13840469523401039223.a n : ℤ) = A141851 (n + 1)

theorem P13840469523401039223.correct : P13840469523401039223.Spec := by
  intro n
  simp only [A141851, Nat.add_sub_cancel]

end A141851

/-! ## A141851.P542170799956358741

`∪[A142298(n+1), A142308(n+1)]`
-/

namespace A141851.P542170799956358741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P542170799956358741

namespace A141851

/-- `∪[A142298(n+1), A142308(n+1)]` -/
def P542170799956358741.Spec : Prop :=
  ∀ n, (P542170799956358741.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P6280600381503039769

`p?[11*n+4]`
-/

namespace A141851.P6280600381503039769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141851.P6280600381503039769

namespace A141851

/-- `p?[11*n+4]` -/
def P6280600381503039769.Spec : Prop :=
  ∀ n, (P6280600381503039769.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P5378612252372327821

`or(1, p?[a(n-1)+11])` with `a(0)=4`
-/

namespace A141851.P5378612252372327821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141851.P5378612252372327821

namespace A141851

/-- `or(1, p?[a(n-1)+11])` -/
def P5378612252372327821.Spec : Prop :=
  ∀ n, (P5378612252372327821.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P17172844108837312017

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=4`
-/

namespace A141851.P17172844108837312017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141851.P17172844108837312017

namespace A141851

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P17172844108837312017.Spec : Prop :=
  ∀ n, (P17172844108837312017.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P5777327224861926188

`∑{p}[p?[a(n-1)+11], #]` with `a(0)=4`
-/

namespace A141851.P5777327224861926188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141851.P5777327224861926188

namespace A141851

/-- `∑{p}[p?[a(n-1)+11], #]` -/
def P5777327224861926188.Spec : Prop :=
  ∀ n, (P5777327224861926188.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P12402686172914460781

`∏{p}[p?[a(n-1)+11], #]` with `a(0)=4`
-/

namespace A141851.P12402686172914460781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141851.P12402686172914460781

namespace A141851

/-- `∏{p}[p?[a(n-1)+11], #]` -/
def P12402686172914460781.Spec : Prop :=
  ∀ n, (P12402686172914460781.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P8186910350624842913

`∩[A215163(n+1), A215279(n+1)]`
-/

namespace A141851.P8186910350624842913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P8186910350624842913

namespace A141851

/-- `∩[A215163(n+1), A215279(n+1)]` -/
def P8186910350624842913.Spec : Prop :=
  ∀ n, (P8186910350624842913.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P445361511437701543

`∩[A215163(n+1), A215358(n+1)]`
-/

namespace A141851.P445361511437701543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P445361511437701543

namespace A141851

/-- `∩[A215163(n+1), A215358(n+1)]` -/
def P445361511437701543.Spec : Prop :=
  ∀ n, (P445361511437701543.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P9187766597076867657

`∩[A215163(n+1), A215314(n+1)]`
-/

namespace A141851.P9187766597076867657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P9187766597076867657

namespace A141851

/-- `∩[A215163(n+1), A215314(n+1)]` -/
def P9187766597076867657.Spec : Prop :=
  ∀ n, (P9187766597076867657.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P10867282310745672296

`∩[A215163(n+1), A215350(n+1)]`
-/

namespace A141851.P10867282310745672296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P10867282310745672296

namespace A141851

/-- `∩[A215163(n+1), A215350(n+1)]` -/
def P10867282310745672296.Spec : Prop :=
  ∀ n, (P10867282310745672296.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P16963383020299598740

`∩[A215163(n+1), A215354(n+1)]`
-/

namespace A141851.P16963383020299598740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P16963383020299598740

namespace A141851

/-- `∩[A215163(n+1), A215354(n+1)]` -/
def P16963383020299598740.Spec : Prop :=
  ∀ n, (P16963383020299598740.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P1086796821222866175

`∩[A215163(n+1), A215275(n+1)]`
-/

namespace A141851.P1086796821222866175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P1086796821222866175

namespace A141851

/-- `∩[A215163(n+1), A215275(n+1)]` -/
def P1086796821222866175.Spec : Prop :=
  ∀ n, (P1086796821222866175.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P8504473177475801457

`∩[A215163(n+1), A215427(n+1)]`
-/

namespace A141851.P8504473177475801457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P8504473177475801457

namespace A141851

/-- `∩[A215163(n+1), A215427(n+1)]` -/
def P8504473177475801457.Spec : Prop :=
  ∀ n, (P8504473177475801457.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P17795435855290752481

`∩[A137977(n+1), A215163(n+1)]`
-/

namespace A141851.P17795435855290752481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P17795435855290752481

namespace A141851

/-- `∩[A137977(n+1), A215163(n+1)]` -/
def P17795435855290752481.Spec : Prop :=
  ∀ n, (P17795435855290752481.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P8794038757545172144

`∩[A137977(n+1), A296920(n+1)]`
-/

namespace A141851.P8794038757545172144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P8794038757545172144

namespace A141851

/-- `∩[A137977(n+1), A296920(n+1)]` -/
def P8794038757545172144.Spec : Prop :=
  ∀ n, (P8794038757545172144.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P14185148713724482545

`or(1, p?[A017437(n)])`
-/

namespace A141851.P14185148713724482545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141851.P14185148713724482545

namespace A141851

/-- `or(1, p?[A017437(n)])` -/
def P14185148713724482545.Spec : Prop :=
  ∀ n, P14185148713724482545.a n = A141851 (n + 1)

end A141851

/-! ## A141851.P11960581505648046425

`A017437(A154607(n+1))`
-/

namespace A141851.P11960581505648046425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 (A154607 (n + 1)).toNat

end

end A141851.P11960581505648046425

namespace A141851

/-- `A017437(A154607(n+1))` -/
def P11960581505648046425.Spec : Prop :=
  ∀ n, P11960581505648046425.a n = A141851 (n + 1)

end A141851

/-! ## A141851.P13215416751649172128

`∩[A056874(n+1), A017437(n)]`
-/

namespace A141851.P13215416751649172128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P13215416751649172128

namespace A141851

/-- `∩[A056874(n+1), A017437(n)]` -/
def P13215416751649172128.Spec : Prop :=
  ∀ n, (P13215416751649172128.a n : ℤ) = A141851 (n + 1)

end A141851

/-! ## A141851.P13672544780917610456

`∩[A067833(n+1), A017437(n)]`
-/

namespace A141851.P13672544780917610456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P13672544780917610456

namespace A141851

/-- `∩[A067833(n+1), A017437(n)]` -/
def P13672544780917610456.Spec : Prop :=
  ∀ n, (P13672544780917610456.a n : ℤ) = A141851 (n + 1)

end A141851

/-!
# A141852: Primes congruent to 5 mod 11.

The programs for A141852, the canonical program `A141852.P969054118036773322` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141852 has offset 1).

The definition of A141852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141852.P969054118036773322

`∪[A142052(n+1), A142058(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141852

/-- `∪[A142052(n+1), A142058(n+1)]` -/
def P969054118036773322.Spec : Prop :=
  ∀ n, (P969054118036773322.a n : ℤ) = A141852 (n + 1)

theorem P969054118036773322.correct : P969054118036773322.Spec := by
  intro n
  simp only [A141852, Nat.add_sub_cancel]

end A141852

/-! ## A141852.P1679995350310026366

`∪[A142294(n+1), A142304(n+1)]`
-/

namespace A141852.P1679995350310026366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P1679995350310026366

namespace A141852

/-- `∪[A142294(n+1), A142304(n+1)]` -/
def P1679995350310026366.Spec : Prop :=
  ∀ n, (P1679995350310026366.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P16673132142744332099

`p?[11*n+5]`
-/

namespace A141852.P16673132142744332099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141852.P16673132142744332099

namespace A141852

/-- `p?[11*n+5]` -/
def P16673132142744332099.Spec : Prop :=
  ∀ n, (P16673132142744332099.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P15464552851889743957

`or(1, p?[11*n-6])`
-/

namespace A141852.P15464552851889743957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141852.P15464552851889743957

namespace A141852

/-- `or(1, p?[11*n-6])` -/
def P15464552851889743957.Spec : Prop :=
  ∀ n, P15464552851889743957.a n = A141852 (n + 1)

end A141852

/-! ## A141852.P11096774301640951264

`∑{p}[p?[11*n-6], #]`
-/

namespace A141852.P11096774301640951264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141852.P11096774301640951264

namespace A141852

/-- `∑{p}[p?[11*n-6], #]` -/
def P11096774301640951264.Spec : Prop :=
  ∀ n, (P11096774301640951264.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P45636055981811567

`∏{p}[p?[11*n-6], #]`
-/

namespace A141852.P45636055981811567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141852.P45636055981811567

namespace A141852

/-- `∏{p}[p?[11*n-6], #]` -/
def P45636055981811567.Spec : Prop :=
  ∀ n, (P45636055981811567.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P12083275055946070578

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=5`
-/

namespace A141852.P12083275055946070578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141852.P12083275055946070578

namespace A141852

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P12083275055946070578.Spec : Prop :=
  ∀ n, (P12083275055946070578.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P12709581332589981730

`A000027(p?[a(n-1)+11])` with `a(0)=5`
-/

namespace A141852.P12709581332589981730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141852.P12709581332589981730

namespace A141852

/-- `A000027(p?[a(n-1)+11])` -/
def P12709581332589981730.Spec : Prop :=
  ∀ n, P12709581332589981730.a n = A141852 (n + 1)

end A141852

/-! ## A141852.P9905124083821693816

`∩[A215106(n+1), A215167(n+1)]`
-/

namespace A141852.P9905124083821693816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P9905124083821693816

namespace A141852

/-- `∩[A215106(n+1), A215167(n+1)]` -/
def P9905124083821693816.Spec : Prop :=
  ∀ n, (P9905124083821693816.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P15594902886533328393

`∩[A215106(n+1), A215214(n+1)]`
-/

namespace A141852.P15594902886533328393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P15594902886533328393

namespace A141852

/-- `∩[A215106(n+1), A215214(n+1)]` -/
def P15594902886533328393.Spec : Prop :=
  ∀ n, (P15594902886533328393.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P16341156578691814976

`∩[A215106(n+1), A215210(n+1)]`
-/

namespace A141852.P16341156578691814976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P16341156578691814976

namespace A141852

/-- `∩[A215106(n+1), A215210(n+1)]` -/
def P16341156578691814976.Spec : Prop :=
  ∀ n, (P16341156578691814976.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P18331473734500713894

`∩[A215167(n+1), A296920(n+1)]`
-/

namespace A141852.P18331473734500713894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P18331473734500713894

namespace A141852

/-- `∩[A215167(n+1), A296920(n+1)]` -/
def P18331473734500713894.Spec : Prop :=
  ∀ n, (P18331473734500713894.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P9065171444264360185

`∩[A215210(n+1), A296920(n+1)]`
-/

namespace A141852.P9065171444264360185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P9065171444264360185

namespace A141852

/-- `∩[A215210(n+1), A296920(n+1)]` -/
def P9065171444264360185.Spec : Prop :=
  ∀ n, (P9065171444264360185.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P8929354620904373861

`∩[A056874(n+1), A215167(n+1)]`
-/

namespace A141852.P8929354620904373861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P8929354620904373861

namespace A141852

/-- `∩[A056874(n+1), A215167(n+1)]` -/
def P8929354620904373861.Spec : Prop :=
  ∀ n, (P8929354620904373861.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P4307312546516104149

`∩[A056874(n+1), A215210(n+1)]`
-/

namespace A141852.P4307312546516104149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P4307312546516104149

namespace A141852

/-- `∩[A056874(n+1), A215210(n+1)]` -/
def P4307312546516104149.Spec : Prop :=
  ∀ n, (P4307312546516104149.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P16652896104595881785

`∩[A137978(n+1), A215167(n+1)]`
-/

namespace A141852.P16652896104595881785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P16652896104595881785

namespace A141852

/-- `∩[A137978(n+1), A215167(n+1)]` -/
def P16652896104595881785.Spec : Prop :=
  ∀ n, (P16652896104595881785.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P14638667490592038206

`∩[A137978(n+1), A215275(n+1)]`
-/

namespace A141852.P14638667490592038206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P14638667490592038206

namespace A141852

/-- `∩[A137978(n+1), A215275(n+1)]` -/
def P14638667490592038206.Spec : Prop :=
  ∀ n, (P14638667490592038206.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P1472943454060031481

`∩[A137978(n+1), A215427(n+1)]`
-/

namespace A141852.P1472943454060031481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P1472943454060031481

namespace A141852

/-- `∩[A137978(n+1), A215427(n+1)]` -/
def P1472943454060031481.Spec : Prop :=
  ∀ n, (P1472943454060031481.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P7990190640931696713

`∩[A215167(n+1), A341785(n+1)]`
-/

namespace A141852.P7990190640931696713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P7990190640931696713

namespace A141852

/-- `∩[A215167(n+1), A341785(n+1)]` -/
def P7990190640931696713.Spec : Prop :=
  ∀ n, (P7990190640931696713.a n : ℤ) = A141852 (n + 1)

end A141852

/-! ## A141852.P4153211612809677572

`∩[A215210(n+1), A341785(n+1)]`
-/

namespace A141852.P4153211612809677572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P4153211612809677572

namespace A141852

/-- `∩[A215210(n+1), A341785(n+1)]` -/
def P4153211612809677572.Spec : Prop :=
  ∀ n, (P4153211612809677572.a n : ℤ) = A141852 (n + 1)

end A141852

/-!
# A141853: Primes congruent to 6 mod 11.

The programs for A141853, the canonical program `A141853.P13627504790590527624` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141853 has offset 1).

The definition of A141853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141853.P13627504790590527624

`∪[A142059(n+1), A142065(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141853

/-- `∪[A142059(n+1), A142065(n+1)]` -/
def P13627504790590527624.Spec : Prop :=
  ∀ n, (P13627504790590527624.a n : ℤ) = A141853 (n + 1)

theorem P13627504790590527624.correct : P13627504790590527624.Spec := by
  intro n
  simp only [A141853, Nat.add_sub_cancel]

end A141853

/-! ## A141853.P9669941208156002348

`∪[A142299(n+1), A142309(n+1)]`
-/

namespace A141853.P9669941208156002348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P9669941208156002348

namespace A141853

/-- `∪[A142299(n+1), A142309(n+1)]` -/
def P9669941208156002348.Spec : Prop :=
  ∀ n, (P9669941208156002348.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P14972261774894345028

`p?[11*n-5]`
-/

namespace A141853.P14972261774894345028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141853.P14972261774894345028

namespace A141853

/-- `p?[11*n-5]` -/
def P14972261774894345028.Spec : Prop :=
  ∀ n, P14972261774894345028.a n = A141853 (n + 1)

end A141853

/-! ## A141853.P14568204995904094316

`or(1, p?[11*n+6])`
-/

namespace A141853.P14568204995904094316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141853.P14568204995904094316

namespace A141853

/-- `or(1, p?[11*n+6])` -/
def P14568204995904094316.Spec : Prop :=
  ∀ n, (P14568204995904094316.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P17333348544329926839

`∑{p}[p?[11*n+6], #]`
-/

namespace A141853.P17333348544329926839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141853.P17333348544329926839

namespace A141853

/-- `∑{p}[p?[11*n+6], #]` -/
def P17333348544329926839.Spec : Prop :=
  ∀ n, (P17333348544329926839.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P14834643682224595915

`∩[A137977(n+1), A215106(n+1)]`
-/

namespace A141853.P14834643682224595915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P14834643682224595915

namespace A141853

/-- `∩[A137977(n+1), A215106(n+1)]` -/
def P14834643682224595915.Spec : Prop :=
  ∀ n, (P14834643682224595915.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P13222166781449641108

`∩[A191060(n+1), A215106(n+1)]`
-/

namespace A141853.P13222166781449641108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P13222166781449641108

namespace A141853

/-- `∩[A191060(n+1), A215106(n+1)]` -/
def P13222166781449641108.Spec : Prop :=
  ∀ n, (P13222166781449641108.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P7857367861682346883

`∩[A137977(n+1), A248339(n)-2]`
-/

namespace A141853.P7857367861682346883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P7857367861682346883

namespace A141853

/-- `∩[A137977(n+1), A248339(n)-2]` -/
def P7857367861682346883.Spec : Prop :=
  ∀ n, (P7857367861682346883.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P801993521857040575

`∩[A191060(n+1), A248339(n)-2]`
-/

namespace A141853.P801993521857040575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P801993521857040575

namespace A141853

/-- `∩[A191060(n+1), A248339(n)-2]` -/
def P801993521857040575.Spec : Prop :=
  ∀ n, (P801993521857040575.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P18381762788696440301

`∩[A049593(n+1), A017461(n)]`
-/

namespace A141853.P18381762788696440301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P18381762788696440301

namespace A141853

/-- `∩[A049593(n+1), A017461(n)]` -/
def P18381762788696440301.Spec : Prop :=
  ∀ n, (P18381762788696440301.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P1331844603438674056

`∩[A137977(n+1), A017461(n)]`
-/

namespace A141853.P1331844603438674056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P1331844603438674056

namespace A141853

/-- `∩[A137977(n+1), A017461(n)]` -/
def P1331844603438674056.Spec : Prop :=
  ∀ n, (P1331844603438674056.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P244767545056732430

`∩[A138645(n+1), A017461(n)]`
-/

namespace A141853.P244767545056732430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P244767545056732430

namespace A141853

/-- `∩[A138645(n+1), A017461(n)]` -/
def P244767545056732430.Spec : Prop :=
  ∀ n, (P244767545056732430.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P17215474734406968696

`∩[A140563(n+1), A017461(n)]`
-/

namespace A141853.P17215474734406968696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P17215474734406968696

namespace A141853

/-- `∩[A140563(n+1), A017461(n)]` -/
def P17215474734406968696.Spec : Prop :=
  ∀ n, (P17215474734406968696.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P9741484041633814360

`∩[A191060(n+1), A017461(n)]`
-/

namespace A141853.P9741484041633814360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P9741484041633814360

namespace A141853

/-- `∩[A191060(n+1), A017461(n)]` -/
def P9741484041633814360.Spec : Prop :=
  ∀ n, (P9741484041633814360.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P291439025506051435

`∩[A215106(n+1), A017461(n)]`
-/

namespace A141853.P291439025506051435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P291439025506051435

namespace A141853

/-- `∩[A215106(n+1), A017461(n)]` -/
def P291439025506051435.Spec : Prop :=
  ∀ n, (P291439025506051435.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P8880871332939257896

`∩[A215275(n+1), A017461(n)]`
-/

namespace A141853.P8880871332939257896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P8880871332939257896

namespace A141853

/-- `∩[A215275(n+1), A017461(n)]` -/
def P8880871332939257896.Spec : Prop :=
  ∀ n, (P8880871332939257896.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P8607155374347058259

`∩[A215318(n+1), A017461(n)]`
-/

namespace A141853.P8607155374347058259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P8607155374347058259

namespace A141853

/-- `∩[A215318(n+1), A017461(n)]` -/
def P8607155374347058259.Spec : Prop :=
  ∀ n, (P8607155374347058259.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P14280448946062542170

`∩[A215322(n+1), A017461(n)]`
-/

namespace A141853.P14280448946062542170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P14280448946062542170

namespace A141853

/-- `∩[A215322(n+1), A017461(n)]` -/
def P14280448946062542170.Spec : Prop :=
  ∀ n, (P14280448946062542170.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P7491024686348698524

`∩[A215350(n+1), A017461(n)]`
-/

namespace A141853.P7491024686348698524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P7491024686348698524

namespace A141853

/-- `∩[A215350(n+1), A017461(n)]` -/
def P7491024686348698524.Spec : Prop :=
  ∀ n, (P7491024686348698524.a n : ℤ) = A141853 (n + 1)

end A141853

/-! ## A141853.P3213410306697781997

`∩[A215370(n+1), A017461(n)]`
-/

namespace A141853.P3213410306697781997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P3213410306697781997

namespace A141853

/-- `∩[A215370(n+1), A017461(n)]` -/
def P3213410306697781997.Spec : Prop :=
  ∀ n, (P3213410306697781997.a n : ℤ) = A141853 (n + 1)

end A141853

/-!
# A141854: Primes congruent to 7 mod 11.

The programs for A141854, the canonical program `A141854.P11562721378020299308` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141854 has offset 1).

The definition of A141854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141854.P11562721378020299308

`∪[A142053(n+1), A142066(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141854

/-- `∪[A142053(n+1), A142066(n+1)]` -/
def P11562721378020299308.Spec : Prop :=
  ∀ n, (P11562721378020299308.a n : ℤ) = A141854 (n + 1)

theorem P11562721378020299308.correct : P11562721378020299308.Spec := by
  intro n
  simp only [A141854, Nat.add_sub_cancel]

end A141854

/-! ## A141854.P7610777541691534860

`∪[A142295(n+1), A142305(n+1)]`
-/

namespace A141854.P7610777541691534860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P7610777541691534860

namespace A141854

/-- `∪[A142295(n+1), A142305(n+1)]` -/
def P7610777541691534860.Spec : Prop :=
  ∀ n, (P7610777541691534860.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P8481586497921597584

`p?[11*n-4]`
-/

namespace A141854.P8481586497921597584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141854.P8481586497921597584

namespace A141854

/-- `p?[11*n-4]` -/
def P8481586497921597584.Spec : Prop :=
  ∀ n, P8481586497921597584.a n = A141854 (n + 1)

end A141854

/-! ## A141854.P1366299981264016525

`or(1, p?[a(n-1)+11])` with `a(0)=7`
-/

namespace A141854.P1366299981264016525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141854.P1366299981264016525

namespace A141854

/-- `or(1, p?[a(n-1)+11])` -/
def P1366299981264016525.Spec : Prop :=
  ∀ n, (P1366299981264016525.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P17148587723042070277

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=7`
-/

namespace A141854.P17148587723042070277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141854.P17148587723042070277

namespace A141854

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P17148587723042070277.Spec : Prop :=
  ∀ n, (P17148587723042070277.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P3459506845835608974

`or(1, p?[4*n+7*(n+1)])`
-/

namespace A141854.P3459506845835608974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141854.P3459506845835608974

namespace A141854

/-- `or(1, p?[4*n+7*(n+1)])` -/
def P3459506845835608974.Spec : Prop :=
  ∀ n, (P3459506845835608974.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P5878147223256878482

`∩[A137978(n+1), A215206(n+1)]`
-/

namespace A141854.P5878147223256878482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P5878147223256878482

namespace A141854

/-- `∩[A137978(n+1), A215206(n+1)]` -/
def P5878147223256878482.Spec : Prop :=
  ∀ n, (P5878147223256878482.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P8742272079176301891

`∩[A137978(n+1), A191060(n+1)]`
-/

namespace A141854.P8742272079176301891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P8742272079176301891

namespace A141854

/-- `∩[A137978(n+1), A191060(n+1)]` -/
def P8742272079176301891.Spec : Prop :=
  ∀ n, (P8742272079176301891.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P16896813017758002144

`A017473(A102711(n+1))`
-/

namespace A141854.P16896813017758002144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (A102711 (n + 1)).toNat

end

end A141854.P16896813017758002144

namespace A141854

/-- `A017473(A102711(n+1))` -/
def P16896813017758002144.Spec : Prop :=
  ∀ n, P16896813017758002144.a n = A141854 (n + 1)

end A141854

/-! ## A141854.P12585395307449459617

`∩[A137978(n+1), A017473(n)]`
-/

namespace A141854.P12585395307449459617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P12585395307449459617

namespace A141854

/-- `∩[A137978(n+1), A017473(n)]` -/
def P12585395307449459617.Spec : Prop :=
  ∀ n, (P12585395307449459617.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P18124738721922562096

`∩[A140562(n+1), A017473(n)]`
-/

namespace A141854.P18124738721922562096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P18124738721922562096

namespace A141854

/-- `∩[A140562(n+1), A017473(n)]` -/
def P18124738721922562096.Spec : Prop :=
  ∀ n, (P18124738721922562096.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P18029733988095651275

`∩[A167134(n+1), A017473(n)]`
-/

namespace A141854.P18029733988095651275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P18029733988095651275

namespace A141854

/-- `∩[A167134(n+1), A017473(n)]` -/
def P18029733988095651275.Spec : Prop :=
  ∀ n, (P18029733988095651275.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P4418313084831379400

`∩[A191060(n+1), A017473(n)]`
-/

namespace A141854.P4418313084831379400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P4418313084831379400

namespace A141854

/-- `∩[A191060(n+1), A017473(n)]` -/
def P4418313084831379400.Spec : Prop :=
  ∀ n, (P4418313084831379400.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P3001285990567026074

`∩[A215206(n+1), A017473(n)]`
-/

namespace A141854.P3001285990567026074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P3001285990567026074

namespace A141854

/-- `∩[A215206(n+1), A017473(n)]` -/
def P3001285990567026074.Spec : Prop :=
  ∀ n, (P3001285990567026074.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P3330870315966657040

`∩[A215210(n+1), A017473(n)]`
-/

namespace A141854.P3330870315966657040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P3330870315966657040

namespace A141854

/-- `∩[A215210(n+1), A017473(n)]` -/
def P3330870315966657040.Spec : Prop :=
  ∀ n, (P3330870315966657040.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P14476662394111721382

`∩[A289363(n+1), A017473(n)]`
-/

namespace A141854.P14476662394111721382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P14476662394111721382

namespace A141854

/-- `∩[A289363(n+1), A017473(n)]` -/
def P14476662394111721382.Spec : Prop :=
  ∀ n, (P14476662394111721382.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P9166514571546228165

`∩[A191060(n+1), A017461(n)+1]`
-/

namespace A141854.P9166514571546228165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P9166514571546228165

namespace A141854

/-- `∩[A191060(n+1), A017461(n)+1]` -/
def P9166514571546228165.Spec : Prop :=
  ∀ n, (P9166514571546228165.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P7359381746618343337

`∩[A165671(n+1), A017473(n)]`
-/

namespace A141854.P7359381746618343337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P7359381746618343337

namespace A141854

/-- `∩[A165671(n+1), A017473(n)]` -/
def P7359381746618343337.Spec : Prop :=
  ∀ n, (P7359381746618343337.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P17004198275710294211

`∩[A257974(n+1), A017473(n)]`
-/

namespace A141854.P17004198275710294211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P17004198275710294211

namespace A141854

/-- `∩[A257974(n+1), A017473(n)]` -/
def P17004198275710294211.Spec : Prop :=
  ∀ n, (P17004198275710294211.a n : ℤ) = A141854 (n + 1)

end A141854

/-! ## A141854.P8451421495273326371

`∩[A070303(n+1), A017473(n)]`
-/

namespace A141854.P8451421495273326371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P8451421495273326371

namespace A141854

/-- `∩[A070303(n+1), A017473(n)]` -/
def P8451421495273326371.Spec : Prop :=
  ∀ n, (P8451421495273326371.a n : ℤ) = A141854 (n + 1)

end A141854

/-!
# A141855: Primes congruent to 8 mod 11.

The programs for A141855, the canonical program `A141855.P9683596149606445885` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141855 has offset 1).

The definition of A141855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141855.P9683596149606445885

`∪[A142054(n+1), A142060(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141855

/-- `∪[A142054(n+1), A142060(n+1)]` -/
def P9683596149606445885.Spec : Prop :=
  ∀ n, (P9683596149606445885.a n : ℤ) = A141855 (n + 1)

theorem P9683596149606445885.correct : P9683596149606445885.Spec := by
  intro n
  simp only [A141855, Nat.add_sub_cancel]

end A141855

/-! ## A141855.P8587962174552443530

`∪[A142300(n+1), A142310(n+1)]`
-/

namespace A141855.P8587962174552443530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P8587962174552443530

namespace A141855

/-- `∪[A142300(n+1), A142310(n+1)]` -/
def P8587962174552443530.Spec : Prop :=
  ∀ n, (P8587962174552443530.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P51743640413028409

`p?[11*n-3]`
-/

namespace A141855.P51743640413028409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141855.P51743640413028409

namespace A141855

/-- `p?[11*n-3]` -/
def P51743640413028409.Spec : Prop :=
  ∀ n, P51743640413028409.a n = A141855 (n + 1)

end A141855

/-! ## A141855.P9199268507926317257

`or(1, p?[a(n-1)+11])` with `a(0)=8`
-/

namespace A141855.P9199268507926317257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141855.P9199268507926317257

namespace A141855

/-- `or(1, p?[a(n-1)+11])` -/
def P9199268507926317257.Spec : Prop :=
  ∀ n, (P9199268507926317257.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P14570608190764505461

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=8`
-/

namespace A141855.P14570608190764505461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141855.P14570608190764505461

namespace A141855

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P14570608190764505461.Spec : Prop :=
  ∀ n, (P14570608190764505461.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P14067596278362163434

`∑{p}[p?[a(n-1)+11], #]` with `a(0)=8`
-/

namespace A141855.P14067596278362163434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141855.P14067596278362163434

namespace A141855

/-- `∑{p}[p?[a(n-1)+11], #]` -/
def P14067596278362163434.Spec : Prop :=
  ∀ n, (P14067596278362163434.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P11715821963853163616

`∏{p}[p?[a(n-1)+11], #]` with `a(0)=8`
-/

namespace A141855.P11715821963853163616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141855.P11715821963853163616

namespace A141855

/-- `∏{p}[p?[a(n-1)+11], #]` -/
def P11715821963853163616.Spec : Prop :=
  ∀ n, (P11715821963853163616.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P13027562854445211004

`A248339(A108725(n+1)/2)`
-/

namespace A141855.P13027562854445211004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 (SequenceMachineLib.roundAway ((A108725 (n + 1) : ℚ) / 2)).toNat

end

end A141855.P13027562854445211004

namespace A141855

/-- `A248339(A108725(n+1)/2)` -/
def P13027562854445211004.Spec : Prop :=
  ∀ n, P13027562854445211004.a n = A141855 (n + 1)

end A141855

/-! ## A141855.P13889173503281619682

`∩[A137977(n+1), A248339(n)]`
-/

namespace A141855.P13889173503281619682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P13889173503281619682

namespace A141855

/-- `∩[A137977(n+1), A248339(n)]` -/
def P13889173503281619682.Spec : Prop :=
  ∀ n, (P13889173503281619682.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P1271183299108899636

`∩[A191060(n+1), A248339(n)]`
-/

namespace A141855.P1271183299108899636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P1271183299108899636

namespace A141855

/-- `∩[A191060(n+1), A248339(n)]` -/
def P1271183299108899636.Spec : Prop :=
  ∀ n, (P1271183299108899636.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P5275421880550052384

`∩[A153261(n+1), A248339(n)]`
-/

namespace A141855.P5275421880550052384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P5275421880550052384

namespace A141855

/-- `∩[A153261(n+1), A248339(n)]` -/
def P5275421880550052384.Spec : Prop :=
  ∀ n, (P5275421880550052384.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P15609490910810323400

`∩[A140557(n+1), A248339(n)]`
-/

namespace A141855.P15609490910810323400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P15609490910810323400

namespace A141855

/-- `∩[A140557(n+1), A248339(n)]` -/
def P15609490910810323400.Spec : Prop :=
  ∀ n, (P15609490910810323400.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P5331217111853156162

`A017485(A108725(n+1)+1)`
-/

namespace A141855.P5331217111853156162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (A108725 (n + 1) + 1).toNat

end

end A141855.P5331217111853156162

namespace A141855

/-- `A017485(A108725(n+1)+1)` -/
def P5331217111853156162.Spec : Prop :=
  ∀ n, P5331217111853156162.a n = A141855 (n + 1)

end A141855

/-! ## A141855.P15412676331824447773

`∩[A137977(n+1), A017485(n)]`
-/

namespace A141855.P15412676331824447773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P15412676331824447773

namespace A141855

/-- `∩[A137977(n+1), A017485(n)]` -/
def P15412676331824447773.Spec : Prop :=
  ∀ n, (P15412676331824447773.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P15629215728022898841

`∩[A140557(n+1), A017485(n)]`
-/

namespace A141855.P15629215728022898841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P15629215728022898841

namespace A141855

/-- `∩[A140557(n+1), A017485(n)]` -/
def P15629215728022898841.Spec : Prop :=
  ∀ n, (P15629215728022898841.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P17145854911696578413

`∩[A153261(n+1), A017485(n)]`
-/

namespace A141855.P17145854911696578413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P17145854911696578413

namespace A141855

/-- `∩[A153261(n+1), A017485(n)]` -/
def P17145854911696578413.Spec : Prop :=
  ∀ n, (P17145854911696578413.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P11535084998095371206

`∩[A191060(n+1), A017485(n)]`
-/

namespace A141855.P11535084998095371206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P11535084998095371206

namespace A141855

/-- `∩[A191060(n+1), A017485(n)]` -/
def P11535084998095371206.Spec : Prop :=
  ∀ n, (P11535084998095371206.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P17147298900180257114

`∩[A121658(n+1), A017485(n)]`
-/

namespace A141855.P17147298900180257114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P17147298900180257114

namespace A141855

/-- `∩[A121658(n+1), A017485(n)]` -/
def P17147298900180257114.Spec : Prop :=
  ∀ n, (P17147298900180257114.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P7191394279940550904

`∩[A121658(n+1), A248339(n)]`
-/

namespace A141855.P7191394279940550904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P7191394279940550904

namespace A141855

/-- `∩[A121658(n+1), A248339(n)]` -/
def P7191394279940550904.Spec : Prop :=
  ∀ n, (P7191394279940550904.a n : ℤ) = A141855 (n + 1)

end A141855

/-! ## A141855.P9186448417297071685

`∩[A070303(n+1), A017485(n)]`
-/

namespace A141855.P9186448417297071685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P9186448417297071685

namespace A141855

/-- `∩[A070303(n+1), A017485(n)]` -/
def P9186448417297071685.Spec : Prop :=
  ∀ n, (P9186448417297071685.a n : ℤ) = A141855 (n + 1)

end A141855

/-!
# A141856: Primes congruent to 9 mod 11.

The programs for A141856, the canonical program `A141856.P2432058376377571299` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141856 has offset 1).

The definition of A141856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141856.P2432058376377571299

`∪[A142061(n+1), A142067(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141856

/-- `∪[A142061(n+1), A142067(n+1)]` -/
def P2432058376377571299.Spec : Prop :=
  ∀ n, (P2432058376377571299.a n : ℤ) = A141856 (n + 1)

theorem P2432058376377571299.correct : P2432058376377571299.Spec := by
  intro n
  simp only [A141856, Nat.add_sub_cancel]

end A141856

/-! ## A141856.P6732575669902013579

`∪[A142296(n+1), A142306(n+1)]`
-/

namespace A141856.P6732575669902013579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P6732575669902013579

namespace A141856

/-- `∪[A142296(n+1), A142306(n+1)]` -/
def P6732575669902013579.Spec : Prop :=
  ∀ n, (P6732575669902013579.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P7032280855360501032

`p?[11*n-2]`
-/

namespace A141856.P7032280855360501032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141856.P7032280855360501032

namespace A141856

/-- `p?[11*n-2]` -/
def P7032280855360501032.Spec : Prop :=
  ∀ n, P7032280855360501032.a n = A141856 (n + 1)

end A141856

/-! ## A141856.P3410324851382929336

`∏{p}[p?[11*n+9], #]`
-/

namespace A141856.P3410324851382929336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141856.P3410324851382929336

namespace A141856

/-- `∏{p}[p?[11*n+9], #]` -/
def P3410324851382929336.Spec : Prop :=
  ∀ n, (P3410324851382929336.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P11461754914774636792

`or(1, p?[a(n-1)+11])` with `a(0)=9`
-/

namespace A141856.P11461754914774636792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141856.P11461754914774636792

namespace A141856

/-- `or(1, p?[a(n-1)+11])` -/
def P11461754914774636792.Spec : Prop :=
  ∀ n, (P11461754914774636792.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P14770133855395719925

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=9`
-/

namespace A141856.P14770133855395719925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141856.P14770133855395719925

namespace A141856

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P14770133855395719925.Spec : Prop :=
  ∀ n, (P14770133855395719925.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P17893330744345114485

`∑{p}[p?[a(n-1)+11], #]` with `a(0)=9`
-/

namespace A141856.P17893330744345114485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141856.P17893330744345114485

namespace A141856

/-- `∑{p}[p?[a(n-1)+11], #]` -/
def P17893330744345114485.Spec : Prop :=
  ∀ n, (P17893330744345114485.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P2963675440588666668

`∩[A056874(n+1), A063154(n+1)]`
-/

namespace A141856.P2963675440588666668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P2963675440588666668

namespace A141856

/-- `∩[A056874(n+1), A063154(n+1)]` -/
def P2963675440588666668.Spec : Prop :=
  ∀ n, (P2963675440588666668.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P590184738735031997

`∩[A063154(n+1), A137978(n+1)]`
-/

namespace A141856.P590184738735031997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P590184738735031997

namespace A141856

/-- `∩[A063154(n+1), A137978(n+1)]` -/
def P590184738735031997.Spec : Prop :=
  ∀ n, (P590184738735031997.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P655715039622381749

`∩[A063154(n+1), A296920(n+1)]`
-/

namespace A141856.P655715039622381749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P655715039622381749

namespace A141856

/-- `∩[A063154(n+1), A296920(n+1)]` -/
def P655715039622381749.Spec : Prop :=
  ∀ n, (P655715039622381749.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P6850723297146274778

`∩[A049591(n+1), A063154(n+1)]`
-/

namespace A141856.P6850723297146274778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P6850723297146274778

namespace A141856

/-- `∩[A049591(n+1), A063154(n+1)]` -/
def P6850723297146274778.Spec : Prop :=
  ∀ n, (P6850723297146274778.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P6274466683850213104

`∩[A063154(n+1), A067774(n+1)]`
-/

namespace A141856.P6274466683850213104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P6274466683850213104

namespace A141856

/-- `∩[A063154(n+1), A067774(n+1)]` -/
def P6274466683850213104.Spec : Prop :=
  ∀ n, (P6274466683850213104.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P10509567641878443047

`or(1, p?[A017497(n)])`
-/

namespace A141856.P10509567641878443047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141856.P10509567641878443047

namespace A141856

/-- `or(1, p?[A017497(n)])` -/
def P10509567641878443047.Spec : Prop :=
  ∀ n, P10509567641878443047.a n = A141856 (n + 1)

end A141856

/-! ## A141856.P12785404656421673682

`record[p?[A268488(n+1)+n]]`
-/

namespace A141856.P12785404656421673682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141856.P12785404656421673682

namespace A141856

/-- `record[p?[A268488(n+1)+n]]` -/
def P12785404656421673682.Spec : Prop :=
  ∀ n, P12785404656421673682.a n = A141856 (n + 1)

end A141856

/-! ## A141856.P6102852464985784175

`or(1, p?[A017365(n)+1+n])`
-/

namespace A141856.P6102852464985784175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141856.P6102852464985784175

namespace A141856

/-- `or(1, p?[A017365(n)+1+n])` -/
def P6102852464985784175.Spec : Prop :=
  ∀ n, P6102852464985784175.a n = A141856 (n + 1)

end A141856

/-! ## A141856.P1294781162906511055

`A000027(p?[A017461(n)+3])`
-/

namespace A141856.P1294781162906511055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141856.P1294781162906511055

namespace A141856

/-- `A000027(p?[A017461(n)+3])` -/
def P1294781162906511055.Spec : Prop :=
  ∀ n, P1294781162906511055.a n = A141856 (n + 1)

end A141856

/-! ## A141856.P13792542750737665277

`∩[A049591(n+1), A017497(n)]`
-/

namespace A141856.P13792542750737665277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P13792542750737665277

namespace A141856

/-- `∩[A049591(n+1), A017497(n)]` -/
def P13792542750737665277.Spec : Prop :=
  ∀ n, (P13792542750737665277.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P15787629871395842336

`∩[A056874(n+1), A017497(n)]`
-/

namespace A141856.P15787629871395842336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P15787629871395842336

namespace A141856

/-- `∩[A056874(n+1), A017497(n)]` -/
def P15787629871395842336.Spec : Prop :=
  ∀ n, (P15787629871395842336.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P4658787310555051025

`∩[A067774(n+1), A017497(n)]`
-/

namespace A141856.P4658787310555051025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P4658787310555051025

namespace A141856

/-- `∩[A067774(n+1), A017497(n)]` -/
def P4658787310555051025.Spec : Prop :=
  ∀ n, (P4658787310555051025.a n : ℤ) = A141856 (n + 1)

end A141856

/-! ## A141856.P16732385256135849351

`∩[A137978(n+1), A017497(n)]`
-/

namespace A141856.P16732385256135849351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P16732385256135849351

namespace A141856

/-- `∩[A137978(n+1), A017497(n)]` -/
def P16732385256135849351.Spec : Prop :=
  ∀ n, (P16732385256135849351.a n : ℤ) = A141856 (n + 1)

end A141856

/-!
# A141857: Primes congruent to 10 mod 11.

The programs for A141857, the canonical program `A141857.P5337679499641645178` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141857 has offset 1).

The definition of A141857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141857.P5337679499641645178

`∪[A142055(n+1), A142068(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141857

/-- `∪[A142055(n+1), A142068(n+1)]` -/
def P5337679499641645178.Spec : Prop :=
  ∀ n, (P5337679499641645178.a n : ℤ) = A141857 (n + 1)

theorem P5337679499641645178.correct : P5337679499641645178.Spec := by
  intro n
  simp only [A141857, Nat.add_sub_cancel]

end A141857

/-! ## A141857.P16554747866979680373

`∪[A142301(n+1), A142311(n+1)]`
-/

namespace A141857.P16554747866979680373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P16554747866979680373

namespace A141857

/-- `∪[A142301(n+1), A142311(n+1)]` -/
def P16554747866979680373.Spec : Prop :=
  ∀ n, (P16554747866979680373.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P16453756967613135646

`p?[11*n-1]`
-/

namespace A141857.P16453756967613135646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141857.P16453756967613135646

namespace A141857

/-- `p?[11*n-1]` -/
def P16453756967613135646.Spec : Prop :=
  ∀ n, P16453756967613135646.a n = A141857 (n + 1)

end A141857

/-! ## A141857.P14127345883875522802

`or(1, p?[a(n-1)+11])` with `a(0)=10`
-/

namespace A141857.P14127345883875522802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141857.P14127345883875522802

namespace A141857

/-- `or(1, p?[a(n-1)+11])` -/
def P14127345883875522802.Spec : Prop :=
  ∀ n, (P14127345883875522802.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P8898817968354522953

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=10`
-/

namespace A141857.P8898817968354522953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141857.P8898817968354522953

namespace A141857

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P8898817968354522953.Spec : Prop :=
  ∀ n, (P8898817968354522953.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P2930548401143747218

`∑{p}[p?[a(n-1)+11], #]` with `a(0)=10`
-/

namespace A141857.P2930548401143747218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141857.P2930548401143747218

namespace A141857

/-- `∑{p}[p?[a(n-1)+11], #]` -/
def P2930548401143747218.Spec : Prop :=
  ∀ n, (P2930548401143747218.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P13036727945265048090

`∏{p}[p?[a(n-1)+11], #]` with `a(0)=10`
-/

namespace A141857.P13036727945265048090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141857.P13036727945265048090

namespace A141857

/-- `∏{p}[p?[a(n-1)+11], #]` -/
def P13036727945265048090.Spec : Prop :=
  ∀ n, (P13036727945265048090.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P16826074160923713649

`∩[A191060(n+1), A352494(n+1)]`
-/

namespace A141857.P16826074160923713649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P16826074160923713649

namespace A141857

/-- `∩[A191060(n+1), A352494(n+1)]` -/
def P16826074160923713649.Spec : Prop :=
  ∀ n, (P16826074160923713649.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P4336809772383544989

`∩[A137977(n+1), A248339(n)+2]`
-/

namespace A141857.P4336809772383544989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P4336809772383544989

namespace A141857

/-- `∩[A137977(n+1), A248339(n)+2]` -/
def P4336809772383544989.Spec : Prop :=
  ∀ n, (P4336809772383544989.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P2442880569330420509

`∩[A191060(n+1), A248339(n)+2]`
-/

namespace A141857.P2442880569330420509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P2442880569330420509

namespace A141857

/-- `∩[A191060(n+1), A248339(n)+2]` -/
def P2442880569330420509.Spec : Prop :=
  ∀ n, (P2442880569330420509.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P4211031830717745255

`or(1, p?[A017509(n)])`
-/

namespace A141857.P4211031830717745255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141857.P4211031830717745255

namespace A141857

/-- `or(1, p?[A017509(n)])` -/
def P4211031830717745255.Spec : Prop :=
  ∀ n, P4211031830717745255.a n = A141857 (n + 1)

end A141857

/-! ## A141857.P4739858029969144693

`xor(1, p?[A017509(n+1)]+1)-2`
-/

namespace A141857.P4739858029969144693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) - 2

end

end A141857.P4739858029969144693

namespace A141857

/-- `xor(1, p?[A017509(n+1)]+1)-2` -/
def P4739858029969144693.Spec : Prop :=
  ∀ n, P4739858029969144693.a n = A141857 (n + 1)

end A141857

/-! ## A141857.P9940296355838721277

`∩[A034849(n+1), A017509(n)]`
-/

namespace A141857.P9940296355838721277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P9940296355838721277

namespace A141857

/-- `∩[A034849(n+1), A017509(n)]` -/
def P9940296355838721277.Spec : Prop :=
  ∀ n, (P9940296355838721277.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P4621935200081740267

`∩[A137977(n+1), A017509(n)]`
-/

namespace A141857.P4621935200081740267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P4621935200081740267

namespace A141857

/-- `∩[A137977(n+1), A017509(n)]` -/
def P4621935200081740267.Spec : Prop :=
  ∀ n, (P4621935200081740267.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P18067054573538153962

`∩[A140559(n+1), A017509(n)]`
-/

namespace A141857.P18067054573538153962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P18067054573538153962

namespace A141857

/-- `∩[A140559(n+1), A017509(n)]` -/
def P18067054573538153962.Spec : Prop :=
  ∀ n, (P18067054573538153962.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P199359351728064971

`∩[A140561(n+1), A017509(n)]`
-/

namespace A141857.P199359351728064971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P199359351728064971

namespace A141857

/-- `∩[A140561(n+1), A017509(n)]` -/
def P199359351728064971.Spec : Prop :=
  ∀ n, (P199359351728064971.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P10690751563041718626

`∩[A176897(n+1), A017509(n)]`
-/

namespace A141857.P10690751563041718626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P10690751563041718626

namespace A141857

/-- `∩[A176897(n+1), A017509(n)]` -/
def P10690751563041718626.Spec : Prop :=
  ∀ n, (P10690751563041718626.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P1553336591569572198

`∩[A191060(n+1), A017509(n)]`
-/

namespace A141857.P1553336591569572198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P1553336591569572198

namespace A141857

/-- `∩[A191060(n+1), A017509(n)]` -/
def P1553336591569572198.Spec : Prop :=
  ∀ n, (P1553336591569572198.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P12438958012332333170

`∩[A352494(n+1), A017509(n)]`
-/

namespace A141857.P12438958012332333170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P12438958012332333170

namespace A141857

/-- `∩[A352494(n+1), A017509(n)]` -/
def P12438958012332333170.Spec : Prop :=
  ∀ n, (P12438958012332333170.a n : ℤ) = A141857 (n + 1)

end A141857

/-! ## A141857.P8617641828738638239

`∩[A165671(n+1), A017509(n)]`
-/

namespace A141857.P8617641828738638239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P8617641828738638239

namespace A141857

/-- `∩[A165671(n+1), A017509(n)]` -/
def P8617641828738638239.Spec : Prop :=
  ∀ n, (P8617641828738638239.a n : ℤ) = A141857 (n + 1)

end A141857

/-!
# A141858: Primes congruent to 2 mod 13.

The programs for A141858, the canonical program `A141858.P15257199900606846374` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141858 has offset 1).

The definition of A141858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141858.P15257199900606846374

`p?[13*n+2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141858

/-- `p?[13*n+2]` -/
def P15257199900606846374.Spec : Prop :=
  ∀ n, (P15257199900606846374.a n : ℤ) = A141858 (n + 1)

theorem P15257199900606846374.correct : P15257199900606846374.Spec := by
  intro n
  simp only [A141858, Nat.add_sub_cancel]

end A141858

/-! ## A141858.P12525203601328846508

`∑{p}[p?[13*n-11], #]`
-/

namespace A141858.P12525203601328846508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141858.P12525203601328846508

namespace A141858

/-- `∑{p}[p?[13*n-11], #]` -/
def P12525203601328846508.Spec : Prop :=
  ∀ n, (P12525203601328846508.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P578341788629725068

`∏{p}[p?[13*n-11], #]`
-/

namespace A141858.P578341788629725068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141858.P578341788629725068

namespace A141858

/-- `∏{p}[p?[13*n-11], #]` -/
def P578341788629725068.Spec : Prop :=
  ∀ n, (P578341788629725068.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P11448517401767199694

`∑{d}[p?[13*n-50], #]-1`
-/

namespace A141858.P11448517401767199694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 50

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A141858.P11448517401767199694

namespace A141858

/-- `∑{d}[p?[13*n-50], #]-1` -/
def P11448517401767199694.Spec : Prop :=
  ∀ n, P11448517401767199694.a n = A141858 (n + 1)

end A141858

/-! ## A141858.P8936901247212268260

`∩[A214889(n+1), A215168(n+1)]`
-/

namespace A141858.P8936901247212268260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P8936901247212268260

namespace A141858

/-- `∩[A214889(n+1), A215168(n+1)]` -/
def P8936901247212268260.Spec : Prop :=
  ∀ n, (P8936901247212268260.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P712236113300828300

`∩[A214889(n+1), A215391(n+1)]`
-/

namespace A141858.P712236113300828300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P712236113300828300

namespace A141858

/-- `∩[A214889(n+1), A215391(n+1)]` -/
def P712236113300828300.Spec : Prop :=
  ∀ n, (P712236113300828300.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P10762868315286654006

`∩[A214889(n+1), A215207(n+1)]`
-/

namespace A141858.P10762868315286654006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P10762868315286654006

namespace A141858

/-- `∩[A214889(n+1), A215207(n+1)]` -/
def P10762868315286654006.Spec : Prop :=
  ∀ n, (P10762868315286654006.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P5687460147623270673

`∩[A215168(n+1), A215207(n+1)]`
-/

namespace A141858.P5687460147623270673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P5687460147623270673

namespace A141858

/-- `∩[A215168(n+1), A215207(n+1)]` -/
def P5687460147623270673.Spec : Prop :=
  ∀ n, (P5687460147623270673.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P12312296475694770895

`∩[A215168(n+1), A215280(n+1)]`
-/

namespace A141858.P12312296475694770895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P12312296475694770895

namespace A141858

/-- `∩[A215168(n+1), A215280(n+1)]` -/
def P12312296475694770895.Spec : Prop :=
  ∀ n, (P12312296475694770895.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P12504139089763276008

`∩[A215280(n+1), A215207(n+1)]`
-/

namespace A141858.P12504139089763276008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P12504139089763276008

namespace A141858

/-- `∩[A215280(n+1), A215207(n+1)]` -/
def P12504139089763276008.Spec : Prop :=
  ∀ n, (P12504139089763276008.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P11312789870499038059

`∩[A215359(n+1), A215168(n+1)]`
-/

namespace A141858.P11312789870499038059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P11312789870499038059

namespace A141858

/-- `∩[A215359(n+1), A215168(n+1)]` -/
def P11312789870499038059.Spec : Prop :=
  ∀ n, (P11312789870499038059.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P14649549638222537789

`∩[A214889(n+1), A215211(n+1)]`
-/

namespace A141858.P14649549638222537789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P14649549638222537789

namespace A141858

/-- `∩[A214889(n+1), A215211(n+1)]` -/
def P14649549638222537789.Spec : Prop :=
  ∀ n, (P14649549638222537789.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P15031704651884075488

`∩[A215135(n+1), A215168(n+1)]`
-/

namespace A141858.P15031704651884075488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P15031704651884075488

namespace A141858

/-- `∩[A215135(n+1), A215168(n+1)]` -/
def P15031704651884075488.Spec : Prop :=
  ∀ n, (P15031704651884075488.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P10634054123221194696

`∩[A215135(n+1), A215207(n+1)]`
-/

namespace A141858.P10634054123221194696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P10634054123221194696

namespace A141858

/-- `∩[A215135(n+1), A215207(n+1)]` -/
def P10634054123221194696.Spec : Prop :=
  ∀ n, (P10634054123221194696.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P3688167243239724594

`∩[A215135(n+1), A215211(n+1)]`
-/

namespace A141858.P3688167243239724594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P3688167243239724594

namespace A141858

/-- `∩[A215135(n+1), A215211(n+1)]` -/
def P3688167243239724594.Spec : Prop :=
  ∀ n, (P3688167243239724594.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P11296107863479500582

`∩[A215211(n+1), A215280(n+1)]`
-/

namespace A141858.P11296107863479500582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P11296107863479500582

namespace A141858

/-- `∩[A215211(n+1), A215280(n+1)]` -/
def P11296107863479500582.Spec : Prop :=
  ∀ n, (P11296107863479500582.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P509453482924647530

`∩[A215103(n+1), A215207(n+1)]`
-/

namespace A141858.P509453482924647530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P509453482924647530

namespace A141858

/-- `∩[A215103(n+1), A215207(n+1)]` -/
def P509453482924647530.Spec : Prop :=
  ∀ n, (P509453482924647530.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P12763704256304844618

`∩[A215387(n+1), A215168(n+1)]`
-/

namespace A141858.P12763704256304844618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P12763704256304844618

namespace A141858

/-- `∩[A215387(n+1), A215168(n+1)]` -/
def P12763704256304844618.Spec : Prop :=
  ∀ n, (P12763704256304844618.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P11762799390438989887

`∩[A214889(n+1), A215215(n+1)]`
-/

namespace A141858.P11762799390438989887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P11762799390438989887

namespace A141858

/-- `∩[A214889(n+1), A215215(n+1)]` -/
def P11762799390438989887.Spec : Prop :=
  ∀ n, (P11762799390438989887.a n : ℤ) = A141858 (n + 1)

end A141858

/-! ## A141858.P17577688354171279205

`∩[A215207(n+1), A215215(n+1)]`
-/

namespace A141858.P17577688354171279205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141858.P17577688354171279205

namespace A141858

/-- `∩[A215207(n+1), A215215(n+1)]` -/
def P17577688354171279205.Spec : Prop :=
  ∀ n, (P17577688354171279205.a n : ℤ) = A141858 (n + 1)

end A141858

/-!
# A141859: Primes congruent to 12 mod 13.

The programs for A141859, the canonical program `A141859.P3356521200775517715` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141859 has offset 1).

The definition of A141859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141859.P3356521200775517715

`∪[A142174(n+1), A142182(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141859

/-- `∪[A142174(n+1), A142182(n+1)]` -/
def P3356521200775517715.Spec : Prop :=
  ∀ n, (P3356521200775517715.a n : ℤ) = A141859 (n + 1)

theorem P3356521200775517715.correct : P3356521200775517715.Spec := by
  intro n
  simp only [A141859, Nat.add_sub_cancel]

end A141859

/-! ## A141859.P9533441927103531709

`∪[A142519(n+1), A142531(n+1)]`
-/

namespace A141859.P9533441927103531709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P9533441927103531709

namespace A141859

/-- `∪[A142519(n+1), A142531(n+1)]` -/
def P9533441927103531709.Spec : Prop :=
  ∀ n, (P9533441927103531709.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P10487090344834061108

`p?[13*n-1]`
-/

namespace A141859.P10487090344834061108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141859.P10487090344834061108

namespace A141859

/-- `p?[13*n-1]` -/
def P10487090344834061108.Spec : Prop :=
  ∀ n, P10487090344834061108.a n = A141859 (n + 1)

end A141859

/-! ## A141859.P755702563523886147

`∑{p}[p?[a(n-1)+13], #]` with `a(0)=12`
-/

namespace A141859.P755702563523886147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141859.P755702563523886147

namespace A141859

/-- `∑{p}[p?[a(n-1)+13], #]` -/
def P755702563523886147.Spec : Prop :=
  ∀ n, (P755702563523886147.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P5139344974954286336

`∏{p}[p?[12*(n+1)+n], #]`
-/

namespace A141859.P5139344974954286336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141859.P5139344974954286336

namespace A141859

/-- `∏{p}[p?[12*(n+1)+n], #]` -/
def P5139344974954286336.Spec : Prop :=
  ∀ n, (P5139344974954286336.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P5850302292834931169

`p?[12*(n+1)+n]^A007318(C(2, n))`
-/

namespace A141859.P5850302292834931169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n + 1) + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A141859.P5850302292834931169

namespace A141859

/-- `p?[12*(n+1)+n]^A007318(C(2, n))` -/
def P5850302292834931169.Spec : Prop :=
  ∀ n, P5850302292834931169.a n = (A141859 (n + 1) : ℚ)

end A141859

/-! ## A141859.P15987726425020936094

`∩[A038883(n+1), A190991(n)-2]`
-/

namespace A141859.P15987726425020936094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P15987726425020936094

namespace A141859

/-- `∩[A038883(n+1), A190991(n)-2]` -/
def P15987726425020936094.Spec : Prop :=
  ∀ n, (P15987726425020936094.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P9075859793787773084

`∩[A038883(n+2), A140716(n+2)+n]`
-/

namespace A141859.P9075859793787773084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P9075859793787773084

namespace A141859

/-- `∩[A038883(n+2), A140716(n+2)+n]` -/
def P9075859793787773084.Spec : Prop :=
  ∀ n, (P9075859793787773084.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P12805416069894711980

`∩[A140716(n+2)+n, A296937(n+2)]`
-/

namespace A141859.P12805416069894711980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (n + 2) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P12805416069894711980

namespace A141859

/-- `∩[A140716(n+2)+n, A296937(n+2)]` -/
def P12805416069894711980.Spec : Prop :=
  ∀ n, (P12805416069894711980.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P3162427596447255664

`∩[A049545(n+1), A269100(n)+1]`
-/

namespace A141859.P3162427596447255664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P3162427596447255664

namespace A141859

/-- `∩[A049545(n+1), A269100(n)+1]` -/
def P3162427596447255664.Spec : Prop :=
  ∀ n, (P3162427596447255664.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P13347033191591187199

`∩[A070957(n+1), A269100(n)+1]`
-/

namespace A141859.P13347033191591187199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P13347033191591187199

namespace A141859

/-- `∩[A070957(n+1), A269100(n)+1]` -/
def P13347033191591187199.Spec : Prop :=
  ∀ n, (P13347033191591187199.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P38473696245851745

`∩[A000040(n+1), A269100(n)+1]`
-/

namespace A141859.P38473696245851745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P38473696245851745

namespace A141859

/-- `∩[A000040(n+1), A269100(n)+1]` -/
def P38473696245851745.Spec : Prop :=
  ∀ n, (P38473696245851745.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P8586022318409548349

`∩[A004139(n+1), A269100(n)+1]`
-/

namespace A141859.P8586022318409548349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P8586022318409548349

namespace A141859

/-- `∩[A004139(n+1), A269100(n)+1]` -/
def P8586022318409548349.Spec : Prop :=
  ∀ n, (P8586022318409548349.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P7345509729076162231

`∩[A006005(n+1), A269100(n)+1]`
-/

namespace A141859.P7345509729076162231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P7345509729076162231

namespace A141859

/-- `∩[A006005(n+1), A269100(n)+1]` -/
def P7345509729076162231.Spec : Prop :=
  ∀ n, (P7345509729076162231.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P12329919013918221815

`∩[A008578(n+1), A269100(n)+1]`
-/

namespace A141859.P12329919013918221815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P12329919013918221815

namespace A141859

/-- `∩[A008578(n+1), A269100(n)+1]` -/
def P12329919013918221815.Spec : Prop :=
  ∀ n, (P12329919013918221815.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P3779480703635223034

`∩[A033946(n+1), A269100(n)+1]`
-/

namespace A141859.P3779480703635223034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P3779480703635223034

namespace A141859

/-- `∩[A033946(n+1), A269100(n)+1]` -/
def P3779480703635223034.Spec : Prop :=
  ∀ n, (P3779480703635223034.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P6689053142211816698

`∩[A045319(n+1), A269100(n)+1]`
-/

namespace A141859.P6689053142211816698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P6689053142211816698

namespace A141859

/-- `∩[A045319(n+1), A269100(n)+1]` -/
def P6689053142211816698.Spec : Prop :=
  ∀ n, (P6689053142211816698.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P12800702314098875265

`∩[A045344(n+1), A269100(n)+1]`
-/

namespace A141859.P12800702314098875265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P12800702314098875265

namespace A141859

/-- `∩[A045344(n+1), A269100(n)+1]` -/
def P12800702314098875265.Spec : Prop :=
  ∀ n, (P12800702314098875265.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P11519049446981343524

`∩[A067126(n+1), A269100(n)+1]`
-/

namespace A141859.P11519049446981343524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P11519049446981343524

namespace A141859

/-- `∩[A067126(n+1), A269100(n)+1]` -/
def P11519049446981343524.Spec : Prop :=
  ∀ n, (P11519049446981343524.a n : ℤ) = A141859 (n + 1)

end A141859

/-! ## A141859.P11007937888729481403

`A000040(lt[11, A000040(n+1)%13]+1)`
-/

namespace A141859.P11007937888729481403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A141859.P11007937888729481403

namespace A141859

/-- `A000040(lt[11, A000040(n+1)%13]+1)` -/
def P11007937888729481403.Spec : Prop :=
  ∀ n, P11007937888729481403.a n = A141859 (n + 1)

end A141859

/-!
# A141860: Primes congruent to 2 mod 15.

The programs for A141860, the canonical program `A141860.P14984370412444025917` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141860 has offset 1).

The definition of A141860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141860.P15891126831167382730

`∪[A023291(n+1), A039949(n+1)]`
-/

namespace A141860.P15891126831167382730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P15891126831167382730

namespace A141860

/-- `∪[A023291(n+1), A039949(n+1)]` -/
def P15891126831167382730.Spec : Prop :=
  ∀ n, (P15891126831167382730.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P250713010145480203

`∪[A142313(n+1), A039949(n+1)]`
-/

namespace A141860.P250713010145480203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P250713010145480203

namespace A141860

/-- `∪[A142313(n+1), A039949(n+1)]` -/
def P250713010145480203.Spec : Prop :=
  ∀ n, (P250713010145480203.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P14984370412444025917

`p?[3*5*n+2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141860

/-- `p?[3*5*n+2]` -/
def P14984370412444025917.Spec : Prop :=
  ∀ n, (P14984370412444025917.a n : ℤ) = A141860 (n + 1)

theorem P14984370412444025917.correct : P14984370412444025917.Spec := by
  intro n
  simp only [A141860, Nat.add_sub_cancel]

end A141860

/-! ## A141860.P15496015918118267172

`∩[A045380(n+1), A106859(n+1)]`
-/

namespace A141860.P15496015918118267172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P15496015918118267172

namespace A141860

/-- `∩[A045380(n+1), A106859(n+1)]` -/
def P15496015918118267172.Spec : Prop :=
  ∀ n, (P15496015918118267172.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P7780095370422182159

`∩[A045357(n+1), A343241(n+1)]`
-/

namespace A141860.P7780095370422182159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P7780095370422182159

namespace A141860

/-- `∩[A045357(n+1), A343241(n+1)]` -/
def P7780095370422182159.Spec : Prop :=
  ∀ n, (P7780095370422182159.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P7883037749870213300

`∩[A191018(n+1), A045357(n+1)]`
-/

namespace A141860.P7883037749870213300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P7883037749870213300

namespace A141860

/-- `∩[A191018(n+1), A045357(n+1)]` -/
def P7883037749870213300.Spec : Prop :=
  ∀ n, (P7883037749870213300.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P15241532026463162629

`∩[A045372(n+1), A106859(n+1)]`
-/

namespace A141860.P15241532026463162629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P15241532026463162629

namespace A141860

/-- `∩[A045372(n+1), A106859(n+1)]` -/
def P15241532026463162629.Spec : Prop :=
  ∀ n, (P15241532026463162629.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P15403097074437966813

`∩[A045372(n+1), A343241(n+1)]`
-/

namespace A141860.P15403097074437966813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P15403097074437966813

namespace A141860

/-- `∩[A045372(n+1), A343241(n+1)]` -/
def P15403097074437966813.Spec : Prop :=
  ∀ n, (P15403097074437966813.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P2426492623965703628

`∩[A045378(n+1), A106859(n+1)]`
-/

namespace A141860.P2426492623965703628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P2426492623965703628

namespace A141860

/-- `∩[A045378(n+1), A106859(n+1)]` -/
def P2426492623965703628.Spec : Prop :=
  ∀ n, (P2426492623965703628.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P14425169779992210422

`∩[A045349(n+1), A343241(n+1)]`
-/

namespace A141860.P14425169779992210422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P14425169779992210422

namespace A141860

/-- `∩[A045349(n+1), A343241(n+1)]` -/
def P14425169779992210422.Spec : Prop :=
  ∀ n, (P14425169779992210422.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P16153086926920766426

`∩[A003627(n+1), A045380(n+1)]`
-/

namespace A141860.P16153086926920766426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P16153086926920766426

namespace A141860

/-- `∩[A003627(n+1), A045380(n+1)]` -/
def P16153086926920766426.Spec : Prop :=
  ∀ n, (P16153086926920766426.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P2136899349053670809

`∩[A045309(n+1), A045380(n+1)]`
-/

namespace A141860.P2136899349053670809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P2136899349053670809

namespace A141860

/-- `∩[A045309(n+1), A045380(n+1)]` -/
def P2136899349053670809.Spec : Prop :=
  ∀ n, (P2136899349053670809.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P8322972897432584138

`∩[A003627(n+1), A063118(n+1)]`
-/

namespace A141860.P8322972897432584138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P8322972897432584138

namespace A141860

/-- `∩[A003627(n+1), A063118(n+1)]` -/
def P8322972897432584138.Spec : Prop :=
  ∀ n, (P8322972897432584138.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P903949594694728034

`∩[A003631(n+1), A063118(n+1)]`
-/

namespace A141860.P903949594694728034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P903949594694728034

namespace A141860

/-- `∩[A003631(n+1), A063118(n+1)]` -/
def P903949594694728034.Spec : Prop :=
  ∀ n, (P903949594694728034.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P11682862590179566082

`∩[A042993(n+1), A063118(n+1)]`
-/

namespace A141860.P11682862590179566082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P11682862590179566082

namespace A141860

/-- `∩[A042993(n+1), A063118(n+1)]` -/
def P11682862590179566082.Spec : Prop :=
  ∀ n, (P11682862590179566082.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P9261889146283421289

`∩[A045309(n+1), A063118(n+1)]`
-/

namespace A141860.P9261889146283421289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P9261889146283421289

namespace A141860

/-- `∩[A045309(n+1), A063118(n+1)]` -/
def P9261889146283421289.Spec : Prop :=
  ∀ n, (P9261889146283421289.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P1310742990648553703

`∩[A045356(n+1), A063118(n+1)]`
-/

namespace A141860.P1310742990648553703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P1310742990648553703

namespace A141860

/-- `∩[A045356(n+1), A063118(n+1)]` -/
def P1310742990648553703.Spec : Prop :=
  ∀ n, (P1310742990648553703.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P2612072747339858578

`∩[A045357(n+1), A063118(n+1)]`
-/

namespace A141860.P2612072747339858578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P2612072747339858578

namespace A141860

/-- `∩[A045357(n+1), A063118(n+1)]` -/
def P2612072747339858578.Spec : Prop :=
  ∀ n, (P2612072747339858578.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P2731499808342654538

`∩[A045378(n+1), A063118(n+1)]`
-/

namespace A141860.P2731499808342654538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P2731499808342654538

namespace A141860

/-- `∩[A045378(n+1), A063118(n+1)]` -/
def P2731499808342654538.Spec : Prop :=
  ∀ n, (P2731499808342654538.a n : ℤ) = A141860 (n + 1)

end A141860

/-! ## A141860.P6130409884962038379

`∩[A045380(n+1), A063118(n+1)]`
-/

namespace A141860.P6130409884962038379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141860.P6130409884962038379

namespace A141860

/-- `∩[A045380(n+1), A063118(n+1)]` -/
def P6130409884962038379.Spec : Prop :=
  ∀ n, (P6130409884962038379.a n : ℤ) = A141860 (n + 1)

end A141860

/-!
# A141861: Primes of the form (prime(2*k)-prime(k))/2*2, where prime(k) is the k-th prime.

The programs for A141861, there is no canonical definition to state claims against.
-/

/-! ## A141861.P6517622669326331335

`p?[A001281(A258934(n+2))]`
-/

namespace A141861.P6517622669326331335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A258934 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141861.P6517622669326331335

/-! ## A141861.P3662779895095262539

`p?[A174571(A072473(n+1))]`
-/

namespace A141861.P3662779895095262539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141861.P3662779895095262539

/-! ## A141861.P3201510573173845955

`p?[A188134(2*A258934(n+2))]`
-/

namespace A141861.P3201510573173845955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * A258934 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141861.P3201510573173845955

/-! ## A141861.P15978027338441178440

`p?[A188134(A072473(A000027(n+1)))]`
-/

namespace A141861.P15978027338441178440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A072473 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141861.P15978027338441178440

/-! ## A141861.P3761170349096070361

`A008472(p?[A188134(A072473(n+1))])`
-/

namespace A141861.P3761170349096070361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141861.P3761170349096070361

/-!
# A141862: Primes of the form k/(p(k-1)-p(k-2)), where p(k)=k-th prime.

The programs for A141862, there is no canonical definition to state claims against.
-/

/-! ## A141862.P13910518031682788960

`p?[A126988(A076368(n+1)+A000096(n))]`
-/

namespace A141862.P13910518031682788960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A076368 (n + 1) + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141862.P13910518031682788960

/-!
# A141863: Primes of the form k/(2*(p(k-1)-p(k-2))), where p(k)=k-th prime.

The programs for A141863, there is no canonical definition to state claims against.
-/

/-! ## A141863.P14100693054348432622

`p?[A006370(A141796(n+1))]`
-/

namespace A141863.P14100693054348432622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A141796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141863.P14100693054348432622

/-!
# A141865: Primes congruent to 13 mod 17.

The programs for A141865, the canonical program `A141865.P3984768350664210329` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141865 has offset 1).

The definition of A141865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141865.P3984768350664210329

`∪[A142484(n+1), A142505(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141865

/-- `∪[A142484(n+1), A142505(n+1)]` -/
def P3984768350664210329.Spec : Prop :=
  ∀ n, (P3984768350664210329.a n : ℤ) = A141865 (n + 1)

theorem P3984768350664210329.correct : P3984768350664210329.Spec := by
  intro n
  simp only [A141865, Nat.add_sub_cancel]

end A141865

/-! ## A141865.P9590744924956876260

`p?[17*n-4]`
-/

namespace A141865.P9590744924956876260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141865.P9590744924956876260

namespace A141865

/-- `p?[17*n-4]` -/
def P9590744924956876260.Spec : Prop :=
  ∀ n, P9590744924956876260.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P15784706338493639760

`∏{p}[p?[17*n+13], #]`
-/

namespace A141865.P15784706338493639760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141865.P15784706338493639760

namespace A141865

/-- `∏{p}[p?[17*n+13], #]` -/
def P15784706338493639760.Spec : Prop :=
  ∀ n, (P15784706338493639760.a n : ℤ) = A141865 (n + 1)

end A141865

/-! ## A141865.P7836285262056299184

`record[A006530(17*(n+1)-4)]`
-/

namespace A141865.P7836285262056299184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (17 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141865.P7836285262056299184

namespace A141865

/-- `record[A006530(17*(n+1)-4)]` -/
def P7836285262056299184.Spec : Prop :=
  ∀ n, P7836285262056299184.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P1231283307595041496

`record[A020639(17*(n+1)-4)]`
-/

namespace A141865.P1231283307595041496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (17 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141865.P1231283307595041496

namespace A141865

/-- `record[A020639(17*(n+1)-4)]` -/
def P1231283307595041496.Spec : Prop :=
  ∀ n, P1231283307595041496.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P11664171496816021948

`record[p?[A000265(A082285(n)+n)]]`
-/

namespace A141865.P11664171496816021948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A082285 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141865.P11664171496816021948

namespace A141865

/-- `record[p?[A000265(A082285(n)+n)]]` -/
def P11664171496816021948.Spec : Prop :=
  ∀ n, P11664171496816021948.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P15170837432125885261

`filter[A155095(2*(n+1)), A010051(#)]`
-/

namespace A141865.P15170837432125885261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141865.P15170837432125885261

namespace A141865

/-- `filter[A155095(2*(n+1)), A010051(#)]` -/
def P15170837432125885261.Spec : Prop :=
  ∀ n, P15170837432125885261.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P669610095640952803

`filter[A168672(2*(n+1)), A010051(#)]`
-/

namespace A141865.P669610095640952803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168672 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141865.P669610095640952803

namespace A141865

/-- `filter[A168672(2*(n+1)), A010051(#)]` -/
def P669610095640952803.Spec : Prop :=
  ∀ n, P669610095640952803.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P946453536288009120

`filter[A155095(2*(n+1)), A323152(#)]`
-/

namespace A141865.P946453536288009120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141865.P946453536288009120

namespace A141865

/-- `filter[A155095(2*(n+1)), A323152(#)]` -/
def P946453536288009120.Spec : Prop :=
  ∀ n, P946453536288009120.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P6285910125427775944

`filter[A155095(2*(n+1)), A323153(#)]`
-/

namespace A141865.P6285910125427775944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141865.P6285910125427775944

namespace A141865

/-- `filter[A155095(2*(n+1)), A323153(#)]` -/
def P6285910125427775944.Spec : Prop :=
  ∀ n, P6285910125427775944.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P8928379940160894985

`filter[A168672(2*(n+1)), A323152(#)]`
-/

namespace A141865.P8928379940160894985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168672 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141865.P8928379940160894985

namespace A141865

/-- `filter[A168672(2*(n+1)), A323152(#)]` -/
def P8928379940160894985.Spec : Prop :=
  ∀ n, P8928379940160894985.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P1268474631659273059

`filter[A168672(2*(n+1)), A323153(#)]`
-/

namespace A141865.P1268474631659273059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168672 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141865.P1268474631659273059

namespace A141865

/-- `filter[A168672(2*(n+1)), A323153(#)]` -/
def P1268474631659273059.Spec : Prop :=
  ∀ n, P1268474631659273059.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P10186864750030536611

`filter[A155095(2*(n+1)), A353817(#)]`
-/

namespace A141865.P10186864750030536611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A141865.P10186864750030536611

namespace A141865

/-- `filter[A155095(2*(n+1)), A353817(#)]` -/
def P10186864750030536611.Spec : Prop :=
  ∀ n, P10186864750030536611.a n = A141865 (n + 1)

end A141865

/-! ## A141865.P17745237249067987239

`∩[A004770(2*(n+1))+n, A000040(n+2)]`
-/

namespace A141865.P17745237249067987239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141865.P17745237249067987239

namespace A141865

/-- `∩[A004770(2*(n+1))+n, A000040(n+2)]` -/
def P17745237249067987239.Spec : Prop :=
  ∀ n, (P17745237249067987239.a n : ℤ) = A141865 (n + 1)

end A141865

/-! ## A141865.P12832298886265050450

`∩[A143988(2*(n+1))-n, A000040(n+2)]`
-/

namespace A141865.P12832298886265050450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141865.P12832298886265050450

namespace A141865

/-- `∩[A143988(2*(n+1))-n, A000040(n+2)]` -/
def P12832298886265050450.Spec : Prop :=
  ∀ n, (P12832298886265050450.a n : ℤ) = A141865 (n + 1)

end A141865

/-! ## A141865.P6771492072273093002

`∩[A143988(2*(n+1))-n, A045344(n+2)]`
-/

namespace A141865.P6771492072273093002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141865.P6771492072273093002

namespace A141865

/-- `∩[A143988(2*(n+1))-n, A045344(n+2)]` -/
def P6771492072273093002.Spec : Prop :=
  ∀ n, (P6771492072273093002.a n : ℤ) = A141865 (n + 1)

end A141865

/-! ## A141865.P18247382705327917978

`∩[A093515(2*(n+1)), A143988(2*(n+1))-n]`
-/

namespace A141865.P18247382705327917978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1)) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141865.P18247382705327917978

namespace A141865

/-- `∩[A093515(2*(n+1)), A143988(2*(n+1))-n]` -/
def P18247382705327917978.Spec : Prop :=
  ∀ n, (P18247382705327917978.a n : ℤ) = A141865 (n + 1)

end A141865

/-!
# A141866: Primes of the form 2*3*5*7*k+89, k >= 0.

The programs for A141866, the canonical program `A141866.P14888924645696795511` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141866 has offset 1).

The definition of A141866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141866.P12172807499187523671

`∩[A140772(n+1), A142089(n+1)]`
-/

namespace A141866.P12172807499187523671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P12172807499187523671

namespace A141866

/-- `∩[A140772(n+1), A142089(n+1)]` -/
def P12172807499187523671.Spec : Prop :=
  ∀ n, (P12172807499187523671.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P14888924645696795511

`∩[A140772(n+1), A141890(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141866

/-- `∩[A140772(n+1), A141890(n+1)]` -/
def P14888924645696795511.Spec : Prop :=
  ∀ n, (P14888924645696795511.a n : ℤ) = A141866 (n + 1)

theorem P14888924645696795511.correct : P14888924645696795511.Spec := by
  intro n
  simp only [A141866, Nat.add_sub_cancel]

end A141866

/-! ## A141866.P8779706837103075889

`∩[A141890(n+1), A142089(n+1)]`
-/

namespace A141866.P8779706837103075889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P8779706837103075889

namespace A141866

/-- `∩[A141890(n+1), A142089(n+1)]` -/
def P8779706837103075889.Spec : Prop :=
  ∀ n, (P8779706837103075889.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P7725796037835775928

`∩[A132236(n+1), A140772(n+1)]`
-/

namespace A141866.P7725796037835775928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P7725796037835775928

namespace A141866

/-- `∩[A132236(n+1), A140772(n+1)]` -/
def P7725796037835775928.Spec : Prop :=
  ∀ n, (P7725796037835775928.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P13602409591213889180

`∩[A132236(n+1), A141890(n+1)]`
-/

namespace A141866.P13602409591213889180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P13602409591213889180

namespace A141866

/-- `∩[A132236(n+1), A141890(n+1)]` -/
def P13602409591213889180.Spec : Prop :=
  ∀ n, (P13602409591213889180.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P3887368741135561591

`∩[A132236(n+1), A142089(n+1)]`
-/

namespace A141866.P3887368741135561591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P3887368741135561591

namespace A141866

/-- `∩[A132236(n+1), A142089(n+1)]` -/
def P3887368741135561591.Spec : Prop :=
  ∀ n, (P3887368741135561591.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P9050900782658765593

`p?[5*21*n-16]`
-/

namespace A141866.P9050900782658765593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (21 * n) : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141866.P9050900782658765593

namespace A141866

/-- `p?[5*21*n-16]` -/
def P9050900782658765593.Spec : Prop :=
  ∀ n, P9050900782658765593.a n = A141866 (n + 1)

end A141866

/-! ## A141866.P1528378738253621437

`∩[A045447(n+1), A132236(n+1)]`
-/

namespace A141866.P1528378738253621437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P1528378738253621437

namespace A141866

/-- `∩[A045447(n+1), A132236(n+1)]` -/
def P1528378738253621437.Spec : Prop :=
  ∀ n, (P1528378738253621437.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P6490469974884180435

`∩[A045458(n+1), A132236(n+1)]`
-/

namespace A141866.P6490469974884180435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P6490469974884180435

namespace A141866

/-- `∩[A045458(n+1), A132236(n+1)]` -/
def P6490469974884180435.Spec : Prop :=
  ∀ n, (P6490469974884180435.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P14996186969916454328

`∩[A045447(n+1), A140772(n+1)]`
-/

namespace A141866.P14996186969916454328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P14996186969916454328

namespace A141866

/-- `∩[A045447(n+1), A140772(n+1)]` -/
def P14996186969916454328.Spec : Prop :=
  ∀ n, (P14996186969916454328.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P16392907732025805493

`∩[A045458(n+1), A140772(n+1)]`
-/

namespace A141866.P16392907732025805493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P16392907732025805493

namespace A141866

/-- `∩[A045458(n+1), A140772(n+1)]` -/
def P16392907732025805493.Spec : Prop :=
  ∀ n, (P16392907732025805493.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P733950802338679016

`∩[A030433(n+1), A140772(n+1)]`
-/

namespace A141866.P733950802338679016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P733950802338679016

namespace A141866

/-- `∩[A030433(n+1), A140772(n+1)]` -/
def P733950802338679016.Spec : Prop :=
  ∀ n, (P733950802338679016.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P10537606224502192349

`∩[A030433(n+1), A141890(n+1)]`
-/

namespace A141866.P10537606224502192349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P10537606224502192349

namespace A141866

/-- `∩[A030433(n+1), A141890(n+1)]` -/
def P10537606224502192349.Spec : Prop :=
  ∀ n, (P10537606224502192349.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P12057791626084613511

`∩[A045457(n+1), A140772(n+1)]`
-/

namespace A141866.P12057791626084613511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P12057791626084613511

namespace A141866

/-- `∩[A045457(n+1), A140772(n+1)]` -/
def P12057791626084613511.Spec : Prop :=
  ∀ n, (P12057791626084613511.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P4450378198061062384

`∩[A132240(n+1), A141890(n+1)]`
-/

namespace A141866.P4450378198061062384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P4450378198061062384

namespace A141866

/-- `∩[A132240(n+1), A141890(n+1)]` -/
def P4450378198061062384.Spec : Prop :=
  ∀ n, (P4450378198061062384.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P14121244466467591186

`∩[A132240(n+1), A142089(n+1)]`
-/

namespace A141866.P14121244466467591186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P14121244466467591186

namespace A141866

/-- `∩[A132240(n+1), A142089(n+1)]` -/
def P14121244466467591186.Spec : Prop :=
  ∀ n, (P14121244466467591186.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P17060251185300260930

`∩[A140772(n+1), A141160(n+1)]`
-/

namespace A141866.P17060251185300260930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P17060251185300260930

namespace A141866

/-- `∩[A140772(n+1), A141160(n+1)]` -/
def P17060251185300260930.Spec : Prop :=
  ∀ n, (P17060251185300260930.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P18060810803031878936

`∩[A140772(n+1), A141785(n+1)]`
-/

namespace A141866.P18060810803031878936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P18060810803031878936

namespace A141866

/-- `∩[A140772(n+1), A141785(n+1)]` -/
def P18060810803031878936.Spec : Prop :=
  ∀ n, (P18060810803031878936.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P13732270311370569683

`∩[A141160(n+1), A142089(n+1)]`
-/

namespace A141866.P13732270311370569683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P13732270311370569683

namespace A141866

/-- `∩[A141160(n+1), A142089(n+1)]` -/
def P13732270311370569683.Spec : Prop :=
  ∀ n, (P13732270311370569683.a n : ℤ) = A141866 (n + 1)

end A141866

/-! ## A141866.P1160476973104563062

`∩[A141785(n+1), A142089(n+1)]`
-/

namespace A141866.P1160476973104563062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P1160476973104563062

namespace A141866

/-- `∩[A141785(n+1), A142089(n+1)]` -/
def P1160476973104563062.Spec : Prop :=
  ∀ n, (P1160476973104563062.a n : ℤ) = A141866 (n + 1)

end A141866

/-!
# A141867: Primes of the form (k/2+p(k-1)-p(k))/2, where p(k)=k-th prime.

The programs for A141867, the canonical program `A141867.P11823466263771838989` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141867 has offset 1).

The definition of A141867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141867.P11823466263771838989

`p?[A001057(n)+A001057(A001223(2*n+1))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141867

/-- `p?[A001057(n)+A001057(A001223(2*n+1))]` -/
def P11823466263771838989.Spec : Prop :=
  ∀ n, P11823466263771838989.a n = A141867 (n + 1)

theorem P11823466263771838989.correct : P11823466263771838989.Spec := by
  intro n
  simp only [A141867, Nat.add_sub_cancel]

end A141867

/-! ## A141867.P17127523451864770589

`p?[n-A100820(4*n+3)]`
-/

namespace A141867.P17127523451864770589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A100820 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141867.P17127523451864770589

namespace A141867

/-- `p?[n-A100820(4*n+3)]` -/
def P17127523451864770589.Spec : Prop :=
  ∀ n, P17127523451864770589.a n = A141867 (n + 1)

end A141867

/-! ## A141867.P12515895300545360477

`p?[n+1-A028334(4*n+3)]`
-/

namespace A141867.P12515895300545360477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A028334 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141867.P12515895300545360477

namespace A141867

/-- `p?[n+1-A028334(4*n+3)]` -/
def P12515895300545360477.Spec : Prop :=
  ∀ n, P12515895300545360477.a n = A141867 (n + 1)

end A141867

/-! ## A141867.P7893344651093408624

`p?[A130507(n)-A004526(A001223(n+1))]`
-/

namespace A141867.P7893344651093408624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 n - A004526 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141867.P7893344651093408624

namespace A141867

/-- `p?[A130507(n)-A004526(A001223(n+1))]` -/
def P7893344651093408624.Spec : Prop :=
  ∀ n, P7893344651093408624.a n = A141867 (n + 1)

end A141867

/-! ## A141867.P13126469531478095363

`xor(A000040(n+1), A171919(A027376(n)))`
-/

namespace A141867.P13126469531478095363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A171919 (A027376 n).toNat)

end

end A141867.P13126469531478095363

namespace A141867

/-- `xor(A000040(n+1), A171919(A027376(n)))` -/
def P13126469531478095363.Spec : Prop :=
  ∀ n, P13126469531478095363.a n = A141867 (n + 1)

end A141867

/-!
# A141868: Primes congruent to 1 mod 19.

The programs for A141868, the canonical program `A141868.P7330579957627233495` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141868 has offset 1).

The definition of A141868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141868.P7330579957627233495

`∪[A142665(n+1), A142677(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141868

/-- `∪[A142665(n+1), A142677(n+1)]` -/
def P7330579957627233495.Spec : Prop :=
  ∀ n, (P7330579957627233495.a n : ℤ) = A141868 (n + 1)

theorem P7330579957627233495.correct : P7330579957627233495.Spec := by
  intro n
  simp only [A141868, Nat.add_sub_cancel]

end A141868

/-! ## A141868.P15602350587689786647

`∩[A215166(n+1), A215393(n+1)]`
-/

namespace A141868.P15602350587689786647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P15602350587689786647

namespace A141868

/-- `∩[A215166(n+1), A215393(n+1)]` -/
def P15602350587689786647.Spec : Prop :=
  ∀ n, (P15602350587689786647.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P15065268347264923425

`p?[19*n+1]`
-/

namespace A141868.P15065268347264923425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141868.P15065268347264923425

namespace A141868

/-- `p?[19*n+1]` -/
def P15065268347264923425.Spec : Prop :=
  ∀ n, (P15065268347264923425.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P558158988255654365

`or(1, p?[a(n-1)+19])` with `a(0)=1`
-/

namespace A141868.P558158988255654365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141868.P558158988255654365

namespace A141868

/-- `or(1, p?[a(n-1)+19])` -/
def P558158988255654365.Spec : Prop :=
  ∀ n, (P558158988255654365.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P15325027917362600165

`∏{d}[p?[a(n-1)+19], #]` with `a(0)=1`
-/

namespace A141868.P15325027917362600165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141868.P15325027917362600165

namespace A141868

/-- `∏{d}[p?[a(n-1)+19], #]` -/
def P15325027917362600165.Spec : Prop :=
  ∀ n, (P15325027917362600165.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P3347597467673486128

`∑{p}[p?[a(n-1)+19], #]` with `a(0)=1`
-/

namespace A141868.P3347597467673486128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141868.P3347597467673486128

namespace A141868

/-- `∑{p}[p?[a(n-1)+19], #]` -/
def P3347597467673486128.Spec : Prop :=
  ∀ n, (P3347597467673486128.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P15142269950015797953

`∏{p}[p?[a(n-1)+19], #]` with `a(0)=1`
-/

namespace A141868.P15142269950015797953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141868.P15142269950015797953

namespace A141868

/-- `∏{p}[p?[a(n-1)+19], #]` -/
def P15142269950015797953.Spec : Prop :=
  ∀ n, (P15142269950015797953.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P17820156706410913558

`∩[A215166(n+1), A215274(n+1)]`
-/

namespace A141868.P17820156706410913558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P17820156706410913558

namespace A141868

/-- `∩[A215166(n+1), A215274(n+1)]` -/
def P17820156706410913558.Spec : Prop :=
  ∀ n, (P17820156706410913558.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P14864348831058246751

`∩[A215154(n+1), A215166(n+1)]`
-/

namespace A141868.P14864348831058246751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P14864348831058246751

namespace A141868

/-- `∩[A215154(n+1), A215166(n+1)]` -/
def P14864348831058246751.Spec : Prop :=
  ∀ n, (P14864348831058246751.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P9596872240558845586

`∩[A215166(n+1), A215381(n+1)]`
-/

namespace A141868.P9596872240558845586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P9596872240558845586

namespace A141868

/-- `∩[A215166(n+1), A215381(n+1)]` -/
def P9596872240558845586.Spec : Prop :=
  ∀ n, (P9596872240558845586.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P12736678641342717163

`∩[A215166(n+1), A215385(n+1)]`
-/

namespace A141868.P12736678641342717163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P12736678641342717163

namespace A141868

/-- `∩[A215166(n+1), A215385(n+1)]` -/
def P12736678641342717163.Spec : Prop :=
  ∀ n, (P12736678641342717163.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P4930262550381400825

`∩[A215166(n+1), A215309(n+1)]`
-/

namespace A141868.P4930262550381400825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P4930262550381400825

namespace A141868

/-- `∩[A215166(n+1), A215309(n+1)]` -/
def P4930262550381400825.Spec : Prop :=
  ∀ n, (P4930262550381400825.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P1896733210491970349

`∩[A215166(n+1), A215321(n+1)]`
-/

namespace A141868.P1896733210491970349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P1896733210491970349

namespace A141868

/-- `∩[A215166(n+1), A215321(n+1)]` -/
def P1896733210491970349.Spec : Prop :=
  ∀ n, (P1896733210491970349.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P9250168771289983626

`∩[A191019(n+1), A215154(n+1)]`
-/

namespace A141868.P9250168771289983626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P9250168771289983626

namespace A141868

/-- `∩[A191019(n+1), A215154(n+1)]` -/
def P9250168771289983626.Spec : Prop :=
  ∀ n, (P9250168771289983626.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P6079027778397122068

`∩[A191019(n+1), A215381(n+1)]`
-/

namespace A141868.P6079027778397122068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P6079027778397122068

namespace A141868

/-- `∩[A191019(n+1), A215381(n+1)]` -/
def P6079027778397122068.Spec : Prop :=
  ∀ n, (P6079027778397122068.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P4080507188267689293

`∩[A191019(n+1), A215393(n+1)]`
-/

namespace A141868.P4080507188267689293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P4080507188267689293

namespace A141868

/-- `∩[A191019(n+1), A215393(n+1)]` -/
def P4080507188267689293.Spec : Prop :=
  ∀ n, (P4080507188267689293.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P2224383065723620168

`∩[A106863(n+1), A215154(n+1)]`
-/

namespace A141868.P2224383065723620168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P2224383065723620168

namespace A141868

/-- `∩[A106863(n+1), A215154(n+1)]` -/
def P2224383065723620168.Spec : Prop :=
  ∀ n, (P2224383065723620168.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P15979438980697094074

`∩[A106863(n+1), A215393(n+1)]`
-/

namespace A141868.P15979438980697094074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P15979438980697094074

namespace A141868

/-- `∩[A106863(n+1), A215393(n+1)]` -/
def P15979438980697094074.Spec : Prop :=
  ∀ n, (P15979438980697094074.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P11797219710983767124

`∩[A215154(n+1), A341787(n+1)]`
-/

namespace A141868.P11797219710983767124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P11797219710983767124

namespace A141868

/-- `∩[A215154(n+1), A341787(n+1)]` -/
def P11797219710983767124.Spec : Prop :=
  ∀ n, (P11797219710983767124.a n : ℤ) = A141868 (n + 1)

end A141868

/-! ## A141868.P5050520625071544730

`∩[A215393(n+1), A341787(n+1)]`
-/

namespace A141868.P5050520625071544730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P5050520625071544730

namespace A141868

/-- `∩[A215393(n+1), A341787(n+1)]` -/
def P5050520625071544730.Spec : Prop :=
  ∀ n, (P5050520625071544730.a n : ℤ) = A141868 (n + 1)

end A141868

/-!
# A141869: Primes congruent to 2 mod 19.

The programs for A141869, the canonical program `A141869.P7786215418859443788` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141869 has offset 1).

The definition of A141869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141869.P6879471365250701989

`∩[A215101(n+1), A215209(n+1)]`
-/

namespace A141869.P6879471365250701989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P6879471365250701989

namespace A141869

/-- `∩[A215101(n+1), A215209(n+1)]` -/
def P6879471365250701989.Spec : Prop :=
  ∀ n, (P6879471365250701989.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P3438657987008872625

`∩[A215101(n+1), A215393(n+1)]`
-/

namespace A141869.P3438657987008872625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P3438657987008872625

namespace A141869

/-- `∩[A215101(n+1), A215393(n+1)]` -/
def P3438657987008872625.Spec : Prop :=
  ∀ n, (P3438657987008872625.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P1789608537819101995

`∩[A215101(n+1), A215170(n+1)]`
-/

namespace A141869.P1789608537819101995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P1789608537819101995

namespace A141869

/-- `∩[A215101(n+1), A215170(n+1)]` -/
def P1789608537819101995.Spec : Prop :=
  ∀ n, (P1789608537819101995.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P7958683871796106147

`∩[A215170(n+1), A215209(n+1)]`
-/

namespace A141869.P7958683871796106147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P7958683871796106147

namespace A141869

/-- `∩[A215170(n+1), A215209(n+1)]` -/
def P7958683871796106147.Spec : Prop :=
  ∀ n, (P7958683871796106147.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P7786215418859443788

`p?[19*n+2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141869

/-- `p?[19*n+2]` -/
def P7786215418859443788.Spec : Prop :=
  ∀ n, (P7786215418859443788.a n : ℤ) = A141869 (n + 1)

theorem P7786215418859443788.correct : P7786215418859443788.Spec := by
  intro n
  simp only [A141869, Nat.add_sub_cancel]

end A141869

/-! ## A141869.P11184455795207499148

`p?[a(n-1)+19]%A144449(n)` with `a(0)=2`
-/

namespace A141869.P11184455795207499148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A144449 n)

end

end A141869.P11184455795207499148

namespace A141869

/-- `p?[a(n-1)+19]%A144449(n)` -/
def P11184455795207499148.Spec : Prop :=
  ∀ n, P11184455795207499148.a n = A141869 (n + 1)

end A141869

/-! ## A141869.P7054397800097829594

`or(p?[a(n-1)+19], A000038(n))` with `a(0)=2`
-/

namespace A141869.P7054397800097829594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A000038 n)

end

end A141869.P7054397800097829594

namespace A141869

/-- `or(p?[a(n-1)+19], A000038(n))` -/
def P7054397800097829594.Spec : Prop :=
  ∀ n, P7054397800097829594.a n = A141869 (n + 1)

end A141869

/-! ## A141869.P12840161470410542103

`∩[A215101(n+1), A215274(n+1)]`
-/

namespace A141869.P12840161470410542103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P12840161470410542103

namespace A141869

/-- `∩[A215101(n+1), A215274(n+1)]` -/
def P12840161470410542103.Spec : Prop :=
  ∀ n, (P12840161470410542103.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P3479651328827417831

`∩[A215209(n+1), A215274(n+1)]`
-/

namespace A141869.P3479651328827417831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P3479651328827417831

namespace A141869

/-- `∩[A215209(n+1), A215274(n+1)]` -/
def P3479651328827417831.Spec : Prop :=
  ∀ n, (P3479651328827417831.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P14763870107797023168

`∩[A215154(n+1), A215170(n+1)]`
-/

namespace A141869.P14763870107797023168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P14763870107797023168

namespace A141869

/-- `∩[A215154(n+1), A215170(n+1)]` -/
def P14763870107797023168.Spec : Prop :=
  ∀ n, (P14763870107797023168.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P16757194772474873896

`∩[A215154(n+1), A215209(n+1)]`
-/

namespace A141869.P16757194772474873896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P16757194772474873896

namespace A141869

/-- `∩[A215154(n+1), A215209(n+1)]` -/
def P16757194772474873896.Spec : Prop :=
  ∀ n, (P16757194772474873896.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P8788695367142070062

`∩[A215101(n+1), A215213(n+1)]`
-/

namespace A141869.P8788695367142070062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P8788695367142070062

namespace A141869

/-- `∩[A215101(n+1), A215213(n+1)]` -/
def P8788695367142070062.Spec : Prop :=
  ∀ n, (P8788695367142070062.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P10957084480176475556

`∩[A215154(n+1), A215213(n+1)]`
-/

namespace A141869.P10957084480176475556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P10957084480176475556

namespace A141869

/-- `∩[A215154(n+1), A215213(n+1)]` -/
def P10957084480176475556.Spec : Prop :=
  ∀ n, (P10957084480176475556.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P13342061294674126248

`∩[A215105(n+1), A215209(n+1)]`
-/

namespace A141869.P13342061294674126248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P13342061294674126248

namespace A141869

/-- `∩[A215105(n+1), A215209(n+1)]` -/
def P13342061294674126248.Spec : Prop :=
  ∀ n, (P13342061294674126248.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P6335332273746065627

`∩[A215105(n+1), A215393(n+1)]`
-/

namespace A141869.P6335332273746065627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P6335332273746065627

namespace A141869

/-- `∩[A215105(n+1), A215393(n+1)]` -/
def P6335332273746065627.Spec : Prop :=
  ∀ n, (P6335332273746065627.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P12996303281338902215

`∩[A215170(n+1), A215282(n+1)]`
-/

namespace A141869.P12996303281338902215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P12996303281338902215

namespace A141869

/-- `∩[A215170(n+1), A215282(n+1)]` -/
def P12996303281338902215.Spec : Prop :=
  ∀ n, (P12996303281338902215.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P12839209688326471613

`∩[A215209(n+1), A215282(n+1)]`
-/

namespace A141869.P12839209688326471613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P12839209688326471613

namespace A141869

/-- `∩[A215209(n+1), A215282(n+1)]` -/
def P12839209688326471613.Spec : Prop :=
  ∀ n, (P12839209688326471613.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P17555758541214783095

`∩[A215213(n+1), A215282(n+1)]`
-/

namespace A141869.P17555758541214783095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P17555758541214783095

namespace A141869

/-- `∩[A215213(n+1), A215282(n+1)]` -/
def P17555758541214783095.Spec : Prop :=
  ∀ n, (P17555758541214783095.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P9764156039561660097

`∩[A215170(n+1), A215361(n+1)]`
-/

namespace A141869.P9764156039561660097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P9764156039561660097

namespace A141869

/-- `∩[A215170(n+1), A215361(n+1)]` -/
def P9764156039561660097.Spec : Prop :=
  ∀ n, (P9764156039561660097.a n : ℤ) = A141869 (n + 1)

end A141869

/-! ## A141869.P10758904720754753581

`∩[A215274(n+1), A215282(n+1)]`
-/

namespace A141869.P10758904720754753581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141869.P10758904720754753581

namespace A141869

/-- `∩[A215274(n+1), A215282(n+1)]` -/
def P10758904720754753581.Spec : Prop :=
  ∀ n, (P10758904720754753581.a n : ℤ) = A141869 (n + 1)

end A141869

/-!
# A141870: Primes congruent to 4 mod 19.

The programs for A141870, the canonical program `A141870.P17902096079942132044` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141870 has offset 1).

The definition of A141870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141870.P17902096079942132044

`∪[A142667(n+1), A142679(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141870

/-- `∪[A142667(n+1), A142679(n+1)]` -/
def P17902096079942132044.Spec : Prop :=
  ∀ n, (P17902096079942132044.a n : ℤ) = A141870 (n + 1)

theorem P17902096079942132044.correct : P17902096079942132044.Spec := by
  intro n
  simp only [A141870, Nat.add_sub_cancel]

end A141870

/-! ## A141870.P3517004135792354012

`p?[19*n+4]`
-/

namespace A141870.P3517004135792354012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141870.P3517004135792354012

namespace A141870

/-- `p?[19*n+4]` -/
def P3517004135792354012.Spec : Prop :=
  ∀ n, (P3517004135792354012.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P4158516937540968801

`∩[A215166(n+1), A215282(n+1)]`
-/

namespace A141870.P4158516937540968801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P4158516937540968801

namespace A141870

/-- `∩[A215166(n+1), A215282(n+1)]` -/
def P4158516937540968801.Spec : Prop :=
  ∀ n, (P4158516937540968801.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P13892470251404498276

`∩[A215166(n+1), A215361(n+1)]`
-/

namespace A141870.P13892470251404498276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P13892470251404498276

namespace A141870

/-- `∩[A215166(n+1), A215361(n+1)]` -/
def P13892470251404498276.Spec : Prop :=
  ∀ n, (P13892470251404498276.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P3337670943089549020

`∩[A215166(n+1), A215278(n+1)]`
-/

namespace A141870.P3337670943089549020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P3337670943089549020

namespace A141870

/-- `∩[A215166(n+1), A215278(n+1)]` -/
def P3337670943089549020.Spec : Prop :=
  ∀ n, (P3337670943089549020.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P6649480855235297667

`∩[A215166(n+1), A215353(n+1)]`
-/

namespace A141870.P6649480855235297667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P6649480855235297667

namespace A141870

/-- `∩[A215166(n+1), A215353(n+1)]` -/
def P6649480855235297667.Spec : Prop :=
  ∀ n, (P6649480855235297667.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P6129091804155705974

`∩[A215166(n+1), A215317(n+1)]`
-/

namespace A141870.P6129091804155705974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P6129091804155705974

namespace A141870

/-- `∩[A215166(n+1), A215317(n+1)]` -/
def P6129091804155705974.Spec : Prop :=
  ∀ n, (P6129091804155705974.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P2893598805977676935

`∩[A215166(n+1), A215357(n+1)]`
-/

namespace A141870.P2893598805977676935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P2893598805977676935

namespace A141870

/-- `∩[A215166(n+1), A215357(n+1)]` -/
def P2893598805977676935.Spec : Prop :=
  ∀ n, (P2893598805977676935.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P5321566297887534255

`∩[A106863(n+1), A215282(n+1)]`
-/

namespace A141870.P5321566297887534255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P5321566297887534255

namespace A141870

/-- `∩[A106863(n+1), A215282(n+1)]` -/
def P5321566297887534255.Spec : Prop :=
  ∀ n, (P5321566297887534255.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P15114100036109994085

`∩[A191019(n+1), A215282(n+1)]`
-/

namespace A141870.P15114100036109994085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P15114100036109994085

namespace A141870

/-- `∩[A191019(n+1), A215282(n+1)]` -/
def P15114100036109994085.Spec : Prop :=
  ∀ n, (P15114100036109994085.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P6084854069038188317

`∩[A191019(n+1), A215361(n+1)]`
-/

namespace A141870.P6084854069038188317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P6084854069038188317

namespace A141870

/-- `∩[A191019(n+1), A215361(n+1)]` -/
def P6084854069038188317.Spec : Prop :=
  ∀ n, (P6084854069038188317.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P6478228030955933309

`∩[A215282(n+1), A341787(n+1)]`
-/

namespace A141870.P6478228030955933309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P6478228030955933309

namespace A141870

/-- `∩[A215282(n+1), A341787(n+1)]` -/
def P6478228030955933309.Spec : Prop :=
  ∀ n, (P6478228030955933309.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P9337990440304204300

`∩[A242215(n+1)+n, A070957(n+2)]`
-/

namespace A141870.P9337990440304204300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P9337990440304204300

namespace A141870

/-- `∩[A242215(n+1)+n, A070957(n+2)]` -/
def P9337990440304204300.Spec : Prop :=
  ∀ n, (P9337990440304204300.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P16404601431946132614

`∩[A242215(n+1)+n, A261123(n+2)]`
-/

namespace A141870.P16404601431946132614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P16404601431946132614

namespace A141870

/-- `∩[A242215(n+1)+n, A261123(n+2)]` -/
def P16404601431946132614.Spec : Prop :=
  ∀ n, (P16404601431946132614.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P4963530723990529637

`∩[A242215(n+1)+n, A006005(n+2)]`
-/

namespace A141870.P4963530723990529637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P4963530723990529637

namespace A141870

/-- `∩[A242215(n+1)+n, A006005(n+2)]` -/
def P4963530723990529637.Spec : Prop :=
  ∀ n, (P4963530723990529637.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P762925629077078157

`∩[A242215(n+1)+n, A033946(n+2)]`
-/

namespace A141870.P762925629077078157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P762925629077078157

namespace A141870

/-- `∩[A242215(n+1)+n, A033946(n+2)]` -/
def P762925629077078157.Spec : Prop :=
  ∀ n, (P762925629077078157.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P13541577504438878593

`∩[A242215(n+1)+n, A051948(n+2)]`
-/

namespace A141870.P13541577504438878593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P13541577504438878593

namespace A141870

/-- `∩[A242215(n+1)+n, A051948(n+2)]` -/
def P13541577504438878593.Spec : Prop :=
  ∀ n, (P13541577504438878593.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P5752042669194991738

`∩[A242215(n+1)+n, A053813(n+2)]`
-/

namespace A141870.P5752042669194991738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P5752042669194991738

namespace A141870

/-- `∩[A242215(n+1)+n, A053813(n+2)]` -/
def P5752042669194991738.Spec : Prop :=
  ∀ n, (P5752042669194991738.a n : ℤ) = A141870 (n + 1)

end A141870

/-! ## A141870.P4854054141501241309

`record[A006530(19*(n+1)+4)]`
-/

namespace A141870.P4854054141501241309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (19 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141870.P4854054141501241309

namespace A141870

/-- `record[A006530(19*(n+1)+4)]` -/
def P4854054141501241309.Spec : Prop :=
  ∀ n, P4854054141501241309.a n = A141870 (n + 1)

end A141870

/-! ## A141870.P5023660132216343526

`record[A020639(19*(n+1)+4)]`
-/

namespace A141870.P5023660132216343526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (19 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141870.P5023660132216343526

namespace A141870

/-- `record[A020639(19*(n+1)+4)]` -/
def P5023660132216343526.Spec : Prop :=
  ∀ n, P5023660132216343526.a n = A141870 (n + 1)

end A141870

/-!
# A141871: Primes congruent to 6 mod 19.

The programs for A141871, the canonical program `A141871.P14193724808016586424` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141871 has offset 1).

The definition of A141871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141871.P14193724808016586424

`∪[A142680(n+1), A142692(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141871

/-- `∪[A142680(n+1), A142692(n+1)]` -/
def P14193724808016586424.Spec : Prop :=
  ∀ n, (P14193724808016586424.a n : ℤ) = A141871 (n + 1)

theorem P14193724808016586424.correct : P14193724808016586424.Spec := by
  intro n
  simp only [A141871, Nat.add_sub_cancel]

end A141871

/-! ## A141871.P3572914841839084358

`p?[19*n+6]`
-/

namespace A141871.P3572914841839084358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141871.P3572914841839084358

namespace A141871

/-- `p?[19*n+6]` -/
def P3572914841839084358.Spec : Prop :=
  ∀ n, (P3572914841839084358.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P14513363676401255223

`∩[A106863(n+1), A215389(n+1)]`
-/

namespace A141871.P14513363676401255223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P14513363676401255223

namespace A141871

/-- `∩[A106863(n+1), A215389(n+1)]` -/
def P14513363676401255223.Spec : Prop :=
  ∀ n, (P14513363676401255223.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P13158545005919409603

`∩[A191019(n+1), A215389(n+1)]`
-/

namespace A141871.P13158545005919409603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P13158545005919409603

namespace A141871

/-- `∩[A191019(n+1), A215389(n+1)]` -/
def P13158545005919409603.Spec : Prop :=
  ∀ n, (P13158545005919409603.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P11892303583944051863

`∩[A215389(n+1), A341787(n+1)]`
-/

namespace A141871.P11892303583944051863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P11892303583944051863

namespace A141871

/-- `∩[A215389(n+1), A341787(n+1)]` -/
def P11892303583944051863.Spec : Prop :=
  ∀ n, (P11892303583944051863.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P15680064830100990061

`A000027(p?[A306331(n+1)-6])`
-/

namespace A141871.P15680064830100990061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141871.P15680064830100990061

namespace A141871

/-- `A000027(p?[A306331(n+1)-6])` -/
def P15680064830100990061.Spec : Prop :=
  ∀ n, P15680064830100990061.a n = A141871 (n + 1)

end A141871

/-! ## A141871.P3728871427093396185

`A000027(p?[A017317(n)+A017185(n)])`
-/

namespace A141871.P3728871427093396185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141871.P3728871427093396185

namespace A141871

/-- `A000027(p?[A017317(n)+A017185(n)])` -/
def P3728871427093396185.Spec : Prop :=
  ∀ n, P3728871427093396185.a n = A141871 (n + 1)

end A141871

/-! ## A141871.P16141041042382032664

`∩[A049551(n+1), A144619(n)-2]`
-/

namespace A141871.P16141041042382032664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P16141041042382032664

namespace A141871

/-- `∩[A049551(n+1), A144619(n)-2]` -/
def P16141041042382032664.Spec : Prop :=
  ∀ n, (P16141041042382032664.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P4234931793237028160

`∩[A000040(n+1), A144619(n)-2]`
-/

namespace A141871.P4234931793237028160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P4234931793237028160

namespace A141871

/-- `∩[A000040(n+1), A144619(n)-2]` -/
def P4234931793237028160.Spec : Prop :=
  ∀ n, (P4234931793237028160.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P17994003214188197297

`∩[A004139(n+1), A144619(n)-2]`
-/

namespace A141871.P17994003214188197297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P17994003214188197297

namespace A141871

/-- `∩[A004139(n+1), A144619(n)-2]` -/
def P17994003214188197297.Spec : Prop :=
  ∀ n, (P17994003214188197297.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P18123412753689348060

`∩[A006005(n+1), A144619(n)-2]`
-/

namespace A141871.P18123412753689348060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P18123412753689348060

namespace A141871

/-- `∩[A006005(n+1), A144619(n)-2]` -/
def P18123412753689348060.Spec : Prop :=
  ∀ n, (P18123412753689348060.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P13124920308889635089

`∩[A008578(n+1), A144619(n)-2]`
-/

namespace A141871.P13124920308889635089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P13124920308889635089

namespace A141871

/-- `∩[A008578(n+1), A144619(n)-2]` -/
def P13124920308889635089.Spec : Prop :=
  ∀ n, (P13124920308889635089.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P7819523337155023390

`∩[A045319(n+1), A144619(n)-2]`
-/

namespace A141871.P7819523337155023390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P7819523337155023390

namespace A141871

/-- `∩[A045319(n+1), A144619(n)-2]` -/
def P7819523337155023390.Spec : Prop :=
  ∀ n, (P7819523337155023390.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P5855140188822648400

`∩[A045344(n+1), A144619(n)-2]`
-/

namespace A141871.P5855140188822648400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P5855140188822648400

namespace A141871

/-- `∩[A045344(n+1), A144619(n)-2]` -/
def P5855140188822648400.Spec : Prop :=
  ∀ n, (P5855140188822648400.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P6877695861962770192

`∩[A046022(n+1), A144619(n)-2]`
-/

namespace A141871.P6877695861962770192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P6877695861962770192

namespace A141871

/-- `∩[A046022(n+1), A144619(n)-2]` -/
def P6877695861962770192.Spec : Prop :=
  ∀ n, (P6877695861962770192.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P4255367519006554835

`∩[A193339(n+1), A144619(n)-2]`
-/

namespace A141871.P4255367519006554835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P4255367519006554835

namespace A141871

/-- `∩[A193339(n+1), A144619(n)-2]` -/
def P4255367519006554835.Spec : Prop :=
  ∀ n, (P4255367519006554835.a n : ℤ) = A141871 (n + 1)

end A141871

/-! ## A141871.P522112731233146257

`A001414(p?[A144619(n)-2])`
-/

namespace A141871.P522112731233146257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141871.P522112731233146257

namespace A141871

/-- `A001414(p?[A144619(n)-2])` -/
def P522112731233146257.Spec : Prop :=
  ∀ n, P522112731233146257.a n = A141871 (n + 1)

end A141871

/-! ## A141871.P12068110660487316647

`A007913(p?[A144619(n)-2])`
-/

namespace A141871.P12068110660487316647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141871.P12068110660487316647

namespace A141871

/-- `A007913(p?[A144619(n)-2])` -/
def P12068110660487316647.Spec : Prop :=
  ∀ n, P12068110660487316647.a n = A141871 (n + 1)

end A141871

/-! ## A141871.P12877082996635849437

`A008475(p?[A144619(n)-2])`
-/

namespace A141871.P12877082996635849437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141871.P12877082996635849437

namespace A141871

/-- `A008475(p?[A144619(n)-2])` -/
def P12877082996635849437.Spec : Prop :=
  ∀ n, P12877082996635849437.a n = A141871 (n + 1)

end A141871

/-! ## A141871.P11474481248254351416

`record[A006530(A119413(2*(n+3))+A007310(2*(n+3)))]`
-/

namespace A141871.P11474481248254351416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119413 (2 * (n + 3)) + A007310 (2 * (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141871.P11474481248254351416

namespace A141871

/-- `record[A006530(A119413(2*(n+3))+A007310(2*(n+3)))]` -/
def P11474481248254351416.Spec : Prop :=
  ∀ n, P11474481248254351416.a n = A141871 (n + 1)

end A141871

/-!
# A141872: Primes congruent to 7 mod 19.

The programs for A141872, the canonical program `A141872.P11289759829138120049` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141872 has offset 1).

The definition of A141872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141872.P11289759829138120049

`∪[A142669(n+1), A142681(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141872

/-- `∪[A142669(n+1), A142681(n+1)]` -/
def P11289759829138120049.Spec : Prop :=
  ∀ n, (P11289759829138120049.a n : ℤ) = A141872 (n + 1)

theorem P11289759829138120049.correct : P11289759829138120049.Spec := by
  intro n
  simp only [A141872, Nat.add_sub_cancel]

end A141872

/-! ## A141872.P4921480926577373152

`p?[7+19*n]`
-/

namespace A141872.P4921480926577373152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 + 19 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141872.P4921480926577373152

namespace A141872

/-- `p?[7+19*n]` -/
def P4921480926577373152.Spec : Prop :=
  ∀ n, (P4921480926577373152.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P14661011802999707858

`∩[A106863(n+1), A215209(n+1)]`
-/

namespace A141872.P14661011802999707858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P14661011802999707858

namespace A141872

/-- `∩[A106863(n+1), A215209(n+1)]` -/
def P14661011802999707858.Spec : Prop :=
  ∀ n, (P14661011802999707858.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P11271417589401379378

`∩[A191019(n+1), A215209(n+1)]`
-/

namespace A141872.P11271417589401379378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P11271417589401379378

namespace A141872

/-- `∩[A191019(n+1), A215209(n+1)]` -/
def P11271417589401379378.Spec : Prop :=
  ∀ n, (P11271417589401379378.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P5369589631187101233

`∩[A215209(n+1), A341787(n+1)]`
-/

namespace A141872.P5369589631187101233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P5369589631187101233

namespace A141872

/-- `∩[A215209(n+1), A341787(n+1)]` -/
def P5369589631187101233.Spec : Prop :=
  ∀ n, (P5369589631187101233.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P16318503097711046935

`∩[A049551(n+1), A144619(n)-1]`
-/

namespace A141872.P16318503097711046935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P16318503097711046935

namespace A141872

/-- `∩[A049551(n+1), A144619(n)-1]` -/
def P16318503097711046935.Spec : Prop :=
  ∀ n, (P16318503097711046935.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P731269442747252762

`∩[A049551(n+1), A306331(n+1)+1]`
-/

namespace A141872.P731269442747252762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P731269442747252762

namespace A141872

/-- `∩[A049551(n+1), A306331(n+1)+1]` -/
def P731269442747252762.Spec : Prop :=
  ∀ n, (P731269442747252762.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P4035859503597249149

`∩[A000040(n+1), A144619(n)-1]`
-/

namespace A141872.P4035859503597249149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P4035859503597249149

namespace A141872

/-- `∩[A000040(n+1), A144619(n)-1]` -/
def P4035859503597249149.Spec : Prop :=
  ∀ n, (P4035859503597249149.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P16699376005366816227

`∩[A004139(n+1), A144619(n)-1]`
-/

namespace A141872.P16699376005366816227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P16699376005366816227

namespace A141872

/-- `∩[A004139(n+1), A144619(n)-1]` -/
def P16699376005366816227.Spec : Prop :=
  ∀ n, (P16699376005366816227.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P10014202338799369560

`∩[A006005(n+1), A144619(n)-1]`
-/

namespace A141872.P10014202338799369560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P10014202338799369560

namespace A141872

/-- `∩[A006005(n+1), A144619(n)-1]` -/
def P10014202338799369560.Spec : Prop :=
  ∀ n, (P10014202338799369560.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P14636389046528428997

`∩[A008578(n+1), A144619(n)-1]`
-/

namespace A141872.P14636389046528428997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P14636389046528428997

namespace A141872

/-- `∩[A008578(n+1), A144619(n)-1]` -/
def P14636389046528428997.Spec : Prop :=
  ∀ n, (P14636389046528428997.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P17146996205563577766

`∩[A045319(n+1), A144619(n)-1]`
-/

namespace A141872.P17146996205563577766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P17146996205563577766

namespace A141872

/-- `∩[A045319(n+1), A144619(n)-1]` -/
def P17146996205563577766.Spec : Prop :=
  ∀ n, (P17146996205563577766.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P2874312749454619142

`∩[A045344(n+1), A144619(n)-1]`
-/

namespace A141872.P2874312749454619142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P2874312749454619142

namespace A141872

/-- `∩[A045344(n+1), A144619(n)-1]` -/
def P2874312749454619142.Spec : Prop :=
  ∀ n, (P2874312749454619142.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P10077917939156786149

`∩[A046022(n+1), A144619(n)-1]`
-/

namespace A141872.P10077917939156786149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P10077917939156786149

namespace A141872

/-- `∩[A046022(n+1), A144619(n)-1]` -/
def P10077917939156786149.Spec : Prop :=
  ∀ n, (P10077917939156786149.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P6533257160420114944

`∩[A193339(n+1), A144619(n)-1]`
-/

namespace A141872.P6533257160420114944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P6533257160420114944

namespace A141872

/-- `∩[A193339(n+1), A144619(n)-1]` -/
def P6533257160420114944.Spec : Prop :=
  ∀ n, (P6533257160420114944.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P7048879091294076418

`∩[A000040(n+1), A306331(n+1)+1]`
-/

namespace A141872.P7048879091294076418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P7048879091294076418

namespace A141872

/-- `∩[A000040(n+1), A306331(n+1)+1]` -/
def P7048879091294076418.Spec : Prop :=
  ∀ n, (P7048879091294076418.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P5999373092230535037

`∩[A004139(n+1), A306331(n+1)+1]`
-/

namespace A141872.P5999373092230535037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P5999373092230535037

namespace A141872

/-- `∩[A004139(n+1), A306331(n+1)+1]` -/
def P5999373092230535037.Spec : Prop :=
  ∀ n, (P5999373092230535037.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P14323953901312087394

`∩[A006005(n+1), A306331(n+1)+1]`
-/

namespace A141872.P14323953901312087394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P14323953901312087394

namespace A141872

/-- `∩[A006005(n+1), A306331(n+1)+1]` -/
def P14323953901312087394.Spec : Prop :=
  ∀ n, (P14323953901312087394.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P14902924093794653619

`∩[A008578(n+1), A306331(n+1)+1]`
-/

namespace A141872.P14902924093794653619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P14902924093794653619

namespace A141872

/-- `∩[A008578(n+1), A306331(n+1)+1]` -/
def P14902924093794653619.Spec : Prop :=
  ∀ n, (P14902924093794653619.a n : ℤ) = A141872 (n + 1)

end A141872

/-! ## A141872.P17327249648525149363

`∩[A045319(n+1), A306331(n+1)+1]`
-/

namespace A141872.P17327249648525149363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P17327249648525149363

namespace A141872

/-- `∩[A045319(n+1), A306331(n+1)+1]` -/
def P17327249648525149363.Spec : Prop :=
  ∀ n, (P17327249648525149363.a n : ℤ) = A141872 (n + 1)

end A141872

/-!
# A141873: Primes congruent to 8 mod 19.

The programs for A141873, the canonical program `A141873.P12016974891057872690` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141873 has offset 1).

The definition of A141873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141873.P12016974891057872690

`∪[A142670(n+1), A142693(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141873

/-- `∪[A142670(n+1), A142693(n+1)]` -/
def P12016974891057872690.Spec : Prop :=
  ∀ n, (P12016974891057872690.a n : ℤ) = A141873 (n + 1)

theorem P12016974891057872690.correct : P12016974891057872690.Spec := by
  intro n
  simp only [A141873, Nat.add_sub_cancel]

end A141873

/-! ## A141873.P3465610134549483449

`p?[19*n+8]`
-/

namespace A141873.P3465610134549483449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141873.P3465610134549483449

namespace A141873

/-- `p?[19*n+8]` -/
def P3465610134549483449.Spec : Prop :=
  ∀ n, (P3465610134549483449.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P17442425615618937917

`or(1, p?[a(n-1)+19])` with `a(0)=8`
-/

namespace A141873.P17442425615618937917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141873.P17442425615618937917

namespace A141873

/-- `or(1, p?[a(n-1)+19])` -/
def P17442425615618937917.Spec : Prop :=
  ∀ n, (P17442425615618937917.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P4066937184749611137

`∏{d}[p?[a(n-1)+19], #]` with `a(0)=8`
-/

namespace A141873.P4066937184749611137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141873.P4066937184749611137

namespace A141873

/-- `∏{d}[p?[a(n-1)+19], #]` -/
def P4066937184749611137.Spec : Prop :=
  ∀ n, (P4066937184749611137.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P1263186330980388243

`∑{p}[p?[a(n-1)+19], #]` with `a(0)=8`
-/

namespace A141873.P1263186330980388243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141873.P1263186330980388243

namespace A141873

/-- `∑{p}[p?[a(n-1)+19], #]` -/
def P1263186330980388243.Spec : Prop :=
  ∀ n, (P1263186330980388243.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P9479981132729607791

`∏{p}[p?[a(n-1)+19], #]` with `a(0)=8`
-/

namespace A141873.P9479981132729607791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141873.P9479981132729607791

namespace A141873

/-- `∏{p}[p?[a(n-1)+19], #]` -/
def P9479981132729607791.Spec : Prop :=
  ∀ n, (P9479981132729607791.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P9437218157335235383

`∩[A191063(n+1), A144619(n)]`
-/

namespace A141873.P9437218157335235383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P9437218157335235383

namespace A141873

/-- `∩[A191063(n+1), A144619(n)]` -/
def P9437218157335235383.Spec : Prop :=
  ∀ n, (P9437218157335235383.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P7789323468394731307

`∩[A063142(n+1), A191063(n+1)]`
-/

namespace A141873.P7789323468394731307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P7789323468394731307

namespace A141873

/-- `∩[A063142(n+1), A191063(n+1)]` -/
def P7789323468394731307.Spec : Prop :=
  ∀ n, (P7789323468394731307.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P2146024479260900674

`∏{p}[p?[A033580(n+1)-A033568(n)+1], #]`
-/

namespace A141873.P2146024479260900674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 (n + 1) - A033568 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141873.P2146024479260900674

namespace A141873

/-- `∏{p}[p?[A033580(n+1)-A033568(n)+1], #]` -/
def P2146024479260900674.Spec : Prop :=
  ∀ n, (P2146024479260900674.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P8529214577550965287

`∩[A140560(n+1), A144619(n)]`
-/

namespace A141873.P8529214577550965287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P8529214577550965287

namespace A141873

/-- `∩[A140560(n+1), A144619(n)]` -/
def P8529214577550965287.Spec : Prop :=
  ∀ n, (P8529214577550965287.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P708620779919501546

`∩[A163769(n+1), A144619(n)]`
-/

namespace A141873.P708620779919501546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P708620779919501546

namespace A141873

/-- `∩[A163769(n+1), A144619(n)]` -/
def P708620779919501546.Spec : Prop :=
  ∀ n, (P708620779919501546.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P7075657799088933507

`∩[A049551(n+1), A144619(n)]`
-/

namespace A141873.P7075657799088933507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P7075657799088933507

namespace A141873

/-- `∩[A049551(n+1), A144619(n)]` -/
def P7075657799088933507.Spec : Prop :=
  ∀ n, (P7075657799088933507.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P2830824083498226933

`∩[A122259(n+1), A144619(n)]`
-/

namespace A141873.P2830824083498226933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P2830824083498226933

namespace A141873

/-- `∩[A122259(n+1), A144619(n)]` -/
def P2830824083498226933.Spec : Prop :=
  ∀ n, (P2830824083498226933.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P3410838085203628910

`∩[A318158(n+1), A144619(n)]`
-/

namespace A141873.P3410838085203628910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P3410838085203628910

namespace A141873

/-- `∩[A318158(n+1), A144619(n)]` -/
def P3410838085203628910.Spec : Prop :=
  ∀ n, (P3410838085203628910.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P2710877962227214779

`∩[A000040(n+1), A144619(n)]`
-/

namespace A141873.P2710877962227214779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P2710877962227214779

namespace A141873

/-- `∩[A000040(n+1), A144619(n)]` -/
def P2710877962227214779.Spec : Prop :=
  ∀ n, (P2710877962227214779.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P13514412266214688681

`∩[A004139(n+1), A144619(n)]`
-/

namespace A141873.P13514412266214688681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P13514412266214688681

namespace A141873

/-- `∩[A004139(n+1), A144619(n)]` -/
def P13514412266214688681.Spec : Prop :=
  ∀ n, (P13514412266214688681.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P3008734455762361551

`∩[A006005(n+1), A144619(n)]`
-/

namespace A141873.P3008734455762361551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P3008734455762361551

namespace A141873

/-- `∩[A006005(n+1), A144619(n)]` -/
def P3008734455762361551.Spec : Prop :=
  ∀ n, (P3008734455762361551.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P4188377865293464868

`∩[A008578(n+1), A144619(n)]`
-/

namespace A141873.P4188377865293464868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P4188377865293464868

namespace A141873

/-- `∩[A008578(n+1), A144619(n)]` -/
def P4188377865293464868.Spec : Prop :=
  ∀ n, (P4188377865293464868.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P11525395681747111850

`∩[A045319(n+1), A144619(n)]`
-/

namespace A141873.P11525395681747111850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P11525395681747111850

namespace A141873

/-- `∩[A045319(n+1), A144619(n)]` -/
def P11525395681747111850.Spec : Prop :=
  ∀ n, (P11525395681747111850.a n : ℤ) = A141873 (n + 1)

end A141873

/-! ## A141873.P8116518849571314008

`∩[A045344(n+1), A144619(n)]`
-/

namespace A141873.P8116518849571314008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P8116518849571314008

namespace A141873

/-- `∩[A045344(n+1), A144619(n)]` -/
def P8116518849571314008.Spec : Prop :=
  ∀ n, (P8116518849571314008.a n : ℤ) = A141873 (n + 1)

end A141873

/-!
# A141874: Primes congruent to 9 mod 19.

The programs for A141874, the canonical program `A141874.P3041446288535104640` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141874 has offset 1).

The definition of A141874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141874.P3041446288535104640

`∪[A142682(n+1), A142694(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141874

/-- `∪[A142682(n+1), A142694(n+1)]` -/
def P3041446288535104640.Spec : Prop :=
  ∀ n, (P3041446288535104640.a n : ℤ) = A141874 (n + 1)

theorem P3041446288535104640.correct : P3041446288535104640.Spec := by
  intro n
  simp only [A141874, Nat.add_sub_cancel]

end A141874

/-! ## A141874.P11369225979652324153

`p?[19*n+9]`
-/

namespace A141874.P11369225979652324153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141874.P11369225979652324153

namespace A141874

/-- `p?[19*n+9]` -/
def P11369225979652324153.Spec : Prop :=
  ∀ n, (P11369225979652324153.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P11657009094842133489

`or(1, p?[a(n-1)+19]-1)` with `a(0)=9`
-/

namespace A141874.P11657009094842133489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A141874.P11657009094842133489

namespace A141874

/-- `or(1, p?[a(n-1)+19]-1)` -/
def P11657009094842133489.Spec : Prop :=
  ∀ n, P11657009094842133489.a n = A141874 (n + 1)

end A141874

/-! ## A141874.P9688628286311597970

`or(1, p?[A082286(n)-1+n])`
-/

namespace A141874.P9688628286311597970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141874.P9688628286311597970

namespace A141874

/-- `or(1, p?[A082286(n)-1+n])` -/
def P9688628286311597970.Spec : Prop :=
  ∀ n, P9688628286311597970.a n = A141874 (n + 1)

end A141874

/-! ## A141874.P10994983484940375188

`∩[A049551(n+1), A144619(n)+1]`
-/

namespace A141874.P10994983484940375188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P10994983484940375188

namespace A141874

/-- `∩[A049551(n+1), A144619(n)+1]` -/
def P10994983484940375188.Spec : Prop :=
  ∀ n, (P10994983484940375188.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P6138906206471942182

`∩[A000040(n+1), A144619(n)+1]`
-/

namespace A141874.P6138906206471942182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P6138906206471942182

namespace A141874

/-- `∩[A000040(n+1), A144619(n)+1]` -/
def P6138906206471942182.Spec : Prop :=
  ∀ n, (P6138906206471942182.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P843340504389517755

`∩[A004139(n+1), A144619(n)+1]`
-/

namespace A141874.P843340504389517755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P843340504389517755

namespace A141874

/-- `∩[A004139(n+1), A144619(n)+1]` -/
def P843340504389517755.Spec : Prop :=
  ∀ n, (P843340504389517755.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P15543996742472455441

`∩[A006005(n+1), A144619(n)+1]`
-/

namespace A141874.P15543996742472455441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P15543996742472455441

namespace A141874

/-- `∩[A006005(n+1), A144619(n)+1]` -/
def P15543996742472455441.Spec : Prop :=
  ∀ n, (P15543996742472455441.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P3910175252536481173

`∩[A008578(n+1), A144619(n)+1]`
-/

namespace A141874.P3910175252536481173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P3910175252536481173

namespace A141874

/-- `∩[A008578(n+1), A144619(n)+1]` -/
def P3910175252536481173.Spec : Prop :=
  ∀ n, (P3910175252536481173.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P9641155459887986440

`∩[A045319(n+1), A144619(n)+1]`
-/

namespace A141874.P9641155459887986440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P9641155459887986440

namespace A141874

/-- `∩[A045319(n+1), A144619(n)+1]` -/
def P9641155459887986440.Spec : Prop :=
  ∀ n, (P9641155459887986440.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P12985501514689805766

`∩[A045344(n+1), A144619(n)+1]`
-/

namespace A141874.P12985501514689805766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P12985501514689805766

namespace A141874

/-- `∩[A045344(n+1), A144619(n)+1]` -/
def P12985501514689805766.Spec : Prop :=
  ∀ n, (P12985501514689805766.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P13442109565556550125

`∩[A046022(n+1), A144619(n)+1]`
-/

namespace A141874.P13442109565556550125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P13442109565556550125

namespace A141874

/-- `∩[A046022(n+1), A144619(n)+1]` -/
def P13442109565556550125.Spec : Prop :=
  ∀ n, (P13442109565556550125.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P13966520303678625482

`∩[A144619(n+1)+1, A193339(n+2)]`
-/

namespace A141874.P13966520303678625482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P13966520303678625482

namespace A141874

/-- `∩[A144619(n+1)+1, A193339(n+2)]` -/
def P13966520303678625482.Spec : Prop :=
  ∀ n, (P13966520303678625482.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P3809585101678613722

`record[A020639(38*(n+1)+9)]`
-/

namespace A141874.P3809585101678613722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (38 * (n + 1) + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141874.P3809585101678613722

namespace A141874

/-- `record[A020639(38*(n+1)+9)]` -/
def P3809585101678613722.Spec : Prop :=
  ∀ n, P3809585101678613722.a n = A141874 (n + 1)

end A141874

/-! ## A141874.P11206510206923299711

`A000265(p?[A017281(n)+A017257(n)])`
-/

namespace A141874.P11206510206923299711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + A017257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141874.P11206510206923299711

namespace A141874

/-- `A000265(p?[A017281(n)+A017257(n)])` -/
def P11206510206923299711.Spec : Prop :=
  ∀ n, P11206510206923299711.a n = A141874 (n + 1)

end A141874

/-! ## A141874.P10746258464555508221

`∩[A017377(2*n)-n, A000040(n+2)]`
-/

namespace A141874.P10746258464555508221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P10746258464555508221

namespace A141874

/-- `∩[A017377(2*n)-n, A000040(n+2)]` -/
def P10746258464555508221.Spec : Prop :=
  ∀ n, (P10746258464555508221.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P17220637217895440818

`∩[A311458(2*n+1)+A311458(n+1), A106863(n+2)]`
-/

namespace A141874.P17220637217895440818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 (2 * n + 1) + A311458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P17220637217895440818

namespace A141874

/-- `∩[A311458(2*n+1)+A311458(n+1), A106863(n+2)]` -/
def P17220637217895440818.Spec : Prop :=
  ∀ n, (P17220637217895440818.a n : ℤ) = A141874 (n + 1)

end A141874

/-! ## A141874.P741555453597986961

`∩[A311458(2*n+1)+A311458(n+1), A191019(n+2)]`
-/

namespace A141874.P741555453597986961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 (2 * n + 1) + A311458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P741555453597986961

namespace A141874

/-- `∩[A311458(2*n+1)+A311458(n+1), A191019(n+2)]` -/
def P741555453597986961.Spec : Prop :=
  ∀ n, (P741555453597986961.a n : ℤ) = A141874 (n + 1)

end A141874

/-!
# A141875: Primes congruent to 10 mod 19.

The programs for A141875, the canonical program `A141875.P17846897363976418073` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141875 has offset 1).

The definition of A141875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141875.P17846897363976418073

`∪[A142671(n+1), A142683(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141875

/-- `∪[A142671(n+1), A142683(n+1)]` -/
def P17846897363976418073.Spec : Prop :=
  ∀ n, (P17846897363976418073.a n : ℤ) = A141875 (n + 1)

theorem P17846897363976418073.correct : P17846897363976418073.Spec := by
  intro n
  simp only [A141875, Nat.add_sub_cancel]

end A141875

/-! ## A141875.P9231681511866274149

`p?[a(n-1)+19]` with `a(0)=10`
-/

namespace A141875.P9231681511866274149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141875.P9231681511866274149

namespace A141875

/-- `p?[a(n-1)+19]` -/
def P9231681511866274149.Spec : Prop :=
  ∀ n, (P9231681511866274149.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P3274107071386932583

`∑{p}[p?[19*n-9], #]`
-/

namespace A141875.P3274107071386932583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141875.P3274107071386932583

namespace A141875

/-- `∑{p}[p?[19*n-9], #]` -/
def P3274107071386932583.Spec : Prop :=
  ∀ n, (P3274107071386932583.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P6116738337665025410

`or(1, p?[19*(n+1)+10])`
-/

namespace A141875.P6116738337665025410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * (n + 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141875.P6116738337665025410

namespace A141875

/-- `or(1, p?[19*(n+1)+10])` -/
def P6116738337665025410.Spec : Prop :=
  ∀ n, (P6116738337665025410.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P7904219842600495960

`p?[5*(4*n+2)-n]`
-/

namespace A141875.P7904219842600495960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (4 * n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141875.P7904219842600495960

namespace A141875

/-- `p?[5*(4*n+2)-n]` -/
def P7904219842600495960.Spec : Prop :=
  ∀ n, P7904219842600495960.a n = A141875 (n + 1)

end A141875

/-! ## A141875.P10519216488645363825

`A000027(p?[A144619(n)+2])`
-/

namespace A141875.P10519216488645363825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141875.P10519216488645363825

namespace A141875

/-- `A000027(p?[A144619(n)+2])` -/
def P10519216488645363825.Spec : Prop :=
  ∀ n, P10519216488645363825.a n = A141875 (n + 1)

end A141875

/-! ## A141875.P3993098779232122746

`∩[A191063(n+1), A144619(n)+2]`
-/

namespace A141875.P3993098779232122746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P3993098779232122746

namespace A141875

/-- `∩[A191063(n+1), A144619(n)+2]` -/
def P3993098779232122746.Spec : Prop :=
  ∀ n, (P3993098779232122746.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P16199498996892325548

`∩[A063142(n+1)+2, A191063(n+1)]`
-/

namespace A141875.P16199498996892325548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P16199498996892325548

namespace A141875

/-- `∩[A063142(n+1)+2, A191063(n+1)]` -/
def P16199498996892325548.Spec : Prop :=
  ∀ n, (P16199498996892325548.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P16909601689006746684

`∩[A191063(n+1), A306331(n+1)-2]`
-/

namespace A141875.P16909601689006746684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P16909601689006746684

namespace A141875

/-- `∩[A191063(n+1), A306331(n+1)-2]` -/
def P16909601689006746684.Spec : Prop :=
  ∀ n, (P16909601689006746684.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P4560479165635342732

`∩[A049551(n+1), A144619(n)+2]`
-/

namespace A141875.P4560479165635342732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P4560479165635342732

namespace A141875

/-- `∩[A049551(n+1), A144619(n)+2]` -/
def P4560479165635342732.Spec : Prop :=
  ∀ n, (P4560479165635342732.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P5566541181219242559

`∩[A049551(n+1), A306331(n+1)-2]`
-/

namespace A141875.P5566541181219242559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P5566541181219242559

namespace A141875

/-- `∩[A049551(n+1), A306331(n+1)-2]` -/
def P5566541181219242559.Spec : Prop :=
  ∀ n, (P5566541181219242559.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P12895417080251570047

`∩[A000040(n+1), A144619(n)+2]`
-/

namespace A141875.P12895417080251570047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P12895417080251570047

namespace A141875

/-- `∩[A000040(n+1), A144619(n)+2]` -/
def P12895417080251570047.Spec : Prop :=
  ∀ n, (P12895417080251570047.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P11790020895562492294

`∩[A004139(n+1), A144619(n)+2]`
-/

namespace A141875.P11790020895562492294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P11790020895562492294

namespace A141875

/-- `∩[A004139(n+1), A144619(n)+2]` -/
def P11790020895562492294.Spec : Prop :=
  ∀ n, (P11790020895562492294.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P3630732480263317471

`∩[A006005(n+1), A144619(n)+2]`
-/

namespace A141875.P3630732480263317471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P3630732480263317471

namespace A141875

/-- `∩[A006005(n+1), A144619(n)+2]` -/
def P3630732480263317471.Spec : Prop :=
  ∀ n, (P3630732480263317471.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P6650093179909223002

`∩[A008578(n+1), A144619(n)+2]`
-/

namespace A141875.P6650093179909223002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P6650093179909223002

namespace A141875

/-- `∩[A008578(n+1), A144619(n)+2]` -/
def P6650093179909223002.Spec : Prop :=
  ∀ n, (P6650093179909223002.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P10117232070832809966

`∩[A045319(n+1), A144619(n)+2]`
-/

namespace A141875.P10117232070832809966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P10117232070832809966

namespace A141875

/-- `∩[A045319(n+1), A144619(n)+2]` -/
def P10117232070832809966.Spec : Prop :=
  ∀ n, (P10117232070832809966.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P11535057969431380069

`∩[A045344(n+1), A144619(n)+2]`
-/

namespace A141875.P11535057969431380069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P11535057969431380069

namespace A141875

/-- `∩[A045344(n+1), A144619(n)+2]` -/
def P11535057969431380069.Spec : Prop :=
  ∀ n, (P11535057969431380069.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P5034446352561011189

`∩[A046022(n+1), A144619(n)+2]`
-/

namespace A141875.P5034446352561011189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P5034446352561011189

namespace A141875

/-- `∩[A046022(n+1), A144619(n)+2]` -/
def P5034446352561011189.Spec : Prop :=
  ∀ n, (P5034446352561011189.a n : ℤ) = A141875 (n + 1)

end A141875

/-! ## A141875.P12908739424061357427

`∩[A193339(n+1), A144619(n)+2]`
-/

namespace A141875.P12908739424061357427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P12908739424061357427

namespace A141875

/-- `∩[A193339(n+1), A144619(n)+2]` -/
def P12908739424061357427.Spec : Prop :=
  ∀ n, (P12908739424061357427.a n : ℤ) = A141875 (n + 1)

end A141875

/-!
# A141876: Primes congruent to 11 mod 19.

The programs for A141876, the canonical program `A141876.P16106882412085691642` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141876 has offset 1).

The definition of A141876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141876.P16106882412085691642

`∪[A142672(n+1), A142695(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141876

/-- `∪[A142672(n+1), A142695(n+1)]` -/
def P16106882412085691642.Spec : Prop :=
  ∀ n, (P16106882412085691642.a n : ℤ) = A141876 (n + 1)

theorem P16106882412085691642.correct : P16106882412085691642.Spec := by
  intro n
  simp only [A141876, Nat.add_sub_cancel]

end A141876

/-! ## A141876.P7523596894701937613

`p?[a(n-1)+19]` with `a(0)=11`
-/

namespace A141876.P7523596894701937613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141876.P7523596894701937613

namespace A141876

/-- `p?[a(n-1)+19]` -/
def P7523596894701937613.Spec : Prop :=
  ∀ n, (P7523596894701937613.a n : ℤ) = A141876 (n + 1)

end A141876

/-! ## A141876.P2254120326238487343

`p?[3*(6*n+3)+n+2]`
-/

namespace A141876.P2254120326238487343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (6 * n + 3) + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141876.P2254120326238487343

namespace A141876

/-- `p?[3*(6*n+3)+n+2]` -/
def P2254120326238487343.Spec : Prop :=
  ∀ n, (P2254120326238487343.a n : ℤ) = A141876 (n + 1)

end A141876

/-! ## A141876.P4482497990324541635

`A000027(p?[38*n+11])`
-/

namespace A141876.P4482497990324541635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * n + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141876.P4482497990324541635

namespace A141876

/-- `A000027(p?[38*n+11])` -/
def P4482497990324541635.Spec : Prop :=
  ∀ n, P4482497990324541635.a n = A141876 (n + 1)

end A141876

/-! ## A141876.P7110519426373665585

`record[A020639(3*(6*n+3)+n+2)]`
-/

namespace A141876.P7110519426373665585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (6 * n + 3) + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141876.P7110519426373665585

namespace A141876

/-- `record[A020639(3*(6*n+3)+n+2)]` -/
def P7110519426373665585.Spec : Prop :=
  ∀ n, P7110519426373665585.a n = A141876 (n + 1)

end A141876

/-! ## A141876.P758847960649334906

`∩[A063231(n+1)+1, A215162(n+1)]`
-/

namespace A141876.P758847960649334906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063231 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141876.P758847960649334906

namespace A141876

/-- `∩[A063231(n+1)+1, A215162(n+1)]` -/
def P758847960649334906.Spec : Prop :=
  ∀ n, (P758847960649334906.a n : ℤ) = A141876 (n + 1)

end A141876

/-! ## A141876.P308761816634718598

`∩[A017281(2*n+1)-n, A000040(n+2)]`
-/

namespace A141876.P308761816634718598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141876.P308761816634718598

namespace A141876

/-- `∩[A017281(2*n+1)-n, A000040(n+2)]` -/
def P308761816634718598.Spec : Prop :=
  ∀ n, (P308761816634718598.a n : ℤ) = A141876 (n + 1)

end A141876

/-! ## A141876.P14133422511353046262

`∩[A063217(n+1)-1, A215162(n+1)]`
-/

namespace A141876.P14133422511353046262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063217 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141876.P14133422511353046262

namespace A141876

/-- `∩[A063217(n+1)-1, A215162(n+1)]` -/
def P14133422511353046262.Spec : Prop :=
  ∀ n, (P14133422511353046262.a n : ℤ) = A141876 (n + 1)

end A141876

/-! ## A141876.P17317180440353170550

`A093178(p?[2*n+17*n-8])`
-/

namespace A141876.P17317180440353170550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((17 * n : ℤ) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141876.P17317180440353170550

namespace A141876

/-- `A093178(p?[2*n+17*n-8])` -/
def P17317180440353170550.Spec : Prop :=
  ∀ n, P17317180440353170550.a n = A141876 (n + 1)

end A141876

/-!
# A141877: Primes congruent to 12 mod 19.

The programs for A141877, the canonical program `A141877.P14383995808257274838` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141877 has offset 1).

The definition of A141877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141877.P14383995808257274838

`∪[A142684(n+1), A142696(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141877

/-- `∪[A142684(n+1), A142696(n+1)]` -/
def P14383995808257274838.Spec : Prop :=
  ∀ n, (P14383995808257274838.a n : ℤ) = A141877 (n + 1)

theorem P14383995808257274838.correct : P14383995808257274838.Spec := by
  intro n
  simp only [A141877, Nat.add_sub_cancel]

end A141877

/-! ## A141877.P13556947254952915760

`p?[19*n-7]`
-/

namespace A141877.P13556947254952915760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141877.P13556947254952915760

namespace A141877

/-- `p?[19*n-7]` -/
def P13556947254952915760.Spec : Prop :=
  ∀ n, P13556947254952915760.a n = A141877 (n + 1)

end A141877

/-! ## A141877.P14717820814830182411

`or(1, p?[A306331(n+1)])`
-/

namespace A141877.P14717820814830182411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141877.P14717820814830182411

namespace A141877

/-- `or(1, p?[A306331(n+1)])` -/
def P14717820814830182411.Spec : Prop :=
  ∀ n, P14717820814830182411.a n = A141877 (n + 1)

end A141877

/-! ## A141877.P3467871911414257265

`∩[A191063(n+1), A306331(n+1)]`
-/

namespace A141877.P3467871911414257265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P3467871911414257265

namespace A141877

/-- `∩[A191063(n+1), A306331(n+1)]` -/
def P3467871911414257265.Spec : Prop :=
  ∀ n, (P3467871911414257265.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P15562217912941093780

`∩[A115058(n+1), A306331(n+1)]`
-/

namespace A141877.P15562217912941093780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P15562217912941093780

namespace A141877

/-- `∩[A115058(n+1), A306331(n+1)]` -/
def P15562217912941093780.Spec : Prop :=
  ∀ n, (P15562217912941093780.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P8686357903851371242

`∩[A140562(n+1), A306331(n+1)]`
-/

namespace A141877.P8686357903851371242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P8686357903851371242

namespace A141877

/-- `∩[A140562(n+1), A306331(n+1)]` -/
def P8686357903851371242.Spec : Prop :=
  ∀ n, (P8686357903851371242.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P4373316025052321057

`∩[A049551(n+1), A306331(n+1)]`
-/

namespace A141877.P4373316025052321057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P4373316025052321057

namespace A141877

/-- `∩[A049551(n+1), A306331(n+1)]` -/
def P4373316025052321057.Spec : Prop :=
  ∀ n, (P4373316025052321057.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P3866775454527672172

`∩[A306331(n+1), A286042(n+5)]`
-/

namespace A141877.P3866775454527672172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286042 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P3866775454527672172

namespace A141877

/-- `∩[A306331(n+1), A286042(n+5)]` -/
def P3866775454527672172.Spec : Prop :=
  ∀ n, (P3866775454527672172.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P5389810996372418774

`∩[A087490(n+1), A306331(n+1)]`
-/

namespace A141877.P5389810996372418774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P5389810996372418774

namespace A141877

/-- `∩[A087490(n+1), A306331(n+1)]` -/
def P5389810996372418774.Spec : Prop :=
  ∀ n, (P5389810996372418774.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P5414545010735515895

`∩[A004139(n+1), A306331(n+1)]`
-/

namespace A141877.P5414545010735515895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P5414545010735515895

namespace A141877

/-- `∩[A004139(n+1), A306331(n+1)]` -/
def P5414545010735515895.Spec : Prop :=
  ∀ n, (P5414545010735515895.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P2114260486492832783

`∩[A000040(n+1), A306331(n+1)]`
-/

namespace A141877.P2114260486492832783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P2114260486492832783

namespace A141877

/-- `∩[A000040(n+1), A306331(n+1)]` -/
def P2114260486492832783.Spec : Prop :=
  ∀ n, (P2114260486492832783.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P5392619056360295016

`∩[A006005(n+1), A306331(n+1)]`
-/

namespace A141877.P5392619056360295016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P5392619056360295016

namespace A141877

/-- `∩[A006005(n+1), A306331(n+1)]` -/
def P5392619056360295016.Spec : Prop :=
  ∀ n, (P5392619056360295016.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P85377629838979264

`∩[A008578(n+1), A306331(n+1)]`
-/

namespace A141877.P85377629838979264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P85377629838979264

namespace A141877

/-- `∩[A008578(n+1), A306331(n+1)]` -/
def P85377629838979264.Spec : Prop :=
  ∀ n, (P85377629838979264.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P8902891217039249100

`∩[A033946(n+1), A306331(n+1)]`
-/

namespace A141877.P8902891217039249100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P8902891217039249100

namespace A141877

/-- `∩[A033946(n+1), A306331(n+1)]` -/
def P8902891217039249100.Spec : Prop :=
  ∀ n, (P8902891217039249100.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P8554688773526192270

`∩[A045319(n+1), A306331(n+1)]`
-/

namespace A141877.P8554688773526192270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P8554688773526192270

namespace A141877

/-- `∩[A045319(n+1), A306331(n+1)]` -/
def P8554688773526192270.Spec : Prop :=
  ∀ n, (P8554688773526192270.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P12593135475293549003

`∩[A045344(n+1), A306331(n+1)]`
-/

namespace A141877.P12593135475293549003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P12593135475293549003

namespace A141877

/-- `∩[A045344(n+1), A306331(n+1)]` -/
def P12593135475293549003.Spec : Prop :=
  ∀ n, (P12593135475293549003.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P4130558742775594505

`∩[A046022(n+1), A306331(n+1)]`
-/

namespace A141877.P4130558742775594505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P4130558742775594505

namespace A141877

/-- `∩[A046022(n+1), A306331(n+1)]` -/
def P4130558742775594505.Spec : Prop :=
  ∀ n, (P4130558742775594505.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P3532800617438427484

`∩[A062972(n+1), A306331(n+1)]`
-/

namespace A141877.P3532800617438427484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P3532800617438427484

namespace A141877

/-- `∩[A062972(n+1), A306331(n+1)]` -/
def P3532800617438427484.Spec : Prop :=
  ∀ n, (P3532800617438427484.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P8435693293773350728

`∩[A065091(n+1), A306331(n+1)]`
-/

namespace A141877.P8435693293773350728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P8435693293773350728

namespace A141877

/-- `∩[A065091(n+1), A306331(n+1)]` -/
def P8435693293773350728.Spec : Prop :=
  ∀ n, (P8435693293773350728.a n : ℤ) = A141877 (n + 1)

end A141877

/-! ## A141877.P12290629857801478524

`∩[A067126(n+1), A306331(n+1)]`
-/

namespace A141877.P12290629857801478524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P12290629857801478524

namespace A141877

/-- `∩[A067126(n+1), A306331(n+1)]` -/
def P12290629857801478524.Spec : Prop :=
  ∀ n, (P12290629857801478524.a n : ℤ) = A141877 (n + 1)

end A141877

/-!
# A141878: Primes congruent to 13 mod 19.

The programs for A141878, the canonical program `A141878.P5470322527267451908` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141878 has offset 1).

The definition of A141878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141878.P5470322527267451908

`∪[A142673(n+1), A142685(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141878

/-- `∪[A142673(n+1), A142685(n+1)]` -/
def P5470322527267451908.Spec : Prop :=
  ∀ n, (P5470322527267451908.a n : ℤ) = A141878 (n + 1)

theorem P5470322527267451908.correct : P5470322527267451908.Spec := by
  intro n
  simp only [A141878, Nat.add_sub_cancel]

end A141878

/-! ## A141878.P11422442215437963518

`p?[a(n-1)+19]` with `a(0)=13`
-/

namespace A141878.P11422442215437963518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141878.P11422442215437963518

namespace A141878

/-- `p?[a(n-1)+19]` -/
def P11422442215437963518.Spec : Prop :=
  ∀ n, (P11422442215437963518.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P4241543760619890704

`p?[20*n-(n+6)]`
-/

namespace A141878.P4241543760619890704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * n : ℤ) - (n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141878.P4241543760619890704

namespace A141878

/-- `p?[20*n-(n+6)]` -/
def P4241543760619890704.Spec : Prop :=
  ∀ n, P4241543760619890704.a n = A141878 (n + 1)

end A141878

/-! ## A141878.P14827245517288587988

`round(sqrt(p?[A017653(n)+7*n+2]²+1))`
-/

namespace A141878.P14827245517288587988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + (7 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A141878.P14827245517288587988

namespace A141878

/-- `round(sqrt(p?[A017653(n)+7*n+2]²+1))` -/
def P14827245517288587988.Spec : Prop :=
  ∀ n, P14827245517288587988.a n = A141878 (n + 1)

end A141878

/-! ## A141878.P9834749202008302247

`record[A020639(19*(n+1)-6)]`
-/

namespace A141878.P9834749202008302247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (19 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141878.P9834749202008302247

namespace A141878

/-- `record[A020639(19*(n+1)-6)]` -/
def P9834749202008302247.Spec : Prop :=
  ∀ n, P9834749202008302247.a n = A141878 (n + 1)

end A141878

/-! ## A141878.P10992827077582078604

`∩[A306331(2*n+1)-A306331(n+2), A191063(n+2)]`
-/

namespace A141878.P10992827077582078604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P10992827077582078604

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A191063(n+2)]` -/
def P10992827077582078604.Spec : Prop :=
  ∀ n, (P10992827077582078604.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P8566081045614054466

`∩[A306331(2*n+1)-A306331(n+2), A049551(n+2)]`
-/

namespace A141878.P8566081045614054466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P8566081045614054466

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A049551(n+2)]` -/
def P8566081045614054466.Spec : Prop :=
  ∀ n, (P8566081045614054466.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P2442954110898540841

`∩[A143988(2*(n+1))+n, A000040(n+2)]`
-/

namespace A141878.P2442954110898540841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P2442954110898540841

namespace A141878

/-- `∩[A143988(2*(n+1))+n, A000040(n+2)]` -/
def P2442954110898540841.Spec : Prop :=
  ∀ n, (P2442954110898540841.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P285258782823989722

`∩[A143988(2*(n+1))+n, A045344(n+2)]`
-/

namespace A141878.P285258782823989722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P285258782823989722

namespace A141878

/-- `∩[A143988(2*(n+1))+n, A045344(n+2)]` -/
def P285258782823989722.Spec : Prop :=
  ∀ n, (P285258782823989722.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P14953240717166158969

`∩[A093515(2*(n+1)), A143988(2*(n+1))+n]`
-/

namespace A141878.P14953240717166158969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P14953240717166158969

namespace A141878

/-- `∩[A093515(2*(n+1)), A143988(2*(n+1))+n]` -/
def P14953240717166158969.Spec : Prop :=
  ∀ n, (P14953240717166158969.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P13777562487099893596

`∩[A306331(2*n+1)-A306331(n+2), A000040(n+2)]`
-/

namespace A141878.P13777562487099893596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P13777562487099893596

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A000040(n+2)]` -/
def P13777562487099893596.Spec : Prop :=
  ∀ n, (P13777562487099893596.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P10764126875472229298

`∩[A306331(2*n+1)-A306331(n+2), A004139(n+2)]`
-/

namespace A141878.P10764126875472229298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P10764126875472229298

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A004139(n+2)]` -/
def P10764126875472229298.Spec : Prop :=
  ∀ n, (P10764126875472229298.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P6589599983144047110

`∩[A306331(2*n+1)-A306331(n+2), A006005(n+2)]`
-/

namespace A141878.P6589599983144047110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P6589599983144047110

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A006005(n+2)]` -/
def P6589599983144047110.Spec : Prop :=
  ∀ n, (P6589599983144047110.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P9043190406223969647

`∩[A306331(2*n+1)-A306331(n+2), A008578(n+2)]`
-/

namespace A141878.P9043190406223969647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P9043190406223969647

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A008578(n+2)]` -/
def P9043190406223969647.Spec : Prop :=
  ∀ n, (P9043190406223969647.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P7565743541099189349

`∩[A306331(2*n+1)-A306331(n+2), A033946(n+2)]`
-/

namespace A141878.P7565743541099189349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P7565743541099189349

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A033946(n+2)]` -/
def P7565743541099189349.Spec : Prop :=
  ∀ n, (P7565743541099189349.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P2045933540323547485

`∩[A306331(2*n+1)-A306331(n+2), A045319(n+2)]`
-/

namespace A141878.P2045933540323547485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P2045933540323547485

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A045319(n+2)]` -/
def P2045933540323547485.Spec : Prop :=
  ∀ n, (P2045933540323547485.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P11710736518597468347

`∩[A306331(2*n+1)-A306331(n+2), A045344(n+2)]`
-/

namespace A141878.P11710736518597468347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P11710736518597468347

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A045344(n+2)]` -/
def P11710736518597468347.Spec : Prop :=
  ∀ n, (P11710736518597468347.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P16517088204296147922

`∩[A306331(2*n+1)-A306331(n+2), A046022(n+2)]`
-/

namespace A141878.P16517088204296147922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P16517088204296147922

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A046022(n+2)]` -/
def P16517088204296147922.Spec : Prop :=
  ∀ n, (P16517088204296147922.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P17074810303633379122

`∩[A017305(2*n+1)-n, A000430(n+2)]`
-/

namespace A141878.P17074810303633379122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P17074810303633379122

namespace A141878

/-- `∩[A017305(2*n+1)-n, A000430(n+2)]` -/
def P17074810303633379122.Spec : Prop :=
  ∀ n, (P17074810303633379122.a n : ℤ) = A141878 (n + 1)

end A141878

/-! ## A141878.P8554841849333750239

`∩[A306331(2*n+1)-A306331(n+2), A000430(n+2)]`
-/

namespace A141878.P8554841849333750239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P8554841849333750239

namespace A141878

/-- `∩[A306331(2*n+1)-A306331(n+2), A000430(n+2)]` -/
def P8554841849333750239.Spec : Prop :=
  ∀ n, (P8554841849333750239.a n : ℤ) = A141878 (n + 1)

end A141878

/-!
# A141879: Primes congruent to 14 mod 19.

The programs for A141879, the canonical program `A141879.P14350241755533721815` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141879 has offset 1).

The definition of A141879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141879.P14350241755533721815

`∪[A142674(n+1), A142697(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141879

/-- `∪[A142674(n+1), A142697(n+1)]` -/
def P14350241755533721815.Spec : Prop :=
  ∀ n, (P14350241755533721815.a n : ℤ) = A141879 (n + 1)

theorem P14350241755533721815.correct : P14350241755533721815.Spec := by
  intro n
  simp only [A141879, Nat.add_sub_cancel]

end A141879

/-! ## A141879.P16305401188324656970

`p?[19*n-5]`
-/

namespace A141879.P16305401188324656970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141879.P16305401188324656970

namespace A141879

/-- `p?[19*n-5]` -/
def P16305401188324656970.Spec : Prop :=
  ∀ n, P16305401188324656970.a n = A141879 (n + 1)

end A141879

/-! ## A141879.P15394766865696226568

`or(1, p?[A082286(n+1)+n+5])`
-/

namespace A141879.P15394766865696226568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 (n + 1) + (n : ℤ) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141879.P15394766865696226568

namespace A141879

/-- `or(1, p?[A082286(n+1)+n+5])` -/
def P15394766865696226568.Spec : Prop :=
  ∀ n, P15394766865696226568.a n = A141879 (n + 1)

end A141879

/-! ## A141879.P10321505251486910198

`A000027(p?[A306331(n+1)+2])`
-/

namespace A141879.P10321505251486910198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141879.P10321505251486910198

namespace A141879

/-- `A000027(p?[A306331(n+1)+2])` -/
def P10321505251486910198.Spec : Prop :=
  ∀ n, P10321505251486910198.a n = A141879 (n + 1)

end A141879

/-! ## A141879.P4229336126821207793

`∩[A191063(n+1), A306331(n+1)+2]`
-/

namespace A141879.P4229336126821207793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P4229336126821207793

namespace A141879

/-- `∩[A191063(n+1), A306331(n+1)+2]` -/
def P4229336126821207793.Spec : Prop :=
  ∀ n, (P4229336126821207793.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P11201176806397930238

`A000027(p?[A017377(n)+A017221(n)])`
-/

namespace A141879.P11201176806397930238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141879.P11201176806397930238

namespace A141879

/-- `A000027(p?[A017377(n)+A017221(n)])` -/
def P11201176806397930238.Spec : Prop :=
  ∀ n, P11201176806397930238.a n = A141879 (n + 1)

end A141879

/-! ## A141879.P14622889632968579252

`∩[A049551(n+1), A306331(n+1)+2]`
-/

namespace A141879.P14622889632968579252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P14622889632968579252

namespace A141879

/-- `∩[A049551(n+1), A306331(n+1)+2]` -/
def P14622889632968579252.Spec : Prop :=
  ∀ n, (P14622889632968579252.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P7558984455433894190

`∩[A087490(n+1), A306331(n+1)+2]`
-/

namespace A141879.P7558984455433894190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P7558984455433894190

namespace A141879

/-- `∩[A087490(n+1), A306331(n+1)+2]` -/
def P7558984455433894190.Spec : Prop :=
  ∀ n, (P7558984455433894190.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P5682002796284960405

`∩[A000040(n+1), A306331(n+1)+2]`
-/

namespace A141879.P5682002796284960405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P5682002796284960405

namespace A141879

/-- `∩[A000040(n+1), A306331(n+1)+2]` -/
def P5682002796284960405.Spec : Prop :=
  ∀ n, (P5682002796284960405.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P4901075096790753142

`∩[A004139(n+1), A306331(n+1)+2]`
-/

namespace A141879.P4901075096790753142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P4901075096790753142

namespace A141879

/-- `∩[A004139(n+1), A306331(n+1)+2]` -/
def P4901075096790753142.Spec : Prop :=
  ∀ n, (P4901075096790753142.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P16867057227071517453

`∩[A006005(n+1), A306331(n+1)+2]`
-/

namespace A141879.P16867057227071517453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P16867057227071517453

namespace A141879

/-- `∩[A006005(n+1), A306331(n+1)+2]` -/
def P16867057227071517453.Spec : Prop :=
  ∀ n, (P16867057227071517453.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P10896878296919905213

`∩[A008578(n+1), A306331(n+1)+2]`
-/

namespace A141879.P10896878296919905213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P10896878296919905213

namespace A141879

/-- `∩[A008578(n+1), A306331(n+1)+2]` -/
def P10896878296919905213.Spec : Prop :=
  ∀ n, (P10896878296919905213.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P6367915682112515854

`∩[A045319(n+1), A306331(n+1)+2]`
-/

namespace A141879.P6367915682112515854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P6367915682112515854

namespace A141879

/-- `∩[A045319(n+1), A306331(n+1)+2]` -/
def P6367915682112515854.Spec : Prop :=
  ∀ n, (P6367915682112515854.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P3380975967897689695

`∩[A045344(n+1), A306331(n+1)+2]`
-/

namespace A141879.P3380975967897689695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P3380975967897689695

namespace A141879

/-- `∩[A045344(n+1), A306331(n+1)+2]` -/
def P3380975967897689695.Spec : Prop :=
  ∀ n, (P3380975967897689695.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P3525363338391333641

`∩[A065091(n+1), A306331(n+1)+2]`
-/

namespace A141879.P3525363338391333641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P3525363338391333641

namespace A141879

/-- `∩[A065091(n+1), A306331(n+1)+2]` -/
def P3525363338391333641.Spec : Prop :=
  ∀ n, (P3525363338391333641.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P8483670518685838991

`∩[A000040(n+1), A063305(n+2)+n]`
-/

namespace A141879.P8483670518685838991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P8483670518685838991

namespace A141879

/-- `∩[A000040(n+1), A063305(n+2)+n]` -/
def P8483670518685838991.Spec : Prop :=
  ∀ n, (P8483670518685838991.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P8491902634872549550

`∩[A083249(n+1), A063305(n+2)+n]`
-/

namespace A141879.P8491902634872549550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P8491902634872549550

namespace A141879

/-- `∩[A083249(n+1), A063305(n+2)+n]` -/
def P8491902634872549550.Spec : Prop :=
  ∀ n, (P8491902634872549550.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P8854266936107577635

`∩[A033946(n+1), A306331(n+1)+2]`
-/

namespace A141879.P8854266936107577635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P8854266936107577635

namespace A141879

/-- `∩[A033946(n+1), A306331(n+1)+2]` -/
def P8854266936107577635.Spec : Prop :=
  ∀ n, (P8854266936107577635.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P15882516141891637233

`∩[A046022(n+1), A306331(n+1)+2]`
-/

namespace A141879.P15882516141891637233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P15882516141891637233

namespace A141879

/-- `∩[A046022(n+1), A306331(n+1)+2]` -/
def P15882516141891637233.Spec : Prop :=
  ∀ n, (P15882516141891637233.a n : ℤ) = A141879 (n + 1)

end A141879

/-! ## A141879.P7469210496745699453

`∩[A062972(n+1), A306331(n+1)+2]`
-/

namespace A141879.P7469210496745699453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P7469210496745699453

namespace A141879

/-- `∩[A062972(n+1), A306331(n+1)+2]` -/
def P7469210496745699453.Spec : Prop :=
  ∀ n, (P7469210496745699453.a n : ℤ) = A141879 (n + 1)

end A141879

/-!
# A141880: Primes congruent to 15 mod 19.

The programs for A141880, the canonical program `A141880.P5030940355029022725` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141880 has offset 1).

The definition of A141880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141880.P5030940355029022725

`∪[A142686(n+1), A142698(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141880

/-- `∪[A142686(n+1), A142698(n+1)]` -/
def P5030940355029022725.Spec : Prop :=
  ∀ n, (P5030940355029022725.a n : ℤ) = A141880 (n + 1)

theorem P5030940355029022725.correct : P5030940355029022725.Spec := by
  intro n
  simp only [A141880, Nat.add_sub_cancel]

end A141880

/-! ## A141880.P27622796046663274

`p?[19*n-4]`
-/

namespace A141880.P27622796046663274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141880.P27622796046663274

namespace A141880

/-- `p?[19*n-4]` -/
def P27622796046663274.Spec : Prop :=
  ∀ n, P27622796046663274.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P2743648094870273154

`or(1, p?[A082286(n)+5+n])`
-/

namespace A141880.P2743648094870273154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n + 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141880.P2743648094870273154

namespace A141880

/-- `or(1, p?[A082286(n)+5+n])` -/
def P2743648094870273154.Spec : Prop :=
  ∀ n, P2743648094870273154.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P11515815317783310988

`record[A006530(2*A144619(n+1)-1)]`
-/

namespace A141880.P11515815317783310988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A144619 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141880.P11515815317783310988

namespace A141880

/-- `record[A006530(2*A144619(n+1)-1)]` -/
def P11515815317783310988.Spec : Prop :=
  ∀ n, P11515815317783310988.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P1159966900358632403

`filter[A169597(2*(n+1)), A010051(#)]`
-/

namespace A141880.P1159966900358632403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169597 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141880.P1159966900358632403

namespace A141880

/-- `filter[A169597(2*(n+1)), A010051(#)]` -/
def P1159966900358632403.Spec : Prop :=
  ∀ n, P1159966900358632403.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P543548357511144220

`filter[A169597(2*(n+1)), A355937(#)]`
-/

namespace A141880.P543548357511144220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169597 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141880.P543548357511144220

namespace A141880

/-- `filter[A169597(2*(n+1)), A355937(#)]` -/
def P543548357511144220.Spec : Prop :=
  ∀ n, P543548357511144220.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P4185347330429886044

`A000265(p?[A195035(n+1)+2*n])`
-/

namespace A141880.P4185347330429886044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141880.P4185347330429886044

namespace A141880

/-- `A000265(p?[A195035(n+1)+2*n])` -/
def P4185347330429886044.Spec : Prop :=
  ∀ n, P4185347330429886044.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P17763521073284031961

`A000265(p?[A195035(n+1)+n+n])`
-/

namespace A141880.P17763521073284031961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (n + 1) + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141880.P17763521073284031961

namespace A141880

/-- `A000265(p?[A195035(n+1)+n+n])` -/
def P17763521073284031961.Spec : Prop :=
  ∀ n, P17763521073284031961.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P1502299309157329413

`filter[A169597(2*(n+1)), A174897(#)]`
-/

namespace A141880.P1502299309157329413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169597 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A141880.P1502299309157329413

namespace A141880

/-- `filter[A169597(2*(n+1)), A174897(#)]` -/
def P1502299309157329413.Spec : Prop :=
  ∀ n, P1502299309157329413.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P1564682730361911727

`filter[A169597(2*(n+1)), A302777(#)]`
-/

namespace A141880.P1564682730361911727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169597 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141880.P1564682730361911727

namespace A141880

/-- `filter[A169597(2*(n+1)), A302777(#)]` -/
def P1564682730361911727.Spec : Prop :=
  ∀ n, P1564682730361911727.a n = A141880 (n + 1)

end A141880

/-! ## A141880.P450913814364151790

`filter[A169597(2*(n+1)), A351957(#)]`
-/

namespace A141880.P450913814364151790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169597 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A141880.P450913814364151790

namespace A141880

/-- `filter[A169597(2*(n+1)), A351957(#)]` -/
def P450913814364151790.Spec : Prop :=
  ∀ n, P450913814364151790.a n = A141880 (n + 1)

end A141880

/-!
# A141881: Primes congruent to 1 mod 20.

The programs for A141881, the canonical program `A141881.P3987547684413938372` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141881 has offset 1).

The definition of A141881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9758 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141881.P3987547684413938372

`p?[20*n+1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141881

/-- `p?[20*n+1]` -/
def P3987547684413938372.Spec : Prop :=
  ∀ n, (P3987547684413938372.a n : ℤ) = A141881 (n + 1)

theorem P3987547684413938372.correct : P3987547684413938372.Spec := by
  intro n
  simp only [A141881, Nat.add_sub_cancel]

end A141881

/-! ## A141881.P14877164366633707295

`or(1, p?[or(1, 20*n)])`
-/

namespace A141881.P14877164366633707295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (20 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141881.P14877164366633707295

namespace A141881

/-- `or(1, p?[or(1, 20*n)])` -/
def P14877164366633707295.Spec : Prop :=
  ∀ n, (P14877164366633707295.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P3813621058070037148

`∩[A030430(n+1), A008846(n+2)]`
-/

namespace A141881.P3813621058070037148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P3813621058070037148

namespace A141881

/-- `∩[A030430(n+1), A008846(n+2)]` -/
def P3813621058070037148.Spec : Prop :=
  ∀ n, (P3813621058070037148.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P9931662974632426388

`∩[A030430(n+1), A191218(n+1)]`
-/

namespace A141881.P9931662974632426388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P9931662974632426388

namespace A141881

/-- `∩[A030430(n+1), A191218(n+1)]` -/
def P9931662974632426388.Spec : Prop :=
  ∀ n, (P9931662974632426388.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P8464147844018420106

`∩[A004615(n+1), A002144(n+1)]`
-/

namespace A141881.P8464147844018420106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P8464147844018420106

namespace A141881

/-- `∩[A004615(n+1), A002144(n+1)]` -/
def P8464147844018420106.Spec : Prop :=
  ∀ n, (P8464147844018420106.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P1110083157402527486

`∩[A002144(n+1), A030430(n+1)]`
-/

namespace A141881.P1110083157402527486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P1110083157402527486

namespace A141881

/-- `∩[A002144(n+1), A030430(n+1)]` -/
def P1110083157402527486.Spec : Prop :=
  ∀ n, (P1110083157402527486.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P14192293387332854907

`∩[A179446(n+1), A002313(n+1)]`
-/

namespace A141881.P14192293387332854907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P14192293387332854907

namespace A141881

/-- `∩[A179446(n+1), A002313(n+1)]` -/
def P14192293387332854907.Spec : Prop :=
  ∀ n, (P14192293387332854907.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P7104104193451194906

`A002144(eq[1, A002144(n+1)%5]+1)`
-/

namespace A141881.P7104104193451194906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002144 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A141881.P7104104193451194906

namespace A141881

/-- `A002144(eq[1, A002144(n+1)%5]+1)` -/
def P7104104193451194906.Spec : Prop :=
  ∀ n, P7104104193451194906.a n = A141881 (n + 1)

end A141881

/-! ## A141881.P9826676383943612799

`A002313(eq[1, A002313(n+1)%5]+1)`
-/

namespace A141881.P9826676383943612799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002313 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A141881.P9826676383943612799

namespace A141881

/-- `A002313(eq[1, A002313(n+1)%5]+1)` -/
def P9826676383943612799.Spec : Prop :=
  ∀ n, P9826676383943612799.a n = A141881 (n + 1)

end A141881

/-! ## A141881.P3335967838123236250

`∩[A045429(n+1), A033205(n+1)]`
-/

namespace A141881.P3335967838123236250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P3335967838123236250

namespace A141881

/-- `∩[A045429(n+1), A033205(n+1)]` -/
def P3335967838123236250.Spec : Prop :=
  ∀ n, (P3335967838123236250.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P7871642076418275231

`∩[A045407(n+1), A216815(n+1)]`
-/

namespace A141881.P7871642076418275231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P7871642076418275231

namespace A141881

/-- `∩[A045407(n+1), A216815(n+1)]` -/
def P7871642076418275231.Spec : Prop :=
  ∀ n, (P7871642076418275231.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P16811359500046897036

`∩[A045372(n+1), A033205(n+1)]`
-/

namespace A141881.P16811359500046897036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P16811359500046897036

namespace A141881

/-- `∩[A045372(n+1), A033205(n+1)]` -/
def P16811359500046897036.Spec : Prop :=
  ∀ n, (P16811359500046897036.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P2387593972676298494

`∩[A045349(n+1), A216815(n+1)]`
-/

namespace A141881.P2387593972676298494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P2387593972676298494

namespace A141881

/-- `∩[A045349(n+1), A216815(n+1)]` -/
def P2387593972676298494.Spec : Prop :=
  ∀ n, (P2387593972676298494.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P8733228498514290440

`∩[A091727(n+1), A030430(n+1)]`
-/

namespace A141881.P8733228498514290440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P8733228498514290440

namespace A141881

/-- `∩[A091727(n+1), A030430(n+1)]` -/
def P8733228498514290440.Spec : Prop :=
  ∀ n, (P8733228498514290440.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P18242545382221384083

`∩[A055025(n+1), A030430(n+1)]`
-/

namespace A141881.P18242545382221384083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P18242545382221384083

namespace A141881

/-- `∩[A055025(n+1), A030430(n+1)]` -/
def P18242545382221384083.Spec : Prop :=
  ∀ n, (P18242545382221384083.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P3400941887784395672

`∩[A085759(n+1), A030430(n+1)]`
-/

namespace A141881.P3400941887784395672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P3400941887784395672

namespace A141881

/-- `∩[A085759(n+1), A030430(n+1)]` -/
def P3400941887784395672.Spec : Prop :=
  ∀ n, (P3400941887784395672.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P5870312148833573756

`A215145(A124204(n+1))`
-/

namespace A141881.P5870312148833573756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (A124204 (n + 1)).toNat

end

end A141881.P5870312148833573756

namespace A141881

/-- `A215145(A124204(n+1))` -/
def P5870312148833573756.Spec : Prop :=
  ∀ n, P5870312148833573756.a n = A141881 (n + 1)

end A141881

/-! ## A141881.P51764096869292812

`∩[A002144(n+1), A215145(n)]`
-/

namespace A141881.P51764096869292812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P51764096869292812

namespace A141881

/-- `∩[A002144(n+1), A215145(n)]` -/
def P51764096869292812.Spec : Prop :=
  ∀ n, (P51764096869292812.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P15942726503235328137

`∩[A002313(n+1), A215145(n)]`
-/

namespace A141881.P15942726503235328137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P15942726503235328137

namespace A141881

/-- `∩[A002313(n+1), A215145(n)]` -/
def P15942726503235328137.Spec : Prop :=
  ∀ n, (P15942726503235328137.a n : ℤ) = A141881 (n + 1)

end A141881

/-! ## A141881.P18070882055862163154

`∩[A030430(n+1), A215145(n)]`
-/

namespace A141881.P18070882055862163154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141881.P18070882055862163154

namespace A141881

/-- `∩[A030430(n+1), A215145(n)]` -/
def P18070882055862163154.Spec : Prop :=
  ∀ n, (P18070882055862163154.a n : ℤ) = A141881 (n + 1)

end A141881

/-!
# A141882: Primes congruent to 7 mod 20.

The programs for A141882, the canonical program `A141882.P11394083926865790889` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141882 has offset 1).

The definition of A141882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141882.P11605059111352689150

`∪[A142193(n+1), A142185(n+1)]`
-/

namespace A141882.P11605059111352689150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P11605059111352689150

namespace A141882

/-- `∪[A142193(n+1), A142185(n+1)]` -/
def P11605059111352689150.Spec : Prop :=
  ∀ n, (P11605059111352689150.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P11394083926865790889

`p?[4*5*n+7]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141882

/-- `p?[4*5*n+7]` -/
def P11394083926865790889.Spec : Prop :=
  ∀ n, (P11394083926865790889.a n : ℤ) = A141882 (n + 1)

theorem P11394083926865790889.correct : P11394083926865790889.Spec := by
  intro n
  simp only [A141882, Nat.add_sub_cancel]

end A141882

/-! ## A141882.P16495626220331367677

`or(1, p?[a(n-1)+20])` with `a(0)=7`
-/

namespace A141882.P16495626220331367677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141882.P16495626220331367677

namespace A141882

/-- `or(1, p?[a(n-1)+20])` -/
def P16495626220331367677.Spec : Prop :=
  ∀ n, (P16495626220331367677.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P11150925486176762778

`∩[A030432(n+1), A122870(n+1)]`
-/

namespace A141882.P11150925486176762778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P11150925486176762778

namespace A141882

/-- `∩[A030432(n+1), A122870(n+1)]` -/
def P11150925486176762778.Spec : Prop :=
  ∀ n, (P11150925486176762778.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P16608301450957665155

`∩[A045380(n+1), A122870(n+1)]`
-/

namespace A141882.P16608301450957665155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P16608301450957665155

namespace A141882

/-- `∩[A045380(n+1), A122870(n+1)]` -/
def P16608301450957665155.Spec : Prop :=
  ∀ n, (P16608301450957665155.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P13965284359789413314

`∩[A030432(n+1), A106865(n+1)]`
-/

namespace A141882.P13965284359789413314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P13965284359789413314

namespace A141882

/-- `∩[A030432(n+1), A106865(n+1)]` -/
def P13965284359789413314.Spec : Prop :=
  ∀ n, (P13965284359789413314.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P467710552855383861

`∩[A045357(n+1), A122870(n+1)]`
-/

namespace A141882.P467710552855383861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P467710552855383861

namespace A141882

/-- `∩[A045357(n+1), A122870(n+1)]` -/
def P467710552855383861.Spec : Prop :=
  ∀ n, (P467710552855383861.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P11314692071906597760

`∩[A030432(n+1), A053027(n+1)]`
-/

namespace A141882.P11314692071906597760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P11314692071906597760

namespace A141882

/-- `∩[A030432(n+1), A053027(n+1)]` -/
def P11314692071906597760.Spec : Prop :=
  ∀ n, (P11314692071906597760.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P14268901708626966799

`∩[A045357(n+1), A053027(n+1)]`
-/

namespace A141882.P14268901708626966799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P14268901708626966799

namespace A141882

/-- `∩[A045357(n+1), A053027(n+1)]` -/
def P14268901708626966799.Spec : Prop :=
  ∀ n, (P14268901708626966799.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P8195443466101263556

`∩[A045380(n+1), A053027(n+1)]`
-/

namespace A141882.P8195443466101263556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P8195443466101263556

namespace A141882

/-- `∩[A045380(n+1), A053027(n+1)]` -/
def P8195443466101263556.Spec : Prop :=
  ∀ n, (P8195443466101263556.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P5585183699776919932

`∩[A053027(n+1), A090652(n+1)]`
-/

namespace A141882.P5585183699776919932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P5585183699776919932

namespace A141882

/-- `∩[A053027(n+1), A090652(n+1)]` -/
def P5585183699776919932.Spec : Prop :=
  ∀ n, (P5585183699776919932.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P401140693924479561

`∩[A090652(n+1), A106865(n+1)]`
-/

namespace A141882.P401140693924479561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P401140693924479561

namespace A141882

/-- `∩[A090652(n+1), A106865(n+1)]` -/
def P401140693924479561.Spec : Prop :=
  ∀ n, (P401140693924479561.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P16320123374221037305

`∩[A030432(n+1), A139513(n+1)]`
-/

namespace A141882.P16320123374221037305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P16320123374221037305

namespace A141882

/-- `∩[A030432(n+1), A139513(n+1)]` -/
def P16320123374221037305.Spec : Prop :=
  ∀ n, (P16320123374221037305.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P4335222827155338152

`∩[A045357(n+1), A139513(n+1)]`
-/

namespace A141882.P4335222827155338152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P4335222827155338152

namespace A141882

/-- `∩[A045357(n+1), A139513(n+1)]` -/
def P4335222827155338152.Spec : Prop :=
  ∀ n, (P4335222827155338152.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P17008551743425718349

`∩[A045380(n+1), A139513(n+1)]`
-/

namespace A141882.P17008551743425718349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P17008551743425718349

namespace A141882

/-- `∩[A045380(n+1), A139513(n+1)]` -/
def P17008551743425718349.Spec : Prop :=
  ∀ n, (P17008551743425718349.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P18348845032037281060

`∩[A090652(n+1), A139513(n+1)]`
-/

namespace A141882.P18348845032037281060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P18348845032037281060

namespace A141882

/-- `∩[A090652(n+1), A139513(n+1)]` -/
def P18348845032037281060.Spec : Prop :=
  ∀ n, (P18348845032037281060.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P11250576254722149685

`∩[A030432(n+1), A240920(n+1)]`
-/

namespace A141882.P11250576254722149685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P11250576254722149685

namespace A141882

/-- `∩[A030432(n+1), A240920(n+1)]` -/
def P11250576254722149685.Spec : Prop :=
  ∀ n, (P11250576254722149685.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P11482801457861823173

`∩[A296922(n+1), A030432(n+1)]`
-/

namespace A141882.P11482801457861823173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P11482801457861823173

namespace A141882

/-- `∩[A296922(n+1), A030432(n+1)]` -/
def P11482801457861823173.Spec : Prop :=
  ∀ n, (P11482801457861823173.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P13939577441969568189

`∩[A045349(n+1), A122870(n+1)]`
-/

namespace A141882.P13939577441969568189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P13939577441969568189

namespace A141882

/-- `∩[A045349(n+1), A122870(n+1)]` -/
def P13939577441969568189.Spec : Prop :=
  ∀ n, (P13939577441969568189.a n : ℤ) = A141882 (n + 1)

end A141882

/-! ## A141882.P2582716000513212455

`∩[A045372(n+1), A122870(n+1)]`
-/

namespace A141882.P2582716000513212455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141882.P2582716000513212455

namespace A141882

/-- `∩[A045372(n+1), A122870(n+1)]` -/
def P2582716000513212455.Spec : Prop :=
  ∀ n, (P2582716000513212455.a n : ℤ) = A141882 (n + 1)

end A141882

/-!
# A141883: Primes congruent to 9 mod 20.

The programs for A141883, the canonical program `A141883.P15311569765601762904` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141883 has offset 1).

The definition of A141883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141883.P15311569765601762904

`p?[4*5*n+9]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141883

/-- `p?[4*5*n+9]` -/
def P15311569765601762904.Spec : Prop :=
  ∀ n, (P15311569765601762904.a n : ℤ) = A141883 (n + 1)

theorem P15311569765601762904.correct : P15311569765601762904.Spec := by
  intro n
  simp only [A141883, Nat.add_sub_cancel]

end A141883

/-! ## A141883.P17081596444027163754

`∏{p}[p?[20*n-51], #]`
-/

namespace A141883.P17081596444027163754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * n : ℤ) - 51

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141883.P17081596444027163754

namespace A141883

/-- `∏{p}[p?[20*n-51], #]` -/
def P17081596444027163754.Spec : Prop :=
  ∀ n, (P17081596444027163754.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P8074821419947839136

`or(1, p?[a(n-1)+20])` with `a(0)=9`
-/

namespace A141883.P8074821419947839136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141883.P8074821419947839136

namespace A141883

/-- `or(1, p?[a(n-1)+20])` -/
def P8074821419947839136.Spec : Prop :=
  ∀ n, (P8074821419947839136.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P3569993341495404147

`∩[A008846(n+1), A030433(n+1)]`
-/

namespace A141883.P3569993341495404147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P3569993341495404147

namespace A141883

/-- `∩[A008846(n+1), A030433(n+1)]` -/
def P3569993341495404147.Spec : Prop :=
  ∀ n, (P3569993341495404147.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P735005855718108848

`∩[A030433(n+1), A033205(n+1)]`
-/

namespace A141883.P735005855718108848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P735005855718108848

namespace A141883

/-- `∩[A030433(n+1), A033205(n+1)]` -/
def P735005855718108848.Spec : Prop :=
  ∀ n, (P735005855718108848.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P16918849418695172025

`∩[A030433(n+1), A216815(n+1)]`
-/

namespace A141883.P16918849418695172025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P16918849418695172025

namespace A141883

/-- `∩[A030433(n+1), A216815(n+1)]` -/
def P16918849418695172025.Spec : Prop :=
  ∀ n, (P16918849418695172025.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P7422756576704781234

`∩[A045457(n+1), A216815(n+1)]`
-/

namespace A141883.P7422756576704781234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P7422756576704781234

namespace A141883

/-- `∩[A045457(n+1), A216815(n+1)]` -/
def P7422756576704781234.Spec : Prop :=
  ∀ n, (P7422756576704781234.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P17869977935545084550

`∩[A030433(n+1), A091729(n+1)]`
-/

namespace A141883.P17869977935545084550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P17869977935545084550

namespace A141883

/-- `∩[A030433(n+1), A091729(n+1)]` -/
def P17869977935545084550.Spec : Prop :=
  ∀ n, (P17869977935545084550.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P13857599665542276540

`∩[A004618(n+1), A033205(n+1)]`
-/

namespace A141883.P13857599665542276540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P13857599665542276540

namespace A141883

/-- `∩[A004618(n+1), A033205(n+1)]` -/
def P13857599665542276540.Spec : Prop :=
  ∀ n, (P13857599665542276540.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P4044499099610346931

`∩[A030433(n+1), A191218(n+1)]`
-/

namespace A141883.P4044499099610346931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P4044499099610346931

namespace A141883

/-- `∩[A030433(n+1), A191218(n+1)]` -/
def P4044499099610346931.Spec : Prop :=
  ∀ n, (P4044499099610346931.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P15288816368856838997

`∩[A210499(n+1), A004618(n+1)]`
-/

namespace A141883.P15288816368856838997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P15288816368856838997

namespace A141883

/-- `∩[A210499(n+1), A004618(n+1)]` -/
def P15288816368856838997.Spec : Prop :=
  ∀ n, (P15288816368856838997.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P9757895803976601832

`∩[A004618(n+1), A096785(n+1)]`
-/

namespace A141883.P9757895803976601832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P9757895803976601832

namespace A141883

/-- `∩[A004618(n+1), A096785(n+1)]` -/
def P9757895803976601832.Spec : Prop :=
  ∀ n, (P9757895803976601832.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P11483769059832745670

`∩[A030433(n+1), A096785(n+1)]`
-/

namespace A141883.P11483769059832745670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P11483769059832745670

namespace A141883

/-- `∩[A030433(n+1), A096785(n+1)]` -/
def P11483769059832745670.Spec : Prop :=
  ∀ n, (P11483769059832745670.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P12056250831903336151

`∩[A004618(n+1), A139513(n+1)]`
-/

namespace A141883.P12056250831903336151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P12056250831903336151

namespace A141883

/-- `∩[A004618(n+1), A139513(n+1)]` -/
def P12056250831903336151.Spec : Prop :=
  ∀ n, (P12056250831903336151.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P8740875607168679765

`∩[A030433(n+1), A139513(n+1)]`
-/

namespace A141883.P8740875607168679765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P8740875607168679765

namespace A141883

/-- `∩[A030433(n+1), A139513(n+1)]` -/
def P8740875607168679765.Spec : Prop :=
  ∀ n, (P8740875607168679765.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P9321857479210227930

`∩[A045457(n+1), A139513(n+1)]`
-/

namespace A141883.P9321857479210227930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P9321857479210227930

namespace A141883

/-- `∩[A045457(n+1), A139513(n+1)]` -/
def P9321857479210227930.Spec : Prop :=
  ∀ n, (P9321857479210227930.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P16465055329609351118

`∩[A002144(n+1), A004618(n+1)]`
-/

namespace A141883.P16465055329609351118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P16465055329609351118

namespace A141883

/-- `∩[A002144(n+1), A004618(n+1)]` -/
def P16465055329609351118.Spec : Prop :=
  ∀ n, (P16465055329609351118.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P18306188584065748775

`∩[A002313(n+1), A004618(n+1)]`
-/

namespace A141883.P18306188584065748775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P18306188584065748775

namespace A141883

/-- `∩[A002313(n+1), A004618(n+1)]` -/
def P18306188584065748775.Spec : Prop :=
  ∀ n, (P18306188584065748775.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P4503822895566863059

`∩[A002144(n+1), A030433(n+1)]`
-/

namespace A141883.P4503822895566863059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P4503822895566863059

namespace A141883

/-- `∩[A002144(n+1), A030433(n+1)]` -/
def P4503822895566863059.Spec : Prop :=
  ∀ n, (P4503822895566863059.a n : ℤ) = A141883 (n + 1)

end A141883

/-! ## A141883.P5299044404879625704

`∩[A002313(n+1), A030433(n+1)]`
-/

namespace A141883.P5299044404879625704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141883.P5299044404879625704

namespace A141883

/-- `∩[A002313(n+1), A030433(n+1)]` -/
def P5299044404879625704.Spec : Prop :=
  ∀ n, (P5299044404879625704.a n : ℤ) = A141883 (n + 1)

end A141883

/-!
# A141884: Primes congruent to 11 mod 20.

The programs for A141884, the canonical program `A141884.P14265556492563437523` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141884 has offset 1).

The definition of A141884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141884.P8753330856214555011

`∪[A117047(n+1), A142792(n+1)]`
-/

namespace A141884.P8753330856214555011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P8753330856214555011

namespace A141884

/-- `∪[A117047(n+1), A142792(n+1)]` -/
def P8753330856214555011.Spec : Prop :=
  ∀ n, (P8753330856214555011.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P17206069306969655807

`∪[A142195(n+1), A142187(n+1)]`
-/

namespace A141884.P17206069306969655807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P17206069306969655807

namespace A141884

/-- `∪[A142195(n+1), A142187(n+1)]` -/
def P17206069306969655807.Spec : Prop :=
  ∀ n, (P17206069306969655807.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P14265556492563437523

`p?[4*5*n-9]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141884

/-- `p?[4*5*n-9]` -/
def P14265556492563437523.Spec : Prop :=
  ∀ n, P14265556492563437523.a n = A141884 (n + 1)

theorem P14265556492563437523.correct : P14265556492563437523.Spec := by
  intro n
  simp only [A141884, Nat.add_sub_cancel]

end A141884

/-! ## A141884.P16483445601654934098

`or(1, p?[a(n-1)+20])` with `a(0)=11`
-/

namespace A141884.P16483445601654934098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141884.P16483445601654934098

namespace A141884

/-- `or(1, p?[a(n-1)+20])` -/
def P16483445601654934098.Spec : Prop :=
  ∀ n, (P16483445601654934098.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P11698611752871297021

`∩[A030430(n+1), A122869(n+1)]`
-/

namespace A141884.P11698611752871297021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P11698611752871297021

namespace A141884

/-- `∩[A030430(n+1), A122869(n+1)]` -/
def P11698611752871297021.Spec : Prop :=
  ∀ n, (P11698611752871297021.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P13057298630683686617

`∩[A090756(n+1), A122869(n+1)]`
-/

namespace A141884.P13057298630683686617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P13057298630683686617

namespace A141884

/-- `∩[A090756(n+1), A122869(n+1)]` -/
def P13057298630683686617.Spec : Prop :=
  ∀ n, (P13057298630683686617.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P14299918743673346464

`∩[A004615(n+1), A122869(n+1)]`
-/

namespace A141884.P14299918743673346464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P14299918743673346464

namespace A141884

/-- `∩[A004615(n+1), A122869(n+1)]` -/
def P14299918743673346464.Spec : Prop :=
  ∀ n, (P14299918743673346464.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P10325429252432614856

`∩[A045349(n+1), A122869(n+1)]`
-/

namespace A141884.P10325429252432614856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P10325429252432614856

namespace A141884

/-- `∩[A045349(n+1), A122869(n+1)]` -/
def P10325429252432614856.Spec : Prop :=
  ∀ n, (P10325429252432614856.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P3274379765910694419

`∩[A045372(n+1), A122869(n+1)]`
-/

namespace A141884.P3274379765910694419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P3274379765910694419

namespace A141884

/-- `∩[A045372(n+1), A122869(n+1)]` -/
def P3274379765910694419.Spec : Prop :=
  ∀ n, (P3274379765910694419.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P8331683872822651786

`∩[A002145(n+1), A004615(n+1)]`
-/

namespace A141884.P8331683872822651786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P8331683872822651786

namespace A141884

/-- `∩[A002145(n+1), A004615(n+1)]` -/
def P8331683872822651786.Spec : Prop :=
  ∀ n, (P8331683872822651786.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P4533277706796254981

`∩[A002145(n+1), A030430(n+1)]`
-/

namespace A141884.P4533277706796254981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P4533277706796254981

namespace A141884

/-- `∩[A002145(n+1), A030430(n+1)]` -/
def P4533277706796254981.Spec : Prop :=
  ∀ n, (P4533277706796254981.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P11159169751118728154

`∩[A002145(n+1), A045453(n+1)]`
-/

namespace A141884.P11159169751118728154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P11159169751118728154

namespace A141884

/-- `∩[A002145(n+1), A045453(n+1)]` -/
def P11159169751118728154.Spec : Prop :=
  ∀ n, (P11159169751118728154.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P7995916106912368422

`∩[A004615(n+1), A045326(n+1)]`
-/

namespace A141884.P7995916106912368422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P7995916106912368422

namespace A141884

/-- `∩[A004615(n+1), A045326(n+1)]` -/
def P7995916106912368422.Spec : Prop :=
  ∀ n, (P7995916106912368422.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P11488139521207687961

`∩[A030430(n+1), A045326(n+1)]`
-/

namespace A141884.P11488139521207687961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P11488139521207687961

namespace A141884

/-- `∩[A030430(n+1), A045326(n+1)]` -/
def P11488139521207687961.Spec : Prop :=
  ∀ n, (P11488139521207687961.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P7648638132824683648

`∩[A045326(n+1), A045453(n+1)]`
-/

namespace A141884.P7648638132824683648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P7648638132824683648

namespace A141884

/-- `∩[A045326(n+1), A045453(n+1)]` -/
def P7648638132824683648.Spec : Prop :=
  ∀ n, (P7648638132824683648.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P5341138844081080270

`∩[A002145(n+1), A090756(n+1)]`
-/

namespace A141884.P5341138844081080270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P5341138844081080270

namespace A141884

/-- `∩[A002145(n+1), A090756(n+1)]` -/
def P5341138844081080270.Spec : Prop :=
  ∀ n, (P5341138844081080270.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P14212582215050903772

`∩[A045326(n+1), A090756(n+1)]`
-/

namespace A141884.P14212582215050903772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P14212582215050903772

namespace A141884

/-- `∩[A045326(n+1), A090756(n+1)]` -/
def P14212582215050903772.Spec : Prop :=
  ∀ n, (P14212582215050903772.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P17184302571469840224

`∩[A003626(n+1), A004615(n+1)]`
-/

namespace A141884.P17184302571469840224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P17184302571469840224

namespace A141884

/-- `∩[A003626(n+1), A004615(n+1)]` -/
def P17184302571469840224.Spec : Prop :=
  ∀ n, (P17184302571469840224.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P9751428493802071052

`∩[A003626(n+1), A030430(n+1)]`
-/

namespace A141884.P9751428493802071052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P9751428493802071052

namespace A141884

/-- `∩[A003626(n+1), A030430(n+1)]` -/
def P9751428493802071052.Spec : Prop :=
  ∀ n, (P9751428493802071052.a n : ℤ) = A141884 (n + 1)

end A141884

/-! ## A141884.P3753066622818663143

`∩[A003626(n+1), A045453(n+1)]`
-/

namespace A141884.P3753066622818663143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141884.P3753066622818663143

namespace A141884

/-- `∩[A003626(n+1), A045453(n+1)]` -/
def P3753066622818663143.Spec : Prop :=
  ∀ n, (P3753066622818663143.a n : ℤ) = A141884 (n + 1)

end A141884

/-!
# A141885: Primes congruent to 13 mod 20.

The programs for A141885, the canonical program `A141885.P15696442900697318190` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141885 has offset 1).

The definition of A141885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141885.P10136637656083767095

`∪[A142196(n+1), A142188(n+1)]`
-/

namespace A141885.P10136637656083767095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P10136637656083767095

namespace A141885

/-- `∪[A142196(n+1), A142188(n+1)]` -/
def P10136637656083767095.Spec : Prop :=
  ∀ n, (P10136637656083767095.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P12647047766593952774

`∪[A142798(n+1), A142787(n+1)]`
-/

namespace A141885.P12647047766593952774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P12647047766593952774

namespace A141885

/-- `∪[A142798(n+1), A142787(n+1)]` -/
def P12647047766593952774.Spec : Prop :=
  ∀ n, (P12647047766593952774.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P15696442900697318190

`p?[4*5*n-7]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141885

/-- `p?[4*5*n-7]` -/
def P15696442900697318190.Spec : Prop :=
  ∀ n, P15696442900697318190.a n = A141885 (n + 1)

theorem P15696442900697318190.correct : P15696442900697318190.Spec := by
  intro n
  simp only [A141885, Nat.add_sub_cancel]

end A141885

/-! ## A141885.P99475696841348019

`∩[A008846(n+1), A030431(n+1)]`
-/

namespace A141885.P99475696841348019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P99475696841348019

namespace A141885

/-- `∩[A008846(n+1), A030431(n+1)]` -/
def P99475696841348019.Spec : Prop :=
  ∀ n, (P99475696841348019.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P160693331575828044

`∩[A030431(n+1), A122487(n+1)]`
-/

namespace A141885.P160693331575828044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P160693331575828044

namespace A141885

/-- `∩[A030431(n+1), A122487(n+1)]` -/
def P160693331575828044.Spec : Prop :=
  ∀ n, (P160693331575828044.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P6918431908054567247

`∩[A045414(n+1), A122487(n+1)]`
-/

namespace A141885.P6918431908054567247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P6918431908054567247

namespace A141885

/-- `∩[A045414(n+1), A122487(n+1)]` -/
def P6918431908054567247.Spec : Prop :=
  ∀ n, (P6918431908054567247.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P11955570454441614967

`∩[A030431(n+1), A053028(n+1)]`
-/

namespace A141885.P11955570454441614967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P11955570454441614967

namespace A141885

/-- `∩[A030431(n+1), A053028(n+1)]` -/
def P11955570454441614967.Spec : Prop :=
  ∀ n, (P11955570454441614967.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P6664489893885279497

`∩[A002144(n+1), A030431(n+1)]`
-/

namespace A141885.P6664489893885279497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P6664489893885279497

namespace A141885

/-- `∩[A002144(n+1), A030431(n+1)]` -/
def P6664489893885279497.Spec : Prop :=
  ∀ n, (P6664489893885279497.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P375414852461738457

`∩[A002313(n+1), A030431(n+1)]`
-/

namespace A141885.P375414852461738457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P375414852461738457

namespace A141885

/-- `∩[A002313(n+1), A030431(n+1)]` -/
def P375414852461738457.Spec : Prop :=
  ∀ n, (P375414852461738457.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P15589274100974898145

`∩[A280084(n+1), A030431(n+1)]`
-/

namespace A141885.P15589274100974898145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P15589274100974898145

namespace A141885

/-- `∩[A280084(n+1), A030431(n+1)]` -/
def P15589274100974898145.Spec : Prop :=
  ∀ n, (P15589274100974898145.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P4719144891613979268

`∩[A045429(n+1), A122487(n+1)]`
-/

namespace A141885.P4719144891613979268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P4719144891613979268

namespace A141885

/-- `∩[A045429(n+1), A122487(n+1)]` -/
def P4719144891613979268.Spec : Prop :=
  ∀ n, (P4719144891613979268.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P6040878255445742225

`∩[A045407(n+1), A122487(n+1)]`
-/

namespace A141885.P6040878255445742225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P6040878255445742225

namespace A141885

/-- `∩[A045407(n+1), A122487(n+1)]` -/
def P6040878255445742225.Spec : Prop :=
  ∀ n, (P6040878255445742225.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P4391718695031357067

`∩[A045413(n+1), A122487(n+1)]`
-/

namespace A141885.P4391718695031357067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P4391718695031357067

namespace A141885

/-- `∩[A045413(n+1), A122487(n+1)]` -/
def P4391718695031357067.Spec : Prop :=
  ∀ n, (P4391718695031357067.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P11459544157393922972

`∩[A045435(n+1), A122487(n+1)]`
-/

namespace A141885.P11459544157393922972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P11459544157393922972

namespace A141885

/-- `∩[A045435(n+1), A122487(n+1)]` -/
def P11459544157393922972.Spec : Prop :=
  ∀ n, (P11459544157393922972.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P6151785300455267290

`∩[A003626(n+1), A030431(n+1)]`
-/

namespace A141885.P6151785300455267290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P6151785300455267290

namespace A141885

/-- `∩[A003626(n+1), A030431(n+1)]` -/
def P6151785300455267290.Spec : Prop :=
  ∀ n, (P6151785300455267290.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P16874690861655131047

`∩[A003626(n+1), A045414(n+1)]`
-/

namespace A141885.P16874690861655131047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P16874690861655131047

namespace A141885

/-- `∩[A003626(n+1), A045414(n+1)]` -/
def P16874690861655131047.Spec : Prop :=
  ∀ n, (P16874690861655131047.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P5837821790538338648

`∩[A030431(n+1), A055025(n+1)]`
-/

namespace A141885.P5837821790538338648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P5837821790538338648

namespace A141885

/-- `∩[A030431(n+1), A055025(n+1)]` -/
def P5837821790538338648.Spec : Prop :=
  ∀ n, (P5837821790538338648.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P10975344642304835910

`∩[A030431(n+1), A120960(n+1)]`
-/

namespace A141885.P10975344642304835910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P10975344642304835910

namespace A141885

/-- `∩[A030431(n+1), A120960(n+1)]` -/
def P10975344642304835910.Spec : Prop :=
  ∀ n, (P10975344642304835910.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P15776149080886447555

`∩[A030431(n+1), A085759(n+1)]`
-/

namespace A141885.P15776149080886447555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P15776149080886447555

namespace A141885

/-- `∩[A030431(n+1), A085759(n+1)]` -/
def P15776149080886447555.Spec : Prop :=
  ∀ n, (P15776149080886447555.a n : ℤ) = A141885 (n + 1)

end A141885

/-! ## A141885.P16193381068174064381

`∩[A002144(n+1), A004617(n+1)]`
-/

namespace A141885.P16193381068174064381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141885.P16193381068174064381

namespace A141885

/-- `∩[A002144(n+1), A004617(n+1)]` -/
def P16193381068174064381.Spec : Prop :=
  ∀ n, (P16193381068174064381.a n : ℤ) = A141885 (n + 1)

end A141885

/-!
# A141886: Primes congruent to 17 mod 20.

The programs for A141886, the canonical program `A141886.P7425287249095554016` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141886 has offset 1).

The definition of A141886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141886.P7788241577113822187

`∪[A142189(n+1), A142197(n+1)]`
-/

namespace A141886.P7788241577113822187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P7788241577113822187

namespace A141886

/-- `∪[A142189(n+1), A142197(n+1)]` -/
def P7788241577113822187.Spec : Prop :=
  ∀ n, (P7788241577113822187.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P978670251640064923

`∪[A142793(n+1), A142788(n+1)]`
-/

namespace A141886.P978670251640064923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P978670251640064923

namespace A141886

/-- `∪[A142793(n+1), A142788(n+1)]` -/
def P978670251640064923.Spec : Prop :=
  ∀ n, (P978670251640064923.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P7425287249095554016

`p?[4*5*n-3]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141886

/-- `p?[4*5*n-3]` -/
def P7425287249095554016.Spec : Prop :=
  ∀ n, P7425287249095554016.a n = A141886 (n + 1)

theorem P7425287249095554016.correct : P7425287249095554016.Spec := by
  intro n
  simp only [A141886, Nat.add_sub_cancel]

end A141886

/-! ## A141886.P3619550957152920118

`∏{d}[p?[a(n-1)+20], #]` with `a(0)=17`
-/

namespace A141886.P3619550957152920118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141886.P3619550957152920118

namespace A141886

/-- `∏{d}[p?[a(n-1)+20], #]` -/
def P3619550957152920118.Spec : Prop :=
  ∀ n, (P3619550957152920118.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P12407308499697447121

`∩[A008846(n+1), A030432(n+1)]`
-/

namespace A141886.P12407308499697447121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P12407308499697447121

namespace A141886

/-- `∩[A008846(n+1), A030432(n+1)]` -/
def P12407308499697447121.Spec : Prop :=
  ∀ n, (P12407308499697447121.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P1500942490130552311

`∩[A030432(n+1), A122487(n+1)]`
-/

namespace A141886.P1500942490130552311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P1500942490130552311

namespace A141886

/-- `∩[A030432(n+1), A122487(n+1)]` -/
def P1500942490130552311.Spec : Prop :=
  ∀ n, (P1500942490130552311.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P17247256908875488304

`∩[A030432(n+1), A053028(n+1)]`
-/

namespace A141886.P17247256908875488304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P17247256908875488304

namespace A141886

/-- `∩[A030432(n+1), A053028(n+1)]` -/
def P17247256908875488304.Spec : Prop :=
  ∀ n, (P17247256908875488304.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P3085112650806881136

`∩[A045380(n+1), A053028(n+1)]`
-/

namespace A141886.P3085112650806881136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P3085112650806881136

namespace A141886

/-- `∩[A045380(n+1), A053028(n+1)]` -/
def P3085112650806881136.Spec : Prop :=
  ∀ n, (P3085112650806881136.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P9943317439386506881

`∩[A030432(n+1), A191218(n+1)]`
-/

namespace A141886.P9943317439386506881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P9943317439386506881

namespace A141886

/-- `∩[A030432(n+1), A191218(n+1)]` -/
def P9943317439386506881.Spec : Prop :=
  ∀ n, (P9943317439386506881.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P1265566598272162402

`∩[A053028(n+1), A090652(n+1)]`
-/

namespace A141886.P1265566598272162402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P1265566598272162402

namespace A141886

/-- `∩[A053028(n+1), A090652(n+1)]` -/
def P1265566598272162402.Spec : Prop :=
  ∀ n, (P1265566598272162402.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P10173642993303221295

`∩[A090652(n+1), A122487(n+1)]`
-/

namespace A141886.P10173642993303221295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P10173642993303221295

namespace A141886

/-- `∩[A090652(n+1), A122487(n+1)]` -/
def P10173642993303221295.Spec : Prop :=
  ∀ n, (P10173642993303221295.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P1146297095758663723

`∩[A002144(n+1), A030432(n+1)]`
-/

namespace A141886.P1146297095758663723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P1146297095758663723

namespace A141886

/-- `∩[A002144(n+1), A030432(n+1)]` -/
def P1146297095758663723.Spec : Prop :=
  ∀ n, (P1146297095758663723.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P3159100766012640133

`∩[A002144(n+1), A045380(n+1)]`
-/

namespace A141886.P3159100766012640133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P3159100766012640133

namespace A141886

/-- `∩[A002144(n+1), A045380(n+1)]` -/
def P3159100766012640133.Spec : Prop :=
  ∀ n, (P3159100766012640133.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P4542969706420126590

`∩[A002144(n+1), A090652(n+1)]`
-/

namespace A141886.P4542969706420126590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P4542969706420126590

namespace A141886

/-- `∩[A002144(n+1), A090652(n+1)]` -/
def P4542969706420126590.Spec : Prop :=
  ∀ n, (P4542969706420126590.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P8775448372325355779

`∩[A002313(n+1), A030432(n+1)]`
-/

namespace A141886.P8775448372325355779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P8775448372325355779

namespace A141886

/-- `∩[A002313(n+1), A030432(n+1)]` -/
def P8775448372325355779.Spec : Prop :=
  ∀ n, (P8775448372325355779.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P14595913989987986176

`∩[A002313(n+1), A090652(n+1)]`
-/

namespace A141886.P14595913989987986176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P14595913989987986176

namespace A141886

/-- `∩[A002313(n+1), A090652(n+1)]` -/
def P14595913989987986176.Spec : Prop :=
  ∀ n, (P14595913989987986176.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P11407199044705865362

`∩[A030432(n+1), A280084(n+1)]`
-/

namespace A141886.P11407199044705865362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P11407199044705865362

namespace A141886

/-- `∩[A030432(n+1), A280084(n+1)]` -/
def P11407199044705865362.Spec : Prop :=
  ∀ n, (P11407199044705865362.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P4531500925538947210

`∩[A003626(n+1), A030432(n+1)]`
-/

namespace A141886.P4531500925538947210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P4531500925538947210

namespace A141886

/-- `∩[A003626(n+1), A030432(n+1)]` -/
def P4531500925538947210.Spec : Prop :=
  ∀ n, (P4531500925538947210.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P17261102760446529356

`∩[A003626(n+1), A045357(n+1)]`
-/

namespace A141886.P17261102760446529356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P17261102760446529356

namespace A141886

/-- `∩[A003626(n+1), A045357(n+1)]` -/
def P17261102760446529356.Spec : Prop :=
  ∀ n, (P17261102760446529356.a n : ℤ) = A141886 (n + 1)

end A141886

/-! ## A141886.P6313956585411544055

`∩[A003626(n+1), A045380(n+1)]`
-/

namespace A141886.P6313956585411544055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141886.P6313956585411544055

namespace A141886

/-- `∩[A003626(n+1), A045380(n+1)]` -/
def P6313956585411544055.Spec : Prop :=
  ∀ n, (P6313956585411544055.a n : ℤ) = A141886 (n + 1)

end A141886

/-!
# A141887: Primes congruent to 19 mod 20.

The programs for A141887, the canonical program `A141887.P17708859818427022684` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141887 has offset 1).

The definition of A141887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141887.P16322303095780495809

`∪[A142799(n+1), A142789(n+1)]`
-/

namespace A141887.P16322303095780495809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P16322303095780495809

namespace A141887

/-- `∪[A142799(n+1), A142789(n+1)]` -/
def P16322303095780495809.Spec : Prop :=
  ∀ n, (P16322303095780495809.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P17708859818427022684

`p?[20*n-1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141887

/-- `p?[20*n-1]` -/
def P17708859818427022684.Spec : Prop :=
  ∀ n, P17708859818427022684.a n = A141887 (n + 1)

theorem P17708859818427022684.correct : P17708859818427022684.Spec := by
  intro n
  simp only [A141887, Nat.add_sub_cancel]

end A141887

/-! ## A141887.P6743619112038015169

`or(1, p?[4*5*n+19])`
-/

namespace A141887.P6743619112038015169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (5 * n) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141887.P6743619112038015169

namespace A141887

/-- `or(1, p?[4*5*n+19])` -/
def P6743619112038015169.Spec : Prop :=
  ∀ n, (P6743619112038015169.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P13677545904209307418

`p?[19*(n+1)+n]+val(A016969(n), 2)`
-/

namespace A141887.P13677545904209307418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + SequenceMachineLib.valuation (A016969 n).toNat 2

end

end A141887.P13677545904209307418

namespace A141887

/-- `p?[19*(n+1)+n]+val(A016969(n), 2)` -/
def P13677545904209307418.Spec : Prop :=
  ∀ n, (P13677545904209307418.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P11141611617794974219

`∩[A030433(n+1), A122869(n+1)]`
-/

namespace A141887.P11141611617794974219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P11141611617794974219

namespace A141887

/-- `∩[A030433(n+1), A122869(n+1)]` -/
def P11141611617794974219.Spec : Prop :=
  ∀ n, (P11141611617794974219.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P5010944377685509612

`∩[A045457(n+1), A122869(n+1)]`
-/

namespace A141887.P5010944377685509612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P5010944377685509612

namespace A141887

/-- `∩[A045457(n+1), A122869(n+1)]` -/
def P5010944377685509612.Spec : Prop :=
  ∀ n, (P5010944377685509612.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P3448458230314277669

`∩[A004618(n+1), A122869(n+1)]`
-/

namespace A141887.P3448458230314277669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P3448458230314277669

namespace A141887

/-- `∩[A004618(n+1), A122869(n+1)]` -/
def P3448458230314277669.Spec : Prop :=
  ∀ n, (P3448458230314277669.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P3051060394229992475

`∩[A045435(n+1), A122869(n+1)]`
-/

namespace A141887.P3051060394229992475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P3051060394229992475

namespace A141887

/-- `∩[A045435(n+1), A122869(n+1)]` -/
def P3051060394229992475.Spec : Prop :=
  ∀ n, (P3051060394229992475.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P10938757118031003788

`∩[A045413(n+1), A122869(n+1)]`
-/

namespace A141887.P10938757118031003788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P10938757118031003788

namespace A141887

/-- `∩[A045413(n+1), A122869(n+1)]` -/
def P10938757118031003788.Spec : Prop :=
  ∀ n, (P10938757118031003788.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P17009335099857614681

`∩[A045356(n+1), A122869(n+1)]`
-/

namespace A141887.P17009335099857614681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P17009335099857614681

namespace A141887

/-- `∩[A045356(n+1), A122869(n+1)]` -/
def P17009335099857614681.Spec : Prop :=
  ∀ n, (P17009335099857614681.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P8165899250288490804

`∩[A045378(n+1), A122869(n+1)]`
-/

namespace A141887.P8165899250288490804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P8165899250288490804

namespace A141887

/-- `∩[A045378(n+1), A122869(n+1)]` -/
def P8165899250288490804.Spec : Prop :=
  ∀ n, (P8165899250288490804.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P15381743087021585224

`∩[A002145(n+1), A004618(n+1)]`
-/

namespace A141887.P15381743087021585224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P15381743087021585224

namespace A141887

/-- `∩[A002145(n+1), A004618(n+1)]` -/
def P15381743087021585224.Spec : Prop :=
  ∀ n, (P15381743087021585224.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P11396537974230399597

`∩[A002145(n+1), A030433(n+1)]`
-/

namespace A141887.P11396537974230399597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P11396537974230399597

namespace A141887

/-- `∩[A002145(n+1), A030433(n+1)]` -/
def P11396537974230399597.Spec : Prop :=
  ∀ n, (P11396537974230399597.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P2771105730899530838

`∩[A002145(n+1), A045457(n+1)]`
-/

namespace A141887.P2771105730899530838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P2771105730899530838

namespace A141887

/-- `∩[A002145(n+1), A045457(n+1)]` -/
def P2771105730899530838.Spec : Prop :=
  ∀ n, (P2771105730899530838.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P4910216217628418525

`∩[A004618(n+1), A045326(n+1)]`
-/

namespace A141887.P4910216217628418525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P4910216217628418525

namespace A141887

/-- `∩[A004618(n+1), A045326(n+1)]` -/
def P4910216217628418525.Spec : Prop :=
  ∀ n, (P4910216217628418525.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P2528501471838725399

`∩[A030433(n+1), A045326(n+1)]`
-/

namespace A141887.P2528501471838725399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P2528501471838725399

namespace A141887

/-- `∩[A030433(n+1), A045326(n+1)]` -/
def P2528501471838725399.Spec : Prop :=
  ∀ n, (P2528501471838725399.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P16462016762346173019

`∩[A045326(n+1), A045457(n+1)]`
-/

namespace A141887.P16462016762346173019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P16462016762346173019

namespace A141887

/-- `∩[A045326(n+1), A045457(n+1)]` -/
def P16462016762346173019.Spec : Prop :=
  ∀ n, (P16462016762346173019.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P9215128531511022734

`∩[A002145(n+1), A327753(n+1)]`
-/

namespace A141887.P9215128531511022734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P9215128531511022734

namespace A141887

/-- `∩[A002145(n+1), A327753(n+1)]` -/
def P9215128531511022734.Spec : Prop :=
  ∀ n, (P9215128531511022734.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P17581517379631066255

`∩[A003626(n+1), A004618(n+1)]`
-/

namespace A141887.P17581517379631066255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P17581517379631066255

namespace A141887

/-- `∩[A003626(n+1), A004618(n+1)]` -/
def P17581517379631066255.Spec : Prop :=
  ∀ n, (P17581517379631066255.a n : ℤ) = A141887 (n + 1)

end A141887

/-! ## A141887.P17323397863622397589

`∩[A003626(n+1), A030433(n+1)]`
-/

namespace A141887.P17323397863622397589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141887.P17323397863622397589

namespace A141887

/-- `∩[A003626(n+1), A030433(n+1)]` -/
def P17323397863622397589.Spec : Prop :=
  ∀ n, (P17323397863622397589.a n : ℤ) = A141887 (n + 1)

end A141887

/-!
# A141888: Primes congruent to 2 mod 21.

The programs for A141888, the canonical program `A141888.P3817205861600530179` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141888 has offset 1).

The definition of A141888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141888.P17583558482114520159

`∪[A007352(n+1), A142244(n+1)]`
-/

namespace A141888.P17583558482114520159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P17583558482114520159

namespace A141888

/-- `∪[A007352(n+1), A142244(n+1)]` -/
def P17583558482114520159.Spec : Prop :=
  ∀ n, (P17583558482114520159.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P13280868666165065847

`∪[A142244(n+1), A142890(n+1)]`
-/

namespace A141888.P13280868666165065847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P13280868666165065847

namespace A141888

/-- `∪[A142244(n+1), A142890(n+1)]` -/
def P13280868666165065847.Spec : Prop :=
  ∀ n, (P13280868666165065847.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P13946229027594898253

`∪[A201603(n+1), A142244(n+1)]`
-/

namespace A141888.P13946229027594898253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P13946229027594898253

namespace A141888

/-- `∪[A201603(n+1), A142244(n+1)]` -/
def P13946229027594898253.Spec : Prop :=
  ∀ n, (P13946229027594898253.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P12857361318742178886

`∪[A285811(n+1), A142244(n+1)]`
-/

namespace A141888.P12857361318742178886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P12857361318742178886

namespace A141888

/-- `∪[A285811(n+1), A142244(n+1)]` -/
def P12857361318742178886.Spec : Prop :=
  ∀ n, (P12857361318742178886.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P3817205861600530179

`p?[3*7*n+2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141888

/-- `p?[3*7*n+2]` -/
def P3817205861600530179.Spec : Prop :=
  ∀ n, (P3817205861600530179.a n : ℤ) = A141888 (n + 1)

theorem P3817205861600530179.correct : P3817205861600530179.Spec := by
  intro n
  simp only [A141888, Nat.add_sub_cancel]

end A141888

/-! ## A141888.P17491168368559536189

`∏{d}[p?[a(n-1)+21], #]` with `a(0)=2`
-/

namespace A141888.P17491168368559536189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141888.P17491168368559536189

namespace A141888

/-- `∏{d}[p?[a(n-1)+21], #]` -/
def P17491168368559536189.Spec : Prop :=
  ∀ n, (P17491168368559536189.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P4078503266455401499

`A000027(p?[21*n+2])`
-/

namespace A141888.P4078503266455401499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141888.P4078503266455401499

namespace A141888

/-- `A000027(p?[21*n+2])` -/
def P4078503266455401499.Spec : Prop :=
  ∀ n, P4078503266455401499.a n = A141888 (n + 1)

end A141888

/-! ## A141888.P2092809691823911069

`∩[A045383(n+1), A106927(n+1)]`
-/

namespace A141888.P2092809691823911069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P2092809691823911069

namespace A141888

/-- `∩[A045383(n+1), A106927(n+1)]` -/
def P2092809691823911069.Spec : Prop :=
  ∀ n, (P2092809691823911069.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P8881760637237218867

`∩[A045392(n+1), A106927(n+1)]`
-/

namespace A141888.P8881760637237218867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P8881760637237218867

namespace A141888

/-- `∩[A045392(n+1), A106927(n+1)]` -/
def P8881760637237218867.Spec : Prop :=
  ∀ n, (P8881760637237218867.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P15628047072291096874

`∩[A045368(n+1), A106927(n+1)]`
-/

namespace A141888.P15628047072291096874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P15628047072291096874

namespace A141888

/-- `∩[A045368(n+1), A106927(n+1)]` -/
def P15628047072291096874.Spec : Prop :=
  ∀ n, (P15628047072291096874.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P5759463993939845370

`∩[A045333(n+1), A106927(n+1)]`
-/

namespace A141888.P5759463993939845370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P5759463993939845370

namespace A141888

/-- `∩[A045333(n+1), A106927(n+1)]` -/
def P5759463993939845370.Spec : Prop :=
  ∀ n, (P5759463993939845370.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P69934121295271149

`∩[A045343(n+1), A106927(n+1)]`
-/

namespace A141888.P69934121295271149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P69934121295271149

namespace A141888

/-- `∩[A045343(n+1), A106927(n+1)]` -/
def P69934121295271149.Spec : Prop :=
  ∀ n, (P69934121295271149.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P10286583002892517590

`∩[A045359(n+1), A106927(n+1)]`
-/

namespace A141888.P10286583002892517590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P10286583002892517590

namespace A141888

/-- `∩[A045359(n+1), A106927(n+1)]` -/
def P10286583002892517590.Spec : Prop :=
  ∀ n, (P10286583002892517590.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P8684055485748437702

`∩[A045377(n+1), A106927(n+1)]`
-/

namespace A141888.P8684055485748437702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P8684055485748437702

namespace A141888

/-- `∩[A045377(n+1), A106927(n+1)]` -/
def P8684055485748437702.Spec : Prop :=
  ∀ n, (P8684055485748437702.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P7077184355021860569

`∩[A045389(n+1), A106927(n+1)]`
-/

namespace A141888.P7077184355021860569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P7077184355021860569

namespace A141888

/-- `∩[A045389(n+1), A106927(n+1)]` -/
def P7077184355021860569.Spec : Prop :=
  ∀ n, (P7077184355021860569.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P3222185766112541459

`∩[A004620(n+1), A106927(n+1)]`
-/

namespace A141888.P3222185766112541459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P3222185766112541459

namespace A141888

/-- `∩[A004620(n+1), A106927(n+1)]` -/
def P3222185766112541459.Spec : Prop :=
  ∀ n, (P3222185766112541459.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P6641277000393094368

`∩[A045329(n+1), A106927(n+1)]`
-/

namespace A141888.P6641277000393094368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P6641277000393094368

namespace A141888

/-- `∩[A045329(n+1), A106927(n+1)]` -/
def P6641277000393094368.Spec : Prop :=
  ∀ n, (P6641277000393094368.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P14817143172421207617

`∩[A045341(n+1), A106927(n+1)]`
-/

namespace A141888.P14817143172421207617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P14817143172421207617

namespace A141888

/-- `∩[A045341(n+1), A106927(n+1)]` -/
def P14817143172421207617.Spec : Prop :=
  ∀ n, (P14817143172421207617.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P7774057586141166947

`∩[A045365(n+1), A106927(n+1)]`
-/

namespace A141888.P7774057586141166947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P7774057586141166947

namespace A141888

/-- `∩[A045365(n+1), A106927(n+1)]` -/
def P7774057586141166947.Spec : Prop :=
  ∀ n, (P7774057586141166947.a n : ℤ) = A141888 (n + 1)

end A141888

/-! ## A141888.P7560454792564732809

`∩[A004620(n+1), A161504(n+1)]`
-/

namespace A141888.P7560454792564732809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141888.P7560454792564732809

namespace A141888

/-- `∩[A004620(n+1), A161504(n+1)]` -/
def P7560454792564732809.Spec : Prop :=
  ∀ n, (P7560454792564732809.a n : ℤ) = A141888 (n + 1)

end A141888

/-!
# A141889: Primes congruent to 4 mod 21.

The programs for A141889, the canonical program `A141889.P7602993043577355867` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141889 has offset 1).

The definition of A141889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141889.P7602993043577355867

`p?[21*n+4]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141889

/-- `p?[21*n+4]` -/
def P7602993043577355867.Spec : Prop :=
  ∀ n, (P7602993043577355867.a n : ℤ) = A141889 (n + 1)

theorem P7602993043577355867.correct : P7602993043577355867.Spec := by
  intro n
  simp only [A141889, Nat.add_sub_cancel]

end A141889

/-! ## A141889.P7807161527773465137

`or(1, p?[a(n-1)+21])` with `a(0)=4`
-/

namespace A141889.P7807161527773465137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141889.P7807161527773465137

namespace A141889

/-- `or(1, p?[a(n-1)+21])` -/
def P7807161527773465137.Spec : Prop :=
  ∀ n, (P7807161527773465137.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P12829486270563173030

`∏{d}[p?[a(n-1)+21], #]` with `a(0)=4`
-/

namespace A141889.P12829486270563173030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141889.P12829486270563173030

namespace A141889

/-- `∏{d}[p?[a(n-1)+21], #]` -/
def P12829486270563173030.Spec : Prop :=
  ∀ n, (P12829486270563173030.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P15824047297421384829

`∑{p}[p?[a(n-1)+21], #]` with `a(0)=4`
-/

namespace A141889.P15824047297421384829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141889.P15824047297421384829

namespace A141889

/-- `∑{p}[p?[a(n-1)+21], #]` -/
def P15824047297421384829.Spec : Prop :=
  ∀ n, (P15824047297421384829.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P8191195110057579465

`∏{p}[p?[a(n-1)+21], #]` with `a(0)=4`
-/

namespace A141889.P8191195110057579465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141889.P8191195110057579465

namespace A141889

/-- `∏{p}[p?[a(n-1)+21], #]` -/
def P8191195110057579465.Spec : Prop :=
  ∀ n, (P8191195110057579465.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P17139816674104260928

`∩[A004622(n+1), A139492(n+1)]`
-/

namespace A141889.P17139816674104260928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P17139816674104260928

namespace A141889

/-- `∩[A004622(n+1), A139492(n+1)]` -/
def P17139816674104260928.Spec : Prop :=
  ∀ n, (P17139816674104260928.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P8325223155617463050

`∩[A045471(n+1), A139492(n+1)]`
-/

namespace A141889.P8325223155617463050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P8325223155617463050

namespace A141889

/-- `∩[A045471(n+1), A139492(n+1)]` -/
def P8325223155617463050.Spec : Prop :=
  ∀ n, (P8325223155617463050.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P6241361709445494127

`∩[A045452(n+1), A139492(n+1)]`
-/

namespace A141889.P6241361709445494127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P6241361709445494127

namespace A141889

/-- `∩[A045452(n+1), A139492(n+1)]` -/
def P6241361709445494127.Spec : Prop :=
  ∀ n, (P6241361709445494127.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P4142742497414404627

`∩[A045432(n+1), A139492(n+1)]`
-/

namespace A141889.P4142742497414404627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P4142742497414404627

namespace A141889

/-- `∩[A045432(n+1), A139492(n+1)]` -/
def P4142742497414404627.Spec : Prop :=
  ∀ n, (P4142742497414404627.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P17269426034369055315

`∩[A045467(n+1), A139492(n+1)]`
-/

namespace A141889.P17269426034369055315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P17269426034369055315

namespace A141889

/-- `∩[A045467(n+1), A139492(n+1)]` -/
def P17269426034369055315.Spec : Prop :=
  ∀ n, (P17269426034369055315.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P12300441873300030001

`∩[A002476(n+1), A004622(n+1)]`
-/

namespace A141889.P12300441873300030001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P12300441873300030001

namespace A141889

/-- `∩[A002476(n+1), A004622(n+1)]` -/
def P12300441873300030001.Spec : Prop :=
  ∀ n, (P12300441873300030001.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P557206992793562626

`∩[A004622(n+1), A007645(n+1)]`
-/

namespace A141889.P557206992793562626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P557206992793562626

namespace A141889

/-- `∩[A004622(n+1), A007645(n+1)]` -/
def P557206992793562626.Spec : Prop :=
  ∀ n, (P557206992793562626.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P4616848513960796223

`∩[A002476(n+1), A045471(n+1)]`
-/

namespace A141889.P4616848513960796223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P4616848513960796223

namespace A141889

/-- `∩[A002476(n+1), A045471(n+1)]` -/
def P4616848513960796223.Spec : Prop :=
  ∀ n, (P4616848513960796223.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P9072461646545697700

`∩[A004622(n+1), A045331(n+1)]`
-/

namespace A141889.P9072461646545697700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P9072461646545697700

namespace A141889

/-- `∩[A004622(n+1), A045331(n+1)]` -/
def P9072461646545697700.Spec : Prop :=
  ∀ n, (P9072461646545697700.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P14639150596384136381

`∩[A004622(n+1), A045375(n+1)]`
-/

namespace A141889.P14639150596384136381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P14639150596384136381

namespace A141889

/-- `∩[A004622(n+1), A045375(n+1)]` -/
def P14639150596384136381.Spec : Prop :=
  ∀ n, (P14639150596384136381.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P2254839568321145593

`∩[A007645(n+1), A045471(n+1)]`
-/

namespace A141889.P2254839568321145593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P2254839568321145593

namespace A141889

/-- `∩[A007645(n+1), A045471(n+1)]` -/
def P2254839568321145593.Spec : Prop :=
  ∀ n, (P2254839568321145593.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P8274367457687466504

`∩[A045331(n+1), A045471(n+1)]`
-/

namespace A141889.P8274367457687466504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P8274367457687466504

namespace A141889

/-- `∩[A045331(n+1), A045471(n+1)]` -/
def P8274367457687466504.Spec : Prop :=
  ∀ n, (P8274367457687466504.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P6220960689261484733

`∩[A045375(n+1), A045471(n+1)]`
-/

namespace A141889.P6220960689261484733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P6220960689261484733

namespace A141889

/-- `∩[A045375(n+1), A045471(n+1)]` -/
def P6220960689261484733.Spec : Prop :=
  ∀ n, (P6220960689261484733.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P16103430688293996735

`∩[A045471(n+1), A123365(n+1)]`
-/

namespace A141889.P16103430688293996735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P16103430688293996735

namespace A141889

/-- `∩[A045471(n+1), A123365(n+1)]` -/
def P16103430688293996735.Spec : Prop :=
  ∀ n, (P16103430688293996735.a n : ℤ) = A141889 (n + 1)

end A141889

/-! ## A141889.P5173771330117052664

`∩[A004622(n+1), A279815(n+1)]`
-/

namespace A141889.P5173771330117052664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141889.P5173771330117052664

namespace A141889

/-- `∩[A004622(n+1), A279815(n+1)]` -/
def P5173771330117052664.Spec : Prop :=
  ∀ n, (P5173771330117052664.a n : ℤ) = A141889 (n + 1)

end A141889

/-!
# A141890: Primes congruent to 5 mod 21.

The programs for A141890, the canonical program `A141890.P13150421018336180161` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141890 has offset 1).

The definition of A141890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141890.P13150421018336180161

`p?[21*n+5]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141890

/-- `p?[21*n+5]` -/
def P13150421018336180161.Spec : Prop :=
  ∀ n, (P13150421018336180161.a n : ℤ) = A141890 (n + 1)

theorem P13150421018336180161.correct : P13150421018336180161.Spec := by
  intro n
  simp only [A141890, Nat.add_sub_cancel]

end A141890

/-! ## A141890.P3640685240601942285

`∩[A045447(n+1), A141160(n+1)]`
-/

namespace A141890.P3640685240601942285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P3640685240601942285

namespace A141890

/-- `∩[A045447(n+1), A141160(n+1)]` -/
def P3640685240601942285.Spec : Prop :=
  ∀ n, (P3640685240601942285.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P9614187392135846201

`∩[A045458(n+1), A141160(n+1)]`
-/

namespace A141890.P9614187392135846201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P9614187392135846201

namespace A141890

/-- `∩[A045458(n+1), A141160(n+1)]` -/
def P9614187392135846201.Spec : Prop :=
  ∀ n, (P9614187392135846201.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P7866123578939576713

`∩[A004623(n+1), A141160(n+1)]`
-/

namespace A141890.P7866123578939576713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P7866123578939576713

namespace A141890

/-- `∩[A004623(n+1), A141160(n+1)]` -/
def P7866123578939576713.Spec : Prop :=
  ∀ n, (P7866123578939576713.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P4885274425022060733

`∩[A045359(n+1), A141160(n+1)]`
-/

namespace A141890.P4885274425022060733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P4885274425022060733

namespace A141890

/-- `∩[A045359(n+1), A141160(n+1)]` -/
def P4885274425022060733.Spec : Prop :=
  ∀ n, (P4885274425022060733.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P17885204228580481422

`∩[A045368(n+1), A141160(n+1)]`
-/

namespace A141890.P17885204228580481422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P17885204228580481422

namespace A141890

/-- `∩[A045368(n+1), A141160(n+1)]` -/
def P17885204228580481422.Spec : Prop :=
  ∀ n, (P17885204228580481422.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P13454600010650760

`∩[A045446(n+1), A141160(n+1)]`
-/

namespace A141890.P13454600010650760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P13454600010650760

namespace A141890

/-- `∩[A045446(n+1), A141160(n+1)]` -/
def P13454600010650760.Spec : Prop :=
  ∀ n, (P13454600010650760.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P5244520972629230265

`∩[A045456(n+1), A141160(n+1)]`
-/

namespace A141890.P5244520972629230265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P5244520972629230265

namespace A141890

/-- `∩[A045456(n+1), A141160(n+1)]` -/
def P5244520972629230265.Spec : Prop :=
  ∀ n, (P5244520972629230265.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P5080773620091203206

`∩[A045441(n+1), A141160(n+1)]`
-/

namespace A141890.P5080773620091203206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P5080773620091203206

namespace A141890

/-- `∩[A045441(n+1), A141160(n+1)]` -/
def P5080773620091203206.Spec : Prop :=
  ∀ n, (P5080773620091203206.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P15497589489373469919

`∩[A045452(n+1), A141160(n+1)]`
-/

namespace A141890.P15497589489373469919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P15497589489373469919

namespace A141890

/-- `∩[A045452(n+1), A141160(n+1)]` -/
def P15497589489373469919.Spec : Prop :=
  ∀ n, (P15497589489373469919.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P10239507509433796255

`∩[A004623(n+1), A038893(n+1)]`
-/

namespace A141890.P10239507509433796255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P10239507509433796255

namespace A141890

/-- `∩[A004623(n+1), A038893(n+1)]` -/
def P10239507509433796255.Spec : Prop :=
  ∀ n, (P10239507509433796255.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P12887030948061801173

`∩[A038893(n+1), A045458(n+1)]`
-/

namespace A141890.P12887030948061801173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P12887030948061801173

namespace A141890

/-- `∩[A038893(n+1), A045458(n+1)]` -/
def P12887030948061801173.Spec : Prop :=
  ∀ n, (P12887030948061801173.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P17772719065274812620

`∩[A045358(n+1), A141160(n+1)]`
-/

namespace A141890.P17772719065274812620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P17772719065274812620

namespace A141890

/-- `∩[A045358(n+1), A141160(n+1)]` -/
def P17772719065274812620.Spec : Prop :=
  ∀ n, (P17772719065274812620.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P17972839092966982069

`∩[A045367(n+1), A141160(n+1)]`
-/

namespace A141890.P17972839092966982069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P17972839092966982069

namespace A141890

/-- `∩[A045367(n+1), A141160(n+1)]` -/
def P17972839092966982069.Spec : Prop :=
  ∀ n, (P17972839092966982069.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P18294548361584244512

`∩[A045451(n+1), A141160(n+1)]`
-/

namespace A141890.P18294548361584244512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P18294548361584244512

namespace A141890

/-- `∩[A045451(n+1), A141160(n+1)]` -/
def P18294548361584244512.Spec : Prop :=
  ∀ n, (P18294548361584244512.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P6130820267173035559

`∩[A003627(n+1), A004623(n+1)]`
-/

namespace A141890.P6130820267173035559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P6130820267173035559

namespace A141890

/-- `∩[A003627(n+1), A004623(n+1)]` -/
def P6130820267173035559.Spec : Prop :=
  ∀ n, (P6130820267173035559.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P8585482426241454955

`∩[A004623(n+1), A007528(n+1)]`
-/

namespace A141890.P8585482426241454955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P8585482426241454955

namespace A141890

/-- `∩[A004623(n+1), A007528(n+1)]` -/
def P8585482426241454955.Spec : Prop :=
  ∀ n, (P8585482426241454955.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P8693570522447132934

`∩[A003627(n+1), A045447(n+1)]`
-/

namespace A141890.P8693570522447132934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P8693570522447132934

namespace A141890

/-- `∩[A003627(n+1), A045447(n+1)]` -/
def P8693570522447132934.Spec : Prop :=
  ∀ n, (P8693570522447132934.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P18181115408898317225

`∩[A003627(n+1), A045458(n+1)]`
-/

namespace A141890.P18181115408898317225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P18181115408898317225

namespace A141890

/-- `∩[A003627(n+1), A045458(n+1)]` -/
def P18181115408898317225.Spec : Prop :=
  ∀ n, (P18181115408898317225.a n : ℤ) = A141890 (n + 1)

end A141890

/-! ## A141890.P17437848147566904754

`∩[A004623(n+1), A045309(n+1)]`
-/

namespace A141890.P17437848147566904754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141890.P17437848147566904754

namespace A141890

/-- `∩[A004623(n+1), A045309(n+1)]` -/
def P17437848147566904754.Spec : Prop :=
  ∀ n, (P17437848147566904754.a n : ℤ) = A141890 (n + 1)

end A141890

/-!
# A141891: Primes congruent to 8 mod 21.

The programs for A141891, the canonical program `A141891.P12868481659488375521` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141891 has offset 1).

The definition of A141891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6533 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141891.P12868481659488375521

`p?[21*n+8]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141891

/-- `p?[21*n+8]` -/
def P12868481659488375521.Spec : Prop :=
  ∀ n, (P12868481659488375521.a n : ℤ) = A141891 (n + 1)

theorem P12868481659488375521.correct : P12868481659488375521.Spec := by
  intro n
  simp only [A141891, Nat.add_sub_cancel]

end A141891

/-! ## A141891.P7308727036423126377

`record[p?[lcm(3, 2-n-n)+n]]`
-/

namespace A141891.P7308727036423126377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (2 - (n : ℤ) - (n : ℤ)) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141891.P7308727036423126377

namespace A141891

/-- `record[p?[lcm(3, 2-n-n)+n]]` -/
def P7308727036423126377.Spec : Prop :=
  ∀ n, (P7308727036423126377.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P10000969039126178980

`∩[A004619(n+1), A106927(n+1)]`
-/

namespace A141891.P10000969039126178980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P10000969039126178980

namespace A141891

/-- `∩[A004619(n+1), A106927(n+1)]` -/
def P10000969039126178980.Spec : Prop :=
  ∀ n, (P10000969039126178980.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P2064930619578351509

`∩[A045465(n+1), A106927(n+1)]`
-/

namespace A141891.P2064930619578351509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P2064930619578351509

namespace A141891

/-- `∩[A045465(n+1), A106927(n+1)]` -/
def P2064930619578351509.Spec : Prop :=
  ∀ n, (P2064930619578351509.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P6301919395680525909

`∩[A106927(n+1), A140444(n+1)]`
-/

namespace A141891.P6301919395680525909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P6301919395680525909

namespace A141891

/-- `∩[A106927(n+1), A140444(n+1)]` -/
def P6301919395680525909.Spec : Prop :=
  ∀ n, (P6301919395680525909.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P7654529919526222166

`∩[A045446(n+1), A106927(n+1)]`
-/

namespace A141891.P7654529919526222166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P7654529919526222166

namespace A141891

/-- `∩[A045446(n+1), A106927(n+1)]` -/
def P7654529919526222166.Spec : Prop :=
  ∀ n, (P7654529919526222166.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P18252029677366811967

`∩[A045456(n+1), A106927(n+1)]`
-/

namespace A141891.P18252029677366811967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P18252029677366811967

namespace A141891

/-- `∩[A045456(n+1), A106927(n+1)]` -/
def P18252029677366811967.Spec : Prop :=
  ∀ n, (P18252029677366811967.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P11489746813045075313

`∩[A045424(n+1), A106927(n+1)]`
-/

namespace A141891.P11489746813045075313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P11489746813045075313

namespace A141891

/-- `∩[A045424(n+1), A106927(n+1)]` -/
def P11489746813045075313.Spec : Prop :=
  ∀ n, (P11489746813045075313.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P14063854806460806483

`∩[A045436(n+1), A106927(n+1)]`
-/

namespace A141891.P14063854806460806483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P14063854806460806483

namespace A141891

/-- `∩[A045436(n+1), A106927(n+1)]` -/
def P14063854806460806483.Spec : Prop :=
  ∀ n, (P14063854806460806483.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P12050808440880176927

`∩[A045463(n+1), A106927(n+1)]`
-/

namespace A141891.P12050808440880176927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P12050808440880176927

namespace A141891

/-- `∩[A045463(n+1), A106927(n+1)]` -/
def P12050808440880176927.Spec : Prop :=
  ∀ n, (P12050808440880176927.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P24233658808863878

`∩[A045472(n+1), A106927(n+1)]`
-/

namespace A141891.P24233658808863878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P24233658808863878

namespace A141891

/-- `∩[A045472(n+1), A106927(n+1)]` -/
def P24233658808863878.Spec : Prop :=
  ∀ n, (P24233658808863878.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P17952824967092687198

`∩[A045422(n+1), A106927(n+1)]`
-/

namespace A141891.P17952824967092687198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P17952824967092687198

namespace A141891

/-- `∩[A045422(n+1), A106927(n+1)]` -/
def P17952824967092687198.Spec : Prop :=
  ∀ n, (P17952824967092687198.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P8858316116336173356

`∩[A045433(n+1), A106927(n+1)]`
-/

namespace A141891.P8858316116336173356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P8858316116336173356

namespace A141891

/-- `∩[A045433(n+1), A106927(n+1)]` -/
def P8858316116336173356.Spec : Prop :=
  ∀ n, (P8858316116336173356.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P11765121280600069545

`∩[A045454(n+1), A106927(n+1)]`
-/

namespace A141891.P11765121280600069545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P11765121280600069545

namespace A141891

/-- `∩[A045454(n+1), A106927(n+1)]` -/
def P11765121280600069545.Spec : Prop :=
  ∀ n, (P11765121280600069545.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P12283736495598005558

`∩[A045415(n+1), A106927(n+1)]`
-/

namespace A141891.P12283736495598005558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P12283736495598005558

namespace A141891

/-- `∩[A045415(n+1), A106927(n+1)]` -/
def P12283736495598005558.Spec : Prop :=
  ∀ n, (P12283736495598005558.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P3018204629535080786

`∩[A045443(n+1), A106927(n+1)]`
-/

namespace A141891.P3018204629535080786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P3018204629535080786

namespace A141891

/-- `∩[A045443(n+1), A106927(n+1)]` -/
def P3018204629535080786.Spec : Prop :=
  ∀ n, (P3018204629535080786.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P3732142882440962436

`∩[A004619(n+1), A038894(n+1)]`
-/

namespace A141891.P3732142882440962436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P3732142882440962436

namespace A141891

/-- `∩[A004619(n+1), A038894(n+1)]` -/
def P3732142882440962436.Spec : Prop :=
  ∀ n, (P3732142882440962436.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P5518226739292829471

`∩[A038894(n+1), A045465(n+1)]`
-/

namespace A141891.P5518226739292829471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P5518226739292829471

namespace A141891

/-- `∩[A038894(n+1), A045465(n+1)]` -/
def P5518226739292829471.Spec : Prop :=
  ∀ n, (P5518226739292829471.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P9621182169497705365

`∩[A045400(n+1), A106927(n+1)]`
-/

namespace A141891.P9621182169497705365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P9621182169497705365

namespace A141891

/-- `∩[A045400(n+1), A106927(n+1)]` -/
def P9621182169497705365.Spec : Prop :=
  ∀ n, (P9621182169497705365.a n : ℤ) = A141891 (n + 1)

end A141891

/-! ## A141891.P12715925630939334707

`∩[A004619(n+1), A007528(n+1)]`
-/

namespace A141891.P12715925630939334707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141891.P12715925630939334707

namespace A141891

/-- `∩[A004619(n+1), A007528(n+1)]` -/
def P12715925630939334707.Spec : Prop :=
  ∀ n, (P12715925630939334707.a n : ℤ) = A141891 (n + 1)

end A141891

/-!
# A141892: Primes congruent to 10 mod 21.

The programs for A141892, the canonical program `A141892.P17103823867975322355` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141892 has offset 1).

The definition of A141892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141892.P17103823867975322355

`p?[a(n-1)+21]` with `a(0)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141892

/-- `p?[a(n-1)+21]` -/
def P17103823867975322355.Spec : Prop :=
  ∀ n, (P17103823867975322355.a n : ℤ) = A141892 (n + 1)

theorem P17103823867975322355.correct : P17103823867975322355.Spec := by
  intro n
  simp only [A141892, Nat.add_sub_cancel]

end A141892

/-! ## A141892.P4468714445683992658

`p?[3*(7*n+2)+4]`
-/

namespace A141892.P4468714445683992658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (7 * n + 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141892.P4468714445683992658

namespace A141892

/-- `p?[3*(7*n+2)+4]` -/
def P4468714445683992658.Spec : Prop :=
  ∀ n, (P4468714445683992658.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P133142498148642199

`A000027(p?[21*n+10])`
-/

namespace A141892.P133142498148642199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141892.P133142498148642199

namespace A141892

/-- `A000027(p?[21*n+10])` -/
def P133142498148642199.Spec : Prop :=
  ∀ n, P133142498148642199.a n = A141892 (n + 1)

end A141892

/-! ## A141892.P6651352164102087549

`∩[A002476(n+1), A004621(n+1)]`
-/

namespace A141892.P6651352164102087549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P6651352164102087549

namespace A141892

/-- `∩[A002476(n+1), A004621(n+1)]` -/
def P6651352164102087549.Spec : Prop :=
  ∀ n, (P6651352164102087549.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P12530810345704846492

`∩[A002476(n+1), A045437(n+1)]`
-/

namespace A141892.P12530810345704846492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P12530810345704846492

namespace A141892

/-- `∩[A002476(n+1), A045437(n+1)]` -/
def P12530810345704846492.Spec : Prop :=
  ∀ n, (P12530810345704846492.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P6125475091590023803

`∩[A004621(n+1), A045375(n+1)]`
-/

namespace A141892.P6125475091590023803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P6125475091590023803

namespace A141892

/-- `∩[A004621(n+1), A045375(n+1)]` -/
def P6125475091590023803.Spec : Prop :=
  ∀ n, (P6125475091590023803.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P9380937562162913508

`∩[A045375(n+1), A045437(n+1)]`
-/

namespace A141892.P9380937562162913508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P9380937562162913508

namespace A141892

/-- `∩[A045375(n+1), A045437(n+1)]` -/
def P9380937562162913508.Spec : Prop :=
  ∀ n, (P9380937562162913508.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P8877948791044362028

`∩[A045437(n+1), A123365(n+1)]`
-/

namespace A141892.P8877948791044362028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P8877948791044362028

namespace A141892

/-- `∩[A045437(n+1), A123365(n+1)]` -/
def P8877948791044362028.Spec : Prop :=
  ∀ n, (P8877948791044362028.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P1045537136156254647

`∩[A004621(n+1), A161504(n+1)]`
-/

namespace A141892.P1045537136156254647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P1045537136156254647

namespace A141892

/-- `∩[A004621(n+1), A161504(n+1)]` -/
def P1045537136156254647.Spec : Prop :=
  ∀ n, (P1045537136156254647.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P13782363827768661272

`∩[A045425(n+1), A161504(n+1)]`
-/

namespace A141892.P13782363827768661272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P13782363827768661272

namespace A141892

/-- `∩[A045425(n+1), A161504(n+1)]` -/
def P13782363827768661272.Spec : Prop :=
  ∀ n, (P13782363827768661272.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P1579055711765580885

`∩[A045437(n+1), A161504(n+1)]`
-/

namespace A141892.P1579055711765580885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P1579055711765580885

namespace A141892

/-- `∩[A045437(n+1), A161504(n+1)]` -/
def P1579055711765580885.Spec : Prop :=
  ∀ n, (P1579055711765580885.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P5071039286694215888

`∩[A004621(n+1), A038894(n+1)]`
-/

namespace A141892.P5071039286694215888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P5071039286694215888

namespace A141892

/-- `∩[A004621(n+1), A038894(n+1)]` -/
def P5071039286694215888.Spec : Prop :=
  ∀ n, (P5071039286694215888.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P2338123927271143038

`∩[A038894(n+1), A045425(n+1)]`
-/

namespace A141892.P2338123927271143038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P2338123927271143038

namespace A141892

/-- `∩[A038894(n+1), A045425(n+1)]` -/
def P2338123927271143038.Spec : Prop :=
  ∀ n, (P2338123927271143038.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P14694349621371352631

`∩[A038894(n+1), A045437(n+1)]`
-/

namespace A141892.P14694349621371352631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P14694349621371352631

namespace A141892

/-- `∩[A038894(n+1), A045437(n+1)]` -/
def P14694349621371352631.Spec : Prop :=
  ∀ n, (P14694349621371352631.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P7115665088601921709

`∩[A045437(n+1), A133290(n+1)]`
-/

namespace A141892.P7115665088601921709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P7115665088601921709

namespace A141892

/-- `∩[A045437(n+1), A133290(n+1)]` -/
def P7115665088601921709.Spec : Prop :=
  ∀ n, (P7115665088601921709.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P1449403305953902448

`∩[A045437(n+1), A137827(n+1)]`
-/

namespace A141892.P1449403305953902448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P1449403305953902448

namespace A141892

/-- `∩[A045437(n+1), A137827(n+1)]` -/
def P1449403305953902448.Spec : Prop :=
  ∀ n, (P1449403305953902448.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P9789431277196120479

`∩[A127547(n+1)+n, A002476(n+2)]`
-/

namespace A141892.P9789431277196120479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P9789431277196120479

namespace A141892

/-- `∩[A127547(n+1)+n, A002476(n+2)]` -/
def P9789431277196120479.Spec : Prop :=
  ∀ n, (P9789431277196120479.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P15106696159599463116

`∩[A127547(n+1)+n, A007645(n+2)]`
-/

namespace A141892.P15106696159599463116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141892.P15106696159599463116

namespace A141892

/-- `∩[A127547(n+1)+n, A007645(n+2)]` -/
def P15106696159599463116.Spec : Prop :=
  ∀ n, (P15106696159599463116.a n : ℤ) = A141892 (n + 1)

end A141892

/-! ## A141892.P10876835281482607752

`filter[A045437(n+1), A070563(#)]`
-/

namespace A141892.P10876835281482607752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A141892.P10876835281482607752

namespace A141892

/-- `filter[A045437(n+1), A070563(#)]` -/
def P10876835281482607752.Spec : Prop :=
  ∀ n, P10876835281482607752.a n = A141892 (n + 1)

end A141892

/-!
# A141893: Primes congruent to 11 mod 21.

The programs for A141893, the canonical program `A141893.P16231538642829132842` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141893 has offset 1).

The definition of A141893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141893.P16231538642829132842

`p?[a(n-1)+21]` with `a(0)=11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141893

/-- `p?[a(n-1)+21]` -/
def P16231538642829132842.Spec : Prop :=
  ∀ n, (P16231538642829132842.a n : ℤ) = A141893 (n + 1)

theorem P16231538642829132842.correct : P16231538642829132842.Spec := by
  intro n
  simp only [A141893, Nat.add_sub_cancel]

end A141893

/-! ## A141893.P10754028216200897171

`p?[5*(4*n+2)+n+1]`
-/

namespace A141893.P10754028216200897171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (4 * n + 2) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141893.P10754028216200897171

namespace A141893

/-- `p?[5*(4*n+2)+n+1]` -/
def P10754028216200897171.Spec : Prop :=
  ∀ n, (P10754028216200897171.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P1157747258432290520

`∩[A004622(n+1), A106927(n+1)]`
-/

namespace A141893.P1157747258432290520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P1157747258432290520

namespace A141893

/-- `∩[A004622(n+1), A106927(n+1)]` -/
def P1157747258432290520.Spec : Prop :=
  ∀ n, (P1157747258432290520.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P9924109174252976417

`∩[A045462(n+1), A106927(n+1)]`
-/

namespace A141893.P9924109174252976417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P9924109174252976417

namespace A141893

/-- `∩[A045462(n+1), A106927(n+1)]` -/
def P9924109174252976417.Spec : Prop :=
  ∀ n, (P9924109174252976417.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P3070070181559860377

`∩[A045471(n+1), A106927(n+1)]`
-/

namespace A141893.P3070070181559860377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P3070070181559860377

namespace A141893

/-- `∩[A045471(n+1), A106927(n+1)]` -/
def P3070070181559860377.Spec : Prop :=
  ∀ n, (P3070070181559860377.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P2578397298338999807

`∩[A045441(n+1), A106927(n+1)]`
-/

namespace A141893.P2578397298338999807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P2578397298338999807

namespace A141893

/-- `∩[A045441(n+1), A106927(n+1)]` -/
def P2578397298338999807.Spec : Prop :=
  ∀ n, (P2578397298338999807.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P18398355528870827302

`∩[A045452(n+1), A106927(n+1)]`
-/

namespace A141893.P18398355528870827302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P18398355528870827302

namespace A141893

/-- `∩[A045452(n+1), A106927(n+1)]` -/
def P18398355528870827302.Spec : Prop :=
  ∀ n, (P18398355528870827302.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P14442532948603787110

`∩[A045432(n+1), A106927(n+1)]`
-/

namespace A141893.P14442532948603787110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P14442532948603787110

namespace A141893

/-- `∩[A045432(n+1), A106927(n+1)]` -/
def P14442532948603787110.Spec : Prop :=
  ∀ n, (P14442532948603787110.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P15240004917823239328

`∩[A045421(n+1), A106927(n+1)]`
-/

namespace A141893.P15240004917823239328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P15240004917823239328

namespace A141893

/-- `∩[A045421(n+1), A106927(n+1)]` -/
def P15240004917823239328.Spec : Prop :=
  ∀ n, (P15240004917823239328.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P10334839284336900374

`∩[A045460(n+1), A106927(n+1)]`
-/

namespace A141893.P10334839284336900374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P10334839284336900374

namespace A141893

/-- `∩[A045460(n+1), A106927(n+1)]` -/
def P10334839284336900374.Spec : Prop :=
  ∀ n, (P10334839284336900374.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P4182254936601955157

`∩[A045467(n+1), A106927(n+1)]`
-/

namespace A141893.P4182254936601955157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P4182254936601955157

namespace A141893

/-- `∩[A045467(n+1), A106927(n+1)]` -/
def P4182254936601955157.Spec : Prop :=
  ∀ n, (P4182254936601955157.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P13705527759049625152

`∩[A045418(n+1), A106927(n+1)]`
-/

namespace A141893.P13705527759049625152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P13705527759049625152

namespace A141893

/-- `∩[A045418(n+1), A106927(n+1)]` -/
def P13705527759049625152.Spec : Prop :=
  ∀ n, (P13705527759049625152.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P10893972365749012143

`∩[A045427(n+1), A106927(n+1)]`
-/

namespace A141893.P10893972365749012143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P10893972365749012143

namespace A141893

/-- `∩[A045427(n+1), A106927(n+1)]` -/
def P10893972365749012143.Spec : Prop :=
  ∀ n, (P10893972365749012143.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P9471267587866108331

`∩[A004622(n+1), A161504(n+1)]`
-/

namespace A141893.P9471267587866108331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P9471267587866108331

namespace A141893

/-- `∩[A004622(n+1), A161504(n+1)]` -/
def P9471267587866108331.Spec : Prop :=
  ∀ n, (P9471267587866108331.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P9772987736287664049

`∩[A045462(n+1), A161504(n+1)]`
-/

namespace A141893.P9772987736287664049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P9772987736287664049

namespace A141893

/-- `∩[A045462(n+1), A161504(n+1)]` -/
def P9772987736287664049.Spec : Prop :=
  ∀ n, (P9772987736287664049.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P1327042086715837579

`∩[A045471(n+1), A161504(n+1)]`
-/

namespace A141893.P1327042086715837579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P1327042086715837579

namespace A141893

/-- `∩[A045471(n+1), A161504(n+1)]` -/
def P1327042086715837579.Spec : Prop :=
  ∀ n, (P1327042086715837579.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P8531638619232525529

`∩[A003627(n+1), A004622(n+1)]`
-/

namespace A141893.P8531638619232525529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P8531638619232525529

namespace A141893

/-- `∩[A003627(n+1), A004622(n+1)]` -/
def P8531638619232525529.Spec : Prop :=
  ∀ n, (P8531638619232525529.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P4194085203521728641

`∩[A004622(n+1), A007528(n+1)]`
-/

namespace A141893.P4194085203521728641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P4194085203521728641

namespace A141893

/-- `∩[A004622(n+1), A007528(n+1)]` -/
def P4194085203521728641.Spec : Prop :=
  ∀ n, (P4194085203521728641.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P16220170928294973018

`∩[A004622(n+1), A038894(n+1)]`
-/

namespace A141893.P16220170928294973018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P16220170928294973018

namespace A141893

/-- `∩[A004622(n+1), A038894(n+1)]` -/
def P16220170928294973018.Spec : Prop :=
  ∀ n, (P16220170928294973018.a n : ℤ) = A141893 (n + 1)

end A141893

/-! ## A141893.P79719756288501555

`∩[A003627(n+1), A045462(n+1)]`
-/

namespace A141893.P79719756288501555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141893.P79719756288501555

namespace A141893

/-- `∩[A003627(n+1), A045462(n+1)]` -/
def P79719756288501555.Spec : Prop :=
  ∀ n, (P79719756288501555.a n : ℤ) = A141893 (n + 1)

end A141893

/-!
# A141894: Primes congruent to 13 mod 21.

The programs for A141894, the canonical program `A141894.P2299718702940400355` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141894 has offset 1).

The definition of A141894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141894.P2299718702940400355

`p?[21*n-8]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141894

/-- `p?[21*n-8]` -/
def P2299718702940400355.Spec : Prop :=
  ∀ n, P2299718702940400355.a n = A141894 (n + 1)

theorem P2299718702940400355.correct : P2299718702940400355.Spec := by
  intro n
  simp only [A141894, Nat.add_sub_cancel]

end A141894

/-! ## A141894.P17242311773563561986

`∩[A004624(n+1), A138686(n+1)]`
-/

namespace A141894.P17242311773563561986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P17242311773563561986

namespace A141894

/-- `∩[A004624(n+1), A138686(n+1)]` -/
def P17242311773563561986.Spec : Prop :=
  ∀ n, (P17242311773563561986.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P11499833609209622081

`∩[A045464(n+1), A138686(n+1)]`
-/

namespace A141894.P11499833609209622081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P11499833609209622081

namespace A141894

/-- `∩[A045464(n+1), A138686(n+1)]` -/
def P11499833609209622081.Spec : Prop :=
  ∀ n, (P11499833609209622081.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P16726219689780696576

`∩[A045473(n+1), A138686(n+1)]`
-/

namespace A141894.P16726219689780696576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P16726219689780696576

namespace A141894

/-- `∩[A045473(n+1), A138686(n+1)]` -/
def P16726219689780696576.Spec : Prop :=
  ∀ n, (P16726219689780696576.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P5314645666404869687

`∩[A002476(n+1), A004624(n+1)]`
-/

namespace A141894.P5314645666404869687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P5314645666404869687

namespace A141894

/-- `∩[A002476(n+1), A004624(n+1)]` -/
def P5314645666404869687.Spec : Prop :=
  ∀ n, (P5314645666404869687.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P13398842010907110619

`∩[A002476(n+1), A045473(n+1)]`
-/

namespace A141894.P13398842010907110619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P13398842010907110619

namespace A141894

/-- `∩[A002476(n+1), A045473(n+1)]` -/
def P13398842010907110619.Spec : Prop :=
  ∀ n, (P13398842010907110619.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P7921904810562396480

`∩[A004624(n+1), A007645(n+1)]`
-/

namespace A141894.P7921904810562396480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P7921904810562396480

namespace A141894

/-- `∩[A004624(n+1), A007645(n+1)]` -/
def P7921904810562396480.Spec : Prop :=
  ∀ n, (P7921904810562396480.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P12133924450942083305

`∩[A004624(n+1), A045331(n+1)]`
-/

namespace A141894.P12133924450942083305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P12133924450942083305

namespace A141894

/-- `∩[A004624(n+1), A045331(n+1)]` -/
def P12133924450942083305.Spec : Prop :=
  ∀ n, (P12133924450942083305.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P2838507250333704928

`∩[A004624(n+1), A045375(n+1)]`
-/

namespace A141894.P2838507250333704928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P2838507250333704928

namespace A141894

/-- `∩[A004624(n+1), A045375(n+1)]` -/
def P2838507250333704928.Spec : Prop :=
  ∀ n, (P2838507250333704928.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P14641232652410186489

`∩[A007645(n+1), A045473(n+1)]`
-/

namespace A141894.P14641232652410186489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P14641232652410186489

namespace A141894

/-- `∩[A007645(n+1), A045473(n+1)]` -/
def P14641232652410186489.Spec : Prop :=
  ∀ n, (P14641232652410186489.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P18349560598327821940

`∩[A045331(n+1), A045473(n+1)]`
-/

namespace A141894.P18349560598327821940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P18349560598327821940

namespace A141894

/-- `∩[A045331(n+1), A045473(n+1)]` -/
def P18349560598327821940.Spec : Prop :=
  ∀ n, (P18349560598327821940.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P9138748802191950967

`∩[A045375(n+1), A045473(n+1)]`
-/

namespace A141894.P9138748802191950967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P9138748802191950967

namespace A141894

/-- `∩[A045375(n+1), A045473(n+1)]` -/
def P9138748802191950967.Spec : Prop :=
  ∀ n, (P9138748802191950967.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P14635508603509372572

`∩[A045473(n+1), A123365(n+1)]`
-/

namespace A141894.P14635508603509372572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P14635508603509372572

namespace A141894

/-- `∩[A045473(n+1), A123365(n+1)]` -/
def P14635508603509372572.Spec : Prop :=
  ∀ n, (P14635508603509372572.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P2613642734066795182

`∩[A004624(n+1), A279815(n+1)]`
-/

namespace A141894.P2613642734066795182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P2613642734066795182

namespace A141894

/-- `∩[A004624(n+1), A279815(n+1)]` -/
def P2613642734066795182.Spec : Prop :=
  ∀ n, (P2613642734066795182.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P15507847696202845802

`∩[A045473(n+1), A279815(n+1)]`
-/

namespace A141894.P15507847696202845802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P15507847696202845802

namespace A141894

/-- `∩[A045473(n+1), A279815(n+1)]` -/
def P15507847696202845802.Spec : Prop :=
  ∀ n, (P15507847696202845802.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P5372838057883776395

`∩[A004624(n+1), A038894(n+1)]`
-/

namespace A141894.P5372838057883776395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P5372838057883776395

namespace A141894

/-- `∩[A004624(n+1), A038894(n+1)]` -/
def P5372838057883776395.Spec : Prop :=
  ∀ n, (P5372838057883776395.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P4319689161757516430

`∩[A038894(n+1), A045464(n+1)]`
-/

namespace A141894.P4319689161757516430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P4319689161757516430

namespace A141894

/-- `∩[A038894(n+1), A045464(n+1)]` -/
def P4319689161757516430.Spec : Prop :=
  ∀ n, (P4319689161757516430.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P5256631360953518915

`∩[A038894(n+1), A045473(n+1)]`
-/

namespace A141894.P5256631360953518915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P5256631360953518915

namespace A141894

/-- `∩[A038894(n+1), A045473(n+1)]` -/
def P5256631360953518915.Spec : Prop :=
  ∀ n, (P5256631360953518915.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P16434408079563697780

`∩[A045473(n+1), A055664(n+1)]`
-/

namespace A141894.P16434408079563697780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P16434408079563697780

namespace A141894

/-- `∩[A045473(n+1), A055664(n+1)]` -/
def P16434408079563697780.Spec : Prop :=
  ∀ n, (P16434408079563697780.a n : ℤ) = A141894 (n + 1)

end A141894

/-! ## A141894.P5842332585697772048

`∩[A045473(n+1), A133290(n+1)]`
-/

namespace A141894.P5842332585697772048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141894.P5842332585697772048

namespace A141894

/-- `∩[A045473(n+1), A133290(n+1)]` -/
def P5842332585697772048.Spec : Prop :=
  ∀ n, (P5842332585697772048.a n : ℤ) = A141894 (n + 1)

end A141894

/-!
# A141895: Primes congruent to 16 mod 21.

The programs for A141895, the canonical program `A141895.P12734587034082310195` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141895 has offset 1).

The definition of A141895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141895.P12734587034082310195

`p?[21*n-5]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141895

/-- `p?[21*n-5]` -/
def P12734587034082310195.Spec : Prop :=
  ∀ n, P12734587034082310195.a n = A141895 (n + 1)

theorem P12734587034082310195.correct : P12734587034082310195.Spec := by
  intro n
  simp only [A141895, Nat.add_sub_cancel]

end A141895

/-! ## A141895.P17565994305106701909

`∩[A045392(n+1), A139492(n+1)]`
-/

namespace A141895.P17565994305106701909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P17565994305106701909

namespace A141895

/-- `∩[A045392(n+1), A139492(n+1)]` -/
def P17565994305106701909.Spec : Prop :=
  ∀ n, (P17565994305106701909.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P4111548937266500488

`∩[A139492(n+1), A140442(n+1)]`
-/

namespace A141895.P4111548937266500488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P4111548937266500488

namespace A141895

/-- `∩[A139492(n+1), A140442(n+1)]` -/
def P4111548937266500488.Spec : Prop :=
  ∀ n, (P4111548937266500488.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P4673463524339033211

`∩[A045343(n+1), A139492(n+1)]`
-/

namespace A141895.P4673463524339033211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P4673463524339033211

namespace A141895

/-- `∩[A045343(n+1), A139492(n+1)]` -/
def P4673463524339033211.Spec : Prop :=
  ∀ n, (P4673463524339033211.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P5771430023761269094

`∩[A045368(n+1), A139492(n+1)]`
-/

namespace A141895.P5771430023761269094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P5771430023761269094

namespace A141895

/-- `∩[A045368(n+1), A139492(n+1)]` -/
def P5771430023761269094.Spec : Prop :=
  ∀ n, (P5771430023761269094.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P14133425859109844488

`∩[A045389(n+1), A139492(n+1)]`
-/

namespace A141895.P14133425859109844488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P14133425859109844488

namespace A141895

/-- `∩[A045389(n+1), A139492(n+1)]` -/
def P14133425859109844488.Spec : Prop :=
  ∀ n, (P14133425859109844488.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P14096044682835378739

`∩[A045383(n+1), A121764(n+1)]`
-/

namespace A141895.P14096044682835378739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P14096044682835378739

namespace A141895

/-- `∩[A045383(n+1), A121764(n+1)]` -/
def P14096044682835378739.Spec : Prop :=
  ∀ n, (P14096044682835378739.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P11274507456817460232

`∩[A045392(n+1), A121764(n+1)]`
-/

namespace A141895.P11274507456817460232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P11274507456817460232

namespace A141895

/-- `∩[A045392(n+1), A121764(n+1)]` -/
def P11274507456817460232.Spec : Prop :=
  ∀ n, (P11274507456817460232.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P12448571020724538449

`∩[A121764(n+1), A140442(n+1)]`
-/

namespace A141895.P12448571020724538449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P12448571020724538449

namespace A141895

/-- `∩[A121764(n+1), A140442(n+1)]` -/
def P12448571020724538449.Spec : Prop :=
  ∀ n, (P12448571020724538449.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P15902104193870633750

`∩[A004620(n+1), A121764(n+1)]`
-/

namespace A141895.P15902104193870633750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P15902104193870633750

namespace A141895

/-- `∩[A004620(n+1), A121764(n+1)]` -/
def P15902104193870633750.Spec : Prop :=
  ∀ n, (P15902104193870633750.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P17618210126233463584

`∩[A004620(n+1), A139492(n+1)]`
-/

namespace A141895.P17618210126233463584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P17618210126233463584

namespace A141895

/-- `∩[A004620(n+1), A139492(n+1)]` -/
def P17618210126233463584.Spec : Prop :=
  ∀ n, (P17618210126233463584.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P14899960446912618587

`∩[A002476(n+1), A004620(n+1)]`
-/

namespace A141895.P14899960446912618587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P14899960446912618587

namespace A141895

/-- `∩[A002476(n+1), A004620(n+1)]` -/
def P14899960446912618587.Spec : Prop :=
  ∀ n, (P14899960446912618587.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P14943437894671415162

`∩[A004620(n+1), A007645(n+1)]`
-/

namespace A141895.P14943437894671415162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P14943437894671415162

namespace A141895

/-- `∩[A004620(n+1), A007645(n+1)]` -/
def P14943437894671415162.Spec : Prop :=
  ∀ n, (P14943437894671415162.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P13205440633443237051

`∩[A002476(n+1), A045392(n+1)]`
-/

namespace A141895.P13205440633443237051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P13205440633443237051

namespace A141895

/-- `∩[A002476(n+1), A045392(n+1)]` -/
def P13205440633443237051.Spec : Prop :=
  ∀ n, (P13205440633443237051.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P15695028920616274983

`∩[A007645(n+1), A045392(n+1)]`
-/

namespace A141895.P15695028920616274983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P15695028920616274983

namespace A141895

/-- `∩[A007645(n+1), A045392(n+1)]` -/
def P15695028920616274983.Spec : Prop :=
  ∀ n, (P15695028920616274983.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P2457871453088486387

`∩[A002476(n+1), A140442(n+1)]`
-/

namespace A141895.P2457871453088486387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P2457871453088486387

namespace A141895

/-- `∩[A002476(n+1), A140442(n+1)]` -/
def P2457871453088486387.Spec : Prop :=
  ∀ n, (P2457871453088486387.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P578859325321464714

`∩[A007645(n+1), A140442(n+1)]`
-/

namespace A141895.P578859325321464714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P578859325321464714

namespace A141895

/-- `∩[A007645(n+1), A140442(n+1)]` -/
def P578859325321464714.Spec : Prop :=
  ∀ n, (P578859325321464714.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P9455878862330722751

`∩[A045392(n+1), A123365(n+1)]`
-/

namespace A141895.P9455878862330722751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P9455878862330722751

namespace A141895

/-- `∩[A045392(n+1), A123365(n+1)]` -/
def P9455878862330722751.Spec : Prop :=
  ∀ n, (P9455878862330722751.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P13235165738974176062

`∩[A045331(n+1), A140442(n+1)]`
-/

namespace A141895.P13235165738974176062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P13235165738974176062

namespace A141895

/-- `∩[A045331(n+1), A140442(n+1)]` -/
def P13235165738974176062.Spec : Prop :=
  ∀ n, (P13235165738974176062.a n : ℤ) = A141895 (n + 1)

end A141895

/-! ## A141895.P16961247304948218219

`∩[A045375(n+1), A140442(n+1)]`
-/

namespace A141895.P16961247304948218219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141895.P16961247304948218219

namespace A141895

/-- `∩[A045375(n+1), A140442(n+1)]` -/
def P16961247304948218219.Spec : Prop :=
  ∀ n, (P16961247304948218219.a n : ℤ) = A141895 (n + 1)

end A141895

/-!
# A141896: Primes congruent to 17 mod 21.

The programs for A141896, the canonical program `A141896.P7026197359786006426` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141896 has offset 1).

The definition of A141896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6546 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141896.P7026197359786006426

`p?[21*n-4]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141896

/-- `p?[21*n-4]` -/
def P7026197359786006426.Spec : Prop :=
  ∀ n, P7026197359786006426.a n = A141896 (n + 1)

theorem P7026197359786006426.correct : P7026197359786006426.Spec := by
  intro n
  simp only [A141896, Nat.add_sub_cancel]

end A141896

/-! ## A141896.P17796737429801934830

`or(1, p?[21*n+17])`
-/

namespace A141896.P17796737429801934830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141896.P17796737429801934830

namespace A141896

/-- `or(1, p?[21*n+17])` -/
def P17796737429801934830.Spec : Prop :=
  ∀ n, (P17796737429801934830.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P15137025148912245687

`∩[A004621(n+1), A275770(n+1)]`
-/

namespace A141896.P15137025148912245687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P15137025148912245687

namespace A141896

/-- `∩[A004621(n+1), A275770(n+1)]` -/
def P15137025148912245687.Spec : Prop :=
  ∀ n, (P15137025148912245687.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P5596662411109401904

`∩[A045425(n+1), A275770(n+1)]`
-/

namespace A141896.P5596662411109401904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P5596662411109401904

namespace A141896

/-- `∩[A045425(n+1), A275770(n+1)]` -/
def P5596662411109401904.Spec : Prop :=
  ∀ n, (P5596662411109401904.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P1987959253866650346

`∩[A045437(n+1), A275770(n+1)]`
-/

namespace A141896.P1987959253866650346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P1987959253866650346

namespace A141896

/-- `∩[A045437(n+1), A275770(n+1)]` -/
def P1987959253866650346.Spec : Prop :=
  ∀ n, (P1987959253866650346.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P1787945958647018082

`∩[A003627(n+1), A004621(n+1)]`
-/

namespace A141896.P1787945958647018082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P1787945958647018082

namespace A141896

/-- `∩[A003627(n+1), A004621(n+1)]` -/
def P1787945958647018082.Spec : Prop :=
  ∀ n, (P1787945958647018082.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P4768858935937577795

`∩[A004621(n+1), A007528(n+1)]`
-/

namespace A141896.P4768858935937577795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P4768858935937577795

namespace A141896

/-- `∩[A004621(n+1), A007528(n+1)]` -/
def P4768858935937577795.Spec : Prop :=
  ∀ n, (P4768858935937577795.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P6645707881996061575

`∩[A003627(n+1), A045425(n+1)]`
-/

namespace A141896.P6645707881996061575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P6645707881996061575

namespace A141896

/-- `∩[A003627(n+1), A045425(n+1)]` -/
def P6645707881996061575.Spec : Prop :=
  ∀ n, (P6645707881996061575.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P7431858666583680974

`∩[A003627(n+1), A045437(n+1)]`
-/

namespace A141896.P7431858666583680974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P7431858666583680974

namespace A141896

/-- `∩[A003627(n+1), A045437(n+1)]` -/
def P7431858666583680974.Spec : Prop :=
  ∀ n, (P7431858666583680974.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P6863410646516451073

`∩[A007528(n+1), A045425(n+1)]`
-/

namespace A141896.P6863410646516451073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P6863410646516451073

namespace A141896

/-- `∩[A007528(n+1), A045425(n+1)]` -/
def P6863410646516451073.Spec : Prop :=
  ∀ n, (P6863410646516451073.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P1199679970869023973

`∩[A007528(n+1), A045437(n+1)]`
-/

namespace A141896.P1199679970869023973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P1199679970869023973

namespace A141896

/-- `∩[A007528(n+1), A045437(n+1)]` -/
def P1199679970869023973.Spec : Prop :=
  ∀ n, (P1199679970869023973.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P6405376674790028318

`∩[A004621(n+1), A056955(n+1)]`
-/

namespace A141896.P6405376674790028318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P6405376674790028318

namespace A141896

/-- `∩[A004621(n+1), A056955(n+1)]` -/
def P6405376674790028318.Spec : Prop :=
  ∀ n, (P6405376674790028318.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P2638627130862841351

`∩[A045425(n+1), A056955(n+1)]`
-/

namespace A141896.P2638627130862841351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P2638627130862841351

namespace A141896

/-- `∩[A045425(n+1), A056955(n+1)]` -/
def P2638627130862841351.Spec : Prop :=
  ∀ n, (P2638627130862841351.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P6744871430367212624

`∩[A045437(n+1), A056955(n+1)]`
-/

namespace A141896.P6744871430367212624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P6744871430367212624

namespace A141896

/-- `∩[A045437(n+1), A056955(n+1)]` -/
def P6744871430367212624.Spec : Prop :=
  ∀ n, (P6744871430367212624.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P9153328497841416499

`∩[A045401(n+1), A258016(n+1)-2]`
-/

namespace A141896.P9153328497841416499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P9153328497841416499

namespace A141896

/-- `∩[A045401(n+1), A258016(n+1)-2]` -/
def P9153328497841416499.Spec : Prop :=
  ∀ n, (P9153328497841416499.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P8029476830734706765

`∩[A045416(n+1), A258016(n+1)-2]`
-/

namespace A141896.P8029476830734706765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P8029476830734706765

namespace A141896

/-- `∩[A045416(n+1), A258016(n+1)-2]` -/
def P8029476830734706765.Spec : Prop :=
  ∀ n, (P8029476830734706765.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P15031394262720344233

`∩[A003627(n+1), A131877(n)+2]`
-/

namespace A141896.P15031394262720344233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P15031394262720344233

namespace A141896

/-- `∩[A003627(n+1), A131877(n)+2]` -/
def P15031394262720344233.Spec : Prop :=
  ∀ n, (P15031394262720344233.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P12224132706324726123

`∩[A127547(n+1)+n, A003627(n+2)]`
-/

namespace A141896.P12224132706324726123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P12224132706324726123

namespace A141896

/-- `∩[A127547(n+1)+n, A003627(n+2)]` -/
def P12224132706324726123.Spec : Prop :=
  ∀ n, (P12224132706324726123.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P1089873487369618170

`∩[A045425(n+1), A259548(n+1)]`
-/

namespace A141896.P1089873487369618170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P1089873487369618170

namespace A141896

/-- `∩[A045425(n+1), A259548(n+1)]` -/
def P1089873487369618170.Spec : Prop :=
  ∀ n, (P1089873487369618170.a n : ℤ) = A141896 (n + 1)

end A141896

/-! ## A141896.P10018766223171575602

`∩[A045437(n+1), A259548(n+1)]`
-/

namespace A141896.P10018766223171575602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141896.P10018766223171575602

namespace A141896

/-- `∩[A045437(n+1), A259548(n+1)]` -/
def P10018766223171575602.Spec : Prop :=
  ∀ n, (P10018766223171575602.a n : ℤ) = A141896 (n + 1)

end A141896

/-!
# A141897: Primes congruent to 19 mod 21.

The programs for A141897, the canonical program `A141897.P351366787263551140` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141897 has offset 1).

The definition of A141897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141897.P351366787263551140

`p?[21*n-2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141897

/-- `p?[21*n-2]` -/
def P351366787263551140.Spec : Prop :=
  ∀ n, P351366787263551140.a n = A141897 (n + 1)

theorem P351366787263551140.correct : P351366787263551140.Spec := by
  intro n
  simp only [A141897, Nat.add_sub_cancel]

end A141897

/-! ## A141897.P14515305638253111634

`or(1, p?[or(1, 3*(7*n+6))])`
-/

namespace A141897.P14515305638253111634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * (7 * n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141897.P14515305638253111634

namespace A141897

/-- `or(1, p?[or(1, 3*(7*n+6))])` -/
def P14515305638253111634.Spec : Prop :=
  ∀ n, (P14515305638253111634.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P7628983745093475146

`∏{p}[p?[7*(3*n+2)+5], #]`
-/

namespace A141897.P7628983745093475146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (3 * n + 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141897.P7628983745093475146

namespace A141897

/-- `∏{p}[p?[7*(3*n+2)+5], #]` -/
def P7628983745093475146.Spec : Prop :=
  ∀ n, (P7628983745093475146.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P14073073323847062809

`∩[A002476(n+1), A004623(n+1)]`
-/

namespace A141897.P14073073323847062809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P14073073323847062809

namespace A141897

/-- `∩[A002476(n+1), A004623(n+1)]` -/
def P14073073323847062809.Spec : Prop :=
  ∀ n, (P14073073323847062809.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P98563684670115940

`∩[A004623(n+1), A007645(n+1)]`
-/

namespace A141897.P98563684670115940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P98563684670115940

namespace A141897

/-- `∩[A004623(n+1), A007645(n+1)]` -/
def P98563684670115940.Spec : Prop :=
  ∀ n, (P98563684670115940.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P6107463974337913334

`∩[A002476(n+1), A045458(n+1)]`
-/

namespace A141897.P6107463974337913334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P6107463974337913334

namespace A141897

/-- `∩[A002476(n+1), A045458(n+1)]` -/
def P6107463974337913334.Spec : Prop :=
  ∀ n, (P6107463974337913334.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P7967924459362168178

`∩[A004623(n+1), A045331(n+1)]`
-/

namespace A141897.P7967924459362168178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P7967924459362168178

namespace A141897

/-- `∩[A004623(n+1), A045331(n+1)]` -/
def P7967924459362168178.Spec : Prop :=
  ∀ n, (P7967924459362168178.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P12904585777686963643

`∩[A004623(n+1), A045375(n+1)]`
-/

namespace A141897.P12904585777686963643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P12904585777686963643

namespace A141897

/-- `∩[A004623(n+1), A045375(n+1)]` -/
def P12904585777686963643.Spec : Prop :=
  ∀ n, (P12904585777686963643.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P13160736447321542651

`∩[A007645(n+1), A045458(n+1)]`
-/

namespace A141897.P13160736447321542651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P13160736447321542651

namespace A141897

/-- `∩[A007645(n+1), A045458(n+1)]` -/
def P13160736447321542651.Spec : Prop :=
  ∀ n, (P13160736447321542651.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P16334754965123313859

`∩[A045331(n+1), A045458(n+1)]`
-/

namespace A141897.P16334754965123313859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P16334754965123313859

namespace A141897

/-- `∩[A045331(n+1), A045458(n+1)]` -/
def P16334754965123313859.Spec : Prop :=
  ∀ n, (P16334754965123313859.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P1431951661441177568

`∩[A045375(n+1), A045458(n+1)]`
-/

namespace A141897.P1431951661441177568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P1431951661441177568

namespace A141897

/-- `∩[A045375(n+1), A045458(n+1)]` -/
def P1431951661441177568.Spec : Prop :=
  ∀ n, (P1431951661441177568.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P12610654455280006759

`∩[A045458(n+1), A123365(n+1)]`
-/

namespace A141897.P12610654455280006759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P12610654455280006759

namespace A141897

/-- `∩[A045458(n+1), A123365(n+1)]` -/
def P12610654455280006759.Spec : Prop :=
  ∀ n, (P12610654455280006759.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P13506169697616011213

`∩[A004623(n+1), A279815(n+1)]`
-/

namespace A141897.P13506169697616011213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P13506169697616011213

namespace A141897

/-- `∩[A004623(n+1), A279815(n+1)]` -/
def P13506169697616011213.Spec : Prop :=
  ∀ n, (P13506169697616011213.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P11452129861271799128

`∩[A045458(n+1), A279815(n+1)]`
-/

namespace A141897.P11452129861271799128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P11452129861271799128

namespace A141897

/-- `∩[A045458(n+1), A279815(n+1)]` -/
def P11452129861271799128.Spec : Prop :=
  ∀ n, (P11452129861271799128.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P3570820550737659742

`∩[A004623(n+1), A161504(n+1)]`
-/

namespace A141897.P3570820550737659742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P3570820550737659742

namespace A141897

/-- `∩[A004623(n+1), A161504(n+1)]` -/
def P3570820550737659742.Spec : Prop :=
  ∀ n, (P3570820550737659742.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P3660113897686712984

`∩[A045447(n+1), A161504(n+1)]`
-/

namespace A141897.P3660113897686712984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P3660113897686712984

namespace A141897

/-- `∩[A045447(n+1), A161504(n+1)]` -/
def P3660113897686712984.Spec : Prop :=
  ∀ n, (P3660113897686712984.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P2574188682152670543

`∩[A045458(n+1), A161504(n+1)]`
-/

namespace A141897.P2574188682152670543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P2574188682152670543

namespace A141897

/-- `∩[A045458(n+1), A161504(n+1)]` -/
def P2574188682152670543.Spec : Prop :=
  ∀ n, (P2574188682152670543.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P1109633375656505579

`∩[A004623(n+1), A038894(n+1)]`
-/

namespace A141897.P1109633375656505579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P1109633375656505579

namespace A141897

/-- `∩[A004623(n+1), A038894(n+1)]` -/
def P1109633375656505579.Spec : Prop :=
  ∀ n, (P1109633375656505579.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P995381778098755099

`∩[A038894(n+1), A045447(n+1)]`
-/

namespace A141897.P995381778098755099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P995381778098755099

namespace A141897

/-- `∩[A038894(n+1), A045447(n+1)]` -/
def P995381778098755099.Spec : Prop :=
  ∀ n, (P995381778098755099.a n : ℤ) = A141897 (n + 1)

end A141897

/-! ## A141897.P7419791740031903260

`∩[A038894(n+1), A045458(n+1)]`
-/

namespace A141897.P7419791740031903260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141897.P7419791740031903260

namespace A141897

/-- `∩[A038894(n+1), A045458(n+1)]` -/
def P7419791740031903260.Spec : Prop :=
  ∀ n, (P7419791740031903260.a n : ℤ) = A141897 (n + 1)

end A141897

/-!
# A141898: Primes congruent to 20 mod 21.

The programs for A141898, the canonical program `A141898.P13901838028498291444` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141898 has offset 1).

The definition of A141898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141898.P13901838028498291444

`p?[21*n-1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A141898

/-- `p?[21*n-1]` -/
def P13901838028498291444.Spec : Prop :=
  ∀ n, P13901838028498291444.a n = A141898 (n + 1)

theorem P13901838028498291444.correct : P13901838028498291444.Spec := by
  intro n
  simp only [A141898, Nat.add_sub_cancel]

end A141898

/-! ## A141898.P12977606026582333171

`or(1, p?[3*7*n+20])`
-/

namespace A141898.P12977606026582333171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (7 * n) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141898.P12977606026582333171

namespace A141898

/-- `or(1, p?[3*7*n+20])` -/
def P12977606026582333171.Spec : Prop :=
  ∀ n, (P12977606026582333171.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P5804227069780523589

`∏{p}[p?[3*7*n+20], #]`
-/

namespace A141898.P5804227069780523589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (7 * n) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A141898.P5804227069780523589

namespace A141898

/-- `∏{p}[p?[3*7*n+20], #]` -/
def P5804227069780523589.Spec : Prop :=
  ∀ n, (P5804227069780523589.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P1661891080758199835

`∏{d}[p?[a(n-1)+21], #]` with `a(0)=20`
-/

namespace A141898.P1661891080758199835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [20] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A141898.P1661891080758199835

namespace A141898

/-- `∏{d}[p?[a(n-1)+21], #]` -/
def P1661891080758199835.Spec : Prop :=
  ∀ n, (P1661891080758199835.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P9512990949613914068

`∑{p}[p?[a(n-1)+21], #]` with `a(0)=20`
-/

namespace A141898.P9512990949613914068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [20] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A141898.P9512990949613914068

namespace A141898

/-- `∑{p}[p?[a(n-1)+21], #]` -/
def P9512990949613914068.Spec : Prop :=
  ∀ n, (P9512990949613914068.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P12953597046702222170

`or(1, or(1, p?[a(n-1)+21]))` with `a(0)=20`
-/

namespace A141898.P12953597046702222170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A141898.P12953597046702222170

namespace A141898

/-- `or(1, or(1, p?[a(n-1)+21]))` -/
def P12953597046702222170.Spec : Prop :=
  ∀ n, (P12953597046702222170.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P193420985657158777

`∩[A004624(n+1), A141160(n+1)]`
-/

namespace A141898.P193420985657158777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P193420985657158777

namespace A141898

/-- `∩[A004624(n+1), A141160(n+1)]` -/
def P193420985657158777.Spec : Prop :=
  ∀ n, (P193420985657158777.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P14746312799917969041

`∩[A045464(n+1), A141160(n+1)]`
-/

namespace A141898.P14746312799917969041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P14746312799917969041

namespace A141898

/-- `∩[A045464(n+1), A141160(n+1)]` -/
def P14746312799917969041.Spec : Prop :=
  ∀ n, (P14746312799917969041.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P17741519401294233996

`∩[A045473(n+1), A141160(n+1)]`
-/

namespace A141898.P17741519401294233996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P17741519401294233996

namespace A141898

/-- `∩[A045473(n+1), A141160(n+1)]` -/
def P17741519401294233996.Spec : Prop :=
  ∀ n, (P17741519401294233996.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P469760119306929094

`∩[A045389(n+1), A141160(n+1)]`
-/

namespace A141898.P469760119306929094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P469760119306929094

namespace A141898

/-- `∩[A045389(n+1), A141160(n+1)]` -/
def P469760119306929094.Spec : Prop :=
  ∀ n, (P469760119306929094.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P117318532893466301

`∩[A045377(n+1), A141160(n+1)]`
-/

namespace A141898.P117318532893466301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P117318532893466301

namespace A141898

/-- `∩[A045377(n+1), A141160(n+1)]` -/
def P117318532893466301.Spec : Prop :=
  ∀ n, (P117318532893466301.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P9901546974163725474

`∩[A045460(n+1), A141160(n+1)]`
-/

namespace A141898.P9901546974163725474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P9901546974163725474

namespace A141898

/-- `∩[A045460(n+1), A141160(n+1)]` -/
def P9901546974163725474.Spec : Prop :=
  ∀ n, (P9901546974163725474.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P14564983235004313682

`∩[A045463(n+1), A141160(n+1)]`
-/

namespace A141898.P14564983235004313682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P14564983235004313682

namespace A141898

/-- `∩[A045463(n+1), A141160(n+1)]` -/
def P14564983235004313682.Spec : Prop :=
  ∀ n, (P14564983235004313682.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P10487944031386299546

`∩[A045467(n+1), A141160(n+1)]`
-/

namespace A141898.P10487944031386299546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P10487944031386299546

namespace A141898

/-- `∩[A045467(n+1), A141160(n+1)]` -/
def P10487944031386299546.Spec : Prop :=
  ∀ n, (P10487944031386299546.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P14812868678407988535

`∩[A045472(n+1), A141160(n+1)]`
-/

namespace A141898.P14812868678407988535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P14812868678407988535

namespace A141898

/-- `∩[A045472(n+1), A141160(n+1)]` -/
def P14812868678407988535.Spec : Prop :=
  ∀ n, (P14812868678407988535.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P2108430333930318953

`∩[A045376(n+1), A141160(n+1)]`
-/

namespace A141898.P2108430333930318953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P2108430333930318953

namespace A141898

/-- `∩[A045376(n+1), A141160(n+1)]` -/
def P2108430333930318953.Spec : Prop :=
  ∀ n, (P2108430333930318953.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P13700332620218832004

`∩[A045388(n+1), A141160(n+1)]`
-/

namespace A141898.P13700332620218832004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P13700332620218832004

namespace A141898

/-- `∩[A045388(n+1), A141160(n+1)]` -/
def P13700332620218832004.Spec : Prop :=
  ∀ n, (P13700332620218832004.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P17560136092884257068

`∩[A045459(n+1), A141160(n+1)]`
-/

namespace A141898.P17560136092884257068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P17560136092884257068

namespace A141898

/-- `∩[A045459(n+1), A141160(n+1)]` -/
def P17560136092884257068.Spec : Prop :=
  ∀ n, (P17560136092884257068.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P2401076136051558763

`∩[A004624(n+1), A038893(n+1)]`
-/

namespace A141898.P2401076136051558763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P2401076136051558763

namespace A141898

/-- `∩[A004624(n+1), A038893(n+1)]` -/
def P2401076136051558763.Spec : Prop :=
  ∀ n, (P2401076136051558763.a n : ℤ) = A141898 (n + 1)

end A141898

/-! ## A141898.P11385738589149396880

`∩[A038893(n+1), A045473(n+1)]`
-/

namespace A141898.P11385738589149396880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141898.P11385738589149396880

namespace A141898

/-- `∩[A038893(n+1), A045473(n+1)]` -/
def P11385738589149396880.Spec : Prop :=
  ∀ n, (P11385738589149396880.a n : ℤ) = A141898 (n + 1)

end A141898

/-!
# A141899: Primes of the form 2*3*5*7*k + 97.

The programs for A141899, the canonical program `A141899.P2904525394632325117` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141899 has offset 1).

The definition of A141899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141899.P2904525394632325117

`∩[A140830(n+1), A142094(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141899

/-- `∩[A140830(n+1), A142094(n+1)]` -/
def P2904525394632325117.Spec : Prop :=
  ∀ n, (P2904525394632325117.a n : ℤ) = A141899 (n + 1)

theorem P2904525394632325117.correct : P2904525394632325117.Spec := by
  intro n
  simp only [A141899, Nat.add_sub_cancel]

end A141899

/-! ## A141899.P2204129157241869702

`∩[A140830(n+1), A141894(n+1)]`
-/

namespace A141899.P2204129157241869702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P2204129157241869702

namespace A141899

/-- `∩[A140830(n+1), A141894(n+1)]` -/
def P2204129157241869702.Spec : Prop :=
  ∀ n, (P2204129157241869702.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P9729159478303771926

`∩[A141894(n+1), A142094(n+1)]`
-/

namespace A141899.P9729159478303771926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P9729159478303771926

namespace A141899

/-- `∩[A141894(n+1), A142094(n+1)]` -/
def P9729159478303771926.Spec : Prop :=
  ∀ n, (P9729159478303771926.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P13115887017701951458

`∩[A132231(n+1), A140830(n+1)]`
-/

namespace A141899.P13115887017701951458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P13115887017701951458

namespace A141899

/-- `∩[A132231(n+1), A140830(n+1)]` -/
def P13115887017701951458.Spec : Prop :=
  ∀ n, (P13115887017701951458.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P5393782782035162293

`∩[A132231(n+1), A141894(n+1)]`
-/

namespace A141899.P5393782782035162293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P5393782782035162293

namespace A141899

/-- `∩[A132231(n+1), A141894(n+1)]` -/
def P5393782782035162293.Spec : Prop :=
  ∀ n, (P5393782782035162293.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P15011493394068487493

`∩[A132231(n+1), A142094(n+1)]`
-/

namespace A141899.P15011493394068487493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P15011493394068487493

namespace A141899

/-- `∩[A132231(n+1), A142094(n+1)]` -/
def P15011493394068487493.Spec : Prop :=
  ∀ n, (P15011493394068487493.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P12382369899363863905

`p?[7*15*n-8]`
-/

namespace A141899.P12382369899363863905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (15 * n) : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141899.P12382369899363863905

namespace A141899

/-- `p?[7*15*n-8]` -/
def P12382369899363863905.Spec : Prop :=
  ∀ n, P12382369899363863905.a n = A141899 (n + 1)

end A141899

/-! ## A141899.P12042404006194443761

`∩[A140830(n+1), A216311(n+1)]`
-/

namespace A141899.P12042404006194443761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P12042404006194443761

namespace A141899

/-- `∩[A140830(n+1), A216311(n+1)]` -/
def P12042404006194443761.Spec : Prop :=
  ∀ n, (P12042404006194443761.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P13736708294053378587

`∩[A141894(n+1), A216311(n+1)]`
-/

namespace A141899.P13736708294053378587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P13736708294053378587

namespace A141899

/-- `∩[A141894(n+1), A216311(n+1)]` -/
def P13736708294053378587.Spec : Prop :=
  ∀ n, (P13736708294053378587.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P4346373419146654813

`∩[A045473(n+1), A132231(n+1)]`
-/

namespace A141899.P4346373419146654813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P4346373419146654813

namespace A141899

/-- `∩[A045473(n+1), A132231(n+1)]` -/
def P4346373419146654813.Spec : Prop :=
  ∀ n, (P4346373419146654813.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P12443112886266456414

`∩[A045464(n+1), A140830(n+1)]`
-/

namespace A141899.P12443112886266456414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P12443112886266456414

namespace A141899

/-- `∩[A045464(n+1), A140830(n+1)]` -/
def P12443112886266456414.Spec : Prop :=
  ∀ n, (P12443112886266456414.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P2956260948087449259

`∩[A045473(n+1), A140830(n+1)]`
-/

namespace A141899.P2956260948087449259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P2956260948087449259

namespace A141899

/-- `∩[A045473(n+1), A140830(n+1)]` -/
def P2956260948087449259.Spec : Prop :=
  ∀ n, (P2956260948087449259.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P15406684902076244816

`∩[A004624(n+1), A132231(n+1)]`
-/

namespace A141899.P15406684902076244816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P15406684902076244816

namespace A141899

/-- `∩[A004624(n+1), A132231(n+1)]` -/
def P15406684902076244816.Spec : Prop :=
  ∀ n, (P15406684902076244816.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P14850087593753994270

`∩[A004624(n+1), A140830(n+1)]`
-/

namespace A141899.P14850087593753994270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P14850087593753994270

namespace A141899

/-- `∩[A004624(n+1), A140830(n+1)]` -/
def P14850087593753994270.Spec : Prop :=
  ∀ n, (P14850087593753994270.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P16644331303704133953

`∩[A067826(n+1), A140830(n+1)]`
-/

namespace A141899.P16644331303704133953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P16644331303704133953

namespace A141899

/-- `∩[A067826(n+1), A140830(n+1)]` -/
def P16644331303704133953.Spec : Prop :=
  ∀ n, (P16644331303704133953.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P5799659988134542686

`∩[A067826(n+1), A142094(n+1)]`
-/

namespace A141899.P5799659988134542686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P5799659988134542686

namespace A141899

/-- `∩[A067826(n+1), A142094(n+1)]` -/
def P5799659988134542686.Spec : Prop :=
  ∀ n, (P5799659988134542686.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P8614736097815164835

`∩[A106878(n+1), A140830(n+1)]`
-/

namespace A141899.P8614736097815164835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P8614736097815164835

namespace A141899

/-- `∩[A106878(n+1), A140830(n+1)]` -/
def P8614736097815164835.Spec : Prop :=
  ∀ n, (P8614736097815164835.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P14491265633786358454

`∩[A132237(n+1), A141894(n+1)]`
-/

namespace A141899.P14491265633786358454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P14491265633786358454

namespace A141899

/-- `∩[A132237(n+1), A141894(n+1)]` -/
def P14491265633786358454.Spec : Prop :=
  ∀ n, (P14491265633786358454.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P9275861283943076632

`∩[A132237(n+1), A142094(n+1)]`
-/

namespace A141899.P9275861283943076632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P9275861283943076632

namespace A141899

/-- `∩[A132237(n+1), A142094(n+1)]` -/
def P9275861283943076632.Spec : Prop :=
  ∀ n, (P9275861283943076632.a n : ℤ) = A141899 (n + 1)

end A141899

/-! ## A141899.P6028124072995650088

`∩[A030432(n+1), A140830(n+1)]`
-/

namespace A141899.P6028124072995650088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P6028124072995650088

namespace A141899

/-- `∩[A030432(n+1), A140830(n+1)]` -/
def P6028124072995650088.Spec : Prop :=
  ∀ n, (P6028124072995650088.a n : ℤ) = A141899 (n + 1)

end A141899

