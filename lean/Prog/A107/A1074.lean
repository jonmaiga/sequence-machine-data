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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A107400: Numbers k such that 107*k + 109 is prime.

The programs for A107400, there is no canonical definition to state claims against.
-/

/-! ## A107400.P6865973570153214815

`eq[1, A001222(A134297(n+1)+2)]`
-/

namespace A107400.P6865973570153214815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134297 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107400.P6865973570153214815

/-! ## A107400.P2262842353397464651

`eq[2, A000005(A134297(n+1)+2)]`
-/

namespace A107400.P2262842353397464651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134297 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107400.P2262842353397464651

/-! ## A107400.P8458668453862132979

`lt[A001221(A134297(n+1)+2), 2]`
-/

namespace A107400.P8458668453862132979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A134297 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107400.P8458668453862132979

/-! ## A107400.P13620554545707419891

`eq[0, A304455(A134297(n+1)+2)]`
-/

namespace A107400.P13620554545707419891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A134297 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107400.P13620554545707419891

/-! ## A107400.P11048972139152579212

`eq[1, A063647(A134297(n+1)+2)]`
-/

namespace A107400.P11048972139152579212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A134297 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107400.P11048972139152579212

/-!
# A107401: a(n) = -a(n-1)+4*a(n-2)+4*a(n-3)-a(n-4)-a(n-5).

The programs for A107401, there is no canonical definition to state claims against.
-/

/-! ## A107401.P12826501026833407360

`A329981(A001047(n)+2+n)`
-/

namespace A107401.P12826501026833407360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329981 (A001047 n + 2 + (n : ℤ)).toNat

end

end A107401.P12826501026833407360

/-! ## A107401.P8284250028494487635

`A000196(C(A172475(3*n+1), A067661(n)))`
-/

namespace A107401.P8284250028494487635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose (A172475 (3 * n + 1)).toNat (A067661 n).toNat)

end

end A107401.P8284250028494487635

/-!
# A107402: a(n)= -a(n-1) +5*a(n-2) +5*a(n-3) -a(n-4) -a(n-5).

The programs for A107402, there is no canonical definition to state claims against.
-/

/-! ## A107402.P17702639039375218869

`A271315(lcm(A271315(n), A275374(n+1)))`
-/

namespace A107402.P17702639039375218869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (Int.lcm (A271315 n) (A275374 (n + 1)))

end

end A107402.P17702639039375218869

/-!
# A107403: Expansion of e.g.f. 1/(1 - 3*sinh(x)).

The programs for A107403, there is no canonical definition to state claims against.
-/

/-! ## A107403.P18362703343433439820

`3*A101947(n*a(n-1))` with `a(0)=1`
-/

namespace A107403.P18362703343433439820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A101947 ((n : ℤ) * a (n - 1)).toNat

end

end A107403.P18362703343433439820

/-!
# A107404: Expansion of e.g.f. 1/(1 - sinh(x))^2.

The programs for A107404, there is no canonical definition to state claims against.
-/

/-! ## A107404.P9085122903718481295

`a(n-2)*∑[A262300(a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A107404.P9085122903718481295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A262300 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107404.P9085122903718481295

/-! ## A107404.P17771624592554948941

`A108954((n+1)*A096654(n))`
-/

namespace A107404.P17771624592554948941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 ((n + 1 : ℤ) * A096654 n).toNat

end

end A107404.P17771624592554948941

/-!
# A107406: Numbers n such that 107*n - 109 is prime.

The programs for A107406, there is no canonical definition to state claims against.
-/

/-! ## A107406.P14706715135701369767

`eq[1, A001222(A134297(n+1)-2)]+2`
-/

namespace A107406.P14706715135701369767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134297 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107406.P14706715135701369767

/-!
# A107408: Form the sum of the digits of a(n); a(n+1) is the smallest unused integer having a copy of every digit of this sum.

The programs for A107408, there is no canonical definition to state claims against.
-/

/-! ## A107408.P8722105485986645203

`A098760(n)+A048142(∑[A288326(n)])`
-/

namespace A107408.P8722105485986645203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 n + A048142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107408.P8722105485986645203

/-! ## A107408.P17047794180653492661

`A098760(n)+A048142(A284750(n+1))`
-/

namespace A107408.P17047794180653492661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 n + A048142 (A284750 (n + 1)).toNat

end

end A107408.P17047794180653492661

/-! ## A107408.P9330182023566446873

`A098760(n)+A048142(A288326(n)+2)`
-/

namespace A107408.P9330182023566446873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 n + A048142 (A288326 n + 2).toNat

end

end A107408.P9330182023566446873

/-!
# A107409: Each term is sum of three previous terms mod 10.

The programs for A107409, the canonical program `A107409.P4194081853284292606` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107409 has offset 0).

The definition of A107409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107409.P4194081853284292606

`Δ[A089068(n)]%10`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107409

/-- `Δ[A089068(n)]%10` -/
def P4194081853284292606.Spec : Prop :=
  ∀ n, P4194081853284292606.a n = A107409 n

theorem P4194081853284292606.correct : P4194081853284292606.Spec := by
  intro n
  simp only [A107409]

end A107409

/-! ## A107409.P15229414319968953316

`record[A001590(n)]%10`
-/

namespace A107409.P15229414319968953316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A107409.P15229414319968953316

namespace A107409

/-- `record[A001590(n)]%10` -/
def P15229414319968953316.Spec : Prop :=
  ∀ n, P15229414319968953316.a n = A107409 n

end A107409

/-! ## A107409.P4356491971632657450

`A001590(n+2)%10`
-/

namespace A107409.P4356491971632657450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001590 (n + 2)) 10

end

end A107409.P4356491971632657450

namespace A107409

/-- `A001590(n+2)%10` -/
def P4356491971632657450.Spec : Prop :=
  ∀ n, P4356491971632657450.a n = A107409 n

end A107409

/-! ## A107409.P13240208819583378611

`Δ[A000073(n+2)]%10`
-/

namespace A107409.P13240208819583378611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A107409.P13240208819583378611

namespace A107409

/-- `Δ[A000073(n+2)]%10` -/
def P13240208819583378611.Spec : Prop :=
  ∀ n, P13240208819583378611.a n = A107409 n

end A107409

/-! ## A107409.P9412249829171388234

`Δ[A213816(2*n+1)]%10`
-/

namespace A107409.P9412249829171388234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A107409.P9412249829171388234

namespace A107409

/-- `Δ[A213816(2*n+1)]%10` -/
def P9412249829171388234.Spec : Prop :=
  ∀ n, P9412249829171388234.a n = A107409 n

end A107409

/-! ## A107409.P6314261596321662976

`(∑[A000213(n)]-A000213(n))%10`
-/

namespace A107409.P6314261596321662976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A000213 n) 10

end

end A107409.P6314261596321662976

namespace A107409

/-- `(∑[A000213(n)]-A000213(n))%10` -/
def P6314261596321662976.Spec : Prop :=
  ∀ n, P6314261596321662976.a n = A107409 n

end A107409

/-! ## A107409.P11381532716248053809

`(A000073(n+1)+A000073(n))%10`
-/

namespace A107409.P11381532716248053809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000073 (n + 1) + A000073 n) 10

end

end A107409.P11381532716248053809

namespace A107409

/-- `(A000073(n+1)+A000073(n))%10` -/
def P11381532716248053809.Spec : Prop :=
  ∀ n, P11381532716248053809.a n = A107409 n

end A107409

/-!
# A107410: Each term is sum of three previous terms mod 9.

The programs for A107410, the canonical program `A107410.P3878243111727747402` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107410 has offset 0).

The definition of A107410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107410.P3878243111727747402

`dr(a(n-1)+a(n-2)+a(n-3)+1)-1` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107410

/-- `dr(a(n-1)+a(n-2)+a(n-3)+1)-1` -/
def P3878243111727747402.Spec : Prop :=
  ∀ n, P3878243111727747402.a n = A107410 n

theorem P3878243111727747402.correct : P3878243111727747402.Spec := by
  intro n
  simp only [A107410]

end A107410

/-!
# A107411: Each digit of a(n) appears in a(n+1) and a(n+1) > a(n) is minimal.

The programs for A107411, there is no canonical definition to state claims against.
-/

/-! ## A107411.P2470143472968229119

`A083310(a(n-1))` with `a(0)=0`
-/

namespace A107411.P2470143472968229119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A083310 (a (n - 1)).toNat

end

end A107411.P2470143472968229119

/-! ## A107411.P5908009211756964602

`A028253(A297065(n+2))`
-/

namespace A107411.P5908009211756964602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A297065 (n + 2)).toNat

end

end A107411.P5908009211756964602

/-! ## A107411.P9990166724210994202

`filter[A297065(n+1), A217096(#)]`
-/

namespace A107411.P9990166724210994202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A107411.P9990166724210994202

/-! ## A107411.P9833867826968615326

`filter[A297065(n+1), A267679(#)]`
-/

namespace A107411.P9833867826968615326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267679 (f1 j).toNat = 1) n)

end

end A107411.P9833867826968615326

/-! ## A107411.P17015747540822835803

`filter[A297065(n+1), A267704(#)]`
-/

namespace A107411.P17015747540822835803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267704 (f1 j).toNat = 1) n)

end

end A107411.P17015747540822835803

/-!
# A107413: a(n) = 7*a(n-1)-6*a(n-3)+a(n-5).

The programs for A107413, the canonical program `A107413.P581276900660158423` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107413 has offset 0).

The definition of A107413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-6*a(n-3)+a(n-5)` (program `A107413.P581276900660158423`, by `A107413.P581276900660158423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107413.P581276900660158423

`7*a(n-1)-6*a(n-3)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107413

/-- `7*a(n-1)-6*a(n-3)+a(n-5)` -/
def P581276900660158423.Spec : Prop :=
  ∀ n, P581276900660158423.a n = A107413 n

theorem P581276900660158423.correct : P581276900660158423.Spec := by
  intro n
  simp only [A107413]

end A107413

/-!
# A107414: Least number k such that k*p(j)*p(j+1) - 1 and k*p(j)*p(j+1) + 1 are twin primes with p(j) and p(j+1) odd twin primes.

The programs for A107414, there is no canonical definition to state claims against.
-/

/-! ## A107414.P12195269726904455227

`A071558(A037074(n+1))`
-/

namespace A107414.P12195269726904455227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A037074 (n + 1)).toNat

end

end A107414.P12195269726904455227

/-! ## A107414.P9009788991906811836

`A071558(A134020(n+2))`
-/

namespace A107414.P9009788991906811836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A134020 (n + 2)).toNat

end

end A107414.P9009788991906811836

/-! ## A107414.P8809116770749895571

`A071558(A120875(n+1)+1)`
-/

namespace A107414.P8809116770749895571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A120875 (n + 1) + 1).toNat

end

end A107414.P8809116770749895571

/-! ## A107414.P13780724927557628475

`A071558(A075369(n+1)-1)`
-/

namespace A107414.P13780724927557628475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A075369 (n + 1) - 1).toNat

end

end A107414.P13780724927557628475

/-!
# A107417: a(n) = binomial(n+2,2)*binomial(n+5,5).

The programs for A107417, the canonical program `A107417.P7996396681690844270` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107417 has offset 0).

The definition of A107417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107417.P7996396681690844270

`C(n+5, 5)*∑[n+1]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107417

/-- `C(n+5, 5)*∑[n+1]` -/
def P7996396681690844270.Spec : Prop :=
  ∀ n, (P7996396681690844270.a n : ℤ) = A107417 n

theorem P7996396681690844270.correct : P7996396681690844270.Spec := by
  intro n
  simp only [A107417]

end A107417

/-! ## A107417.P15157676165234337563

`∑[n+1]*∑[∑[∑[∑[n+1]]]]`
-/

namespace A107417.P15157676165234337563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A107417.P15157676165234337563

namespace A107417

/-- `∑[n+1]*∑[∑[∑[∑[n+1]]]]` -/
def P15157676165234337563.Spec : Prop :=
  ∀ n, (P15157676165234337563.a n : ℤ) = A107417 n

end A107417

/-! ## A107417.P8452630049770414098

`((n+3)²+n+1)*a(n-1)/n/n` with `a(0)=1`
-/

namespace A107417.P8452630049770414098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 3) ^ 2 + (n + 1) : ℚ) * (a (n - 1) / (n : ℚ)) / (n : ℚ)

end

end A107417.P8452630049770414098

namespace A107417

/-- `((n+3)²+n+1)*a(n-1)/n/n` -/
def P8452630049770414098.Spec : Prop :=
  ∀ n, P8452630049770414098.a n = (A107417 n : ℚ)

end A107417

/-! ## A107417.P12503639253185498456

`-xor(n, -1)*A051923(n)`
-/

namespace A107417.P12503639253185498456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A051923 n)

end

end A107417.P12503639253185498456

namespace A107417

/-- `-xor(n, -1)*A051923(n)` -/
def P12503639253185498456.Spec : Prop :=
  ∀ n, P12503639253185498456.a n = A107417 n

end A107417

/-! ## A107417.P3460409436190612566

`(n+1)*A027801(n+1)/5`
-/

namespace A107417.P3460409436190612566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A027801 (n + 1) : ℚ) / 5

end

end A107417.P3460409436190612566

namespace A107417

/-- `(n+1)*A027801(n+1)/5` -/
def P3460409436190612566.Spec : Prop :=
  ∀ n, P3460409436190612566.a n = (A107417 n : ℚ)

end A107417

/-! ## A107417.P8297273260048387686

`A027811(n+1)-A027801(n+1)`
-/

namespace A107417.P8297273260048387686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027811 (n + 1) - A027801 (n + 1)

end

end A107417.P8297273260048387686

namespace A107417

/-- `A027811(n+1)-A027801(n+1)` -/
def P8297273260048387686.Spec : Prop :=
  ∀ n, P8297273260048387686.a n = A107417 n

end A107417

/-! ## A107417.P13264662082405339372

`A000537(n+1)*A047819(n)/A006542(n+4)`
-/

namespace A107417.P13264662082405339372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 (n + 1) * A047819 n : ℚ) / (A006542 (n + 4) : ℚ)

end

end A107417.P13264662082405339372

namespace A107417

/-- `A000537(n+1)*A047819(n)/A006542(n+4)` -/
def P13264662082405339372.Spec : Prop :=
  ∀ n, P13264662082405339372.a n = (A107417 n : ℚ)

end A107417

/-! ## A107417.P8991099080431714761

`A000217(n+1)*A323228(n+1)-A000217(n+1)`
-/

namespace A107417.P8991099080431714761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A323228 (n + 1) - A000217 (n + 1)

end

end A107417.P8991099080431714761

namespace A107417

/-- `A000217(n+1)*A323228(n+1)-A000217(n+1)` -/
def P8991099080431714761.Spec : Prop :=
  ∀ n, P8991099080431714761.a n = A107417 n

end A107417

/-! ## A107417.P13804863723465609380

`A080929(n)*A082139(n)/A011782(n)²`
-/

namespace A107417.P13804863723465609380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080929 n * A082139 n : ℚ) / (A011782 n ^ 2 : ℚ)

end

end A107417.P13804863723465609380

namespace A107417

/-- `A080929(n)*A082139(n)/A011782(n)²` -/
def P13804863723465609380.Spec : Prop :=
  ∀ n, P13804863723465609380.a n = (A107417 n : ℚ)

end A107417

/-! ## A107417.P16388786858082936588

`A062145(∑[n+3])`
-/

namespace A107417.P16388786858082936588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107417.P16388786858082936588

namespace A107417

/-- `A062145(∑[n+3])` -/
def P16388786858082936588.Spec : Prop :=
  ∀ n, P16388786858082936588.a n = A107417 n

end A107417

/-!
# A107418: a(n) = binomial(n+3,3)*binomial(n+6,6).

The programs for A107418, the canonical program `A107418.P5448703285232012241` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107418 has offset 0).

The definition of A107418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107418.P5448703285232012241

`∑[∑[n+1]]*∑[∑[∑[∑[∑[n+1]]]]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107418

/-- `∑[∑[n+1]]*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P5448703285232012241.Spec : Prop :=
  ∀ n, (P5448703285232012241.a n : ℤ) = A107418 n

theorem P5448703285232012241.correct : P5448703285232012241.Spec := by
  intro n
  simp only [A107418]

end A107418

/-! ## A107418.P9291505483283313212

`∑[Δ[A000292(n)]*A051923(n)]`
-/

namespace A107418.P9291505483283313212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A051923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107418.P9291505483283313212

namespace A107418

/-- `∑[Δ[A000292(n)]*A051923(n)]` -/
def P9291505483283313212.Spec : Prop :=
  ∀ n, P9291505483283313212.a n = A107418 n

end A107418

/-! ## A107418.P9457103790054578255

`∑[A000217(n+1)*A051923(n)]`
-/

namespace A107418.P9457103790054578255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A051923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107418.P9457103790054578255

namespace A107418

/-- `∑[A000217(n+1)*A051923(n)]` -/
def P9457103790054578255.Spec : Prop :=
  ∀ n, P9457103790054578255.a n = A107418 n

end A107418

/-! ## A107418.P981815547333189951

`∑[∑[n+1]*∑[A051836(n+1)]]`
-/

namespace A107418.P981815547333189951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107418.P981815547333189951

namespace A107418

/-- `∑[∑[n+1]*∑[A051836(n+1)]]` -/
def P981815547333189951.Spec : Prop :=
  ∀ n, P981815547333189951.a n = A107418 n

end A107418

/-! ## A107418.P5527554062835588051

`A000292(n+1)*A120409(n+1)/A120408(n+2)`
-/

namespace A107418.P5527554062835588051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) * A120409 (n + 1) : ℚ) / (A120408 (n + 2) : ℚ)

end

end A107418.P5527554062835588051

namespace A107418

/-- `A000292(n+1)*A120409(n+1)/A120408(n+2)` -/
def P5527554062835588051.Spec : Prop :=
  ∀ n, P5527554062835588051.a n = (A107418 n : ℚ)

end A107418

/-! ## A107418.P5796303942896333937

`∑[record[A008795(n)]*A051923(n)]`
-/

namespace A107418.P5796303942896333937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A051923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107418.P5796303942896333937

namespace A107418

/-- `∑[record[A008795(n)]*A051923(n)]` -/
def P5796303942896333937.Spec : Prop :=
  ∀ n, P5796303942896333937.a n = A107418 n

end A107418

/-! ## A107418.P14644518603702515032

`∑[A008795(2*n)*A051923(n)]`
-/

namespace A107418.P14644518603702515032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n) * A051923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107418.P14644518603702515032

namespace A107418

/-- `∑[A008795(2*n)*A051923(n)]` -/
def P14644518603702515032.Spec : Prop :=
  ∀ n, P14644518603702515032.a n = A107418 n

end A107418

/-! ## A107418.P15865975925998987186

`A092371(A167614(n+1))`
-/

namespace A107418.P15865975925998987186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092371 (A167614 (n + 1)).toNat

end

end A107418.P15865975925998987186

namespace A107418

/-- `A092371(A167614(n+1))` -/
def P15865975925998987186.Spec : Prop :=
  ∀ n, P15865975925998987186.a n = A107418 n

end A107418

/-! ## A107418.P11124879273840394653

`A062145(A000096(n+2)+n+1)`
-/

namespace A107418.P11124879273840394653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062145 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A107418.P11124879273840394653

namespace A107418

/-- `A062145(A000096(n+2)+n+1)` -/
def P11124879273840394653.Spec : Prop :=
  ∀ n, P11124879273840394653.a n = A107418 n

end A107418

/-! ## A107418.P15941072909350199104

`A001715(n+3)/A000142(n)*A001730(n+6)/n!`
-/

namespace A107418.P15941072909350199104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001715 (n + 3) : ℚ) / (A000142 n : ℚ) * (A001730 (n + 6) : ℚ) / (Nat.factorial n : ℚ)

end

end A107418.P15941072909350199104

namespace A107418

/-- `A001715(n+3)/A000142(n)*A001730(n+6)/n!` -/
def P15941072909350199104.Spec : Prop :=
  ∀ n, P15941072909350199104.a n = (A107418 n : ℚ)

end A107418

/-!
# A107419: a(n) = binomial(n+4,4)*binomial(n+7,7).

The programs for A107419, the canonical program `A107419.P674098352605240472` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107419 has offset 0).

The definition of A107419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107419.P674098352605240472

`∑[∑[n+1]]*∑[A050486(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107419

/-- `∑[∑[n+1]]*∑[A050486(n)]` -/
def P674098352605240472.Spec : Prop :=
  ∀ n, P674098352605240472.a n = A107419 n

theorem P674098352605240472.correct : P674098352605240472.Spec := by
  intro n
  simp only [A107419]

end A107419

/-! ## A107419.P9629216479799860635

`C(n+4, 4)*A000580(n+7)`
-/

namespace A107419.P9629216479799860635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A000580 (n + 7)

end

end A107419.P9629216479799860635

namespace A107419

/-- `C(n+4, 4)*A000580(n+7)` -/
def P9629216479799860635.Spec : Prop :=
  ∀ n, P9629216479799860635.a n = A107419 n

end A107419

/-! ## A107419.P14022565224579192978

`A000292(n+1)*A053347(n)`
-/

namespace A107419.P14022565224579192978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A053347 n

end

end A107419.P14022565224579192978

namespace A107419

/-- `A000292(n+1)*A053347(n)` -/
def P14022565224579192978.Spec : Prop :=
  ∀ n, P14022565224579192978.a n = A107419 n

end A107419

/-! ## A107419.P6626905578826343778

`∑[A000292(n+1)]*A000580(n+7)`
-/

namespace A107419.P6626905578826343778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7)

end

end A107419.P6626905578826343778

namespace A107419

/-- `∑[A000292(n+1)]*A000580(n+7)` -/
def P6626905578826343778.Spec : Prop :=
  ∀ n, P6626905578826343778.a n = A107419 n

end A107419

/-! ## A107419.P3415249210167783765

`Δ[A145126(n)]*A053347(n)`
-/

namespace A107419.P3415249210167783765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053347 n

end

end A107419.P3415249210167783765

namespace A107419

/-- `Δ[A145126(n)]*A053347(n)` -/
def P3415249210167783765.Spec : Prop :=
  ∀ n, P3415249210167783765.a n = A107419 n

end A107419

/-! ## A107419.P2177115972683119450

`A000332(n+4)*A000580(n+7)`
-/

namespace A107419.P2177115972683119450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A000580 (n + 7)

end

end A107419.P2177115972683119450

namespace A107419

/-- `A000332(n+4)*A000580(n+7)` -/
def P2177115972683119450.Spec : Prop :=
  ∀ n, P2177115972683119450.a n = A107419 n

end A107419

/-! ## A107419.P15924969858981352911

`∑[A299338(2*n)]*∑[A000292(n+1)]`
-/

namespace A107419.P15924969858981352911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A107419.P15924969858981352911

namespace A107419

/-- `∑[A299338(2*n)]*∑[A000292(n+1)]` -/
def P15924969858981352911.Spec : Prop :=
  ∀ n, P15924969858981352911.a n = A107419 n

end A107419

/-! ## A107419.P7743722922564650960

`A053347(n)*A074909(A167614(n+1))`
-/

namespace A107419.P7743722922564650960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 n * A074909 (A167614 (n + 1)).toNat

end

end A107419.P7743722922564650960

namespace A107419

/-- `A053347(n)*A074909(A167614(n+1))` -/
def P7743722922564650960.Spec : Prop :=
  ∀ n, P7743722922564650960.a n = A107419 n

end A107419

/-! ## A107419.P14574485641953949162

`A001720(n+4)/A000142(n)*A049388(n)/n!`
-/

namespace A107419.P14574485641953949162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001720 (n + 4) : ℚ) / (A000142 n : ℚ) * (A049388 n : ℚ) / (Nat.factorial n : ℚ)

end

end A107419.P14574485641953949162

namespace A107419

/-- `A001720(n+4)/A000142(n)*A049388(n)/n!` -/
def P14574485641953949162.Spec : Prop :=
  ∀ n, P14574485641953949162.a n = (A107419 n : ℚ)

end A107419

/-!
# A107420: a(n) = binomial(n+5,5)*binomial(n+8,8).

The programs for A107420, the canonical program `A107420.P998991494534180804` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107420 has offset 0).

The definition of A107420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107420.P998991494534180804

`∑[∑[A000292(n+1)]]*A000581(n+8)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107420

/-- `∑[∑[A000292(n+1)]]*A000581(n+8)` -/
def P998991494534180804.Spec : Prop :=
  ∀ n, P998991494534180804.a n = A107420 n

theorem P998991494534180804.correct : P998991494534180804.Spec := by
  intro n
  simp only [A107420]

end A107420

/-! ## A107420.P5879804211893221687

`(A051745(n+1)-(n+1))*A000581(n+8)`
-/

namespace A107420.P5879804211893221687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051745 (n + 1) - (n + 1 : ℤ)) * A000581 (n + 8)

end

end A107420.P5879804211893221687

namespace A107420

/-- `(A051745(n+1)-(n+1))*A000581(n+8)` -/
def P5879804211893221687.Spec : Prop :=
  ∀ n, P5879804211893221687.a n = A107420 n

end A107420

/-! ## A107420.P1326282190049098549

`(A051745(n+1)-(n+1))*∑[A000580(n+7)]`
-/

namespace A107420.P1326282190049098549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051745 (n + 1) - (n + 1 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107420.P1326282190049098549

namespace A107420

/-- `(A051745(n+1)-(n+1))*∑[A000580(n+7)]` -/
def P1326282190049098549.Spec : Prop :=
  ∀ n, P1326282190049098549.a n = A107420 n

end A107420

/-! ## A107420.P6720299357814797155

`(A062988(n)-A063258(n))*A000581(n+8)`
-/

namespace A107420.P6720299357814797155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062988 n - A063258 n) * A000581 (n + 8)

end

end A107420.P6720299357814797155

namespace A107420

/-- `(A062988(n)-A063258(n))*A000581(n+8)` -/
def P6720299357814797155.Spec : Prop :=
  ∀ n, P6720299357814797155.a n = A107420 n

end A107420

/-! ## A107420.P17678544938468770873

`A000389(n+5)*A000581(n+8)`
-/

namespace A107420.P17678544938468770873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A000581 (n + 8)

end

end A107420.P17678544938468770873

namespace A107420

/-- `A000389(n+5)*A000581(n+8)` -/
def P17678544938468770873.Spec : Prop :=
  ∀ n, P17678544938468770873.a n = A107420 n

end A107420

/-! ## A107420.P9319959103426210015

`Δ[A000579(n+5)]*A000581(n+8)`
-/

namespace A107420.P9319959103426210015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000581 (n + 8)

end

end A107420.P9319959103426210015

namespace A107420

/-- `Δ[A000579(n+5)]*A000581(n+8)` -/
def P9319959103426210015.Spec : Prop :=
  ∀ n, P9319959103426210015.a n = A107420 n

end A107420

/-! ## A107420.P8200281002601793568

`A001725(n+5)/A000142(n)*A049389(n)/n!`
-/

namespace A107420.P8200281002601793568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A049389 n : ℚ) / (Nat.factorial n : ℚ)

end

end A107420.P8200281002601793568

namespace A107420

/-- `A001725(n+5)/A000142(n)*A049389(n)/n!` -/
def P8200281002601793568.Spec : Prop :=
  ∀ n, P8200281002601793568.a n = (A107420 n : ℚ)

end A107420

/-!
# A107421: a(n) = binomial(n+6,6)*binomial(n+9,9).

The programs for A107421, the canonical program `A107421.P15477046414225489138` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107421 has offset 0).

The definition of A107421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107421.P17157868045889153631

`(n/6+1)*A105252(n)`
-/

namespace A107421.P17157868045889153631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 6 + 1) * (A105252 n : ℚ)

end

end A107421.P17157868045889153631

namespace A107421

/-- `(n/6+1)*A105252(n)` -/
def P17157868045889153631.Spec : Prop :=
  ∀ n, P17157868045889153631.a n = (A107421 n : ℚ)

end A107421

/-! ## A107421.P15477046414225489138

`∑[A051745(n+1)-(n+1)]*A000582(n+9)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107421

/-- `∑[A051745(n+1)-(n+1)]*A000582(n+9)` -/
def P15477046414225489138.Spec : Prop :=
  ∀ n, P15477046414225489138.a n = A107421 n

theorem P15477046414225489138.correct : P15477046414225489138.Spec := by
  intro n
  simp only [A107421]

end A107421

/-! ## A107421.P7166637088528690423

`A000579(n+6)*A000582(n+9)`
-/

namespace A107421.P7166637088528690423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A000582 (n + 9)

end

end A107421.P7166637088528690423

namespace A107421

/-- `A000579(n+6)*A000582(n+9)` -/
def P7166637088528690423.Spec : Prop :=
  ∀ n, P7166637088528690423.a n = A107421 n

end A107421

/-! ## A107421.P10851571903807983833

`∑[A000581(n+8)]*A000579(n+6)`
-/

namespace A107421.P10851571903807983833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000579 (n + 6)

end

end A107421.P10851571903807983833

namespace A107421

/-- `∑[A000581(n+8)]*A000579(n+6)` -/
def P10851571903807983833.Spec : Prop :=
  ∀ n, P10851571903807983833.a n = A107421 n

end A107421

/-! ## A107421.P922728448475476248

`A000582(n+9)*A299338(2*n)`
-/

namespace A107421.P922728448475476248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A299338 (2 * n)

end

end A107421.P922728448475476248

namespace A107421

/-- `A000582(n+9)*A299338(2*n)` -/
def P922728448475476248.Spec : Prop :=
  ∀ n, P922728448475476248.a n = A107421 n

end A107421

/-! ## A107421.P17737586307361787711

`A000582(n+9)/A000079(n)*A002409(n)`
-/

namespace A107421.P17737586307361787711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (n + 9) : ℚ) / (A000079 n : ℚ) * (A002409 n : ℚ)

end

end A107421.P17737586307361787711

namespace A107421

/-- `A000582(n+9)/A000079(n)*A002409(n)` -/
def P17737586307361787711.Spec : Prop :=
  ∀ n, P17737586307361787711.a n = (A107421 n : ℚ)

end A107421

/-! ## A107421.P7712992491357574165

`∑[A178822(∑[n])]*A000582(n+9)`
-/

namespace A107421.P7712992491357574165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178822 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000582 (n + 9)

end

end A107421.P7712992491357574165

namespace A107421

/-- `∑[A178822(∑[n])]*A000582(n+9)` -/
def P7712992491357574165.Spec : Prop :=
  ∀ n, P7712992491357574165.a n = A107421 n

end A107421

/-! ## A107421.P11898105767557331569

`A001730(n+6)/A000142(n+1)*A056114(n)`
-/

namespace A107421.P11898105767557331569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001730 (n + 6) : ℚ) / (A000142 (n + 1) : ℚ) * (A056114 n : ℚ)

end

end A107421.P11898105767557331569

namespace A107421

/-- `A001730(n+6)/A000142(n+1)*A056114(n)` -/
def P11898105767557331569.Spec : Prop :=
  ∀ n, P11898105767557331569.a n = (A107421 n : ℚ)

end A107421

/-! ## A107421.P5464198013574539566

`A000582(n+9)*A185509(∑[n+1])`
-/

namespace A107421.P5464198013574539566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A185509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107421.P5464198013574539566

namespace A107421

/-- `A000582(n+9)*A185509(∑[n+1])` -/
def P5464198013574539566.Spec : Prop :=
  ∀ n, P5464198013574539566.a n = A107421 n

end A107421

/-!
# A107422: a(n) = binomial(n+7,7) * binomial(n+10,10).

The programs for A107422, the canonical program `A107422.P7406720574690014575` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107422 has offset 0).

The definition of A107422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107422.P7406720574690014575

`C(n+7, 7)*C(n+10, 10)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107422

/-- `C(n+7, 7)*C(n+10, 10)` -/
def P7406720574690014575.Spec : Prop :=
  ∀ n, (P7406720574690014575.a n : ℤ) = A107422 n

theorem P7406720574690014575.correct : P7406720574690014575.Spec := by
  intro n
  simp only [A107422]

end A107422

/-! ## A107422.P1128602022359578773

`C(n+7, 7)*A001287(n)`
-/

namespace A107422.P1128602022359578773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A001287 (n + 10)

end

end A107422.P1128602022359578773

namespace A107422

/-- `C(n+7, 7)*A001287(n)` -/
def P1128602022359578773.Spec : Prop :=
  ∀ n, P1128602022359578773.a n = A107422 n

end A107422

/-! ## A107422.P16576341552063517629

`C(n+10, 10)*A000580(n+7)`
-/

namespace A107422.P16576341552063517629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 10) 10 : ℤ) * A000580 (n + 7)

end

end A107422.P16576341552063517629

namespace A107422

/-- `C(n+10, 10)*A000580(n+7)` -/
def P16576341552063517629.Spec : Prop :=
  ∀ n, P16576341552063517629.a n = A107422 n

end A107422

/-! ## A107422.P7280403144128432818

`A000580(n+7)*A001287(n)`
-/

namespace A107422.P7280403144128432818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A001287 (n + 10)

end

end A107422.P7280403144128432818

namespace A107422

/-- `A000580(n+7)*A001287(n)` -/
def P7280403144128432818.Spec : Prop :=
  ∀ n, P7280403144128432818.a n = A107422 n

end A107422

/-! ## A107422.P12539246286448489301

`∑[A000582(n+9)]*A000580(n+7)`
-/

namespace A107422.P12539246286448489301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7)

end

end A107422.P12539246286448489301

namespace A107422

/-- `∑[A000582(n+9)]*A000580(n+7)` -/
def P12539246286448489301.Spec : Prop :=
  ∀ n, P12539246286448489301.a n = A107422 n

end A107422

/-! ## A107422.P2499890868825943029

`∑[∑[A000581(n+8)]]*A000580(n+7)`
-/

namespace A107422.P2499890868825943029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7)

end

end A107422.P2499890868825943029

namespace A107422

/-- `∑[∑[A000581(n+8)]]*A000580(n+7)` -/
def P2499890868825943029.Spec : Prop :=
  ∀ n, P2499890868825943029.a n = A107422 n

end A107422

/-! ## A107422.P12780146458156163145

`(A027818(n+1)-A034265(n+1))*A001287(n)`
-/

namespace A107422.P12780146458156163145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027818 (n + 1) - A034265 (n + 1)) * A001287 (n + 10)

end

end A107422.P12780146458156163145

namespace A107422

/-- `(A027818(n+1)-A034265(n+1))*A001287(n)` -/
def P12780146458156163145.Spec : Prop :=
  ∀ n, P12780146458156163145.a n = A107422 n

end A107422

/-! ## A107422.P5353162659516449119

`∑[A000579(n+6)]*∑[A000582(n+9)]`
-/

namespace A107422.P5353162659516449119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A107422.P5353162659516449119

namespace A107422

/-- `∑[A000579(n+6)]*∑[A000582(n+9)]` -/
def P5353162659516449119.Spec : Prop :=
  ∀ n, P5353162659516449119.a n = A107422 n

end A107422

/-!
# A107423: Numbers k equal prime(m)*prime(m+1) such that k+1 is a square and k-1 is an even semiprime.

The programs for A107423, there is no canonical definition to state claims against.
-/

/-! ## A107423.P11434852530699620569

`A269663(n+1)+1`
-/

namespace A107423.P11434852530699620569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269663 (n + 1) + 1

end

end A107423.P11434852530699620569

/-! ## A107423.P13825554163356222830

`2*A086870(n+1)+1`
-/

namespace A107423.P13825554163356222830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086870 (n + 1) + 1

end

end A107423.P13825554163356222830

/-! ## A107423.P15696035118521805957

`or(1, A269663(Δ[n²]-n))`
-/

namespace A107423.P15696035118521805957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A107423.P15696035118521805957

/-! ## A107423.P13156624947944018417

`(A109945(n+1)+1)²-1`
-/

namespace A107423.P13156624947944018417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109945 (n + 1) + 1) ^ 2 - 1

end

end A107423.P13156624947944018417

/-! ## A107423.P15647815282564508213

`A005563(A109945(n+1))`
-/

namespace A107423.P15647815282564508213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A109945 (n + 1)).toNat

end

end A107423.P15647815282564508213

/-!
# A107424: Triangle read by rows: T(n, k) is the number of primitive (period n) n-bead necklace structures with k different colors. Only includes structures that contain all k colors.

The programs for A107424, there is no canonical definition to state claims against.
-/

/-! ## A107424.P14365792590459518176

`A276543(n+1)-A001489(A320647(n+1))`
-/

namespace A107424.P14365792590459518176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (n + 1) - A001489 (A320647 (n + 1)).toNat

end

end A107424.P14365792590459518176

/-! ## A107424.P12763774162380531183

`A152176(n+1)-A304972(n+1)-A001489(A276543(n+1))`
-/

namespace A107424.P12763774162380531183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152176 (n + 1) - A304972 (n + 1) - A001489 (A276543 (n + 1)).toNat

end

end A107424.P12763774162380531183

/-! ## A107424.P2363880133110884638

`(A152175(n+1)-A304972(n+1))/2-A001489(A276543(n+1))`
-/

namespace A107424.P2363880133110884638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152175 (n + 1) - A304972 (n + 1) : ℚ) / 2 - (A001489 (A276543 (n + 1)).toNat : ℚ)

end

end A107424.P2363880133110884638

/-! ## A107424.P2778036156146702358

`A276543(n+1)+A025480(A152175(n+1)-A304972(n+1))`
-/

namespace A107424.P2778036156146702358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (n + 1) + A025480 (A152175 (n + 1) - A304972 (n + 1)).toNat

end

end A107424.P2778036156146702358

/-! ## A107424.P530748891613353596

`A276543(n+1)+A026741(A152175(n+1)-A304972(n+1))`
-/

namespace A107424.P530748891613353596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (n + 1) + A026741 (A152175 (n + 1) - A304972 (n + 1)).toNat

end

end A107424.P530748891613353596

/-! ## A107424.P17609935953525748457

`A276543(n+1)+A110654(A152175(n+1)-A304972(n+1))`
-/

namespace A107424.P17609935953525748457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (n + 1) + A110654 (A152175 (n + 1) - A304972 (n + 1)).toNat

end

end A107424.P17609935953525748457

/-!
# A107426: Prime numbers p such that the sum of the terms of the continued fraction for prime(p)/p is prime.

The programs for A107426, there is no canonical definition to state claims against.
-/

/-! ## A107426.P7756936499310410977

`p?[A107899(n+1)]`
-/

namespace A107426.P7756936499310410977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107426.P7756936499310410977

/-! ## A107426.P13777047948754014663

`record[A006530(A107899(n+2))]`
-/

namespace A107426.P13777047948754014663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A107899 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107426.P13777047948754014663

/-! ## A107426.P8724827471720396520

`record[A020639(A107899(n+3))]`
-/

namespace A107426.P8724827471720396520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A107899 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107426.P8724827471720396520

/-! ## A107426.P14031573104236192554

`filter[A107899(n+1), A010051(#)]`
-/

namespace A107426.P14031573104236192554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A107426.P14031573104236192554

/-! ## A107426.P10883689790649538846

`filter[A107899(n+1), A323153(#)]`
-/

namespace A107426.P10883689790649538846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A107426.P10883689790649538846

/-! ## A107426.P4601372283900706014

`∩[A000040(n+1), A107899(n+1)]`
-/

namespace A107426.P4601372283900706014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107426.P4601372283900706014

/-! ## A107426.P8848632757013479592

`∩[A045344(n+1), A107899(n+1)]`
-/

namespace A107426.P8848632757013479592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107426.P8848632757013479592

/-! ## A107426.P12456421776664784429

`∩[A053813(n+1), A107899(n+1)]`
-/

namespace A107426.P12456421776664784429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107426.P12456421776664784429

/-! ## A107426.P2232726905002608191

`∩[A107899(n+1), A116974(n+1)]`
-/

namespace A107426.P2232726905002608191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107426.P2232726905002608191

/-! ## A107426.P219468143180132726

`∩[A107899(n+1), A182986(n+1)]`
-/

namespace A107426.P219468143180132726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107426.P219468143180132726

/-! ## A107426.P12487129478477362694

`record[p?[A107899(A052938(n))]]`
-/

namespace A107426.P12487129478477362694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107426.P12487129478477362694

/-! ## A107426.P7573144041144191667

`filter[A107899(n+2), A080339(#)]`
-/

namespace A107426.P7573144041144191667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A107426.P7573144041144191667

/-! ## A107426.P3381385734672938606

`∩[A107899(n+1), A240960(n+1)]`
-/

namespace A107426.P3381385734672938606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107426.P3381385734672938606

/-! ## A107426.P18402227843199203770

`∩[A107899(n+1), A385492(n+1)]`
-/

namespace A107426.P18402227843199203770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107426.P18402227843199203770

/-!
# A107428: Number of gap-free compositions of n.

The programs for A107428, there is no canonical definition to state claims against.
-/

/-! ## A107428.P13733554070055400493

`A251729(n+1)+A107429(n+1)`
-/

namespace A107428.P13733554070055400493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251729 (n + 1) + A107429 (n + 1)

end

end A107428.P13733554070055400493

/-! ## A107428.P1798792557806859332

`A107429(n+1)+A188575(n+1)-A356846(n+1)`
-/

namespace A107428.P1798792557806859332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107429 (n + 1) + (A188575 (n + 1) - A356846 (n + 1))

end

end A107428.P1798792557806859332

/-! ## A107428.P358303230146502176

`2^n-A356846(n+1)`
-/

namespace A107428.P358303230146502176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A356846 (n + 1)

end

end A107428.P358303230146502176

/-! ## A107428.P17740675549130482460

`A251729(n+1)+A000079(n)-A188575(n+1)`
-/

namespace A107428.P17740675549130482460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251729 (n + 1) + (A000079 n - A188575 (n + 1))

end

end A107428.P17740675549130482460

/-! ## A107428.P9625937492380262980

`A251729(n+1)+A000225(n)+1-A188575(n+1)`
-/

namespace A107428.P9625937492380262980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251729 (n + 1) + (A000225 n + (1 - A188575 (n + 1)))

end

end A107428.P9625937492380262980

/-! ## A107428.P9478671493363778801

`A011782(n+1)+A251729(n+1)-A188575(n+1)`
-/

namespace A107428.P9478671493363778801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A251729 (n + 1) - A188575 (n + 1))

end

end A107428.P9478671493363778801

/-! ## A107428.P9542686244836182154

`A251729(n+1)+A000918(n)+2-A188575(n+1)`
-/

namespace A107428.P9542686244836182154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251729 (n + 1) + (A000918 n + (2 - A188575 (n + 1)))

end

end A107428.P9542686244836182154

/-! ## A107428.P12339785729055997156

`A251729(n+1)+Δ[A000295(n)]+1-A188575(n+1)`
-/

namespace A107428.P12339785729055997156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251729 (n + 1) + (f1 (n + 1) - f1 n + (1 - A188575 (n + 1)))

end

end A107428.P12339785729055997156

/-!
# A107429: Number of complete compositions of n.

The programs for A107429, there is no canonical definition to state claims against.
-/

/-! ## A107429.P19101177713269805

`A107428(n+1)-A251729(n+1)`
-/

namespace A107429.P19101177713269805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) - A251729 (n + 1)

end

end A107429.P19101177713269805

/-! ## A107429.P7674586853109414673

`2^n-A188575(n+1)`
-/

namespace A107429.P7674586853109414673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A188575 (n + 1)

end

end A107429.P7674586853109414673

/-! ## A107429.P12338844996509953547

`abs(A188575(n+1)-A000079(n))`
-/

namespace A107429.P12338844996509953547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188575 (n + 1) - A000079 n|

end

end A107429.P12338844996509953547

/-! ## A107429.P9279889660138541994

`A000225(n)+1-A188575(n+1)`
-/

namespace A107429.P9279889660138541994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A188575 (n + 1))

end

end A107429.P9279889660138541994

/-! ## A107429.P5176085933267459667

`A000918(n)+2-A188575(n+1)`
-/

namespace A107429.P5176085933267459667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A188575 (n + 1))

end

end A107429.P5176085933267459667

/-! ## A107429.P445708610717664057

`lcm(A188575(n+1)-A000079(n), A097807(n))`
-/

namespace A107429.P445708610717664057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A188575 (n + 1) - A000079 n) (A097807 n)

end

end A107429.P445708610717664057

/-! ## A107429.P249998673275007386

`A000038(n+1)+A000079(n)-A188575(n+1)`
-/

namespace A107429.P249998673275007386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000079 n - A188575 (n + 1))

end

end A107429.P249998673275007386

/-! ## A107429.P3181398532299615079

`A046665(A032545(n+1))-(A188575(n+1)-A000079(n))`
-/

namespace A107429.P3181398532299615079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A032545 (n + 1)).toNat - (A188575 (n + 1) - A000079 n)

end

end A107429.P3181398532299615079

/-! ## A107429.P109952524811220315

`A046665(A014963(n+2))-(A188575(n+1)-A000079(n))`
-/

namespace A107429.P109952524811220315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A014963 (n + 2)).toNat - (A188575 (n + 1) - A000079 n)

end

end A107429.P109952524811220315

/-! ## A107429.P5455606391898917209

`Δ[A000295(n)]+1-A188575(n+1)`
-/

namespace A107429.P5455606391898917209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A188575 (n + 1))

end

end A107429.P5455606391898917209

/-!
# A107430: Triangle read by rows: row n is row n of Pascal's triangle (A007318) sorted into increasing order.

The programs for A107430, the canonical program `A107430.P11529680414182301624` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107430 has offset 0).

The definition of A107430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107430.P11885981343960915193

`A007318(A057027(n+1)-1)`
-/

namespace A107430.P11885981343960915193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057027 (n + 1) - 1).toNat

end

end A107430.P11885981343960915193

namespace A107430

/-- `A007318(A057027(n+1)-1)` -/
def P11885981343960915193.Spec : Prop :=
  ∀ n, P11885981343960915193.a n = A107430 n

end A107430

/-! ## A107430.P5284526207965501151

`A007318(round(sqrt(n*A057944(n))))`
-/

namespace A107430.P5284526207965501151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (Real.sqrt ((n : ℤ) * A057944 n : ℝ))).toNat

end

end A107430.P5284526207965501151

namespace A107430

/-- `A007318(round(sqrt(n*A057944(n))))` -/
def P5284526207965501151.Spec : Prop :=
  ∀ n, P5284526207965501151.a n = A107430 n

end A107430

/-! ## A107430.P2623871247212358174

`A007318(n-floor(A002260(n+1)/2))`
-/

namespace A107430.P2623871247212358174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - ⌊(A002260 (n + 1) : ℚ) / 2⌋).toNat

end

end A107430.P2623871247212358174

namespace A107430

/-- `A007318(n-floor(A002260(n+1)/2))` -/
def P2623871247212358174.Spec : Prop :=
  ∀ n, P2623871247212358174.a n = A107430 n

end A107430

/-! ## A107430.P12313224917023752370

`A007318(ceil(n-A002260(n+1)/2))`
-/

namespace A107430.P12313224917023752370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) - (A002260 (n + 1) : ℚ) / 2⌉.toNat

end

end A107430.P12313224917023752370

namespace A107430

/-- `A007318(ceil(n-A002260(n+1)/2))` -/
def P12313224917023752370.Spec : Prop :=
  ∀ n, P12313224917023752370.a n = A107430 n

end A107430

/-! ## A107430.P11529680414182301624

`C(A003056(n), A004526(A002262(n)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107430

/-- `C(A003056(n), A004526(A002262(n)))` -/
def P11529680414182301624.Spec : Prop :=
  ∀ n, (P11529680414182301624.a n : ℤ) = A107430 n

theorem P11529680414182301624.correct : P11529680414182301624.Spec := by
  intro n
  simp only [A107430]

end A107430

/-! ## A107430.P14192405622015015697

`A007318(n-A004526(A002260(n+1)))`
-/

namespace A107430.P14192405622015015697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - A004526 (A002260 (n + 1)).toNat).toNat

end

end A107430.P14192405622015015697

namespace A107430

/-- `A007318(n-A004526(A002260(n+1)))` -/
def P14192405622015015697.Spec : Prop :=
  ∀ n, P14192405622015015697.a n = A107430 n

end A107430

/-! ## A107430.P5202924236556923446

`A061554(A061579(n))`
-/

namespace A107430.P5202924236556923446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A061579 n).toNat

end

end A107430.P5202924236556923446

namespace A107430

/-- `A061554(A061579(n))` -/
def P5202924236556923446.Spec : Prop :=
  ∀ n, P5202924236556923446.a n = A107430 n

end A107430

/-! ## A107430.P12259908124217402625

`A061554(A038722(n+1)-1)`
-/

namespace A107430.P12259908124217402625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A038722 (n + 1) - 1).toNat

end

end A107430.P12259908124217402625

namespace A107430

/-- `A061554(A038722(n+1)-1)` -/
def P12259908124217402625.Spec : Prop :=
  ∀ n, P12259908124217402625.a n = A107430 n

end A107430

/-! ## A107430.P3510297163497234322

`A127159(n)-A061554(n)`
-/

namespace A107430.P3510297163497234322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127159 n - A061554 n

end

end A107430.P3510297163497234322

namespace A107430

/-- `A127159(n)-A061554(n)` -/
def P3510297163497234322.Spec : Prop :=
  ∀ n, P3510297163497234322.a n = A107430 n

end A107430

/-! ## A107430.P13720858886885655926

`A152905(A061885(n))`
-/

namespace A107430.P13720858886885655926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A061885 n).toNat

end

end A107430.P13720858886885655926

namespace A107430

/-- `A152905(A061885(n))` -/
def P13720858886885655926.Spec : Prop :=
  ∀ n, P13720858886885655926.a n = A107430 n

end A107430

/-! ## A107430.P14900111325769164606

`A140751(A063656(n))`
-/

namespace A107430.P14900111325769164606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A063656 n).toNat

end

end A107430.P14900111325769164606

namespace A107430

/-- `A140751(A063656(n))` -/
def P14900111325769164606.Spec : Prop :=
  ∀ n, P14900111325769164606.a n = A107430 n

end A107430

/-!
# A107433: Slowest increasing sequence where some digit of a(n) and some digit of a(n+1) add up to 9.

The programs for A107433, there is no canonical definition to state claims against.
-/

/-! ## A107433.P2221775686640918347

`A107927(a(n-1))` with `a(0)=0`
-/

namespace A107433.P2221775686640918347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107927 (a (n - 1)).toNat

end

end A107433.P2221775686640918347

/-! ## A107433.P4651259261130070770

`A107927(abs(a(A259361(n²))))` with `a(0)=0`
-/

namespace A107433.P4651259261130070770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107927 |a (A259361 (n ^ 2)).toNat|.toNat

end

end A107433.P4651259261130070770

/-! ## A107433.P4791683947233594063

`A107927(floor(a(A259361(n²))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A107433.P4791683947233594063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107927 (a (A259361 (n ^ 2)).toNat).toNat

end

end A107433.P4791683947233594063

/-! ## A107433.P9556188010595918698

`A107927(ceil(a(A259361(n²))))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A107433.P9556188010595918698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107927 (a (A259361 (n ^ 2)).toNat).toNat

end

end A107433.P9556188010595918698

/-! ## A107433.P9928332370392897324

`A107927(a(A259361(n²)))+char[32]` with `a(0)=0`
-/

namespace A107433.P9928332370392897324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107927 (a (A259361 (n ^ 2)).toNat).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107433.P9928332370392897324

/-!
# A107435: Triangle T(n,k), 1<=k<=n, read by rows: T(n,k) = length of Euclidean algorithm starting with n and k.

The programs for A107435, there is no canonical definition to state claims against.
-/

/-! ## A107435.P1261217194614615420

`A049816(n+1)+1`
-/

namespace A107435.P1261217194614615420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049816 (n + 1) + 1

end

end A107435.P1261217194614615420

/-! ## A107435.P10818202963350990070

`A051010(3-A023532(n)+n)`
-/

namespace A107435.P10818202963350990070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (3 - A023532 n + (n : ℤ)).toNat

end

end A107435.P10818202963350990070

/-! ## A107435.P8022424160241811985

`A051010(n+2)+Δ[A003056(n)]`
-/

namespace A107435.P8022424160241811985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (n + 2) + (f1 (n + 1) - f1 n)

end

end A107435.P8022424160241811985

/-! ## A107435.P9830220631475291111

`A051010(Δ[A003056(n)+A000096(n)])`
-/

namespace A107435.P9830220631475291111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (f1 (n + 1) - f1 n).toNat

end

end A107435.P9830220631475291111

/-! ## A107435.P13927749462003577494

`gcd(A051010(n+2), A271703(n))`
-/

namespace A107435.P13927749462003577494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051010 (n + 2)) (A271703 n)

end

end A107435.P13927749462003577494

/-! ## A107435.P14987018293798747338

`A141539(A285192(n)+A051010(n+2))`
-/

namespace A107435.P14987018293798747338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (A285192 n + A051010 (n + 2)).toNat

end

end A107435.P14987018293798747338

/-!
# A107436: a(n) = (a^5)(n-1) + a(n-a(n-1)) = a(a(a(a(a(n-1))))) + a(n-a(n-1)), a(1) = a(2) = 1.

The programs for A107436, the canonical program `A107436.P8000479892481751765` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107436 has offset 1).

The definition of A107436 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(a(a(a(n-1)-1)-1)-1)-1)+a(n-a(n-1))` (program `A107436.P8000479892481751765`, by `A107436.P8000479892481751765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107436.P8000479892481751765

`a(a(a(a(a(n-1)-1)-1)-1)-1)+a(n-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107436

/-- `a(a(a(a(a(n-1)-1)-1)-1)-1)+a(n-a(n-1))` -/
def P8000479892481751765.Spec : Prop :=
  ∀ n, (P8000479892481751765.a n : ℤ) = A107436 (n + 1)

theorem P8000479892481751765.correct : P8000479892481751765.Spec := by
  intro n
  simp only [A107436, Nat.add_sub_cancel]

end A107436

/-! ## A107436.P7917623074377022915

`A130716(A067013(2*n+1))+round(sqrt(2*n))`
-/

namespace A107436.P7917623074377022915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (A067013 (2 * n + 1)).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A107436.P7917623074377022915

namespace A107436

/-- `A130716(A067013(2*n+1))+round(sqrt(2*n))` -/
def P7917623074377022915.Spec : Prop :=
  ∀ n, P7917623074377022915.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P2811398507246484809

`A327169(A000040(n+1))+round(sqrt(2*n))`
-/

namespace A107436.P2811398507246484809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327169 (A000040 (n + 1)).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A107436.P2811398507246484809

namespace A107436

/-- `A327169(A000040(n+1))+round(sqrt(2*n))` -/
def P2811398507246484809.Spec : Prop :=
  ∀ n, P2811398507246484809.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P9931434398744983565

`A123578(n)+A091225(A005574(3*n+2))`
-/

namespace A107436.P9931434398744983565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + A091225 (A005574 (3 * n + 2)).toNat

end

end A107436.P9931434398744983565

namespace A107436

/-- `A123578(n)+A091225(A005574(3*n+2))` -/
def P9931434398744983565.Spec : Prop :=
  ∀ n, P9931434398744983565.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P9710796603648669771

`A002024(A028310(n))%A301718(n+1)`
-/

namespace A107436.P9710796603648669771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A028310 n).toNat) (A301718 (n + 1))

end

end A107436.P9710796603648669771

namespace A107436

/-- `A002024(A028310(n))%A301718(n+1)` -/
def P9710796603648669771.Spec : Prop :=
  ∀ n, P9710796603648669771.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P1915625223866312943

`A000035(A278540(n+1))+round(sqrt(2*n))`
-/

namespace A107436.P1915625223866312943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278540 (n + 1)).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A107436.P1915625223866312943

namespace A107436

/-- `A000035(A278540(n+1))+round(sqrt(2*n))` -/
def P1915625223866312943.Spec : Prop :=
  ∀ n, P1915625223866312943.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P11550082689548422630

`∑[A038719(n)%2]`
-/

namespace A107436.P11550082689548422630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038719 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107436.P11550082689548422630

namespace A107436

/-- `∑[A038719(n)%2]` -/
def P11550082689548422630.Spec : Prop :=
  ∀ n, P11550082689548422630.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P11448503843383662795

`A000007(A125985(n))+round(sqrt(2*n))`
-/

namespace A107436.P11448503843383662795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A125985 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A107436.P11448503843383662795

namespace A107436

/-- `A000007(A125985(n))+round(sqrt(2*n))` -/
def P11448503843383662795.Spec : Prop :=
  ∀ n, P11448503843383662795.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P17519840403567802602

`A349127(A348227(n))+A000194(2*n)`
-/

namespace A107436.P17519840403567802602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A348227 n).toNat + A000194 (2 * n)

end

end A107436.P17519840403567802602

namespace A107436

/-- `A349127(A348227(n))+A000194(2*n)` -/
def P17519840403567802602.Spec : Prop :=
  ∀ n, P17519840403567802602.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P18159715215633557925

`A000007(A008587(n))+round(sqrt(2*n))`
-/

namespace A107436.P18159715215633557925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008587 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A107436.P18159715215633557925

namespace A107436

/-- `A000007(A008587(n))+round(sqrt(2*n))` -/
def P18159715215633557925.Spec : Prop :=
  ∀ n, P18159715215633557925.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P14987691326912772431

`∑[A193727(n)²%2]`
-/

namespace A107436.P14987691326912772431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193727 n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107436.P14987691326912772431

namespace A107436

/-- `∑[A193727(n)²%2]` -/
def P14987691326912772431.Spec : Prop :=
  ∀ n, P14987691326912772431.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P17512301761811991973

`gcd(A076256(n), A274093(n))`
-/

namespace A107436.P17512301761811991973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076256 n) (A274093 n)

end

end A107436.P17512301761811991973

namespace A107436

/-- `gcd(A076256(n), A274093(n))` -/
def P17512301761811991973.Spec : Prop :=
  ∀ n, (P17512301761811991973.a n : ℤ) = A107436 (n + 1)

end A107436

/-! ## A107436.P17370800244192608814

`∑[A211608(n)%3]`
-/

namespace A107436.P17370800244192608814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211608 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107436.P17370800244192608814

namespace A107436

/-- `∑[A211608(n)%3]` -/
def P17370800244192608814.Spec : Prop :=
  ∀ n, P17370800244192608814.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P10428814538542056701

`gcd(A055858(n), A123578(n))`
-/

namespace A107436.P10428814538542056701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055858 n) (A123578 n)

end

end A107436.P10428814538542056701

namespace A107436

/-- `gcd(A055858(n), A123578(n))` -/
def P10428814538542056701.Spec : Prop :=
  ∀ n, (P10428814538542056701.a n : ℤ) = A107436 (n + 1)

end A107436

/-! ## A107436.P13382624557632028191

`A000194(A019442(n+2)/2)`
-/

namespace A107436.P13382624557632028191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A019442 (n + 2) : ℚ) / 2)).toNat

end

end A107436.P13382624557632028191

namespace A107436

/-- `A000194(A019442(n+2)/2)` -/
def P13382624557632028191.Spec : Prop :=
  ∀ n, P13382624557632028191.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P4942258087390089702

`round(sqrt(gcd(n, ∏{d}[n, #²])+n))`
-/

namespace A107436.P4942258087390089702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.gcd n (∏ d ∈ Nat.divisors (f1 n), d ^ 2) + n : ℝ))

end

end A107436.P4942258087390089702

namespace A107436

/-- `round(sqrt(gcd(n, ∏{d}[n, #²])+n))` -/
def P4942258087390089702.Spec : Prop :=
  ∀ n, P4942258087390089702.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P14946807591996902367

`round(sqrt(eq[n, C(n, A000041(a(n-2))²)]))` with `a(0)=1, a(1)=1`
-/

namespace A107436.P14946807591996902367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  Nat.choose n (A000041 (f2 (n - 2)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℝ))

end

end A107436.P14946807591996902367

namespace A107436

/-- `round(sqrt(eq[n, C(n, A000041(a(n-2))²)]))` -/
def P14946807591996902367.Spec : Prop :=
  ∀ n, P14946807591996902367.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P17667398559046020483

`∑[A323128(n)%2]`
-/

namespace A107436.P17667398559046020483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323128 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107436.P17667398559046020483

namespace A107436

/-- `∑[A323128(n)%2]` -/
def P17667398559046020483.Spec : Prop :=
  ∀ n, P17667398559046020483.a n = A107436 (n + 1)

end A107436

/-! ## A107436.P9015715386592930896

`gcd(A076741(n), A274094(n))`
-/

namespace A107436.P9015715386592930896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076741 n) (A274094 n)

end

end A107436.P9015715386592930896

namespace A107436

/-- `gcd(A076741(n), A274094(n))` -/
def P9015715386592930896.Spec : Prop :=
  ∀ n, (P9015715386592930896.a n : ℤ) = A107436 (n + 1)

end A107436

/-! ## A107436.P2693305978078071511

`∑[(A318146(n)%5)²%3]`
-/

namespace A107436.P2693305978078071511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A318146 n) 5 ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107436.P2693305978078071511

namespace A107436

/-- `∑[(A318146(n)%5)²%3]` -/
def P2693305978078071511.Spec : Prop :=
  ∀ n, P2693305978078071511.a n = A107436 (n + 1)

end A107436

/-!
# A107437: Number of difference boxes for initial a=prime(n), b=prime(n+1), c=prime(n+1), s=prime(n+3) (see comments).

The programs for A107437, there is no canonical definition to state claims against.
-/

/-! ## A107437.P4603544136002617208

`A139205(gcd(A139205(n+1), A180630(n+1)))`
-/

namespace A107437.P4603544136002617208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139205 (Int.gcd (A139205 (n + 1)) (A180630 (n + 1)))

end

end A107437.P4603544136002617208

/-!
# A107438: Primes p such that 7*p+2 or 2*p+7 is prime.

The programs for A107438, there is no canonical definition to state claims against.
-/

/-! ## A107438.P8369081476655647664

`∪[A023206(n+1), A023223(n+1)]`
-/

namespace A107438.P8369081476655647664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P8369081476655647664

/-! ## A107438.P12912551231038354288

`∪[A023206(n+1), p?[A105772(n+1)]]`
-/

namespace A107438.P12912551231038354288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P12912551231038354288

/-! ## A107438.P15963678804795755019

`∪[A023223(n+1), p?[A105760(n+1)]]`
-/

namespace A107438.P15963678804795755019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P15963678804795755019

/-! ## A107438.P11071013552099166291

`p?[∪[A105760(n+1), A105772(n+1)]]`
-/

namespace A107438.P11071013552099166291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107438.P11071013552099166291

/-! ## A107438.P4154024870306037738

`∪[A023223(n+1), p?[A161720(n+3)]]`
-/

namespace A107438.P4154024870306037738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P4154024870306037738

/-! ## A107438.P4824843335281335391

`∪[A023223(n+1), p?[A089038(n+1)-1]]`
-/

namespace A107438.P4824843335281335391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P4824843335281335391

/-! ## A107438.P8186179045135193942

`∪[A023223(n+1), p?[A005097(n+3)-3]]`
-/

namespace A107438.P8186179045135193942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 3) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P8186179045135193942

/-! ## A107438.P9202136189978032577

`∪[A023223(n+1), p?[A098090(n+3)-5]]`
-/

namespace A107438.P9202136189978032577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 3) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P9202136189978032577

/-! ## A107438.P14447822399681896826

`∪[A023223(n+1), p?[A089253(n+3)-6]]`
-/

namespace A107438.P14447822399681896826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 3) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107438.P14447822399681896826

/-!
# A107439: a(1)=2, a(n) is the smallest prime > a(n-1) such that a(n) is a primitive root mod a(n-1) and vice versa.

The programs for A107439, there is no canonical definition to state claims against.
-/

/-! ## A107439.P833022267090665520

`p?[∑[gcd(6, A036372(n))]]`
-/

namespace A107439.P833022267090665520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A036372 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107439.P833022267090665520

/-! ## A107439.P6680307843908847660

`A034694(∑[A296150(n!)])`
-/

namespace A107439.P6680307843908847660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107439.P6680307843908847660

/-! ## A107439.P8004303254912200073

`p?[∑[A089128(A036372(n))]]`
-/

namespace A107439.P8004303254912200073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (A036372 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107439.P8004303254912200073

/-! ## A107439.P120284978364760186

`∩[A248344(n+1), A249611(n+1)]`
-/

namespace A107439.P120284978364760186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107439.P120284978364760186

/-!
# A107442: Prime numbers p such that p+6 and p^2+6^2 are both primes.

The programs for A107442, there is no canonical definition to state claims against.
-/

/-! ## A107442.P5453913649689081887

`A386529(A065296(n+2))`
-/

namespace A107442.P5453913649689081887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386529 (A065296 (n + 2)).toNat

end

end A107442.P5453913649689081887

/-!
# A107443: Expansion of g.f.: (1+3*x^2)/((1-x)*(1+x+2*x^2)*(1-x+2*x^2)).

The programs for A107443, the canonical program `A107443.P17674549567923757110` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107443 has offset 0).

The definition of A107443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107443.P17674549567923757110

`-A078033(∑[(-1)^n]+n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107443

/-- `-A078033(∑[(-1)^n]+n)` -/
def P17674549567923757110.Spec : Prop :=
  ∀ n, P17674549567923757110.a n = A107443 n

theorem P17674549567923757110.correct : P17674549567923757110.Spec := by
  intro n
  simp only [A107443]

end A107443

/-! ## A107443.P15041729952087586855

`A077912(A033999(n)+n)+A077912(n)`
-/

namespace A107443.P15041729952087586855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077912 (A033999 n + (n : ℤ)).toNat + A077912 n

end

end A107443.P15041729952087586855

namespace A107443

/-- `A077912(A033999(n)+n)+A077912(n)` -/
def P15041729952087586855.Spec : Prop :=
  ∀ n, P15041729952087586855.a n = A107443 n

end A107443

/-! ## A107443.P17589637309577908268

`A077912(A004443(2*n)/2)+A077912(n)`
-/

namespace A107443.P17589637309577908268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077912 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat + A077912 n

end

end A107443.P17589637309577908268

namespace A107443

/-- `A077912(A004443(2*n)/2)+A077912(n)` -/
def P17589637309577908268.Spec : Prop :=
  ∀ n, P17589637309577908268.a n = A107443 n

end A107443

/-! ## A107443.P16143957687822386515

`A077876(and(n, -2))`
-/

namespace A107443.P16143957687822386515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (Int.land (n : ℤ) (-2)).toNat

end

end A107443.P16143957687822386515

namespace A107443

/-- `A077876(and(n, -2))` -/
def P16143957687822386515.Spec : Prop :=
  ∀ n, P16143957687822386515.a n = A107443 n

end A107443

/-! ## A107443.P676368237901899992

`A174565(floor(n/2))`
-/

namespace A107443.P676368237901899992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174565 ⌊(n : ℚ) / 2⌋.toNat

end

end A107443.P676368237901899992

namespace A107443

/-- `A174565(floor(n/2))` -/
def P676368237901899992.Spec : Prop :=
  ∀ n, P676368237901899992.a n = A107443 n

end A107443

/-! ## A107443.P5484069157565158790

`A077876(n-and(1, n))`
-/

namespace A107443.P5484069157565158790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (n - Nat.land 1 n)

end

end A107443.P5484069157565158790

namespace A107443

/-- `A077876(n-and(1, n))` -/
def P5484069157565158790.Spec : Prop :=
  ∀ n, P5484069157565158790.a n = A107443 n

end A107443

/-! ## A107443.P17784629779454109339

`A077876((n+1)%2+n-1)`
-/

namespace A107443.P17784629779454109339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 ((((n + 1) % 2 : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A107443.P17784629779454109339

namespace A107443

/-- `A077876((n+1)%2+n-1)` -/
def P17784629779454109339.Spec : Prop :=
  ∀ n, P17784629779454109339.a n = A107443 n

end A107443

/-! ## A107443.P3123424018060113540

`A077876(A052928(n))`
-/

namespace A107443.P3123424018060113540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (A052928 n).toNat

end

end A107443.P3123424018060113540

namespace A107443

/-- `A077876(A052928(n))` -/
def P3123424018060113540.Spec : Prop :=
  ∀ n, P3123424018060113540.a n = A107443 n

end A107443

/-! ## A107443.P14267290985823884313

`∑[A059841(n)*A078050(n)]`
-/

namespace A107443.P14267290985823884313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A078050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107443.P14267290985823884313

namespace A107443

/-- `∑[A059841(n)*A078050(n)]` -/
def P14267290985823884313.Spec : Prop :=
  ∀ n, P14267290985823884313.a n = A107443 n

end A107443

/-!
# A107444: a(n) = C(n^3, n).

The programs for A107444, there is no canonical definition to state claims against.
-/

/-! ## A107444.P16816690717502846482

`C(Δ[∑[n]²], n+1)`
-/

namespace A107444.P16816690717502846482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (n + 1)

end

end A107444.P16816690717502846482

/-! ## A107444.P12205422058559889683

`root(C((n+1)^3, n+1), 2)²`
-/

namespace A107444.P12205422058559889683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((n + 1) ^ 3) (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A107444.P12205422058559889683

/-! ## A107444.P6219045338964445838

`lcm(n+1, C((n+1)^3, n+1))`
-/

namespace A107444.P6219045338964445838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose ((n + 1) ^ 3) (n + 1))

end

end A107444.P6219045338964445838

/-! ## A107444.P16474626946651740815

`lcm(C((n+1)*(n+1)², n+1), (n+1)²)`
-/

namespace A107444.P16474626946651740815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.choose ((n + 1) * (n + 1) ^ 2) (n + 1)) ((n + 1) ^ 2)

end

end A107444.P16474626946651740815

/-! ## A107444.P12730551823339929145

`Δ[A359665(n)]`
-/

namespace A107444.P12730551823339929145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107444.P12730551823339929145

/-!
# A107445: Number of 4n X 4n alternating-sign matrices of type UU.

The programs for A107445, there is no canonical definition to state claims against.
-/

/-! ## A107445.P4952150241116710759

`A005156(n)*A059489(n)`
-/

namespace A107445.P4952150241116710759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005156 n * A059489 n

end

end A107445.P4952150241116710759

/-! ## A107445.P3235965823487403508

`sqrt(A059492(n))*A059489(n)`
-/

namespace A107445.P3235965823487403508
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059492 n : ℝ) * (A059489 n : ℝ)

end

end A107445.P3235965823487403508

/-! ## A107445.P12339275421554081234

`A005156(n)*A005157(2*n)`
-/

namespace A107445.P12339275421554081234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005156 n * A005157 (2 * n)

end

end A107445.P12339275421554081234

/-!
# A107446: a(n) = binomial(n^4, n).

The programs for A107446, there is no canonical definition to state claims against.
-/

/-! ## A107446.P1035045680646796830

`C(n^4, n)`
-/

namespace A107446.P1035045680646796830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 4) n

end

end A107446.P1035045680646796830

/-! ## A107446.P14237012646282839244

`root(C(n²², n), 2)²`
-/

namespace A107446.P14237012646282839244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((n ^ 2) ^ 2) n : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A107446.P14237012646282839244

/-! ## A107446.P11693003525470699385

`and(-3, C(n²², n))`
-/

namespace A107446.P11693003525470699385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Nat.choose ((n ^ 2) ^ 2) n : ℤ)

end

end A107446.P11693003525470699385

/-! ## A107446.P7768163595791195830

`abs(C(n²², n)-n)+n`
-/

namespace A107446.P7768163595791195830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose ((n ^ 2) ^ 2) n : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A107446.P7768163595791195830

/-! ## A107446.P16052734086723360411

`lcm(1-4/2, C(n²², n))`
-/

namespace A107446.P16052734086723360411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (Nat.choose ((n ^ 2) ^ 2) n : ℤ)

end

end A107446.P16052734086723360411

/-!
# A107447: 

The programs for A107447, there is no canonical definition to state claims against.
-/

/-! ## A107447.P5797384929391616914

`C((n+1)!, (n+1)²)`
-/

namespace A107447.P5797384929391616914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 1)) ((n + 1) ^ 2)

end

end A107447.P5797384929391616914

/-!
# A107448: Irregular triangle T(n, k) = b(n) + k^2 + k + 1, where b(n) = A056486(n-1) - (1/2)*[n=1], for n >= 1 and 1 <= k <= b(n) - 1, read by rows.

The programs for A107448, there is no canonical definition to state claims against.
-/

/-! ## A107448.P1705891715166540252

`A118941((A266318(∑[n+1])+A025426(2*n+3))%3+n)`
-/

namespace A107448.P1705891715166540252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118941 (Int.tmod (A266318 (∑ j ∈ Finset.range (n + 1), f1 j) + A025426 (2 * n + 3)) 3 + (n : ℤ)).toNat

end

end A107448.P1705891715166540252

/-! ## A107448.P15057932710569910918

`p?[A247764(n+1)+A054245(2*(n+2))]`
-/

namespace A107448.P15057932710569910918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1) + A054245 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107448.P15057932710569910918

/-! ## A107448.P158037535371008833

`A307701((2*n+3)*A056171(2*(n+1)))`
-/

namespace A107448.P158037535371008833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 ((2 * n + 3 : ℤ) * A056171 (2 * (n + 1))).toNat

end

end A107448.P158037535371008833

/-! ## A107448.P18242009957638780263

`A307701(log2(A056672(2*(n+1)))*(2*n+3))`
-/

namespace A107448.P18242009957638780263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 (SequenceMachineLib.roundAway (Real.logb 2 (A056672 (2 * (n + 1)) : ℝ) * (2 * n + 3 : ℝ))).toNat

end

end A107448.P18242009957638780263

/-! ## A107448.P5541035703865623690

`p?[A038608(n)-A171177(A033627(n+1))]`
-/

namespace A107448.P5541035703865623690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n - A171177 (A033627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107448.P5541035703865623690

/-!
# A107449: Irregular triangle T(n, k) = 10 - ( (b(n) + k^2 + k + 1) mod 10 ), where b(n) = A056486(n-1) - (1/2)*[n=1], for n >= 1 and 1 <= k <= b(n) - 1, read by rows.

The programs for A107449, there is no canonical definition to state claims against.
-/

/-! ## A107449.P4788560932277405315

`(A059436(2*n+3)-A107448(n+1))%10`
-/

namespace A107449.P4788560932277405315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059436 (2 * n + 3) - A107448 (n + 1)) 10

end

end A107449.P4788560932277405315

/-! ## A107449.P8505859077293602068

`A172423(A107448(n+1))`
-/

namespace A107449.P8505859077293602068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172423 (A107448 (n + 1)).toNat

end

end A107449.P8505859077293602068

/-! ## A107449.P2649696175442788397

`A106586(A107448(n+1)+2)`
-/

namespace A107449.P2649696175442788397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106586 (A107448 (n + 1) + 2).toNat

end

end A107449.P2649696175442788397

/-!
# A107450: Additive persistence of the prime numbers.

The programs for A107450, there is no canonical definition to state claims against.
-/

/-! ## A107450.P16061047399770192490

`A031286(A000040(n+1))`
-/

namespace A107450.P16061047399770192490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A000040 (n + 1)).toNat

end

end A107450.P16061047399770192490

/-! ## A107450.P11567227395389140568

`A031286(A004087(n+1))`
-/

namespace A107450.P11567227395389140568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A004087 (n + 1)).toNat

end

end A107450.P11567227395389140568

/-! ## A107450.P11690860653375968529

`A031286(A006005(n+1))`
-/

namespace A107450.P11690860653375968529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A006005 (n + 1)).toNat

end

end A107450.P11690860653375968529

/-! ## A107450.P3937515292190648488

`A031286(A028905(n+1))`
-/

namespace A107450.P3937515292190648488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A028905 (n + 1)).toNat

end

end A107450.P3937515292190648488

/-! ## A107450.P11912201543455202310

`A031286(A028906(n+1))`
-/

namespace A107450.P11912201543455202310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A028906 (n + 1)).toNat

end

end A107450.P11912201543455202310

/-! ## A107450.P7963114870939415933

`A031286(A101989(n+1))`
-/

namespace A107450.P7963114870939415933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A101989 (n + 1)).toNat

end

end A107450.P7963114870939415933

/-! ## A107450.P11970406841746449973

`A031286(A161847(n+1))`
-/

namespace A107450.P11970406841746449973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A161847 (n + 1)).toNat

end

end A107450.P11970406841746449973

/-! ## A107450.P10104424318820316232

`A031286(A171577(n+1))`
-/

namespace A107450.P10104424318820316232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A171577 (n + 1)).toNat

end

end A107450.P10104424318820316232

/-! ## A107450.P15970460514046688730

`A031286(A008578(n+2))`
-/

namespace A107450.P15970460514046688730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A008578 (n + 2)).toNat

end

end A107450.P15970460514046688730

/-! ## A107450.P1707090454630691188

`A031286(record[A006530(n+2)])`
-/

namespace A107450.P1707090454630691188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107450.P1707090454630691188

/-! ## A107450.P981441572067760690

`A031286(record[A014963(n+2)])`
-/

namespace A107450.P981441572067760690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107450.P981441572067760690

/-! ## A107450.P3027959339327882195

`A031286(record[A020639(n+2)])`
-/

namespace A107450.P3027959339327882195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107450.P3027959339327882195

/-! ## A107450.P2210365680800255973

`A031286(eq[2, A000005(n+1)]+1)`
-/

namespace A107450.P2210365680800255973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107450.P2210365680800255973

/-! ## A107450.P18168614415622983192

`A031286(eq[2, A046523(n+1)]+1)`
-/

namespace A107450.P18168614415622983192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107450.P18168614415622983192

/-!
# A107451: Let m = 5 and set M = {{0, 1, 0, 0, 0, 0}, {0, 0, 1, 0, 0, 0}, {0, 0, 0, 1, 0, 0}, {0, 0, 0, 0, 1, 0}, {0, 0, 0, 0, 0, 1}, {-1, m, (m + 1), -m*(m + 1), -m, (m + 2)}}. Let v[0] = {0, 1, 1, 2, 3, 5}, v[n] = M.v[n - 1]. Then a = Abs[v[n][[1]].

The programs for A107451, there is no canonical definition to state claims against.
-/

/-! ## A107451.P17824928651294777259

`or(n, A181934(A165407(n+1)))`
-/

namespace A107451.P17824928651294777259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A181934 (A165407 (n + 1)).toNat)

end

end A107451.P17824928651294777259

/-! ## A107451.P1866292046685115172

`A053645(A299433(n))+A008619(n)`
-/

namespace A107451.P1866292046685115172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A299433 n).toNat + A008619 n

end

end A107451.P1866292046685115172

/-! ## A107451.P8106740269336889256

`A372173(A266328(n))+A325325(n)`
-/

namespace A107451.P8106740269336889256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372173 (A266328 n).toNat + A325325 n

end

end A107451.P8106740269336889256

/-!
# A107452: Number of nonisomorphic bipartite generalized Petersen graphs P(2n,k) on 4n vertices for 1<=k

The programs for A107452, there is no canonical definition to state claims against.
-/

/-! ## A107452.P10059330238550431702

`A110654(n+1-A329152(2*(n+2)))`
-/

namespace A107452.P10059330238550431702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) - A329152 (2 * (n + 2))).toNat

end

end A107452.P10059330238550431702

/-! ## A107452.P5162137818064851426

`A077105(2*(n+2))-A110654(n)`
-/

namespace A107452.P5162137818064851426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077105 (2 * (n + 2)) - A110654 n

end

end A107452.P5162137818064851426

/-! ## A107452.P16720852392403594477

`A077105(2*(n+2))-A004526(n+1)`
-/

namespace A107452.P16720852392403594477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077105 (2 * (n + 2)) - A004526 (n + 1)

end

end A107452.P16720852392403594477

/-! ## A107452.P16515241135968049993

`A077105(2*(n+2))-A123108(n+1)`
-/

namespace A107452.P16515241135968049993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077105 (2 * (n + 2)) - A123108 (n + 1)

end

end A107452.P16515241135968049993

/-! ## A107452.P16363434837231316266

`A077105(2*(n+2))+A002265(2*n)-n`
-/

namespace A107452.P16363434837231316266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077105 (2 * (n + 2)) + (A002265 (2 * n) - (n : ℤ))

end

end A107452.P16363434837231316266

/-!
# A107454: Number of nonisomorphic generalized Petersen graphs P(n,k) with girth 5 on 2n vertices for 1<=k<=Floor[(n-1)/2].

The programs for A107454, there is no canonical definition to state claims against.
-/

/-! ## A107454.P3739465144157033390

`or(1, a(n-5))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=2`
-/

namespace A107454.P3739465144157033390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 2] fun n a =>
  Nat.lor 1 (a (n - 5))

end

end A107454.P3739465144157033390

/-!
# A107455: Number of nonisomorphic generalized Petersen graphs P(n,k) with girth 6 on n vertices for 1<=k<=Floor[(n-1)/2].

The programs for A107455, there is no canonical definition to state claims against.
-/

/-! ## A107455.P14387375817314836537

`∑{e}[A052950(n), A196368(A316670(#))]`
-/

namespace A107455.P14387375817314836537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A196368 (A316670 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A107455.P14387375817314836537

/-!
# A107457: Triangle read by rows: row n gives number of nonisomorphic generalized Petersen graphs P(n,k) with girth 8 on n vertices for 1<=k<=floor[(n-1)/2].

The programs for A107457, there is no canonical definition to state claims against.
-/

/-! ## A107457.P15608377805988957076

`A100878(A060280(n+1)-A341026(3*n+4))`
-/

namespace A107457.P15608377805988957076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 (A060280 (n + 1) - A341026 (3 * n + 4 + 165)).toNat

end

end A107457.P15608377805988957076

/-!
# A107458: Expansion of g.f.: (1-x^2-x^3)/( (1+x)*(1-x-x^3) ).

The programs for A107458, the canonical program `A107458.P15330796296843734207` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107458 has offset 0).

The definition of A107458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107458.P15330796296843734207

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107458

/-- `a(n-2)+a(n-3)+a(n-4)` -/
def P15330796296843734207.Spec : Prop :=
  ∀ n, (P15330796296843734207.a n : ℤ) = A107458 n

theorem P15330796296843734207.correct : P15330796296843734207.Spec := by
  intro n
  simp only [A107458]

end A107458

/-! ## A107458.P5633215664431460798

`a(n-1)+a(n-3)+(-1)^n` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A107458.P5633215664431460798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + (a (n - 3) + (-1) ^ n)

end

end A107458.P5633215664431460798

namespace A107458

/-- `a(n-1)+a(n-3)+(-1)^n` -/
def P5633215664431460798.Spec : Prop :=
  ∀ n, P5633215664431460798.a n = A107458 n

end A107458

/-! ## A107458.P11239011337712022485

`A135851(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A107458.P11239011337712022485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135851 (n + 1) - a (n - 1)

end

end A107458.P11239011337712022485

namespace A107458

/-- `A135851(n+1)-a(n-1)` -/
def P11239011337712022485.Spec : Prop :=
  ∀ n, P11239011337712022485.a n = A107458 n

end A107458

/-! ## A107458.P10569892466322685951

`A078012(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A107458.P10569892466322685951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078012 (n - 1) - a (n - 1)

end

end A107458.P10569892466322685951

namespace A107458

/-- `A078012(n-1)-a(n-1)` -/
def P10569892466322685951.Spec : Prop :=
  ∀ n, P10569892466322685951.a n = A107458 n

end A107458

/-! ## A107458.P6209616261668224655

`A013979(n)-A078012(n+1)`
-/

namespace A107458.P6209616261668224655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n - A078012 (n + 1)

end

end A107458.P6209616261668224655

namespace A107458

/-- `A013979(n)-A078012(n+1)` -/
def P6209616261668224655.Spec : Prop :=
  ∀ n, P6209616261668224655.a n = A107458 n

end A107458

/-! ## A107458.P4975915550534788148

`A013979(n)-A135851(n+3)`
-/

namespace A107458.P4975915550534788148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n - A135851 (n + 3)

end

end A107458.P4975915550534788148

namespace A107458

/-- `A013979(n)-A135851(n+3)` -/
def P4975915550534788148.Spec : Prop :=
  ∀ n, P4975915550534788148.a n = A107458 n

end A107458

/-! ## A107458.P14111251074443726776

`A013979(n)-A226916(2*n+3)`
-/

namespace A107458.P14111251074443726776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n - A226916 (2 * n + 3)

end

end A107458.P14111251074443726776

namespace A107458

/-- `A013979(n)-A226916(2*n+3)` -/
def P14111251074443726776.Spec : Prop :=
  ∀ n, P14111251074443726776.a n = A107458 n

end A107458

/-! ## A107458.P16509430809323976588

`A078012(n)+A078012(n)-A277253(n)`
-/

namespace A107458.P16509430809323976588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n + (A078012 n - A277253 n)

end

end A107458.P16509430809323976588

namespace A107458

/-- `A078012(n)+A078012(n)-A277253(n)` -/
def P16509430809323976588.Spec : Prop :=
  ∀ n, P16509430809323976588.a n = A107458 n

end A107458

/-! ## A107458.P10027725107607060905

`A013979(n)-A078012(n)-A135851(n)`
-/

namespace A107458.P10027725107607060905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n - A078012 n - A135851 n

end

end A107458.P10027725107607060905

namespace A107458

/-- `A013979(n)-A078012(n)-A135851(n)` -/
def P10027725107607060905.Spec : Prop :=
  ∀ n, P10027725107607060905.a n = A107458 n

end A107458

/-! ## A107458.P9419048034019042936

`A306276(n)-A078012(n+2)`
-/

namespace A107458.P9419048034019042936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n - A078012 (n + 2)

end

end A107458.P9419048034019042936

namespace A107458

/-- `A306276(n)-A078012(n+2)` -/
def P9419048034019042936.Spec : Prop :=
  ∀ n, P9419048034019042936.a n = A107458 n

end A107458

/-! ## A107458.P14482104811107002527

`2*A078012(n)-A277253(n)`
-/

namespace A107458.P14482104811107002527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078012 n - A277253 n

end

end A107458.P14482104811107002527

namespace A107458

/-- `2*A078012(n)-A277253(n)` -/
def P14482104811107002527.Spec : Prop :=
  ∀ n, P14482104811107002527.a n = A107458 n

end A107458

/-! ## A107458.P8486219607168680168

`A000930(n)-A013979(n+1)`
-/

namespace A107458.P8486219607168680168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A013979 (n + 1)

end

end A107458.P8486219607168680168

namespace A107458

/-- `A000930(n)-A013979(n+1)` -/
def P8486219607168680168.Spec : Prop :=
  ∀ n, P8486219607168680168.a n = A107458 n

end A107458

/-! ## A107458.P1315650142110350038

`A013979(n+2)-A058278(n+2)`
-/

namespace A107458.P1315650142110350038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 2) - A058278 (n + 2)

end

end A107458.P1315650142110350038

namespace A107458

/-- `A013979(n+2)-A058278(n+2)` -/
def P1315650142110350038.Spec : Prop :=
  ∀ n, P1315650142110350038.a n = A107458 n

end A107458

/-! ## A107458.P5266359102184498644

`A277252(n)-Δ[A226916(2*(n+2))]`
-/

namespace A107458.P5266359102184498644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 n - (f1 (n + 1) - f1 n)

end

end A107458.P5266359102184498644

namespace A107458

/-- `A277252(n)-Δ[A226916(2*(n+2))]` -/
def P5266359102184498644.Spec : Prop :=
  ∀ n, P5266359102184498644.a n = A107458 n

end A107458

/-! ## A107458.P11763405159704500582

`A277253(n)+A306276(n)-A306276(n+1)`
-/

namespace A107458.P11763405159704500582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n + (A306276 n - A306276 (n + 1))

end

end A107458.P11763405159704500582

namespace A107458

/-- `A277253(n)+A306276(n)-A306276(n+1)` -/
def P11763405159704500582.Spec : Prop :=
  ∀ n, P11763405159704500582.a n = A107458 n

end A107458

/-! ## A107458.P8457744688966266150

`A277253(n+3)-A000930(n+1)`
-/

namespace A107458.P8457744688966266150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (n + 3) - A000930 (n + 1)

end

end A107458.P8457744688966266150

namespace A107458

/-- `A277253(n+3)-A000930(n+1)` -/
def P8457744688966266150.Spec : Prop :=
  ∀ n, P8457744688966266150.a n = A107458 n

end A107458

/-! ## A107458.P9301106840672991441

`A023435(n+1)-(A078012(n+1)+A023435(n))`
-/

namespace A107458.P9301106840672991441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (n + 1) - (A078012 (n + 1) + A023435 n)

end

end A107458.P9301106840672991441

namespace A107458

/-- `A023435(n+1)-(A078012(n+1)+A023435(n))` -/
def P9301106840672991441.Spec : Prop :=
  ∀ n, P9301106840672991441.a n = A107458 n

end A107458

/-! ## A107458.P10037178400897721326

`A001609(n+2)+A306276(n)-A011761(n+1)`
-/

namespace A107458.P10037178400897721326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (n + 2) + (A306276 n - A011761 (n + 1))

end

end A107458.P10037178400897721326

namespace A107458

/-- `A001609(n+2)+A306276(n)-A011761(n+1)` -/
def P10037178400897721326.Spec : Prop :=
  ∀ n, P10037178400897721326.a n = A107458 n

end A107458

/-!
# A107459: Number of nonisomorphic bipartite generalized Petersen graphs P(2n,k) with girth 6 on 4n vertices for 1<=k

The programs for A107459, there is no canonical definition to state claims against.
-/

/-! ## A107459.P4615200325237928270

`floor(sqrt(A060741(n+4)))`
-/

namespace A107459.P4615200325237928270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A060741 (n + 4))

end

end A107459.P4615200325237928270

/-!
# A107460: Number of nonisomorphic bipartite generalized Petersen graphs P(2n,k) with girth 8 on 4n vertices for 1<=k

The programs for A107460, there is no canonical definition to state claims against.
-/

/-! ## A107460.P7317651122305622739

`or(A001221(A077335(n)), A111178(n))`
-/

namespace A107460.P7317651122305622739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A077335 n).toNat) (A111178 n)

end

end A107460.P7317651122305622739

/-!
# A107461: Number of gap-free compositions of n into distinct parts, cf. A107428.

The programs for A107461, there is no canonical definition to state claims against.
-/

/-! ## A107461.P10118555091620566948

`A332031(2*(n+1))-A332032(2*(n+1))`
-/

namespace A107461.P10118555091620566948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332031 (2 * (n + 1)) - A332032 (2 * (n + 1))

end

end A107461.P10118555091620566948

/-!
# A107462: Numbers of the form (4^i)*(13^j), with i, j >= 0.

The programs for A107462, there is no canonical definition to state claims against.
-/

/-! ## A107462.P11676567791787930031

`∩[A107326(n+1), A155563(n+1)]`
-/

namespace A107462.P11676567791787930031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107462.P11676567791787930031

/-! ## A107462.P13332226356988566990

`filter[A107326(n+1), A035263(#)]`
-/

namespace A107462.P13332226356988566990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A107462.P13332226356988566990

/-! ## A107462.P948983812574377190

`filter[A107326(n+1), A246260(#)]`
-/

namespace A107462.P948983812574377190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246260 (f1 j).toNat = 1) n)

end

end A107462.P948983812574377190

/-! ## A107462.P10894977703594968618

`filter[A107326(n+1), A341347(#)]`
-/

namespace A107462.P10894977703594968618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341347 (f1 j).toNat = 1) n)

end

end A107462.P10894977703594968618

/-! ## A107462.P1729230003772665919

`filter[A107326(n+1), A353816(#)]`
-/

namespace A107462.P1729230003772665919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A107462.P1729230003772665919

/-!
# A107464: Number of fuzzy subgroups of rank 3 cyclic group of order (p^n)*q*r where p, q and r are three distinct prime.

The programs for A107464, the canonical program `A107464.P17638526589193548785` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107464 has offset 0).

The definition of A107464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107464.P17638526589193548785

`2^(n+1)*(n²+6*n+6)-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107464

/-- `2^(n+1)*(n²+6*n+6)-1` -/
def P17638526589193548785.Spec : Prop :=
  ∀ n, P17638526589193548785.a n = A107464 n

theorem P17638526589193548785.correct : P17638526589193548785.Spec := by
  intro n
  simp only [A107464]

end A107464

/-! ## A107464.P17815172433528044653

`Δ[n*Δ[A059672(n)]]`
-/

namespace A107464.P17815172433528044653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107464.P17815172433528044653

namespace A107464

/-- `Δ[n*Δ[A059672(n)]]` -/
def P17815172433528044653.Spec : Prop :=
  ∀ n, P17815172433528044653.a n = A107464 n

end A107464

/-! ## A107464.P658525655430151448

`Δ[n*A087323(n+1)]`
-/

namespace A107464.P658525655430151448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107464.P658525655430151448

namespace A107464

/-- `Δ[n*A087323(n+1)]` -/
def P658525655430151448.Spec : Prop :=
  ∀ n, P658525655430151448.a n = A107464 n

end A107464

/-! ## A107464.P1591947694302554716

`Δ[n*∑[A001792(n+1)]]`
-/

namespace A107464.P1591947694302554716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107464.P1591947694302554716

namespace A107464

/-- `Δ[n*∑[A001792(n+1)]]` -/
def P1591947694302554716.Spec : Prop :=
  ∀ n, P1591947694302554716.a n = A107464 n

end A107464

/-! ## A107464.P9450713947588764461

`Δ[n*Δ[A188716(n+1)]]`
-/

namespace A107464.P9450713947588764461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107464.P9450713947588764461

namespace A107464

/-- `Δ[n*Δ[A188716(n+1)]]` -/
def P9450713947588764461.Spec : Prop :=
  ∀ n, P9450713947588764461.a n = A107464 n

end A107464

/-! ## A107464.P9317907813800278679

`Δ[n*Δ[n*A126646(n)]]`
-/

namespace A107464.P9317907813800278679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107464.P9317907813800278679

namespace A107464

/-- `Δ[n*Δ[n*A126646(n)]]` -/
def P9317907813800278679.Spec : Prop :=
  ∀ n, P9317907813800278679.a n = A107464 n

end A107464

/-! ## A107464.P6192863223538370764

`Δ[(n+2)*A163383(n+1)]`
-/

namespace A107464.P6192863223538370764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A163383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107464.P6192863223538370764

namespace A107464

/-- `Δ[(n+2)*A163383(n+1)]` -/
def P6192863223538370764.Spec : Prop :=
  ∀ n, P6192863223538370764.a n = A107464 n

end A107464

/-! ## A107464.P11620772838885394858

`Δ[n*(A048493(n+1)+n)]`
-/

namespace A107464.P11620772838885394858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A048493 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107464.P11620772838885394858

namespace A107464

/-- `Δ[n*(A048493(n+1)+n)]` -/
def P11620772838885394858.Spec : Prop :=
  ∀ n, P11620772838885394858.a n = A107464 n

end A107464

/-!
# A107466: Numbers of the form (5^i)*(13^j).

The programs for A107466, there is no canonical definition to state claims against.
-/

/-! ## A107466.P6909747775588334727

`record[A332818(A297002(n+1))]`
-/

namespace A107466.P6909747775588334727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (A297002 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107466.P6909747775588334727

/-! ## A107466.P2928687957577666433

`record[A348746(A003961(n+1))]`
-/

namespace A107466.P2928687957577666433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107466.P2928687957577666433

/-! ## A107466.P7783449835303524953

`record[A348746(A064988(n+1))]`
-/

namespace A107466.P7783449835303524953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107466.P7783449835303524953

/-! ## A107466.P43468203501206415

`record[A348746(A319984(n+1))]`
-/

namespace A107466.P43468203501206415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A319984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107466.P43468203501206415

/-! ## A107466.P2201798184080738082

`record[A348746(A319985(n+1))]`
-/

namespace A107466.P2201798184080738082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A319985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107466.P2201798184080738082

/-!
# A107467: a(n)= 3*a(n-1) +a(n-2) -3*a(n-3) +a(n-4)+ 2*a(n-5) -a(n-6) -a(n-7).

The programs for A107467, there is no canonical definition to state claims against.
-/

/-! ## A107467.P18306956449726825352

`A111706(round(ϕ*a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A107467.P18306956449726825352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A111706 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A107467.P18306956449726825352

/-! ## A107467.P5322103452056765374

`A048273(A061993(n))+A000045(n)`
-/

namespace A107467.P5322103452056765374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A061993 n).toNat + A000045 n

end

end A107467.P5322103452056765374

/-! ## A107467.P12784932525250879920

`A024317(A382644(n)+A100449(n))`
-/

namespace A107467.P12784932525250879920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A382644 n + A100449 n).toNat

end

end A107467.P12784932525250879920

/-!
# A107471: a(n) = 3*prime(n) - 2*prime(n+1).

The programs for A107471, the canonical program `A107471.P390287189862035674` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107471 has offset 1).

The definition of A107471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107471.P13967064025437778217

`A062234(n+1)-A001223(n+1)`
-/

namespace A107471.P13967064025437778217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A001223 (n + 1)

end

end A107471.P13967064025437778217

namespace A107471

/-- `A062234(n+1)-A001223(n+1)` -/
def P13967064025437778217.Spec : Prop :=
  ∀ n, P13967064025437778217.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P7209048128998926023

`A006093(n+1)-A100803(n+1)`
-/

namespace A107471.P7209048128998926023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A100803 (n + 1)

end

end A107471.P7209048128998926023

namespace A107471

/-- `A006093(n+1)-A100803(n+1)` -/
def P7209048128998926023.Spec : Prop :=
  ∀ n, P7209048128998926023.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P390287189862035674

`A098764(n+1)-A065091(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107471

/-- `A098764(n+1)-A065091(n+1)` -/
def P390287189862035674.Spec : Prop :=
  ∀ n, P390287189862035674.a n = A107471 (n + 1)

theorem P390287189862035674.correct : P390287189862035674.Spec := by
  intro n
  simp only [A107471, Nat.add_sub_cancel]

end A107471

/-! ## A107471.P15109098110896017941

`A100021(n+1)-A154115(n+1)`
-/

namespace A107471.P15109098110896017941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 1) - A154115 (n + 1)

end

end A107471.P15109098110896017941

namespace A107471

/-- `A100021(n+1)-A154115(n+1)` -/
def P15109098110896017941.Spec : Prop :=
  ∀ n, P15109098110896017941.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P8649642553203074581

`A100484(n+1)-A210497(n+1)`
-/

namespace A107471.P8649642553203074581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A210497 (n + 1)

end

end A107471.P8649642553203074581

namespace A107471

/-- `A100484(n+1)-A210497(n+1)` -/
def P8649642553203074581.Spec : Prop :=
  ∀ n, P8649642553203074581.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P6198530250837299501

`A001749(n+1)-A364411(n+1)`
-/

namespace A107471.P6198530250837299501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - A364411 (n + 1)

end

end A107471.P6198530250837299501

namespace A107471

/-- `A001749(n+1)-A364411(n+1)` -/
def P6198530250837299501.Spec : Prop :=
  ∀ n, P6198530250837299501.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P304908953698034439

`A096379(n+1)-Δ[A062234(n+1)]`
-/

namespace A107471.P304908953698034439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) - (f1 (n + 1) - f1 n)

end

end A107471.P304908953698034439

namespace A107471

/-- `A096379(n+1)-Δ[A062234(n+1)]` -/
def P304908953698034439.Spec : Prop :=
  ∀ n, P304908953698034439.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P13022305607904405275

`A000040(n+1)-(A100803(n+1)+1)`
-/

namespace A107471.P13022305607904405275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A100803 (n + 1) + 1)

end

end A107471.P13022305607904405275

namespace A107471

/-- `A000040(n+1)-(A100803(n+1)+1)` -/
def P13022305607904405275.Spec : Prop :=
  ∀ n, P13022305607904405275.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P4840709359124006580

`A008864(n+1)-(A100803(n+1)+2)`
-/

namespace A107471.P4840709359124006580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A100803 (n + 1) + 2)

end

end A107471.P4840709359124006580

namespace A107471

/-- `A008864(n+1)-(A100803(n+1)+2)` -/
def P4840709359124006580.Spec : Prop :=
  ∀ n, P4840709359124006580.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P17516369446690389336

`A000040(n+1)-2*A001223(n+1)`
-/

namespace A107471.P17516369446690389336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A001223 (n + 1)

end

end A107471.P17516369446690389336

namespace A107471

/-- `A000040(n+1)-2*A001223(n+1)` -/
def P17516369446690389336.Spec : Prop :=
  ∀ n, P17516369446690389336.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P14052514161728476623

`2*A062234(n+1)-A000040(n+1)`
-/

namespace A107471.P14052514161728476623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062234 (n + 1) - A000040 (n + 1)

end

end A107471.P14052514161728476623

namespace A107471

/-- `2*A062234(n+1)-A000040(n+1)` -/
def P14052514161728476623.Spec : Prop :=
  ∀ n, P14052514161728476623.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P13567616280333661595

`A001748(n+1)-2*A065091(n+1)`
-/

namespace A107471.P13567616280333661595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - 2 * A065091 (n + 1)

end

end A107471.P13567616280333661595

namespace A107471

/-- `A001748(n+1)-2*A065091(n+1)` -/
def P13567616280333661595.Spec : Prop :=
  ∀ n, P13567616280333661595.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P8182358974621145305

`A040976(n+1)-2*A046933(n+1)`
-/

namespace A107471.P8182358974621145305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 2 * A046933 (n + 1)

end

end A107471.P8182358974621145305

namespace A107471

/-- `A040976(n+1)-2*A046933(n+1)` -/
def P8182358974621145305.Spec : Prop :=
  ∀ n, P8182358974621145305.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P2059271855323376988

`2*A098764(n+1)-A001748(n+1)`
-/

namespace A107471.P2059271855323376988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098764 (n + 1) - A001748 (n + 1)

end

end A107471.P2059271855323376988

namespace A107471

/-- `2*A098764(n+1)-A001748(n+1)` -/
def P2059271855323376988.Spec : Prop :=
  ∀ n, P2059271855323376988.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P11017661682896513691

`2*A000040(n+1)-A210497(n+1)`
-/

namespace A107471.P11017661682896513691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A210497 (n + 1)

end

end A107471.P11017661682896513691

namespace A107471

/-- `2*A000040(n+1)-A210497(n+1)` -/
def P11017661682896513691.Spec : Prop :=
  ∀ n, P11017661682896513691.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P18253794693639066324

`2*A100484(n+1)-A364411(n+1)`
-/

namespace A107471.P18253794693639066324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1) - A364411 (n + 1)

end

end A107471.P18253794693639066324

namespace A107471

/-- `2*A100484(n+1)-A364411(n+1)` -/
def P18253794693639066324.Spec : Prop :=
  ∀ n, P18253794693639066324.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P17481481954793483301

`A001749(n+1)/2-A210497(n+1)`
-/

namespace A107471.P17481481954793483301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 - (A210497 (n + 1) : ℚ)

end

end A107471.P17481481954793483301

namespace A107471

/-- `A001749(n+1)/2-A210497(n+1)` -/
def P17481481954793483301.Spec : Prop :=
  ∀ n, P17481481954793483301.a n = (A107471 (n + 1) : ℚ)

end A107471

/-! ## A107471.P18214334387686521786

`A000040(n+1)-log2(A218075(n+1)²)`
-/

namespace A107471.P18214334387686521786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) - Real.logb 2 (A218075 (n + 1) ^ 2 : ℝ)

end

end A107471.P18214334387686521786

namespace A107471

/-- `A000040(n+1)-log2(A218075(n+1)²)` -/
def P18214334387686521786.Spec : Prop :=
  ∀ n, P18214334387686521786.a n = (A107471 (n + 1) : ℝ)

end A107471

/-! ## A107471.P16718642489679082619

`A000040(n+1)-A005843(A001223(n+1))`
-/

namespace A107471.P16718642489679082619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A005843 (A001223 (n + 1)).toNat

end

end A107471.P16718642489679082619

namespace A107471

/-- `A000040(n+1)-A005843(A001223(n+1))` -/
def P16718642489679082619.Spec : Prop :=
  ∀ n, P16718642489679082619.a n = A107471 (n + 1)

end A107471

/-! ## A107471.P3442215232642515215

`A001748(n+1)-(A001223(n+1)+A001043(n+1))`
-/

namespace A107471.P3442215232642515215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - (A001223 (n + 1) + A001043 (n + 1))

end

end A107471.P3442215232642515215

namespace A107471

/-- `A001748(n+1)-(A001223(n+1)+A001043(n+1))` -/
def P3442215232642515215.Spec : Prop :=
  ∀ n, P3442215232642515215.a n = A107471 (n + 1)

end A107471

/-!
# A107472: Composite numbers in sequence A107323.

The programs for A107472, the canonical program `A107472.P3955423761168080437` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107472 has offset 1).

The definition of A107472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107472.P12895408935388964290

`A107323(A176656(n+2))`
-/

namespace A107472.P12895408935388964290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (A176656 (n + 2)).toNat

end

end A107472.P12895408935388964290

namespace A107472

/-- `A107323(A176656(n+2))` -/
def P12895408935388964290.Spec : Prop :=
  ∀ n, P12895408935388964290.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P3955423761168080437

`filter[A107323(n+3), A005171(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107472

/-- `filter[A107323(n+3), A005171(#)]` -/
def P3955423761168080437.Spec : Prop :=
  ∀ n, P3955423761168080437.a n = A107472 (n + 1)

theorem P3955423761168080437.correct : P3955423761168080437.Spec := by
  intro n
  simp only [A107472, Nat.add_sub_cancel]

end A107472

/-! ## A107472.P16167333235749299925

`filter[A107323(n+3), A066247(#)]`
-/

namespace A107472.P16167333235749299925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A107472.P16167333235749299925

namespace A107472

/-- `filter[A107323(n+3), A066247(#)]` -/
def P16167333235749299925.Spec : Prop :=
  ∀ n, P16167333235749299925.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P12585901808892796834

`filter[A107323(n+3), A202238(#)]`
-/

namespace A107472.P12585901808892796834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A107472.P12585901808892796834

namespace A107472

/-- `filter[A107323(n+3), A202238(#)]` -/
def P12585901808892796834.Spec : Prop :=
  ∀ n, P12585901808892796834.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P2873113647766326748

`filter[A107323(n+3), A283265(#)]`
-/

namespace A107472.P2873113647766326748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A107472.P2873113647766326748

namespace A107472

/-- `filter[A107323(n+3), A283265(#)]` -/
def P2873113647766326748.Spec : Prop :=
  ∀ n, P2873113647766326748.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P7838729126534528899

`filter[A107323(n+3), A292438(#)]`
-/

namespace A107472.P7838729126534528899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A107472.P7838729126534528899

namespace A107472

/-- `filter[A107323(n+3), A292438(#)]` -/
def P7838729126534528899.Spec : Prop :=
  ∀ n, P7838729126534528899.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P11980767280334474679

`filter[A107323(n+3), A323162(#)]`
-/

namespace A107472.P11980767280334474679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A107472.P11980767280334474679

namespace A107472

/-- `filter[A107323(n+3), A323162(#)]` -/
def P11980767280334474679.Spec : Prop :=
  ∀ n, P11980767280334474679.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P12569641062817376188

`filter[A160666(n+1), A354354(#)]`
-/

namespace A107472.P12569641062817376188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A107472.P12569641062817376188

namespace A107472

/-- `filter[A160666(n+1), A354354(#)]` -/
def P12569641062817376188.Spec : Prop :=
  ∀ n, P12569641062817376188.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P9622394586594862612

`∩[A007310(n+1), A160666(n+1)]`
-/

namespace A107472.P9622394586594862612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107472.P9622394586594862612

namespace A107472

/-- `∩[A007310(n+1), A160666(n+1)]` -/
def P9622394586594862612.Spec : Prop :=
  ∀ n, (P9622394586594862612.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P7063447577824216489

`∩[A038179(n+1), A160666(n+1)]`
-/

namespace A107472.P7063447577824216489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107472.P7063447577824216489

namespace A107472

/-- `∩[A038179(n+1), A160666(n+1)]` -/
def P7063447577824216489.Spec : Prop :=
  ∀ n, (P7063447577824216489.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P3198656229209388835

`∩[A038509(n+1), A160666(n+1)]`
-/

namespace A107472.P3198656229209388835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107472.P3198656229209388835

namespace A107472

/-- `∩[A038509(n+1), A160666(n+1)]` -/
def P3198656229209388835.Spec : Prop :=
  ∀ n, (P3198656229209388835.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P16571474447383736873

`A074066(A134797(n+1))`
-/

namespace A107472.P16571474447383736873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A134797 (n + 1)).toNat

end

end A107472.P16571474447383736873

namespace A107472

/-- `A074066(A134797(n+1))` -/
def P16571474447383736873.Spec : Prop :=
  ∀ n, P16571474447383736873.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P2129482960568537396

`A074066(A007510(n+2))`
-/

namespace A107472.P2129482960568537396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A007510 (n + 2)).toNat

end

end A107472.P2129482960568537396

namespace A107472

/-- `A074066(A007510(n+2))` -/
def P2129482960568537396.Spec : Prop :=
  ∀ n, P2129482960568537396.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P2340315727937271065

`A004485(A167277(n+2))`
-/

namespace A107472.P2340315727937271065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004485 (A167277 (n + 2)).toNat

end

end A107472.P2340315727937271065

namespace A107472

/-- `A004485(A167277(n+2))` -/
def P2340315727937271065.Spec : Prop :=
  ∀ n, P2340315727937271065.a n = A107472 (n + 1)

end A107472

/-! ## A107472.P9665470783323721248

`eq[A010133(n), A051699(n)]`
-/

namespace A107472.P9665470783323721248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010133 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107472.P9665470783323721248

namespace A107472

/-- `eq[A010133(n), A051699(n)]` -/
def P9665470783323721248.Spec : Prop :=
  ∀ n, (P9665470783323721248.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P12708898407729550374

`eq[A010191(n), A051699(n)]`
-/

namespace A107472.P12708898407729550374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107472.P12708898407729550374

namespace A107472

/-- `eq[A010191(n), A051699(n)]` -/
def P12708898407729550374.Spec : Prop :=
  ∀ n, (P12708898407729550374.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P16490729290384765054

`eq[A040118(n), A051699(n)]`
-/

namespace A107472.P16490729290384765054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107472.P16490729290384765054

namespace A107472

/-- `eq[A040118(n), A051699(n)]` -/
def P16490729290384765054.Spec : Prop :=
  ∀ n, (P16490729290384765054.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P8188129425718800911

`eq[A040193(n), A051699(n)]`
-/

namespace A107472.P8188129425718800911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107472.P8188129425718800911

namespace A107472

/-- `eq[A040193(n), A051699(n)]` -/
def P8188129425718800911.Spec : Prop :=
  ∀ n, (P8188129425718800911.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P4163795903910071123

`eq[A040252(n), A051699(n)]`
-/

namespace A107472.P4163795903910071123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107472.P4163795903910071123

namespace A107472

/-- `eq[A040252(n), A051699(n)]` -/
def P4163795903910071123.Spec : Prop :=
  ∀ n, (P4163795903910071123.a n : ℤ) = A107472 (n + 1)

end A107472

/-! ## A107472.P12065119542495435067

`eq[A040285(n), A051699(n)]`
-/

namespace A107472.P12065119542495435067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107472.P12065119542495435067

namespace A107472

/-- `eq[A040285(n), A051699(n)]` -/
def P12065119542495435067.Spec : Prop :=
  ∀ n, (P12065119542495435067.a n : ℤ) = A107472 (n + 1)

end A107472

/-!
# A107473: Sum of numerator and denominator of Product_{p|n, p prime} (1 - 1/p).

The programs for A107473, the canonical program `A107473.P616088054207537606` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107473 has offset 1).

The definition of A107473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107473.P616088054207537606

`lcm(n+1, A121048(n+1))/(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A107473

/-- `lcm(n+1, A121048(n+1))/(n+1)` -/
def P616088054207537606.Spec : Prop :=
  ∀ n, P616088054207537606.a n = (A107473 (n + 1) : ℚ)

end A107473

/-! ## A107473.P5842976291932322095

`A109395(n+1)+A076512(n+1)`
-/

namespace A107473.P5842976291932322095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) + A076512 (n + 1)

end

end A107473.P5842976291932322095

namespace A107473

/-- `A109395(n+1)+A076512(n+1)` -/
def P5842976291932322095.Spec : Prop :=
  ∀ n, P5842976291932322095.a n = A107473 (n + 1)

end A107473

/-! ## A107473.P782433143336614063

`A121048(n+1)/A009195(n+1)`
-/

namespace A107473.P782433143336614063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121048 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A107473.P782433143336614063

namespace A107473

/-- `A121048(n+1)/A009195(n+1)` -/
def P782433143336614063.Spec : Prop :=
  ∀ n, P782433143336614063.a n = (A107473 (n + 1) : ℚ)

end A107473

/-! ## A107473.P17494461269986113982

`A076511(n+1)+2*A076512(n+1)`
-/

namespace A107473.P17494461269986113982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1) + 2 * A076512 (n + 1)

end

end A107473.P17494461269986113982

namespace A107473

/-- `A076511(n+1)+2*A076512(n+1)` -/
def P17494461269986113982.Spec : Prop :=
  ∀ n, P17494461269986113982.a n = A107473 (n + 1)

end A107473

/-! ## A107473.P10744839486380745210

`2*A109395(n+1)-A076511(n+1)`
-/

namespace A107473.P10744839486380745210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109395 (n + 1) - A076511 (n + 1)

end

end A107473.P10744839486380745210

namespace A107473

/-- `2*A109395(n+1)-A076511(n+1)` -/
def P10744839486380745210.Spec : Prop :=
  ∀ n, P10744839486380745210.a n = A107473 (n + 1)

end A107473

/-! ## A107473.P10375709323965834794

`(A039649(n+1)+n)/A009195(n+1)`
-/

namespace A107473.P10375709323965834794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) + (n : ℤ) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A107473.P10375709323965834794

namespace A107473

/-- `(A039649(n+1)+n)/A009195(n+1)` -/
def P10375709323965834794.Spec : Prop :=
  ∀ n, P10375709323965834794.a n = (A107473 (n + 1) : ℚ)

end A107473

/-! ## A107473.P4940834890628480973

`(A000010(n+1)+n+1)/A009195(n+1)`
-/

namespace A107473.P4940834890628480973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + (n + 1 : ℤ) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A107473.P4940834890628480973

namespace A107473

/-- `(A000010(n+1)+n+1)/A009195(n+1)` -/
def P4940834890628480973.Spec : Prop :=
  ∀ n, P4940834890628480973.a n = (A107473 (n + 1) : ℚ)

end A107473

/-! ## A107473.P4831991258635746214

`A121048(n+1)/gcd(n+1, A000010(n+1))`
-/

namespace A107473.P4831991258635746214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121048 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A107473.P4831991258635746214

namespace A107473

/-- `A121048(n+1)/gcd(n+1, A000010(n+1))` -/
def P4831991258635746214.Spec : Prop :=
  ∀ n, P4831991258635746214.a n = (A107473 (n + 1) : ℚ)

end A107473

/-! ## A107473.P13077543546352221903

`A121048(A050399(n+1))/(n+1)`
-/

namespace A107473.P13077543546352221903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121048 (A050399 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A107473.P13077543546352221903

namespace A107473

/-- `A121048(A050399(n+1))/(n+1)` -/
def P13077543546352221903.Spec : Prop :=
  ∀ n, P13077543546352221903.a n = (A107473 (n + 1) : ℚ)

end A107473

/-! ## A107473.P8999792251093325908

`A076512(n+1)+A050399(A050399(n+1))/A050399(n+1)`
-/

namespace A107473.P8999792251093325908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076512 (n + 1) : ℚ) + (A050399 (A050399 (n + 1)).toNat : ℚ) / (A050399 (n + 1) : ℚ)

end

end A107473.P8999792251093325908

namespace A107473

/-- `A076512(n+1)+A050399(A050399(n+1))/A050399(n+1)` -/
def P8999792251093325908.Spec : Prop :=
  ∀ n, P8999792251093325908.a n = (A107473 (n + 1) : ℚ)

end A107473

/-!
# A107475: a(n)= 5*a(n-1) +3*a(n-2) -15*a(n-3) +5*a(n-4) +3*a(n-5) -a(n-6).

The programs for A107475, there is no canonical definition to state claims against.
-/

/-! ## A107475.P1073439790530464701

`∑[A081753(A079564(n+1)+n)]`
-/

namespace A107475.P1073439790530464701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A079564 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107475.P1073439790530464701

/-! ## A107475.P8339541338269977116

`A116619(A286074(n)+A065033(n))`
-/

namespace A107475.P8339541338269977116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (A286074 n + A065033 n).toNat

end

end A107475.P8339541338269977116

/-! ## A107475.P7273561357033356807

`A005041(A174136(n)-A003087(n))`
-/

namespace A107475.P7273561357033356807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A174136 n - A003087 n).toNat

end

end A107475.P7273561357033356807

/-! ## A107475.P3835487227752080626

`A150197(n)-A011371(A150194(n))`
-/

namespace A107475.P3835487227752080626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150197 n - A011371 (A150194 n).toNat

end

end A107475.P3835487227752080626

/-!
# A107477: a(n)= 7*a(n-1) +5*a(n-2) -35*a(n-3) +7*a(n-4) +5*a(n-5) -a(n-6), n>10.

The programs for A107477, there is no canonical definition to state claims against.
-/

/-! ## A107477.P7833812488726292281

`A114327(C(round(n-sqrt(n))², n))+n`
-/

namespace A107477.P7833812488726292281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (Nat.choose (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ)) ^ 2).toNat n) + (n : ℤ)

end

end A107477.P7833812488726292281

/-! ## A107477.P17068005523114637662

`A328593(6*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8`
-/

namespace A107477.P17068005523114637662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8] fun n a =>
  A328593 (6 * a (n - 1)).toNat

end

end A107477.P17068005523114637662

/-! ## A107477.P4149094572826035805

`A103197(a(n-1)+val(n, 3))+3` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8`
-/

namespace A107477.P4149094572826035805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8] fun n a =>
  A103197 (a (n - 1) + (SequenceMachineLib.valuation n 3 : ℤ)).toNat + 3

end

end A107477.P4149094572826035805

/-!
# A107479: a(n) = a(n-2) + a(n-3) + a(n-4) + a(n-5) + a(n-6) + a(n-7).

The programs for A107479, the canonical program `A107479.P8614789831564820425` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107479 has offset 0).

The definition of A107479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` (program `A107479.P8614789831564820425`, by `A107479.P8614789831564820425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107479.P8614789831564820425

`a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107479

/-- `a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` -/
def P8614789831564820425.Spec : Prop :=
  ∀ n, (P8614789831564820425.a n : ℤ) = A107479 n

theorem P8614789831564820425.correct : P8614789831564820425.Spec := by
  intro n
  simp only [A107479]

end A107479

/-! ## A107479.P11480429542548198308

`A013984(n+1)`
-/

namespace A107479.P11480429542548198308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 (n + 1)

end

end A107479.P11480429542548198308

namespace A107479

/-- `A013984(n+1)` -/
def P11480429542548198308.Spec : Prop :=
  ∀ n, P11480429542548198308.a n = A107479 n

end A107479

/-! ## A107479.P6089470160386162582

`A013984(n)-Δ[-A013984(n)]`
-/

namespace A107479.P6089470160386162582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 n - (f1 (n + 1) - f1 n)

end

end A107479.P6089470160386162582

namespace A107479

/-- `A013984(n)-Δ[-A013984(n)]` -/
def P6089470160386162582.Spec : Prop :=
  ∀ n, P6089470160386162582.a n = A107479 n

end A107479

/-! ## A107479.P11875634904557575799

`Δ[A023438(n+1)]`
-/

namespace A107479.P11875634904557575799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107479.P11875634904557575799

namespace A107479

/-- `Δ[A023438(n+1)]` -/
def P11875634904557575799.Spec : Prop :=
  ∀ n, P11875634904557575799.a n = A107479 n

end A107479

/-! ## A107479.P1994023047518804741

`A023438(n+2)-A023438(n+1)`
-/

namespace A107479.P1994023047518804741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 (n + 2) - A023438 (n + 1)

end

end A107479.P1994023047518804741

namespace A107479

/-- `A023438(n+2)-A023438(n+1)` -/
def P1994023047518804741.Spec : Prop :=
  ∀ n, P1994023047518804741.a n = A107479 n

end A107479

/-! ## A107479.P5249166551295208645

`∑[Δ[A013984(n)]%A001628(n)]`
-/

namespace A107479.P5249166551295208645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A001628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107479.P5249166551295208645

namespace A107479

/-- `∑[Δ[A013984(n)]%A001628(n)]` -/
def P5249166551295208645.Spec : Prop :=
  ∀ n, P5249166551295208645.a n = A107479 n

end A107479

/-!
# A107480: a(n) = a(n-1) + a(n-3) + a(n-4) + a(n-5) + a(n-7).

The programs for A107480, the canonical program `A107480.P4554222791393477742` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107480 has offset 0).

The definition of A107480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-7)` (program `A107480.P4554222791393477742`, by `A107480.P4554222791393477742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107480.P4554222791393477742

`a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A107480

/-- `a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-7)` -/
def P4554222791393477742.Spec : Prop :=
  ∀ n, (P4554222791393477742.a n : ℤ) = A107480 n

theorem P4554222791393477742.correct : P4554222791393477742.Spec := by
  intro n
  simp only [A107480]

end A107480

/-! ## A107480.P1396837468130149707

`A055086(or(A122921(n), A213683(n+1)))`
-/

namespace A107480.P1396837468130149707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A122921 n) (A213683 (n + 1))).toNat

end

end A107480.P1396837468130149707

namespace A107480

/-- `A055086(or(A122921(n), A213683(n+1)))` -/
def P1396837468130149707.Spec : Prop :=
  ∀ n, P1396837468130149707.a n = A107480 n

end A107480

/-! ## A107480.P12259392717500033888

`A055086(or(A106234(n+2), A213683(n+1)))`
-/

namespace A107480.P12259392717500033888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A106234 (n + 2)) (A213683 (n + 1))).toNat

end

end A107480.P12259392717500033888

namespace A107480

/-- `A055086(or(A106234(n+2), A213683(n+1)))` -/
def P12259392717500033888.Spec : Prop :=
  ∀ n, P12259392717500033888.a n = A107480 n

end A107480

/-! ## A107480.P6144815413493613655

`A055086(xor(A106234(n+2), A213683(n+1)))`
-/

namespace A107480.P6144815413493613655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.xor (A106234 (n + 2)) (A213683 (n + 1))).toNat

end

end A107480.P6144815413493613655

namespace A107480

/-- `A055086(xor(A106234(n+2), A213683(n+1)))` -/
def P6144815413493613655.Spec : Prop :=
  ∀ n, P6144815413493613655.a n = A107480 n

end A107480

/-! ## A107480.P13436352639220624904

`A135660(A369145(n))`
-/

namespace A107480.P13436352639220624904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A369145 n).toNat

end

end A107480.P13436352639220624904

namespace A107480

/-- `A135660(A369145(n))` -/
def P13436352639220624904.Spec : Prop :=
  ∀ n, P13436352639220624904.a n = A107480 n

end A107480

/-!
# A107482: Number of prime factors of the smallest n-perfect number.

The programs for A107482, there is no canonical definition to state claims against.
-/

/-! ## A107482.P2075741150083232761

`13*a(n-4)+n` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A107482.P2075741150083232761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  13 * a (n - 4) + n

end

end A107482.P2075741150083232761

/-! ## A107482.P6953990557306402918

`A110086(A186537(n+1))`
-/

namespace A107482.P6953990557306402918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (A186537 (n + 1)).toNat

end

end A107482.P6953990557306402918

/-! ## A107482.P13070766955520094133

`A110086(A340217(n+1))`
-/

namespace A107482.P13070766955520094133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (A340217 (n + 1)).toNat

end

end A107482.P13070766955520094133

/-! ## A107482.P16018555208843424154

`A110086(A358836(n)+n)`
-/

namespace A107482.P16018555208843424154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (A358836 n + (n : ℤ)).toNat

end

end A107482.P16018555208843424154

/-!
# A107486: One-sixth the smallest semiperimeter common to exactly n Pythagorean triangles.

The programs for A107486, there is no canonical definition to state claims against.
-/

/-! ## A107486.P9056506050290386671

`A099830(n+1)/12`
-/

namespace A107486.P9056506050290386671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099830 (n + 1) : ℚ) / 12

end

end A107486.P9056506050290386671

/-! ## A107486.P4010427839934505774

`A051724(A099830(n+1))`
-/

namespace A107486.P4010427839934505774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A099830 (n + 1)).toNat

end

end A107486.P4010427839934505774

/-! ## A107486.P17928736569729525129

`A253201(A091778(n+1))`
-/

namespace A107486.P17928736569729525129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253201 (A091778 (n + 1)).toNat

end

end A107486.P17928736569729525129

/-!
# A107487: Ordered semiperimeters of Pythagorean triangles.

The programs for A107487, there is no canonical definition to state claims against.
-/

/-! ## A107487.P7453062484140829788

`A009096(n+1)/2`
-/

namespace A107487.P7453062484140829788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009096 (n + 1) : ℚ) / 2

end

end A107487.P7453062484140829788

/-! ## A107487.P3230355618764672159

`A004525(A009096(n+1))`
-/

namespace A107487.P3230355618764672159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A009096 (n + 1)).toNat

end

end A107487.P3230355618764672159

/-! ## A107487.P18081048067534484261

`A000463(A009096(n+1)-1)`
-/

namespace A107487.P18081048067534484261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A009096 (n + 1) - 1).toNat

end

end A107487.P18081048067534484261

/-! ## A107487.P3553735552208535478

`A001057(A009096(n+1)-1)`
-/

namespace A107487.P3553735552208535478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A009096 (n + 1) - 1).toNat

end

end A107487.P3553735552208535478

/-! ## A107487.P1092083619817462550

`A008619(A009096(n+1)-1)`
-/

namespace A107487.P1092083619817462550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A009096 (n + 1) - 1).toNat

end

end A107487.P1092083619817462550

/-! ## A107487.P3944562846739276076

`A110654(A009096(n+1)-1)`
-/

namespace A107487.P3944562846739276076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A009096 (n + 1) - 1).toNat

end

end A107487.P3944562846739276076

/-! ## A107487.P1798209112885749702

`A220466(A009096(n+1)-1)`
-/

namespace A107487.P1798209112885749702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A009096 (n + 1) - 1).toNat

end

end A107487.P1798209112885749702

/-! ## A107487.P13112814072430949852

`A028242(A009096(n+1)-2)`
-/

namespace A107487.P13112814072430949852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A009096 (n + 1) - 2).toNat

end

end A107487.P13112814072430949852

/-! ## A107487.P1101633235755144199

`A004526(A009096(n+1)-1)+1`
-/

namespace A107487.P1101633235755144199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A009096 (n + 1) - 1).toNat + 1

end

end A107487.P1101633235755144199

/-! ## A107487.P2583135110840626312

`A057979(A009096(n+1)-1)+1`
-/

namespace A107487.P2583135110840626312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A009096 (n + 1) - 1).toNat + 1

end

end A107487.P2583135110840626312

/-! ## A107487.P11886285818273730661

`A004526(A009096(n+1)+1)`
-/

namespace A107487.P11886285818273730661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A009096 (n + 1) + 1).toNat

end

end A107487.P11886285818273730661

/-! ## A107487.P3624420489624439770

`A057979(A009096(n+1)+1)`
-/

namespace A107487.P3624420489624439770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A009096 (n + 1) + 1).toNat

end

end A107487.P3624420489624439770

/-! ## A107487.P14635025510008712852

`A001281(A009096(n+1)+2)-1`
-/

namespace A107487.P14635025510008712852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A009096 (n + 1) + 2).toNat - 1

end

end A107487.P14635025510008712852

/-!
# A107490: Coefficients of a certain theta series.

The programs for A107490, there is no canonical definition to state claims against.
-/

/-! ## A107490.P17524027262013611701

`A055756(4*n)%11`
-/

namespace A107490.P17524027262013611701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055756 (4 * n)) 11

end

end A107490.P17524027262013611701

/-! ## A107490.P6303034489540741242

`A055766(4*n)%11`
-/

namespace A107490.P6303034489540741242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055766 (4 * n)) 11

end

end A107490.P6303034489540741242

/-! ## A107490.P16741797443758311849

`floor(n/5)!*A028609(n)`
-/

namespace A107490.P16741797443758311849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 5⌋.toNat : ℤ) * A028609 n

end

end A107490.P16741797443758311849

/-! ## A107490.P9785862619756879455

`A028609(comp[a(floor(n/2))+n])` with `a(0)=11, a(1)=11`
-/

namespace A107490.P9785862619756879455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 11] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A107490.P9785862619756879455

/-! ## A107490.P15598061573446738396

`∑{digits}[n, or(1, C(#, n))]*A028609(16*n)`
-/

namespace A107490.P15598061573446738396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.lor 1 (Nat.choose x n)).sum : ℕ) : ℤ) * A028609 (16 * n)

end

end A107490.P15598061573446738396

/-!
# A107491: Coefficients of a certain theta series.

The programs for A107491, there is no canonical definition to state claims against.
-/

/-! ## A107491.P16500067884920442148

`A022054(n)%11`
-/

namespace A107491.P16500067884920442148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022054 n) 11

end

end A107491.P16500067884920442148

/-! ## A107491.P5836610674672056460

`and(comp[∑[n+3]-3], A108761(3*(n+1)))`
-/

namespace A107491.P5836610674672056460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A108761 (3 * (n + 1)))

end

end A107491.P5836610674672056460

/-! ## A107491.P12993591968939606272

`and(∑[∑{p}[n+1, gcd(n, #)]]+1, A281625(∑{d}[2*(n+1), ((n+1)%#)²]))`
-/

namespace A107491.P12993591968939606272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A281625 (∑ d ∈ Nat.divisors (f3 n), ((n + 1) % d) ^ 2))

end

end A107491.P12993591968939606272

/-! ## A107491.P18006717932657263976

`A159989(A080694(n+1))`
-/

namespace A107491.P18006717932657263976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159989 (A080694 (n + 1)).toNat

end

end A107491.P18006717932657263976

/-! ## A107491.P7525354866976629065

`A182748(A262030(n+2))`
-/

namespace A107491.P7525354866976629065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182748 (A262030 (n + 2)).toNat

end

end A107491.P7525354866976629065

/-!
# A107497: Theta series of quadratic form with Gram matrix [ 2, 1, 1, 1; 1, 20, 7, 7; 1, 7, 20, 7; 1, 7, 7, 46].

The programs for A107497, there is no canonical definition to state claims against.
-/

/-! ## A107497.P4237051917974871126

`A033725(A237637(n+2))+A033725(n)`
-/

namespace A107497.P4237051917974871126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033725 (A237637 (n + 2)).toNat + A033725 n

end

end A107497.P4237051917974871126

