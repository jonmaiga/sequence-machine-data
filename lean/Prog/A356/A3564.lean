import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
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

/-!
# A356400: a(n) is the smallest term (in absolute value) in the negaFibonacci representation of -n.

The programs for A356400, there is no canonical definition to state claims against.
-/

/-! ## A356400.P4706784707384396985

`A356399(A280513(n+2)+A280511(n+1))`
-/

namespace A356400.P4706784707384396985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356399 (A280513 (n + 2) + A280511 (n + 1)).toNat

end

end A356400.P4706784707384396985

/-! ## A356400.P6071257594439795588

`A356399(A280511(A035337(n))-(n+1))`
-/

namespace A356400.P6071257594439795588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356399 (A280511 (A035337 n).toNat - (n + 1 : ℤ)).toNat

end

end A356400.P6071257594439795588

/-!
# A356401: a(n) = n! * Sum_{k=1..n} Sum_{d|k} (-1)^(d+1)/(d * (k/d)!).

The programs for A356401, there is no canonical definition to state claims against.
-/

/-! ## A356401.P11014894601525173275

`A129259(5*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A356401.P11014894601525173275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A129259 (5 * a (n - 2)).toNat

end

end A356401.P11014894601525173275

/-!
# A356402: Expansion of e.g.f. ( Product_{k>0} (1+x^k)^(1/k!) )^(1/(1-x)).

The programs for A356402, there is no canonical definition to state claims against.
-/

/-! ## A356402.P16282148707338468670

`A293993(comp[2*n+3])-A074359(n)`
-/

namespace A356402.P16282148707338468670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A074359 n

end

end A356402.P16282148707338468670

/-! ## A356402.P3323969910600986819

`A351978(n)+A105515(-((n+1)!*xor(2*n, -1)))`
-/

namespace A356402.P3323969910600986819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 n + A105515 (-((Nat.factorial (n + 1) : ℤ) * Int.xor (2 * n : ℤ) (-1))).toNat

end

end A356402.P3323969910600986819

/-!
# A356405: Primes that are the sum of a set of numbers taken from 1 and 2^(2^k) for k >= 0.

The programs for A356405, there is no canonical definition to state claims against.
-/

/-! ## A356405.P7330963568919880374

`record[p?[A269856(n+1)]]`
-/

namespace A356405.P7330963568919880374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356405.P7330963568919880374

/-! ## A356405.P8587855196974766085

`A033875(∑[A060543(n)])`
-/

namespace A356405.P8587855196974766085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356405.P8587855196974766085

/-! ## A356405.P11330479008312306602

`A164060(A303368(n+1))`
-/

namespace A356405.P11330479008312306602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164060 (A303368 (n + 1)).toNat

end

end A356405.P11330479008312306602

/-! ## A356405.P14376481285934459671

`record[A058977(A243052(n+1))]`
-/

namespace A356405.P14376481285934459671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (A243052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356405.P14376481285934459671

/-!
# A356406: a(n) = n! * Sum_{k=1..n} Sum_{d|k} 1/(d * (k/d)^d).

The programs for A356406, there is no canonical definition to state claims against.
-/

/-! ## A356406.P16449660491440531141

`A308345(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A356406.P16449660491440531141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308345 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A356406.P16449660491440531141

/-! ## A356406.P8226325860055075624

`A136548(A014288(n+2))+A000217(n)`
-/

namespace A356406.P8226325860055075624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A014288 (n + 2)).toNat + A000217 n

end

end A356406.P8226325860055075624

/-!
# A356407: a(n) = n! * Sum_{k=1..n} Sum_{d|k} 1/(d * ((k/d)!)^d).

The programs for A356407, there is no canonical definition to state claims against.
-/

/-! ## A356407.P18397107261531665265

`A101170(A008102(n))`
-/

namespace A356407.P18397107261531665265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (A008102 n).toNat

end

end A356407.P18397107261531665265

/-!
# A356408: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k/k) )^(1/(1-x)).

The programs for A356408, there is no canonical definition to state claims against.
-/

/-! ## A356408.P17611540743338604499

`A030019(n)+A000720(A366647(n))`
-/

namespace A356408.P17611540743338604499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030019 n + A000720 (A366647 n).toNat

end

end A356408.P17611540743338604499

/-! ## A356408.P9547739788194159327

`A072213(n)-A033107(A072213(n))`
-/

namespace A356408.P9547739788194159327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n - A033107 (A072213 n).toNat

end

end A356408.P9547739788194159327

/-!
# A356409: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k/k!) )^(1/(1-x)).

The programs for A356409, there is no canonical definition to state claims against.
-/

/-! ## A356409.P4598489939776216971

`A026430(A305550(n))`
-/

namespace A356409.P4598489939776216971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A305550 n).toNat

end

end A356409.P4598489939776216971

/-! ## A356409.P6544096419250343939

`A006368(A089677(n+1))`
-/

namespace A356409.P6544096419250343939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A089677 (n + 1)).toNat

end

end A356409.P6544096419250343939

/-!
# A356410: Numbers k for which k^3 is divisible by sigma(k).

The programs for A356410, there is no canonical definition to state claims against.
-/

/-! ## A356410.P14110879564364247951

`lt[((n+1)^3)%A000203(n+1), 1]+1`
-/

namespace A356410.P14110879564364247951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 3 : ℤ) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356410.P14110879564364247951

/-! ## A356410.P6086505484490209306

`∩[A108549(n+1), A145551(n+1)]`
-/

namespace A356410.P6086505484490209306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356410.P6086505484490209306

/-! ## A356410.P11618427953534018339

`∩[A124455(n+1), A145551(n+1)]`
-/

namespace A356410.P11618427953534018339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356410.P11618427953534018339

/-!
# A356411: Sum of powers of roots of x^3 - x^2 - x - 3.

The programs for A356411, the canonical program `A356411.P5204206016190102488` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356411 has offset 0).

The definition of A356411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356411.P5204206016190102488

`a(n-1)+a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356411

/-- `a(n-1)+a(n-2)+3*a(n-3)` -/
def P5204206016190102488.Spec : Prop :=
  ∀ n, (P5204206016190102488.a n : ℤ) = A356411 n

theorem P5204206016190102488.correct : P5204206016190102488.Spec := by
  intro n
  simp only [A356411]

end A356411

/-! ## A356411.P198881988145913128

`ogf((-3+2x+x^2)/(-1+x+x^2+3x^3))`
-/

namespace A356411.P198881988145913128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -1] [1, -1, -1, -3] n

end

end A356411.P198881988145913128

namespace A356411

/-- `ogf((-3+2x+x^2)/(-1+x+x^2+3x^3))` -/
def P198881988145913128.Spec : Prop :=
  ∀ n, P198881988145913128.a n = A356411 n

end A356411

/-! ## A356411.P10929673574136591752

`A099213(n)+2*A123102(n)`
-/

namespace A356411.P10929673574136591752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 n + 2 * A123102 n

end

end A356411.P10929673574136591752

namespace A356411

/-- `A099213(n)+2*A123102(n)` -/
def P10929673574136591752.Spec : Prop :=
  ∀ n, P10929673574136591752.a n = A356411 n

end A356411

/-! ## A356411.P2697933666523647876

`Δ[A099213(n+2)-A247594(n)]`
-/

namespace A356411.P2697933666523647876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 (n + 2) - A247594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356411.P2697933666523647876

namespace A356411

/-- `Δ[A099213(n+2)-A247594(n)]` -/
def P2697933666523647876.Spec : Prop :=
  ∀ n, P2697933666523647876.a n = A356411 n

end A356411

/-! ## A356411.P3551156462229210334

`Δ[A099213(n+2)-(A123102(n+1)+A099213(n))]`
-/

namespace A356411.P3551156462229210334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 (n + 2) - (A123102 (n + 1) + A099213 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356411.P3551156462229210334

namespace A356411

/-- `Δ[A099213(n+2)-(A123102(n+1)+A099213(n))]` -/
def P3551156462229210334.Spec : Prop :=
  ∀ n, P3551156462229210334.a n = A356411 n

end A356411

/-!
# A356412: First differences of A007770 (happy numbers).

The programs for A356412, there is no canonical definition to state claims against.
-/

/-! ## A356412.P2259815299788582497

`A007770(n+2)-A007770(n+1)`
-/

namespace A356412.P2259815299788582497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 2) - A007770 (n + 1)

end

end A356412.P2259815299788582497

/-! ## A356412.P17368154648076306651

`Δ[A007770(n+1)]`
-/

namespace A356412.P17368154648076306651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356412.P17368154648076306651

/-! ## A356412.P12162930327269509298

`Δ[eq[1, A103369(n+1)]]`
-/

namespace A356412.P12162930327269509298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356412.P12162930327269509298

/-! ## A356412.P9979886328102325122

`Δ[record[A000027(n+1)/A103369(n+1)]]`
-/

namespace A356412.P9979886328102325122
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A103369 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356412.P9979886328102325122

/-! ## A356412.P17281284217074069960

`Δ[eq[1, A031176(n+1)]]`
-/

namespace A356412.P17281284217074069960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356412.P17281284217074069960

/-! ## A356412.P10667804189469346916

`Δ[eq[A031176(n), A054977(n)]]`
-/

namespace A356412.P10667804189469346916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356412.P10667804189469346916

/-! ## A356412.P1853524024985896731

`Δ[eq[A031176(n), A057427(n)]]`
-/

namespace A356412.P1853524024985896731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356412.P1853524024985896731

/-! ## A356412.P10864564976822628275

`Δ[lt[A031176(n)-1, A002828(n)]]`
-/

namespace A356412.P10864564976822628275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356412.P10864564976822628275

/-!
# A356413: Numbers with an equal sum of the even and odd exponents in their prime factorizations.

The programs for A356413, the canonical program `A356413.P270375159591134736` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356413 has offset 1).

The definition of A356413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356413.P270375159591134736

`eq[A350386(n+1), A350387(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A356413

/-- `eq[A350386(n+1), A350387(n+1)]+1` -/
def P270375159591134736.Spec : Prop :=
  ∀ n, (P270375159591134736.a n : ℤ) = A356413 (n + 1)

theorem P270375159591134736.correct : P270375159591134736.Spec := by
  intro n
  simp only [A356413, Nat.add_sub_cancel]

end A356413

/-! ## A356413.P9113668678794367282

`eq[2, A355917(A061200(n+1)+1)]+1`
-/

namespace A356413.P9113668678794367282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355917 (A061200 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356413.P9113668678794367282

namespace A356413

/-- `eq[2, A355917(A061200(n+1)+1)]+1` -/
def P9113668678794367282.Spec : Prop :=
  ∀ n, (P9113668678794367282.a n : ℤ) = A356413 (n + 1)

end A356413

/-! ## A356413.P7630892085904888275

`∪[A085987(n+1), A316292(A152131(n))]`
-/

namespace A356413.P7630892085904888275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316292 (A152131 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356413.P7630892085904888275

namespace A356413

/-- `∪[A085987(n+1), A316292(A152131(n))]` -/
def P7630892085904888275.Spec : Prop :=
  ∀ n, (P7630892085904888275.a n : ℤ) = A356413 (n + 1)

end A356413

/-! ## A356413.P14190404815664020118

`eq[A001222(A003557(n+1)²), A327500(n+1)]+1`
-/

namespace A356413.P14190404815664020118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356413.P14190404815664020118

namespace A356413

/-- `eq[A001222(A003557(n+1)²), A327500(n+1)]+1` -/
def P14190404815664020118.Spec : Prop :=
  ∀ n, (P14190404815664020118.a n : ℤ) = A356413 (n + 1)

end A356413

/-! ## A356413.P18424793726199959036

`eq[A001221(n+1), A002262(3^A001222(n+1))]+1`
-/

namespace A356413.P18424793726199959036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356413.P18424793726199959036

namespace A356413

/-- `eq[A001221(n+1), A002262(3^A001222(n+1))]+1` -/
def P18424793726199959036.Spec : Prop :=
  ∀ n, (P18424793726199959036.a n : ℤ) = A356413 (n + 1)

end A356413

/-!
# A356414: Number k such that k and k+1 both have an equal sum of even and odd exponents in their prime factorization (A356413).

The programs for A356414, the canonical program `A356414.P17569189866501178793` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356414 has offset 1).

The definition of A356414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356414.P17569189866501178793

`∩[A356413(n+1)-1, A356413(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A356414

/-- `∩[A356413(n+1)-1, A356413(n+1)]` -/
def P17569189866501178793.Spec : Prop :=
  ∀ n, (P17569189866501178793.a n : ℤ) = A356414 (n + 1)

theorem P17569189866501178793.correct : P17569189866501178793.Spec := by
  intro n
  simp only [A356414, Nat.add_sub_cancel]

end A356414

/-! ## A356414.P14482840825736385068

`A174456(n+2)%A073522(3*n+1)²`
-/

namespace A356414.P14482840825736385068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174456 (n + 2)) (A073522 (3 * n + 1) ^ 2)

end

end A356414.P14482840825736385068

namespace A356414

/-- `A174456(n+2)%A073522(3*n+1)²` -/
def P14482840825736385068.Spec : Prop :=
  ∀ n, P14482840825736385068.a n = A356414 (n + 1)

end A356414

/-! ## A356414.P9133033183972095457

`A174456(A032559(n+2))`
-/

namespace A356414.P9133033183972095457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174456 (A032559 (n + 2)).toNat

end

end A356414.P9133033183972095457

namespace A356414

/-- `A174456(A032559(n+2))` -/
def P9133033183972095457.Spec : Prop :=
  ∀ n, P9133033183972095457.a n = A356414 (n + 1)

end A356414

/-! ## A356414.P13405794612423296251

`A174456(A276142(n+2))`
-/

namespace A356414.P13405794612423296251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174456 (A276142 (n + 2)).toNat

end

end A356414.P13405794612423296251

namespace A356414

/-- `A174456(A276142(n+2))` -/
def P13405794612423296251.Spec : Prop :=
  ∀ n, P13405794612423296251.a n = A356414 (n + 1)

end A356414

/-!
# A356417: Numbers whose reversal is a square.

The programs for A356417, there is no canonical definition to state claims against.
-/

/-! ## A356417.P18169643374678990476

`eq[0, A053186(A004086(n))]`
-/

namespace A356417.P18169643374678990476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356417.P18169643374678990476

/-! ## A356417.P8205263415210535203

`lt[A010052(n), 2*A010052(A004086(n))]`
-/

namespace A356417.P8205263415210535203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010052 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356417.P8205263415210535203

/-! ## A356417.P11612345718131093058

`lt[A000007(n+1), A010052(A004086(n))]`
-/

namespace A356417.P11612345718131093058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356417.P11612345718131093058

/-! ## A356417.P16620216771692181502

`lt[A000038(n+1), A010052(A004086(n))]`
-/

namespace A356417.P16620216771692181502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356417.P16620216771692181502

/-! ## A356417.P3181221063034944925

`eq[1, A152204(A004086(n)-A057427(n))]`
-/

namespace A356417.P3181221063034944925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (A004086 n - A057427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356417.P3181221063034944925

/-! ## A356417.P17801478673339472473

`eq[A000122(A056964(n)-n), A036453(n+1)]`
-/

namespace A356417.P17801478673339472473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A056964 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356417.P17801478673339472473

/-!
# A356419: Inverse of A067576 considered as a permutation of the positive integers.

The programs for A356419, there is no canonical definition to state claims against.
-/

/-! ## A356419.P2961031920507075967

`A000120(n+1)+A067587(n+1)-A263017(n+1)`
-/

namespace A356419.P2961031920507075967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A067587 (n + 1) - A263017 (n + 1))

end

end A356419.P2961031920507075967

/-! ## A356419.P8954755466091226639

`A000120(n+1)-(A286558(A341911(n+1))-A067587(n+1))`
-/

namespace A356419.P8954755466091226639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - (A286558 (A341911 (n + 1)).toNat - A067587 (n + 1))

end

end A356419.P8954755466091226639

/-! ## A356419.P15638664084048275365

`A038722(A067587(n+1))`
-/

namespace A356419.P15638664084048275365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A067587 (n + 1)).toNat

end

end A356419.P15638664084048275365

/-! ## A356419.P5632873281913399417

`A000120(n+1)-(A286552(A048678(n+1))-A067587(n+1))`
-/

namespace A356419.P5632873281913399417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - (A286552 (A048678 (n + 1)).toNat - A067587 (n + 1))

end

end A356419.P5632873281913399417

/-! ## A356419.P17284452641844316537

`A067587(A263018(n+1))`
-/

namespace A356419.P17284452641844316537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067587 (A263018 (n + 1)).toNat

end

end A356419.P17284452641844316537

/-!
# A356420: Integers k such that for some m >= 0, psi(k) = rad(k)^m, where psi(k) = A001615(k) and rad(k) = A007947(k).

The programs for A356420, there is no canonical definition to state claims against.
-/

/-! ## A356420.P14859842628000931595

`A063928(6^(n+1))`
-/

namespace A356420.P14859842628000931595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (6 ^ (n + 1))

end

end A356420.P14859842628000931595

/-!
# A356421: Positive integers k such that k + p is a power of 2, where p is the least prime greater than k.

The programs for A356421, there is no canonical definition to state claims against.
-/

/-! ## A356421.P6847363548202221771

`A062383(A041014(n))-A030101(2*(n+1))`
-/

namespace A356421.P6847363548202221771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A041014 n).toNat - A030101 (2 * (n + 1))

end

end A356421.P6847363548202221771

/-! ## A356421.P9747575481195610967

`A060819(A000225(2*n+3)-A216851(n+1))`
-/

namespace A356421.P9747575481195610967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A000225 (2 * n + 3) - A216851 (n + 1)).toNat

end

end A356421.P9747575481195610967

/-!
# A356422: Heptagonal numbers which are products of three distinct primes.

The programs for A356422, there is no canonical definition to state claims against.
-/

/-! ## A356422.P8772531778091217572

`filter[A000566(n+1), A354926(#)]`
-/

namespace A356422.P8772531778091217572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A356422.P8772531778091217572

/-! ## A356422.P16755571537633308988

`filter[A212985(3*n), A354926(#)]`
-/

namespace A356422.P16755571537633308988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212985 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A356422.P16755571537633308988

/-! ## A356422.P11149441615772562449

`filter[A238738(3*n), A354926(#)]`
-/

namespace A356422.P11149441615772562449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238738 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A356422.P11149441615772562449

/-! ## A356422.P10173450433828648511

`filter[A085787(2*n+1), A354926(#)]`
-/

namespace A356422.P10173450433828648511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A356422.P10173450433828648511

/-! ## A356422.P10204487439849116437

`filter[A111710(2*n+1), A354926(#)]`
-/

namespace A356422.P10204487439849116437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A356422.P10204487439849116437

/-!
# A356423: Leyland numbers which are products of two distinct primes.

The programs for A356423, there is no canonical definition to state claims against.
-/

/-! ## A356423.P13364217684553818431

`filter[A076980(n+1), A064911(#)]`
-/

namespace A356423.P13364217684553818431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A356423.P13364217684553818431

/-!
# A356424: 9-gonal numbers that are semiprimes.

The programs for A356424, there is no canonical definition to state claims against.
-/

/-! ## A356424.P3474162787985738406

`A001106(eq[2, ∑{e}[A001106(n), #]])`
-/

namespace A356424.P3474162787985738406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A356424.P3474162787985738406

/-! ## A356424.P18219207783284930159

`filter[A001106(n+1), A064911(#)]`
-/

namespace A356424.P18219207783284930159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A356424.P18219207783284930159

/-! ## A356424.P5632637034365488176

`filter[A001106(n+1), A101040(#)]`
-/

namespace A356424.P5632637034365488176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A356424.P5632637034365488176

/-! ## A356424.P3316268254014295390

`filter[A001106(n+2), A353799(#)]`
-/

namespace A356424.P3316268254014295390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A356424.P3316268254014295390

/-! ## A356424.P12592898055532424804

`filter[A118277(2*n+1), A064911(#)]`
-/

namespace A356424.P12592898055532424804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A356424.P12592898055532424804

/-!
# A356425: Sum of divisors of numbers of least prime signature: a(n) = A000203(A025487(n)).

The programs for A356425, there is no canonical definition to state claims against.
-/

/-! ## A356425.P18314425164920962106

`A000203(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356425.P18314425164920962106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A025487 (n + 1)).toNat

end

end A356425.P18314425164920962106

/-! ## A356425.P16826030669550503794

`∑{d}[record[A329899(n+1)], #]`
-/

namespace A356425.P16826030669550503794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P16826030669550503794

/-! ## A356425.P17215917634246120616

`∑{d}[record[A051466(n+2)], #]`
-/

namespace A356425.P17215917634246120616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P17215917634246120616

/-! ## A356425.P871800692954394465

`∑{d}[A178799(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A356425.P871800692954394465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A178799 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P871800692954394465

/-! ## A356425.P4528150358785280036

`∑{d}[record[A025487(A133310(n))], #]`
-/

namespace A356425.P4528150358785280036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P4528150358785280036

/-! ## A356425.P8407937623392279008

`∑{d}[A181821(A181820(n+1)), #]`
-/

namespace A356425.P8407937623392279008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P8407937623392279008

/-! ## A356425.P8616729955175609966

`∑{d}[A051466(A329898(n+1)), #]`
-/

namespace A356425.P8616729955175609966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P8616729955175609966

/-! ## A356425.P14661095575630045690

`∑{d}[A055932(A331119(n+1)), #]`
-/

namespace A356425.P14661095575630045690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P14661095575630045690

/-! ## A356425.P12436707955971133440

`∑{d}[A247451(n+1)*A307107(n+1), #]`
-/

namespace A356425.P12436707955971133440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1) * A307107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P12436707955971133440

/-! ## A356425.P5444242370337421500

`∑{d}[A181817(n+1)/A181816(n+1), #]`
-/

namespace A356425.P5444242370337421500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A356425.P5444242370337421500

/-! ## A356425.P8527455651920344772

`∑{d}[A329899(A330683(n+1)), #]`
-/

namespace A356425.P8527455651920344772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A356425.P8527455651920344772

/-!
# A356426: Even bisection of A003278.

The programs for A356426, the canonical program `A356426.P11538521601309500849` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356426 has offset 1).

The definition of A356426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003278, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356426.P11538521601309500849

`A003278(2*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356426

/-- `A003278(2*(n+1))` -/
def P11538521601309500849.Spec : Prop :=
  ∀ n, P11538521601309500849.a n = A356426 (n + 1)

theorem P11538521601309500849.correct : P11538521601309500849.Spec := by
  intro n
  simp only [A356426, Nat.add_sub_cancel]

end A356426

/-! ## A356426.P8733162456184161947

`∑[3*a(∑[n]%n)-3]` with `a(0)=2`
-/

namespace A356426.P8733162456184161947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356426.P8733162456184161947

namespace A356426

/-- `∑[3*a(∑[n]%n)-3]` -/
def P8733162456184161947.Spec : Prop :=
  ∀ n, P8733162456184161947.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P6443932317264937123

`3*(a(floor(n/2))+n%2)-4` with `a(0)=2`
-/

namespace A356426.P6443932317264937123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)) - 4

end

end A356426.P6443932317264937123

namespace A356426

/-- `3*(a(floor(n/2))+n%2)-4` -/
def P6443932317264937123.Spec : Prop :=
  ∀ n, P6443932317264937123.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P12820449474590079690

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A356426.P12820449474590079690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356426.P12820449474590079690

namespace A356426

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P12820449474590079690.Spec : Prop :=
  ∀ n, P12820449474590079690.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P7329156034201622766

`a(and(n, -n)-1)+a(n-1)+1` with `a(0)=2`
-/

namespace A356426.P7329156034201622766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (Int.land (n : ℤ) (-(n : ℤ)) - 1).toNat + (a (n - 1) + 1)

end

end A356426.P7329156034201622766

namespace A356426

/-- `a(and(n, -n)-1)+a(n-1)+1` -/
def P7329156034201622766.Spec : Prop :=
  ∀ n, (P7329156034201622766.a n : ℤ) = A356426 (n + 1)

end A356426

/-! ## A356426.P13841413413748667163

`2*a(n-1)+3-a(and(n, n-1))` with `a(0)=2`
-/

namespace A356426.P13841413413748667163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + (3 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A356426.P13841413413748667163

namespace A356426

/-- `2*a(n-1)+3-a(and(n, n-1))` -/
def P13841413413748667163.Spec : Prop :=
  ∀ n, P13841413413748667163.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P12638098279145504443

`3*(∑[and(n, -n)^log2(3)]+n)/2+2`
-/

namespace A356426.P12638098279145504443
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2) + 2

end

end A356426.P12638098279145504443

namespace A356426

/-- `3*(∑[and(n, -n)^log2(3)]+n)/2+2` -/
def P12638098279145504443.Spec : Prop :=
  ∀ n, P12638098279145504443.a n = (A356426 (n + 1) : ℝ)

end A356426

/-! ## A356426.P11760242184649537990

`record[3-(a(n-2)+a(xor(n, n-2)/2))]` with `a(0)=2, a(1)=2`
-/

namespace A356426.P11760242184649537990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 - (f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356426.P11760242184649537990

namespace A356426

/-- `record[3-(a(n-2)+a(xor(n, n-2)/2))]` -/
def P11760242184649537990.Spec : Prop :=
  ∀ n, P11760242184649537990.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P1593318587666157147

`a(n-1-and(n, n-1))+a(n-1)+1` with `a(0)=2`
-/

namespace A356426.P1593318587666157147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1) + 1

end

end A356426.P1593318587666157147

namespace A356426

/-- `a(n-1-and(n, n-1))+a(n-1)+1` -/
def P1593318587666157147.Spec : Prop :=
  ∀ n, (P1593318587666157147.a n : ℤ) = A356426 (n + 1)

end A356426

/-! ## A356426.P3242301320016203540

`A191107(n+1)+1`
-/

namespace A356426.P3242301320016203540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) + 1

end

end A356426.P3242301320016203540

namespace A356426

/-- `A191107(n+1)+1` -/
def P3242301320016203540.Spec : Prop :=
  ∀ n, P3242301320016203540.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P7057006488491513730

`A081601(n+1)+2`
-/

namespace A356426.P7057006488491513730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) + 2

end

end A356426.P7057006488491513730

namespace A356426

/-- `A081601(n+1)+2` -/
def P7057006488491513730.Spec : Prop :=
  ∀ n, P7057006488491513730.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P11000765685662917139

`A190640(n+1)/2+1`
-/

namespace A356426.P11000765685662917139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190640 (n + 1) : ℚ) / 2 + 1

end

end A356426.P11000765685662917139

namespace A356426

/-- `A190640(n+1)/2+1` -/
def P11000765685662917139.Spec : Prop :=
  ∀ n, P11000765685662917139.a n = (A356426 (n + 1) : ℚ)

end A356426

/-! ## A356426.P9022148250709500832

`(A265100(n+1)+1)/3`
-/

namespace A356426.P9022148250709500832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265100 (n + 1) + 1 : ℚ) / 3

end

end A356426.P9022148250709500832

namespace A356426

/-- `(A265100(n+1)+1)/3` -/
def P9022148250709500832.Spec : Prop :=
  ∀ n, P9022148250709500832.a n = (A356426 (n + 1) : ℚ)

end A356426

/-! ## A356426.P11159628704082593251

`(A055246(n+1)+3)/2`
-/

namespace A356426.P11159628704082593251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055246 (n + 1) + 3 : ℚ) / 2

end

end A356426.P11159628704082593251

namespace A356426

/-- `(A055246(n+1)+3)/2` -/
def P11159628704082593251.Spec : Prop :=
  ∀ n, P11159628704082593251.a n = (A356426 (n + 1) : ℚ)

end A356426

/-! ## A356426.P3397349260896737983

`A003278(n+1)+∑[and(n, -n)^log2(3)]+1+n`
-/

namespace A356426.P3397349260896737983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003278 (n + 1) : ℝ) + (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ))

end

end A356426.P3397349260896737983

namespace A356426

/-- `A003278(n+1)+∑[and(n, -n)^log2(3)]+1+n` -/
def P3397349260896737983.Spec : Prop :=
  ∀ n, P3397349260896737983.a n = (A356426 (n + 1) : ℝ)

end A356426

/-! ## A356426.P3115868469588923309

`A074938(n)+A001285(n)`
-/

namespace A356426.P3115868469588923309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n + A001285 n

end

end A356426.P3115868469588923309

namespace A356426

/-- `A074938(n)+A001285(n)` -/
def P3115868469588923309.Spec : Prop :=
  ∀ n, P3115868469588923309.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P17652234831698850002

`A010059(n)+A074939(n)+1`
-/

namespace A356426.P17652234831698850002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n + (A074939 n + 1)

end

end A356426.P17652234831698850002

namespace A356426

/-- `A010059(n)+A074939(n)+1` -/
def P17652234831698850002.Spec : Prop :=
  ∀ n, P17652234831698850002.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P4778742184596349538

`A010060(n)+A074938(n)+1`
-/

namespace A356426.P4778742184596349538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (A074938 n + 1)

end

end A356426.P4778742184596349538

namespace A356426

/-- `A010060(n)+A074938(n)+1` -/
def P4778742184596349538.Spec : Prop :=
  ∀ n, P4778742184596349538.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P15020265273248062577

`A033159(n+1)+A005823(n+1)`
-/

namespace A356426.P15020265273248062577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + A005823 (n + 1)

end

end A356426.P15020265273248062577

namespace A356426

/-- `A033159(n+1)+A005823(n+1)` -/
def P15020265273248062577.Spec : Prop :=
  ∀ n, P15020265273248062577.a n = A356426 (n + 1)

end A356426

/-! ## A356426.P13584816765317214782

`A055247(n+1)+A004793(n+1)`
-/

namespace A356426.P13584816765317214782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) + A004793 (n + 1)

end

end A356426.P13584816765317214782

namespace A356426

/-- `A055247(n+1)+A004793(n+1)` -/
def P13584816765317214782.Spec : Prop :=
  ∀ n, P13584816765317214782.a n = A356426 (n + 1)

end A356426

/-!
# A356427: a(0) = 0, a(1) = 1; for n > 1, a(n) is the last step before reaching 0 of the iterations x -> x - gpf(x) starting at n, where gpf = A006530.

The programs for A356427, there is no canonical definition to state claims against.
-/

/-! ## A356427.P582299945564294224

`A284695(A126289(n+1))%A061955(n+1)`
-/

namespace A356427.P582299945564294224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284695 (A126289 (n + 1)).toNat) (A061955 (n + 1))

end

end A356427.P582299945564294224

/-! ## A356427.P5792560031086985430

`A007814(C(A187941(n), A305426(3*n+4)))`
-/

namespace A356427.P5792560031086985430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.choose (A187941 n).toNat (A305426 (3 * n + 4)).toNat)

end

end A356427.P5792560031086985430

/-! ## A356427.P8321507463235852165

`A033677(A126289(n+1))%A124006(n)`
-/

namespace A356427.P8321507463235852165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (A126289 (n + 1)).toNat) (A124006 n)

end

end A356427.P8321507463235852165

/-! ## A356427.P11985791476521710159

`∑{e}[A000244(n), A284695(#)]`
-/

namespace A356427.P11985791476521710159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A284695 (Nat.factorization (f1 n).natAbs p)

end

end A356427.P11985791476521710159

/-!
# A356428: a(0) = a(1) = 0; for n > 1, a(n) is the number of distinct gpf(x)'s in the iterations x -> x - gpf(x) starting at n and ending at 0, where gpf = A006530.

The programs for A356428, there is no canonical definition to state claims against.
-/

/-! ## A356428.P15183546471926378493

`A124010(A008642(n)*A098474(n))`
-/

namespace A356428.P15183546471926378493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A008642 n * A098474 n).toNat

end

end A356428.P15183546471926378493

/-! ## A356428.P7238570809441239817

`A323466(A323436(3*n))-2`
-/

namespace A356428.P7238570809441239817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323466 (A323436 (3 * n)).toNat - 2

end

end A356428.P7238570809441239817

/-! ## A356428.P5306469923954509089

`∑{p}[A323436(3*n), A059939(A080686(#+2))]`
-/

namespace A356428.P5306469923954509089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A059939 (A080686 (p + 2)).toNat

end

end A356428.P5306469923954509089

/-! ## A356428.P897036197168047340

`A331591(or(n, A245733(n)))`
-/

namespace A356428.P897036197168047340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (Int.lor (n : ℤ) (A245733 n)).toNat

end

end A356428.P897036197168047340

/-!
# A356434: Prime nearest to 2^n. In case of a tie, choose the larger.

The programs for A356434, there is no canonical definition to state claims against.
-/

/-! ## A356434.P15098742032527423363

`A151800(A000079(n)-(2*∑[∑{d}[n, -(-1)^#]]-n))`
-/

namespace A356434.P15098742032527423363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000079 n - (2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ))).toNat

end

end A356434.P15098742032527423363

/-! ## A356434.P3596127339187139847

`A151800(A000079(n)-A282611(n))`
-/

namespace A356434.P3596127339187139847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000079 n - A282611 n).toNat

end

end A356434.P3596127339187139847

/-! ## A356434.P253506318060018835

`A151800(A000051(n)-A338913(n+1))`
-/

namespace A356434.P253506318060018835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000051 n - A338913 (n + 1)).toNat

end

end A356434.P253506318060018835

/-! ## A356434.P14087976201564898962

`A000040(A288694(2*n+3)+A007053(n))`
-/

namespace A356434.P14087976201564898962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A288694 (2 * n + 3) + A007053 n).toNat

end

end A356434.P14087976201564898962

/-!
# A356435: a(n) is the minimum number of Z x Z lattice points inside or on a circle of radius n^(1/2) for any position of the center of the circle.

The programs for A356435, there is no canonical definition to state claims against.
-/

/-! ## A356435.P5492553108450721220

`A008486(n)-A092335(A027642(n))`
-/

namespace A356435.P5492553108450721220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A092335 (A027642 n).toNat

end

end A356435.P5492553108450721220

/-! ## A356435.P7823718447766162169

`A008486(n)-A092335(A141056(n))`
-/

namespace A356435.P7823718447766162169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A092335 (A141056 n).toNat

end

end A356435.P7823718447766162169

/-! ## A356435.P16822055375878431181

`A008486(n)-A092335(A176289(n))`
-/

namespace A356435.P16822055375878431181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A092335 (A176289 n).toNat

end

end A356435.P16822055375878431181

/-! ## A356435.P9026448695696877009

`A007310(n+1)-A001221(A237324(n+1))`
-/

namespace A356435.P9026448695696877009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) - A001221 (A237324 (n + 1)).toNat

end

end A356435.P9026448695696877009

/-! ## A356435.P16425344199729086661

`A267458(3*n+1)-A023532(A309864(n))`
-/

namespace A356435.P16425344199729086661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (3 * n + 1) - A023532 (A309864 n).toNat

end

end A356435.P16425344199729086661

/-!
# A356436: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} d^(k/d) )/k.

The programs for A356436, there is no canonical definition to state claims against.
-/

/-! ## A356436.P4260419579014584449

`A074796(A290359(n+1)+1)`
-/

namespace A356436.P4260419579014584449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074796 (A290359 (n + 1) + 1).toNat

end

end A356436.P4260419579014584449

/-!
# A356438: Numbers k such that A309892(k) = k/gpf(k), where gpf = A006530.

The programs for A356438, the canonical program `A356438.P687443748466694219` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356438 has offset 1).

The definition of A356438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356438.P687443748466694219

`∪[A063538(n+1), A076271(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A356438

/-- `∪[A063538(n+1), A076271(n+1)]` -/
def P687443748466694219.Spec : Prop :=
  ∀ n, (P687443748466694219.a n : ℤ) = A356438 (n + 1)

theorem P687443748466694219.correct : P687443748466694219.Spec := by
  intro n
  simp only [A356438, Nat.add_sub_cancel]

end A356438

/-! ## A356438.P2194983483827769201

`∪[A064052(n+1), A076271(n+1)]`
-/

namespace A356438.P2194983483827769201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356438.P2194983483827769201

namespace A356438

/-- `∪[A064052(n+1), A076271(n+1)]` -/
def P2194983483827769201.Spec : Prop :=
  ∀ n, (P2194983483827769201.a n : ℤ) = A356438 (n + 1)

end A356438

/-! ## A356438.P2966098680530616954

`eq[A060576(n), A356428(n)]`
-/

namespace A356438.P2966098680530616954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356438.P2966098680530616954

namespace A356438

/-- `eq[A060576(n), A356428(n)]` -/
def P2966098680530616954.Spec : Prop :=
  ∀ n, (P2966098680530616954.a n : ℤ) = A356438 (n + 1)

end A356438

/-! ## A356438.P8101593656806227537

`eq[A331888(A356427(n)), A356428(n)]`
-/

namespace A356438.P8101593656806227537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331888 (A356427 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356438.P8101593656806227537

namespace A356438

/-- `eq[A331888(A356427(n)), A356428(n)]` -/
def P8101593656806227537.Spec : Prop :=
  ∀ n, (P8101593656806227537.a n : ℤ) = A356438 (n + 1)

end A356438

/-! ## A356438.P9835484260360270430

`eq[A331888(n)*A356428(n), A331888(n)]`
-/

namespace A356438.P9835484260360270430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331888 n * A356428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356438.P9835484260360270430

namespace A356438

/-- `eq[A331888(n)*A356428(n), A331888(n)]` -/
def P9835484260360270430.Spec : Prop :=
  ∀ n, (P9835484260360270430.a n : ℤ) = A356438 (n + 1)

end A356438

/-! ## A356438.P13663201522583770433

`∪[A076271(n+1), A335126(n+1)]`
-/

namespace A356438.P13663201522583770433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356438.P13663201522583770433

namespace A356438

/-- `∪[A076271(n+1), A335126(n+1)]` -/
def P13663201522583770433.Spec : Prop :=
  ∀ n, (P13663201522583770433.a n : ℤ) = A356438 (n + 1)

end A356438

/-! ## A356438.P14105820826541328446

`∪[A076271(n+1), A340787(n+1)]`
-/

namespace A356438.P14105820826541328446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356438.P14105820826541328446

namespace A356438

/-- `∪[A076271(n+1), A340787(n+1)]` -/
def P14105820826541328446.Spec : Prop :=
  ∀ n, (P14105820826541328446.a n : ℤ) = A356438 (n + 1)

end A356438

/-!
# A356439: Expansion of e.g.f. ( Product_{k>0} 1/(1 - k * x^k)^(1/k) )^(1/(1-x)).

The programs for A356439, there is no canonical definition to state claims against.
-/

/-! ## A356439.P18120774117454223610

`or(n!, A276214(n^n))`
-/

namespace A356439.P18120774117454223610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial n : ℤ) (A276214 (n ^ n))

end

end A356439.P18120774117454223610

/-!
# A356440: Expansion of e.g.f. ( Product_{k>0} 1/(1 - (k * x)^k)^(1/k) )^(1/(1-x)).

The programs for A356440, there is no canonical definition to state claims against.
-/

/-! ## A356440.P10263087891736148538

`A055170(A000255(n)²)+1`
-/

namespace A356440.P10263087891736148538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055170 (A000255 n ^ 2).toNat + 1

end

end A356440.P10263087891736148538

/-!
# A356441: Numbers k such that A309892(k) < k/gpf(k), where gpf = A006530; complement of A356438.

The programs for A356441, the canonical program `A356441.P16650171440783034541` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356441 has offset 1).

The definition of A356441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356441.P16650171440783034541

`comp[A356438(n+1)-1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A356441

/-- `comp[A356438(n+1)-1]+1` -/
def P16650171440783034541.Spec : Prop :=
  ∀ n, (P16650171440783034541.a n : ℤ) = A356441 (n + 1)

theorem P16650171440783034541.correct : P16650171440783034541.Spec := by
  intro n
  simp only [A356441, Nat.add_sub_cancel]

end A356441

/-! ## A356441.P8594097626884443196

`∩[A063539(n+1), comp[A356438(n+1)]]`
-/

namespace A356441.P8594097626884443196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356441.P8594097626884443196

namespace A356441

/-- `∩[A063539(n+1), comp[A356438(n+1)]]` -/
def P8594097626884443196.Spec : Prop :=
  ∀ n, (P8594097626884443196.a n : ℤ) = A356441 (n + 1)

end A356441

/-! ## A356441.P16160443631342536582

`lt[1, A356428(n)]`
-/

namespace A356441.P16160443631342536582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356441.P16160443631342536582

namespace A356441

/-- `lt[1, A356428(n)]` -/
def P16160443631342536582.Spec : Prop :=
  ∀ n, (P16160443631342536582.a n : ℤ) = A356441 (n + 1)

end A356441

/-! ## A356441.P9363562036976804260

`A020725(comp[A356438(n+1)-1])`
-/

namespace A356441.P9363562036976804260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356441.P9363562036976804260

namespace A356441

/-- `A020725(comp[A356438(n+1)-1])` -/
def P9363562036976804260.Spec : Prop :=
  ∀ n, P9363562036976804260.a n = A356441 (n + 1)

end A356441

/-! ## A356441.P16666118057432217428

`eq[0, A183063((a(A356428(n))-1)²)]` with `a(0)=-1, a(1)=-1`
-/

namespace A356441.P16666118057432217428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f2 =>
  A183063 ((f2 (A356428 n).toNat - 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356441.P16666118057432217428

namespace A356441

/-- `eq[0, A183063((a(A356428(n))-1)²)]` -/
def P16666118057432217428.Spec : Prop :=
  ∀ n, (P16666118057432217428.a n : ℤ) = A356441 (n + 1)

end A356441

/-!
# A356443: Primes p such that the concatenation of p and 2*p is the average of a twin prime pair.

The programs for A356443, there is no canonical definition to state claims against.
-/

/-! ## A356443.P10840504494567060505

`∩[A168164(n+1), A244085(n+1)]`
-/

namespace A356443.P10840504494567060505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356443.P10840504494567060505

/-!
# A356445: a(n) is the number of times that A064440(n) occurs as the sum of proper divisors function (A001065).

The programs for A356445, there is no canonical definition to state claims against.
-/

/-! ## A356445.P11985206014040184188

`A048138(A064440(n+1))`
-/

namespace A356445.P11985206014040184188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (A064440 (n + 1)).toNat

end

end A356445.P11985206014040184188

/-! ## A356445.P15879471980798673428

`filter[A002267(n+1), A050073(#)]`
-/

namespace A356445.P15879471980798673428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050073 (f1 j).toNat = 1) n)

end

end A356445.P15879471980798673428

/-!
# A356447: Integers k such that (k+1)*(2*k-1) does not divide the central binomial coefficient B(k) = binomial(2*k,k) = A000984(k).

The programs for A356447, the canonical program `A356447.P15206919094827022873` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356447 has offset 1).

The definition of A356447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096304, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356447.P15206919094827022873

`3*A096304(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A356447

/-- `3*A096304(n+1)-1` -/
def P15206919094827022873.Spec : Prop :=
  ∀ n, P15206919094827022873.a n = A356447 (n + 1)

theorem P15206919094827022873.correct : P15206919094827022873.Spec := by
  intro n
  simp only [A356447, Nat.add_sub_cancel]

end A356447

/-! ## A356447.P1598869353756518526

`record[3-(a(n-2)+a(xor(n, n-2)/2))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A356447.P1598869353756518526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  3 - (f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356447.P1598869353756518526

namespace A356447

/-- `record[3-(a(n-2)+a(xor(n, n-2)/2))]` -/
def P1598869353756518526.Spec : Prop :=
  ∀ n, P1598869353756518526.a n = A356447 (n + 1)

end A356447

/-! ## A356447.P10102832730699449676

`3*A370662(n+1)+2`
-/

namespace A356447.P10102832730699449676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A370662 (n + 1) + 2

end

end A356447.P10102832730699449676

namespace A356447

/-- `3*A370662(n+1)+2` -/
def P10102832730699449676.Spec : Prop :=
  ∀ n, P10102832730699449676.a n = A356447 (n + 1)

end A356447

/-! ## A356447.P17262315060565309985

`eq[n+2, A174574(2*n)]`
-/

namespace A356447.P17262315060565309985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174574 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356447.P17262315060565309985

namespace A356447

/-- `eq[n+2, A174574(2*n)]` -/
def P17262315060565309985.Spec : Prop :=
  ∀ n, (P17262315060565309985.a n : ℤ) = A356447 (n + 1)

end A356447

/-! ## A356447.P1134075081103894627

`A016789(A370662(n+1))`
-/

namespace A356447.P1134075081103894627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A370662 (n + 1)).toNat

end

end A356447.P1134075081103894627

namespace A356447

/-- `A016789(A370662(n+1))` -/
def P1134075081103894627.Spec : Prop :=
  ∀ n, P1134075081103894627.a n = A356447 (n + 1)

end A356447

/-! ## A356447.P14383166436408602257

`∪[A089118(n+1), A265100(n+1)]`
-/

namespace A356447.P14383166436408602257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356447.P14383166436408602257

namespace A356447

/-- `∪[A089118(n+1), A265100(n+1)]` -/
def P14383166436408602257.Spec : Prop :=
  ∀ n, (P14383166436408602257.a n : ℤ) = A356447 (n + 1)

end A356447

/-! ## A356447.P16972064292178346214

`∪[A089118(n+1), A356426(n+1)]`
-/

namespace A356447.P16972064292178346214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356447.P16972064292178346214

namespace A356447

/-- `∪[A089118(n+1), A356426(n+1)]` -/
def P16972064292178346214.Spec : Prop :=
  ∀ n, (P16972064292178346214.a n : ℤ) = A356447 (n + 1)

end A356447

/-! ## A356447.P12582929871519518569

`eq[A010178(n), A353158(n)]`
-/

namespace A356447.P12582929871519518569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356447.P12582929871519518569

namespace A356447

/-- `eq[A010178(n), A353158(n)]` -/
def P12582929871519518569.Spec : Prop :=
  ∀ n, (P12582929871519518569.a n : ℤ) = A356447 (n + 1)

end A356447

/-! ## A356447.P718569768309811813

`record[A338242(3*n)+2]`
-/

namespace A356447.P718569768309811813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (3 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356447.P718569768309811813

namespace A356447

/-- `record[A338242(3*n)+2]` -/
def P718569768309811813.Spec : Prop :=
  ∀ n, P718569768309811813.a n = A356447 (n + 1)

end A356447

/-! ## A356447.P12099975660484361245

`record[2-A338241(3*n)]`
-/

namespace A356447.P12099975660484361245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A338241 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356447.P12099975660484361245

namespace A356447

/-- `record[2-A338241(3*n)]` -/
def P12099975660484361245.Spec : Prop :=
  ∀ n, P12099975660484361245.a n = A356447 (n + 1)

end A356447

/-! ## A356447.P9825502280769858127

`eq[n, A343754(2*n)+2]`
-/

namespace A356447.P9825502280769858127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343754 (2 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356447.P9825502280769858127

namespace A356447

/-- `eq[n, A343754(2*n)+2]` -/
def P9825502280769858127.Spec : Prop :=
  ∀ n, (P9825502280769858127.a n : ℤ) = A356447 (n + 1)

end A356447

/-! ## A356447.P17588585802486637527

`∪[A265104(n+1), A356426(n+1)]`
-/

namespace A356447.P17588585802486637527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356447.P17588585802486637527

namespace A356447

/-- `∪[A265104(n+1), A356426(n+1)]` -/
def P17588585802486637527.Spec : Prop :=
  ∀ n, (P17588585802486637527.a n : ℤ) = A356447 (n + 1)

end A356447

/-!
# A356448: Even numbers k such that k^2 is in A014567.

The programs for A356448, the canonical program `A356448.P2647750679895605834` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356448 has offset 1).

The definition of A356448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356448.P4084755437066364089

`2*A356451(n+1)`
-/

namespace A356448.P4084755437066364089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356451 (n + 1)

end

end A356448.P4084755437066364089

namespace A356448

/-- `2*A356451(n+1)` -/
def P4084755437066364089.Spec : Prop :=
  ∀ n, P4084755437066364089.a n = A356448 (n + 1)

end A356448

/-! ## A356448.P2647750679895605834

`eq[n%2, A074465(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A356448

/-- `eq[n%2, A074465(n+1)]+1` -/
def P2647750679895605834.Spec : Prop :=
  ∀ n, (P2647750679895605834.a n : ℤ) = A356448 (n + 1)

theorem P2647750679895605834.correct : P2647750679895605834.Spec := by
  intro n
  simp only [A356448, Nat.add_sub_cancel]

end A356448

/-! ## A356448.P6913694563846993209

`A356451(A000027(n+1))+A356451(n+1)`
-/

namespace A356448.P6913694563846993209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356451 (A000027 (n + 1)).toNat + A356451 (n + 1)

end

end A356448.P6913694563846993209

namespace A356448

/-- `A356451(A000027(n+1))+A356451(n+1)` -/
def P6913694563846993209.Spec : Prop :=
  ∀ n, P6913694563846993209.a n = A356448 (n + 1)

end A356448

/-! ## A356448.P5560772485877285968

`A004277(A356451(n+1))`
-/

namespace A356448.P5560772485877285968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A356451 (n + 1)).toNat

end

end A356448.P5560772485877285968

namespace A356448

/-- `A004277(A356451(n+1))` -/
def P5560772485877285968.Spec : Prop :=
  ∀ n, P5560772485877285968.a n = A356448 (n + 1)

end A356448

/-! ## A356448.P14686405834651404384

`A004275(A356451(n+1)+1)`
-/

namespace A356448.P14686405834651404384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A356451 (n + 1) + 1).toNat

end

end A356448.P14686405834651404384

namespace A356448

/-- `A004275(A356451(n+1)+1)` -/
def P14686405834651404384.Spec : Prop :=
  ∀ n, P14686405834651404384.a n = A356448 (n + 1)

end A356448

/-! ## A356448.P190465907147617435

`eq[-A033999(n), A074465(n+1)]+1`
-/

namespace A356448.P190465907147617435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356448.P190465907147617435

namespace A356448

/-- `eq[-A033999(n), A074465(n+1)]+1` -/
def P190465907147617435.Spec : Prop :=
  ∀ n, (P190465907147617435.a n : ℤ) = A356448 (n + 1)

end A356448

/-!
# A356449: Numbers k such that 2*k^2 is in A014567.

The programs for A356449, there is no canonical definition to state claims against.
-/

/-! ## A356449.P998374635478305882

`comp[A356453(n+1)-1]+1`
-/

namespace A356449.P998374635478305882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356449.P998374635478305882

/-! ## A356449.P12653847445253081577

`comp[∪[A356453(n+1), A008585(n)]]`
-/

namespace A356449.P12653847445253081577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356449.P12653847445253081577

/-! ## A356449.P4111680808323067388

`comp[∪[A356456(n+1), A008585(n)]]`
-/

namespace A356449.P4111680808323067388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356456 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356449.P4111680808323067388

/-! ## A356449.P15581027935497669801

`eq[char[A356453(n+1)], A151933(n)]`
-/

namespace A356449.P15581027935497669801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A356449.P15581027935497669801

/-! ## A356449.P9881301960990668618

`lt[A009194(2*(n+1)²), 2]+1`
-/

namespace A356449.P9881301960990668618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (2 * (n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356449.P9881301960990668618

/-!
# A356450: Positions of numbers m = A005940(n+1) such that m < n.

The programs for A356450, there is no canonical definition to state claims against.
-/

/-! ## A356450.P13219283933174908974

`A364540(n+1)-1`
-/

namespace A356450.P13219283933174908974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364540 (n + 1) - 1

end

end A356450.P13219283933174908974

/-! ## A356450.P8097335445261721243

`∩[A004751(n+1), A364541(n+1)]-1`
-/

namespace A356450.P8097335445261721243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A356450.P8097335445261721243

/-! ## A356450.P14203505564173703979

`lt[A324394(n)*A324395(n), n]`
-/

namespace A356450.P14203505564173703979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 n * A324395 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P14203505564173703979

/-! ## A356450.P10733865065187244216

`lt[A364499(n+1)+1, 1]`
-/

namespace A356450.P10733865065187244216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364499 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P10733865065187244216

/-! ## A356450.P12821804833345483713

`lt[A366260(A303768(n)), n]`
-/

namespace A356450.P12821804833345483713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366260 (A303768 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P12821804833345483713

/-! ## A356450.P11606684561509228205

`lt[A005940(n+1), n]`
-/

namespace A356450.P11606684561509228205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P11606684561509228205

/-! ## A356450.P8066211857741873723

`A023443(A364540(n+1))`
-/

namespace A356450.P8066211857741873723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A364540 (n + 1)).toNat

end

end A356450.P8066211857741873723

/-! ## A356450.P5022147789126847880

`∩[A161992(n+1), A364541(n+1)]-1`
-/

namespace A356450.P5022147789126847880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A356450.P5022147789126847880

/-! ## A356450.P1880641803420452319

`lt[2*A292602(2*n+1), n]`
-/

namespace A356450.P1880641803420452319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292602 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P1880641803420452319

/-! ## A356450.P10936671012305661897

`lt[A243353(A006068(n)), n]`
-/

namespace A356450.P10936671012305661897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A006068 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P10936671012305661897

/-! ## A356450.P14890391699232491726

`lt[A279338(A279344(n)), n]`
-/

namespace A356450.P14890391699232491726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P14890391699232491726

/-! ## A356450.P2334116420027382065

`lt[A292602(4*n+3), n]`
-/

namespace A356450.P2334116420027382065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292602 (4 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P2334116420027382065

/-! ## A356450.P13824154587191465523

`A156552(A356455(n+1))`
-/

namespace A356450.P13824154587191465523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A356455 (n + 1)).toNat

end

end A356450.P13824154587191465523

/-! ## A356450.P7518076065956875721

`lt[A302026(A269387(n)), n]`
-/

namespace A356450.P7518076065956875721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269387 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356450.P7518076065956875721

/-!
# A356451: Numbers k such that 4*k^2 is in A014567.

The programs for A356451, the canonical program `A356451.P11012535178385442677` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356451 has offset 1).

The definition of A356451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356451.P11012535178385442677

`A356448(n+1)/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A356451

/-- `A356448(n+1)/2` -/
def P11012535178385442677.Spec : Prop :=
  ∀ n, P11012535178385442677.a n = (A356451 (n + 1) : ℚ)

end A356451

/-! ## A356451.P9336093969972920792

`eq[1, A074465(2*(n+1))]+1`
-/

namespace A356451.P9336093969972920792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356451.P9336093969972920792

namespace A356451

/-- `eq[1, A074465(2*(n+1))]+1` -/
def P9336093969972920792.Spec : Prop :=
  ∀ n, (P9336093969972920792.a n : ℤ) = A356451 (n + 1)

end A356451

/-! ## A356451.P17804912776867698355

`A014682(A356448(n+1))`
-/

namespace A356451.P17804912776867698355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A356448 (n + 1)).toNat

end

end A356451.P17804912776867698355

namespace A356451

/-- `A014682(A356448(n+1))` -/
def P17804912776867698355.Spec : Prop :=
  ∀ n, P17804912776867698355.a n = A356451 (n + 1)

end A356451

/-! ## A356451.P6290928109157029936

`lt[A074465(2*(n+1)), A020639(2*(n+1))]+1`
-/

namespace A356451.P6290928109157029936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A356451.P6290928109157029936

namespace A356451

/-- `lt[A074465(2*(n+1)), A020639(2*(n+1))]+1` -/
def P6290928109157029936.Spec : Prop :=
  ∀ n, (P6290928109157029936.a n : ℤ) = A356451 (n + 1)

end A356451

/-! ## A356451.P7456938462562431699

`lt[A155722(A074465(2*(n+1))+1), 3]+1`
-/

namespace A356451.P7456938462562431699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (A074465 (2 * (n + 1)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356451.P7456938462562431699

namespace A356451

/-- `lt[A155722(A074465(2*(n+1))+1), 3]+1` -/
def P7456938462562431699.Spec : Prop :=
  ∀ n, (P7456938462562431699.a n : ℤ) = A356451 (n + 1)

end A356451

/-! ## A356451.P1899015888224971739

`lt[A345001(A074465(2*(n+1))+1), 3]+1`
-/

namespace A356451.P1899015888224971739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345001 (A074465 (2 * (n + 1)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356451.P1899015888224971739

namespace A356451

/-- `lt[A345001(A074465(2*(n+1))+1), 3]+1` -/
def P1899015888224971739.Spec : Prop :=
  ∀ n, (P1899015888224971739.a n : ℤ) = A356451 (n + 1)

end A356451

/-! ## A356451.P15639816705365654723

`A123108(A356448(n+1)+1)`
-/

namespace A356451.P15639816705365654723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A356448 (n + 1) + 1).toNat

end

end A356451.P15639816705365654723

namespace A356451

/-- `A123108(A356448(n+1)+1)` -/
def P15639816705365654723.Spec : Prop :=
  ∀ n, P15639816705365654723.a n = A356451 (n + 1)

end A356451

/-! ## A356451.P6153170403636162015

`lt[A007662(A074465(2*(n+1))+1), 3]+1`
-/

namespace A356451.P6153170403636162015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A074465 (2 * (n + 1)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356451.P6153170403636162015

namespace A356451

/-- `lt[A007662(A074465(2*(n+1))+1), 3]+1` -/
def P6153170403636162015.Spec : Prop :=
  ∀ n, (P6153170403636162015.a n : ℤ) = A356451 (n + 1)

end A356451

/-!
# A356452: Even numbers k such that k^2 is not in A014567; complement of A356448 in the even numbers.

The programs for A356452, the canonical program `A356452.P6260513560774199967` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356452 has offset 1).

The definition of A356452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356452.P17044801613638050790

`2*A356454(n+1)`
-/

namespace A356452.P17044801613638050790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356454 (n + 1)

end

end A356452.P17044801613638050790

namespace A356452

/-- `2*A356454(n+1)` -/
def P17044801613638050790.Spec : Prop :=
  ∀ n, P17044801613638050790.a n = A356452 (n + 1)

end A356452

/-! ## A356452.P13488196424545676207

`A356454(A000027(n+1))+A356454(n+1)`
-/

namespace A356452.P13488196424545676207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356454 (A000027 (n + 1)).toNat + A356454 (n + 1)

end

end A356452.P13488196424545676207

namespace A356452

/-- `A356454(A000027(n+1))+A356454(n+1)` -/
def P13488196424545676207.Spec : Prop :=
  ∀ n, P13488196424545676207.a n = A356452 (n + 1)

end A356452

/-! ## A356452.P6260513560774199967

`2*(lt[1, A074465(2*(n+1))]+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A356452

/-- `2*(lt[1, A074465(2*(n+1))]+1)` -/
def P6260513560774199967.Spec : Prop :=
  ∀ n, (P6260513560774199967.a n : ℤ) = A356452 (n + 1)

theorem P6260513560774199967.correct : P6260513560774199967.Spec := by
  intro n
  simp only [A356452, Nat.add_sub_cancel]

end A356452

/-! ## A356452.P1614784147765123831

`A004277(A356454(n+1))`
-/

namespace A356452.P1614784147765123831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A356454 (n + 1)).toNat

end

end A356452.P1614784147765123831

namespace A356452

/-- `A004277(A356454(n+1))` -/
def P1614784147765123831.Spec : Prop :=
  ∀ n, P1614784147765123831.a n = A356452 (n + 1)

end A356452

/-! ## A356452.P439119167176139044

`A356480(A356454(n+1)+1)+1`
-/

namespace A356452.P439119167176139044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356480 (A356454 (n + 1) + 1).toNat + 1

end

end A356452.P439119167176139044

namespace A356452

/-- `A356480(A356454(n+1)+1)+1` -/
def P439119167176139044.Spec : Prop :=
  ∀ n, P439119167176139044.a n = A356452 (n + 1)

end A356452

/-! ## A356452.P12197915823983397631

`A005843(A356454(n+1))%A000217(n+12)`
-/

namespace A356452.P12197915823983397631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A356454 (n + 1)).toNat) (A000217 (n + 12))

end

end A356452.P12197915823983397631

namespace A356452

/-- `A005843(A356454(n+1))%A000217(n+12)` -/
def P12197915823983397631.Spec : Prop :=
  ∀ n, P12197915823983397631.a n = A356452 (n + 1)

end A356452

/-!
# A356453: Numbers k such that 2*k^2 is not in A014567; complement of A356449.

The programs for A356453, there is no canonical definition to state claims against.
-/

/-! ## A356453.P18157173988751648261

`∪[A008585(n+1), A356456(n+1)]`
-/

namespace A356453.P18157173988751648261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356453.P18157173988751648261

/-! ## A356453.P1021391543427818468

`comp[A356449(n+1)-1]+1`
-/

namespace A356453.P1021391543427818468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356449 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356453.P1021391543427818468

/-! ## A356453.P14545541836532676760

`∪[A337244(n+1), A356456(n+1)]`
-/

namespace A356453.P14545541836532676760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356453.P14545541836532676760

/-! ## A356453.P4573421633601075574

`eq[0, A325964(abs(1-2*n²)+1)]`
-/

namespace A356453.P4573421633601075574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (|1 - (2 * n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356453.P4573421633601075574

/-! ## A356453.P9556693028389832396

`eq[char[A356449(n+1)], A151933(n)]`
-/

namespace A356453.P9556693028389832396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356449 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A356453.P9556693028389832396

/-!
# A356454: Numbers k such that 4*k^2 is not in A014567; complement of A356451.

The programs for A356454, the canonical program `A356454.P58692963208807662` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356454 has offset 1).

The definition of A356454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356454.P58692963208807662

`A356452(n+1)/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A356454

/-- `A356452(n+1)/2` -/
def P58692963208807662.Spec : Prop :=
  ∀ n, P58692963208807662.a n = (A356454 (n + 1) : ℚ)

end A356454

/-! ## A356454.P13350199520910466199

`A014682(A356452(n+1))`
-/

namespace A356454.P13350199520910466199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A356452 (n + 1)).toNat

end

end A356454.P13350199520910466199

namespace A356454

/-- `A014682(A356452(n+1))` -/
def P13350199520910466199.Spec : Prop :=
  ∀ n, P13350199520910466199.a n = A356454 (n + 1)

end A356454

/-! ## A356454.P11391937964128474277

`lt[1, A074465(2*(n+1))]+1`
-/

namespace A356454.P11391937964128474277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A356454.P11391937964128474277

namespace A356454

/-- `lt[1, A074465(2*(n+1))]+1` -/
def P11391937964128474277.Spec : Prop :=
  ∀ n, (P11391937964128474277.a n : ℤ) = A356454 (n + 1)

end A356454

/-! ## A356454.P18073667678048138989

`A110654(A356452(n+1)-1)`
-/

namespace A356454.P18073667678048138989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A356452 (n + 1) - 1).toNat

end

end A356454.P18073667678048138989

namespace A356454

/-- `A110654(A356452(n+1)-1)` -/
def P18073667678048138989.Spec : Prop :=
  ∀ n, P18073667678048138989.a n = A356454 (n + 1)

end A356454

/-! ## A356454.P10327823431006057868

`A006370(A356452(n+1)+2)-1`
-/

namespace A356454.P10327823431006057868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A356452 (n + 1) + 2).toNat - 1

end

end A356454.P10327823431006057868

namespace A356454

/-- `A006370(A356452(n+1)+2)-1` -/
def P10327823431006057868.Spec : Prop :=
  ∀ n, P10327823431006057868.a n = A356454 (n + 1)

end A356454

/-! ## A356454.P11370507307065976086

`A004526(∩[2*n, A356452(n+1)])`
-/

namespace A356454.P11370507307065976086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356452 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A356454.P11370507307065976086

namespace A356454

/-- `A004526(∩[2*n, A356452(n+1)])` -/
def P11370507307065976086.Spec : Prop :=
  ∀ n, P11370507307065976086.a n = A356454 (n + 1)

end A356454

/-! ## A356454.P13662595386328833578

`∩[A161992(n+1), A004526(A356452(n+1))]`
-/

namespace A356454.P13662595386328833578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A356452 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356454.P13662595386328833578

namespace A356454

/-- `∩[A161992(n+1), A004526(A356452(n+1))]` -/
def P13662595386328833578.Spec : Prop :=
  ∀ n, (P13662595386328833578.a n : ℤ) = A356454 (n + 1)

end A356454

/-!
# A356455: Numbers m = A005940(n) such that A005940(n) < (n-1), listed in order of appearance in A005940.

The programs for A356455, the canonical program `A356455.P8353275492922679429` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356455 has offset 1).

The definition of A356455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356455.P14531705718128684310

`A005940(A364540(n+1))`
-/

namespace A356455.P14531705718128684310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A364540 (n + 1)).toNat

end

end A356455.P14531705718128684310

namespace A356455

/-- `A005940(A364540(n+1))` -/
def P14531705718128684310.Spec : Prop :=
  ∀ n, P14531705718128684310.a n = A356455 (n + 1)

end A356455

/-! ## A356455.P3777778776089205337

`A005940(A356450(n+1)+1)`
-/

namespace A356455.P3777778776089205337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A356450 (n + 1) + 1).toNat

end

end A356455.P3777778776089205337

namespace A356455

/-- `A005940(A356450(n+1)+1)` -/
def P3777778776089205337.Spec : Prop :=
  ∀ n, P3777778776089205337.a n = A356455 (n + 1)

end A356455

/-! ## A356455.P8353275492922679429

`A005940(lt[A005940(n+1), n]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A356455

/-- `A005940(lt[A005940(n+1), n]+1)` -/
def P8353275492922679429.Spec : Prop :=
  ∀ n, P8353275492922679429.a n = A356455 (n + 1)

theorem P8353275492922679429.correct : P8353275492922679429.Spec := by
  intro n
  simp only [A356455, Nat.add_sub_cancel]

end A356455

/-! ## A356455.P4752494211833097269

`A005940(∩[A161992(n+1), A364541(n+1)])`
-/

namespace A356455.P4752494211833097269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364541 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A356455.P4752494211833097269

namespace A356455

/-- `A005940(∩[A161992(n+1), A364541(n+1)])` -/
def P4752494211833097269.Spec : Prop :=
  ∀ n, P4752494211833097269.a n = A356455 (n + 1)

end A356455

/-! ## A356455.P2184202943793917737

`A253565(A354901(A004754(A004754(A004754(n+1)))))`
-/

namespace A356455.P2184202943793917737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A354901 (A004754 (A004754 (A004754 (n + 1)).toNat).toNat).toNat).toNat

end

end A356455.P2184202943793917737

namespace A356455

/-- `A253565(A354901(A004754(A004754(A004754(n+1)))))` -/
def P2184202943793917737.Spec : Prop :=
  ∀ n, P2184202943793917737.a n = A356455 (n + 1)

end A356455

/-!
# A356456: Numbers k not divisible by 3 such that 2*k^2 is not in A014567.

The programs for A356456, there is no canonical definition to state claims against.
-/

/-! ## A356456.P12854082662491974171

`∩[A171993(n+1), A356453(n+1)]`
-/

namespace A356456.P12854082662491974171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356456.P12854082662491974171

/-! ## A356456.P14330683733996008667

`∩[A001651(n+1), A356453(n+1)]`
-/

namespace A356456.P14330683733996008667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356456.P14330683733996008667

/-! ## A356456.P16145382631916835842

`filter[A356453(n+1), A011655(#)]`
-/

namespace A356456.P16145382631916835842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A356456.P16145382631916835842

/-! ## A356456.P16022533106579750225

`filter[A356453(n+1), A267208(#)]`
-/

namespace A356456.P16022533106579750225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A356456.P16022533106579750225

/-! ## A356456.P12848952643807865841

`∩[A057353(2*(n+1))+1, A356453(n+1)]`
-/

namespace A356456.P12848952643807865841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356456.P12848952643807865841

/-!
# A356457: a(n) is the least number that can be written in exactly n ways as p*q + q*r + p*r where (p,q,r) is an unordered triple of distinct primes.

The programs for A356457, there is no canonical definition to state claims against.
-/

/-! ## A356457.P14423934719230291006

`A344542(A367105(n+1))`
-/

namespace A356457.P14423934719230291006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344542 (A367105 (n + 1)).toNat

end

end A356457.P14423934719230291006

/-!
# A356458: Expansion of e.g.f. ( Product_{k>0} B(x^k) )^(1/(1-x)) where B(x) = exp(exp(x)-1) = e.g.f. of Bell numbers.

The programs for A356458, there is no canonical definition to state claims against.
-/

/-! ## A356458.P16318078885530473971

`A030229(A000598(n)*A202213(n))`
-/

namespace A356458.P16318078885530473971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (A000598 n * A202213 n).toNat

end

end A356458.P16318078885530473971

/-!
# A356461: Expansion of e.g.f. ( Product_{k>0} B(x^k)^k )^(1/(1-x)) where B(x) = exp(exp(x)-1) = e.g.f. of Bell numbers.

The programs for A356461, there is no canonical definition to state claims against.
-/

/-! ## A356461.P1089389990658982420

`A007095(A168449(n))-A275692(n+1)`
-/

namespace A356461.P1089389990658982420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A168449 n).toNat - A275692 (n + 1)

end

end A356461.P1089389990658982420

/-!
# A356463: Sum of powers of roots of x^3 - 4*x^2 + x + 1.

The programs for A356463, the canonical program `A356463.P2184156668675697367` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356463 has offset 0).

The definition of A356463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356463.P2184156668675697367

`4*a(n-1)-a(n-2)-a(n-3)` with `a(0)=3, a(1)=4, a(2)=14`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356463

/-- `4*a(n-1)-a(n-2)-a(n-3)` -/
def P2184156668675697367.Spec : Prop :=
  ∀ n, P2184156668675697367.a n = A356463 n

theorem P2184156668675697367.correct : P2184156668675697367.Spec := by
  intro n
  simp only [A356463]

end A356463

/-! ## A356463.P11890127607559972195

`ogf((3-8x+x^2)/(1-4x+x^2+x^3))`
-/

namespace A356463.P11890127607559972195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 1] [1, -4, 1, 1] n

end

end A356463.P11890127607559972195

namespace A356463

/-- `ogf((3-8x+x^2)/(1-4x+x^2+x^3))` -/
def P11890127607559972195.Spec : Prop :=
  ∀ n, P11890127607559972195.a n = A356463 n

end A356463

/-!
# A356465: The number of unit squares enclosed by the rectangular spiral of which the n-th side has length prime(n).

The programs for A356465, there is no canonical definition to state claims against.
-/

/-! ## A356465.P17717071311519405793

`A238005(A276289(n)+A083100(n))`
-/

namespace A356465.P17717071311519405793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A276289 n + A083100 n).toNat

end

end A356465.P17717071311519405793

/-! ## A356465.P3377295254377132750

`A265527(A000079(n))-A023189(n+1)`
-/

namespace A356465.P3377295254377132750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A000079 n).toNat - A023189 (n + 1)

end

end A356465.P3377295254377132750

/-! ## A356465.P5410994631094218029

`A003056(A000245(n)*A024895(n+2))`
-/

namespace A356465.P5410994631094218029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000245 n * A024895 (n + 2)).toNat

end

end A356465.P5410994631094218029

/-!
# A356467: Smallest prime congruent to 1 (mod prime(n)) which is the norm of some principal ideal in the ring of prime(n)-th cyclotomic integers.

The programs for A356467, there is no canonical definition to state claims against.
-/

/-! ## A356467.P10126130644246699888

`A035095(A059442(∑[n]))`
-/

namespace A356467.P10126130644246699888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035095 (A059442 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A356467.P10126130644246699888

/-! ## A356467.P18227966831824971172

`A086508(A069458(n+1))`
-/

namespace A356467.P18227966831824971172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (A069458 (n + 1)).toNat

end

end A356467.P18227966831824971172

/-! ## A356467.P8872462964565072893

`A085641(A179692(n+1))`
-/

namespace A356467.P8872462964565072893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085641 (A179692 (n + 1)).toNat

end

end A356467.P8872462964565072893

/-!
# A356469: a(n) = [(n + 1)/(1 - 1/r)] - [n - n/r] where r = sqrt(2) and [] denotes the floor function.

The programs for A356469, there is no canonical definition to state claims against.
-/

/-! ## A356469.P9075465694642601365

`floor((sqrt(2)+1)*(n+1))+ceil(n/sqrt(2))+1`
-/

namespace A356469.P9075465694642601365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌋ + (⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉ + 1)

end

end A356469.P9075465694642601365

/-! ## A356469.P10739260567387622996

`abs(A286923(n+1)-A187328(n))`
-/

namespace A356469.P10739260567387622996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286923 (n + 1) - A187328 n|

end

end A356469.P10739260567387622996

/-! ## A356469.P10036843919621242411

`abs(A286904(Δ[n²])-A187328(n))`
-/

namespace A356469.P10036843919621242411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A187328 n|

end

end A356469.P10036843919621242411

/-! ## A356469.P11435663607448712386

`abs(abs(1-A187338(n+1))-A187328(n))`
-/

namespace A356469.P11435663607448712386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|1 - A187338 (n + 1)| - A187328 n)|

end

end A356469.P11435663607448712386

/-! ## A356469.P11513806310228726457

`(A080754(n+1)+A049474(n))%(8*n+7)`
-/

namespace A356469.P11513806310228726457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080754 (n + 1) + A049474 n) (8 * n + 7 : ℤ)

end

end A356469.P11513806310228726457

/-! ## A356469.P18160907501154539560

`abs(A187328(n)-ceil((A140868(n+1)+3*n+1)/2))`
-/

namespace A356469.P18160907501154539560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187328 n - ⌈(A140868 (n + 1) + (3 * n : ℤ) + 1 : ℚ) / 2⌉|

end

end A356469.P18160907501154539560

/-! ## A356469.P8992479221758035297

`A000027(A080754(n+1)+A049474(n))`
-/

namespace A356469.P8992479221758035297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A080754 (n + 1) + A049474 n).toNat

end

end A356469.P8992479221758035297

/-! ## A356469.P4362795655875569832

`A028310(A080754(n+1)+A049474(n))`
-/

namespace A356469.P4362795655875569832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A080754 (n + 1) + A049474 n).toNat

end

end A356469.P4362795655875569832

/-! ## A356469.P16961387766990921729

`A181440(A080754(n+1)+A049474(n))`
-/

namespace A356469.P16961387766990921729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A080754 (n + 1) + A049474 n).toNat

end

end A356469.P16961387766990921729

/-! ## A356469.P14007478050243851953

`A065475(A285074(n+1)+A049472(2*(n+1)))`
-/

namespace A356469.P14007478050243851953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A285074 (n + 1) + A049472 (2 * (n + 1))).toNat

end

end A356469.P14007478050243851953

/-!
# A356472: Numerator of the average of gcd(i,n) for i = 1..n.

The programs for A356472, the canonical program `A356472.P4075546166562556307` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356472 has offset 1).

The definition of A356472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356472.P4075546166562556307

`lcm(n+1, A018804(n+1))/(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A356472

/-- `lcm(n+1, A018804(n+1))/(n+1)` -/
def P4075546166562556307.Spec : Prop :=
  ∀ n, P4075546166562556307.a n = (A356472 (n + 1) : ℚ)

end A356472

/-! ## A356472.P10551610743325289516

`A018804(n+1)/gcd(A018804(n+1), A131738(n))`
-/

namespace A356472.P10551610743325289516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (Int.gcd (A018804 (n + 1)) (A131738 n) : ℚ)

end

end A356472.P10551610743325289516

namespace A356472

/-- `A018804(n+1)/gcd(A018804(n+1), A131738(n))` -/
def P10551610743325289516.Spec : Prop :=
  ∀ n, P10551610743325289516.a n = (A356472 (n + 1) : ℚ)

end A356472

/-!
# A356473: Denominator of the average of gcd(i,n) for i = 1..n.

The programs for A356473, the canonical program `A356473.P6255297414268024719` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356473 has offset 1).

The definition of A356473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356473.P6255297414268024719

`(n+1)/gcd(n+1, A209295(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A356473

/-- `(n+1)/gcd(n+1, A209295(n+1))` -/
def P6255297414268024719.Spec : Prop :=
  ∀ n, P6255297414268024719.a n = (A356473 (n + 1) : ℚ)

end A356473

/-! ## A356473.P1817449677060922309

`(n+1)/gcd(A018804(n+1), A131738(n))`
-/

namespace A356473.P1817449677060922309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A018804 (n + 1)) (A131738 n) : ℚ)

end

end A356473.P1817449677060922309

namespace A356473

/-- `(n+1)/gcd(A018804(n+1), A131738(n))` -/
def P1817449677060922309.Spec : Prop :=
  ∀ n, P1817449677060922309.a n = (A356473 (n + 1) : ℚ)

end A356473

/-! ## A356473.P10172926860736275690

`lcm(A000027(n+1), A018804(n+1))/A018804(n+1)`
-/

namespace A356473.P10172926860736275690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A018804 (n + 1)) : ℚ) / (A018804 (n + 1) : ℚ)

end

end A356473.P10172926860736275690

namespace A356473

/-- `lcm(A000027(n+1), A018804(n+1))/A018804(n+1)` -/
def P10172926860736275690.Spec : Prop :=
  ∀ n, P10172926860736275690.a n = (A356473 (n + 1) : ℚ)

end A356473

/-! ## A356473.P17886724131783009284

`A083346(n+1)%A336320(A083364(3*n+4))`
-/

namespace A356473.P17886724131783009284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083346 (n + 1)) (A336320 (A083364 (3 * n + 4)).toNat)

end

end A356473.P17886724131783009284

namespace A356473

/-- `A083346(n+1)%A336320(A083364(3*n+4))` -/
def P17886724131783009284.Spec : Prop :=
  ∀ n, P17886724131783009284.a n = A356473 (n + 1)

end A356473

/-! ## A356473.P15457283116434907300

`gcd(n+1, A000217(A244882(n)))`
-/

namespace A356473.P15457283116434907300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000217 (A244882 n).toNat)

end

end A356473.P15457283116434907300

namespace A356473

/-- `gcd(n+1, A000217(A244882(n)))` -/
def P15457283116434907300.Spec : Prop :=
  ∀ n, (P15457283116434907300.a n : ℤ) = A356473 (n + 1)

end A356473

/-!
# A356474: a(n) = phi(rad(prime(n)-1)), where phi = A000010 and rad = A007947.

The programs for A356474, the canonical program `A356474.P13740467552798713999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356474 has offset 1).

The definition of A356474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356474.P13740467552798713999

`∏{p}[A006093(n+1), #-1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A356474

/-- `∏{p}[A006093(n+1), #-1]` -/
def P13740467552798713999.Spec : Prop :=
  ∀ n, P13740467552798713999.a n = A356474 (n + 1)

theorem P13740467552798713999.correct : P13740467552798713999.Spec := by
  intro n
  simp only [A356474, Nat.add_sub_cancel]

end A356474

/-! ## A356474.P17626885162364457203

`∏{p}[A037168(n+1), #-1]`
-/

namespace A356474.P17626885162364457203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A356474.P17626885162364457203

namespace A356474

/-- `∏{p}[A037168(n+1), #-1]` -/
def P17626885162364457203.Spec : Prop :=
  ∀ n, P17626885162364457203.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P4666156680073463533

`∏{p}[A057023(n+1), #-1]`
-/

namespace A356474.P4666156680073463533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A356474.P4666156680073463533

namespace A356474

/-- `∏{p}[A057023(n+1), #-1]` -/
def P4666156680073463533.Spec : Prop :=
  ∀ n, P4666156680073463533.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P10784765331536427451

`∏{p}[A130290(n+1), #-1]`
-/

namespace A356474.P10784765331536427451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A356474.P10784765331536427451

namespace A356474

/-- `∏{p}[A130290(n+1), #-1]` -/
def P10784765331536427451.Spec : Prop :=
  ∀ n, P10784765331536427451.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P3285765799006244049

`A173557(A057023(n+1))`
-/

namespace A356474.P3285765799006244049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A057023 (n + 1)).toNat

end

end A356474.P3285765799006244049

namespace A356474

/-- `A173557(A057023(n+1))` -/
def P3285765799006244049.Spec : Prop :=
  ∀ n, P3285765799006244049.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P7523007611719273037

`A173557(A130290(n+1))`
-/

namespace A356474.P7523007611719273037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A130290 (n + 1)).toNat

end

end A356474.P7523007611719273037

namespace A356474

/-- `A173557(A130290(n+1))` -/
def P7523007611719273037.Spec : Prop :=
  ∀ n, P7523007611719273037.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P12701286606243517528

`A000010(A356489(n+1))`
-/

namespace A356474.P12701286606243517528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A356489 (n + 1)).toNat

end

end A356474.P12701286606243517528

namespace A356474

/-- `A000010(A356489(n+1))` -/
def P12701286606243517528.Spec : Prop :=
  ∀ n, P12701286606243517528.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P11941375790635236552

`A173557(A236965(n+1))`
-/

namespace A356474.P11941375790635236552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A236965 (n + 1)).toNat

end

end A356474.P11941375790635236552

namespace A356474

/-- `A173557(A236965(n+1))` -/
def P11941375790635236552.Spec : Prop :=
  ∀ n, P11941375790635236552.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P14450524881283497456

`∏{p}[sqrt(A005722(n+1)), A000010(#)]`
-/

namespace A356474.P14450524881283497456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 p

end

end A356474.P14450524881283497456

namespace A356474

/-- `∏{p}[sqrt(A005722(n+1)), A000010(#)]` -/
def P14450524881283497456.Spec : Prop :=
  ∀ n, P14450524881283497456.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P5340708179183204087

`A008330(n+1)/A356093(n+1)`
-/

namespace A356474.P5340708179183204087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 1) : ℚ) / (A356093 (n + 1) : ℚ)

end

end A356474.P5340708179183204087

namespace A356474

/-- `A008330(n+1)/A356093(n+1)` -/
def P5340708179183204087.Spec : Prop :=
  ∀ n, P5340708179183204087.a n = (A356474 (n + 1) : ℚ)

end A356474

/-! ## A356474.P5244300906052897770

`∏{p}[A040976(n+1)+1, A000010(#)]`
-/

namespace A356474.P5244300906052897770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A356474.P5244300906052897770

namespace A356474

/-- `∏{p}[A040976(n+1)+1, A000010(#)]` -/
def P5244300906052897770.Spec : Prop :=
  ∀ n, P5244300906052897770.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P15453697635166820736

`∏{p}[1-A000040(n+1), A000010(#)]`
-/

namespace A356474.P15453697635166820736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A356474.P15453697635166820736

namespace A356474

/-- `∏{p}[1-A000040(n+1), A000010(#)]` -/
def P15453697635166820736.Spec : Prop :=
  ∀ n, P15453697635166820736.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P14563232475083769548

`A000010(A275630(n+1)/A077066(n+1))`
-/

namespace A356474.P14563232475083769548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A275630 (n + 1) : ℚ) / (A077066 (n + 1) : ℚ))).toNat

end

end A356474.P14563232475083769548

namespace A356474

/-- `A000010(A275630(n+1)/A077066(n+1))` -/
def P14563232475083769548.Spec : Prop :=
  ∀ n, P14563232475083769548.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P12453292930396770618

`A173557(A275630(n+1)/A077066(n+1))`
-/

namespace A356474.P12453292930396770618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (SequenceMachineLib.roundAway ((A275630 (n + 1) : ℚ) / (A077066 (n + 1) : ℚ))).toNat

end

end A356474.P12453292930396770618

namespace A356474

/-- `A173557(A275630(n+1)/A077066(n+1))` -/
def P12453292930396770618.Spec : Prop :=
  ∀ n, P12453292930396770618.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P9989594633219565295

`A000010(A077063(n+1))`
-/

namespace A356474.P9989594633219565295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A077063 (n + 1)).toNat

end

end A356474.P9989594633219565295

namespace A356474

/-- `A000010(A077063(n+1))` -/
def P9989594633219565295.Spec : Prop :=
  ∀ n, P9989594633219565295.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P9094158695528863989

`∏{p}[record[A000010(2*n+1)], A000010(#)]`
-/

namespace A356474.P9094158695528863989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A356474.P9094158695528863989

namespace A356474

/-- `∏{p}[record[A000010(2*n+1)], A000010(#)]` -/
def P9094158695528863989.Spec : Prop :=
  ∀ n, P9094158695528863989.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P8529963177244840390

`∏{p}[A000010((A000040(n+1)^(1/2))²), A000010(#)]`
-/

namespace A356474.P8529963177244840390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (((A000040 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A356474.P8529963177244840390

namespace A356474

/-- `∏{p}[A000010((A000040(n+1)^(1/2))²), A000010(#)]` -/
def P8529963177244840390.Spec : Prop :=
  ∀ n, P8529963177244840390.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P16643379613207610401

`A173557(2*A356489(n+1))`
-/

namespace A356474.P16643379613207610401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (2 * A356489 (n + 1)).toNat

end

end A356474.P16643379613207610401

namespace A356474

/-- `A173557(2*A356489(n+1))` -/
def P16643379613207610401.Spec : Prop :=
  ∀ n, P16643379613207610401.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P292645950270044713

`A173557(A006093(n+1))`
-/

namespace A356474.P292645950270044713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A006093 (n + 1)).toNat

end

end A356474.P292645950270044713

namespace A356474

/-- `A173557(A006093(n+1))` -/
def P292645950270044713.Spec : Prop :=
  ∀ n, P292645950270044713.a n = A356474 (n + 1)

end A356474

/-! ## A356474.P13474659065654278768

`A173557(A156037(n+1))`
-/

namespace A356474.P13474659065654278768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A156037 (n + 1)).toNat

end

end A356474.P13474659065654278768

namespace A356474

/-- `A173557(A156037(n+1))` -/
def P13474659065654278768.Spec : Prop :=
  ∀ n, P13474659065654278768.a n = A356474 (n + 1)

end A356474

/-!
# A356475: First of three consecutive primes p,q,r such that p*q + q*r + r*p is prime.

The programs for A356475, there is no canonical definition to state claims against.
-/

/-! ## A356475.P17750297306762776541

`A000040(A204231(n+1))`
-/

namespace A356475.P17750297306762776541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204231 (n + 1)).toNat

end

end A356475.P17750297306762776541

/-! ## A356475.P393085611893267133

`A008578(A204231(n+1)+1)`
-/

namespace A356475.P393085611893267133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A204231 (n + 1) + 1).toNat

end

end A356475.P393085611893267133

/-! ## A356475.P14998433448914215627

`A134824(2*(n+1))+A008864(A204231(n+1))`
-/

namespace A356475.P14998433448914215627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 1)) + A008864 (A204231 (n + 1)).toNat

end

end A356475.P14998433448914215627

/-! ## A356475.P11227006488800357401

`eq[A353851(n), A354907(A237287(n+3))]`
-/

namespace A356475.P11227006488800357401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A237287 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356475.P11227006488800357401

/-!
# A356485: a(n) = n! * Sum_{k=1..n} A000010(k)/k.

The programs for A356485, there is no canonical definition to state claims against.
-/

/-! ## A356485.P17960749857276767503

`(n+1)!*∑[A000010(n+1)/(n+1)]`
-/

namespace A356485.P17960749857276767503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356485.P17960749857276767503

/-!
# A356486: a(n) = (n-1)! * Sum_{d|n} d^n / (d-1)!.

The programs for A356486, the canonical program `A356486.P16829243557740311714` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356486 has offset 1).

The definition of A356486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356486.P16829243557740311714

`n!*∑{d}[n+1, #^(n+1)/(#-1)!]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356486

/-- `n!*∑{d}[n+1, #^(n+1)/(#-1)!]` -/
def P16829243557740311714.Spec : Prop :=
  ∀ n, P16829243557740311714.a n = (A356486 (n + 1) : ℚ)

end A356486

/-! ## A356486.P1783716759788325654

`(n+1)!*∑{d}[n+1, #^(n+1)/(#!*(n+1)/#)]`
-/

namespace A356486.P1783716759788325654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (d ^ (n + 1) : ℚ) / ((Nat.factorial d : ℚ) * ((n + 1 : ℚ) / (d : ℚ))))

end

end A356486.P1783716759788325654

namespace A356486

/-- `(n+1)!*∑{d}[n+1, #^(n+1)/(#!*(n+1)/#)]` -/
def P1783716759788325654.Spec : Prop :=
  ∀ n, P1783716759788325654.a n = (A356486 (n + 1) : ℚ)

end A356486

/-!
# A356487: Expansion of e.g.f. Product_{k>0} 1/(1 - (k * x)^k)^(1/k!).

The programs for A356487, there is no canonical definition to state claims against.
-/

/-! ## A356487.P13891923897000337492

`A078198(A326212(n))`
-/

namespace A356487.P13891923897000337492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078198 (A326212 n).toNat

end

end A356487.P13891923897000337492

/-!
# A356489: a(n) = A000265(rad(prime(n)-1)), rad = A007947.

The programs for A356489, the canonical program `A356489.P775976207819050800` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356489 has offset 1).

The definition of A356489 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356489.P775976207819050800

`A000265(A077063(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A356489

/-- `A000265(A077063(n+1))` -/
def P775976207819050800.Spec : Prop :=
  ∀ n, P775976207819050800.a n = A356489 (n + 1)

theorem P775976207819050800.correct : P775976207819050800.Spec := by
  intro n
  simp only [A356489, Nat.add_sub_cancel]

end A356489

/-! ## A356489.P9449534250623415544

`∏{p}[A057023(n+1), #]`
-/

namespace A356489.P9449534250623415544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A356489.P9449534250623415544

namespace A356489

/-- `∏{p}[A057023(n+1), #]` -/
def P9449534250623415544.Spec : Prop :=
  ∀ n, (P9449534250623415544.a n : ℤ) = A356489 (n + 1)

end A356489

/-! ## A356489.P18200749934384756700

`∏{p}[A037168(n+1), #]/2`
-/

namespace A356489.P18200749934384756700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / 2

end

end A356489.P18200749934384756700

namespace A356489

/-- `∏{p}[A037168(n+1), #]/2` -/
def P18200749934384756700.Spec : Prop :=
  ∀ n, P18200749934384756700.a n = (A356489 (n + 1) : ℚ)

end A356489

/-! ## A356489.P5408562167197465746

`A007947(A057023(n+1))`
-/

namespace A356489.P5408562167197465746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A057023 (n + 1)).toNat

end

end A356489.P5408562167197465746

namespace A356489

/-- `A007947(A057023(n+1))` -/
def P5408562167197465746.Spec : Prop :=
  ∀ n, P5408562167197465746.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P12077636686047762697

`A275630(n+1)/A077066(n+1)`
-/

namespace A356489.P12077636686047762697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275630 (n + 1) : ℚ) / (A077066 (n + 1) : ℚ)

end

end A356489.P12077636686047762697

namespace A356489

/-- `A275630(n+1)/A077066(n+1)` -/
def P12077636686047762697.Spec : Prop :=
  ∀ n, P12077636686047762697.a n = (A356489 (n + 1) : ℚ)

end A356489

/-! ## A356489.P6754341351671338594

`A130290(n+1)/A356093(n+1)`
-/

namespace A356489.P6754341351671338594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130290 (n + 1) : ℚ) / (A356093 (n + 1) : ℚ)

end

end A356489.P6754341351671338594

namespace A356489

/-- `A130290(n+1)/A356093(n+1)` -/
def P6754341351671338594.Spec : Prop :=
  ∀ n, P6754341351671338594.a n = (A356489 (n + 1) : ℚ)

end A356489

/-! ## A356489.P6360678554235826624

`gcd(A057023(n+1), A077063(n+1))`
-/

namespace A356489.P6360678554235826624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057023 (n + 1)) (A077063 (n + 1))

end

end A356489.P6360678554235826624

namespace A356489

/-- `gcd(A057023(n+1), A077063(n+1))` -/
def P6360678554235826624.Spec : Prop :=
  ∀ n, (P6360678554235826624.a n : ℤ) = A356489 (n + 1)

end A356489

/-! ## A356489.P10765574908701064222

`A275630(n+1)/gcd(A008864(n+1), A275630(n+1))`
-/

namespace A356489.P10765574908701064222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275630 (n + 1) : ℚ) / (Int.gcd (A008864 (n + 1)) (A275630 (n + 1)) : ℚ)

end

end A356489.P10765574908701064222

namespace A356489

/-- `A275630(n+1)/gcd(A008864(n+1), A275630(n+1))` -/
def P10765574908701064222.Spec : Prop :=
  ∀ n, P10765574908701064222.a n = (A356489 (n + 1) : ℚ)

end A356489

/-! ## A356489.P13433801947625127748

`A000265(∏{p}[record[A000010(n+1)], #])`
-/

namespace A356489.P13433801947625127748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A356489.P13433801947625127748

namespace A356489

/-- `A000265(∏{p}[record[A000010(n+1)], #])` -/
def P13433801947625127748.Spec : Prop :=
  ∀ n, P13433801947625127748.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P9458414978432078103

`A007947(A000265(A006093(n+1)))`
-/

namespace A356489.P9458414978432078103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000265 (A006093 (n + 1)).toNat).toNat

end

end A356489.P9458414978432078103

namespace A356489

/-- `A007947(A000265(A006093(n+1)))` -/
def P9458414978432078103.Spec : Prop :=
  ∀ n, P9458414978432078103.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P7797353661827065955

`∏{p}[A000010(A000040(n+1)), A000265(#)]`
-/

namespace A356489.P7797353661827065955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p

end

end A356489.P7797353661827065955

namespace A356489

/-- `∏{p}[A000010(A000040(n+1)), A000265(#)]` -/
def P7797353661827065955.Spec : Prop :=
  ∀ n, P7797353661827065955.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P16969922603281744917

`A275630(n+1)/A007947(A008864(n+1))`
-/

namespace A356489.P16969922603281744917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275630 (n + 1) : ℚ) / (A007947 (A008864 (n + 1)).toNat : ℚ)

end

end A356489.P16969922603281744917

namespace A356489

/-- `A275630(n+1)/A007947(A008864(n+1))` -/
def P16969922603281744917.Spec : Prop :=
  ∀ n, P16969922603281744917.a n = (A356489 (n + 1) : ℚ)

end A356489

/-! ## A356489.P1091668089407522206

`A204455(A130290(n+1))`
-/

namespace A356489.P1091668089407522206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A130290 (n + 1)).toNat

end

end A356489.P1091668089407522206

namespace A356489

/-- `A204455(A130290(n+1))` -/
def P1091668089407522206.Spec : Prop :=
  ∀ n, P1091668089407522206.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P1498412516111967890

`A204455(A236965(n+1))`
-/

namespace A356489.P1498412516111967890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A236965 (n + 1)).toNat

end

end A356489.P1498412516111967890

namespace A356489

/-- `A204455(A236965(n+1))` -/
def P1498412516111967890.Spec : Prop :=
  ∀ n, P1498412516111967890.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P8607802295155743946

`A204455(A006093(n+1))`
-/

namespace A356489.P8607802295155743946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A006093 (n + 1)).toNat

end

end A356489.P8607802295155743946

namespace A356489

/-- `A204455(A006093(n+1))` -/
def P8607802295155743946.Spec : Prop :=
  ∀ n, P8607802295155743946.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P2294305684945049787

`A226040(A040976(n+1))`
-/

namespace A356489.P2294305684945049787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 (A040976 (n + 1)).toNat

end

end A356489.P2294305684945049787

namespace A356489

/-- `A226040(A040976(n+1))` -/
def P2294305684945049787.Spec : Prop :=
  ∀ n, P2294305684945049787.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P10301780203754979038

`A204455(A156037(n+1))`
-/

namespace A356489.P10301780203754979038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A156037 (n + 1)).toNat

end

end A356489.P10301780203754979038

namespace A356489

/-- `A204455(A156037(n+1))` -/
def P10301780203754979038.Spec : Prop :=
  ∀ n, P10301780203754979038.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P440925491545229930

`A381639(A039915(n+1))`
-/

namespace A356489.P440925491545229930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381639 (A039915 (n + 1)).toNat

end

end A356489.P440925491545229930

namespace A356489

/-- `A381639(A039915(n+1))` -/
def P440925491545229930.Spec : Prop :=
  ∀ n, P440925491545229930.a n = A356489 (n + 1)

end A356489

/-! ## A356489.P3778738685461787027

`A381639(A068499(n+2))`
-/

namespace A356489.P3778738685461787027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381639 (A068499 (n + 2)).toNat

end

end A356489.P3778738685461787027

namespace A356489

/-- `A381639(A068499(n+2))` -/
def P3778738685461787027.Spec : Prop :=
  ∀ n, P3778738685461787027.a n = A356489 (n + 1)

end A356489

/-!
# A356492: a(n) is the determinant of a symmetric Toeplitz matrix M(n) whose first row consists of prime(n), prime(n-1), ..., prime(1).

The programs for A356492, there is no canonical definition to state claims against.
-/

/-! ## A356492.P1219353013764226939

`A131787(A027132(n))`
-/

namespace A356492.P1219353013764226939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131787 (A027132 n).toNat

end

end A356492.P1219353013764226939

/-!
# A356494: Expansion of e.g.f. Product_{k>0} B(k * x^k) where B(x) = exp(exp(x)-1) = e.g.f. of Bell numbers.

The programs for A356494, there is no canonical definition to state claims against.
-/

/-! ## A356494.P14683241241178412845

`A078898(A147706(n+1)*A298539(2*n+1))`
-/

namespace A356494.P14683241241178412845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A147706 (n + 1) * A298539 (2 * n + 1)).toNat

end

end A356494.P14683241241178412845

/-!
# A356495: Expansion of e.g.f. Product_{k>0} B((k * x)^k) where B(x) = exp(exp(x)-1) = e.g.f. of Bell numbers.

The programs for A356495, there is no canonical definition to state claims against.
-/

/-! ## A356495.P13909224590527049655

`A302242(A289314(n))+A080635(2*n)`
-/

namespace A356495.P13909224590527049655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A289314 n).toNat + A080635 (2 * n)

end

end A356495.P13909224590527049655

/-!
# A356497: a(n) = maximal 2^k such that there exists a (2^k)-th root of unity modulo n.

The programs for A356497, there is no canonical definition to state claims against.
-/

/-! ## A356497.P13784050622790678773

`gcd(32, A002322(n+1))`
-/

namespace A356497.P13784050622790678773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A002322 (n + 1))

end

end A356497.P13784050622790678773

/-! ## A356497.P15164376449404151314

`gcd(64, 1-A277127(n+1)+n)`
-/

namespace A356497.P15164376449404151314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 64 (1 - A277127 (n + 1) + (n : ℤ))

end

end A356497.P15164376449404151314

/-! ## A356497.P3188796140089747557

`A006519(A002322(n+1))`
-/

namespace A356497.P3188796140089747557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A002322 (n + 1)).toNat

end

end A356497.P3188796140089747557

/-! ## A356497.P7009433533815796581

`A069177(A219792(n+1)²)`
-/

namespace A356497.P7009433533815796581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (A219792 (n + 1) ^ 2).toNat

end

end A356497.P7009433533815796581

/-! ## A356497.P8910591234582772899

`A006519(A263027(n+1)-1)`
-/

namespace A356497.P8910591234582772899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A263027 (n + 1) - 1).toNat

end

end A356497.P8910591234582772899

/-! ## A356497.P9516619443810054037

`A118824(2*A002322(n+1))`
-/

namespace A356497.P9516619443810054037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * A002322 (n + 1)).toNat

end

end A356497.P9516619443810054037

/-! ## A356497.P6655757286550224383

`A160467(2*A002322(n+1))`
-/

namespace A356497.P6655757286550224383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (2 * A002322 (n + 1)).toNat

end

end A356497.P6655757286550224383

/-! ## A356497.P1340782653061263279

`A228371(2*A002322(n+1))`
-/

namespace A356497.P1340782653061263279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (2 * A002322 (n + 1)).toNat

end

end A356497.P1340782653061263279

/-! ## A356497.P2291919971936691319

`A000079(val(A002322(n+1), 2))`
-/

namespace A356497.P2291919971936691319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A002322 (n + 1)).toNat 2)

end

end A356497.P2291919971936691319

/-! ## A356497.P14295614722462064246

`A011782(val(A002322(n+1), 2)+1)`
-/

namespace A356497.P14295614722462064246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.valuation (A002322 (n + 1)).toNat 2 + 1)

end

end A356497.P14295614722462064246

/-! ## A356497.P14522884049712221246

`A028233(1-A277127(n+1)+n)`
-/

namespace A356497.P14522884049712221246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (1 - A277127 (n + 1) + (n : ℤ)).toNat

end

end A356497.P14522884049712221246

/-! ## A356497.P14243346401793378152

`gcd(A069177(n+1), A104194(n+1))`
-/

namespace A356497.P14243346401793378152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069177 (n + 1)) (A104194 (n + 1))

end

end A356497.P14243346401793378152

/-! ## A356497.P17885817415331692823

`and(1-A277127(n+1)+n, -A002322(n+1))`
-/

namespace A356497.P17885817415331692823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A277127 (n + 1) + (n : ℤ)) (-A002322 (n + 1))

end

end A356497.P17885817415331692823

/-! ## A356497.P3876637192082012031

`A002322(n+1)/A000265(A011773(n+1))`
-/

namespace A356497.P3876637192082012031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A000265 (A011773 (n + 1)).toNat : ℚ)

end

end A356497.P3876637192082012031

/-! ## A356497.P1650814274017227640

`A002322(n+1)/A000265(2*A002322(n+1))`
-/

namespace A356497.P1650814274017227640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A000265 (2 * A002322 (n + 1)).toNat : ℚ)

end

end A356497.P1650814274017227640

/-! ## A356497.P18248768451544522777

`and(A000010(n+1)/A034380(n+1), -A002322(n+1))`
-/

namespace A356497.P18248768451544522777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))) (-A002322 (n + 1))

end

end A356497.P18248768451544522777

/-!
# A356498: Primes p such that 100*p + 11 is also prime.

The programs for A356498, there is no canonical definition to state claims against.
-/

/-! ## A356498.P10791014901955828685

`p?[A101471(n+1)]`
-/

namespace A356498.P10791014901955828685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356498.P10791014901955828685

/-! ## A356498.P697175447927216219

`record[A020639(A101471(n+2))]`
-/

namespace A356498.P697175447927216219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A101471 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356498.P697175447927216219

/-! ## A356498.P6642801830329823959

`filter[A101471(n+2), A010051(#)]`
-/

namespace A356498.P6642801830329823959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A356498.P6642801830329823959

/-! ## A356498.P9374802225629514271

`filter[A101471(n+2), A080339(#)]`
-/

namespace A356498.P9374802225629514271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A356498.P9374802225629514271

/-! ## A356498.P10002079817541755038

`filter[A101471(n+2), A323153(#)]`
-/

namespace A356498.P10002079817541755038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A356498.P10002079817541755038

/-! ## A356498.P12068307918985924430

`∩[A000040(n+1), A101471(n+1)]`
-/

namespace A356498.P12068307918985924430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356498.P12068307918985924430

/-! ## A356498.P2309097682187805599

`∩[A008578(n+1), A101471(n+1)]`
-/

namespace A356498.P2309097682187805599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356498.P2309097682187805599

/-! ## A356498.P7736068070580150278

`∩[A015919(n+1), A101471(n+1)]`
-/

namespace A356498.P7736068070580150278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356498.P7736068070580150278

/-! ## A356498.P2422915132251419318

`∩[A025584(n+1), A101471(n+1)]`
-/

namespace A356498.P2422915132251419318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356498.P2422915132251419318

/-! ## A356498.P5371100013845091067

`∩[A040028(n+1), A101471(n+1)]`
-/

namespace A356498.P5371100013845091067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356498.P5371100013845091067

/-!
# A356499: G.f. A(x) satisfies: x = Product_{n>=1} (1 - x^n*A(x)) * (1 - x^(n-1)/A(x)).

The programs for A356499, there is no canonical definition to state claims against.
-/

/-! ## A356499.P5575740307120166129

`A210380(A000108(n))+A003415(n)`
-/

namespace A356499.P5575740307120166129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A000108 n).toNat + A003415 n

end

end A356499.P5575740307120166129

/-! ## A356499.P16657676580898171411

`A119372(n)+A000120(A326211(n))`
-/

namespace A356499.P16657676580898171411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 n + A000120 (A326211 n).toNat

end

end A356499.P16657676580898171411

