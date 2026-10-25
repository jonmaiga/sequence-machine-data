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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A269800: Convolution of A000107 and A027852.

The programs for A269800, there is no canonical definition to state claims against.
-/

/-! ## A269800.P11200903920544024857

`A318602(∑[n+1]-2%A313551(n)+1)`
-/

namespace A269800.P11200903920544024857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod 2 (A313551 n) + 1).toNat

end

end A269800.P11200903920544024857

/-! ## A269800.P6760901694770480406

`A318602(A000096(n)+A000038(n))`
-/

namespace A269800.P6760901694770480406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 (A000096 n + A000038 n).toNat

end

end A269800.P6760901694770480406

/-! ## A269800.P15491464984085687901

`A318602(or(A000038(n), A000096(n)))`
-/

namespace A269800.P15491464984085687901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 (Int.lor (A000038 n) (A000096 n)).toNat

end

end A269800.P15491464984085687901

/-! ## A269800.P13120793740269410703

`A318602(xor(A000038(n), A000096(n)))`
-/

namespace A269800.P13120793740269410703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 (Int.xor (A000038 n) (A000096 n)).toNat

end

end A269800.P13120793740269410703

/-! ## A269800.P1893333846175641599

`A318602(A000124(n)+abs(A023443(n)))`
-/

namespace A269800.P1893333846175641599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 (A000124 n + |A023443 n|).toNat

end

end A269800.P1893333846175641599

/-! ## A269800.P1608048165226799733

`A318602(A000124(n)+abs(A024000(n)))`
-/

namespace A269800.P1608048165226799733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 (A000124 n + |A024000 n|).toNat

end

end A269800.P1608048165226799733

/-! ## A269800.P2628341516390155469

`A318602(abs(A000038(n)-A000096(n)))`
-/

namespace A269800.P2628341516390155469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 |A000038 n - A000096 n|.toNat

end

end A269800.P2628341516390155469

/-! ## A269800.P14463312125957288243

`A318602(A179865(n+1)+A028310(n))`
-/

namespace A269800.P14463312125957288243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318602 (A179865 (n + 1) + A028310 n).toNat

end

end A269800.P14463312125957288243

/-!
# A269801: Total sum of the divisors of the primes p,q such that n=p+q and p>=q.

The programs for A269801, there is no canonical definition to state claims against.
-/

/-! ## A269801.P958217648010300570

`(n+2)*A061358(n)`
-/

namespace A269801.P958217648010300570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A061358 n

end

end A269801.P958217648010300570

/-! ## A269801.P18422176213861573089

`abs((A103517(n)-n)*A061358(n))`
-/

namespace A269801.P18422176213861573089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A103517 n - (n : ℤ)) * A061358 n|

end

end A269801.P18422176213861573089

/-! ## A269801.P13373404241425052983

`round(A061358(n)/acot(A065475(n+1)))`
-/

namespace A269801.P13373404241425052983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061358 n : ℝ) / SequenceMachineLib.acot (A065475 (n + 1) : ℝ))

end

end A269801.P13373404241425052983

/-! ## A269801.P13706649108579803750

`A061358(n)*A065475(n-log2(1/2))`
-/

namespace A269801.P13706649108579803750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n * A065475 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A269801.P13706649108579803750

/-! ## A269801.P3649472895069510576

`A061358(n)*A103391(A103517(n))`
-/

namespace A269801.P3649472895069510576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n * A103391 (A103517 n).toNat

end

end A269801.P3649472895069510576

/-! ## A269801.P9817415855157372885

`A061358(n)*A084964(2*n)`
-/

namespace A269801.P9817415855157372885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n * A084964 (2 * n)

end

end A269801.P9817415855157372885

/-! ## A269801.P626222679608789547

`A061358(n)*A266977(2*n)`
-/

namespace A269801.P626222679608789547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n * A266977 (2 * n)

end

end A269801.P626222679608789547

/-! ## A269801.P656752827546135425

`abs((2-A001057(2*n))*A061358(n))`
-/

namespace A269801.P656752827546135425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A001057 (2 * n)) * A061358 n|

end

end A269801.P656752827546135425

/-! ## A269801.P5504560348203357560

`A061358(n)*A080513(A005408(n))`
-/

namespace A269801.P5504560348203357560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n * A080513 (A005408 n).toNat

end

end A269801.P5504560348203357560

/-! ## A269801.P8417712637518105840

`(n+2)*(A347739(n)-A347550(n))`
-/

namespace A269801.P8417712637518105840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A347739 n - A347550 n)

end

end A269801.P8417712637518105840

/-!
# A269803: a(n) = F(n+1)*F(n+2) - F(n), where F = A000045 (Fibonacci numbers).

The programs for A269803, the canonical program `A269803.P6712402258752498999` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269803 has offset 1).

The definition of A269803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269803.P6712402258752498999

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=37, a(4)=99`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269803

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P6712402258752498999.Spec : Prop :=
  ∀ n, P6712402258752498999.a n = A269803 (n + 1)

theorem P6712402258752498999.correct : P6712402258752498999.Spec := by
  intro n
  simp only [A269803, Nat.add_sub_cancel]

end A269803

/-! ## A269803.P8820745712640573004

`A362067(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A269803.P8820745712640573004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A362067 (n + 1) - a (n - 1)

end

end A269803.P8820745712640573004

namespace A269803

/-- `A362067(n+1)-a(n-1)` -/
def P8820745712640573004.Spec : Prop :=
  ∀ n, P8820745712640573004.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P15028997507955167551

`∑[record[A192883(n)]]-A127968(n)`
-/

namespace A269803.P15028997507955167551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127968 n

end

end A269803.P15028997507955167551

namespace A269803

/-- `∑[record[A192883(n)]]-A127968(n)` -/
def P15028997507955167551.Spec : Prop :=
  ∀ n, P15028997507955167551.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P8274572496145328056

`A001654(n+2)-∑[A212804(n)]`
-/

namespace A269803.P8274572496145328056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269803.P8274572496145328056

namespace A269803

/-- `A001654(n+2)-∑[A212804(n)]` -/
def P8274572496145328056.Spec : Prop :=
  ∀ n, P8274572496145328056.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P9611197451795153872

`A027994(n+1)-A033192(n+1)`
-/

namespace A269803.P9611197451795153872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027994 (n + 1) - A033192 (n + 1)

end

end A269803.P9611197451795153872

namespace A269803

/-- `A027994(n+1)-A033192(n+1)` -/
def P9611197451795153872.Spec : Prop :=
  ∀ n, P9611197451795153872.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P4178863951378868304

`A119996(n+1)-A000071(n+1)`
-/

namespace A269803.P4178863951378868304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119996 (n + 1) - A000071 (n + 1)

end

end A269803.P4178863951378868304

namespace A269803

/-- `A119996(n+1)-A000071(n+1)` -/
def P4178863951378868304.Spec : Prop :=
  ∀ n, P4178863951378868304.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P2103749825294991713

`A001654(n+2)-A000045(n+1)`
-/

namespace A269803.P2103749825294991713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - A000045 (n + 1)

end

end A269803.P2103749825294991713

namespace A269803

/-- `A001654(n+2)-A000045(n+1)` -/
def P2103749825294991713.Spec : Prop :=
  ∀ n, P2103749825294991713.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P17774714427719350478

`A152163(n+3)+A001654(n+2)`
-/

namespace A269803.P17774714427719350478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 3) + A001654 (n + 2)

end

end A269803.P17774714427719350478

namespace A269803

/-- `A152163(n+3)+A001654(n+2)` -/
def P17774714427719350478.Spec : Prop :=
  ∀ n, P17774714427719350478.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P11650604290443679811

`A001654(n+2)-A212804(n+2)`
-/

namespace A269803.P11650604290443679811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - A212804 (n + 2)

end

end A269803.P11650604290443679811

namespace A269803

/-- `A001654(n+2)-A212804(n+2)` -/
def P11650604290443679811.Spec : Prop :=
  ∀ n, P11650604290443679811.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P17609583820524353004

`A286983(n+3)-A000032(n+2)`
-/

namespace A269803.P17609583820524353004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 3) - A000032 (n + 2)

end

end A269803.P17609583820524353004

namespace A269803

/-- `A286983(n+3)-A000032(n+2)` -/
def P17609583820524353004.Spec : Prop :=
  ∀ n, P17609583820524353004.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P4557847128027498529

`A001654(n+2)-Δ[A001611(n+2)]`
-/

namespace A269803.P4557847128027498529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - (f1 (n + 1) - f1 n)

end

end A269803.P4557847128027498529

namespace A269803

/-- `A001654(n+2)-Δ[A001611(n+2)]` -/
def P4557847128027498529.Spec : Prop :=
  ∀ n, P4557847128027498529.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P3520935812779913444

`∑[Δ[A020695(n)]²]-A000071(n+1)`
-/

namespace A269803.P3520935812779913444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000071 (n + 1)

end

end A269803.P3520935812779913444

namespace A269803

/-- `∑[Δ[A020695(n)]²]-A000071(n+1)` -/
def P3520935812779913444.Spec : Prop :=
  ∀ n, P3520935812779913444.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P15365971868253527

`A001654(n+2)-A103609(2*(n+1))`
-/

namespace A269803.P15365971868253527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - A103609 (2 * (n + 1))

end

end A269803.P15365971868253527

namespace A269803

/-- `A001654(n+2)-A103609(2*(n+1))` -/
def P15365971868253527.Spec : Prop :=
  ∀ n, P15365971868253527.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P8945654892109186887

`A001654(n+2)-A123231(2*n+1)`
-/

namespace A269803.P8945654892109186887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - A123231 (2 * n + 1)

end

end A269803.P8945654892109186887

namespace A269803

/-- `A001654(n+2)-A123231(2*n+1)` -/
def P8945654892109186887.Spec : Prop :=
  ∀ n, P8945654892109186887.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P5923146951020124468

`A001654(n+2)-A163227(2*n+1)`
-/

namespace A269803.P5923146951020124468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - A163227 (2 * n + 1)

end

end A269803.P5923146951020124468

namespace A269803

/-- `A001654(n+2)-A163227(2*n+1)` -/
def P5923146951020124468.Spec : Prop :=
  ∀ n, P5923146951020124468.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P4637951205170643275

`A001654(n+2)-A272912(2*n+1)`
-/

namespace A269803.P4637951205170643275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - A272912 (2 * n + 1)

end

end A269803.P4637951205170643275

namespace A269803

/-- `A001654(n+2)-A272912(2*n+1)` -/
def P4637951205170643275.Spec : Prop :=
  ∀ n, P4637951205170643275.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P11392576174106413077

`A006498(2*n+3)-A000045(n+1)`
-/

namespace A269803.P11392576174106413077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n + 3) - A000045 (n + 1)

end

end A269803.P11392576174106413077

namespace A269803

/-- `A006498(2*n+3)-A000045(n+1)` -/
def P11392576174106413077.Spec : Prop :=
  ∀ n, P11392576174106413077.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P7703030507468970810

`∑[A096748(2*n)²]-A226649(2*n)`
-/

namespace A269803.P7703030507468970810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226649 (2 * n)

end

end A269803.P7703030507468970810

namespace A269803

/-- `∑[A096748(2*n)²]-A226649(2*n)` -/
def P7703030507468970810.Spec : Prop :=
  ∀ n, P7703030507468970810.a n = A269803 (n + 1)

end A269803

/-! ## A269803.P5689467138202202955

`∑[A000045(n+2)²]+1-A000045(n+1)`
-/

namespace A269803.P5689467138202202955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000045 (n + 1))

end

end A269803.P5689467138202202955

namespace A269803

/-- `∑[A000045(n+2)²]+1-A000045(n+1)` -/
def P5689467138202202955.Spec : Prop :=
  ∀ n, P5689467138202202955.a n = A269803 (n + 1)

end A269803

/-!
# A269804: Numbers having harmonic fractility 1, cf. A270000.

The programs for A269804, there is no canonical definition to state claims against.
-/

/-! ## A269804.P17148736664024867424

`eq[1, A270000(n+2)]+2`
-/

namespace A269804.P17148736664024867424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269804.P17148736664024867424

/-! ## A269804.P1661812111031344416

`eq[4, a(A270000(n))²]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P1661812111031344416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (A270000 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269804.P1661812111031344416

/-! ## A269804.P14889674266498849504

`eq[3, A000032(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P14889674266498849504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000032 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P14889674266498849504

/-! ## A269804.P10768559616075466042

`eq[4, A000079(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P10768559616075466042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000079 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P10768559616075466042

/-! ## A269804.P10465204262850616200

`eq[4, A000124(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P10465204262850616200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000124 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P10465204262850616200

/-! ## A269804.P11676812107505785419

`eq[4, A001747(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P11676812107505785419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A001747 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P11676812107505785419

/-! ## A269804.P17151067822115012212

`eq[4, A001787(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P17151067822115012212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A001787 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P17151067822115012212

/-! ## A269804.P7814130806696071451

`eq[4, A005843(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P7814130806696071451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A005843 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P7814130806696071451

/-! ## A269804.P4172351477317676189

`eq[4, A008864(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P4172351477317676189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A008864 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P4172351477317676189

/-! ## A269804.P8474613117924064641

`eq[4, A018252(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P8474613117924064641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A018252 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P8474613117924064641

/-! ## A269804.P8947101931476323898

`eq[4, A000292(a(A270000(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A269804.P8947101931476323898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000292 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P8947101931476323898

/-! ## A269804.P9664083445001597017

`eq[5, A209304(a(A270000(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A269804.P9664083445001597017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A209304 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P9664083445001597017

/-! ## A269804.P3204237551182303914

`eq[5, A000096(a(A270000(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A269804.P3204237551182303914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000096 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P3204237551182303914

/-! ## A269804.P3709973176720561245

`eq[5, A005408(a(A270000(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A269804.P3709973176720561245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A005408 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P3709973176720561245

/-! ## A269804.P14360029262134179668

`eq[5, A008576(a(A270000(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A269804.P14360029262134179668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A008576 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P14360029262134179668

/-! ## A269804.P2058529575665681827

`eq[5, A000041(a(A270000(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A269804.P2058529575665681827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A000041 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P2058529575665681827

/-! ## A269804.P16319218884046930957

`eq[4, A000010(a(A270000(n)))]` with `a(0)=1, a(1)=5`
-/

namespace A269804.P16319218884046930957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  A000010 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P16319218884046930957

/-! ## A269804.P15586939156402357935

`eq[3, A000005(2^a(A270000(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A269804.P15586939156402357935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f2 (A270000 n).toNat : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269804.P15586939156402357935

/-! ## A269804.P10354234332421009121

`lt[A000005(A270000(n+2)^4), 3]+2`
-/

namespace A269804.P10354234332421009121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A270000 (n + 2) ^ 4).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A269804.P10354234332421009121

/-! ## A269804.P7330554652113099057

`record[A110654(2*n+3)/A270000(n+2)]`
-/

namespace A269804.P7330554652113099057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (2 * n + 3) : ℚ) / (A270000 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269804.P7330554652113099057

/-!
# A269805: Numbers having harmonic fractility A270000(n) = 2.

The programs for A269805, there is no canonical definition to state claims against.
-/

/-! ## A269805.P13269436608378995701

`eq[2, A270000(n+2)]+2`
-/

namespace A269805.P13269436608378995701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269805.P13269436608378995701

/-! ## A269805.P633655080169185395

`eq[4, a(A270000(n))²]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A269805.P633655080169185395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A270000 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269805.P633655080169185395

/-! ## A269805.P24165111962805486

`eq[2, A270000(A233583(n+1))]`
-/

namespace A269805.P24165111962805486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269805.P24165111962805486

/-! ## A269805.P4671932327181950498

`A009056(eq[2, A270000(n+2)])`
-/

namespace A269805.P4671932327181950498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269805.P4671932327181950498

/-! ## A269805.P10390079729155658409

`A171463(eq[2, A270000(n+2)])`
-/

namespace A269805.P10390079729155658409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269805.P10390079729155658409

/-! ## A269805.P6516568116097593827

`A243427(eq[2, A270000(n+2)])`
-/

namespace A269805.P6516568116097593827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269805.P6516568116097593827

/-! ## A269805.P9782142384667021074

`eq[4, A005843(a(A270000(n)))]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A269805.P9782142384667021074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  A005843 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269805.P9782142384667021074

/-! ## A269805.P17344305394070241042

`eq[5, A209304(a(A270000(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A269805.P17344305394070241042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  A209304 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269805.P17344305394070241042

/-! ## A269805.P2817221486955505179

`eq[5, A005408(a(A270000(n)))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A269805.P2817221486955505179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  A005408 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269805.P2817221486955505179

/-!
# A269806: Numbers having harmonic fractility A270000(n) = 3.

The programs for A269806, there is no canonical definition to state claims against.
-/

/-! ## A269806.P4643498361952208283

`eq[3, A270000(n+3)]+3`
-/

namespace A269806.P4643498361952208283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A269806.P4643498361952208283

/-! ## A269806.P12798257451630072104

`eq[4, a(A270000(n))²]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A269806.P12798257451630072104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  f2 (A270000 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269806.P12798257451630072104

/-! ## A269806.P10321552817432892895

`eq[3, A270000(A233583(n+1))]`
-/

namespace A269806.P10321552817432892895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269806.P10321552817432892895

/-! ## A269806.P739676752289323667

`eq[4, A005843(a(A270000(n)))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A269806.P739676752289323667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  A005843 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269806.P739676752289323667

/-! ## A269806.P8394164767286826157

`eq[4, A290389(a(A270000(n)))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A269806.P8394164767286826157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  A290389 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269806.P8394164767286826157

/-! ## A269806.P17002050403121451057

`eq[5, A209304(a(A270000(n)))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A269806.P17002050403121451057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f2 =>
  A209304 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269806.P17002050403121451057

/-!
# A269807: Numbers having harmonic fractility A270000(n) = 4.

The programs for A269807, there is no canonical definition to state claims against.
-/

/-! ## A269807.P2392278474828371856

`eq[4, A270000(n+2)]+2`
-/

namespace A269807.P2392278474828371856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269807.P2392278474828371856

/-! ## A269807.P15888057788905307179

`eq[4, A270000(A233583(n+1))]`
-/

namespace A269807.P15888057788905307179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269807.P15888057788905307179

/-! ## A269807.P908700425244307867

`A009056(eq[4, A270000(n+2)])`
-/

namespace A269807.P908700425244307867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269807.P908700425244307867

/-! ## A269807.P17518595140826517190

`A171463(eq[4, A270000(n+2)])`
-/

namespace A269807.P17518595140826517190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269807.P17518595140826517190

/-! ## A269807.P11783735588992833833

`A243427(eq[4, A270000(n+2)])`
-/

namespace A269807.P11783735588992833833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269807.P11783735588992833833

/-! ## A269807.P14122215704080525697

`eq[a(A270000(n))-n, A024000(n)]` with `a(0)=2, a(1)=5`
-/

namespace A269807.P14122215704080525697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (A270000 n).toNat - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269807.P14122215704080525697

/-! ## A269807.P1612113067348488725

`eq[5, A209304(a(A270000(n)))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A269807.P1612113067348488725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f2 =>
  A209304 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269807.P1612113067348488725

/-! ## A269807.P17740318258823127701

`eq[5, A000041(a(A270000(n)))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=4`
-/

namespace A269807.P17740318258823127701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 4] fun n f2 =>
  A000041 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269807.P17740318258823127701

/-! ## A269807.P3768246869042972946

`eq[4, A000079(a(A270000(n)))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=0, a(4)=2`
-/

namespace A269807.P3768246869042972946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 0, 2] fun n f2 =>
  A000079 (f2 (A270000 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269807.P3768246869042972946

/-!
# A269808: Numbers having harmonic fractility A270000(n) = 5.

The programs for A269808, there is no canonical definition to state claims against.
-/

/-! ## A269808.P12787389206776845607

`eq[5, A270000(n+2)]+2`
-/

namespace A269808.P12787389206776845607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269808.P12787389206776845607

/-! ## A269808.P8688854151298427836

`eq[5, A270000(A233583(n+1))]`
-/

namespace A269808.P8688854151298427836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269808.P8688854151298427836

/-! ## A269808.P1919904530915200591

`A009056(eq[5, A270000(n+2)])`
-/

namespace A269808.P1919904530915200591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269808.P1919904530915200591

/-! ## A269808.P15462090500407475730

`A171463(eq[5, A270000(n+2)])`
-/

namespace A269808.P15462090500407475730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269808.P15462090500407475730

/-! ## A269808.P11855413217622982013

`A243427(eq[5, A270000(n+2)])`
-/

namespace A269808.P11855413217622982013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269808.P11855413217622982013

/-! ## A269808.P15194643796796037969

`eq[a(A270000(n))-n, A001489(n)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A269808.P15194643796796037969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (A270000 n).toNat - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269808.P15194643796796037969

/-!
# A269809: Numbers having harmonic fractility A270000(n) = 6.

The programs for A269809, there is no canonical definition to state claims against.
-/

/-! ## A269809.P14940875291707979487

`eq[6, A270000(n+2)]+2`
-/

namespace A269809.P14940875291707979487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A269809.P14940875291707979487

/-! ## A269809.P2366614892031079822

`eq[6, A270000(A233583(n+1))]`
-/

namespace A269809.P2366614892031079822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269809.P2366614892031079822

/-! ## A269809.P8788482144895945399

`A009056(eq[6, A270000(n+2)])`
-/

namespace A269809.P8788482144895945399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269809.P8788482144895945399

/-! ## A269809.P3835756063536445322

`A171463(eq[6, A270000(n+2)])`
-/

namespace A269809.P3835756063536445322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269809.P3835756063536445322

/-! ## A269809.P11337475228945726757

`A243427(eq[6, A270000(n+2)])`
-/

namespace A269809.P11337475228945726757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269809.P11337475228945726757

/-!
# A269810: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A269810, there is no canonical definition to state claims against.
-/

/-! ## A269810.P2329663732043379907

`∑[A269813(abs(1-n))]`
-/

namespace A269810.P2329663732043379907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269813 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269810.P2329663732043379907

/-! ## A269810.P5143839281111054629

`A269813(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269810.P5143839281111054629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269813 (n - 1) + a (n - 1)

end

end A269810.P5143839281111054629

/-! ## A269810.P10665712316290633271

`∑[A269813(n)]+1-A269813(n)`
-/

namespace A269810.P10665712316290633271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A269813 n)

end

end A269810.P10665712316290633271

/-! ## A269810.P14743760023297513658

`Δ[A269812(n)]-A269813(n)`
-/

namespace A269810.P14743760023297513658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269813 n

end

end A269810.P14743760023297513658

/-! ## A269810.P13626615765100390394

`A269812(n+1)-(A269813(n)+A269812(n))`
-/

namespace A269810.P13626615765100390394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269812 (n + 1) - (A269813 n + A269812 n)

end

end A269810.P13626615765100390394

/-!
# A269811: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A269811, there is no canonical definition to state claims against.
-/

/-! ## A269811.P8942565258718340571

`A269810(2^n-1)`
-/

namespace A269811.P8942565258718340571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269810 (2 ^ n - 1)

end

end A269811.P8942565258718340571

/-! ## A269811.P7789851525888984559

`record[A269810(A255067(n))]`
-/

namespace A269811.P7789851525888984559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269810 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269811.P7789851525888984559

/-! ## A269811.P1939749543695425317

`and(-3, A269810(A000225(n)))`
-/

namespace A269811.P1939749543695425317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A269810 (A000225 n).toNat)

end

end A269811.P1939749543695425317

/-! ## A269811.P5383304817465599416

`record[A269810(A243071(n+1))]`
-/

namespace A269811.P5383304817465599416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269810 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269811.P5383304817465599416

/-! ## A269811.P16328740814124641196

`record[A269810(A269386(n+1))]`
-/

namespace A269811.P16328740814124641196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269810 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269811.P16328740814124641196

/-!
# A269812: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A269812, there is no canonical definition to state claims against.
-/

/-! ## A269812.P1513451302503247205

`∑[A269810(n)]`
-/

namespace A269812.P1513451302503247205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269812.P1513451302503247205

/-! ## A269812.P489241748860856910

`∑[∑[A269813(abs(1-n))]]`
-/

namespace A269812.P489241748860856910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269813 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269812.P489241748860856910

/-! ## A269812.P15086665571170303162

`A269810(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A269812.P15086665571170303162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269810 n + a (A023443 n).toNat

end

end A269812.P15086665571170303162

/-! ## A269812.P4988259582124196418

`∑[∑[A269813(n)]+1-A269813(n)]`
-/

namespace A269812.P4988259582124196418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A269813 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269812.P4988259582124196418

/-! ## A269812.P15352812804739783315

`A269810(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A269812.P15352812804739783315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269810 (A004526 (2 * n)).toNat + a (n - 1)

end

end A269812.P15352812804739783315

/-!
# A269813: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A269813, there is no canonical definition to state claims against.
-/

/-! ## A269813.P12172214404371119281

`Δ[A269810(n)]`
-/

namespace A269813.P12172214404371119281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269813.P12172214404371119281

/-! ## A269813.P4351814267629143441

`A269810(n+1)-A269810(n)`
-/

namespace A269813.P4351814267629143441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269810 (n + 1) - A269810 n

end

end A269813.P4351814267629143441

/-! ## A269813.P13977444469627800793

`A269810(n+1)+A269810(n)/A008683(A068486(n+1))`
-/

namespace A269813.P13977444469627800793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269810 (n + 1) : ℚ) + (A269810 n : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ)

end

end A269813.P13977444469627800793

/-! ## A269813.P15524363593647631999

`Δ[A269812(n)]-A111332(n)!*A271125(n)`
-/

namespace A269813.P15524363593647631999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.factorial (A111332 n).toNat : ℤ) * A271125 n

end

end A269813.P15524363593647631999

/-! ## A269813.P4390746251109559770

`A271128(n)+A000038(A077806(n+1))`
-/

namespace A269813.P4390746251109559770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271128 n + A000038 (A077806 (n + 1)).toNat

end

end A269813.P4390746251109559770

/-!
# A269814: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A269814, there is no canonical definition to state claims against.
-/

/-! ## A269814.P4303940747269491645

`A269817(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269814.P4303940747269491645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269817 (n - 1) + a (n - 1)

end

end A269814.P4303940747269491645

/-! ## A269814.P1082577800721435090

`1+∑[A269817(n)]-A269817(n)`
-/

namespace A269814.P1082577800721435090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A269817 n)

end

end A269814.P1082577800721435090

/-! ## A269814.P1208794771940817949

`Δ[A269816(n)]-A269817(n)`
-/

namespace A269814.P1208794771940817949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269817 n

end

end A269814.P1208794771940817949

/-! ## A269814.P10172890007722754498

`A269816(n+1)-(A269817(n)+A269816(n))`
-/

namespace A269814.P10172890007722754498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269816 (n + 1) - (A269817 n + A269816 n)

end

end A269814.P10172890007722754498

/-!
# A269815: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A269815, the canonical program `A269815.P7544577805980322397` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269815 has offset 0).

The definition of A269815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269815.P2817918294149873808

`A171479(n)-3*A131577(n)`
-/

namespace A269815.P2817918294149873808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171479 n - 3 * A131577 n

end

end A269815.P2817918294149873808

namespace A269815

/-- `A171479(n)-3*A131577(n)` -/
def P2817918294149873808.Spec : Prop :=
  ∀ n, P2817918294149873808.a n = A269815 n

end A269815

/-! ## A269815.P9402603540244742852

`or(1, A171479(n)-A003945(n))`
-/

namespace A269815.P9402603540244742852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171479 n - A003945 n)

end

end A269815.P9402603540244742852

namespace A269815

/-- `or(1, A171479(n)-A003945(n))` -/
def P9402603540244742852.Spec : Prop :=
  ∀ n, P9402603540244742852.a n = A269815 n

end A269815

/-! ## A269815.P5292904999100814554

`or(1, A000079(n)*A154118(n))`
-/

namespace A269815.P5292904999100814554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000079 n * A154118 n)

end

end A269815.P5292904999100814554

namespace A269815

/-- `or(1, A000079(n)*A154118(n))` -/
def P5292904999100814554.Spec : Prop :=
  ∀ n, P5292904999100814554.a n = A269815 n

end A269815

/-! ## A269815.P222982592734976402

`2*A083329(n)²-A020515(n)`
-/

namespace A269815.P222982592734976402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083329 n ^ 2 - A020515 n

end

end A269815.P222982592734976402

namespace A269815

/-- `2*A083329(n)²-A020515(n)` -/
def P222982592734976402.Spec : Prop :=
  ∀ n, P222982592734976402.a n = A269815 n

end A269815

/-! ## A269815.P13481607863509711443

`A094373(2*n+1)+A154117(2*n)-A154117(n+1)`
-/

namespace A269815.P13481607863509711443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (2 * n + 1) + (A154117 (2 * n) - A154117 (n + 1))

end

end A269815.P13481607863509711443

namespace A269815

/-- `A094373(2*n+1)+A154117(2*n)-A154117(n+1)` -/
def P13481607863509711443.Spec : Prop :=
  ∀ n, P13481607863509711443.a n = A269815 n

end A269815

/-! ## A269815.P7544577805980322397

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=37, a(3)=185`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269815

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P7544577805980322397.Spec : Prop :=
  ∀ n, P7544577805980322397.a n = A269815 n

theorem P7544577805980322397.correct : P7544577805980322397.Spec := by
  intro n
  simp only [A269815]

end A269815

/-! ## A269815.P4978750015162429225

`2-A000122(n²)+A171479(n)-A003945(n)`
-/

namespace A269815.P4978750015162429225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 (n ^ 2) + (A171479 n - A003945 n)

end

end A269815.P4978750015162429225

namespace A269815

/-- `2-A000122(n²)+A171479(n)-A003945(n)` -/
def P4978750015162429225.Spec : Prop :=
  ∀ n, P4978750015162429225.a n = A269815 n

end A269815

/-!
# A269816: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A269816, there is no canonical definition to state claims against.
-/

/-! ## A269816.P10932225583332562329

`∑[A269814(n)]`
-/

namespace A269816.P10932225583332562329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269816.P10932225583332562329

/-! ## A269816.P15629954244648841410

`A269814(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A269816.P15629954244648841410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269814 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A269816.P15629954244648841410

/-! ## A269816.P11433074431583379768

`∑[∑[A269817(n)]+1-A269817(n)]`
-/

namespace A269816.P11433074431583379768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269817 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A269817 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269816.P11433074431583379768

/-! ## A269816.P13325880552908811218

`a(n-1)+A269814(n)+A000007(n)` with `a(0)=1`
-/

namespace A269816.P13325880552908811218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A269814 n + A000007 n)

end

end A269816.P13325880552908811218

/-! ## A269816.P3834625004389168016

`a(n-1)+A269814(n)%A022280(n)` with `a(0)=1`
-/

namespace A269816.P3834625004389168016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A269814 n) (A022280 n)

end

end A269816.P3834625004389168016

/-!
# A269817: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A269817, there is no canonical definition to state claims against.
-/

/-! ## A269817.P3609904301752019282

`Δ[A269814(n)]`
-/

namespace A269817.P3609904301752019282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269817.P3609904301752019282

/-! ## A269817.P13395006060938424314

`A269814(n+1)-A269814(n)`
-/

namespace A269817.P13395006060938424314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269814 (n + 1) - A269814 n

end

end A269817.P13395006060938424314

/-! ## A269817.P6209797954784090927

`A269814(n+1)+or(-A269814(n), A101605(n+2))`
-/

namespace A269817.P6209797954784090927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269814 (n + 1) + Int.lor (-A269814 n) (A101605 (n + 2))

end

end A269817.P6209797954784090927

/-! ## A269817.P15452068558005504855

`A269814(n+1)+or(-A269814(n), A287801(n+3))`
-/

namespace A269817.P15452068558005504855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269814 (n + 1) + Int.lor (-A269814 n) (A287801 (n + 3))

end

end A269817.P15452068558005504855

/-! ## A269817.P16980357017213490932

`A269814(n+1)+A269814(n)/A349920(A020639(n+2))`
-/

namespace A269817.P16980357017213490932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269814 (n + 1) : ℚ) + (A269814 n : ℚ) / (A349920 (A020639 (n + 2)).toNat : ℚ)

end

end A269817.P16980357017213490932

/-! ## A269817.P12570529970542239805

`A269814(n+1)+or(-A269814(n), A000302(3*n+2))`
-/

namespace A269817.P12570529970542239805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269814 (n + 1) + Int.lor (-A269814 n) (A000302 (3 * n + 2))

end

end A269817.P12570529970542239805

/-! ## A269817.P17587907221863694153

`A269814(n+1)+A001489(A269814(n)+1)+1`
-/

namespace A269817.P17587907221863694153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269814 (n + 1) + (A001489 (A269814 n + 1).toNat + 1)

end

end A269817.P17587907221863694153

/-!
# A269818: Numbers coprime to the number of their even divisors.

The programs for A269818, there is no canonical definition to state claims against.
-/

/-! ## A269818.P1898644103287607944

`record[A117358(A350313(n+1)²)]`
-/

namespace A269818.P1898644103287607944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A350313 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269818.P1898644103287607944

/-! ## A269818.P13847194539215879866

`eq[A077119(2*n), A195470(A263728(n+3))]`
-/

namespace A269818.P13847194539215879866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077119 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (A263728 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269818.P13847194539215879866

/-! ## A269818.P14952328554142957610

`eq[A010054(A007532(2*n+1)), A173517(2*n)]`
-/

namespace A269818.P14952328554142957610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007532 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269818.P14952328554142957610

/-! ## A269818.P16925669992850799535

`A000267(A000394(n)^4)`
-/

namespace A269818.P16925669992850799535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A000394 n ^ 4).toNat

end

end A269818.P16925669992850799535

/-!
# A269819: Numbers that are congruent to {5, 11, 13, 19} mod 24.

The programs for A269819, the canonical program `A269819.P5801716747965453055` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269819 has offset 1).

The definition of A269819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269819.P5801716747965453055

`a(n-4)+24` with `a(0)=5, a(1)=11, a(2)=13, a(3)=19`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269819

/-- `a(n-4)+24` -/
def P5801716747965453055.Spec : Prop :=
  ∀ n, (P5801716747965453055.a n : ℤ) = A269819 (n + 1)

theorem P5801716747965453055.correct : P5801716747965453055.Spec := by
  intro n
  simp only [A269819, Nat.add_sub_cancel]

end A269819

/-! ## A269819.P6865450583803586157

`sqrt(48*A268539(n+1)+25)`
-/

namespace A269819.P6865450583803586157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (48 * A268539 (n + 1) + 25 : ℝ)

end

end A269819.P6865450583803586157

namespace A269819

/-- `sqrt(48*A268539(n+1)+25)` -/
def P6865450583803586157.Spec : Prop :=
  ∀ n, P6865450583803586157.a n = (A269819 (n + 1) : ℝ)

end A269819

/-! ## A269819.P6781875226460898747

`or(4, 6*(n-1))+7`
-/

namespace A269819.P6781875226460898747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (6 * ((n : ℤ) - 1)) + 7

end

end A269819.P6781875226460898747

namespace A269819

/-- `or(4, 6*(n-1))+7` -/
def P6781875226460898747.Spec : Prop :=
  ∀ n, P6781875226460898747.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P309557844643280649

`xor(2, 5*n)+n+3`
-/

namespace A269819.P309557844643280649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (5 * n) + (n + 3)

end

end A269819.P309557844643280649

namespace A269819

/-- `xor(2, 5*n)+n+3` -/
def P309557844643280649.Spec : Prop :=
  ∀ n, (P309557844643280649.a n : ℤ) = A269819 (n + 1)

end A269819

/-! ## A269819.P13670952858284174061

`∑[12-a(n-2)]` with `a(0)=5, a(1)=6, a(2)=2`
-/

namespace A269819.P13670952858284174061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 2] fun n f1 =>
  12 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269819.P13670952858284174061

namespace A269819

/-- `∑[12-a(n-2)]` -/
def P13670952858284174061.Spec : Prop :=
  ∀ n, P13670952858284174061.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P12512328294141605246

`6*n-or(2*n, -5)`
-/

namespace A269819.P12512328294141605246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - Int.lor (2 * n : ℤ) (-5)

end

end A269819.P12512328294141605246

namespace A269819

/-- `6*n-or(2*n, -5)` -/
def P12512328294141605246.Spec : Prop :=
  ∀ n, P12512328294141605246.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P10847095059421418589

`xor(2, Δ[or(4, 3*(n²-1))])`
-/

namespace A269819.P10847095059421418589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (3 * ((n ^ 2 : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A269819.P10847095059421418589

namespace A269819

/-- `xor(2, Δ[or(4, 3*(n²-1))])` -/
def P10847095059421418589.Spec : Prop :=
  ∀ n, P10847095059421418589.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P13869380265409840195

`ogf((5+x+x^2+5x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A269819.P13869380265409840195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, 1, 5] [1, -2, 2, -2, 1] n

end

end A269819.P13869380265409840195

namespace A269819

/-- `ogf((5+x+x^2+5x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P13869380265409840195.Spec : Prop :=
  ∀ n, P13869380265409840195.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P871357129752047278

`2*and(3*n+1, -3)+3`
-/

namespace A269819.P871357129752047278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (3 * n + 1 : ℤ) (-3) + 3

end

end A269819.P871357129752047278

namespace A269819

/-- `2*and(3*n+1, -3)+3` -/
def P871357129752047278.Spec : Prop :=
  ∀ n, P871357129752047278.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P1274539075210917076

`6*(n+1)-and(5, 2*n+1)`
-/

namespace A269819.P1274539075210917076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - (Nat.land 5 (2 * n + 1) : ℤ)

end

end A269819.P1274539075210917076

namespace A269819

/-- `6*(n+1)-and(5, 2*n+1)` -/
def P1274539075210917076.Spec : Prop :=
  ∀ n, P1274539075210917076.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P18328745118138169902

`2*or(2, n)+3*n+1+n`
-/

namespace A269819.P18328745118138169902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 2 n + (3 * n + 1) + n

end

end A269819.P18328745118138169902

namespace A269819

/-- `2*or(2, n)+3*n+1+n` -/
def P18328745118138169902.Spec : Prop :=
  ∀ n, (P18328745118138169902.a n : ℤ) = A269819 (n + 1)

end A269819

/-! ## A269819.P3543410179073186795

`2*(and(2, n+2)+2*n)+2*n+1`
-/

namespace A269819.P3543410179073186795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.land 2 (n + 2) + 2 * n) + (2 * n + 1)

end

end A269819.P3543410179073186795

namespace A269819

/-- `2*(and(2, n+2)+2*n)+2*n+1` -/
def P3543410179073186795.Spec : Prop :=
  ∀ n, (P3543410179073186795.a n : ℤ) = A269819 (n + 1)

end A269819

/-! ## A269819.P13827206887161524950

`A016885(n)+xor(2, n)`
-/

namespace A269819.P13827206887161524950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + (Nat.xor 2 n : ℤ)

end

end A269819.P13827206887161524950

namespace A269819

/-- `A016885(n)+xor(2, n)` -/
def P13827206887161524950.Spec : Prop :=
  ∀ n, P13827206887161524950.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P10316678989953563287

`abs(A134429(3*n+1))`
-/

namespace A269819.P10316678989953563287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134429 (3 * n + 1)|

end

end A269819.P10316678989953563287

namespace A269819

/-- `abs(A134429(3*n+1))` -/
def P10316678989953563287.Spec : Prop :=
  ∀ n, P10316678989953563287.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P12317483619701592204

`A016969(n)-and(2, n)²`
-/

namespace A269819.P12317483619701592204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - (Nat.land 2 n ^ 2 : ℤ)

end

end A269819.P12317483619701592204

namespace A269819

/-- `A016969(n)-and(2, n)²` -/
def P12317483619701592204.Spec : Prop :=
  ∀ n, P12317483619701592204.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P8003296804277071078

`2*A174398(n+1)+3`
-/

namespace A269819.P8003296804277071078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174398 (n + 1) + 3

end

end A269819.P8003296804277071078

namespace A269819

/-- `2*A174398(n+1)+3` -/
def P8003296804277071078.Spec : Prop :=
  ∀ n, P8003296804277071078.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P16436041371167935793

`A004443(n)+5*n+3`
-/

namespace A269819.P16436041371167935793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n + (5 * n + 3 : ℤ)

end

end A269819.P16436041371167935793

namespace A269819

/-- `A004443(n)+5*n+3` -/
def P16436041371167935793.Spec : Prop :=
  ∀ n, P16436041371167935793.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P16636682855100214454

`A016885(n)+A004443(n)`
-/

namespace A269819.P16636682855100214454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + A004443 n

end

end A269819.P16636682855100214454

namespace A269819

/-- `A016885(n)+A004443(n)` -/
def P16636682855100214454.Spec : Prop :=
  ∀ n, P16636682855100214454.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P2295556627688327097

`A132429(n)+A091999(n+1)`
-/

namespace A269819.P2295556627688327097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 n + A091999 (n + 1)

end

end A269819.P2295556627688327097

namespace A269819

/-- `A132429(n)+A091999(n+1)` -/
def P2295556627688327097.Spec : Prop :=
  ∀ n, P2295556627688327097.a n = A269819 (n + 1)

end A269819

/-! ## A269819.P1332307283411671544

`A256008(n+1)+A016873(n)`
-/

namespace A269819.P1332307283411671544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (n + 1) + A016873 n

end

end A269819.P1332307283411671544

namespace A269819

/-- `A256008(n+1)+A016873(n)` -/
def P1332307283411671544.Spec : Prop :=
  ∀ n, P1332307283411671544.a n = A269819 (n + 1)

end A269819

/-!
# A269820: a(n) = 2*(n-1)*a(n-1) - a(n-2) + 2*(n-2)*a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A269820, the canonical program `A269820.P1538771610956602373` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269820 has offset 0).

The definition of A269820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n-1)*a(n-1)-a(n-2)+2*(n-2)*a(n-3)` (program `A269820.P1538771610956602373`, by `A269820.P1538771610956602373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269820.P1538771610956602373

`2*(n-1)*a(n-1)-a(n-2)+2*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269820

/-- `2*(n-1)*a(n-1)-a(n-2)+2*(n-2)*a(n-3)` -/
def P1538771610956602373.Spec : Prop :=
  ∀ n, P1538771610956602373.a n = A269820 n

theorem P1538771610956602373.correct : P1538771610956602373.Spec := by
  intro n
  simp only [A269820]

end A269820

/-! ## A269820.P14397313698154941329

`and(A084218(3*(n+1)), A084251(A006171(n)))`
-/

namespace A269820.P14397313698154941329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084218 (3 * (n + 1))) (A084251 (A006171 n).toNat)

end

end A269820.P14397313698154941329

namespace A269820

/-- `and(A084218(3*(n+1)), A084251(A006171(n)))` -/
def P14397313698154941329.Spec : Prop :=
  ∀ n, P14397313698154941329.a n = A269820 n

end A269820

/-!
# A269821: Number of n X n 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling four exactly once.

The programs for A269821, there is no canonical definition to state claims against.
-/

/-! ## A269821.P13579753435450354998

`A269829((n+1)²+n²)`
-/

namespace A269821.P13579753435450354998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 ((n + 1) ^ 2 + n ^ 2)

end

end A269821.P13579753435450354998

/-!
# A269822: Number of n X 1 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling four exactly once.

The programs for A269822, the canonical program `A269822.P12553157050620850192` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269822 has offset 1).

The definition of A269822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269822.P9558977597470506682

`ogf(5x/(1-8x+16x^2))`
-/

namespace A269822.P9558977597470506682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -8, 16] n

end

end A269822.P9558977597470506682

namespace A269822

/-- `ogf(5x/(1-8x+16x^2))` -/
def P9558977597470506682.Spec : Prop :=
  ∀ n, P9558977597470506682.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P12553157050620850192

`5*4^(n-1)*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269822

/-- `5*4^(n-1)*n` -/
def P12553157050620850192.Spec : Prop :=
  ∀ n, P12553157050620850192.a n = (A269822 (n + 1) : ℚ)

end A269822

/-! ## A269822.P6439463338328706410

`abs(2*(2/(n-1)+2)*a(n-1))` with `a(0)=0, a(1)=5`
-/

namespace A269822.P6439463338328706410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  |2 * ((2 / ((n : ℤ) - 1 : ℚ) + 2) * a (n - 1))|

end

end A269822.P6439463338328706410

namespace A269822

/-- `abs(2*(2/(n-1)+2)*a(n-1))` -/
def P6439463338328706410.Spec : Prop :=
  ∀ n, P6439463338328706410.a n = (A269822 (n + 1) : ℚ)

end A269822

/-! ## A269822.P3795147918174141962

`abs(2*2*a(n-1)/(1-1/n))` with `a(0)=0, a(1)=5`
-/

namespace A269822.P3795147918174141962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  |2 * (2 * (a (n - 1) / (1 - 1 / (n : ℚ))))|

end

end A269822.P3795147918174141962

namespace A269822

/-- `abs(2*2*a(n-1)/(1-1/n))` -/
def P3795147918174141962.Spec : Prop :=
  ∀ n, P3795147918174141962.a n = (A269822 (n + 1) : ℚ)

end A269822

/-! ## A269822.P8003430427999328480

`floor(2*2*a(n-1)/(1-1/n))` with `a(0)=0, a(1)=5`
-/

namespace A269822.P8003430427999328480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  ⌊2 * (2 * ((a (n - 1) : ℚ) / (1 - 1 / (n : ℚ))))⌋

end

end A269822.P8003430427999328480

namespace A269822

/-- `floor(2*2*a(n-1)/(1-1/n))` -/
def P8003430427999328480.Spec : Prop :=
  ∀ n, P8003430427999328480.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P13063561727516777692

`record[5*A235789(n)]`
-/

namespace A269822.P13063561727516777692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269822.P13063561727516777692

namespace A269822

/-- `record[5*A235789(n)]` -/
def P13063561727516777692.Spec : Prop :=
  ∀ n, P13063561727516777692.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P18314446657664358513

`lcm(n, n*A003947(n))`
-/

namespace A269822.P18314446657664358513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A003947 n)

end

end A269822.P18314446657664358513

namespace A269822

/-- `lcm(n, n*A003947(n))` -/
def P18314446657664358513.Spec : Prop :=
  ∀ n, (P18314446657664358513.a n : ℤ) = A269822 (n + 1)

end A269822

/-! ## A269822.P959399438949562312

`abs(n*A166577(2*n))`
-/

namespace A269822.P959399438949562312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A166577 (2 * n)|

end

end A269822.P959399438949562312

namespace A269822

/-- `abs(n*A166577(2*n))` -/
def P959399438949562312.Spec : Prop :=
  ∀ n, P959399438949562312.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P8201454563081226885

`abs(n*Δ[A305750(2*n)])`
-/

namespace A269822.P8201454563081226885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A269822.P8201454563081226885

namespace A269822

/-- `abs(n*Δ[A305750(2*n)])` -/
def P8201454563081226885.Spec : Prop :=
  ∀ n, P8201454563081226885.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P10959570508288711714

`ceil(n*A084215(Δ[n²])/2)`
-/

namespace A269822.P10959570508288711714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((A084215 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)⌉

end

end A269822.P10959570508288711714

namespace A269822

/-- `ceil(n*A084215(Δ[n²])/2)` -/
def P10959570508288711714.Spec : Prop :=
  ∀ n, P10959570508288711714.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P17604282507848717445

`ceil(n*A000302(n)*cosh(log(2)))`
-/

namespace A269822.P17604282507848717445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A000302 n : ℝ) * Real.cosh (Real.log (2 : ℝ))⌉

end

end A269822.P17604282507848717445

namespace A269822

/-- `ceil(n*A000302(n)*cosh(log(2)))` -/
def P17604282507848717445.Spec : Prop :=
  ∀ n, P17604282507848717445.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P13921535042949924636

`A292540(n+1)/4+4*a(n-1)` with `a(0)=0`
-/

namespace A269822.P13921535042949924636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A292540 (n + 1) : ℚ) / 4 + 4 * a (n - 1)

end

end A269822.P13921535042949924636

namespace A269822

/-- `A292540(n+1)/4+4*a(n-1)` -/
def P13921535042949924636.Spec : Prop :=
  ∀ n, P13921535042949924636.a n = (A269822 (n + 1) : ℚ)

end A269822

/-! ## A269822.P8922828263720575257

`A018215(n)+A002697(n)`
-/

namespace A269822.P8922828263720575257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n + A002697 n

end

end A269822.P8922828263720575257

namespace A269822

/-- `A018215(n)+A002697(n)` -/
def P8922828263720575257.Spec : Prop :=
  ∀ n, P8922828263720575257.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P15227480282938584476

`lcm(A002697(n), A008587(n))`
-/

namespace A269822.P15227480282938584476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002697 n) (A008587 n)

end

end A269822.P15227480282938584476

namespace A269822

/-- `lcm(A002697(n), A008587(n))` -/
def P15227480282938584476.Spec : Prop :=
  ∀ n, (P15227480282938584476.a n : ℤ) = A269822 (n + 1)

end A269822

/-! ## A269822.P17081449674087110242

`A002697(n)+A001787(2*n)`
-/

namespace A269822.P17081449674087110242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A001787 (2 * n)

end

end A269822.P17081449674087110242

namespace A269822

/-- `A002697(n)+A001787(2*n)` -/
def P17081449674087110242.Spec : Prop :=
  ∀ n, P17081449674087110242.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P17033670809594912012

`A002697(n)+2*A002699(n)`
-/

namespace A269822.P17033670809594912012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + 2 * A002699 n

end

end A269822.P17033670809594912012

namespace A269822

/-- `A002697(n)+2*A002699(n)` -/
def P17033670809594912012.Spec : Prop :=
  ∀ n, P17033670809594912012.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P13284555814290429044

`A018215(n)+A002699(n)/2`
-/

namespace A269822.P13284555814290429044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018215 n : ℚ) + (A002699 n : ℚ) / 2

end

end A269822.P13284555814290429044

namespace A269822

/-- `A018215(n)+A002699(n)/2` -/
def P13284555814290429044.Spec : Prop :=
  ∀ n, P13284555814290429044.a n = (A269822 (n + 1) : ℚ)

end A269822

/-! ## A269822.P12668144452179352036

`A002697(n)+n*A000302(n)`
-/

namespace A269822.P12668144452179352036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (n : ℤ) * A000302 n

end

end A269822.P12668144452179352036

namespace A269822

/-- `A002697(n)+n*A000302(n)` -/
def P12668144452179352036.Spec : Prop :=
  ∀ n, P12668144452179352036.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P18315556058452478782

`A002697(n)+n*A000079(n)²`
-/

namespace A269822.P18315556058452478782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (n : ℤ) * A000079 n ^ 2

end

end A269822.P18315556058452478782

namespace A269822

/-- `A002697(n)+n*A000079(n)²` -/
def P18315556058452478782.Spec : Prop :=
  ∀ n, P18315556058452478782.a n = A269822 (n + 1)

end A269822

/-! ## A269822.P5920927953642257397

`A049610(2*n)+A001787(2*n)`
-/

namespace A269822.P5920927953642257397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) + A001787 (2 * n)

end

end A269822.P5920927953642257397

namespace A269822

/-- `A049610(2*n)+A001787(2*n)` -/
def P5920927953642257397.Spec : Prop :=
  ∀ n, P5920927953642257397.a n = A269822 (n + 1)

end A269822

/-!
# A269823: Number of n X 2 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totaling four exactly once.

The programs for A269823, there is no canonical definition to state claims against.
-/

/-! ## A269823.P14227928545562395686

`A269829(∑[n+1]+2)`
-/

namespace A269823.P14227928545562395686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269823.P14227928545562395686

/-! ## A269823.P6503627412318062985

`record[A269829(Δ[A003453(n+5)])]`
-/

namespace A269823.P6503627412318062985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269823.P6503627412318062985

/-! ## A269823.P1323043845555196753

`record[root(A269829(3*n+2), A228570(n))]`
-/

namespace A269823.P1323043845555196753
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269829 (3 * n + 2) : ℝ) ^ (1 / (A228570 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269823.P1323043845555196753

/-! ## A269823.P11746293251130363735

`record[root(A269829(n+2), A146958(n+2))]`
-/

namespace A269823.P11746293251130363735
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269829 (n + 2) : ℝ) ^ (1 / (A146958 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269823.P11746293251130363735

/-!
# A269824: Number of nX3 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling four exactly once.

The programs for A269824, there is no canonical definition to state claims against.
-/

/-! ## A269824.P2283467354269513941

`A269829(∑[n+2]+4)`
-/

namespace A269824.P2283467354269513941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269824.P2283467354269513941

/-! ## A269824.P9736094942852588695

`lcm(2, A269829(A167614(n+1)))`
-/

namespace A269824.P9736094942852588695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269829 (A167614 (n + 1)).toNat)

end

end A269824.P9736094942852588695

/-! ## A269824.P10870825081378863950

`A269829(A167614(n+1))+A034539(n+1)`
-/

namespace A269824.P10870825081378863950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A167614 (n + 1)).toNat + A034539 (n + 1)

end

end A269824.P10870825081378863950

/-! ## A269824.P12945324054462343225

`A269829(A167614(n+1))%A263554(n+1)`
-/

namespace A269824.P12945324054462343225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269829 (A167614 (n + 1)).toNat) (A263554 (n + 1))

end

end A269824.P12945324054462343225

/-! ## A269824.P17877647618394012320

`A040372(2*n+1)*A269829(A167614(n+1))`
-/

namespace A269824.P17877647618394012320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040372 (2 * n + 1) * A269829 (A167614 (n + 1)).toNat

end

end A269824.P17877647618394012320

/-!
# A269825: Number of nX4 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling four exactly once.

The programs for A269825, there is no canonical definition to state claims against.
-/

/-! ## A269825.P9535853907206833036

`A269829(A374004(n+1))`
-/

namespace A269825.P9535853907206833036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A374004 (n + 1)).toNat

end

end A269825.P9535853907206833036

/-! ## A269825.P3787898165632927919

`A269829(A141214(n)+7)`
-/

namespace A269825.P3787898165632927919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A141214 n + 7).toNat

end

end A269825.P3787898165632927919

/-! ## A269825.P378506530701529178

`A269829(A052905(n)+9)`
-/

namespace A269825.P378506530701529178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A052905 n + 9).toNat

end

end A269825.P378506530701529178

/-! ## A269825.P6073888660666111

`A269829(A055999(n)+10)`
-/

namespace A269825.P6073888660666111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A055999 n + 10).toNat

end

end A269825.P6073888660666111

/-! ## A269825.P8962205064430405431

`A269829(A167614(n+2)+1)`
-/

namespace A269825.P8962205064430405431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A167614 (n + 2) + 1).toNat

end

end A269825.P8962205064430405431

/-!
# A269826: Number of n X 5 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling four exactly once.

The programs for A269826, there is no canonical definition to state claims against.
-/

/-! ## A269826.P7911847145506683228

`A269829(A374005(n+1))`
-/

namespace A269826.P7911847145506683228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A374005 (n + 1)).toNat

end

end A269826.P7911847145506683228

/-! ## A269826.P3014520192433738131

`A269829(A155212(n)+13)`
-/

namespace A269826.P3014520192433738131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A155212 n + 13).toNat

end

end A269826.P3014520192433738131

/-! ## A269826.P2751074552809093100

`A269829(A056000(n)+15)`
-/

namespace A269826.P2751074552809093100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A056000 n + 15).toNat

end

end A269826.P2751074552809093100

/-!
# A269827: Number of nX6 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling four exactly once.

The programs for A269827, there is no canonical definition to state claims against.
-/

/-! ## A269827.P16964583502716978656

`A269829(A374007(n+1))`
-/

namespace A269827.P16964583502716978656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A374007 (n + 1)).toNat

end

end A269827.P16964583502716978656

/-! ## A269827.P16178813558522500167

`A269829(eq[6, A195079(n+1)])`
-/

namespace A269827.P16178813558522500167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269827.P16178813558522500167

/-!
# A269828: 

The programs for A269828, there is no canonical definition to state claims against.
-/

/-! ## A269828.P14293166088476842386

`A269829(A000217(n+7)-n)`
-/

namespace A269828.P14293166088476842386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269829 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A269828.P14293166088476842386

/-!
# A269829: T(n,k)=Number of nXk 0..4 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling four exactly once.

The programs for A269829, there is no canonical definition to state claims against.
-/

/-! ## A269829.P112804326823540923

`A263580(5*a(n-1))` with `a(0)=0, a(1)=5, a(2)=5`
-/

namespace A269829.P112804326823540923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 5] fun n a =>
  A263580 (5 * a (n - 1)).toNat

end

end A269829.P112804326823540923

/-!
# A269831: Least term of height n in Recamán's sequence A005132.

The programs for A269831, there is no canonical definition to state claims against.
-/

/-! ## A269831.P18061466430330235164

`A064293(n+1)-char[2]`
-/

namespace A269831.P18061466430330235164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064293 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A269831.P18061466430330235164

/-! ## A269831.P387390584748923319

`xor(A064293(n+1), A185012(n))`
-/

namespace A269831.P387390584748923319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064293 (n + 1)) (A185012 n)

end

end A269831.P387390584748923319

/-! ## A269831.P1856013852330124281

`xor(A064293(n+1), A328794(n))`
-/

namespace A269831.P1856013852330124281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064293 (n + 1)) (A328794 n)

end

end A269831.P1856013852330124281

/-! ## A269831.P13408977832209827653

`A005132(A064294(n+1))-char[2]`
-/

namespace A269831.P13408977832209827653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A064294 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A269831.P13408977832209827653

/-! ## A269831.P8174169394374191095

`xor(char[A003358(n+1)], A064293(n+1))`
-/

namespace A269831.P8174169394374191095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A064293 (n + 1))

end

end A269831.P8174169394374191095

/-!
# A269832: Greatest term of height n in Recamán's sequence A005132.

The programs for A269832, there is no canonical definition to state claims against.
-/

/-! ## A269832.P2276859099300201339

`A354044(n)+A226898(A026016(n+1))`
-/

namespace A269832.P2276859099300201339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A226898 (A026016 (n + 1)).toNat

end

end A269832.P2276859099300201339

/-!
# A269834: 

The programs for A269834, there is no canonical definition to state claims against.
-/

/-! ## A269834.P17298191490856219216

`A052531(A001127(n))`
-/

namespace A269834.P17298191490856219216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 (A001127 n).toNat

end

end A269834.P17298191490856219216

/-!
# A269837: Irregular triangle read by rows: even terms of A094728(n+1) divided by 4.

The programs for A269837, there is no canonical definition to state claims against.
-/

/-! ## A269837.P10625156751580914916

`A094053(eq[0, floor(sqrt(8*n+1))%2])`
-/

namespace A269837.P10625156751580914916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A269837.P10625156751580914916

/-! ## A269837.P10030650063134259886

`A350634(C(ceil(2*sqrt(n+1)), 2)-n)`
-/

namespace A269837.P10030650063134259886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350634 (Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 - n)

end

end A269837.P10030650063134259886

/-! ## A269837.P11340485151762442062

`A094728(comp[n²+n]+1+n)/4`
-/

namespace A269837.P11340485151762442062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094728 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n) : ℚ) / 4

end

end A269837.P11340485151762442062

/-! ## A269837.P2945885960760941510

`A003991(2*n+1-n%floor(sqrt(n+1)))`
-/

namespace A269837.P2945885960760941510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (2 * n + 1 - n % Nat.sqrt (n + 1))

end

end A269837.P2945885960760941510

/-! ## A269837.P2305218390775680431

`C(ceil(2*sqrt(n+1)), 2)-n-A271584(n)`
-/

namespace A269837.P2305218390775680431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - A271584 n

end

end A269837.P2305218390775680431

/-! ## A269837.P6766928070545867593

`A094053(comp[A245300(n)])`
-/

namespace A269837.P6766928070545867593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A269837.P6766928070545867593

/-! ## A269837.P14189005589017027497

`A075362(A090894(n)+1)`
-/

namespace A269837.P14189005589017027497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A090894 n + 1).toNat

end

end A269837.P14189005589017027497

/-! ## A269837.P3995183729007994088

`A075362(A091995(n+1))`
-/

namespace A269837.P3995183729007994088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A091995 (n + 1)).toNat

end

end A269837.P3995183729007994088

/-! ## A269837.P4130732118887015233

`A144329(A274428(n+1))`
-/

namespace A269837.P4130732118887015233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 (A274428 (n + 1)).toNat

end

end A269837.P4130732118887015233

/-! ## A269837.P1215086537474628322

`A350634(A271647(n+1))`
-/

namespace A269837.P1215086537474628322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350634 (A271647 (n + 1)).toNat

end

end A269837.P1215086537474628322

/-!
# A269840: Lesser of twin primes where both are the sum of 3 nonzero squares.

The programs for A269840, the canonical program `A269840.P7838285007290012038` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269840 has offset 1).

The definition of A269840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269840.P7838285007290012038

`A270225(n+3)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A269840

/-- `A270225(n+3)` -/
def P7838285007290012038.Spec : Prop :=
  ∀ n, P7838285007290012038.a n = A269840 (n + 1)

theorem P7838285007290012038.correct : P7838285007290012038.Spec := by
  intro n
  simp only [A269840, Nat.add_sub_cancel]

end A269840

/-! ## A269840.P3535146251501923842

`record[A270225(A052938(A052938(n)))]`
-/

namespace A269840.P3535146251501923842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270225 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269840.P3535146251501923842

namespace A269840

/-- `record[A270225(A052938(A052938(n)))]` -/
def P3535146251501923842.Spec : Prop :=
  ∀ n, P3535146251501923842.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P13149244504057361033

`p?[A191059(n+2)-2]`
-/

namespace A269840.P13149244504057361033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269840.P13149244504057361033

namespace A269840

/-- `p?[A191059(n+2)-2]` -/
def P13149244504057361033.Spec : Prop :=
  ∀ n, P13149244504057361033.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P13173187265122797040

`p?[A003629(n+5)-2]`
-/

namespace A269840.P13173187265122797040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 5) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269840.P13173187265122797040

namespace A269840

/-- `p?[A003629(n+5)-2]` -/
def P13173187265122797040.Spec : Prop :=
  ∀ n, P13173187265122797040.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P1686873411452887587

`∩[A085317(n+1)-2, A085317(n+1)]`
-/

namespace A269840.P1686873411452887587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269840.P1686873411452887587

namespace A269840

/-- `∩[A085317(n+1)-2, A085317(n+1)]` -/
def P1686873411452887587.Spec : Prop :=
  ∀ n, (P1686873411452887587.a n : ℤ) = A269840 (n + 1)

end A269840

/-! ## A269840.P6603654793638606845

`filter[A033200(n+3), A353463(#)]`
-/

namespace A269840.P6603654793638606845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A269840.P6603654793638606845

namespace A269840

/-- `filter[A033200(n+3), A353463(#)]` -/
def P6603654793638606845.Spec : Prop :=
  ∀ n, P6603654793638606845.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P10386860626886197335

`filter[A038877(n+3), A353463(#)]`
-/

namespace A269840.P10386860626886197335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A269840.P10386860626886197335

namespace A269840

/-- `filter[A038877(n+3), A353463(#)]` -/
def P10386860626886197335.Spec : Prop :=
  ∀ n, P10386860626886197335.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P7114821998575560342

`filter[A106949(n+3), A353463(#)]`
-/

namespace A269840.P7114821998575560342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A269840.P7114821998575560342

namespace A269840

/-- `filter[A106949(n+3), A353463(#)]` -/
def P7114821998575560342.Spec : Prop :=
  ∀ n, P7114821998575560342.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P9733378405850070050

`filter[A243768(n+3), A353463(#)]`
-/

namespace A269840.P9733378405850070050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243768 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A269840.P9733378405850070050

namespace A269840

/-- `filter[A243768(n+3), A353463(#)]` -/
def P9733378405850070050.Spec : Prop :=
  ∀ n, P9733378405850070050.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P3198062286405518829

`filter[A033200(n+3), A296212(#)]`
-/

namespace A269840.P3198062286405518829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A269840.P3198062286405518829

namespace A269840

/-- `filter[A033200(n+3), A296212(#)]` -/
def P3198062286405518829.Spec : Prop :=
  ∀ n, P3198062286405518829.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P4636646548769364202

`filter[A038877(n+3), A296212(#)]`
-/

namespace A269840.P4636646548769364202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A269840.P4636646548769364202

namespace A269840

/-- `filter[A038877(n+3), A296212(#)]` -/
def P4636646548769364202.Spec : Prop :=
  ∀ n, P4636646548769364202.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P13375814535791086260

`filter[A106949(n+3), A296212(#)]`
-/

namespace A269840.P13375814535791086260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A269840.P13375814535791086260

namespace A269840

/-- `filter[A106949(n+3), A296212(#)]` -/
def P13375814535791086260.Spec : Prop :=
  ∀ n, P13375814535791086260.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P17339892915463470047

`filter[A243768(n+3), A296212(#)]`
-/

namespace A269840.P17339892915463470047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243768 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A269840.P17339892915463470047

namespace A269840

/-- `filter[A243768(n+3), A296212(#)]` -/
def P17339892915463470047.Spec : Prop :=
  ∀ n, P17339892915463470047.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P9592117783345129196

`p?[p?[A311101(n)]-2]`
-/

namespace A269840.P9592117783345129196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269840.P9592117783345129196

namespace A269840

/-- `p?[p?[A311101(n)]-2]` -/
def P9592117783345129196.Spec : Prop :=
  ∀ n, P9592117783345129196.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P2061843510658758045

`p?[A004273(A224486(n+5))]`
-/

namespace A269840.P2061843510658758045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A224486 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269840.P2061843510658758045

namespace A269840

/-- `p?[A004273(A224486(n+5))]` -/
def P2061843510658758045.Spec : Prop :=
  ∀ n, P2061843510658758045.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P9284842336067399113

`p?[A023444(p?[A311101(n)])]`
-/

namespace A269840.P9284842336067399113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269840.P9284842336067399113

namespace A269840

/-- `p?[A023444(p?[A311101(n)])]` -/
def P9284842336067399113.Spec : Prop :=
  ∀ n, P9284842336067399113.a n = A269840 (n + 1)

end A269840

/-! ## A269840.P16579617145243911441

`filter[A106949(n+3), A164292(#)]`
-/

namespace A269840.P16579617145243911441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A269840.P16579617145243911441

namespace A269840

/-- `filter[A106949(n+3), A164292(#)]` -/
def P16579617145243911441.Spec : Prop :=
  ∀ n, P16579617145243911441.a n = A269840 (n + 1)

end A269840

/-!
# A269841: Integers n such that A000330(n) is the sum of 2 nonzero squares.

The programs for A269841, there is no canonical definition to state claims against.
-/

/-! ## A269841.P18296993987288667988

`eq[1, A273874(n+1)]+1`
-/

namespace A269841.P18296993987288667988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269841.P18296993987288667988

/-! ## A269841.P1188952461714830605

`eq[1, A273874(A028310(n))]`
-/

namespace A269841.P1188952461714830605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273874 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269841.P1188952461714830605

/-! ## A269841.P13485671121261393892

`A020725(eq[1, A273874(n+1)])`
-/

namespace A269841.P13485671121261393892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269841.P13485671121261393892

/-!
# A269844: Primes equal to the sum of a pair of consecutive integers which are both squarefree.

The programs for A269844, the canonical program `A269844.P17306079981013533178` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269844 has offset 1).

The definition of A269844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269844.P17306079981013533178

`p?[A179017(n+2)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269844

/-- `p?[A179017(n+2)]` -/
def P17306079981013533178.Spec : Prop :=
  ∀ n, P17306079981013533178.a n = A269844 (n + 1)

theorem P17306079981013533178.correct : P17306079981013533178.Spec := by
  intro n
  simp only [A269844, Nat.add_sub_cancel]

end A269844

/-! ## A269844.P15254618717465682984

`filter[A179017(n+2), A010051(#)]`
-/

namespace A269844.P15254618717465682984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A269844.P15254618717465682984

namespace A269844

/-- `filter[A179017(n+2), A010051(#)]` -/
def P15254618717465682984.Spec : Prop :=
  ∀ n, P15254618717465682984.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P6508459437180299276

`filter[A179017(n+2), A069513(#)]`
-/

namespace A269844.P6508459437180299276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A269844.P6508459437180299276

namespace A269844

/-- `filter[A179017(n+2), A069513(#)]` -/
def P6508459437180299276.Spec : Prop :=
  ∀ n, P6508459437180299276.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P4744258246226299447

`∩[A040144(n+1), A179017(n+1)]`
-/

namespace A269844.P4744258246226299447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P4744258246226299447

namespace A269844

/-- `∩[A040144(n+1), A179017(n+1)]` -/
def P4744258246226299447.Spec : Prop :=
  ∀ n, (P4744258246226299447.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P15466519792560791270

`∩[A045344(n+1), A179017(n+1)]`
-/

namespace A269844.P15466519792560791270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P15466519792560791270

namespace A269844

/-- `∩[A045344(n+1), A179017(n+1)]` -/
def P15466519792560791270.Spec : Prop :=
  ∀ n, (P15466519792560791270.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P13398925507140011686

`∩[A083249(n+1), A179017(n+1)]`
-/

namespace A269844.P13398925507140011686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P13398925507140011686

namespace A269844

/-- `∩[A083249(n+1), A179017(n+1)]` -/
def P13398925507140011686.Spec : Prop :=
  ∀ n, (P13398925507140011686.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P18250090463019936863

`∩[A138837(n+1), A179017(n+1)]`
-/

namespace A269844.P18250090463019936863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P18250090463019936863

namespace A269844

/-- `∩[A138837(n+1), A179017(n+1)]` -/
def P18250090463019936863.Spec : Prop :=
  ∀ n, (P18250090463019936863.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P5489927862647876687

`∩[A140475(n+1), A179017(n+1)]`
-/

namespace A269844.P5489927862647876687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P5489927862647876687

namespace A269844

/-- `∩[A140475(n+1), A179017(n+1)]` -/
def P5489927862647876687.Spec : Prop :=
  ∀ n, (P5489927862647876687.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P10433505859420577906

`∩[A161428(n+1), A179017(n+1)]`
-/

namespace A269844.P10433505859420577906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P10433505859420577906

namespace A269844

/-- `∩[A161428(n+1), A179017(n+1)]` -/
def P10433505859420577906.Spec : Prop :=
  ∀ n, (P10433505859420577906.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P8398963930799969139

`∩[A161839(n+1), A179017(n+1)]`
-/

namespace A269844.P8398963930799969139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P8398963930799969139

namespace A269844

/-- `∩[A161839(n+1), A179017(n+1)]` -/
def P8398963930799969139.Spec : Prop :=
  ∀ n, (P8398963930799969139.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P12709131671288796062

`∩[A171577(n+1), A179017(n+1)]`
-/

namespace A269844.P12709131671288796062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P12709131671288796062

namespace A269844

/-- `∩[A171577(n+1), A179017(n+1)]` -/
def P12709131671288796062.Spec : Prop :=
  ∀ n, (P12709131671288796062.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P17845651202146526238

`∩[A179017(n+1), A215848(n+1)]`
-/

namespace A269844.P17845651202146526238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P17845651202146526238

namespace A269844

/-- `∩[A179017(n+1), A215848(n+1)]` -/
def P17845651202146526238.Spec : Prop :=
  ∀ n, (P17845651202146526238.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P6150511902816268666

`∩[A179017(n+1), A218582(n+1)]`
-/

namespace A269844.P6150511902816268666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269844.P6150511902816268666

namespace A269844

/-- `∩[A179017(n+1), A218582(n+1)]` -/
def P6150511902816268666.Spec : Prop :=
  ∀ n, (P6150511902816268666.a n : ℤ) = A269844 (n + 1)

end A269844

/-! ## A269844.P11338241394707435410

`p?[A007947(A172186(n+2)+A172186(n+2)+1)]`
-/

namespace A269844.P11338241394707435410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A172186 (n + 2) + A172186 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269844.P11338241394707435410

namespace A269844

/-- `p?[A007947(A172186(n+2)+A172186(n+2)+1)]` -/
def P11338241394707435410.Spec : Prop :=
  ∀ n, P11338241394707435410.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P3117262990790781143

`filter[A179017(n+2), A091862(#)]`
-/

namespace A269844.P3117262990790781143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A269844.P3117262990790781143

namespace A269844

/-- `filter[A179017(n+2), A091862(#)]` -/
def P3117262990790781143.Spec : Prop :=
  ∀ n, P3117262990790781143.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P18337786843479613352

`filter[A179017(n+2), A174897(#)]`
-/

namespace A269844.P18337786843479613352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A269844.P18337786843479613352

namespace A269844

/-- `filter[A179017(n+2), A174897(#)]` -/
def P18337786843479613352.Spec : Prop :=
  ∀ n, P18337786843479613352.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P15149297863908068706

`filter[A179017(n+2), A211487(#)]`
-/

namespace A269844.P15149297863908068706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A269844.P15149297863908068706

namespace A269844

/-- `filter[A179017(n+2), A211487(#)]` -/
def P15149297863908068706.Spec : Prop :=
  ∀ n, P15149297863908068706.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P14953010222848433175

`filter[A179017(n+2), A302777(#)]`
-/

namespace A269844.P14953010222848433175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A269844.P14953010222848433175

namespace A269844

/-- `filter[A179017(n+2), A302777(#)]` -/
def P14953010222848433175.Spec : Prop :=
  ∀ n, P14953010222848433175.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P12805512903974883522

`filter[A179017(n+2), A323152(#)]`
-/

namespace A269844.P12805512903974883522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A269844.P12805512903974883522

namespace A269844

/-- `filter[A179017(n+2), A323152(#)]` -/
def P12805512903974883522.Spec : Prop :=
  ∀ n, P12805512903974883522.a n = A269844 (n + 1)

end A269844

/-! ## A269844.P4194136656564186598

`filter[A179017(n+2), A323153(#)]`
-/

namespace A269844.P4194136656564186598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A269844.P4194136656564186598

namespace A269844

/-- `filter[A179017(n+2), A323153(#)]` -/
def P4194136656564186598.Spec : Prop :=
  ∀ n, P4194136656564186598.a n = A269844 (n + 1)

end A269844

/-!
# A269845: Irregular triangle read by rows: T(n,k) = (k/2+1/2)^2 if odd-k otherwise T(n,k) = (n-k/2)^2 where n >= 1, k = 0..2*n-1.

The programs for A269845, the canonical program `A269845.P12932834634170086123` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269845 has offset 1).

The definition of A269845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269845.P12932834634170086123

`A181118(n+1)²`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A269845

/-- `A181118(n+1)²` -/
def P12932834634170086123.Spec : Prop :=
  ∀ n, P12932834634170086123.a n = A269845 (n + 1)

theorem P12932834634170086123.correct : P12932834634170086123.Spec := by
  intro n
  simp only [A269845, Nat.add_sub_cancel]

end A269845

/-! ## A269845.P6796442770342988761

`(A215655(n+1)/2)²`
-/

namespace A269845.P6796442770342988761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A215655 (n + 1) : ℚ) / 2) ^ 2

end

end A269845.P6796442770342988761

namespace A269845

/-- `(A215655(n+1)/2)²` -/
def P6796442770342988761.Spec : Prop :=
  ∀ n, P6796442770342988761.a n = (A269845 (n + 1) : ℚ)

theorem P6796442770342988761.correct : P6796442770342988761.Spec := by
  intro n
  simp only [A269845, Nat.add_sub_cancel, A269845.P6796442770342988761.a, A269845.P12932834634170086123.a, A181118, A181118.P14712911132165439164.a, A215655, A215655.P274844341247519406.a, A057555, A057555.P13935349940139878963.a, A057554, A057554.P2016188426634242539.a, A036561, A036561.P7490084913005378529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A269845

/-! ## A269845.P11528307809758808075

`A057555(xor(1, n)+1)²`
-/

namespace A269845.P11528307809758808075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Nat.xor 1 n + 1) ^ 2

end

end A269845.P11528307809758808075

namespace A269845

/-- `A057555(xor(1, n)+1)²` -/
def P11528307809758808075.Spec : Prop :=
  ∀ n, P11528307809758808075.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P1114608532060014715

`A088226(comp[n²]+1)²`
-/

namespace A269845.P1114608532060014715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) ^ 2

end

end A269845.P1114608532060014715

namespace A269845

/-- `A088226(comp[n²]+1)²` -/
def P1114608532060014715.Spec : Prop :=
  ∀ n, P1114608532060014715.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P1549123995123323493

`(A057554(xor(1, n)+1)+1)²`
-/

namespace A269845.P1549123995123323493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057554 (Nat.xor 1 n + 1) + 1) ^ 2

end

end A269845.P1549123995123323493

namespace A269845

/-- `(A057554(xor(1, n)+1)+1)²` -/
def P1549123995123323493.Spec : Prop :=
  ∀ n, P1549123995123323493.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P3840074815084859014

`A057555(and(2, gcd(2, n))+n)²`
-/

namespace A269845.P3840074815084859014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Nat.land 2 (Nat.gcd 2 n) + n) ^ 2

end

end A269845.P3840074815084859014

namespace A269845

/-- `A057555(and(2, gcd(2, n))+n)²` -/
def P3840074815084859014.Spec : Prop :=
  ∀ n, P3840074815084859014.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P15352139870591166874

`A057555((-1)^n+n+1)²`
-/

namespace A269845.P15352139870591166874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((-1) ^ n + (n + 1 : ℤ)).toNat ^ 2

end

end A269845.P15352139870591166874

namespace A269845

/-- `A057555((-1)^n+n+1)²` -/
def P15352139870591166874.Spec : Prop :=
  ∀ n, P15352139870591166874.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P2275327898457804633

`A000463(A215655(n+1))`
-/

namespace A269845.P2275327898457804633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A215655 (n + 1)).toNat

end

end A269845.P2275327898457804633

namespace A269845

/-- `A000463(A215655(n+1))` -/
def P2275327898457804633.Spec : Prop :=
  ∀ n, P2275327898457804633.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P17098181381474465457

`A054576(A215655(n+1)²)`
-/

namespace A269845.P17098181381474465457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A215655 (n + 1) ^ 2).toNat

end

end A269845.P17098181381474465457

namespace A269845

/-- `A054576(A215655(n+1)²)` -/
def P17098181381474465457.Spec : Prop :=
  ∀ n, P17098181381474465457.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P9369206129896393480

`A181118(A000027(n+1))^2`
-/

namespace A269845.P9369206129896393480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A000027 (n + 1)).toNat ^ 2

end

end A269845.P9369206129896393480

namespace A269845

/-- `A181118(A000027(n+1))^2` -/
def P9369206129896393480.Spec : Prop :=
  ∀ n, P9369206129896393480.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P6989547103728387030

`(A319929(A007607(n+1))/2)²`
-/

namespace A269845.P6989547103728387030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A319929 (A007607 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A269845.P6989547103728387030

namespace A269845

/-- `(A319929(A007607(n+1))/2)²` -/
def P6989547103728387030.Spec : Prop :=
  ∀ n, P6989547103728387030.a n = (A269845 (n + 1) : ℚ)

end A269845

/-! ## A269845.P9586547992858697882

`A057554(lt[2, A074294(n+1)])²`
-/

namespace A269845.P9586547992858697882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A269845.P9586547992858697882

namespace A269845

/-- `A057554(lt[2, A074294(n+1)])²` -/
def P9586547992858697882.Spec : Prop :=
  ∀ n, P9586547992858697882.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P223295528259737450

`A001222(sqrt(2^A215655(n+1)))²`
-/

namespace A269845.P223295528259737450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt ((2 : ℚ) ^ (A215655 (n + 1) : ℤ) : ℝ))).toNat ^ 2

end

end A269845.P223295528259737450

namespace A269845

/-- `A001222(sqrt(2^A215655(n+1)))²` -/
def P223295528259737450.Spec : Prop :=
  ∀ n, P223295528259737450.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P13704893729201875181

`(A057555(n+1)-(A259361(n)+2))²`
-/

namespace A269845.P13704893729201875181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057555 (n + 1) - (A259361 n + 2)) ^ 2

end

end A269845.P13704893729201875181

namespace A269845

/-- `(A057555(n+1)-(A259361(n)+2))²` -/
def P13704893729201875181.Spec : Prop :=
  ∀ n, P13704893729201875181.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P7098488852110549444

`A181118(n+1)^A020639(2*(n+1))`
-/

namespace A269845.P7098488852110549444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181118 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A269845.P7098488852110549444

namespace A269845

/-- `A181118(n+1)^A020639(2*(n+1))` -/
def P7098488852110549444.Spec : Prop :=
  ∀ n, P7098488852110549444.a n = (A269845 (n + 1) : ℚ)

end A269845

/-! ## A269845.P3939957151626351675

`A181118(n+1)^A000032(C(2, n+1))`
-/

namespace A269845.P3939957151626351675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181118 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 1)) : ℤ)

end

end A269845.P3939957151626351675

namespace A269845

/-- `A181118(n+1)^A000032(C(2, n+1))` -/
def P3939957151626351675.Spec : Prop :=
  ∀ n, P3939957151626351675.a n = (A269845 (n + 1) : ℚ)

end A269845

/-! ## A269845.P16926662826017254955

`A057555(xor(1, n)+1)^A020639(2*(n+1))`
-/

namespace A269845.P16926662826017254955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (Nat.xor 1 n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A269845.P16926662826017254955

namespace A269845

/-- `A057555(xor(1, n)+1)^A020639(2*(n+1))` -/
def P16926662826017254955.Spec : Prop :=
  ∀ n, P16926662826017254955.a n = (A269845 (n + 1) : ℚ)

end A269845

/-! ## A269845.P6779504123716354287

`A181118(A000027(n+1))*A181118(n+1)`
-/

namespace A269845.P6779504123716354287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A000027 (n + 1)).toNat * A181118 (n + 1)

end

end A269845.P6779504123716354287

namespace A269845

/-- `A181118(A000027(n+1))*A181118(n+1)` -/
def P6779504123716354287.Spec : Prop :=
  ∀ n, P6779504123716354287.a n = A269845 (n + 1)

end A269845

/-! ## A269845.P15973622974584743245

`A181118(n+1)^A000005(A093074(n+1))`
-/

namespace A269845.P15973622974584743245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181118 (n + 1) : ℚ) ^ (A000005 (A093074 (n + 1)).toNat : ℤ)

end

end A269845.P15973622974584743245

namespace A269845

/-- `A181118(n+1)^A000005(A093074(n+1))` -/
def P15973622974584743245.Spec : Prop :=
  ∀ n, P15973622974584743245.a n = (A269845 (n + 1) : ℚ)

end A269845

/-! ## A269845.P15188805802340113942

`A181118(n+1)^A000005(A155555(n+1))`
-/

namespace A269845.P15188805802340113942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181118 (n + 1) : ℚ) ^ (A000005 (A155555 (n + 1)).toNat : ℤ)

end

end A269845.P15188805802340113942

namespace A269845

/-- `A181118(n+1)^A000005(A155555(n+1))` -/
def P15188805802340113942.Spec : Prop :=
  ∀ n, P15188805802340113942.a n = (A269845 (n + 1) : ℚ)

end A269845

/-!
# A269847: Permutation of natural numbers: a(1) = 1, for n > 1, if n is an odd prime, a(n) = A003961(a(A000720(n))), otherwise a(n) = 2*a(n-A000720(n)).

The programs for A269847, there is no canonical definition to state claims against.
-/

/-! ## A269847.P768598651603560408

`A163511(A071574(n+1))`
-/

namespace A269847.P768598651603560408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A071574 (n + 1)).toNat

end

end A269847.P768598651603560408

/-! ## A269847.P9053391134296921836

`A250246(A269857(n+1))`
-/

namespace A269847.P9053391134296921836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A269857 (n + 1)).toNat

end

end A269847.P9053391134296921836

/-! ## A269847.P4070024161214097486

`A005940(A257727(n+1))%A107974(3*n+2)`
-/

namespace A269847.P4070024161214097486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (A257727 (n + 1)).toNat) (A107974 (3 * n + 2))

end

end A269847.P4070024161214097486

/-! ## A269847.P8622854948323905452

`A269857(A269857(A269848(n+1)))`
-/

namespace A269847.P8622854948323905452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269857 (A269857 (A269848 (n + 1)).toNat).toNat

end

end A269847.P8622854948323905452

/-! ## A269847.P402111255097834433

`A269857(A269857(A269858(n+1)))`
-/

namespace A269847.P402111255097834433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269857 (A269857 (A269858 (n + 1)).toNat).toNat

end

end A269847.P402111255097834433

/-!
# A269848: a(1) = 1, a(2n) = A065090(1+a(n)), a(2n+1) = A000040(a(A064989(2n+1))).

The programs for A269848, there is no canonical definition to state claims against.
-/

/-! ## A269848.P12702406048467927039

`A237739(A243071(n+1))`
-/

namespace A269848.P12702406048467927039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A243071 (n + 1)).toNat

end

end A269848.P12702406048467927039

/-! ## A269848.P4861828596393521957

`A237739(∑{d}[n+1, A297171(#)])`
-/

namespace A269848.P4861828596393521957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (∑ d ∈ Nat.divisors (f1 n), A297171 d).toNat

end

end A269848.P4861828596393521957

/-! ## A269848.P11431740978733447535

`A237739(A292385(n+1)+A292383(n+1))`
-/

namespace A269848.P11431740978733447535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A292385 (n + 1) + A292383 (n + 1)).toNat

end

end A269848.P11431740978733447535

/-! ## A269848.P12996587456591190355

`A237739(A292943(n+1)+A292263(n+1))`
-/

namespace A269848.P12996587456591190355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A292943 (n + 1) + A292263 (n + 1)).toNat

end

end A269848.P12996587456591190355

/-! ## A269848.P5628747378288816687

`A237739(A292253(n+1)+A292943(n+1)+A292255(n+1))`
-/

namespace A269848.P5628747378288816687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A292253 (n + 1) + (A292943 (n + 1) + A292255 (n + 1))).toNat

end

end A269848.P5628747378288816687

/-!
# A269849: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is not a multiple of three.

The programs for A269849, the canonical program `A269849.P9914812276268584730` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269849 has offset 1).

The definition of A269849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269849.P17100433740435454351

`1-A269850(n+1)+n`
-/

namespace A269849.P17100433740435454351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A269850 (n + 1) + (n : ℤ)

end

end A269849.P17100433740435454351

namespace A269849

/-- `1-A269850(n+1)+n` -/
def P17100433740435454351.Spec : Prop :=
  ∀ n, P17100433740435454351.a n = A269849 (n + 1)

theorem P17100433740435454351.correct : P17100433740435454351.Spec := by
  intro n
  simp only [A269849, Nat.add_sub_cancel, A269849.P17100433740435454351.a, A269849.P9914812276268584730.f1, A269849.P9914812276268584730.a, A006094, A006094.P10257567645245129766.a, A269850, A269850.P6987586977767832841.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269849

/-! ## A269849.P4447330909695079609

`(A269364(n+1)+n+1)/2`
-/

namespace A269849.P4447330909695079609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269364 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A269849.P4447330909695079609

namespace A269849

/-- `(A269364(n+1)+n+1)/2` -/
def P4447330909695079609.Spec : Prop :=
  ∀ n, P4447330909695079609.a n = (A269849 (n + 1) : ℚ)

theorem P4447330909695079609.correct : P4447330909695079609.Spec := by
  intro n
  simp only [A269849, Nat.add_sub_cancel, A269849.P4447330909695079609.a, A269849.P9914812276268584730.f1, A269849.P9914812276268584730.a, A006094, A006094.P10257567645245129766.a, A269364, A269364.P12160389382123291649.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A269850, A269850.P6987586977767832841.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269849

/-! ## A269849.P9914812276268584730

`∑[(A006094(n+1)%3+1)%2]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269849

/-- `∑[(A006094(n+1)%3+1)%2]` -/
def P9914812276268584730.Spec : Prop :=
  ∀ n, P9914812276268584730.a n = A269849 (n + 1)

theorem P9914812276268584730.correct : P9914812276268584730.Spec := by
  intro n
  simp only [A269849, Nat.add_sub_cancel]

end A269849

/-! ## A269849.P13446578925420805736

`a(n-1)+A341952(n+1)²` with `a(0)=1`
-/

namespace A269849.P13446578925420805736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A341952 (n + 1) ^ 2

end

end A269849.P13446578925420805736

namespace A269849

/-- `a(n-1)+A341952(n+1)²` -/
def P13446578925420805736.Spec : Prop :=
  ∀ n, P13446578925420805736.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P11286815636992849101

`∑[A011655(A001223(n+1))]`
-/

namespace A269849.P11286815636992849101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P11286815636992849101

namespace A269849

/-- `∑[A011655(A001223(n+1))]` -/
def P11286815636992849101.Spec : Prop :=
  ∀ n, P11286815636992849101.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P8391005997245647622

`∑[A010872(A001223(n+1)²)]`
-/

namespace A269849.P8391005997245647622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A001223 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P8391005997245647622

namespace A269849

/-- `∑[A010872(A001223(n+1)²)]` -/
def P8391005997245647622.Spec : Prop :=
  ∀ n, P8391005997245647622.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P16348948855392524676

`∑[A091338(A001223(n+1)²)]`
-/

namespace A269849.P16348948855392524676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (A001223 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P16348948855392524676

namespace A269849

/-- `∑[A091338(A001223(n+1)²)]` -/
def P16348948855392524676.Spec : Prop :=
  ∀ n, P16348948855392524676.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P1604471134707722354

`∑[A102283(A001223(n+1)²)]`
-/

namespace A269849.P1604471134707722354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A001223 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P1604471134707722354

namespace A269849

/-- `∑[A102283(A001223(n+1)²)]` -/
def P1604471134707722354.Spec : Prop :=
  ∀ n, P1604471134707722354.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P17360175268009067551

`A269850(n+1)+A269364(n+1)`
-/

namespace A269849.P17360175268009067551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269850 (n + 1) + A269364 (n + 1)

end

end A269849.P17360175268009067551

namespace A269849

/-- `A269850(n+1)+A269364(n+1)` -/
def P17360175268009067551.Spec : Prop :=
  ∀ n, P17360175268009067551.a n = A269849 (n + 1)

theorem P17360175268009067551.correct : P17360175268009067551.Spec := by
  intro n
  simp only [A269849, Nat.add_sub_cancel, A269849.P17360175268009067551.a, A269849.P9914812276268584730.f1, A269849.P9914812276268584730.a, A006094, A006094.P10257567645245129766.a, A269364, A269364.P12160389382123291649.a, A269850, A269850.P6987586977767832841.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269849

/-! ## A269849.P11698602216278569941

`∑[A213852(A001223(n+1)²)-1]`
-/

namespace A269849.P11698602216278569941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213852 (A001223 (n + 1) ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P11698602216278569941

namespace A269849

/-- `∑[A213852(A001223(n+1)²)-1]` -/
def P11698602216278569941.Spec : Prop :=
  ∀ n, P11698602216278569941.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P14029733957776420853

`∑[A074927(n+1)%A157532(n+1)]`
-/

namespace A269849.P14029733957776420853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074927 (n + 1)) (A157532 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P14029733957776420853

namespace A269849

/-- `∑[A074927(n+1)%A157532(n+1)]` -/
def P14029733957776420853.Spec : Prop :=
  ∀ n, P14029733957776420853.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P14085646266710598473

`∑[Δ[A000040(n+1)]²%3]`
-/

namespace A269849.P14085646266710598473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) - f2 n) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P14085646266710598473

namespace A269849

/-- `∑[Δ[A000040(n+1)]²%3]` -/
def P14085646266710598473.Spec : Prop :=
  ∀ n, P14085646266710598473.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P16563973666283770194

`∑[Δ[A006093(n+1)]²%3]`
-/

namespace A269849.P16563973666283770194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) - f2 n) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P16563973666283770194

namespace A269849

/-- `∑[Δ[A006093(n+1)]²%3]` -/
def P16563973666283770194.Spec : Prop :=
  ∀ n, P16563973666283770194.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P10319013333637475218

`∑[Δ[A110833(n+1)²]²%3]`
-/

namespace A269849.P10319013333637475218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) - f2 n) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P10319013333637475218

namespace A269849

/-- `∑[Δ[A110833(n+1)²]²%3]` -/
def P10319013333637475218.Spec : Prop :=
  ∀ n, P10319013333637475218.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P6388251355400806473

`∑[1-A317961(Δ[A040976(n+1)])]`
-/

namespace A269849.P6388251355400806473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P6388251355400806473

namespace A269849

/-- `∑[1-A317961(Δ[A040976(n+1)])]` -/
def P6388251355400806473.Spec : Prop :=
  ∀ n, P6388251355400806473.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P9815800364698124937

`∑[A000032(Δ[A000040(n+1)])%2]`
-/

namespace A269849.P9815800364698124937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f2 (n + 1) - f2 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P9815800364698124937

namespace A269849

/-- `∑[A000032(Δ[A000040(n+1)])%2]` -/
def P9815800364698124937.Spec : Prop :=
  ∀ n, P9815800364698124937.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P13276002901259600558

`∑[A010892(Δ[A000040(n+1)]+2)²]`
-/

namespace A269849.P13276002901259600558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (f2 (n + 1) - f2 n + 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P13276002901259600558

namespace A269849

/-- `∑[A010892(Δ[A000040(n+1)]+2)²]` -/
def P13276002901259600558.Spec : Prop :=
  ∀ n, P13276002901259600558.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P17755411439694862904

`∑[A010892(Δ[A040976(n+1)]+2)²]`
-/

namespace A269849.P17755411439694862904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (f2 (n + 1) - f2 n + 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P17755411439694862904

namespace A269849

/-- `∑[A010892(Δ[A040976(n+1)]+2)²]` -/
def P17755411439694862904.Spec : Prop :=
  ∀ n, P17755411439694862904.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P4887054398167860158

`∑[A115360(2*(Δ[A008864(n+1)]-1))]`
-/

namespace A269849.P4887054398167860158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 (2 * (f2 (n + 1) - f2 n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P4887054398167860158

namespace A269849

/-- `∑[A115360(2*(Δ[A008864(n+1)]-1))]` -/
def P4887054398167860158.Spec : Prop :=
  ∀ n, P4887054398167860158.a n = A269849 (n + 1)

end A269849

/-! ## A269849.P6698801286738326902

`∑[abs(Δ[(A008578(n+2)+2)%3]%3)]`
-/

namespace A269849.P6698801286738326902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2) + 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f2 (n + 1) - f2 n) 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P6698801286738326902

namespace A269849

/-- `∑[abs(Δ[(A008578(n+2)+2)%3]%3)]` -/
def P6698801286738326902.Spec : Prop :=
  ∀ n, P6698801286738326902.a n = A269849 (n + 1)

end A269849

/-!
# A269850: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is a multiple of three.

The programs for A269850, the canonical program `A269850.P6987586977767832841` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269850 has offset 1).

The definition of A269850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269850.P6987586977767832841

`1-A269849(n+1)+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A269850

/-- `1-A269849(n+1)+n` -/
def P6987586977767832841.Spec : Prop :=
  ∀ n, P6987586977767832841.a n = A269850 (n + 1)

theorem P6987586977767832841.correct : P6987586977767832841.Spec := by
  intro n
  simp only [A269850, Nat.add_sub_cancel]

end A269850

/-! ## A269850.P14396696881670560560

`∑[char[A270190(n+1)-1]]`
-/

namespace A269850.P14396696881670560560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P14396696881670560560

namespace A269850

/-- `∑[char[A270190(n+1)-1]]` -/
def P14396696881670560560.Spec : Prop :=
  ∀ n, (P14396696881670560560.a n : ℤ) = A269850 (n + 1)

end A269850

/-! ## A269850.P6902095908769301336

`∑[(A006094(n+1)%3)%2]`
-/

namespace A269850.P6902095908769301336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006094 (n + 1)) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P6902095908769301336

namespace A269850

/-- `∑[(A006094(n+1)%3)%2]` -/
def P6902095908769301336.Spec : Prop :=
  ∀ n, P6902095908769301336.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P14043395877506482939

`(n+1-A269364(n+1))/2`
-/

namespace A269850.P14043395877506482939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A269364 (n + 1) : ℚ) / 2

end

end A269850.P14043395877506482939

namespace A269850

/-- `(n+1-A269364(n+1))/2` -/
def P14043395877506482939.Spec : Prop :=
  ∀ n, P14043395877506482939.a n = (A269850 (n + 1) : ℚ)

theorem P14043395877506482939.correct : P14043395877506482939.Spec := by
  intro n
  simp only [A269850, Nat.add_sub_cancel, A269850.P14043395877506482939.a, A269850.P6987586977767832841.a, A269364, A269364.P12160389382123291649.a, A269849, A269849.P9914812276268584730.f1, A269849.P9914812276268584730.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269850

/-! ## A269850.P16634003424492831715

`∑[(2*xor(2, A001223(n+1)²))%3]`
-/

namespace A269850.P16634003424492831715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * Int.xor 2 (A001223 (n + 1) ^ 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P16634003424492831715

namespace A269850

/-- `∑[(2*xor(2, A001223(n+1)²))%3]` -/
def P16634003424492831715.Spec : Prop :=
  ∀ n, P16634003424492831715.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P2556550063511519440

`∑[A079978(A001223(n+1))]`
-/

namespace A269850.P2556550063511519440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P2556550063511519440

namespace A269850

/-- `∑[A079978(A001223(n+1))]` -/
def P2556550063511519440.Spec : Prop :=
  ∀ n, P2556550063511519440.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P11340271684161253439

`A000027(n+1)%A269849(n+1)`
-/

namespace A269850.P11340271684161253439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A269849 (n + 1))

end

end A269850.P11340271684161253439

namespace A269850

/-- `A000027(n+1)%A269849(n+1)` -/
def P11340271684161253439.Spec : Prop :=
  ∀ n, P11340271684161253439.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P1801001073880746254

`A087156(n+1)%A269849(n+1)`
-/

namespace A269850.P1801001073880746254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A269849 (n + 1))

end

end A269850.P1801001073880746254

namespace A269850

/-- `A087156(n+1)%A269849(n+1)` -/
def P1801001073880746254.Spec : Prop :=
  ∀ n, P1801001073880746254.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P6443657645207192038

`∑[1-A010872(A001223(n+1)²)]`
-/

namespace A269850.P6443657645207192038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010872 (A001223 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P6443657645207192038

namespace A269850

/-- `∑[1-A010872(A001223(n+1)²)]` -/
def P6443657645207192038.Spec : Prop :=
  ∀ n, P6443657645207192038.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P17054033441707178805

`∑[1-A091338(A001223(n+1)²)]`
-/

namespace A269850.P17054033441707178805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091338 (A001223 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P17054033441707178805

namespace A269850

/-- `∑[1-A091338(A001223(n+1)²)]` -/
def P17054033441707178805.Spec : Prop :=
  ∀ n, P17054033441707178805.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P15924204460943219667

`∑[1-A102283(A001223(n+1)²)]`
-/

namespace A269850.P15924204460943219667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A102283 (A001223 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P15924204460943219667

namespace A269850

/-- `∑[1-A102283(A001223(n+1)²)]` -/
def P15924204460943219667.Spec : Prop :=
  ∀ n, P15924204460943219667.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P4055343509951942557

`∑[2-A213852(A001223(n+1)²)]`
-/

namespace A269850.P4055343509951942557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A213852 (A001223 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P4055343509951942557

namespace A269850

/-- `∑[2-A213852(A001223(n+1)²)]` -/
def P4055343509951942557.Spec : Prop :=
  ∀ n, P4055343509951942557.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P11677832232518248790

`∑[A000217(A001223(n+1)+1)%3]`
-/

namespace A269850.P11677832232518248790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A001223 (n + 1) + 1).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P11677832232518248790

namespace A269850

/-- `∑[A000217(A001223(n+1)+1)%3]` -/
def P11677832232518248790.Spec : Prop :=
  ∀ n, P11677832232518248790.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P14253434262303655145

`∑[C(Δ[A000040(n+1)]-1, 2)%3]`
-/

namespace A269850.P14253434262303655145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n - 1).toNat 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P14253434262303655145

namespace A269850

/-- `∑[C(Δ[A000040(n+1)]-1, 2)%3]` -/
def P14253434262303655145.Spec : Prop :=
  ∀ n, (P14253434262303655145.a n : ℤ) = A269850 (n + 1)

end A269850

/-! ## A269850.P1437763158698370482

`∑[A317961(Δ[A040976(n+1)])]`
-/

namespace A269850.P1437763158698370482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P1437763158698370482

namespace A269850

/-- `∑[A317961(Δ[A040976(n+1)])]` -/
def P1437763158698370482.Spec : Prop :=
  ∀ n, P1437763158698370482.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P7850728629922172570

`∑[A000217(A076368(n+2))%3]`
-/

namespace A269850.P7850728629922172570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A076368 (n + 2)).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269850.P7850728629922172570

namespace A269850

/-- `∑[A000217(A076368(n+2))%3]` -/
def P7850728629922172570.Spec : Prop :=
  ∀ n, P7850728629922172570.a n = A269850 (n + 1)

end A269850

/-! ## A269850.P9736550668118389426

`A060401(n+1)%A269849(n+1)`
-/

namespace A269850.P9736550668118389426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A269849 (n + 1))

end

end A269850.P9736550668118389426

namespace A269850

/-- `A060401(n+1)%A269849(n+1)` -/
def P9736550668118389426.Spec : Prop :=
  ∀ n, P9736550668118389426.a n = A269850 (n + 1)

end A269850

/-!
# A269851: a(0) = 1, a(A087686(1+n)) = 2*a(n), a(A088359(n)) = A250469(a(n)), where A088359 and A087686 = numbers that occur only once (resp. more than once) in A004001.

The programs for A269851, there is no canonical definition to state claims against.
-/

/-! ## A269851.P15239520162814409357

`A252755(A267111(n))%A304726(a(n-1))` with `a(0)=1`
-/

namespace A269851.P15239520162814409357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A252755 (A267111 n).toNat) (A304726 (a (n - 1)).toNat)

end

end A269851.P15239520162814409357

/-! ## A269851.P5608826979310060000

`A078898(A252755(A267111(A087686(n+1))))`
-/

namespace A269851.P5608826979310060000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A252755 (A267111 (A087686 (n + 1)).toNat).toNat).toNat

end

end A269851.P5608826979310060000

/-!
# A269855: a(0) = 1, a(1) = 2, after which, a(nth_odious_number_larger_than_one(n)) = A250469(a(n)), a(nth_evil_number_larger_than_zero(n)) = 2*a(n).

The programs for A269855, there is no canonical definition to state claims against.
-/

/-! ## A269855.P16889028375013177182

`A252755(A006068(n))`
-/

namespace A269855.P16889028375013177182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A006068 n).toNat

end

end A269855.P16889028375013177182

/-! ## A269855.P18424060044504970549

`A252753(A233279(n))`
-/

namespace A269855.P18424060044504970549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A233279 n).toNat

end

end A269855.P18424060044504970549

/-! ## A269855.P11206200803052242506

`A252755(A292600(2*n))`
-/

namespace A269855.P11206200803052242506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A292600 (2 * n)).toNat

end

end A269855.P11206200803052242506

/-! ## A269855.P1656422204223915504

`A252755(A268716(n)/2)`
-/

namespace A269855.P1656422204223915504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A269855.P1656422204223915504

/-! ## A269855.P14714059124788752192

`A252755(A286546(n)+n)`
-/

namespace A269855.P14714059124788752192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A286546 n + (n : ℤ)).toNat

end

end A269855.P14714059124788752192

/-! ## A269855.P5906852453438908628

`A252755(xor(n, A292600(n)))`
-/

namespace A269855.P5906852453438908628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (Int.xor (n : ℤ) (A292600 n)).toNat

end

end A269855.P5906852453438908628

/-! ## A269855.P13455775214743715081

`A252753(A038558(n)-A053644(n))`
-/

namespace A269855.P13455775214743715081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A038558 n - A053644 n).toNat

end

end A269855.P13455775214743715081

/-!
# A269856: Permutation of natural numbers: a(1) = 0, a(2) = 1, a(2n) = A001969(1+a(n)), a(2n+1) = A000069(1+a(A268674(2n+1))).

The programs for A269856, there is no canonical definition to state claims against.
-/

/-! ## A269856.P9178837061769863355

`A003188(A252756(n+1))`
-/

namespace A269856.P9178837061769863355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A252756 (n + 1)).toNat

end

end A269856.P9178837061769863355

/-! ## A269856.P17846809248860414953

`xor(A252756(n+1), A252756(A253554(n+1)))`
-/

namespace A269856.P17846809248860414953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A252756 (n + 1)) (A252756 (A253554 (n + 1)).toNat)

end

end A269856.P17846809248860414953

/-! ## A269856.P7778088527330466190

`A003188(A243071(A250246(n+1)))`
-/

namespace A269856.P7778088527330466190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A243071 (A250246 (n + 1)).toNat).toNat

end

end A269856.P7778088527330466190

/-! ## A269856.P5409449177401451611

`A003188(A243071(A250250(n+1)))`
-/

namespace A269856.P5409449177401451611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A243071 (A250250 (n + 1)).toNat).toNat

end

end A269856.P5409449177401451611

/-! ## A269856.P294925337528431441

`A003188(∑{d}[A250246(n+1), A297171(#)])`
-/

namespace A269856.P294925337528431441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d).toNat

end

end A269856.P294925337528431441

/-!
# A269857: Permutation of natural numbers: a(1) = 1; if n is an odd prime, a(n) = A250469(a(A026233(n))), else a(n) = 2*(a(A026233(n))).

The programs for A269857, there is no canonical definition to state claims against.
-/

/-! ## A269857.P14825981055801122063

`A252755(A071574(n+1))`
-/

namespace A269857.P14825981055801122063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A071574 (n + 1)).toNat

end

end A269857.P14825981055801122063

/-! ## A269857.P2461515777080521951

`A250245(A269847(n+1))`
-/

namespace A269857.P2461515777080521951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A269847 (n + 1)).toNat

end

end A269857.P2461515777080521951

/-! ## A269857.P15440059815955592069

`A269847(A269858(A269847(A269847(A269848(n+1)))))`
-/

namespace A269857.P15440059815955592069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (A269858 (A269847 (A269847 (A269848 (n + 1)).toNat).toNat).toNat).toNat

end

end A269857.P15440059815955592069

/-!
# A269858: Permutation of natural numbers: a(1) = 1, a(2n) = A065090(1+a(n)), a(2n+1) = A000040(a(A268674(2n+1))).

The programs for A269858, there is no canonical definition to state claims against.
-/

/-! ## A269858.P1327510064760867

`A237739(A252756(n+1))`
-/

namespace A269858.P1327510064760867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A252756 (n + 1)).toNat

end

end A269858.P1327510064760867

/-! ## A269858.P14379470925685714164

`A269848(A250246(n+1))`
-/

namespace A269858.P14379470925685714164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269848 (A250246 (n + 1)).toNat

end

end A269858.P14379470925685714164

/-! ## A269858.P17908264132768184981

`A269848(A250250(n+1))`
-/

namespace A269858.P17908264132768184981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269848 (A250250 (n + 1)).toNat

end

end A269858.P17908264132768184981

/-! ## A269858.P17178135449456774168

`A269848(A324546(n+1)+A324535(n+1))`
-/

namespace A269858.P17178135449456774168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269848 (A324546 (n + 1) + A324535 (n + 1)).toNat

end

end A269858.P17178135449456774168

/-!
# A269859: Primes p such that p+2^4, p+2^6, p+2^8, p+2^10, p+2^12 and p+2^14 are all primes.

The programs for A269859, there is no canonical definition to state claims against.
-/

/-! ## A269859.P8728660633013473308

`A269259(A276086(n)^A090339(n))`
-/

namespace A269859.P8728660633013473308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269259 (SequenceMachineLib.roundAway ((A276086 n : ℚ) ^ (A090339 n : ℤ))).toNat

end

end A269859.P8728660633013473308

/-!
# A269860: Numbers n such that n and A048673(n) are of the same parity.

The programs for A269860, the canonical program `A269860.P2406062323914390099` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269860 has offset 1).

The definition of A269860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269860.P2406062323914390099

`eq[A000089(A073575(n+1)), A246260(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A269860

/-- `eq[A000089(A073575(n+1)), A246260(n+1)]+1` -/
def P2406062323914390099.Spec : Prop :=
  ∀ n, (P2406062323914390099.a n : ℤ) = A269860 (n + 1)

theorem P2406062323914390099.correct : P2406062323914390099.Spec := by
  intro n
  simp only [A269860, Nat.add_sub_cancel]

end A269860

/-! ## A269860.P7402923502985055493

`eq[char[2*n], char[A246263(n+1)]]`
-/

namespace A269860.P7402923502985055493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246263 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A269860.P7402923502985055493

namespace A269860

/-- `eq[char[2*n], char[A246263(n+1)]]` -/
def P7402923502985055493.Spec : Prop :=
  ∀ n, (P7402923502985055493.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P11455651313143685344

`record[(n+1)*and(1, A048673(n+1)+n)]`
-/

namespace A269860.P11455651313143685344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A048673 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269860.P11455651313143685344

namespace A269860

/-- `record[(n+1)*and(1, A048673(n+1)+n)]` -/
def P11455651313143685344.Spec : Prop :=
  ∀ n, P11455651313143685344.a n = A269860 (n + 1)

end A269860

/-! ## A269860.P15262498468075031813

`eq[1, A289623(A257143(n)+n)]`
-/

namespace A269860.P15262498468075031813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A257143 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269860.P15262498468075031813

namespace A269860

/-- `eq[1, A289623(A257143(n)+n)]` -/
def P15262498468075031813.Spec : Prop :=
  ∀ n, (P15262498468075031813.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P16367723099307849589

`eq[1, A289623(A008486(n)-A026741(n))]`
-/

namespace A269860.P16367723099307849589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A008486 n - A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269860.P16367723099307849589

namespace A269860

/-- `eq[1, A289623(A008486(n)-A026741(n))]` -/
def P16367723099307849589.Spec : Prop :=
  ∀ n, (P16367723099307849589.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P15996230970733134657

`eq[1, A289623(A257088(n)+n)]`
-/

namespace A269860.P15996230970733134657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A257088 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269860.P15996230970733134657

namespace A269860

/-- `eq[1, A289623(A257088(n)+n)]` -/
def P15996230970733134657.Spec : Prop :=
  ∀ n, (P15996230970733134657.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P553087756020861540

`eq[A000007(n), A246271(A257088(n))]`
-/

namespace A269860.P553087756020861540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269860.P553087756020861540

namespace A269860

/-- `eq[A000007(n), A246271(A257088(n))]` -/
def P553087756020861540.Spec : Prop :=
  ∀ n, (P553087756020861540.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P5937059754296410393

`eq[1, A289623(A298026(n))]`
-/

namespace A269860.P5937059754296410393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A298026 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269860.P5937059754296410393

namespace A269860

/-- `eq[1, A289623(A298026(n))]` -/
def P5937059754296410393.Spec : Prop :=
  ∀ n, (P5937059754296410393.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P13927063319248673445

`eq[1, A289623(A008458(A026741(n)))]`
-/

namespace A269860.P13927063319248673445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A008458 (A026741 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269860.P13927063319248673445

namespace A269860

/-- `eq[1, A289623(A008458(A026741(n)))]` -/
def P13927063319248673445.Spec : Prop :=
  ∀ n, (P13927063319248673445.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P8058124038964407651

`eq[1, gcd(2, A001399(A003961(n+1)))]+1`
-/

namespace A269860.P8058124038964407651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001399 (A003961 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269860.P8058124038964407651

namespace A269860

/-- `eq[1, gcd(2, A001399(A003961(n+1)))]+1` -/
def P8058124038964407651.Spec : Prop :=
  ∀ n, (P8058124038964407651.a n : ℤ) = A269860 (n + 1)

end A269860

/-! ## A269860.P2997583100574462431

`record[n+1-A142150(A048673(n+1)+n)]`
-/

namespace A269860.P2997583100574462431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A142150 (A048673 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269860.P2997583100574462431

namespace A269860

/-- `record[n+1-A142150(A048673(n+1)+n)]` -/
def P2997583100574462431.Spec : Prop :=
  ∀ n, P2997583100574462431.a n = A269860 (n + 1)

end A269860

/-! ## A269860.P10103094258123611444

`lt[A177499(A048673(n+1)+n+1), 5]+1`
-/

namespace A269860.P10103094258123611444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (A048673 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A269860.P10103094258123611444

namespace A269860

/-- `lt[A177499(A048673(n+1)+n+1), 5]+1` -/
def P10103094258123611444.Spec : Prop :=
  ∀ n, (P10103094258123611444.a n : ℤ) = A269860 (n + 1)

end A269860

/-!
# A269861: Numbers n such that n and A048673(n) are of opposite parity.

The programs for A269861, the canonical program `A269861.P15058288038325778243` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269861 has offset 1).

The definition of A269861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269861.P15058288038325778243

`eq[A000035(n), A246260(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A269861

/-- `eq[A000035(n), A246260(n+1)]+1` -/
def P15058288038325778243.Spec : Prop :=
  ∀ n, (P15058288038325778243.a n : ℤ) = A269861 (n + 1)

theorem P15058288038325778243.correct : P15058288038325778243.Spec := by
  intro n
  simp only [A269861, Nat.add_sub_cancel]

end A269861

/-! ## A269861.P5908391893931210885

`eq[1, A289623(A257143(n))]`
-/

namespace A269861.P5908391893931210885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269861.P5908391893931210885

namespace A269861

/-- `eq[1, A289623(A257143(n))]` -/
def P5908391893931210885.Spec : Prop :=
  ∀ n, (P5908391893931210885.a n : ℤ) = A269861 (n + 1)

end A269861

/-! ## A269861.P3603262607317067296

`eq[1, A289623(A257088(n))]`
-/

namespace A269861.P3603262607317067296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269861.P3603262607317067296

namespace A269861

/-- `eq[1, A289623(A257088(n))]` -/
def P3603262607317067296.Spec : Prop :=
  ∀ n, (P3603262607317067296.a n : ℤ) = A269861 (n + 1)

end A269861

/-! ## A269861.P5714315044582229081

`eq[1, A289623(A026741(A008486(n)))]`
-/

namespace A269861.P5714315044582229081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289623 (A026741 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269861.P5714315044582229081

namespace A269861

/-- `eq[1, A289623(A026741(A008486(n)))]` -/
def P5714315044582229081.Spec : Prop :=
  ∀ n, (P5714315044582229081.a n : ℤ) = A269861 (n + 1)

end A269861

/-! ## A269861.P5528377323945511534

`eq[A000007(n), A246271(A257088(n)+n)]`
-/

namespace A269861.P5528377323945511534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A257088 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269861.P5528377323945511534

namespace A269861

/-- `eq[A000007(n), A246271(A257088(n)+n)]` -/
def P5528377323945511534.Spec : Prop :=
  ∀ n, (P5528377323945511534.a n : ℤ) = A269861 (n + 1)

end A269861

/-! ## A269861.P2929288407897547228

`eq[A000007(n), A246271(A298026(n))]`
-/

namespace A269861.P2929288407897547228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A298026 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269861.P2929288407897547228

namespace A269861

/-- `eq[A000007(n), A246271(A298026(n))]` -/
def P2929288407897547228.Spec : Prop :=
  ∀ n, (P2929288407897547228.a n : ℤ) = A269861 (n + 1)

end A269861

/-! ## A269861.P10770169736054260846

`eq[2, gcd(2, A001399(A003961(n+1)))]+1`
-/

namespace A269861.P10770169736054260846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001399 (A003961 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269861.P10770169736054260846

namespace A269861

/-- `eq[2, gcd(2, A001399(A003961(n+1)))]+1` -/
def P10770169736054260846.Spec : Prop :=
  ∀ n, (P10770169736054260846.a n : ℤ) = A269861 (n + 1)

end A269861

/-! ## A269861.P4998951799206154356

`lt[A177499(A048673(n+1)+n), 5]+1`
-/

namespace A269861.P4998951799206154356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (A048673 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A269861.P4998951799206154356

namespace A269861

/-- `lt[A177499(A048673(n+1)+n), 5]+1` -/
def P4998951799206154356.Spec : Prop :=
  ∀ n, (P4998951799206154356.a n : ℤ) = A269861 (n + 1)

end A269861

/-!
# A269862: Least monotonic left inverse of A269861.

The programs for A269862, the canonical program `A269862.P11567810816501118614` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269862 has offset 1).

The definition of A269862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269862.P14305505907484670220

`∑[and(1, A349573(n+1))]`
-/

namespace A269862.P14305505907484670220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A349573 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P14305505907484670220

namespace A269862

/-- `∑[and(1, A349573(n+1))]` -/
def P14305505907484670220.Spec : Prop :=
  ∀ n, P14305505907484670220.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P3841032461570130461

`∑[(Δ[A246264(n)]+n)%2]`
-/

namespace A269862.P3841032461570130461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P3841032461570130461

namespace A269862

/-- `∑[(Δ[A246264(n)]+n)%2]` -/
def P3841032461570130461.Spec : Prop :=
  ∀ n, P3841032461570130461.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P10077814094504142597

`∑[(Δ[A246262(n)]+1+n)%2]`
-/

namespace A269862.P10077814094504142597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n + 1 + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P10077814094504142597

namespace A269862

/-- `∑[(Δ[A246262(n)]+1+n)%2]` -/
def P10077814094504142597.Spec : Prop :=
  ∀ n, P10077814094504142597.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P10339087979341086212

`∑[and(1, A048673(n+1)-n+1)]`
-/

namespace A269862.P10339087979341086212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048673 (n + 1) - (n : ℤ) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P10339087979341086212

namespace A269862

/-- `∑[and(1, A048673(n+1)-n+1)]` -/
def P10339087979341086212.Spec : Prop :=
  ∀ n, P10339087979341086212.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P11567810816501118614

`∑[(C(A253885(n)+1, 3)+n)%2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A269862

/-- `∑[(C(A253885(n)+1, 3)+n)%2]` -/
def P11567810816501118614.Spec : Prop :=
  ∀ n, (P11567810816501118614.a n : ℤ) = A269862 (n + 1)

theorem P11567810816501118614.correct : P11567810816501118614.Spec := by
  intro n
  simp only [A269862, Nat.add_sub_cancel]

end A269862

/-! ## A269862.P3271833559428025844

`∑[and(1, floor(A003961(n+1)/2+n))]`
-/

namespace A269862.P3271833559428025844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(A003961 (n + 1) : ℚ) / 2 + (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P3271833559428025844

namespace A269862

/-- `∑[and(1, floor(A003961(n+1)/2+n))]` -/
def P3271833559428025844.Spec : Prop :=
  ∀ n, P3271833559428025844.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P7577202077487122191

`∑[A243433(and(1, n-A048673(n+1)))]`
-/

namespace A269862.P7577202077487122191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243433 ((Int.land 1 ((n : ℤ) - A048673 (n + 1))).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P7577202077487122191

namespace A269862

/-- `∑[A243433(and(1, n-A048673(n+1)))]` -/
def P7577202077487122191.Spec : Prop :=
  ∀ n, P7577202077487122191.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P18048877727759403881

`∑[3-A000005(and(3, A252748(n+1))+1)]`
-/

namespace A269862.P18048877727759403881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000005 (Int.land 3 (A252748 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P18048877727759403881

namespace A269862

/-- `∑[3-A000005(and(3, A252748(n+1))+1)]` -/
def P18048877727759403881.Spec : Prop :=
  ∀ n, P18048877727759403881.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P2933282978861112118

`∑[A155584(and(3, 3-A252748(n+1))+1)]`
-/

namespace A269862.P2933282978861112118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155584 (Int.land 3 (3 - A252748 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P2933282978861112118

namespace A269862

/-- `∑[A155584(and(3, 3-A252748(n+1))+1)]` -/
def P2933282978861112118.Spec : Prop :=
  ∀ n, P2933282978861112118.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P14696777413071263208

`∑[val(A020639(A048673(n+1)+n+2), 2)]`
-/

namespace A269862.P14696777413071263208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A048673 (n + 1) + (n + 2 : ℤ)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P14696777413071263208

namespace A269862

/-- `∑[val(A020639(A048673(n+1)+n+2), 2)]` -/
def P14696777413071263208.Spec : Prop :=
  ∀ n, (P14696777413071263208.a n : ℤ) = A269862 (n + 1)

end A269862

/-! ## A269862.P5065415032745226640

`∑[and(1, A000005(A246269(n+1))+n+1)%3]`
-/

namespace A269862.P5065415032745226640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 1 (A000005 (A246269 (n + 1)).toNat + (n + 1 : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P5065415032745226640

namespace A269862

/-- `∑[and(1, A000005(A246269(n+1))+n+1)%3]` -/
def P5065415032745226640.Spec : Prop :=
  ∀ n, P5065415032745226640.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P15935594391755569001

`∑[and(1, A002264(A048673(n+1)-1))]`
-/

namespace A269862.P15935594391755569001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002264 (A048673 (n + 1) - 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P15935594391755569001

namespace A269862

/-- `∑[and(1, A002264(A048673(n+1)-1))]` -/
def P15935594391755569001.Spec : Prop :=
  ∀ n, P15935594391755569001.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P3631023836570670234

`∑[and(1, A177499(A243501(n+1)+2*n))]`
-/

namespace A269862.P3631023836570670234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A177499 (A243501 (n + 1) + (2 * n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P3631023836570670234

namespace A269862

/-- `∑[and(1, A177499(A243501(n+1)+2*n))]` -/
def P3631023836570670234.Spec : Prop :=
  ∀ n, P3631023836570670234.a n = A269862 (n + 1)

end A269862

/-! ## A269862.P4842465673360392036

`∑[A000035(A048673(2*(n+1))+n)]`
-/

namespace A269862.P4842465673360392036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048673 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269862.P4842465673360392036

namespace A269862

/-- `∑[A000035(A048673(2*(n+1))+n)]` -/
def P4842465673360392036.Spec : Prop :=
  ∀ n, P4842465673360392036.a n = A269862 (n + 1)

end A269862

/-!
# A269863: Permutation of natural numbers: a(1) = 1, a(A269360(n)) = 2*a(n), a(A250469(1+n)) = 1 + 2*a(n).

The programs for A269863, there is no canonical definition to state claims against.
-/

/-! ## A269863.P7041833518380929777

`A245605(A269864(A269359(A269359(A245605(n+1)))))`
-/

namespace A269863.P7041833518380929777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (A269864 (A269359 (A269359 (A245605 (n + 1)).toNat).toNat).toNat).toNat

end

end A269863.P7041833518380929777

/-! ## A269863.P12464555822285082262

`A292380(A113178(n+2))+A245605(n+1)`
-/

namespace A269863.P12464555822285082262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (A113178 (n + 2)).toNat + A245605 (n + 1)

end

end A269863.P12464555822285082262

/-!
# A269864: Permutation of natural numbers: a(1) = 1, a(2n) = A269360(a(n)), a(2n+1) = A250469(1+a(n)).

The programs for A269864, there is no canonical definition to state claims against.
-/

/-! ## A269864.P12260429708022333232

`A245606(n+1)+A113448(A245649(n+1))`
-/

namespace A269864.P12260429708022333232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245606 (n + 1) + A113448 (A245649 (n + 1)).toNat

end

end A269864.P12260429708022333232

/-!
# A269865: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = A250469(1+a(n)).

The programs for A269865, there is no canonical definition to state claims against.
-/

/-! ## A269865.P8386657886428588231

`A005940(A253551(A253551(A253552(A249725(n+1)))))`
-/

namespace A269865.P8386657886428588231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A253551 (A253551 (A253552 (A249725 (n + 1)).toNat).toNat).toNat).toNat

end

end A269865.P8386657886428588231

/-! ## A269865.P9119758056816673569

`A289438(A250246(3*(n+1))%A219602(2*n+5))`
-/

namespace A269865.P9119758056816673569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (Int.tmod (A250246 (3 * (n + 1))) (A219602 (2 * n + 5))).toNat

end

end A269865.P9119758056816673569

/-! ## A269865.P15530740178303391516

`A302026(3*n+3)/A204217(A142775(n+1))`
-/

namespace A269865.P15530740178303391516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (3 * n + 3) : ℚ) / (A204217 (A142775 (n + 1)).toNat : ℚ)

end

end A269865.P15530740178303391516

/-! ## A269865.P17760390504520208018

`A302026(3*n+3)/A010684(A006094(n+5))`
-/

namespace A269865.P17760390504520208018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (3 * n + 3) : ℚ) / (A010684 (A006094 (n + 5)).toNat : ℚ)

end

end A269865.P17760390504520208018

/-! ## A269865.P7408366459706050952

`A302026(3*n+3)/A204217(A142812(n+1))`
-/

namespace A269865.P7408366459706050952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (3 * n + 3) : ℚ) / (A204217 (A142812 (n + 1)).toNat : ℚ)

end

end A269865.P7408366459706050952

/-!
# A269866: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = 1 + 2*a(A268674(2n+1)-1).

The programs for A269866, there is no canonical definition to state claims against.
-/

/-! ## A269866.P17654415237210266639

`A250245(3*(n+1))/A338482(A210207(2*n+1))`
-/

namespace A269866.P17654415237210266639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (3 * (n + 1)) : ℚ) / (A338482 (A210207 (2 * n + 1)).toNat : ℚ)

end

end A269866.P17654415237210266639

/-!
# A269867: Self-inverse permutation of natural numbers: a(1) = 1, for even n, a(n) = A250469(1+a(n/2)), for odd n, a(n) = 2*a(A268674(n)-1).

The programs for A269867, there is no canonical definition to state claims against.
-/

/-! ## A269867.P16525707624469700964

`A269865(A269863(A269359(A269864(A269866(n+1)))))`
-/

namespace A269867.P16525707624469700964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269865 (A269863 (A269359 (A269864 (A269866 (n + 1)).toNat).toNat).toNat).toNat

end

end A269867.P16525707624469700964

/-!
# A269870: Numbers coprime to the number of their odd divisors.

The programs for A269870, the canonical program `A269870.P6851996741835492236` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269870 has offset 1).

The definition of A269870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269870.P6851996741835492236

`eq[1, gcd(n, ∑{d}[n, #%2])]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269870

/-- `eq[1, gcd(n, ∑{d}[n, #%2])]` -/
def P6851996741835492236.Spec : Prop :=
  ∀ n, (P6851996741835492236.a n : ℤ) = A269870 (n + 1)

theorem P6851996741835492236.correct : P6851996741835492236.Spec := by
  intro n
  simp only [A269870, Nat.add_sub_cancel]

end A269870

/-! ## A269870.P12009639965439111363

`eq[1, gcd(n+1, A001227(n+1))]+1`
-/

namespace A269870.P12009639965439111363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001227 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269870.P12009639965439111363

namespace A269870

/-- `eq[1, gcd(n+1, A001227(n+1))]+1` -/
def P12009639965439111363.Spec : Prop :=
  ∀ n, (P12009639965439111363.a n : ℤ) = A269870 (n + 1)

end A269870

/-! ## A269870.P16591045581723675712

`eq[1, gcd(n, A320003(A008458(n)))]`
-/

namespace A269870.P16591045581723675712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A320003 (A008458 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269870.P16591045581723675712

namespace A269870

/-- `eq[1, gcd(n, A320003(A008458(n)))]` -/
def P16591045581723675712.Spec : Prop :=
  ∀ n, (P16591045581723675712.a n : ℤ) = A269870 (n + 1)

end A269870

/-! ## A269870.P11467206749975825338

`A008619(eq[2, gcd(n+1, A054844(n+1))])`
-/

namespace A269870.P11467206749975825338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A054844 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A269870.P11467206749975825338

namespace A269870

/-- `A008619(eq[2, gcd(n+1, A054844(n+1))])` -/
def P11467206749975825338.Spec : Prop :=
  ∀ n, P11467206749975825338.a n = A269870 (n + 1)

end A269870

/-! ## A269870.P12609066617534319269

`record[A054531(A001227(n+1)+A000217(n))]`
-/

namespace A269870.P12609066617534319269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A001227 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269870.P12609066617534319269

namespace A269870

/-- `record[A054531(A001227(n+1)+A000217(n))]` -/
def P12609066617534319269.Spec : Prop :=
  ∀ n, P12609066617534319269.a n = A269870 (n + 1)

end A269870

/-! ## A269870.P10611886523761334454

`record[A054531(A145390(n+1)+A000217(n))]`
-/

namespace A269870.P10611886523761334454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A145390 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269870.P10611886523761334454

namespace A269870

/-- `record[A054531(A145390(n+1)+A000217(n))]` -/
def P10611886523761334454.Spec : Prop :=
  ∀ n, P10611886523761334454.a n = A269870 (n + 1)

end A269870

/-!
# A269871: Indices of square pyramidal numbers (A000330) that are the sum of 4 but no fewer nonzero squares.

The programs for A269871, there is no canonical definition to state claims against.
-/

/-! ## A269871.P7750640776852721938

`eq[3, A002828(A262678(C(2*(n+1), 3)/4))]`
-/

namespace A269871.P7750640776852721938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A262678 (SequenceMachineLib.roundAway ((Nat.choose (2 * (n + 1)) 3 : ℚ) / 4)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269871.P7750640776852721938

/-!
# A269872: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A269872, there is no canonical definition to state claims against.
-/

/-! ## A269872.P17008589259321084167

`∑[A269875(abs(1-n))]`
-/

namespace A269872.P17008589259321084167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269875 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269872.P17008589259321084167

/-! ## A269872.P148497111894396664

`A269875(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269872.P148497111894396664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269875 (n - 1) + a (n - 1)

end

end A269872.P148497111894396664

/-! ## A269872.P1721304646818597542

`Δ[A269874(n)]-A269875(n)`
-/

namespace A269872.P1721304646818597542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269875 n

end

end A269872.P1721304646818597542

/-! ## A269872.P16530603495637133699

`A269874(n+1)-(A269875(n)+A269874(n))`
-/

namespace A269872.P16530603495637133699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269874 (n + 1) - (A269875 n + A269874 n)

end

end A269872.P16530603495637133699

/-!
# A269873: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A269873, there is no canonical definition to state claims against.
-/

/-! ## A269873.P9568079579617976020

`A269872(2^n-1)`
-/

namespace A269873.P9568079579617976020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 (2 ^ n - 1)

end

end A269873.P9568079579617976020

/-! ## A269873.P15096390518352602611

`record[A269872(A303763(n))]`
-/

namespace A269873.P15096390518352602611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269873.P15096390518352602611

/-! ## A269873.P17747441373440419921

`and(-3, A269872(A000225(n)))`
-/

namespace A269873.P17747441373440419921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A269872 (A000225 n).toNat)

end

end A269873.P17747441373440419921

/-! ## A269873.P14714161215162882381

`record[A269872(A243071(n+1))]`
-/

namespace A269873.P14714161215162882381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269873.P14714161215162882381

/-! ## A269873.P2766352397964822525

`record[A269872(A245611(n+1))]`
-/

namespace A269873.P2766352397964822525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269873.P2766352397964822525

/-!
# A269874: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A269874, there is no canonical definition to state claims against.
-/

/-! ## A269874.P11558142721615516176

`∑[A269872(n)]`
-/

namespace A269874.P11558142721615516176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269874.P11558142721615516176

/-! ## A269874.P3646417430548824444

`A269872(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A269874.P3646417430548824444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269872 n + a (A023443 n).toNat

end

end A269874.P3646417430548824444

/-! ## A269874.P10646848577096155257

`A269872(n%A014601(n))+a(n-1)` with `a(0)=1`
-/

namespace A269874.P10646848577096155257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269872 (Int.tmod (n : ℤ) (A014601 n)).toNat + a (n - 1)

end

end A269874.P10646848577096155257

/-! ## A269874.P2505667618718506531

`∑[∑[A269875(abs(1-n))]]`
-/

namespace A269874.P2505667618718506531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269875 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269874.P2505667618718506531

/-! ## A269874.P15364507536619050358

`∑[A269875(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A269874.P15364507536619050358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A269875 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269874.P15364507536619050358

/-!
# A269875: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A269875, there is no canonical definition to state claims against.
-/

/-! ## A269875.P6758437563434938881

`Δ[A269872(n)]`
-/

namespace A269875.P6758437563434938881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269875.P6758437563434938881

/-! ## A269875.P14006642114718752527

`A269872(n+1)-A269872(n)`
-/

namespace A269875.P14006642114718752527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 (n + 1) - A269872 n

end

end A269875.P14006642114718752527

/-! ## A269875.P5682775053272211690

`A270078(n)-A034333(A034332(n))`
-/

namespace A269875.P5682775053272211690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270078 n - A034333 (A034332 n).toNat

end

end A269875.P5682775053272211690

/-! ## A269875.P1980125627983415661

`Δ[A270075(n)]-A034333(A034332(n))`
-/

namespace A269875.P1980125627983415661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034333 (A034332 n).toNat

end

end A269875.P1980125627983415661

/-!
# A269876: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

The programs for A269876, the canonical program `A269876.P7484206187499922827` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269876 has offset 0).

The definition of A269876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269876.P7484206187499922827

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=5, a(2)=5, a(3)=37, a(4)=13, a(5)=97`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269876

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P7484206187499922827.Spec : Prop :=
  ∀ n, P7484206187499922827.a n = A269876 n

theorem P7484206187499922827.correct : P7484206187499922827.Spec := by
  intro n
  simp only [A269876]

end A269876

/-! ## A269876.P2621238489254976430

`A269879(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269876.P2621238489254976430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269879 (n - 1) + a (n - 1)

end

end A269876.P2621238489254976430

namespace A269876

/-- `A269879(n-1)+a(n-1)` -/
def P2621238489254976430.Spec : Prop :=
  ∀ n, P2621238489254976430.a n = A269876 n

end A269876

/-! ## A269876.P13305760904605753062

`∑[A269879(n)]+1-A269879(n)`
-/

namespace A269876.P13305760904605753062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A269879 n)

end

end A269876.P13305760904605753062

namespace A269876

/-- `∑[A269879(n)]+1-A269879(n)` -/
def P13305760904605753062.Spec : Prop :=
  ∀ n, P13305760904605753062.a n = A269876 n

end A269876

/-! ## A269876.P13199484873372459718

`∑[A270454(n)-A266724(n)²]`
-/

namespace A269876.P13199484873372459718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 n - A266724 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269876.P13199484873372459718

namespace A269876

/-- `∑[A270454(n)-A266724(n)²]` -/
def P13199484873372459718.Spec : Prop :=
  ∀ n, P13199484873372459718.a n = A269876 n

end A269876

/-! ## A269876.P13449854686445530885

`Δ[A269878(n)]-A269879(n)`
-/

namespace A269876.P13449854686445530885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269879 n

end

end A269876.P13449854686445530885

namespace A269876

/-- `Δ[A269878(n)]-A269879(n)` -/
def P13449854686445530885.Spec : Prop :=
  ∀ n, P13449854686445530885.a n = A269876 n

end A269876

/-! ## A269876.P11388138769774786935

`A269878(n+1)-(A269879(n)+A269878(n))`
-/

namespace A269876.P11388138769774786935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269878 (n + 1) - (A269879 n + A269878 n)

end

end A269876.P11388138769774786935

namespace A269876

/-- `A269878(n+1)-(A269879(n)+A269878(n))` -/
def P11388138769774786935.Spec : Prop :=
  ∀ n, P11388138769774786935.a n = A269876 n

end A269876

/-!
# A269878: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

The programs for A269878, the canonical program `A269878.P13728270469944996308` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269878 has offset 0).

The definition of A269878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269878.P13728270469944996308

`∑[A269876(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269878

/-- `∑[A269876(n)]` -/
def P13728270469944996308.Spec : Prop :=
  ∀ n, P13728270469944996308.a n = A269878 n

theorem P13728270469944996308.correct : P13728270469944996308.Spec := by
  intro n
  simp only [A269878]

end A269878

/-! ## A269878.P8032263514201909099

`∑[A269879(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A269878.P8032263514201909099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A269879 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269878.P8032263514201909099

namespace A269878

/-- `∑[A269879(n-1)+a(n-1)]` -/
def P8032263514201909099.Spec : Prop :=
  ∀ n, P8032263514201909099.a n = A269878 n

end A269878

/-! ## A269878.P3622869654477505154

`∑[∑[A270454(n)-A266724(n)²]]`
-/

namespace A269878.P3622869654477505154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 n - A266724 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269878.P3622869654477505154

namespace A269878

/-- `∑[∑[A270454(n)-A266724(n)²]]` -/
def P3622869654477505154.Spec : Prop :=
  ∀ n, P3622869654477505154.a n = A269878 n

end A269878

/-! ## A269878.P8909039308298596474

`∑[∑[A269879(n)]+1-A269879(n)]`
-/

namespace A269878.P8909039308298596474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A269879 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269878.P8909039308298596474

namespace A269878

/-- `∑[∑[A269879(n)]+1-A269879(n)]` -/
def P8909039308298596474.Spec : Prop :=
  ∀ n, P8909039308298596474.a n = A269878 n

end A269878

/-! ## A269878.P8146553385253321162

`A269876(n+1)+a(n-1)-A269879(n)` with `a(0)=1`
-/

namespace A269878.P8146553385253321162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269876 (n + 1) + (a (n - 1) - A269879 n)

end

end A269878.P8146553385253321162

namespace A269878

/-- `A269876(n+1)+a(n-1)-A269879(n)` -/
def P8146553385253321162.Spec : Prop :=
  ∀ n, P8146553385253321162.a n = A269878 n

end A269878

/-! ## A269878.P9988847520903909702

`a(n-1)+A269876(n)%A174819(n+1)` with `a(0)=1`
-/

namespace A269878.P9988847520903909702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A269876 n) (A174819 (n + 1))

end

end A269878.P9988847520903909702

namespace A269878

/-- `a(n-1)+A269876(n)%A174819(n+1)` -/
def P9988847520903909702.Spec : Prop :=
  ∀ n, P9988847520903909702.a n = A269878 n

end A269878

/-!
# A269879: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

The programs for A269879, the canonical program `A269879.P11216592577254974492` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269879 has offset 0).

The definition of A269879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269879.P10189712770783437520

`∑[4/gcd(2, n)]*Δ[lcm(2, n)]`
-/

namespace A269879.P10189712770783437520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A269879.P10189712770783437520

namespace A269879

/-- `∑[4/gcd(2, n)]*Δ[lcm(2, n)]` -/
def P10189712770783437520.Spec : Prop :=
  ∀ n, P10189712770783437520.a n = (A269879 n : ℚ)

end A269879

/-! ## A269879.P890475863443413906

`(7+(-1)^n+8*(1+(-1)^n)*n+6*(-1)^n*n²)/2`
-/

namespace A269879.P890475863443413906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 + (-1) ^ n + 8 * (1 + (-1) ^ n) * (n : ℤ) + 6 * (-1) ^ n * (n ^ 2 : ℤ) : ℚ) / 2

end

end A269879.P890475863443413906

namespace A269879

/-- `(7+(-1)^n+8*(1+(-1)^n)*n+6*(-1)^n*n²)/2` -/
def P890475863443413906.Spec : Prop :=
  ∀ n, P890475863443413906.a n = (A269879 n : ℚ)

end A269879

/-! ## A269879.P11216592577254974492

`Δ[A269876(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269879

/-- `Δ[A269876(n)]` -/
def P11216592577254974492.Spec : Prop :=
  ∀ n, P11216592577254974492.a n = A269879 n

theorem P11216592577254974492.correct : P11216592577254974492.Spec := by
  intro n
  simp only [A269879]

end A269879

/-! ## A269879.P2382071024239854682

`∑[n*Δ[A084060(n)]+4]`
-/

namespace A269879.P2382071024239854682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269879.P2382071024239854682

namespace A269879

/-- `∑[n*Δ[A084060(n)]+4]` -/
def P2382071024239854682.Spec : Prop :=
  ∀ n, P2382071024239854682.a n = A269879 n

end A269879

/-! ## A269879.P810493533789002641

`A269876(n+1)-A269876(n)`
-/

namespace A269879.P810493533789002641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269876 (n + 1) - A269876 n

end

end A269879.P810493533789002641

namespace A269879

/-- `A269876(n+1)-A269876(n)` -/
def P810493533789002641.Spec : Prop :=
  ∀ n, P810493533789002641.a n = A269879 n

theorem P810493533789002641.correct : P810493533789002641.Spec := by
  intro n
  simp only [A269879, Nat.add_sub_cancel, A269879.P810493533789002641.a, A269879.P11216592577254974492.f1, A269879.P11216592577254974492.a, SequenceMachineLib.memo_apply]

end A269879

/-! ## A269879.P2206097981855886407

`Δ[A109045(A042948(n))]*A008619(n)`
-/

namespace A269879.P2206097981855886407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 n

end

end A269879.P2206097981855886407

namespace A269879

/-- `Δ[A109045(A042948(n))]*A008619(n)` -/
def P2206097981855886407.Spec : Prop :=
  ∀ n, P2206097981855886407.a n = A269879 n

end A269879

/-! ## A269879.P10212021317459352789

`A270454(n+1)-A266724(n+1)²`
-/

namespace A269879.P10212021317459352789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 (n + 1) - A266724 (n + 1) ^ 2

end

end A269879.P10212021317459352789

namespace A269879

/-- `A270454(n+1)-A266724(n+1)²` -/
def P10212021317459352789.Spec : Prop :=
  ∀ n, P10212021317459352789.a n = A269879 n

end A269879

/-! ## A269879.P8016921220780492085

`Δ[A109045(2*n)]*A008619(A008619(6*n))`
-/

namespace A269879.P8016921220780492085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 (A008619 (6 * n)).toNat

end

end A269879.P8016921220780492085

namespace A269879

/-- `Δ[A109045(2*n)]*A008619(A008619(6*n))` -/
def P8016921220780492085.Spec : Prop :=
  ∀ n, P8016921220780492085.a n = A269879 n

end A269879

/-!
# A269880: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

The programs for A269880, the canonical program `A269880.P13171534549012814573` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269880 has offset 0).

The definition of A269880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269880.P13171534549012814573

`Δ[4*a(and(n, n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269880

/-- `Δ[4*a(and(n, n-1))]` -/
def P13171534549012814573.Spec : Prop :=
  ∀ n, P13171534549012814573.a n = A269880 n

theorem P13171534549012814573.correct : P13171534549012814573.Spec := by
  intro n
  simp only [A269880]

end A269880

/-! ## A269880.P1215445839664185395

`Δ[a(floor(n/2))*a(n%2)]` with `a(0)=1, a(1)=4`
-/

namespace A269880.P1215445839664185395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * f1 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A269880.P1215445839664185395

namespace A269880

/-- `Δ[a(floor(n/2))*a(n%2)]` -/
def P1215445839664185395.Spec : Prop :=
  ∀ n, P1215445839664185395.a n = A269880 n

end A269880

/-! ## A269880.P5201458728831155279

`Δ[4*a(n-gcd(n, a(n-1)))]` with `a(0)=1`
-/

namespace A269880.P5201458728831155279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - Nat.gcd n (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A269880.P5201458728831155279

namespace A269880

/-- `Δ[4*a(n-gcd(n, a(n-1)))]` -/
def P5201458728831155279.Spec : Prop :=
  ∀ n, P5201458728831155279.a n = A269880 n

end A269880

/-! ## A269880.P3144665270890808925

`Δ[a(and(n, n-1))/(1-3/4)]` with `a(0)=1`
-/

namespace A269880.P3144665270890808925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat / (1 - (3 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P3144665270890808925

namespace A269880

/-- `Δ[a(and(n, n-1))/(1-3/4)]` -/
def P3144665270890808925.Spec : Prop :=
  ∀ n, P3144665270890808925.a n = (A269880 n : ℚ)

end A269880

/-! ## A269880.P6646601246256408102

`Δ[A102376(n)]`
-/

namespace A269880.P6646601246256408102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P6646601246256408102

namespace A269880

/-- `Δ[A102376(n)]` -/
def P6646601246256408102.Spec : Prop :=
  ∀ n, P6646601246256408102.a n = A269880 n

end A269880

/-! ## A269880.P16837358927932013147

`Δ[A001316(n)²]`
-/

namespace A269880.P16837358927932013147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P16837358927932013147

namespace A269880

/-- `Δ[A001316(n)²]` -/
def P16837358927932013147.Spec : Prop :=
  ∀ n, P16837358927932013147.a n = A269880 n

end A269880

/-! ## A269880.P8690996160945014334

`Δ[Δ[A116520(n)]]`
-/

namespace A269880.P8690996160945014334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P8690996160945014334

namespace A269880

/-- `Δ[Δ[A116520(n)]]` -/
def P8690996160945014334.Spec : Prop :=
  ∀ n, P8690996160945014334.a n = A269880 n

end A269880

/-! ## A269880.P17324597391709183502

`Δ[4^A000120(n)]`
-/

namespace A269880.P17324597391709183502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P17324597391709183502

namespace A269880

/-- `Δ[4^A000120(n)]` -/
def P17324597391709183502.Spec : Prop :=
  ∀ n, P17324597391709183502.a n = (A269880 n : ℚ)

end A269880

/-! ## A269880.P1679121619357232231

`Δ[Δ[A006046(n)]²]`
-/

namespace A269880.P1679121619357232231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P1679121619357232231

namespace A269880

/-- `Δ[Δ[A006046(n)]²]` -/
def P1679121619357232231.Spec : Prop :=
  ∀ n, P1679121619357232231.a n = A269880 n

end A269880

/-! ## A269880.P6566633801149128693

`Δ[A173531(Δ[n²])]`
-/

namespace A269880.P6566633801149128693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P6566633801149128693

namespace A269880

/-- `Δ[A173531(Δ[n²])]` -/
def P6566633801149128693.Spec : Prop :=
  ∀ n, P6566633801149128693.a n = A269880 n

end A269880

/-! ## A269880.P11031868858060476239

`Δ[sqrt(Δ[A116523(n)])]`
-/

namespace A269880.P11031868858060476239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116523 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P11031868858060476239

namespace A269880

/-- `Δ[sqrt(Δ[A116523(n)])]` -/
def P11031868858060476239.Spec : Prop :=
  ∀ n, P11031868858060476239.a n = (A269880 n : ℝ)

end A269880

/-! ## A269880.P10075195941214734011

`Δ[(A038573(n)+1)²]`
-/

namespace A269880.P10075195941214734011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P10075195941214734011

namespace A269880

/-- `Δ[(A038573(n)+1)²]` -/
def P10075195941214734011.Spec : Prop :=
  ∀ n, P10075195941214734011.a n = A269880 n

end A269880

/-! ## A269880.P16326439082656156014

`Δ[A060632(2*n)²]`
-/

namespace A269880.P16326439082656156014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P16326439082656156014

namespace A269880

/-- `Δ[A060632(2*n)²]` -/
def P16326439082656156014.Spec : Prop :=
  ∀ n, P16326439082656156014.a n = A269880 n

end A269880

/-! ## A269880.P11704288831583029065

`Δ[(A117973(n)/2)²]`
-/

namespace A269880.P11704288831583029065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A117973 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P11704288831583029065

namespace A269880

/-- `Δ[(A117973(n)/2)²]` -/
def P11704288831583029065.Spec : Prop :=
  ∀ n, P11704288831583029065.a n = (A269880 n : ℚ)

end A269880

/-! ## A269880.P14962523607756743518

`Δ[(A160713(n)/3)²]`
-/

namespace A269880.P14962523607756743518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160713 n : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P14962523607756743518

namespace A269880

/-- `Δ[(A160713(n)/3)²]` -/
def P14962523607756743518.Spec : Prop :=
  ∀ n, P14962523607756743518.a n = (A269880 n : ℚ)

end A269880

/-! ## A269880.P12249208465617216652

`Δ[A361145(2*n+1)²]`
-/

namespace A269880.P12249208465617216652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P12249208465617216652

namespace A269880

/-- `Δ[A361145(2*n+1)²]` -/
def P12249208465617216652.Spec : Prop :=
  ∀ n, P12249208465617216652.a n = A269880 n

end A269880

/-! ## A269880.P5147076415432069845

`A102376(n+1)-A102376(n)`
-/

namespace A269880.P5147076415432069845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (n + 1) - A102376 n

end

end A269880.P5147076415432069845

namespace A269880

/-- `A102376(n+1)-A102376(n)` -/
def P5147076415432069845.Spec : Prop :=
  ∀ n, P5147076415432069845.a n = A269880 n

end A269880

/-! ## A269880.P17126136199803432013

`(A001316(n+1)+A001316(n))*A151930(n)`
-/

namespace A269880.P17126136199803432013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) + A001316 n) * A151930 n

end

end A269880.P17126136199803432013

namespace A269880

/-- `(A001316(n+1)+A001316(n))*A151930(n)` -/
def P17126136199803432013.Spec : Prop :=
  ∀ n, P17126136199803432013.a n = A269880 n

end A269880

/-! ## A269880.P2052045486792621132

`(A001316(n+1)-A001316(n))*A105321(n+1)`
-/

namespace A269880.P2052045486792621132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) - A001316 n) * A105321 (n + 1)

end

end A269880.P2052045486792621132

namespace A269880

/-- `(A001316(n+1)-A001316(n))*A105321(n+1)` -/
def P2052045486792621132.Spec : Prop :=
  ∀ n, P2052045486792621132.a n = A269880 n

end A269880

/-! ## A269880.P5192907200829022519

`Δ[A177241(n+1)]`
-/

namespace A269880.P5192907200829022519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269880.P5192907200829022519

namespace A269880

/-- `Δ[A177241(n+1)]` -/
def P5192907200829022519.Spec : Prop :=
  ∀ n, P5192907200829022519.a n = A269880 n

end A269880

/-!
# A269881: Number of n X n 0..5 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling five exactly once.

The programs for A269881, there is no canonical definition to state claims against.
-/

/-! ## A269881.P16836306060006572877

`A269888(∑[4*n]+1)`
-/

namespace A269881.P16836306060006572877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269881.P16836306060006572877

/-! ## A269881.P1288146561466134926

`A269888(A001844(n))/A040790(n)`
-/

namespace A269881.P1288146561466134926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269888 (A001844 n).toNat : ℚ) / (A040790 n : ℚ)

end

end A269881.P1288146561466134926

/-!
# A269882: Number of n X 2 0..5 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling five exactly once.

The programs for A269882, there is no canonical definition to state claims against.
-/

/-! ## A269882.P1052240863607968752

`A269888(∑[n+1]+2)`
-/

namespace A269882.P1052240863607968752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269882.P1052240863607968752

/-! ## A269882.P488414189382224105

`lcm(3, A269888(A133263(n+1)))`
-/

namespace A269882.P488414189382224105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A269888 (A133263 (n + 1)).toNat)

end

end A269882.P488414189382224105

/-! ## A269882.P14370620334354474557

`lcm(2, A269888(A000096(n+1)))`
-/

namespace A269882.P14370620334354474557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269888 (A000096 (n + 1)).toNat)

end

end A269882.P14370620334354474557

/-! ## A269882.P12866167934354862106

`A033999(2*n)*A269888(A000096(n+1))`
-/

namespace A269882.P12866167934354862106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A269888 (A000096 (n + 1)).toNat

end

end A269882.P12866167934354862106

/-! ## A269882.P13369030078729327609

`A269888(A000096(n+1))%A126511(2*n+1)`
-/

namespace A269882.P13369030078729327609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269888 (A000096 (n + 1)).toNat) (A126511 (2 * n + 1))

end

end A269882.P13369030078729327609

/-!
# A269883: Number of n X 3 0..5 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totaling five exactly once.

The programs for A269883, there is no canonical definition to state claims against.
-/

/-! ## A269883.P8809613932292820084

`A269888(∑[n+2]+4)`
-/

namespace A269883.P8809613932292820084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269883.P8809613932292820084

/-! ## A269883.P15941056145647538866

`lcm(2, A269888(A046691(n)+7))`
-/

namespace A269883.P15941056145647538866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269888 (A046691 n + 7).toNat)

end

end A269883.P15941056145647538866

/-! ## A269883.P13078824132383391098

`A269888(A046691(n)+7)+A025443(n)`
-/

namespace A269883.P13078824132383391098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (A046691 n + 7).toNat + A025443 n

end

end A269883.P13078824132383391098

/-! ## A269883.P17278981807764380098

`and(A153881(n+2), A269888(A046691(n)+7))`
-/

namespace A269883.P17278981807764380098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 2)) (A269888 (A046691 n + 7).toNat)

end

end A269883.P17278981807764380098

/-! ## A269883.P17099944454104202169

`(A000041(n)%2)!*A269888(A046691(n)+7)`
-/

namespace A269883.P17099944454104202169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A269888 (A046691 n + 7).toNat

end

end A269883.P17099944454104202169

/-!
# A269884: Number of nX4 0..5 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling five exactly once.

The programs for A269884, there is no canonical definition to state claims against.
-/

/-! ## A269884.P6457232513817273454

`A269888(A167614(n+2)+1)`
-/

namespace A269884.P6457232513817273454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (A167614 (n + 2) + 1).toNat

end

end A269884.P6457232513817273454

/-! ## A269884.P15510312781475766777

`A269888(Δ[A264443(n)-n²])`
-/

namespace A269884.P15510312781475766777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (f1 (n + 1) - f1 n).toNat

end

end A269884.P15510312781475766777

/-!
# A269885: Number of nX5 0..5 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling five exactly once.

The programs for A269885, there is no canonical definition to state claims against.
-/

/-! ## A269885.P14121315060203480299

`A269888(A374005(n+1))`
-/

namespace A269885.P14121315060203480299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (A374005 (n + 1)).toNat

end

end A269885.P14121315060203480299

/-! ## A269885.P2126801228732638532

`A269888(Δ[A264443(n)])`
-/

namespace A269885.P2126801228732638532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (f1 (n + 1) - f1 n).toNat

end

end A269885.P2126801228732638532

/-! ## A269885.P13486511075068295011

`A269888(eq[5, A200370(n+1)])`
-/

namespace A269885.P13486511075068295011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269885.P13486511075068295011

/-! ## A269885.P14574971916553922248

`A269888(A264443(n+1)-A264443(n))`
-/

namespace A269885.P14574971916553922248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (A264443 (n + 1) - A264443 n).toNat

end

end A269885.P14574971916553922248

/-!
# A269887: 

The programs for A269887, there is no canonical definition to state claims against.
-/

/-! ## A269887.P6266756133880620426

`A269888(A133263(n+6)+5)`
-/

namespace A269887.P6266756133880620426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269888 (A133263 (n + 6) + 5).toNat

end

end A269887.P6266756133880620426

/-!
# A269888: T(n,k)=Number of nXk 0..5 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling five exactly once.

The programs for A269888, there is no canonical definition to state claims against.
-/

/-! ## A269888.P306575290126429314

`A294888(6^A001045(n))`
-/

namespace A269888.P306575290126429314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A001045 n : ℤ))).toNat

end

end A269888.P306575290126429314

/-!
# A269889: The number of permutations of 1, 2,..., n such that none of 123, 132, 213, 231, 312, 321 appear in the permutation.

The programs for A269889, there is no canonical definition to state claims against.
-/

/-! ## A269889.P1539745300027706151

`A000142(n)-A298881(floor(n-atan(n)))`
-/

namespace A269889.P1539745300027706151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A298881 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A269889.P1539745300027706151

/-! ## A269889.P12123370400160979092

`A000142(n)-A298881(A289207(n))`
-/

namespace A269889.P12123370400160979092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A298881 (A289207 n).toNat

end

end A269889.P12123370400160979092

/-! ## A269889.P50936856149217906

`A366372(n)+A053645(A006139(n))`
-/

namespace A269889.P50936856149217906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366372 n + A053645 (A006139 n).toNat

end

end A269889.P50936856149217906

/-!
# A269890: Number of conjugacy classes of subgroups of the hyperoctahedral group.

The programs for A269890, there is no canonical definition to state claims against.
-/

/-! ## A269890.P7504985090060967306

`A329635(A086622(n))+1`
-/

namespace A269890.P7504985090060967306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329635 (A086622 n).toNat + 1

end

end A269890.P7504985090060967306

/-!
# A269891: Primes p such that both the concatenation and the sum of 2 and p are prime.

The programs for A269891, there is no canonical definition to state claims against.
-/

/-! ## A269891.P16414453783154813131

`p?[p?[A032665(n+1)]+2]-2`
-/

namespace A269891.P16414453783154813131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A269891.P16414453783154813131

/-! ## A269891.P14497907582729548551

`∩[A001097(n+1), A032665(n+1)]`
-/

namespace A269891.P14497907582729548551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P14497907582729548551

/-! ## A269891.P13048892692011950381

`∩[A001359(n+1), A032665(n+1)]`
-/

namespace A269891.P13048892692011950381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P13048892692011950381

/-! ## A269891.P6479432342039967061

`∩[A001838(n+1), A032665(n+1)]`
-/

namespace A269891.P6479432342039967061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P6479432342039967061

/-! ## A269891.P16467109977329643791

`∩[A032665(n+1), A054799(n+1)]`
-/

namespace A269891.P16467109977329643791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P16467109977329643791

/-! ## A269891.P6361355948874086912

`∩[A032665(n+1), A063693(n+1)]`
-/

namespace A269891.P6361355948874086912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P6361355948874086912

/-! ## A269891.P16970054220605169398

`∩[A032665(n+1), A063700(n+1)]`
-/

namespace A269891.P16970054220605169398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P16970054220605169398

/-! ## A269891.P6591570857572664146

`∩[A032665(n+1), A124588(n+1)]`
-/

namespace A269891.P6591570857572664146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P6591570857572664146

/-! ## A269891.P1346403905591815868

`∩[A032665(n+1), A141830(n+1)]`
-/

namespace A269891.P1346403905591815868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P1346403905591815868

/-! ## A269891.P12319520687133812716

`∩[A032665(n+1), A171821(n+1)]`
-/

namespace A269891.P12319520687133812716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P12319520687133812716

/-! ## A269891.P7363288121022030898

`∩[A032665(n+1), A181747(n+1)]`
-/

namespace A269891.P7363288121022030898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P7363288121022030898

/-! ## A269891.P15870147268123237560

`∩[A032665(n+1), A238528(n+1)]`
-/

namespace A269891.P15870147268123237560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P15870147268123237560

/-! ## A269891.P13884405462267823068

`∩[A032665(n+1), A265760(n+1)]`
-/

namespace A269891.P13884405462267823068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P13884405462267823068

/-! ## A269891.P3070950334166363248

`∩[A032665(n+1), A280255(n+1)]`
-/

namespace A269891.P3070950334166363248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P3070950334166363248

/-! ## A269891.P938023832953887235

`filter[A032665(n+1), A353463(#)]`
-/

namespace A269891.P938023832953887235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A269891.P938023832953887235

/-! ## A269891.P3672756281989736980

`p?[A001414(A276803(n+1))]-2`
-/

namespace A269891.P3672756281989736980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A276803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A269891.P3672756281989736980

/-! ## A269891.P14704025631919431344

`∩[A032665(n+1), A124589(n+1)]`
-/

namespace A269891.P14704025631919431344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269891.P14704025631919431344

/-!
# A269894: 

The programs for A269894, there is no canonical definition to state claims against.
-/

/-! ## A269894.P15925173667266855175

`A269902((n+1)²+n²)`
-/

namespace A269894.P15925173667266855175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269902 ((n + 1) ^ 2 + n ^ 2)

end

end A269894.P15925173667266855175

/-!
# A269895: Number of n X 1 0..6 arrays with some element plus some horizontally or vertically adjacent neighbor totalling six exactly once.

The programs for A269895, the canonical program `A269895.P15486434884754240470` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269895 has offset 1).

The definition of A269895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269895.P9797174512902252429

`6^(n-1)*7*n`
-/

namespace A269895.P9797174512902252429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (7 * n : ℚ)

end

end A269895.P9797174512902252429

namespace A269895

/-- `6^(n-1)*7*n` -/
def P9797174512902252429.Spec : Prop :=
  ∀ n, P9797174512902252429.a n = (A269895 (n + 1) : ℚ)

theorem P9797174512902252429.correct : P9797174512902252429.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A269895, Nat.add_sub_cancel, A269895.P9797174512902252429.a, A269895.P15486434884754240470.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A269895, Nat.add_sub_cancel, A269895.P9797174512902252429.a, A269895.P15486434884754240470.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A269895

/-! ## A269895.P15486434884754240470

`12*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269895

/-- `12*a(n-1)-36*a(n-2)` -/
def P15486434884754240470.Spec : Prop :=
  ∀ n, P15486434884754240470.a n = A269895 (n + 1)

theorem P15486434884754240470.correct : P15486434884754240470.Spec := by
  intro n
  simp only [A269895, Nat.add_sub_cancel]

end A269895

/-! ## A269895.P14527970838754436915

`lcm(7, n*A003949(n))`
-/

namespace A269895.P14527970838754436915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 ((n : ℤ) * A003949 n)

end

end A269895.P14527970838754436915

namespace A269895

/-- `lcm(7, n*A003949(n))` -/
def P14527970838754436915.Spec : Prop :=
  ∀ n, (P14527970838754436915.a n : ℤ) = A269895 (n + 1)

end A269895

/-! ## A269895.P14559302510052955403

`abs(A003949(n)*A038608(n))`
-/

namespace A269895.P14559302510052955403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003949 n * A038608 n|

end

end A269895.P14559302510052955403

namespace A269895

/-- `abs(A003949(n)*A038608(n))` -/
def P14559302510052955403.Spec : Prop :=
  ∀ n, P14559302510052955403.a n = A269895 (n + 1)

end A269895

/-! ## A269895.P2314895402742371585

`-(A001489(n)*A003949(n))`
-/

namespace A269895.P2314895402742371585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A003949 n)

end

end A269895.P2314895402742371585

namespace A269895

/-- `-(A001489(n)*A003949(n))` -/
def P2314895402742371585.Spec : Prop :=
  ∀ n, P2314895402742371585.a n = A269895 (n + 1)

end A269895

/-! ## A269895.P16909830258543825002

`A036292(n)+A036292(n)/6`
-/

namespace A269895.P16909830258543825002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036292 n : ℚ) + (A036292 n : ℚ) / 6

end

end A269895.P16909830258543825002

namespace A269895

/-- `A036292(n)+A036292(n)/6` -/
def P16909830258543825002.Spec : Prop :=
  ∀ n, P16909830258543825002.a n = (A269895 (n + 1) : ℚ)

end A269895

/-! ## A269895.P12438144216864458447

`(n*A003949(n))^A007318(C(2, n))`
-/

namespace A269895.P12438144216864458447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A003949 n : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A269895.P12438144216864458447

namespace A269895

/-- `(n*A003949(n))^A007318(C(2, n))` -/
def P12438144216864458447.Spec : Prop :=
  ∀ n, P12438144216864458447.a n = (A269895 (n + 1) : ℚ)

end A269895

/-!
# A269896: Number of n X 2 0..6 arrays with some element plus some horizontally or vertically adjacent neighbor totalling six exactly once.

The programs for A269896, there is no canonical definition to state claims against.
-/

/-! ## A269896.P4156007074652508697

`A269902(∑[n+1]+2)`
-/

namespace A269896.P4156007074652508697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269896.P4156007074652508697

/-! ## A269896.P8988432553095839188

`record[gcd(A269902(n+2), A269940(n+3))]`
-/

namespace A269896.P8988432553095839188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269902 (n + 2)) (A269940 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269896.P8988432553095839188

/-!
# A269897: Number of n X 3 0..6 arrays with some element plus some horizontally or vertically adjacent neighbor totalling six exactly once.

The programs for A269897, there is no canonical definition to state claims against.
-/

/-! ## A269897.P13568406176781408808

`A269902(A167614(n+1))`
-/

namespace A269897.P13568406176781408808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269902 (A167614 (n + 1)).toNat

end

end A269897.P13568406176781408808

/-! ## A269897.P4782041583295722711

`A269902(eq[2, A131818(n+1)-2])`
-/

namespace A269897.P4782041583295722711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269897.P4782041583295722711

/-! ## A269897.P14766918461834586412

`A269902(∑[n+3]+1)`
-/

namespace A269897.P14766918461834586412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269897.P14766918461834586412

/-!
# A269898: Number of nX4 0..6 arrays with some element plus some horizontally or vertically adjacent neighbor totalling six exactly once.

The programs for A269898, there is no canonical definition to state claims against.
-/

/-! ## A269898.P9182423766993187173

`A269902(A167614(n+2)+1)`
-/

namespace A269898.P9182423766993187173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269902 (A167614 (n + 2) + 1).toNat

end

end A269898.P9182423766993187173

/-! ## A269898.P3901682020166884464

`A269902(eq[5, A131818(n+1)])`
-/

namespace A269898.P3901682020166884464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269898.P3901682020166884464

