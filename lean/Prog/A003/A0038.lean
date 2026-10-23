import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A003800: Order of universal Chevalley group A_2 (q), q = prime power.

The programs for A003800, the canonical program `A003800.P15621903815965783773` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003800 has offset 1).

The definition of A003800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003800.P306594319784128387

`A329119(n+1)/A352807(n+1)*A373501(n+1)`
-/

namespace A003800.P306594319784128387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) / (A352807 (n + 1) : ℚ) * (A373501 (n + 1) : ℚ)

end

end A003800.P306594319784128387

namespace A003800

/-- `A329119(n+1)/A352807(n+1)*A373501(n+1)` -/
def P306594319784128387.Spec : Prop :=
  ∀ n, P306594319784128387.a n = (A003800 (n + 1) : ℚ)

end A003800

/-! ## A003800.P15621903815965783773

`(A059238(n+1)+A329119(n+1)²)*A246655(n+1)²`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A003800

/-- `(A059238(n+1)+A329119(n+1)²)*A246655(n+1)²` -/
def P15621903815965783773.Spec : Prop :=
  ∀ n, P15621903815965783773.a n = A003800 (n + 1)

theorem P15621903815965783773.correct : P15621903815965783773.Spec := by
  intro n
  simp only [A003800, Nat.add_sub_cancel]

end A003800

/-! ## A003800.P15794893258907538930

`A373501(n+1)/A025474(n+2)`
-/

namespace A003800.P15794893258907538930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373501 (n + 1) : ℚ) / (A025474 (n + 2) : ℚ)

end

end A003800.P15794893258907538930

namespace A003800

/-- `A373501(n+1)/A025474(n+2)` -/
def P15794893258907538930.Spec : Prop :=
  ∀ n, P15794893258907538930.a n = (A003800 (n + 1) : ℚ)

end A003800

/-! ## A003800.P203975450766465598

`A059238(n+1)*A100019(A246655(n+1))`
-/

namespace A003800.P203975450766465598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059238 (n + 1) * A100019 (A246655 (n + 1)).toNat

end

end A003800.P203975450766465598

namespace A003800

/-- `A059238(n+1)*A100019(A246655(n+1))` -/
def P203975450766465598.Spec : Prop :=
  ∀ n, P203975450766465598.a n = A003800 (n + 1)

end A003800

/-!
# A003801: Order of universal Chevalley group A_3 (q) (or D_3 (q)), q = prime power.

The programs for A003801, there is no canonical definition to state claims against.
-/

/-! ## A003801.P2590705071074591241

`A003808(n+1)*A069705(A018045(n+4))`
-/

namespace A003801.P2590705071074591241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003808 (n + 1) * A069705 (A018045 (n + 4)).toNat

end

end A003801.P2590705071074591241

/-!
# A003807: Order of simple Chevalley group A_2(q), q = prime power.

The programs for A003807, there is no canonical definition to state claims against.
-/

/-! ## A003807.P6792022624435912799

`A003800(n+1)/A038500(A025164(n+1))`
-/

namespace A003807.P6792022624435912799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003800 (n + 1) : ℚ) / (A038500 (A025164 (n + 1)).toNat : ℚ)

end

end A003807.P6792022624435912799

/-!
# A003814: Numbers k such that the continued fraction for sqrt(k) has odd period length.

The programs for A003814, there is no canonical definition to state claims against.
-/

/-! ## A003814.P1246472943003099768

`∪[A003654(n+1), A031397(n+1)]`
-/

namespace A003814.P1246472943003099768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003814.P1246472943003099768

/-! ## A003814.P10751931050182799431

`∪[A002313(n+1), A137351(n+1)]`
-/

namespace A003814.P10751931050182799431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003814.P10751931050182799431

/-! ## A003814.P7611705453508577180

`∪[A003654(n+1), A137351(n+1)]`
-/

namespace A003814.P7611705453508577180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003814.P7611705453508577180

/-! ## A003814.P17946052690570347883

`A031396(n+2)`
-/

namespace A003814.P17946052690570347883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

end

end A003814.P17946052690570347883

/-! ## A003814.P6958027663309927165

`record[A031396(A008619(A133265(n)))]`
-/

namespace A003814.P6958027663309927165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003814.P6958027663309927165

/-! ## A003814.P1910492086851222309

`record[A031396(A008619(A145064(n)))]`
-/

namespace A003814.P1910492086851222309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (A008619 (A145064 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003814.P1910492086851222309

/-! ## A003814.P15189738396383572611

`filter[n+1, A068716(#)]`
-/

namespace A003814.P15189738396383572611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068716 (f1 j) = 1) n)

end

end A003814.P15189738396383572611

/-! ## A003814.P6457143633976160155

`eq[1, A068716(n+1)]+1`
-/

namespace A003814.P6457143633976160155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003814.P6457143633976160155

/-! ## A003814.P14662362733509722824

`record[(n+2)*A068716(n+2)]`
-/

namespace A003814.P14662362733509722824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A068716 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003814.P14662362733509722824

/-! ## A003814.P6181154966576562810

`eq[1, A068716(A028310(n))]`
-/

namespace A003814.P6181154966576562810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003814.P6181154966576562810

/-! ## A003814.P17122368541881488703

`eq[1, A068716(A000122(n)+n)]`
-/

namespace A003814.P17122368541881488703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A000122 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003814.P17122368541881488703

/-! ## A003814.P5146155552877496584

`eq[1, A000035(A003285(n+1))]+1`
-/

namespace A003814.P5146155552877496584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003814.P5146155552877496584

/-! ## A003814.P17533939557379500817

`lt[A068716(n+2), A068716(A028310(n))]`
-/

namespace A003814.P17533939557379500817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003814.P17533939557379500817

/-! ## A003814.P9180313276257668442

`record[A031396(A126759(A126759(n)))]`
-/

namespace A003814.P9180313276257668442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (A126759 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003814.P9180313276257668442

/-! ## A003814.P488892008004931695

`eq[1, A068716(A065033(2*n))]`
-/

namespace A003814.P488892008004931695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003814.P488892008004931695

/-! ## A003814.P10136114103340930040

`eq[1, A068716(A123108(2*n))]`
-/

namespace A003814.P10136114103340930040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003814.P10136114103340930040

/-! ## A003814.P3390307125721559472

`lt[A341862(n), 2*A002349(A028310(n))]`
-/

namespace A003814.P3390307125721559472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002349 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003814.P3390307125721559472

/-!
# A003815: a(0) = 0, a(n) = a(n-1) XOR n.

The programs for A003815, the canonical program `A003815.P10722096911976618357` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003815 has offset 0).

The definition of A003815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003815.P10722096911976618357

`n+(-1)^n*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003815

/-- `n+(-1)^n*a(n-1)` -/
def P10722096911976618357.Spec : Prop :=
  ∀ n, P10722096911976618357.a n = A003815 n

theorem P10722096911976618357.correct : P10722096911976618357.Spec := by
  intro n
  simp only [A003815]

end A003815

/-! ## A003815.P4694893942769315448

`(1+n+n*(-1)^n+(-1)^floor((n-1)/2))/2`
-/

namespace A003815.P4694893942769315448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((1 + n : ℤ) + (n : ℤ) * (-1) ^ n : ℚ) + (-1 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ)) / 2

end

end A003815.P4694893942769315448

namespace A003815

/-- `(1+n+n*(-1)^n+(-1)^floor((n-1)/2))/2` -/
def P4694893942769315448.Spec : Prop :=
  ∀ n, P4694893942769315448.a n = (A003815 n : ℚ)

end A003815

/-! ## A003815.P11739409935581371703

`xor(a(n-1), n)` with `a(0)=0`
-/

namespace A003815.P11739409935581371703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) n

end

end A003815.P11739409935581371703

namespace A003815

/-- `xor(a(n-1), n)` -/
def P11739409935581371703.Spec : Prop :=
  ∀ n, (P11739409935581371703.a n : ℤ) = A003815 n

end A003815

/-! ## A003815.P1275846158627000136

`∑[gcd(4, n)]%(gcd(4, n)+n)`
-/

namespace A003815.P1275846158627000136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (Nat.gcd 4 n + n)

end

end A003815.P1275846158627000136

namespace A003815

/-- `∑[gcd(4, n)]%(gcd(4, n)+n)` -/
def P1275846158627000136.Spec : Prop :=
  ∀ n, (P1275846158627000136.a n : ℤ) = A003815 n

end A003815

/-! ## A003815.P12643604440600089778

`n%or(1, n)+∑[n]%2`
-/

namespace A003815.P12643604440600089778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n + (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A003815.P12643604440600089778

namespace A003815

/-- `n%or(1, n)+∑[n]%2` -/
def P12643604440600089778.Spec : Prop :=
  ∀ n, (P12643604440600089778.a n : ℤ) = A003815 n

end A003815

/-! ## A003815.P3941826066330644439

`(-1)^n*a(n-1)+n` with `a(0)=0`
-/

namespace A003815.P3941826066330644439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ n * a (n - 1) + (n : ℤ)

end

end A003815.P3941826066330644439

namespace A003815

/-- `(-1)^n*a(n-1)+n` -/
def P3941826066330644439.Spec : Prop :=
  ∀ n, P3941826066330644439.a n = A003815 n

end A003815

/-! ## A003815.P4507952060988329190

`a(n-1)/(-1)^n+n` with `a(0)=0`
-/

namespace A003815.P4507952060988329190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((-1) ^ n : ℚ) + (n : ℚ)

end

end A003815.P4507952060988329190

namespace A003815

/-- `a(n-1)/(-1)^n+n` -/
def P4507952060988329190.Spec : Prop :=
  ∀ n, P4507952060988329190.a n = (A003815 n : ℚ)

end A003815

/-! ## A003815.P6589715363323700077

`(a(n-1)²+n)%(2*n)` with `a(0)=0`
-/

namespace A003815.P6589715363323700077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) ^ 2 + n) % (2 * n)

end

end A003815.P6589715363323700077

namespace A003815

/-- `(a(n-1)²+n)%(2*n)` -/
def P6589715363323700077.Spec : Prop :=
  ∀ n, (P6589715363323700077.a n : ℤ) = A003815 n

end A003815

/-! ## A003815.P2065451544114231627

`n+3-or(2, a(n-1)+1)` with `a(0)=0`
-/

namespace A003815.P2065451544114231627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 3 : ℤ) - Int.lor 2 (a (n - 1) + 1)

end

end A003815.P2065451544114231627

namespace A003815

/-- `n+3-or(2, a(n-1)+1)` -/
def P2065451544114231627.Spec : Prop :=
  ∀ n, P2065451544114231627.a n = A003815 n

end A003815

/-! ## A003815.P13112974873606397754

`n-a(n-1)/(-1)^(1-n)` with `a(0)=0`
-/

namespace A003815.P13112974873606397754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) - a (n - 1) / (-1 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A003815.P13112974873606397754

namespace A003815

/-- `n-a(n-1)/(-1)^(1-n)` -/
def P13112974873606397754.Spec : Prop :=
  ∀ n, P13112974873606397754.a n = (A003815 n : ℚ)

end A003815

/-! ## A003815.P5365915590912954308

`(a(n-1)+n)%(n+1-a(n-1))²` with `a(0)=0`
-/

namespace A003815.P5365915590912954308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (((n + 1 : ℤ) - a (n - 1)) ^ 2)

end

end A003815.P5365915590912954308

namespace A003815

/-- `(a(n-1)+n)%(n+1-a(n-1))²` -/
def P5365915590912954308.Spec : Prop :=
  ∀ n, P5365915590912954308.a n = A003815 n

end A003815

/-! ## A003815.P12322323412961487822

`and(a(n-1)²+n, n+2-a(n-1))` with `a(0)=0`
-/

namespace A003815.P12322323412961487822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (a (n - 1) ^ 2 + (n : ℤ)) ((n + 2 : ℤ) - a (n - 1))

end

end A003815.P12322323412961487822

namespace A003815

/-- `and(a(n-1)²+n, n+2-a(n-1))` -/
def P12322323412961487822.Spec : Prop :=
  ∀ n, P12322323412961487822.a n = A003815 n

end A003815

/-! ## A003815.P1780965129555277596

`n-(a(n-1)-2*(a(n-1)%n)%2)` with `a(0)=0`
-/

namespace A003815.P1780965129555277596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (a (n - 1) - 2 * Int.tmod (Int.tmod (a (n - 1)) (n : ℤ)) 2)

end

end A003815.P1780965129555277596

namespace A003815

/-- `n-(a(n-1)-2*(a(n-1)%n)%2)` -/
def P1780965129555277596.Spec : Prop :=
  ∀ n, P1780965129555277596.a n = A003815 n

end A003815

/-! ## A003815.P15779104309977675774

`floor(floor(1/(2-a(n-1)))*a(n-1)+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A003815.P15779104309977675774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊1 / (2 - a (n - 1) : ℚ)⌋ * a (n - 1) + (n : ℤ)

end

end A003815.P15779104309977675774

namespace A003815

/-- `floor(floor(1/(2-a(n-1)))*a(n-1)+n)` -/
def P15779104309977675774.Spec : Prop :=
  ∀ n, P15779104309977675774.a n = A003815 n

end A003815

/-! ## A003815.P7205841631796957029

`n+1-(a(n-1)+((-1)^(n+1))^a(n-1))` with `a(0)=0`
-/

namespace A003815.P7205841631796957029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℝ) - (a (n - 1) + ((-1) ^ (n + 1) : ℝ) ^ (a (n - 1)))

end

end A003815.P7205841631796957029

namespace A003815

/-- `n+1-(a(n-1)+((-1)^(n+1))^a(n-1))` -/
def P7205841631796957029.Spec : Prop :=
  ∀ n, P7205841631796957029.a n = (A003815 n : ℝ)

end A003815

/-! ## A003815.P18133388206819327227

`abs(A267314(n)/2)`
-/

namespace A003815.P18133388206819327227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A267314 n : ℚ) / 2|

end

end A003815.P18133388206819327227

namespace A003815

/-- `abs(A267314(n)/2)` -/
def P18133388206819327227.Spec : Prop :=
  ∀ n, P18133388206819327227.a n = (A003815 n : ℚ)

end A003815

/-! ## A003815.P15975415711692298431

`abs(∑[n*A087960(n)])`
-/

namespace A003815.P15975415711692298431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A003815.P15975415711692298431

namespace A003815

/-- `abs(∑[n*A087960(n)])` -/
def P15975415711692298431.Spec : Prop :=
  ∀ n, P15975415711692298431.a n = A003815 n

end A003815

/-! ## A003815.P4777817683729017867

`a(n-1)*A008683(gcd(n+1, n-1))+n` with `a(0)=0`
-/

namespace A003815.P4777817683729017867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A008683 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) + (n : ℤ)

end

end A003815.P4777817683729017867

namespace A003815

/-- `a(n-1)*A008683(gcd(n+1, n-1))+n` -/
def P4777817683729017867.Spec : Prop :=
  ∀ n, P4777817683729017867.a n = A003815 n

end A003815

/-! ## A003815.P3836791604058184432

`n-1+A000045(gcd(n+2, n-2))-a(n-1)` with `a(0)=0`
-/

namespace A003815.P3836791604058184432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 + (A000045 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 2)) - a (n - 1))

end

end A003815.P3836791604058184432

namespace A003815

/-- `n-1+A000045(gcd(n+2, n-2))-a(n-1)` -/
def P3836791604058184432.Spec : Prop :=
  ∀ n, P3836791604058184432.a n = A003815 n

end A003815

/-! ## A003815.P2083781995871672986

`A080513(n)-A186422(n)`
-/

namespace A003815.P2083781995871672986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A186422 n

end

end A003815.P2083781995871672986

namespace A003815

/-- `A080513(n)-A186422(n)` -/
def P2083781995871672986.Spec : Prop :=
  ∀ n, P2083781995871672986.a n = A003815 n

end A003815

/-!
# A003816: a(0) = 0, a(n) = a(n-1) XOR -n.

The programs for A003816, the canonical program `A003816.P97505148977051225` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003816 has offset 0).

The definition of A003816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003816.P97505148977051225

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=4, a(4)=0, a(5)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003816

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P97505148977051225.Spec : Prop :=
  ∀ n, P97505148977051225.a n = A003816 n

theorem P97505148977051225.correct : P97505148977051225.Spec := by
  intro n
  simp only [A003816]

end A003816

/-! ## A003816.P8306664010739181942

`(n-(n+1)*(-1)^n+(-1)^((2*n+1-(-1)^n)/4))/2`
-/

namespace A003816.P8306664010739181942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (n + 1 : ℤ) * (-1) ^ n : ℝ) + (-1 : ℝ) ^ (((2 * n + 1 : ℤ) - (-1) ^ n : ℚ) / 4 : ℝ)) / 2

end

end A003816.P8306664010739181942

namespace A003816

/-- `(n-(n+1)*(-1)^n+(-1)^((2*n+1-(-1)^n)/4))/2` -/
def P8306664010739181942.Spec : Prop :=
  ∀ n, P8306664010739181942.a n = (A003816 n : ℝ)

end A003816

/-! ## A003816.P5106787582710060823

`-xor(-a(n-1), -n)` with `a(0)=0`
-/

namespace A003816.P5106787582710060823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor (-a (n - 1)) (-(n : ℤ))

end

end A003816.P5106787582710060823

namespace A003816

/-- `-xor(-a(n-1), -n)` -/
def P5106787582710060823.Spec : Prop :=
  ∀ n, P5106787582710060823.a n = A003816 n

end A003816

/-! ## A003816.P12919522955107070619

`lcm(2, n)-xor(n, char[or(2, n)])`
-/

namespace A003816.P12919522955107070619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - (Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A003816.P12919522955107070619

namespace A003816

/-- `lcm(2, n)-xor(n, char[or(2, n)])` -/
def P12919522955107070619.Spec : Prop :=
  ∀ n, P12919522955107070619.a n = A003816 n

end A003816

/-! ## A003816.P5140818921265135672

`or(2, n)-or(2, a(n-1))` with `a(0)=0`
-/

namespace A003816.P5140818921265135672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lor 2 n : ℤ) - Int.lor 2 (a (n - 1))

end

end A003816.P5140818921265135672

namespace A003816

/-- `or(2, n)-or(2, a(n-1))` -/
def P5140818921265135672.Spec : Prop :=
  ∀ n, P5140818921265135672.a n = A003816 n

end A003816

/-! ## A003816.P3134411106537795311

`and(-3, -a(n-1))+n` with `a(0)=0`
-/

namespace A003816.P3134411106537795311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (-3) (-a (n - 1)) + (n : ℤ)

end

end A003816.P3134411106537795311

namespace A003816

/-- `and(-3, -a(n-1))+n` -/
def P3134411106537795311.Spec : Prop :=
  ∀ n, P3134411106537795311.a n = A003816 n

end A003816

/-! ## A003816.P10143766472690111457

`(a(n-1)-n)*(-1)^n` with `a(0)=0`
-/

namespace A003816.P10143766472690111457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - (n : ℤ)) * (-1) ^ n

end

end A003816.P10143766472690111457

namespace A003816

/-- `(a(n-1)-n)*(-1)^n` -/
def P10143766472690111457.Spec : Prop :=
  ∀ n, P10143766472690111457.a n = A003816 n

end A003816

/-! ## A003816.P257337827022942620

`-(a(n-1)-n)^gcd(2, n)` with `a(0)=0`
-/

namespace A003816.P257337827022942620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -((a (n - 1) - (n : ℤ)) ^ Nat.gcd 2 n)

end

end A003816.P257337827022942620

namespace A003816

/-- `-(a(n-1)-n)^gcd(2, n)` -/
def P257337827022942620.Spec : Prop :=
  ∀ n, P257337827022942620.a n = A003816 n

end A003816

/-! ## A003816.P6130033744793162484

`(n+1)*n%2-∑[n]%2`
-/

namespace A003816.P6130033744793162484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n % 2) : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A003816.P6130033744793162484

namespace A003816

/-- `(n+1)*n%2-∑[n]%2` -/
def P6130033744793162484.Spec : Prop :=
  ∀ n, P6130033744793162484.a n = A003816 n

end A003816

/-! ## A003816.P6202907116298184972

`(n+1)*and(1, n)-and(1, ∑[n])`
-/

namespace A003816.P6202907116298184972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.land 1 n : ℤ) - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A003816.P6202907116298184972

namespace A003816

/-- `(n+1)*and(1, n)-and(1, ∑[n])` -/
def P6202907116298184972.Spec : Prop :=
  ∀ n, P6202907116298184972.a n = A003816 n

end A003816

/-! ## A003816.P4348381497617837697

`n+2-xor(n+2, n-a(n-1))` with `a(0)=0`
-/

namespace A003816.P4348381497617837697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 2 : ℤ) - Int.xor (n + 2 : ℤ) ((n : ℤ) - a (n - 1))

end

end A003816.P4348381497617837697

namespace A003816

/-- `n+2-xor(n+2, n-a(n-1))` -/
def P4348381497617837697.Spec : Prop :=
  ∀ n, P4348381497617837697.a n = A003816 n

end A003816

/-! ## A003816.P16231834193919146111

`∑[n]-A250108(n+1)`
-/

namespace A003816.P16231834193919146111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A250108 (n + 1)

end

end A003816.P16231834193919146111

namespace A003816

/-- `∑[n]-A250108(n+1)` -/
def P16231834193919146111.Spec : Prop :=
  ∀ n, P16231834193919146111.a n = A003816 n

end A003816

/-! ## A003816.P10364471966137156608

`(n-a(n-1))*A062157(n)` with `a(0)=0`
-/

namespace A003816.P10364471966137156608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - a (n - 1)) * A062157 n

end

end A003816.P10364471966137156608

namespace A003816

/-- `(n-a(n-1))*A062157(n)` -/
def P10364471966137156608.Spec : Prop :=
  ∀ n, P10364471966137156608.a n = A003816 n

end A003816

/-! ## A003816.P5111040355576541982

`(n-a(n-1))*A131729(n)` with `a(0)=0`
-/

namespace A003816.P5111040355576541982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - a (n - 1)) * A131729 n

end

end A003816.P5111040355576541982

namespace A003816

/-- `(n-a(n-1))*A131729(n)` -/
def P5111040355576541982.Spec : Prop :=
  ∀ n, P5111040355576541982.a n = A003816 n

end A003816

/-! ## A003816.P458299251052676465

`n+1-(A000045(gcd(n+2, n-2))+a(n-1))` with `a(0)=0`
-/

namespace A003816.P458299251052676465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) - (A000045 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 2)) + a (n - 1))

end

end A003816.P458299251052676465

namespace A003816

/-- `n+1-(A000045(gcd(n+2, n-2))+a(n-1))` -/
def P458299251052676465.Spec : Prop :=
  ∀ n, P458299251052676465.a n = A003816 n

end A003816

/-! ## A003816.P5962357969788641752

`A014682(n)-A285869(n)`
-/

namespace A003816.P5962357969788641752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n - A285869 n

end

end A003816.P5962357969788641752

namespace A003816

/-- `A014682(n)-A285869(n)` -/
def P5962357969788641752.Spec : Prop :=
  ∀ n, P5962357969788641752.a n = A003816 n

end A003816

/-! ## A003816.P16600602512712986144

`A330602(n)-A007877(n)`
-/

namespace A003816.P16600602512712986144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330602 n - A007877 n

end

end A003816.P16600602512712986144

namespace A003816

/-- `A330602(n)-A007877(n)` -/
def P16600602512712986144.Spec : Prop :=
  ∀ n, P16600602512712986144.a n = A003816 n

end A003816

/-! ## A003816.P10670682809384995031

`A087960(n)*A309215(n)`
-/

namespace A003816.P10670682809384995031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A309215 n

end

end A003816.P10670682809384995031

namespace A003816

/-- `A087960(n)*A309215(n)` -/
def P10670682809384995031.Spec : Prop :=
  ∀ n, P10670682809384995031.a n = A003816 n

end A003816

/-! ## A003816.P216526198810228311

`A047532(n+1)-A022998(n)`
-/

namespace A003816.P216526198810228311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047532 (n + 1) - A022998 n

end

end A003816.P216526198810228311

namespace A003816

/-- `A047532(n+1)-A022998(n)` -/
def P216526198810228311.Spec : Prop :=
  ∀ n, P216526198810228311.a n = A003816 n

end A003816

/-! ## A003816.P6420618971978533018

`A047269(n+1)-A071045(n)`
-/

namespace A003816.P6420618971978533018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047269 (n + 1) - A071045 n

end

end A003816.P6420618971978533018

namespace A003816

/-- `A047269(n+1)-A071045(n)` -/
def P6420618971978533018.Spec : Prop :=
  ∀ n, P6420618971978533018.a n = A003816 n

end A003816

/-!
# A003817: a(0) = 0, a(n) = a(n-1) OR n.

The programs for A003817, the canonical program `A003817.P16251594020616633079` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003817 has offset 0).

The definition of A003817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003817.P3029475595715754955

`or(a(n-1), n)` with `a(0)=0`
-/

namespace A003817.P3029475595715754955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (a (n - 1)) n

end

end A003817.P3029475595715754955

namespace A003817

/-- `or(a(n-1), n)` -/
def P3029475595715754955.Spec : Prop :=
  ∀ n, (P3029475595715754955.a n : ℤ) = A003817 n

end A003817

/-! ## A003817.P16251594020616633079

`1+2*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003817

/-- `1+2*a(floor(n/2))` -/
def P16251594020616633079.Spec : Prop :=
  ∀ n, (P16251594020616633079.a n : ℤ) = A003817 n

theorem P16251594020616633079.correct : P16251594020616633079.Spec := by
  intro n
  simp only [A003817]

end A003817

/-! ## A003817.P15407302156861848305

`A062383(n)-1`
-/

namespace A003817.P15407302156861848305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - 1

end

end A003817.P15407302156861848305

namespace A003817

/-- `A062383(n)-1` -/
def P15407302156861848305.Spec : Prop :=
  ∀ n, P15407302156861848305.a n = A003817 n

end A003817

/-! ## A003817.P8742201567001080615

`∑[n*char[2^n]]`
-/

namespace A003817.P8742201567001080615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003817.P8742201567001080615

namespace A003817

/-- `∑[n*char[2^n]]` -/
def P8742201567001080615.Spec : Prop :=
  ∀ n, (P8742201567001080615.a n : ℤ) = A003817 n

end A003817

/-! ## A003817.P14648371057645094118

`or(n, a(floor(n/2)))` with `a(0)=0`
-/

namespace A003817.P14648371057645094118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor n (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A003817.P14648371057645094118

namespace A003817

/-- `or(n, a(floor(n/2)))` -/
def P14648371057645094118.Spec : Prop :=
  ∀ n, (P14648371057645094118.a n : ℤ) = A003817 n

end A003817

/-! ## A003817.P8766578382821246204

`a(n-1)%n+n` with `a(0)=0`
-/

namespace A003817.P8766578382821246204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) % n + n

end

end A003817.P8766578382821246204

namespace A003817

/-- `a(n-1)%n+n` -/
def P8766578382821246204.Spec : Prop :=
  ∀ n, (P8766578382821246204.a n : ℤ) = A003817 n

end A003817

/-! ## A003817.P8978544750313334983

`xor(1, 2*a(floor(n/2)))` with `a(0)=0`
-/

namespace A003817.P8978544750313334983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (2 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A003817.P8978544750313334983

namespace A003817

/-- `xor(1, 2*a(floor(n/2)))` -/
def P8978544750313334983.Spec : Prop :=
  ∀ n, (P8978544750313334983.a n : ℤ) = A003817 n

end A003817

/-! ## A003817.P6063758261803275861

`n--a(n-1)%n` with `a(0)=0`
-/

namespace A003817.P6063758261803275861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod (-a (n - 1)) (n : ℤ)

end

end A003817.P6063758261803275861

namespace A003817

/-- `n--a(n-1)%n` -/
def P6063758261803275861.Spec : Prop :=
  ∀ n, P6063758261803275861.a n = A003817 n

end A003817

/-! ## A003817.P10884001385880825290

`and(-(n+1), a(n-1))+n` with `a(0)=0`
-/

namespace A003817.P10884001385880825290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (-(n + 1 : ℤ)) (a (n - 1)) + (n : ℤ)

end

end A003817.P10884001385880825290

namespace A003817

/-- `and(-(n+1), a(n-1))+n` -/
def P10884001385880825290.Spec : Prop :=
  ∀ n, P10884001385880825290.a n = A003817 n

end A003817

/-! ## A003817.P8071459377207410187

`and(2*n, -a(n-1))-1` with `a(0)=0, a(1)=1`
-/

namespace A003817.P8071459377207410187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (2 * n : ℤ) (-a (n - 1)) - 1

end

end A003817.P8071459377207410187

namespace A003817

/-- `and(2*n, -a(n-1))-1` -/
def P8071459377207410187.Spec : Prop :=
  ∀ n, P8071459377207410187.a n = A003817 n

end A003817

/-! ## A003817.P2126874992902414966

`n-floor(1/2-a(n-1))%n` with `a(0)=0`
-/

namespace A003817.P2126874992902414966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod ⌊(1 : ℚ) / 2 - (a (n - 1) : ℚ)⌋ (n : ℤ)

end

end A003817.P2126874992902414966

namespace A003817

/-- `n-floor(1/2-a(n-1))%n` -/
def P2126874992902414966.Spec : Prop :=
  ∀ n, P2126874992902414966.a n = A003817 n

end A003817

/-! ## A003817.P3049375111267043987

`a(n-1)+and(n, a(n-1)+1)` with `a(0)=0`
-/

namespace A003817.P3049375111267043987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.land n (a (n - 1) + 1)

end

end A003817.P3049375111267043987

namespace A003817

/-- `a(n-1)+and(n, a(n-1)+1)` -/
def P3049375111267043987.Spec : Prop :=
  ∀ n, (P3049375111267043987.a n : ℤ) = A003817 n

end A003817

/-! ## A003817.P7906791439188347063

`2*n-and(a(n-1), Δ[n²])` with `a(0)=0, a(1)=1`
-/

namespace A003817.P7906791439188347063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - Int.land (a (n - 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A003817.P7906791439188347063

namespace A003817

/-- `2*n-and(a(n-1), Δ[n²])` -/
def P7906791439188347063.Spec : Prop :=
  ∀ n, P7906791439188347063.a n = A003817 n

end A003817

/-! ## A003817.P17229523308487540320

`2*n-(n-floor(a(n-1))%n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A003817.P17229523308487540320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - Int.tmod (a (n - 1)) (n : ℤ))

end

end A003817.P17229523308487540320

namespace A003817

/-- `2*n-(n-floor(a(n-1))%n)` -/
def P17229523308487540320.Spec : Prop :=
  ∀ n, P17229523308487540320.a n = A003817 n

end A003817

/-! ## A003817.P15754543785019742406

`a(n-1)-(and(n, a(n-1))-n)` with `a(0)=0`
-/

namespace A003817.P15754543785019742406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (Int.land (n : ℤ) (a (n - 1)) - (n : ℤ))

end

end A003817.P15754543785019742406

namespace A003817

/-- `a(n-1)-(and(n, a(n-1))-n)` -/
def P15754543785019742406.Spec : Prop :=
  ∀ n, P15754543785019742406.a n = A003817 n

end A003817

/-! ## A003817.P11140377274502118546

`n-(floor(n-a(n-1))-n)%n` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A003817.P11140377274502118546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod ((n : ℤ) - a (n - 1) - (n : ℤ)) (n : ℤ)

end

end A003817.P11140377274502118546

namespace A003817

/-- `n-(floor(n-a(n-1))-n)%n` -/
def P11140377274502118546.Spec : Prop :=
  ∀ n, P11140377274502118546.a n = A003817 n

end A003817

/-! ## A003817.P10497579382442736848

`n-((1-a(n-1))%n-1)%n` with `a(0)=0`
-/

namespace A003817.P10497579382442736848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod (Int.tmod (1 - a (n - 1)) (n : ℤ) - 1) (n : ℤ)

end

end A003817.P10497579382442736848

namespace A003817

/-- `n-((1-a(n-1))%n-1)%n` -/
def P10497579382442736848.Spec : Prop :=
  ∀ n, P10497579382442736848.a n = A003817 n

end A003817

/-! ## A003817.P16033722443774805673

`lt[xor(n+1, 2*n), 2*n]-(n+1)`
-/

namespace A003817.P16033722443774805673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A003817.P16033722443774805673

namespace A003817

/-- `lt[xor(n+1, 2*n), 2*n]-(n+1)` -/
def P16033722443774805673.Spec : Prop :=
  ∀ n, P16033722443774805673.a n = A003817 n

end A003817

/-! ## A003817.P18386053569506021929

`a(n-1)+n*C(n-1, a(n-1))` with `a(0)=0`
-/

namespace A003817.P18386053569506021929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * Nat.choose ((n : ℤ) - 1).toNat (a (n - 1))

end

end A003817.P18386053569506021929

namespace A003817

/-- `a(n-1)+n*C(n-1, a(n-1))` -/
def P18386053569506021929.Spec : Prop :=
  ∀ n, (P18386053569506021929.a n : ℤ) = A003817 n

end A003817

/-! ## A003817.P10309285477384154032

`a(n-1)-n*(floor(a(n-1)/n)-1)` with `a(0)=0`
-/

namespace A003817.P10309285477384154032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) * (⌊(a (n - 1) : ℚ) / (n : ℚ)⌋ - 1)

end

end A003817.P10309285477384154032

namespace A003817

/-- `a(n-1)-n*(floor(a(n-1)/n)-1)` -/
def P10309285477384154032.Spec : Prop :=
  ∀ n, P10309285477384154032.a n = A003817 n

end A003817

/-!
# A003818: a(1)=a(2)=1, a(n+1) = (a(n)^3 +1)/a(n-1).

The programs for A003818, the canonical program `A003818.P14280460731896252362` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003818 has offset 1).

The definition of A003818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003818.P14280460731896252362

`(1+a(n-1)^3)/a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003818

/-- `(1+a(n-1)^3)/a(n-2)` -/
def P14280460731896252362.Spec : Prop :=
  ∀ n, P14280460731896252362.a n = (A003818 (n + 1) : ℚ)

end A003818

/-! ## A003818.P1004487145887072209

`(a(n-1)²*a(n-1)+1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003818.P1004487145887072209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 2 * a (n - 1) + 1) / a (n - 2)

end

end A003818.P1004487145887072209

namespace A003818

/-- `(a(n-1)²*a(n-1)+1)/a(n-2)` -/
def P1004487145887072209.Spec : Prop :=
  ∀ n, P1004487145887072209.a n = (A003818 (n + 1) : ℚ)

end A003818

/-! ## A003818.P8340203438698445692

`(a(n-1)*a(n-1)*a(n-1)+1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003818.P8340203438698445692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) * a (n - 1) * a (n - 1) + 1) / a (n - 2)

end

end A003818.P8340203438698445692

namespace A003818

/-- `(a(n-1)*a(n-1)*a(n-1)+1)/a(n-2)` -/
def P8340203438698445692.Spec : Prop :=
  ∀ n, P8340203438698445692.a n = (A003818 (n + 1) : ℚ)

end A003818

/-!
# A003819: a(1)=a(2)=1, a(n+1) = (a(n)^4 +1)/a(n-1).

The programs for A003819, there is no canonical definition to state claims against.
-/

/-! ## A003819.P17406108129620336692

`(a(n-1)^4+1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003819.P17406108129620336692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 4 + 1) / a (n - 2)

end

end A003819.P17406108129620336692

/-! ## A003819.P18144974721105242469

`(a(n-1)²²+1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003819.P18144974721105242469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((a (n - 1) ^ 2) ^ 2 + 1) / a (n - 2)

end

end A003819.P18144974721105242469

/-!
# A003820: a(1)=a(2)=1, a(n+1) = (a(n)^5 +1)/a(n-1).

The programs for A003820, there is no canonical definition to state claims against.
-/

/-! ## A003820.P896082071957917670

`(a(n-1)^5+1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003820.P896082071957917670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 5 + 1) / a (n - 2)

end

end A003820.P896082071957917670

/-!
# A003821: a(1)=a(2)=1, a(n+1) = (a(n)^6 +1)/a(n-1).

The programs for A003821, there is no canonical definition to state claims against.
-/

/-! ## A003821.P15727537005492023195

`(a(n-1)^6+1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003821.P15727537005492023195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 6 + 1) / a (n - 2)

end

end A003821.P15727537005492023195

/-!
# A003823: Power series expansion of the Rogers-Ramanujan continued fraction 1+x/(1+x^2/(1+x^3/(1+x^4/(1+...)))).

The programs for A003823, there is no canonical definition to state claims against.
-/

/-! ## A003823.P16870699857117039887

`A291678(∑[n+2]-1)`
-/

namespace A003823.P16870699857117039887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A003823.P16870699857117039887

/-! ## A003823.P2213264715706610425

`A291678(∑[n+1]+n)%A078721(n)`
-/

namespace A003823.P2213264715706610425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291678 (∑ j ∈ Finset.range (n + 1), f1 j + n)) (A078721 n)

end

end A003823.P2213264715706610425

/-! ## A003823.P9850750356152657165

`A291678(∑[n+1]+n)+A000007(n+1)`
-/

namespace A003823.P9850750356152657165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A000007 (n + 1)

end

end A003823.P9850750356152657165

/-!
# A003825: Numbers that are the sum of two positive cubes in at least three ways (primitive solutions).

The programs for A003825, there is no canonical definition to state claims against.
-/

/-! ## A003825.P6543565939998430778

`record[A018787(n+1)/A000272(A079901(n))]`
-/

namespace A003825.P6543565939998430778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018787 (n + 1) : ℚ) / (A000272 (A079901 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003825.P6543565939998430778

/-!
# A003826: Numbers that are the sum of two cubes in at least four ways (primitive solutions).

The programs for A003826, there is no canonical definition to state claims against.
-/

/-! ## A003826.P3431971903939528555

`A023051(∑[A281326(n+1)!])`
-/

namespace A003826.P3431971903939528555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A281326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003826.P3431971903939528555

/-! ## A003826.P18391499896320998393

`A023051(lt[A029744(n+1), A002326(2*n)])`
-/

namespace A003826.P18391499896320998393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A003826.P18391499896320998393

/-! ## A003826.P6032209151083663250

`A023051(lt[A239537(n+1), A002326(2*n)])`
-/

namespace A003826.P6032209151083663250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A003826.P6032209151083663250

/-!
# A003833: Sectors around outside of dartboard.

The programs for A003833, there is no canonical definition to state claims against.
-/

/-! ## A003833.P13888654747341112296

`A104158(20*n-n)`
-/

namespace A003833.P13888654747341112296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104158 (20 * n - n)

end

end A003833.P13888654747341112296

/-!
# A003841: Order of universal Chevalley group D_2(q), q = prime power.

The programs for A003841, the canonical program `A003841.P6958147360462621523` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003841 has offset 1).

The definition of A003841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003841.P6958147360462621523

`A329119(n+1)²`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A003841

/-- `A329119(n+1)²` -/
def P6958147360462621523.Spec : Prop :=
  ∀ n, P6958147360462621523.a n = A003841 (n + 1)

theorem P6958147360462621523.correct : P6958147360462621523.Spec := by
  intro n
  simp only [A003841, Nat.add_sub_cancel]

end A003841

/-! ## A003841.P14651916524114275178

`(A060615(n)+1)*A060615(n)²`
-/

namespace A003841.P14651916524114275178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060615 n + 1) * A060615 n ^ 2

end

end A003841.P14651916524114275178

namespace A003841

/-- `(A060615(n)+1)*A060615(n)²` -/
def P14651916524114275178.Spec : Prop :=
  ∀ n, P14651916524114275178.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P2181660230320999330

`A329119(n+1)^A020639(2*(n+1))`
-/

namespace A003841.P2181660230320999330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A003841.P2181660230320999330

namespace A003841

/-- `A329119(n+1)^A020639(2*(n+1))` -/
def P2181660230320999330.Spec : Prop :=
  ∀ n, P2181660230320999330.a n = (A003841 (n + 1) : ℚ)

end A003841

/-! ## A003841.P4438921724650953763

`(A246655(n+1)²-A367014(n+1))²`
-/

namespace A003841.P4438921724650953763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) ^ 2 - A367014 (n + 1)) ^ 2

end

end A003841.P4438921724650953763

namespace A003841

/-- `(A246655(n+1)²-A367014(n+1))²` -/
def P4438921724650953763.Spec : Prop :=
  ∀ n, P4438921724650953763.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P14570624588212901320

`A329119(n+1)^A000040(gcd(n, n+1))`
-/

namespace A003841.P14570624588212901320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A003841.P14570624588212901320

namespace A003841

/-- `A329119(n+1)^A000040(gcd(n, n+1))` -/
def P14570624588212901320.Spec : Prop :=
  ∀ n, P14570624588212901320.a n = (A003841 (n + 1) : ℚ)

end A003841

/-! ## A003841.P12266862456993661216

`(A059238(n+1)/∑[A057820(n+1)])²`
-/

namespace A003841.P12266862456993661216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A059238 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) ^ 2

end

end A003841.P12266862456993661216

namespace A003841

/-- `(A059238(n+1)/∑[A057820(n+1)])²` -/
def P12266862456993661216.Spec : Prop :=
  ∀ n, P12266862456993661216.a n = (A003841 (n + 1) : ℚ)

end A003841

/-! ## A003841.P14875533622599160832

`(A059238(n+1)/(1-A246655(n+1)))²`
-/

namespace A003841.P14875533622599160832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A059238 (n + 1) : ℚ) / (1 - A246655 (n + 1) : ℚ)) ^ 2

end

end A003841.P14875533622599160832

namespace A003841

/-- `(A059238(n+1)/(1-A246655(n+1)))²` -/
def P14875533622599160832.Spec : Prop :=
  ∀ n, P14875533622599160832.a n = (A003841 (n + 1) : ℚ)

end A003841

/-! ## A003841.P8251965155076205481

`A329119(n+1)^A000005(A093074(n+1))`
-/

namespace A003841.P8251965155076205481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) ^ (A000005 (A093074 (n + 1)).toNat : ℤ)

end

end A003841.P8251965155076205481

namespace A003841

/-- `A329119(n+1)^A000005(A093074(n+1))` -/
def P8251965155076205481.Spec : Prop :=
  ∀ n, P8251965155076205481.a n = (A003841 (n + 1) : ℚ)

end A003841

/-! ## A003841.P11352225907262387867

`(A060615(n)+A059238(n+1)/A246655(n+1))²`
-/

namespace A003841.P11352225907262387867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A060615 n : ℚ) + (A059238 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ)) ^ 2

end

end A003841.P11352225907262387867

namespace A003841

/-- `(A060615(n)+A059238(n+1)/A246655(n+1))²` -/
def P11352225907262387867.Spec : Prop :=
  ∀ n, P11352225907262387867.a n = (A003841 (n + 1) : ℚ)

end A003841

/-! ## A003841.P10023456727798945278

`A099764(A181062(n+2))`
-/

namespace A003841.P10023456727798945278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099764 (A181062 (n + 2)).toNat

end

end A003841.P10023456727798945278

namespace A003841

/-- `A099764(A181062(n+2))` -/
def P10023456727798945278.Spec : Prop :=
  ∀ n, P10023456727798945278.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P1162684642269352894

`A007531(A246655(n+1)+1)²`
-/

namespace A003841.P1162684642269352894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A246655 (n + 1) + 1).toNat ^ 2

end

end A003841.P1162684642269352894

namespace A003841

/-- `A007531(A246655(n+1)+1)²` -/
def P1162684642269352894.Spec : Prop :=
  ∀ n, P1162684642269352894.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P14950536074801840257

`A007531(A000961(n+2)+1)²`
-/

namespace A003841.P14950536074801840257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A000961 (n + 2) + 1).toNat ^ 2

end

end A003841.P14950536074801840257

namespace A003841

/-- `A007531(A000961(n+2)+1)²` -/
def P14950536074801840257.Spec : Prop :=
  ∀ n, P14950536074801840257.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P3922189806164859011

`A007531(record[A336564(n+1)+2])²`
-/

namespace A003841.P3922189806164859011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A003841.P3922189806164859011

namespace A003841

/-- `A007531(record[A336564(n+1)+2])²` -/
def P3922189806164859011.Spec : Prop :=
  ∀ n, P3922189806164859011.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P15945977888449916585

`(A002378(A000961(n+2))*A181062(n+2))²`
-/

namespace A003841.P15945977888449916585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 (A000961 (n + 2)).toNat * A181062 (n + 2)) ^ 2

end

end A003841.P15945977888449916585

namespace A003841

/-- `(A002378(A000961(n+2))*A181062(n+2))²` -/
def P15945977888449916585.Spec : Prop :=
  ∀ n, P15945977888449916585.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P1785879639821093691

`A007531(record[A345999(n+1)+A345993(n+1)])²`
-/

namespace A003841.P1785879639821093691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345999 (n + 1) + A345993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A003841.P1785879639821093691

namespace A003841

/-- `A007531(record[A345999(n+1)+A345993(n+1)])²` -/
def P1785879639821093691.Spec : Prop :=
  ∀ n, P1785879639821093691.a n = A003841 (n + 1)

end A003841

/-! ## A003841.P10750342084332614700

`A055522(A138929(n+2))²`
-/

namespace A003841.P10750342084332614700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055522 (A138929 (n + 2)).toNat ^ 2

end

end A003841.P10750342084332614700

namespace A003841

/-- `A055522(A138929(n+2))²` -/
def P10750342084332614700.Spec : Prop :=
  ∀ n, P10750342084332614700.a n = A003841 (n + 1)

end A003841

/-!
# A003842: The infinite Fibonacci word: start with 1, repeatedly apply the morphism 1->12, 2->1, take limit; or, start with S(0)=2, S(1)=1, and for n>1 define S(n)=S(n-1)S(n-2), then the sequence is S(oo).

The programs for A003842, the canonical program `A003842.P15414353884211984669` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003842 has offset 0).

The definition of A003842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003842.P15414353884211984669

`n+2-A120613(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003842

/-- `n+2-A120613(n+2)` -/
def P15414353884211984669.Spec : Prop :=
  ∀ n, P15414353884211984669.a n = A003842 n

theorem P15414353884211984669.correct : P15414353884211984669.Spec := by
  intro n
  simp only [A003842]

end A003842

/-! ## A003842.P3290485725125275863

`2-Δ[floor((n+1)/ϕ)]`
-/

namespace A003842.P3290485725125275863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A003842.P3290485725125275863

namespace A003842

/-- `2-Δ[floor((n+1)/ϕ)]` -/
def P3290485725125275863.Spec : Prop :=
  ∀ n, P3290485725125275863.a n = A003842 n

end A003842

/-! ## A003842.P11864981883316567865

`gcd(2, Δ[floor((n+1)/ϕ)])`
-/

namespace A003842.P11864981883316567865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A003842.P11864981883316567865

namespace A003842

/-- `gcd(2, Δ[floor((n+1)/ϕ)])` -/
def P11864981883316567865.Spec : Prop :=
  ∀ n, (P11864981883316567865.a n : ℤ) = A003842 n

end A003842

/-! ## A003842.P4544954868264477685

`C(2, Δ[floor(ϕ*(n+1))])`
-/

namespace A003842.P4544954868264477685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A003842.P4544954868264477685

namespace A003842

/-- `C(2, Δ[floor(ϕ*(n+1))])` -/
def P4544954868264477685.Spec : Prop :=
  ∀ n, (P4544954868264477685.a n : ℤ) = A003842 n

end A003842

/-! ## A003842.P13393882912995820308

`xor(3, Δ[floor(ϕ*(n+1))])`
-/

namespace A003842.P13393882912995820308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (f1 (n + 1) - f1 n)

end

end A003842.P13393882912995820308

namespace A003842

/-- `xor(3, Δ[floor(ϕ*(n+1))])` -/
def P13393882912995820308.Spec : Prop :=
  ∀ n, P13393882912995820308.a n = A003842 n

end A003842

/-! ## A003842.P8520172275083357399

`(3-Δ[floor(ϕ*(n+1))])!`
-/

namespace A003842.P8520172275083357399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 - (f1 (n + 1) - f1 n)).toNat

end

end A003842.P8520172275083357399

namespace A003842

/-- `(3-Δ[floor(ϕ*(n+1))])!` -/
def P8520172275083357399.Spec : Prop :=
  ∀ n, (P8520172275083357399.a n : ℤ) = A003842 n

end A003842

/-! ## A003842.P8651734402429570123

`2/Δ[ceil(ϕ*(n+1))]!`
-/

namespace A003842.P8651734402429570123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A003842.P8651734402429570123

namespace A003842

/-- `2/Δ[ceil(ϕ*(n+1))]!` -/
def P8651734402429570123.Spec : Prop :=
  ∀ n, P8651734402429570123.a n = (A003842 n : ℚ)

end A003842

/-! ## A003842.P15244583367252032886

`a(Δ[floor(ϕ*(n+1))])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A003842.P15244583367252032886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A003842.P15244583367252032886

namespace A003842

/-- `a(Δ[floor(ϕ*(n+1))])` -/
def P15244583367252032886.Spec : Prop :=
  ∀ n, (P15244583367252032886.a n : ℤ) = A003842 n

end A003842

/-! ## A003842.P8387565300817330382

`2/C(2, Δ[floor((n+1)/ϕ)])`
-/

namespace A003842.P8387565300817330382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.choose 2 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A003842.P8387565300817330382

namespace A003842

/-- `2/C(2, Δ[floor((n+1)/ϕ)])` -/
def P8387565300817330382.Spec : Prop :=
  ∀ n, P8387565300817330382.a n = (A003842 n : ℚ)

end A003842

/-! ## A003842.P15029680326345736624

`2/a(Δ[floor((n+1)/ϕ)])` with `a(0)=1`
-/

namespace A003842.P15029680326345736624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a (f1 (n + 1) - f1 n).toNat

end

end A003842.P15029680326345736624

namespace A003842

/-- `2/a(Δ[floor((n+1)/ϕ)])` -/
def P15029680326345736624.Spec : Prop :=
  ∀ n, P15029680326345736624.a n = (A003842 n : ℚ)

end A003842

/-! ## A003842.P1675543285937814304

`abs(2-dr(Δ[ceil((n+1)/ϕ)]))`
-/

namespace A003842.P1675543285937814304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) : ℤ)|

end

end A003842.P1675543285937814304

namespace A003842

/-- `abs(2-dr(Δ[ceil((n+1)/ϕ)]))` -/
def P1675543285937814304.Spec : Prop :=
  ∀ n, P1675543285937814304.a n = A003842 n

end A003842

/-! ## A003842.P9601602968763426389

`abs(Δ[floor(ϕ*(n+1))]%2+1)`
-/

namespace A003842.P9601602968763426389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 2 + 1|

end

end A003842.P9601602968763426389

namespace A003842

/-- `abs(Δ[floor(ϕ*(n+1))]%2+1)` -/
def P9601602968763426389.Spec : Prop :=
  ∀ n, P9601602968763426389.a n = A003842 n

end A003842

/-! ## A003842.P7845537689153573242

`2/A014675(n)`
-/

namespace A003842.P7845537689153573242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A014675 n : ℚ)

end

end A003842.P7845537689153573242

namespace A003842

/-- `2/A014675(n)` -/
def P7845537689153573242.Spec : Prop :=
  ∀ n, P7845537689153573242.a n = (A003842 n : ℚ)

end A003842

/-! ## A003842.P18441536580681781270

`A085358(n)%4`
-/

namespace A003842.P18441536580681781270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085358 n) 4

end

end A003842.P18441536580681781270

namespace A003842

/-- `A085358(n)%4` -/
def P18441536580681781270.Spec : Prop :=
  ∀ n, P18441536580681781270.a n = A003842 n

end A003842

/-! ## A003842.P14543074420045016961

`ceil(ratio[A350240(n)])`
-/

namespace A003842.P14543074420045016961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A003842.P14543074420045016961

namespace A003842

/-- `ceil(ratio[A350240(n)])` -/
def P14543074420045016961.Spec : Prop :=
  ∀ n, P14543074420045016961.a n = A003842 n

end A003842

/-! ## A003842.P15175844047266975677

`val(A118113(n)+1, 2)`
-/

namespace A003842.P15175844047266975677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118113 n + 1).toNat 2

end

end A003842.P15175844047266975677

namespace A003842

/-- `val(A118113(n)+1, 2)` -/
def P15175844047266975677.Spec : Prop :=
  ∀ n, (P15175844047266975677.a n : ℤ) = A003842 n

end A003842

/-! ## A003842.P9351220051079627159

`val(A022340(n)+2, 2)`
-/

namespace A003842.P9351220051079627159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022340 n + 2).toNat 2

end

end A003842.P9351220051079627159

namespace A003842

/-- `val(A022340(n)+2, 2)` -/
def P9351220051079627159.Spec : Prop :=
  ∀ n, (P9351220051079627159.a n : ℤ) = A003842 n

end A003842

/-!
# A003848: Order of (usually) simple Chevalley group D_2(q), q = prime power.

The programs for A003848, there is no canonical definition to state claims against.
-/

/-! ## A003848.P3176424237742396670

`A352806(n+1)²`
-/

namespace A003848.P3176424237742396670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352806 (n + 1) ^ 2

end

end A003848.P3176424237742396670

/-! ## A003848.P11085654196726216189

`A033931(A181062(n+2))²`
-/

namespace A003848.P11085654196726216189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (A181062 (n + 2)).toNat ^ 2

end

end A003848.P11085654196726216189

/-! ## A003848.P314246147640212670

`A033931(∑[A057820(n+1)])²`
-/

namespace A003848.P314246147640212670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A003848.P314246147640212670

/-! ## A003848.P7089459146108300063

`A033931(record[A047994(n+1)])²`
-/

namespace A003848.P7089459146108300063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A003848.P7089459146108300063

/-! ## A003848.P13821012341230429790

`A033931(A000961(n+2)-1)²`
-/

namespace A003848.P13821012341230429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (A000961 (n + 2) - 1).toNat ^ 2

end

end A003848.P13821012341230429790

/-! ## A003848.P7275047312230755419

`A033931(eq[1, A001221(n+1)])²`
-/

namespace A003848.P7275047312230755419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A003848.P7275047312230755419

/-! ## A003848.P12252896396320795038

`A033931(eq[n, A047994(n+1)])²`
-/

namespace A003848.P12252896396320795038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A003848.P12252896396320795038

/-! ## A003848.P16826635430170225409

`A033931(eq[n, A344005(n+1)])²`
-/

namespace A003848.P16826635430170225409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A003848.P16826635430170225409

/-! ## A003848.P1596815182607447800

`A033931(eq[n, A344006(n+1)])²`
-/

namespace A003848.P1596815182607447800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A003848.P1596815182607447800

/-! ## A003848.P8648858590591677351

`A352806(n+1)^A000005(A352837(n+1))`
-/

namespace A003848.P8648858590591677351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352806 (n + 1) : ℚ) ^ (A000005 (A352837 (n + 1)).toNat : ℤ)

end

end A003848.P8648858590591677351

/-!
# A003849: The infinite Fibonacci word (start with 0, apply 0->01, 1->0, take limit).

The programs for A003849, the canonical program `A003849.P15070805603138295355` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003849 has offset 0).

The definition of A003849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003849.P15070805603138295355

`2-(floor((n+2)*ϕ)-floor((n+1)*ϕ))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003849

/-- `2-(floor((n+2)*ϕ)-floor((n+1)*ϕ))` -/
def P15070805603138295355.Spec : Prop :=
  ∀ n, P15070805603138295355.a n = A003849 n

theorem P15070805603138295355.correct : P15070805603138295355.Spec := by
  intro n
  simp only [A003849]

end A003849

/-! ## A003849.P13132753974708559394

`Δ[floor(ϕ*(n+1))]%2`
-/

namespace A003849.P13132753974708559394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A003849.P13132753974708559394

namespace A003849

/-- `Δ[floor(ϕ*(n+1))]%2` -/
def P13132753974708559394.Spec : Prop :=
  ∀ n, P13132753974708559394.a n = A003849 n

end A003849

/-! ## A003849.P18361002279990191008

`and(1, Δ[floor(ϕ*(n+1))])`
-/

namespace A003849.P18361002279990191008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A003849.P18361002279990191008

namespace A003849

/-- `and(1, Δ[floor(ϕ*(n+1))])` -/
def P18361002279990191008.Spec : Prop :=
  ∀ n, P18361002279990191008.a n = A003849 n

end A003849

/-! ## A003849.P330518642258275944

`xor(1, Δ[floor((n+1)/ϕ)])`
-/

namespace A003849.P330518642258275944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A003849.P330518642258275944

namespace A003849

/-- `xor(1, Δ[floor((n+1)/ϕ)])` -/
def P330518642258275944.Spec : Prop :=
  ∀ n, P330518642258275944.a n = A003849 n

end A003849

/-! ## A003849.P14146261018011044094

`C(2, Δ[floor((n+1)*ϕ²)])`
-/

namespace A003849.P14146261018011044094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A003849.P14146261018011044094

namespace A003849

/-- `C(2, Δ[floor((n+1)*ϕ²)])` -/
def P14146261018011044094.Spec : Prop :=
  ∀ n, (P14146261018011044094.a n : ℤ) = A003849 n

end A003849

/-! ## A003849.P10849829980241164451

`a(Δ[floor(ϕ*(n+1))])` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A003849.P10849829980241164451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A003849.P10849829980241164451

namespace A003849

/-- `a(Δ[floor(ϕ*(n+1))])` -/
def P10849829980241164451.Spec : Prop :=
  ∀ n, (P10849829980241164451.a n : ℤ) = A003849 n

end A003849

/-! ## A003849.P10839421346456318564

`log2(A003842(n))`
-/

namespace A003849.P10839421346456318564
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003842 n : ℝ)

end

end A003849.P10839421346456318564

namespace A003849

/-- `log2(A003842(n))` -/
def P10839421346456318564.Spec : Prop :=
  ∀ n, P10839421346456318564.a n = (A003849 n : ℝ)

end A003849

/-! ## A003849.P4019538422484344703

`val(A085358(n), 2)`
-/

namespace A003849.P4019538422484344703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A085358 n).toNat 2

end

end A003849.P4019538422484344703

namespace A003849

/-- `val(A085358(n), 2)` -/
def P4019538422484344703.Spec : Prop :=
  ∀ n, (P4019538422484344703.a n : ℤ) = A003849 n

end A003849

/-! ## A003849.P7041825759972084528

`A000035(A035614(n))`
-/

namespace A003849.P7041825759972084528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A035614 n).toNat

end

end A003849.P7041825759972084528

namespace A003849

/-- `A000035(A035614(n))` -/
def P7041825759972084528.Spec : Prop :=
  ∀ n, P7041825759972084528.a n = A003849 n

end A003849

/-! ## A003849.P10636975404168591917

`A000035(A072661(n))`
-/

namespace A003849.P10636975404168591917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072661 n).toNat

end

end A003849.P10636975404168591917

namespace A003849

/-- `A000035(A072661(n))` -/
def P10636975404168591917.Spec : Prop :=
  ∀ n, P10636975404168591917.a n = A003849 n

end A003849

/-! ## A003849.P6541537069724529225

`A000035(A104324(n))`
-/

namespace A003849.P6541537069724529225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A104324 n).toNat

end

end A003849.P6541537069724529225

namespace A003849

/-- `A000035(A104324(n))` -/
def P6541537069724529225.Spec : Prop :=
  ∀ n, P6541537069724529225.a n = A003849 n

end A003849

/-! ## A003849.P9726481756991315387

`A000007(A239002(n))`
-/

namespace A003849.P9726481756991315387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A239002 n).toNat

end

end A003849.P9726481756991315387

namespace A003849

/-- `A000007(A239002(n))` -/
def P9726481756991315387.Spec : Prop :=
  ∀ n, P9726481756991315387.a n = A003849 n

end A003849

/-! ## A003849.P6929109009934571404

`A000035(A356749(n))`
-/

namespace A003849.P6929109009934571404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A356749 n).toNat

end

end A003849.P6929109009934571404

namespace A003849

/-- `A000035(A356749(n))` -/
def P6929109009934571404.Spec : Prop :=
  ∀ n, P6929109009934571404.a n = A003849 n

end A003849

/-! ## A003849.P7120518972326473846

`A096270(A002251(n+1))`
-/

namespace A003849.P7120518972326473846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A002251 (n + 1)).toNat

end

end A003849.P7120518972326473846

namespace A003849

/-- `A096270(A002251(n+1))` -/
def P7120518972326473846.Spec : Prop :=
  ∀ n, P7120518972326473846.a n = A003849 n

end A003849

/-! ## A003849.P10759186429265056027

`A096270(A026351(n+1))`
-/

namespace A003849.P10759186429265056027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A026351 (n + 1)).toNat

end

end A003849.P10759186429265056027

namespace A003849

/-- `A096270(A026351(n+1))` -/
def P10759186429265056027.Spec : Prop :=
  ∀ n, P10759186429265056027.a n = A003849 n

end A003849

/-! ## A003849.P16117299374569346905

`A123740(A007067(n+1))`
-/

namespace A003849.P16117299374569346905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A007067 (n + 1)).toNat

end

end A003849.P16117299374569346905

namespace A003849

/-- `A123740(A007067(n+1))` -/
def P16117299374569346905.Spec : Prop :=
  ∀ n, P16117299374569346905.a n = A003849 n

end A003849

/-! ## A003849.P18355785278690847714

`A189661(A026354(n+1))`
-/

namespace A003849.P18355785278690847714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A026354 (n + 1)).toNat

end

end A003849.P18355785278690847714

namespace A003849

/-- `A189661(A026354(n+1))` -/
def P18355785278690847714.Spec : Prop :=
  ∀ n, P18355785278690847714.a n = A003849 n

end A003849

/-! ## A003849.P6222837707015796300

`A316343(A380960(n)-n)`
-/

namespace A003849.P6222837707015796300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316343 (A380960 n - (n : ℤ)).toNat

end

end A003849.P6222837707015796300

namespace A003849

/-- `A316343(A380960(n)-n)` -/
def P6222837707015796300.Spec : Prop :=
  ∀ n, P6222837707015796300.a n = A003849 n

end A003849

/-!
# A003858: Degrees of irreducible representations of Mathieu group M_23.

The programs for A003858, there is no canonical definition to state claims against.
-/

/-! ## A003858.P17737012069196726384

`A003859(n+1)-A059841(A179603(n))`
-/

namespace A003858.P17737012069196726384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003859 (n + 1) - A059841 (A179603 n).toNat

end

end A003858.P17737012069196726384

/-!
# A003859: Degrees of irreducible representations of Mathieu group M_24.

The programs for A003859, there is no canonical definition to state claims against.
-/

/-! ## A003859.P17734354970401090433

`A003858(A270831(n+1))+A003849(n)`
-/

namespace A003859.P17734354970401090433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003858 (A270831 (n + 1)).toNat + A003849 n

end

end A003859.P17734354970401090433

/-! ## A003859.P18282619831717809381

`or(A003858(n+1), A008683(A026091(n)))`
-/

namespace A003859.P18282619831717809381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003858 (n + 1)) (A008683 (A026091 n).toNat)

end

end A003859.P18282619831717809381

/-!
# A003862: Degrees of irreducible representations of alternating group A_7.

The programs for A003862, there is no canonical definition to state claims against.
-/

/-! ## A003862.P17006980648010012518

`A060241(n+22)`
-/

namespace A003862.P17006980648010012518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060241 (n + 22)

end

end A003862.P17006980648010012518

/-! ## A003862.P18052937425055781282

`A080575(A006881(n+1))+A030217(2*(n+2))`
-/

namespace A003862.P18052937425055781282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080575 (A006881 (n + 1)).toNat + A030217 (2 * (n + 2))

end

end A003862.P18052937425055781282

/-!
# A003863: Degrees of irreducible representations of alternating group A_8.

The programs for A003863, there is no canonical definition to state claims against.
-/

/-! ## A003863.P15262223610136413123

`A060241(n+31)`
-/

namespace A003863.P15262223610136413123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060241 (n + 31)

end

end A003863.P15262223610136413123

/-!
# A003864: Degrees of irreducible representations of alternating group A_9.

The programs for A003864, there is no canonical definition to state claims against.
-/

/-! ## A003864.P5482007912378506547

`A060241(n+45)`
-/

namespace A003864.P5482007912378506547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060241 (n + 45)

end

end A003864.P5482007912378506547

/-!
# A003865: Degrees of irreducible representations of alternating group A_10.

The programs for A003865, there is no canonical definition to state claims against.
-/

/-! ## A003865.P11433287823036409628

`A060241(n+63)`
-/

namespace A003865.P11433287823036409628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060241 (n + 63)

end

end A003865.P11433287823036409628

/-! ## A003865.P7484144620351917493

`A003874(2*n+1)-A185284(A000040(n+1))`
-/

namespace A003865.P7484144620351917493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003874 (2 * n + 1) - A185284 (A000040 (n + 1)).toNat

end

end A003865.P7484144620351917493

/-! ## A003865.P16424855308490759913

`A003874(2*n+1)-A185284(A251761(n+4))`
-/

namespace A003865.P16424855308490759913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003874 (2 * n + 1) - A185284 (A251761 (n + 4)).toNat

end

end A003865.P16424855308490759913

/-! ## A003865.P15508615040048389283

`A003874(A276463(n)+1)`
-/

namespace A003865.P15508615040048389283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003874 (A276463 n + 1).toNat

end

end A003865.P15508615040048389283

/-! ## A003865.P542041399648923076

`A003874(Δ[A130571(n)²])`
-/

namespace A003865.P542041399648923076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003874 (f1 (n + 1) - f1 n).toNat

end

end A003865.P542041399648923076

/-!
# A003866: Degrees of irreducible representations of alternating group A_11.

The programs for A003866, there is no canonical definition to state claims against.
-/

/-! ## A003866.P9373808586582861195

`A060241(n+87)`
-/

namespace A003866.P9373808586582861195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060241 (n + 87)

end

end A003866.P9373808586582861195

/-! ## A003866.P12898231517316106966

`A003875(2*(n+1))-A006768(A035470(n+1))`
-/

namespace A003866.P12898231517316106966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003875 (2 * (n + 1)) - A006768 (A035470 (n + 1)).toNat

end

end A003866.P12898231517316106966

/-!
# A003867: Degrees of irreducible representations of alternating group A_12.

The programs for A003867, there is no canonical definition to state claims against.
-/

/-! ## A003867.P3650718518798943740

`A003876(record[A187469(n+1)])`
-/

namespace A003867.P3650718518798943740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003876 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003867.P3650718518798943740

/-! ## A003867.P6864672930835971050

`A003876(2*(A055645(n)+1))`
-/

namespace A003867.P6864672930835971050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003876 (2 * (A055645 n + 1)).toNat

end

end A003867.P6864672930835971050

/-! ## A003867.P14646773488100817889

`A003876(A055645(n)+1+n)`
-/

namespace A003867.P14646773488100817889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003876 (A055645 n + 1 + (n : ℤ)).toNat

end

end A003867.P14646773488100817889

/-! ## A003867.P10418016471737689579

`A003876(lcm(2*(n+1), A003108(n)))`
-/

namespace A003867.P10418016471737689579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003876 (Int.lcm (2 * (n + 1) : ℤ) (A003108 n))

end

end A003867.P10418016471737689579

/-!
# A003868: Degrees of irreducible representations of alternating group A_13.

The programs for A003868, there is no canonical definition to state claims against.
-/

/-! ## A003868.P7843382160499561396

`A003877(A100800(n+1))`
-/

namespace A003868.P7843382160499561396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003877 (A100800 (n + 1)).toNat

end

end A003868.P7843382160499561396

/-! ## A003868.P4679765174351245065

`A003877(A169919(n+1))`
-/

namespace A003868.P4679765174351245065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003877 (A169919 (n + 1)).toNat

end

end A003868.P4679765174351245065

/-! ## A003868.P10843682614146994722

`A003877(A169921(n+1))`
-/

namespace A003868.P10843682614146994722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003877 (A169921 (n + 1)).toNat

end

end A003868.P10843682614146994722

/-! ## A003868.P17591747846629166120

`A003877(A292512(n+1))`
-/

namespace A003868.P17591747846629166120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003877 (A292512 (n + 1)).toNat

end

end A003868.P17591747846629166120

/-! ## A003868.P9751798186647213083

`A003877(A000005(4^n))`
-/

namespace A003868.P9751798186647213083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003877 (A000005 (4 ^ n)).toNat

end

end A003868.P9751798186647213083

/-!
# A003871: Degrees of irreducible representations of symmetric group S_7.

The programs for A003871, there is no canonical definition to state claims against.
-/

/-! ## A003871.P16534716200660830695

`A060240(n+30)`
-/

namespace A003871.P16534716200660830695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (n + 30)

end

end A003871.P16534716200660830695

/-!
# A003872: Degrees of irreducible representations of symmetric group S_8.

The programs for A003872, there is no canonical definition to state claims against.
-/

/-! ## A003872.P8253561170705785620

`A060240(n+45)`
-/

namespace A003872.P8253561170705785620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (n + 45)

end

end A003872.P8253561170705785620

/-!
# A003873: Degrees of irreducible representations of symmetric group S_9.

The programs for A003873, there is no canonical definition to state claims against.
-/

/-! ## A003873.P18385389993677457189

`A060240(n+67)`
-/

namespace A003873.P18385389993677457189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (n + 67)

end

end A003873.P18385389993677457189

/-!
# A003874: Degrees of irreducible representations of symmetric group S_10.

The programs for A003874, there is no canonical definition to state claims against.
-/

/-! ## A003874.P12566984681630850899

`A060240(n+97)`
-/

namespace A003874.P12566984681630850899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (n + 97)

end

end A003874.P12566984681630850899

/-! ## A003874.P10093843996445758017

`A003865(A008619(n))%A020330(A334251(n))`
-/

namespace A003874.P10093843996445758017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003865 (A008619 n).toNat) (A020330 (A334251 n).toNat)

end

end A003874.P10093843996445758017

/-! ## A003874.P12371835093198210310

`A003865(A008619(n))*A049100(A200326(n+1))`
-/

namespace A003874.P12371835093198210310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003865 (A008619 n).toNat * A049100 (A200326 (n + 1)).toNat

end

end A003874.P12371835093198210310

/-! ## A003874.P11587523139333753930

`A003865(A049100(n+1)²*A008619(n))`
-/

namespace A003874.P11587523139333753930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003865 (A049100 (n + 1) ^ 2 * A008619 n).toNat

end

end A003874.P11587523139333753930

/-!
# A003875: Degrees of irreducible representations of symmetric group S_11.

The programs for A003875, there is no canonical definition to state claims against.
-/

/-! ## A003875.P12343891996574261360

`A003866(A008619(n^A242784(n)))`
-/

namespace A003875.P12343891996574261360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003866 (A008619 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A242784 n : ℤ))).toNat).toNat

end

end A003875.P12343891996574261360

/-! ## A003875.P10377813238174799264

`A003866(A008619(n)^A103379(n+1))`
-/

namespace A003875.P10377813238174799264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003866 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A103379 (n + 1) : ℤ))).toNat

end

end A003875.P10377813238174799264

/-! ## A003875.P3186524587891432751

`A003866(A242784(n)²²*A008619(n))`
-/

namespace A003875.P3186524587891432751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003866 ((A242784 n ^ 2) ^ 2 * A008619 n).toNat

end

end A003875.P3186524587891432751

/-! ## A003875.P1271344674241338966

`A003866(A103379(n+1)²²*A008619(n))`
-/

namespace A003875.P1271344674241338966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003866 ((A103379 (n + 1) ^ 2) ^ 2 * A008619 n).toNat

end

end A003875.P1271344674241338966

/-! ## A003875.P16171185479140265335

`A003866(A008619(n)^A124778(n))`
-/

namespace A003875.P16171185479140265335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003866 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A003875.P16171185479140265335

/-!
# A003876: Degrees of irreducible representations of symmetric group S_12.

The programs for A003876, there is no canonical definition to state claims against.
-/

/-! ## A003876.P8106225098701582497

`lcm(A003867(A008619(n)), A124778(n))`
-/

namespace A003876.P8106225098701582497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003867 (A008619 n).toNat) (A124778 n)

end

end A003876.P8106225098701582497

/-! ## A003876.P2959618686349190034

`A003867(A008619(n)%A003913(2*n+3))`
-/

namespace A003876.P2959618686349190034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003867 (Int.tmod (A008619 n) (A003913 (2 * n + 3))).toNat

end

end A003876.P2959618686349190034

/-! ## A003876.P17055274721453921934

`A003867(A008621(2*n)%A003913(2*n+3))`
-/

namespace A003876.P17055274721453921934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003867 (Int.tmod (A008621 (2 * n)) (A003913 (2 * n + 3))).toNat

end

end A003876.P17055274721453921934

/-! ## A003876.P17724052044569649364

`A003867(A008621(2*n+1)%A062361(3*n+5))`
-/

namespace A003876.P17724052044569649364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003867 (Int.tmod (A008621 (2 * n + 1)) (A062361 (3 * n + 5))).toNat

end

end A003876.P17724052044569649364

/-! ## A003876.P11358102555636380783

`A003867(A008619(n)%A106429(n+1))`
-/

namespace A003876.P11358102555636380783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003867 (Int.tmod (A008619 n) (A106429 (n + 1))).toNat

end

end A003876.P11358102555636380783

/-!
# A003877: Degrees of irreducible representations of symmetric group S_13.

The programs for A003877, there is no canonical definition to state claims against.
-/

/-! ## A003877.P544773903253952248

`A060240(272+n)`
-/

namespace A003877.P544773903253952248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (272 + n)

end

end A003877.P544773903253952248

/-! ## A003877.P594699171115268391

`A003868(A077739(∑[char[2*n]]))`
-/

namespace A003877.P594699171115268391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003868 (A077739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A003877.P594699171115268391

/-! ## A003877.P7650123323112456382

`A003868(Δ[A242474(n+1)]*A008619(n))`
-/

namespace A003877.P7650123323112456382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003868 ((f1 (n + 1) - f1 n) * A008619 n).toNat

end

end A003877.P7650123323112456382

/-! ## A003877.P5128712932719215217

`A003868(A008619(n)^Δ[A242474(n+1)])`
-/

namespace A003877.P5128712932719215217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003868 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A003877.P5128712932719215217

/-! ## A003877.P2041364768591823236

`A003868(A242474(n+2)-A008619(n+1))`
-/

namespace A003877.P2041364768591823236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003868 (A242474 (n + 2) - A008619 (n + 1)).toNat

end

end A003877.P2041364768591823236

/-!
# A003878: a(n) = n^4 + (9/2)*n^3 + n^2 - (9/2)*n + 1.

The programs for A003878, the canonical program `A003878.P17146630747715343201` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003878 has offset 0).

The definition of A003878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003878.P17146630747715343201

`n^4+9/2*(n^3-n)+n²+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003878

/-- `n^4+9/2*(n^3-n)+n²+1` -/
def P17146630747715343201.Spec : Prop :=
  ∀ n, P17146630747715343201.a n = (A003878 n : ℚ)

end A003878

/-! ## A003878.P12870704089211864058

`n^4+9/2*n^3+n²-9/2*n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003878.P12870704089211864058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℚ) + (9 : ℚ) / 2 * (n ^ 3 : ℚ) + (n ^ 2 : ℚ) - (9 : ℚ) / 2 * (n : ℚ) + 1

end

end A003878.P12870704089211864058

namespace A003878

/-- `n^4+9/2*n^3+n²-9/2*n+1` -/
def P12870704089211864058.Spec : Prop :=
  ∀ n, P12870704089211864058.a n = (A003878 n : ℚ)

end A003878

/-!
# A003881: Decimal expansion of Pi/4.

The programs for A003881, there is no canonical definition to state claims against.
-/

/-! ## A003881.P1784590801857552372

`9-A210958(n)`
-/

namespace A003881.P1784590801857552372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A210958 n

end

end A003881.P1784590801857552372

/-!
# A003891: Degrees of irreducible representations of group L2(31).

The programs for A003891, there is no canonical definition to state claims against.
-/

/-! ## A003891.P2004536822428440917

`A060246(n+90)`
-/

namespace A003891.P2004536822428440917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060246 (n + 90)

end

end A003891.P2004536822428440917

/-! ## A003891.P1070228669535822853

`A003890(n+1)+2%∑[char[∑[n]]]`
-/

namespace A003891.P1070228669535822853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003890 (n + 1) + ((2 % (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A003891.P1070228669535822853

/-! ## A003891.P11243557810741934965

`A025900(A003890(n+1))+A003890(n+1)`
-/

namespace A003891.P11243557810741934965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 (A003890 (n + 1)).toNat + A003890 (n + 1)

end

end A003891.P11243557810741934965

/-! ## A003891.P2279543649007366720

`or(A000122(n²²), A003890(n+1))`
-/

namespace A003891.P2279543649007366720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 ((n ^ 2) ^ 2)) (A003890 (n + 1))

end

end A003891.P2279543649007366720

/-! ## A003891.P11156319786802676219

`or(A001221(A003946(n)), A003890(n+1))`
-/

namespace A003891.P11156319786802676219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A003946 n).toNat) (A003890 (n + 1))

end

end A003891.P11156319786802676219

/-!
# A003892: Degrees of irreducible representations of group L2(32).

The programs for A003892, there is no canonical definition to state claims against.
-/

/-! ## A003892.P10541319346517432784

`A065685(n+1)+A065658(A065682(n+11))`
-/

namespace A003892.P10541319346517432784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065685 (n + 1) + A065658 (A065682 (n + 11)).toNat

end

end A003892.P10541319346517432784

/-! ## A003892.P16562735013999379917

`A065685(n+1)+A065658(p?[A065681(n+1)])`
-/

namespace A003892.P16562735013999379917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065685 (n + 1) + A065658 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A003892.P16562735013999379917

/-! ## A003892.P10514057783656408617

`A065685(n+1)+A065658(p?[A065684(n+1)])`
-/

namespace A003892.P10514057783656408617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065685 (n + 1) + A065658 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A003892.P10514057783656408617

/-! ## A003892.P1611745907138777395

`A132990(C(2*n, A239086(a(n-1)+2))+3)` with `a(0)=1`
-/

namespace A003892.P1611745907138777395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132990 (Nat.choose (2 * n) (A239086 (a (n - 1) + 2).toNat).toNat + 3)

end

end A003892.P1611745907138777395

/-! ## A003892.P5446059408880412650

`A022401(A153683(n+1)%A003891(n+1))`
-/

namespace A003892.P5446059408880412650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022401 (Int.tmod (A153683 (n + 1)) (A003891 (n + 1))).toNat

end

end A003892.P5446059408880412650

/-!
# A003893: a(n) = Fibonacci(n) mod 10.

The programs for A003893, there is no canonical definition to state claims against.
-/

/-! ## A003893.P13033085585006460604

`A105471(n)-A105472(n)*10`
-/

namespace A003893.P13033085585006460604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105471 n - A105472 n * 10

end

end A003893.P13033085585006460604

