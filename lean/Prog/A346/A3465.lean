import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A346500: Number A(n,k) of partitions of the (n+k)-multiset {1,2,...,n,1,2,...,k}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A346500, there is no canonical definition to state claims against.
-/

/-! ## A346500.P14514244095367717671

`A001055(A002110(col(n))*A002110(row(n)-col(n)))`
-/

namespace A346500.P14514244095367717671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A002110 (SequenceMachineLib.triCol n) * A002110 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)).toNat

end

end A346500.P14514244095367717671

/-! ## A346500.P10335322335338471445

`A001055(A124859(A036561(n)))`
-/

namespace A346500.P10335322335338471445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A124859 (A036561 n).toNat).toNat

end

end A346500.P10335322335338471445

/-! ## A346500.P8093338844518409440

`A153679(A134634(n)+A024680(n+1))`
-/

namespace A346500.P8093338844518409440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (A134634 n + A024680 (n + 1)).toNat

end

end A346500.P8093338844518409440

/-! ## A346500.P7881744509150403963

`A134634(n)+A024680(A187829(n+1))`
-/

namespace A346500.P7881744509150403963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134634 n + A024680 (A187829 (n + 1)).toNat

end

end A346500.P7881744509150403963

/-! ## A346500.P18213469665590741206

`A204553(A157050(n))+A024680(n+1)`
-/

namespace A346500.P18213469665590741206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A157050 n).toNat + A024680 (n + 1)

end

end A346500.P18213469665590741206

/-!
# A346501: With p = prime(n), a(n) is the least composite k such that A001414(k) = p and k+p is prime, or 0 if there is no such k.

The programs for A346501, there is no canonical definition to state claims against.
-/

/-! ## A346501.P2558833763035908578

`A004186(A189000(n+1))%A078841(n)`
-/

namespace A346501.P2558833763035908578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 (A189000 (n + 1)).toNat) (A078841 n)

end

end A346501.P2558833763035908578

/-! ## A346501.P5573648523138637396

`A026242(n+2)*A087667(A000009(2*n))`
-/

namespace A346501.P5573648523138637396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (n + 2) * A087667 (A000009 (2 * n)).toNat

end

end A346501.P5573648523138637396

/-!
# A346502: a(n) = 3n - (sum of digits of 3n in base 3).

The programs for A346502, the canonical program `A346502.P9259212163329091167` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346502 has offset 0).

The definition of A346502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346502.P9259212163329091167

`2*A004128(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346502

/-- `2*A004128(n)` -/
def P9259212163329091167.Spec : Prop :=
  ∀ n, P9259212163329091167.a n = A346502 n

theorem P9259212163329091167.correct : P9259212163329091167.Spec := by
  intro n
  simp only [A346502]

end A346502

/-! ## A346502.P1570723659028861914

`A344853(3*n)`
-/

namespace A346502.P1570723659028861914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 (3 * n)

end

end A346502.P1570723659028861914

namespace A346502

/-- `A344853(3*n)` -/
def P1570723659028861914.Spec : Prop :=
  ∀ n, P1570723659028861914.a n = A346502 n

end A346502

/-! ## A346502.P11345411115020059796

`3*n-A053735(3*n)`
-/

namespace A346502.P11345411115020059796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A053735 (3 * n)

end

end A346502.P11345411115020059796

namespace A346502

/-- `3*n-A053735(3*n)` -/
def P11345411115020059796.Spec : Prop :=
  ∀ n, P11345411115020059796.a n = A346502 n

end A346502

/-! ## A346502.P11514341878606686600

`∑[val(floor(3/acot(n))², 3)]`
-/

namespace A346502.P11514341878606686600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346502.P11514341878606686600

namespace A346502

/-- `∑[val(floor(3/acot(n))², 3)]` -/
def P11514341878606686600.Spec : Prop :=
  ∀ n, (P11514341878606686600.a n : ℤ) = A346502 n

end A346502

/-! ## A346502.P1876489191437816886

`a(floor(n/3))+2*n` with `a(0)=0`
-/

namespace A346502.P1876489191437816886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + 2 * n

end

end A346502.P1876489191437816886

namespace A346502

/-- `a(floor(n/3))+2*n` -/
def P1876489191437816886.Spec : Prop :=
  ∀ n, (P1876489191437816886.a n : ℤ) = A346502 n

end A346502

/-! ## A346502.P8826001537551385319

`a(floor(n/3))+n+n` with `a(0)=0`
-/

namespace A346502.P8826001537551385319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + n + n

end

end A346502.P8826001537551385319

namespace A346502

/-- `a(floor(n/3))+n+n` -/
def P8826001537551385319.Spec : Prop :=
  ∀ n, (P8826001537551385319.a n : ℤ) = A346502 n

end A346502

/-! ## A346502.P3919197383074884492

`3*n-(n-a(floor(n/3)))` with `a(0)=0`
-/

namespace A346502.P3919197383074884492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat)

end

end A346502.P3919197383074884492

namespace A346502

/-- `3*n-(n-a(floor(n/3)))` -/
def P3919197383074884492.Spec : Prop :=
  ∀ n, P3919197383074884492.a n = A346502 n

end A346502

/-! ## A346502.P10655148785971219507

`2*∑[val(abs(1-3*n)+1, 3)]`
-/

namespace A346502.P10655148785971219507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (3 * n : ℤ)| + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346502.P10655148785971219507

namespace A346502

/-- `2*∑[val(abs(1-3*n)+1, 3)]` -/
def P10655148785971219507.Spec : Prop :=
  ∀ n, (P10655148785971219507.a n : ℤ) = A346502 n

end A346502

/-! ## A346502.P2373140111231591940

`abs(a(n-1)+val(n², 3))+2` with `a(0)=0`
-/

namespace A346502.P2373140111231591940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (n ^ 2) 3 + 2

end

end A346502.P2373140111231591940

namespace A346502

/-- `abs(a(n-1)+val(n², 3))+2` -/
def P2373140111231591940.Spec : Prop :=
  ∀ n, (P2373140111231591940.a n : ℤ) = A346502 n

end A346502

/-! ## A346502.P9300602987358019839

`floor(a(n-1)+val(n², 3))+2` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A346502.P9300602987358019839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (n ^ 2) 3 + 2

end

end A346502.P9300602987358019839

namespace A346502

/-- `floor(a(n-1)+val(n², 3))+2` -/
def P9300602987358019839.Spec : Prop :=
  ∀ n, (P9300602987358019839.a n : ℤ) = A346502 n

end A346502

/-! ## A346502.P18066019070372477376

`2*comp[A096346(n)]`
-/

namespace A346502.P18066019070372477376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346502.P18066019070372477376

namespace A346502

/-- `2*comp[A096346(n)]` -/
def P18066019070372477376.Spec : Prop :=
  ∀ n, (P18066019070372477376.a n : ℤ) = A346502 n

end A346502

/-! ## A346502.P9675721735552612809

`2*(A054861(n)+n)`
-/

namespace A346502.P9675721735552612809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054861 n + (n : ℤ))

end

end A346502.P9675721735552612809

namespace A346502

/-- `2*(A054861(n)+n)` -/
def P9675721735552612809.Spec : Prop :=
  ∀ n, P9675721735552612809.a n = A346502 n

end A346502

/-! ## A346502.P10594455642491307802

`4*n-A230641(n)`
-/

namespace A346502.P10594455642491307802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A230641 n

end

end A346502.P10594455642491307802

namespace A346502

/-- `4*n-A230641(n)` -/
def P10594455642491307802.Spec : Prop :=
  ∀ n, P10594455642491307802.a n = A346502 n

end A346502

/-! ## A346502.P1250404638216651799

`A344853(n)+n+n`
-/

namespace A346502.P1250404638216651799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n + (n : ℤ) + (n : ℤ)

end

end A346502.P1250404638216651799

namespace A346502

/-- `A344853(n)+n+n` -/
def P1250404638216651799.Spec : Prop :=
  ∀ n, P1250404638216651799.a n = A346502 n

end A346502

/-! ## A346502.P12527020683006042555

`2*(A120514(n+1)-1)`
-/

namespace A346502.P12527020683006042555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120514 (n + 1) - 1)

end

end A346502.P12527020683006042555

namespace A346502

/-- `2*(A120514(n+1)-1)` -/
def P12527020683006042555.Spec : Prop :=
  ∀ n, P12527020683006042555.a n = A346502 n

end A346502

/-! ## A346502.P18112851339524193877

`A344853(n)+A005843(n)`
-/

namespace A346502.P18112851339524193877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n + A005843 n

end

end A346502.P18112851339524193877

namespace A346502

/-- `A344853(n)+A005843(n)` -/
def P18112851339524193877.Spec : Prop :=
  ∀ n, P18112851339524193877.a n = A346502 n

end A346502

/-! ## A346502.P13289721380838957854

`A004134(n)-A180017(n)`
-/

namespace A346502.P13289721380838957854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - A180017 n

end

end A346502.P13289721380838957854

namespace A346502

/-- `A004134(n)-A180017(n)` -/
def P13289721380838957854.Spec : Prop :=
  ∀ n, P13289721380838957854.a n = A346502 n

end A346502

/-! ## A346502.P4977006305359981021

`A016777(n)-(A053735(n)+1)`
-/

namespace A346502.P4977006305359981021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A053735 n + 1)

end

end A346502.P4977006305359981021

namespace A346502

/-- `A016777(n)-(A053735(n)+1)` -/
def P4977006305359981021.Spec : Prop :=
  ∀ n, P4977006305359981021.a n = A346502 n

end A346502

/-! ## A346502.P11613024045293241071

`A016777(n)-A173523(n+1)`
-/

namespace A346502.P11613024045293241071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A173523 (n + 1)

end

end A346502.P11613024045293241071

namespace A346502

/-- `A016777(n)-A173523(n+1)` -/
def P11613024045293241071.Spec : Prop :=
  ∀ n, P11613024045293241071.a n = A346502 n

end A346502

/-! ## A346502.P7475117558055608262

`A016789(n)-(A053735(n)+2)`
-/

namespace A346502.P7475117558055608262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A053735 n + 2)

end

end A346502.P7475117558055608262

namespace A346502

/-- `A016789(n)-(A053735(n)+2)` -/
def P7475117558055608262.Spec : Prop :=
  ∀ n, P7475117558055608262.a n = A346502 n

end A346502

/-!
# A346503: G.f. A(x) satisfies A(x) = 1 + x^3 * A(x)^2 / (1 - x).

The programs for A346503, there is no canonical definition to state claims against.
-/

/-! ## A346503.P12688365643289419151

`A329664(n)-a(n-1)` with `a(0)=1`
-/

namespace A346503.P12688365643289419151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329664 n - a (n - 1)

end

end A346503.P12688365643289419151

/-! ## A346503.P5281380949336921249

`abs(∑[A033999(n)*A329664(n)])`
-/

namespace A346503.P5281380949336921249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A329664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A346503.P5281380949336921249

/-! ## A346503.P1136790479378039057

`Δ[A216604(n-a(2%n))]` with `a(0)=0, a(1)=1`
-/

namespace A346503.P1136790479378039057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A216604 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346503.P1136790479378039057

/-! ## A346503.P18194421475132039211

`Δ[∑[A329664(n)]-A216604(n)]`
-/

namespace A346503.P18194421475132039211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A216604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346503.P18194421475132039211

/-! ## A346503.P16214130891177620307

`A329664(n+1)-Δ[A216604(n)]`
-/

namespace A346503.P16214130891177620307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329664 (n + 1) - (f1 (n + 1) - f1 n)

end

end A346503.P16214130891177620307

/-! ## A346503.P17722175328235123705

`A307576(n+1)-A307578(n+1)`
-/

namespace A346503.P17722175328235123705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307576 (n + 1) - A307578 (n + 1)

end

end A346503.P17722175328235123705

/-! ## A346503.P1095071582472941371

`A001006(n+1)-2*A307578(n+1)`
-/

namespace A346503.P1095071582472941371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) - 2 * A307578 (n + 1)

end

end A346503.P1095071582472941371

/-! ## A346503.P4184448344214416443

`A307576(n+1)+A307576(n+1)-A001006(n+1)`
-/

namespace A346503.P4184448344214416443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307576 (n + 1) + (A307576 (n + 1) - A001006 (n + 1))

end

end A346503.P4184448344214416443

/-!
# A346505: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^2) / (1 - x + 2 * x^2).

The programs for A346505, there is no canonical definition to state claims against.
-/

/-! ## A346505.P11864428197520080032

`A007916(A346506(n))-A326558(n)`
-/

namespace A346505.P11864428197520080032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A346506 n).toNat - A326558 n

end

end A346505.P11864428197520080032

/-! ## A346505.P1596485004456721942

`A008619(or(A008619(n+1), A150250(n)))`
-/

namespace A346505.P1596485004456721942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A008619 (n + 1)) (A150250 n)).toNat

end

end A346505.P1596485004456721942

/-! ## A346505.P486278003173272633

`A195120(A149359(n+1))`
-/

namespace A346505.P486278003173272633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A149359 (n + 1)).toNat

end

end A346505.P486278003173272633

/-!
# A346506: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^2) / (1 - x + x^2).

The programs for A346506, there is no canonical definition to state claims against.
-/

/-! ## A346506.P1470958974702797698

`∑[A247833(A277220(n))]`
-/

namespace A346506.P1470958974702797698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A277220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346506.P1470958974702797698

/-! ## A346506.P10925136152126816458

`A189663(2*A299021(n+1))`
-/

namespace A346506.P10925136152126816458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (2 * A299021 (n + 1)).toNat

end

end A346506.P10925136152126816458

/-! ## A346506.P10820988989732500815

`A008619(A134816(2*n+3)+A005436(n+2))-1`
-/

namespace A346506.P10820988989732500815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A134816 (2 * n + 3) + A005436 (n + 2)).toNat - 1

end

end A346506.P10820988989732500815

/-!
# A346507: Positive integers k that are the product of two integers greater than 1 and ending with 1.

The programs for A346507, there is no canonical definition to state claims against.
-/

/-! ## A346507.P3972492661299902615

`A017281(A346508(n+1))`
-/

namespace A346507.P3972492661299902615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A346508 (n + 1)).toNat

end

end A346507.P3972492661299902615

/-! ## A346507.P11026363330999588778

`A017293(A346508(n+1))+A008683(A030430(n+1))`
-/

namespace A346507.P11026363330999588778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (A346508 (n + 1)).toNat + A008683 (A030430 (n + 1)).toNat

end

end A346507.P11026363330999588778

/-! ## A346507.P6643572304513614482

`A168459(2*A346508(n+1))`
-/

namespace A346507.P6643572304513614482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (2 * A346508 (n + 1)).toNat

end

end A346507.P6643572304513614482

/-! ## A346507.P4225652921197158524

`A168459(A346508(n+1)+A346508(n+1))`
-/

namespace A346507.P4225652921197158524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (A346508 (n + 1) + A346508 (n + 1)).toNat

end

end A346507.P4225652921197158524

/-! ## A346507.P10999476500835695430

`A016861(2*A346508(n+1))`
-/

namespace A346507.P10999476500835695430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A346508 (n + 1)).toNat

end

end A346507.P10999476500835695430

/-! ## A346507.P7614004463158427462

`A017293(2*A346508(n+1))/2`
-/

namespace A346507.P7614004463158427462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017293 (2 * A346508 (n + 1)).toNat : ℚ) / 2

end

end A346507.P7614004463158427462

/-! ## A346507.P8939426029452789299

`A016861(A346508(n+1)+A346508(n+1))`
-/

namespace A346507.P8939426029452789299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A346508 (n + 1) + A346508 (n + 1)).toNat

end

end A346507.P8939426029452789299

/-! ## A346507.P10472092149342480647

`A005408(5*A346508(n+1))`
-/

namespace A346507.P10472092149342480647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (5 * A346508 (n + 1)).toNat

end

end A346507.P10472092149342480647

/-! ## A346507.P4474845226953727997

`A141310(10*A346508(n+1))`
-/

namespace A346507.P4474845226953727997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (10 * A346508 (n + 1)).toNat

end

end A346507.P4474845226953727997

/-! ## A346507.P13614764406458975983

`A007535(10*A346508(n+1))`
-/

namespace A346507.P13614764406458975983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (10 * A346508 (n + 1)).toNat

end

end A346507.P13614764406458975983

/-! ## A346507.P2705051741100759667

`A109613(10*A346508(n+1))`
-/

namespace A346507.P2705051741100759667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (10 * A346508 (n + 1)).toNat

end

end A346507.P2705051741100759667

/-!
# A346508: Positive integers k such that 10*k+1 is equal to the product of two integers greater than 1 and ending with 1 (A346507).

The programs for A346508, there is no canonical definition to state claims against.
-/

/-! ## A346508.P15361137630514318106

`(A346507(n+1)-1)/10`
-/

namespace A346508.P15361137630514318106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346507 (n + 1) - 1 : ℚ) / 10

end

end A346508.P15361137630514318106

/-! ## A346508.P9819011122872155055

`floor(A346507(n+1)/10)`
-/

namespace A346508.P9819011122872155055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346507 (n + 1) : ℚ) / 10⌋

end

end A346508.P9819011122872155055

/-! ## A346508.P16268119194192095712

`round(A346507(A023443(n)+2)/10)`
-/

namespace A346508.P16268119194192095712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A346507 (A023443 n + 2).toNat : ℚ) / 10)

end

end A346508.P16268119194192095712

/-! ## A346508.P2664886952278025666

`A035363(A109613(n))+round(A346507(n+1)/10)`
-/

namespace A346508.P2664886952278025666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A109613 n).toNat + SequenceMachineLib.roundAway ((A346507 (n + 1) : ℚ) / 10)

end

end A346508.P2664886952278025666

/-! ## A346508.P1922068145399013326

`round(A346507(n+1)/10)*A082063(A001316(n))`
-/

namespace A346508.P1922068145399013326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A346507 (n + 1) : ℚ) / 10) * A082063 (A001316 n).toNat

end

end A346508.P1922068145399013326

/-! ## A346508.P14396718339220024526

`round(A346507(n+1)/10)%A018796(A016789(n))`
-/

namespace A346508.P14396718339220024526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A346507 (n + 1) : ℚ) / 10)) (A018796 (A016789 n).toNat)

end

end A346508.P14396718339220024526

/-! ## A346508.P9249585095353624579

`round(A346507(n+1)/10)*A082063(A061142(n+1))`
-/

namespace A346508.P9249585095353624579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A346507 (n + 1) : ℚ) / 10) * A082063 (A061142 (n + 1)).toNat

end

end A346508.P9249585095353624579

/-! ## A346508.P9004276930108716778

`round(A346507(n+1)/10)*A082063(A082063(n+1))`
-/

namespace A346508.P9004276930108716778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A346507 (n + 1) : ℚ) / 10) * A082063 (A082063 (n + 1)).toNat

end

end A346508.P9004276930108716778

/-! ## A346508.P3758148112228955633

`A005843(round(A346507(n+1)/10))/2`
-/

namespace A346508.P3758148112228955633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A346507 (n + 1) : ℚ) / 10)).toNat : ℚ) / 2

end

end A346508.P3758148112228955633

/-! ## A346508.P8038438061546688583

`A299232(round(A346507(n+1)/10))/2`
-/

namespace A346508.P8038438061546688583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299232 (SequenceMachineLib.roundAway ((A346507 (n + 1) : ℚ) / 10)).toNat : ℚ) / 2

end

end A346508.P8038438061546688583

/-! ## A346508.P8357368933415362579

`A076312(A346507(n+1)-39)`
-/

namespace A346508.P8357368933415362579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (A346507 (n + 1) - 39).toNat

end

end A346508.P8357368933415362579

/-! ## A346508.P10928384950477621665

`A008616(A346507(n+1))`
-/

namespace A346508.P10928384950477621665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A346507 (n + 1)).toNat

end

end A346508.P10928384950477621665

/-! ## A346508.P4160283733877501971

`A076310(A346507(n+1)-1)`
-/

namespace A346508.P4160283733877501971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (A346507 (n + 1) - 1).toNat

end

end A346508.P4160283733877501971

/-! ## A346508.P743766379937183973

`A076313(A346507(n+1)-1)`
-/

namespace A346508.P743766379937183973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A346507 (n + 1) - 1).toNat

end

end A346508.P743766379937183973

/-! ## A346508.P6651007897066639395

`A076310(xor(1, A346507(n+1)))`
-/

namespace A346508.P6651007897066639395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (Int.xor 1 (A346507 (n + 1))).toNat

end

end A346508.P6651007897066639395

/-! ## A346508.P9609132258804259288

`A076312(xor(1, A346507(n+1)))`
-/

namespace A346508.P9609132258804259288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (Int.xor 1 (A346507 (n + 1))).toNat

end

end A346508.P9609132258804259288

/-!
# A346509: Number of positive integers with n digits that are the product of two integers greater than 1 and ending with 1.

The programs for A346509, there is no canonical definition to state claims against.
-/

/-! ## A346509.P8349178306140322944

`A004773(A098401(n))-A059304(n)`
-/

namespace A346509.P8349178306140322944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A098401 n).toNat - A059304 n

end

end A346509.P8349178306140322944

/-!
# A346510: a(n) is the number of nontrivial divisors of A346507(n) ending with 1.

The programs for A346510, there is no canonical definition to state claims against.
-/

/-! ## A346510.P270443428948075157

`A346392(A346507(n+1))-1`
-/

namespace A346510.P270443428948075157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A346507 (n + 1)).toNat - 1

end

end A346510.P270443428948075157

/-! ## A346510.P14302771607514965882

`p?[A346392(10*n+1)]-1`
-/

namespace A346510.P14302771607514965882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A346510.P14302771607514965882

/-! ## A346510.P4229443072280702742

`A002180(p?[A346392(10*n+1)])`
-/

namespace A346510.P4229443072280702742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A346510.P4229443072280702742

/-! ## A346510.P3710892407498248222

`A003714(p?[A346392(10*n+1)])/2`
-/

namespace A346510.P3710892407498248222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A346510.P3710892407498248222

/-! ## A346510.P6746908496237649777

`A001222(p?[A346392(10*n+1)]+11)`
-/

namespace A346510.P6746908496237649777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 11).toNat

end

end A346510.P6746908496237649777

/-! ## A346510.P3766805310876375800

`A000010(lcm(2, p?[A346392(10*n+1)]))`
-/

namespace A346510.P3766805310876375800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A346510.P3766805310876375800

/-! ## A346510.P6957733450666868865

`11%A000041(p?[A346392(10*n+1)])`
-/

namespace A346510.P6957733450666868865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A346510.P6957733450666868865

/-! ## A346510.P16557707403632947989

`∏{d}[p?[A346392(10*n+1)], A000010(#)]`
-/

namespace A346510.P16557707403632947989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A346510.P16557707403632947989

/-! ## A346510.P8828314312525410229

`A000010(p?[A346392(10*n+1)]+char[1])`
-/

namespace A346510.P8828314312525410229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A346510.P8828314312525410229

/-! ## A346510.P3403958603304900550

`A000010(p?[A346392(10*n+1)]%(n+3))`
-/

namespace A346510.P3403958603304900550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 3 : ℤ)).toNat

end

end A346510.P3403958603304900550

/-!
# A346511: a(n) = bitwise XOR of decimal digits of n.

The programs for A346511, there is no canonical definition to state claims against.
-/

/-! ## A346511.P3030384664424794427

`A160700(A102489(n))`
-/

namespace A346511.P3030384664424794427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (A102489 n).toNat

end

end A346511.P3030384664424794427

/-! ## A346511.P8069894204719133248

`A268387(A054842(n))`
-/

namespace A346511.P8069894204719133248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A054842 n).toNat

end

end A346511.P8069894204719133248

/-! ## A346511.P7884008408438241430

`A268387(A069877(n))`
-/

namespace A346511.P7884008408438241430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A069877 n).toNat

end

end A346511.P7884008408438241430

/-! ## A346511.P9391667844415647435

`A392731(A038724(n))`
-/

namespace A346511.P9391667844415647435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392731 (A038724 n).toNat

end

end A346511.P9391667844415647435

/-!
# A346512: a(n) = bitwise XOR of decimal digits of primes.

The programs for A346512, there is no canonical definition to state claims against.
-/

/-! ## A346512.P8183946500798432579

`A346511(A000040(n+1))`
-/

namespace A346512.P8183946500798432579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A000040 (n + 1)).toNat

end

end A346512.P8183946500798432579

/-! ## A346512.P2319951345111141339

`A346511(A028905(n+1))`
-/

namespace A346512.P2319951345111141339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A028905 (n + 1)).toNat

end

end A346512.P2319951345111141339

/-! ## A346512.P14258612152722218029

`A346511(p?[a(n-1)+2])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A346512.P14258612152722218029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A346512.P14258612152722218029

/-! ## A346512.P4115472878485868311

`A346511(A004087(n+1))`
-/

namespace A346512.P4115472878485868311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A004087 (n + 1)).toNat

end

end A346512.P4115472878485868311

/-! ## A346512.P10727127054489128382

`A346511(A028906(n+1))`
-/

namespace A346512.P10727127054489128382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A028906 (n + 1)).toNat

end

end A346512.P10727127054489128382

/-! ## A346512.P12031669723147128303

`A346511(A008578(n+2))`
-/

namespace A346512.P12031669723147128303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A008578 (n + 2)).toNat

end

end A346512.P12031669723147128303

/-! ## A346512.P8383069372326071214

`A346511(A182986(n+2))`
-/

namespace A346512.P8383069372326071214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A182986 (n + 2)).toNat

end

end A346512.P8383069372326071214

/-! ## A346512.P11658271314055293389

`A346511(A101989(n+1))`
-/

namespace A346512.P11658271314055293389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A101989 (n + 1)).toNat

end

end A346512.P11658271314055293389

/-! ## A346512.P1056055111439660700

`A346511(A142342(n+1))`
-/

namespace A346512.P1056055111439660700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 (A142342 (n + 1)).toNat

end

end A346512.P1056055111439660700

/-!
# A346513: a(n) = Fibonacci(n+1)^3 - Fibonacci(n)^3.

The programs for A346513, the canonical program `A346513.P3129433938016438706` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346513 has offset 0).

The definition of A346513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)^3-A000045(n)^3` (program `A346513.P3129433938016438706`, by `A346513.P3129433938016438706.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346513.P3129433938016438706

`A000045(n+1)^3-A000045(n)^3`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346513

/-- `A000045(n+1)^3-A000045(n)^3` -/
def P3129433938016438706.Spec : Prop :=
  ∀ n, P3129433938016438706.a n = A346513 n

theorem P3129433938016438706.correct : P3129433938016438706.Spec := by
  intro n
  simp only [A346513]

end A346513

/-! ## A346513.P3624972716444052150

`Δ[round(ϕ^n/sqrt(5))^3]`
-/

namespace A346513.P3624972716444052150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346513.P3624972716444052150

namespace A346513

/-- `Δ[round(ϕ^n/sqrt(5))^3]` -/
def P3624972716444052150.Spec : Prop :=
  ∀ n, P3624972716444052150.a n = A346513 n

end A346513

/-! ## A346513.P12699743083685003027

`abs(Δ[A056570(n)])`
-/

namespace A346513.P12699743083685003027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A346513.P12699743083685003027

namespace A346513

/-- `abs(Δ[A056570(n)])` -/
def P12699743083685003027.Spec : Prop :=
  ∀ n, P12699743083685003027.a n = A346513 n

end A346513

/-! ## A346513.P16291081059096778860

`A350473(n)-a(n-1)` with `a(0)=1`
-/

namespace A346513.P16291081059096778860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A350473 n - a (n - 1)

end

end A346513.P16291081059096778860

namespace A346513

/-- `A350473(n)-a(n-1)` -/
def P16291081059096778860.Spec : Prop :=
  ∀ n, P16291081059096778860.a n = A346513 n

end A346513

/-! ## A346513.P10981806893939127932

`abs(Δ[(A001611(n)-1)^3])`
-/

namespace A346513.P10981806893939127932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A346513.P10981806893939127932

namespace A346513

/-- `abs(Δ[(A001611(n)-1)^3])` -/
def P10981806893939127932.Spec : Prop :=
  ∀ n, P10981806893939127932.a n = A346513 n

end A346513

/-! ## A346513.P16187895210026762101

`abs(Δ[(A157729(n)-5)^3])`
-/

namespace A346513.P16187895210026762101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157729 n - 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A346513.P16187895210026762101

namespace A346513

/-- `abs(Δ[(A157729(n)-5)^3])` -/
def P16187895210026762101.Spec : Prop :=
  ∀ n, P16187895210026762101.a n = A346513 n

end A346513

/-! ## A346513.P15576807482924816346

`A220363(n)+A037451(n)`
-/

namespace A346513.P15576807482924816346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220363 n + A037451 n

end

end A346513.P15576807482924816346

namespace A346513

/-- `A220363(n)+A037451(n)` -/
def P15576807482924816346.Spec : Prop :=
  ∀ n, P15576807482924816346.a n = A346513 n

end A346513

/-! ## A346513.P2924144758254027711

`or(Δ[A056570(n)], A000007(n))`
-/

namespace A346513.P2924144758254027711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A000007 n)

end

end A346513.P2924144758254027711

namespace A346513

/-- `or(Δ[A056570(n)], A000007(n))` -/
def P2924144758254027711.Spec : Prop :=
  ∀ n, P2924144758254027711.a n = A346513 n

end A346513

/-! ## A346513.P16882916871699928849

`A056570(n+1)-A056570(n)`
-/

namespace A346513.P16882916871699928849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (n + 1) - A056570 n

end

end A346513.P16882916871699928849

namespace A346513

/-- `A056570(n+1)-A056570(n)` -/
def P16882916871699928849.Spec : Prop :=
  ∀ n, P16882916871699928849.a n = A346513 n

end A346513

/-! ## A346513.P2336699904940629619

`A110224(n)-2*A056570(n)`
-/

namespace A346513.P2336699904940629619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110224 n - 2 * A056570 n

end

end A346513.P2336699904940629619

namespace A346513

/-- `A110224(n)-2*A056570(n)` -/
def P2336699904940629619.Spec : Prop :=
  ∀ n, P2336699904940629619.a n = A346513 n

theorem P2336699904940629619.correct : P2336699904940629619.Spec := by
  intro n
  simp only [A346513, Nat.add_sub_cancel, A346513.P2336699904940629619.a, A346513.P3129433938016438706.a, A000045, A000045.P11838749114346432762.a, A056570, A056570.P8836543462792650410.a, A110224, A110224.P3827513139438470638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A346513

/-! ## A346513.P17800744156389168080

`A110224(n+1)-A226976(n)`
-/

namespace A346513.P17800744156389168080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110224 (n + 1) - A226976 n

end

end A346513.P17800744156389168080

namespace A346513

/-- `A110224(n+1)-A226976(n)` -/
def P17800744156389168080.Spec : Prop :=
  ∀ n, P17800744156389168080.a n = A346513 n

theorem P17800744156389168080.correct : P17800744156389168080.Spec := by
  intro n
  simp only [A346513, Nat.add_sub_cancel, A346513.P17800744156389168080.a, A346513.P3129433938016438706.a, A000045, A000045.P11838749114346432762.a, A110224, A110224.P3827513139438470638.a, A226976, A226976.P14949091180379981667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A346513

/-! ## A346513.P15095017718733421520

`Δ[2*A005968(n)]-A110224(n)`
-/

namespace A346513.P15095017718733421520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110224 n

end

end A346513.P15095017718733421520

namespace A346513

/-- `Δ[2*A005968(n)]-A110224(n)` -/
def P15095017718733421520.Spec : Prop :=
  ∀ n, P15095017718733421520.a n = A346513 n

end A346513

/-! ## A346513.P936439243259979189

`Δ[A005968(n)]-(A001611(n)-1)^3`
-/

namespace A346513.P936439243259979189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001611 n - 1) ^ 3

end

end A346513.P936439243259979189

namespace A346513

/-- `Δ[A005968(n)]-(A001611(n)-1)^3` -/
def P936439243259979189.Spec : Prop :=
  ∀ n, P936439243259979189.a n = A346513 n

end A346513

/-! ## A346513.P7403593160574267590

`A099014(n+1)+A066258(n)-A220360(n+1)`
-/

namespace A346513.P7403593160574267590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 (n + 1) + (A066258 n - A220360 (n + 1))

end

end A346513.P7403593160574267590

namespace A346513

/-- `A099014(n+1)+A066258(n)-A220360(n+1)` -/
def P7403593160574267590.Spec : Prop :=
  ∀ n, P7403593160574267590.a n = A346513 n

end A346513

/-! ## A346513.P18037243393975810583

`A110224(n+1)-(A226958(n+2)+A220363(n))`
-/

namespace A346513.P18037243393975810583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110224 (n + 1) - (A226958 (n + 2) + A220363 n)

end

end A346513.P18037243393975810583

namespace A346513

/-- `A110224(n+1)-(A226958(n+2)+A220363(n))` -/
def P18037243393975810583.Spec : Prop :=
  ∀ n, P18037243393975810583.a n = A346513 n

end A346513

/-! ## A346513.P17860482424461161968

`A066259(n+1)-A000045(n)*A099016(n+1)`
-/

namespace A346513.P17860482424461161968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) - A000045 n * A099016 (n + 1)

end

end A346513.P17860482424461161968

namespace A346513

/-- `A066259(n+1)-A000045(n)*A099016(n+1)` -/
def P17860482424461161968.Spec : Prop :=
  ∀ n, P17860482424461161968.a n = A346513 n

end A346513

/-!
# A346514: a(n) = n^4 + 28*n^3 + 252*n^2 + 784*n + 448.

The programs for A346514, the canonical program `A346514.P8672318407264149710` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346514 has offset 0).

The definition of A346514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+28*n^3+252*n²+784*n+448` (program `A346514.P8672318407264149710`, by `A346514.P8672318407264149710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346514.P8672318407264149710

`n^4+28*n^3+252*n²+784*n+448`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346514

/-- `n^4+28*n^3+252*n²+784*n+448` -/
def P8672318407264149710.Spec : Prop :=
  ∀ n, (P8672318407264149710.a n : ℤ) = A346514 n

theorem P8672318407264149710.correct : P8672318407264149710.Spec := by
  intro n
  simp only [A346514]

end A346514

/-! ## A346514.P1479601233356822813

`sqrt(A346515(n)+A152691(n+7)²)`
-/

namespace A346514.P1479601233356822813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A346515 n + A152691 (n + 7) ^ 2 : ℝ)

end

end A346514.P1479601233356822813

namespace A346514

/-- `sqrt(A346515(n)+A152691(n+7)²)` -/
def P1479601233356822813.Spec : Prop :=
  ∀ n, P1479601233356822813.a n = (A346514 n : ℝ)

end A346514

/-!
# A346515: a(n) = n*(n+2)*(n+4)*(n+6)*(n+8)*(n+10)*(n+12)*(n+14).

The programs for A346515, the canonical program `A346515.P381562226536607029` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346515 has offset 0).

The definition of A346515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*(n+4)*(n+6)*(n+8)*(n+10)*(n+12)*(n+14)` (program `A346515.P381562226536607029`, by `A346515.P381562226536607029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346515.P381562226536607029

`n*(n+2)*(n+4)*(n+6)*(n+8)*(n+10)*(n+12)*(n+14)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346515

/-- `n*(n+2)*(n+4)*(n+6)*(n+8)*(n+10)*(n+12)*(n+14)` -/
def P381562226536607029.Spec : Prop :=
  ∀ n, (P381562226536607029.a n : ℤ) = A346515 n

theorem P381562226536607029.correct : P381562226536607029.Spec := by
  intro n
  simp only [A346515]

end A346515

/-! ## A346515.P14638774298262386159

`A346514(n)²-A152691(n+7)²`
-/

namespace A346515.P14638774298262386159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346514 n ^ 2 - A152691 (n + 7) ^ 2

end

end A346515.P14638774298262386159

namespace A346515

/-- `A346514(n)²-A152691(n+7)²` -/
def P14638774298262386159.Spec : Prop :=
  ∀ n, P14638774298262386159.a n = A346515 n

theorem P14638774298262386159.correct : P14638774298262386159.Spec := by
  intro n
  simp only [A346515, Nat.add_sub_cancel, A346515.P14638774298262386159.a, A346515.P381562226536607029.a, A152691, A152691.P6353139268516617885.a, A346514, A346514.P8672318407264149710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A346515

/-! ## A346515.P7162203479946666266

`A370419(eq[9, A004736(n+1)])`
-/

namespace A346515.P7162203479946666266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346515.P7162203479946666266

namespace A346515

/-- `A370419(eq[9, A004736(n+1)])` -/
def P7162203479946666266.Spec : Prop :=
  ∀ n, P7162203479946666266.a n = A346515 n

end A346515

/-!
# A346516: A variant of Van Eck's sequence: For n >= 0, a(n+1) is the result of combining by XOR the numbers k such that k < n and a(k) = a(n). Start with a(0)=0.

The programs for A346516, there is no canonical definition to state claims against.
-/

/-! ## A346516.P4765344009644525102

`A141417(n)%A060773(A133021(n+1))`
-/

namespace A346516.P4765344009644525102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141417 n) (A060773 (A133021 (n + 1)).toNat)

end

end A346516.P4765344009644525102

/-!
# A346517: Number A(n,k) of partitions of the (n+k)-multiset {1,2,...,n,1,2,...,k} into distinct multisets; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A346517, there is no canonical definition to state claims against.
-/

/-! ## A346517.P4075755249238812345

`A045778(A002110(col(n))*A002110(row(n)-col(n)))`
-/

namespace A346517.P4075755249238812345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A002110 (SequenceMachineLib.triCol n) * A002110 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)).toNat

end

end A346517.P4075755249238812345

/-! ## A346517.P14554764105683899028

`A153679(A346500(n)-A320364(n+1))`
-/

namespace A346517.P14554764105683899028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (A346500 n - A320364 (n + 1)).toNat

end

end A346517.P14554764105683899028

/-! ## A346517.P4088736063040908349

`A346500(n)-A320364(A187829(n+1))`
-/

namespace A346517.P4088736063040908349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 n - A320364 (A187829 (n + 1)).toNat

end

end A346517.P4088736063040908349

/-! ## A346517.P6126475731574377548

`A153679(A024680(n+1)+A134634(n)-A320364(n+1))`
-/

namespace A346517.P6126475731574377548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (A024680 (n + 1) + (A134634 n - A320364 (n + 1))).toNat

end

end A346517.P6126475731574377548

/-! ## A346517.P368997662596279039

`A024680(n+1)+A134634(n)-A320364(A187829(n+1))`
-/

namespace A346517.P368997662596279039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024680 (n + 1) + (A134634 n - A320364 (A187829 (n + 1)).toNat)

end

end A346517.P368997662596279039

/-!
# A346518: Total number of partitions of all n-multisets {1,2,...,n-j,1,2,...,j} into distinct multisets for 0 <= j <= n.

The programs for A346518, there is no canonical definition to state claims against.
-/

/-! ## A346518.P11741861992654336230

`A370798(n)+A001842(A259793(n))`
-/

namespace A346518.P11741861992654336230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370798 n + A001842 (A259793 n).toNat

end

end A346518.P11741861992654336230

/-! ## A346518.P17373314339420197055

`A370798(n)+A162642(A283140(n))`
-/

namespace A346518.P17373314339420197055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370798 n + A162642 (A283140 n).toNat

end

end A346518.P17373314339420197055

/-!
# A346519: Number of partitions of the 2n-multiset {0,...,0,1,2,...,n} into distinct multisets.

The programs for A346519, there is no canonical definition to state claims against.
-/

/-! ## A346519.P7686934828929217699

`A346520(∑[4*n])`
-/

namespace A346519.P7686934828929217699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346519.P7686934828929217699

/-! ## A346519.P16663283464159095755

`record[A346520(A266725(n))]`
-/

namespace A346519.P16663283464159095755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A266725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346519.P16663283464159095755

/-! ## A346519.P7677704371977446170

`record[A346520(∑[A266724(n)])]`
-/

namespace A346519.P7677704371977446170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346519.P7677704371977446170

/-! ## A346519.P9672014169041156888

`record[A346520(A226725(n+1))]`
-/

namespace A346519.P9672014169041156888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346519.P9672014169041156888

/-! ## A346519.P7519224393213007930

`record[A003982(n)*A346520(n)]`
-/

namespace A346519.P7519224393213007930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A346520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346519.P7519224393213007930

/-!
# A346520: Number A(n,k) of partitions of the (n+k)-multiset {0,...,0,1,2,...,k} with n 0's into distinct multisets; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A346520, there is no canonical definition to state claims against.
-/

/-! ## A346520.P17934548909608306480

`A045778(A000079(col(n))*A070826(row(n)-col(n)+1))`
-/

namespace A346520.P17934548909608306480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A000079 (SequenceMachineLib.triCol n) * A070826 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat).toNat

end

end A346520.P17934548909608306480

/-! ## A346520.P10620628066995905357

`A045778(A059268(n)*A096334(n))`
-/

namespace A346520.P10620628066995905357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A059268 n * A096334 n).toNat

end

end A346520.P10620628066995905357

/-! ## A346520.P12158362484287860061

`A045778(lcm(A059268(n), A096334(n)))`
-/

namespace A346520.P12158362484287860061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (Int.lcm (A059268 n) (A096334 n))

end

end A346520.P12158362484287860061

/-! ## A346520.P17938870086903488648

`A163352(ceil((n+1)/3)*A108087(n))`
-/

namespace A346520.P17938870086903488648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (⌈(n + 1 : ℚ) / 3⌉ * A108087 n).toNat

end

end A346520.P17938870086903488648

/-! ## A346520.P5822778536000039213

`A318286(lcm((n+1)/∏{p}[n+1, #], A243238(n+1)))`
-/

namespace A346520.P5822778536000039213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A243238 (n + 1)))

end

end A346520.P5822778536000039213

/-!
# A346521: Total number of partitions of all n-multisets {0,...,0,1,2,...,j} into distinct multisets for 0 <= j <= n.

The programs for A346521, there is no canonical definition to state claims against.
-/

/-! ## A346521.P3932799959763851825

`A230980(A196192(n)+A150794(n))`
-/

namespace A346521.P3932799959763851825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A196192 n + A150794 n).toNat

end

end A346521.P3932799959763851825

/-! ## A346521.P260341103022253427

`∑[A341058(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A346521.P260341103022253427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  A341058 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346521.P260341103022253427

/-!
# A346522: a(n) is the smallest number such that there are precisely n squares between a(n) and 2*a(n) inclusive.

The programs for A346522, the canonical program `A346522.P4317046531343704363` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346522 has offset 1).

The definition of A346522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346522.P4317046531343704363

`ceil(floor(2*(n+1)-1+sqrt(2)*n)²/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346522

/-- `ceil(floor(2*(n+1)-1+sqrt(2)*n)²/2)` -/
def P4317046531343704363.Spec : Prop :=
  ∀ n, P4317046531343704363.a n = A346522 (n + 1)

theorem P4317046531343704363.correct : P4317046531343704363.Spec := by
  intro n
  simp only [A346522, Nat.add_sub_cancel]

end A346522

/-! ## A346522.P5354295958745164016

`A346527(n+1)+1-A346528(n+1)`
-/

namespace A346522.P5354295958745164016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346527 (n + 1) + (1 - A346528 (n + 1))

end

end A346522.P5354295958745164016

namespace A346522

/-- `A346527(n+1)+1-A346528(n+1)` -/
def P5354295958745164016.Spec : Prop :=
  ∀ n, P5354295958745164016.a n = A346522 (n + 1)

end A346522

/-! ## A346522.P5172495756764363434

`A000982(A083051(n))`
-/

namespace A346522.P5172495756764363434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A083051 n).toNat

end

end A346522.P5172495756764363434

namespace A346522

/-- `A000982(A083051(n))` -/
def P5172495756764363434.Spec : Prop :=
  ∀ n, P5172495756764363434.a n = A346522 (n + 1)

end A346522

/-! ## A346522.P3210724806939073779

`A000982(A289037(n+1)-2)`
-/

namespace A346522.P3210724806939073779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A289037 (n + 1) - 2).toNat

end

end A346522.P3210724806939073779

namespace A346522

/-- `A000982(A289037(n+1)-2)` -/
def P3210724806939073779.Spec : Prop :=
  ∀ n, P3210724806939073779.a n = A346522 (n + 1)

end A346522

/-! ## A346522.P17278983183060199412

`A030978(A289037(n+1)-2)`
-/

namespace A346522.P17278983183060199412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 (A289037 (n + 1) - 2).toNat

end

end A346522.P17278983183060199412

namespace A346522

/-- `A030978(A289037(n+1)-2)` -/
def P17278983183060199412.Spec : Prop :=
  ∀ n, P17278983183060199412.a n = A346522 (n + 1)

end A346522

/-! ## A346522.P8915341384747371902

`A000982(A001951(n)+2*n+1)`
-/

namespace A346522.P8915341384747371902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A001951 n + (2 * n + 1 : ℤ)).toNat

end

end A346522.P8915341384747371902

namespace A346522

/-- `A000982(A001951(n)+2*n+1)` -/
def P8915341384747371902.Spec : Prop :=
  ∀ n, P8915341384747371902.a n = A346522 (n + 1)

end A346522

/-! ## A346522.P8727187706810132578

`A000982(n+1+A001951(n)+n)`
-/

namespace A346522.P8727187706810132578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 ((n + 1 : ℤ) + (A001951 n + (n : ℤ))).toNat

end

end A346522.P8727187706810132578

namespace A346522

/-- `A000982(n+1+A001951(n)+n)` -/
def P8727187706810132578.Spec : Prop :=
  ∀ n, P8727187706810132578.a n = A346522 (n + 1)

end A346522

/-! ## A346522.P1462667422323966444

`A000982(A001951(A001951(n)+1+n))`
-/

namespace A346522.P1462667422323966444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A001951 (A001951 n + 1 + (n : ℤ)).toNat).toNat

end

end A346522.P1462667422323966444

namespace A346522

/-- `A000982(A001951(A001951(n)+1+n))` -/
def P1462667422323966444.Spec : Prop :=
  ∀ n, P1462667422323966444.a n = A346522 (n + 1)

end A346522

/-! ## A346522.P4595503136093915930

`A001971(2*(comp[floor((n+1)*sqrt(2))]+1))`
-/

namespace A346522.P4595503136093915930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1))

end

end A346522.P4595503136093915930

namespace A346522

/-- `A001971(2*(comp[floor((n+1)*sqrt(2))]+1))` -/
def P4595503136093915930.Spec : Prop :=
  ∀ n, P4595503136093915930.a n = A346522 (n + 1)

end A346522

/-!
# A346525: Decimal expansion of gamma/(1 - gamma), where gamma is the Euler-Mascheroni constant.

The programs for A346525, there is no canonical definition to state claims against.
-/

/-! ## A346525.P2503629593645866056

`A091556(xor(xor(n, a(n-1)), a(n-1)))` with `a(0)=1`
-/

namespace A346525.P2503629593645866056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091556 ((Int.xor (Int.xor (n : ℤ) (a (n - 1))) (a (n - 1))).toNat + 1)

end

end A346525.P2503629593645866056

/-! ## A346525.P7013119107492307211

`A091556(n)-A000007(n)`
-/

namespace A346525.P7013119107492307211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091556 (n + 1) - A000007 n

end

end A346525.P7013119107492307211

/-!
# A346527: a(n) is the largest number such that there are precisely n squares between a(n) and 2*a(n) inclusive.

The programs for A346527, there is no canonical definition to state claims against.
-/

/-! ## A346527.P17405109275058928718

`A346522(n+1)+A346528(n+1)-1`
-/

namespace A346527.P17405109275058928718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346522 (n + 1) + (A346528 (n + 1) - 1)

end

end A346527.P17405109275058928718

/-! ## A346527.P15981336313078187855

`A346528(n+1)+A000982(A083051(n))-1`
-/

namespace A346527.P15981336313078187855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346528 (n + 1) + (A000982 (A083051 n).toNat - 1)

end

end A346527.P15981336313078187855

/-! ## A346527.P6486391773213004352

`A346522(n+1)+A233583(A346528(n+1))`
-/

namespace A346527.P6486391773213004352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346522 (n + 1) + A233583 (A346528 (n + 1)).toNat

end

end A346527.P6486391773213004352

/-! ## A346527.P13300378253563285451

`A233583(A346528(n+1))+A000982(A083051(n))`
-/

namespace A346527.P13300378253563285451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A346528 (n + 1)).toNat + A000982 (A083051 n).toNat

end

end A346527.P13300378253563285451

/-! ## A346527.P7915447208809206634

`A233583(A346528(n+1))+A001971(2*A083051(n))`
-/

namespace A346527.P7915447208809206634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A346528 (n + 1)).toNat + A001971 (2 * A083051 n).toNat

end

end A346527.P7915447208809206634

/-!
# A346528: Distance between first appearance and last appearance of n in A105224, counting both end points.

The programs for A346528, there is no canonical definition to state claims against.
-/

/-! ## A346528.P11306481841561024439

`A346527(n+1)-A346522(n+1)+1`
-/

namespace A346528.P11306481841561024439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346527 (n + 1) - A346522 (n + 1) + 1

end

end A346528.P11306481841561024439

/-! ## A346528.P17521140072422628274

`1-(A001971(A188039(n+1)+n)-A346527(n+1))`
-/

namespace A346528.P17521140072422628274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001971 (A188039 (n + 1) + (n : ℤ)).toNat - A346527 (n + 1))

end

end A346528.P17521140072422628274

/-! ## A346528.P9671037166201114378

`A020725(A346527(n+1)-A346522(n+1))`
-/

namespace A346528.P9671037166201114378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A346527 (n + 1) - A346522 (n + 1)).toNat

end

end A346528.P9671037166201114378

/-! ## A346528.P1790077257753488691

`A065475(A346527(n+1)-A346522(n+1))`
-/

namespace A346528.P1790077257753488691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A346527 (n + 1) - A346522 (n + 1)).toNat

end

end A346528.P1790077257753488691

/-! ## A346528.P4005294402165155409

`A153152(A346527(n+1)-A346522(n+1))`
-/

namespace A346528.P4005294402165155409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A346527 (n + 1) - A346522 (n + 1)).toNat

end

end A346528.P4005294402165155409

/-!
# A346529: a(n) is the number of primes that are nearest neighbors of the n-th Ramanujan's highly composite number A002182.

The programs for A346529, there is no canonical definition to state claims against.
-/

/-! ## A346529.P9721462531550270330

`A068320(A135372(n+1))`
-/

namespace A346529.P9721462531550270330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068320 (A135372 (n + 1)).toNat

end

end A346529.P9721462531550270330

/-! ## A346529.P17836858102232147049

`A068320(A002182(n+1)+1)`
-/

namespace A346529.P17836858102232147049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068320 (A002182 (n + 1) + 1).toNat

end

end A346529.P17836858102232147049

/-! ## A346529.P17374738505036662802

`A002993(A002126(A135372(n+1))²)`
-/

namespace A346529.P17374738505036662802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A002126 (A135372 (n + 1)).toNat ^ 2).toNat

end

end A346529.P17374738505036662802

/-! ## A346529.P11573663231724456293

`∑{digits}[A002126(A135372(n+1))², A001221(#+1)]`
-/

namespace A346529.P11573663231724456293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A135372 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001221 (x + 1)).sum

end

end A346529.P11573663231724456293

/-!
# A346530: a(n) is the number of faces of the polycube called "tower" described in A221529 where n is the longest side of its base.

The programs for A346530, there is no canonical definition to state claims against.
-/

/-! ## A346530.P17929512123002735350

`A346531(n+1)-A346532(n+1)+2`
-/

namespace A346530.P17929512123002735350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346531 (n + 1) - A346532 (n + 1) + 2

end

end A346530.P17929512123002735350

/-! ## A346530.P13993673864514050832

`A171463(A346531(n+1)-A346532(n+1))`
-/

namespace A346530.P13993673864514050832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A346531 (n + 1) - A346532 (n + 1)).toNat

end

end A346530.P13993673864514050832

/-! ## A346530.P15347462885666498950

`A171463(A346531(n+1)%A346532(n+1))`
-/

namespace A346530.P15347462885666498950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (Int.tmod (A346531 (n + 1)) (A346532 (n + 1))).toNat

end

end A346530.P15347462885666498950

/-!
# A346531: a(n) is the number of edges of the polycube called "tower" described in A221529 where n is the longest side of its base.

The programs for A346531, there is no canonical definition to state claims against.
-/

/-! ## A346531.P14445949606038110491

`A346530(n+1)+A346532(n+1)-2`
-/

namespace A346531.P14445949606038110491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346530 (n + 1) + A346532 (n + 1) - 2

end

end A346531.P14445949606038110491

/-!
# A346532: a(n) is the number of vertices of the polycube called "tower" described in A221529 where n is the longest side of its base.

The programs for A346532, there is no canonical definition to state claims against.
-/

/-! ## A346532.P2274285659763891738

`A346531(n+1)-A346530(n+1)+2`
-/

namespace A346532.P2274285659763891738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346531 (n + 1) - A346530 (n + 1) + 2

end

end A346532.P2274285659763891738

/-!
# A346534: Denominators of approximations j/k for Pi such that abs(j/k - Pi)*sqrt(5)*k^2 < 1.

The programs for A346534, there is no canonical definition to state claims against.
-/

/-! ## A346534.P15160231692039502178

`lt[π*n, A135296(n+1)]+1`
-/

namespace A346534.P15160231692039502178
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A346534.P15160231692039502178

/-! ## A346534.P1759917032456008157

`A062300(A342171(n+1))`
-/

namespace A346534.P1759917032456008157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A342171 (n + 1)).toNat

end

end A346534.P1759917032456008157

/-! ## A346534.P17133143379669738374

`A062299(A337371(n+2))`
-/

namespace A346534.P17133143379669738374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A337371 (n + 2)).toNat

end

end A346534.P17133143379669738374

/-! ## A346534.P15531964678604477935

`A062300(A092328(n+1)+1)`
-/

namespace A346534.P15531964678604477935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A092328 (n + 1) + 1).toNat

end

end A346534.P15531964678604477935

/-! ## A346534.P9781183377219950277

`A032615(A342171(n+1)-1)+1`
-/

namespace A346534.P9781183377219950277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A342171 (n + 1) - 1).toNat + 1

end

end A346534.P9781183377219950277

/-!
# A346535: Numbers obtained by adding the first k repdigits that consist of the same digit, for some number k.

The programs for A346535, there is no canonical definition to state claims against.
-/

/-! ## A346535.P12079544908025878750

`A061487(A010785(n+1))`
-/

namespace A346535.P12079544908025878750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061487 (A010785 (n + 1)).toNat

end

end A346535.P12079544908025878750

/-! ## A346535.P6361589101973562981

`A061487(A344550(n+2))`
-/

namespace A346535.P6361589101973562981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061487 (A344550 (n + 2)).toNat

end

end A346535.P6361589101973562981

/-! ## A346535.P10464584364793814313

`A065039(∩[A044821(n+1), A010785(n)])`
-/

namespace A346535.P10464584364793814313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A346535.P10464584364793814313

/-! ## A346535.P6455611534274532888

`A054899(A014181(n+1))`
-/

namespace A346535.P6455611534274532888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A014181 (n + 1)).toNat

end

end A346535.P6455611534274532888

/-! ## A346535.P13089340162364682341

`∑[A325611(A027828(n))]`
-/

namespace A346535.P13089340162364682341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325611 (A027828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346535.P13089340162364682341

/-!
# A346537: Squares that are divisible by the product of their nonzero digits.

The programs for A346537, there is no canonical definition to state claims against.
-/

/-! ## A346537.P6651096807719066867

`∩[A055471(n+1), n²]`
-/

namespace A346537.P6651096807719066867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A346537.P6651096807719066867

/-! ## A346537.P13765104437601257816

`∩[A000290(n), A055471(n+1)]`
-/

namespace A346537.P13765104437601257816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346537.P13765104437601257816

/-! ## A346537.P14009638611922591119

`∩[A239213(n+1), A055471(n+1)]`
-/

namespace A346537.P14009638611922591119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346537.P14009638611922591119

/-! ## A346537.P3072786159548498696

`∩[A256944(n+1), A055471(n+1)]`
-/

namespace A346537.P3072786159548498696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346537.P3072786159548498696

/-! ## A346537.P14724733741713633079

`record[A008833(A055471(n+1))]`
-/

namespace A346537.P14724733741713633079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A055471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346537.P14724733741713633079

/-!
# A346539: a(n) is the number of paths in the Z X Z grid joining (0,0) and (n,n) each of whose steps increases the Euclidean distance to the origin and has coordinates with absolute value at most 1.

The programs for A346539, there is no canonical definition to state claims against.
-/

/-! ## A346539.P17349742735638702008

`A347811(∑[n+3])`
-/

namespace A346539.P17349742735638702008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346539.P17349742735638702008

/-! ## A346539.P8344523412496804064

`or(1, A347811(A141214(n)))`
-/

namespace A346539.P8344523412496804064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A347811 (A141214 n).toNat)

end

end A346539.P8344523412496804064

/-! ## A346539.P15297243362178600541

`record[A347811(lt[A274741(n), n])]`
-/

namespace A346539.P15297243362178600541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346539.P15297243362178600541

/-! ## A346539.P11711183720520714491

`record[A347811(record[A198461(n+1)])]`
-/

namespace A346539.P11711183720520714491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198461 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346539.P11711183720520714491

/-!
# A346541: Number of walks on square lattice from (n,2n) to (0,0) using steps that decrease the Euclidean distance to the origin and increase the Euclidean distance to (n,2n) and that change each coordinate by at most 1.

The programs for A346541, there is no canonical definition to state claims against.
-/

/-! ## A346541.P3839063307788999034

`A346540(A062725(n))`
-/

namespace A346541.P3839063307788999034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A062725 n).toNat

end

end A346541.P3839063307788999034

/-! ## A346541.P9509873024481932982

`A346540(A062728(n))`
-/

namespace A346541.P9509873024481932982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A062728 n).toNat

end

end A346541.P9509873024481932982

/-! ## A346541.P1079450769327699467

`A346540(A081267(n)-1)`
-/

namespace A346541.P1079450769327699467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A081267 n - 1).toNat

end

end A346541.P1079450769327699467

/-! ## A346541.P15656066593928142037

`A346540(A022267(n)+2*n)`
-/

namespace A346541.P15656066593928142037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A022267 n + (2 * n : ℤ)).toNat

end

end A346541.P15656066593928142037

/-! ## A346541.P7909251037584015857

`A346540(A022267(n)+n+n)`
-/

namespace A346541.P7909251037584015857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346540 (A022267 n + (n : ℤ) + (n : ℤ)).toNat

end

end A346541.P7909251037584015857

/-!
# A346542: Numbers k such that 5*2^k + 1 is an elite prime (A102742).

The programs for A346542, there is no canonical definition to state claims against.
-/

/-! ## A346542.P956346687766114428

`A002254(eq[2, A317641(2*n)])`
-/

namespace A346542.P956346687766114428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346542.P956346687766114428

/-!
# A346543: a(n) = [x^n] Product_{k=1..2*n} (x + (2*k-1)^2).

The programs for A346543, there is no canonical definition to state claims against.
-/

/-! ## A346543.P7538016992034428852

`A008956(∑[4*n])`
-/

namespace A346543.P7538016992034428852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346543.P7538016992034428852

/-! ## A346543.P14591002104885805045

`A160563(∑[4*n])`
-/

namespace A346543.P14591002104885805045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346543.P14591002104885805045

/-! ## A346543.P10893872717170188608

`record[gcd(A008956(n), A160563(n))]`
-/

namespace A346543.P10893872717170188608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008956 n) (A160563 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346543.P10893872717170188608

/-!
# A346544: Indices of repeated digits of Champernowne's constant.

The programs for A346544, there is no canonical definition to state claims against.
-/

/-! ## A346544.P3501688966660838344

`eq[1, A340490(n+1)]+2`
-/

namespace A346544.P3501688966660838344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A346544.P3501688966660838344

/-! ## A346544.P5516243152891199191

`eq[A007376(abs(1-n)), A007376(n)]`
-/

namespace A346544.P5516243152891199191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346544.P5516243152891199191

/-! ## A346544.P318783606246138061

`eq[A007376(n+1), A007376(n)]+1`
-/

namespace A346544.P318783606246138061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346544.P318783606246138061

/-! ## A346544.P2072112597530061500

`eq[A033307(n+1), A033307(n)]+2`
-/

namespace A346544.P2072112597530061500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A346544.P2072112597530061500

/-! ## A346544.P16066047782461341597

`eq[A098728(n), A098732(n+1)]+1`
-/

namespace A346544.P16066047782461341597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346544.P16066047782461341597

/-!
# A346545: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^(exp(x)/k).

The programs for A346545, there is no canonical definition to state claims against.
-/

/-! ## A346545.P15804556877501849172

`A008611(A114179(n)+A008290(n))`
-/

namespace A346545.P15804556877501849172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A114179 n + A008290 n).toNat

end

end A346545.P15804556877501849172

/-! ## A346545.P10527544430461089605

`A127083(n)+A004523(A127089(n))`
-/

namespace A346545.P10527544430461089605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127083 n + A004523 (A127089 n).toNat

end

end A346545.P10527544430461089605

/-!
# A346546: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^(exp(-x)/k).

The programs for A346546, there is no canonical definition to state claims against.
-/

/-! ## A346546.P18064018813862199677

`A154445(A001710(n)-A292255(n+1))`
-/

namespace A346546.P18064018813862199677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A001710 n - A292255 (n + 1)).toNat

end

end A346546.P18064018813862199677

/-! ## A346546.P13302085850083153327

`A033763(A327073(n))*A352820(n+1)`
-/

namespace A346546.P13302085850083153327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033763 (A327073 n).toNat * A352820 (n + 1)

end

end A346546.P13302085850083153327

/-!
# A346547: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^exp(x).

The programs for A346547, there is no canonical definition to state claims against.
-/

/-! ## A346547.P1628342411152094969

`A192946(n)+A070549(A364437(n))`
-/

namespace A346547.P1628342411152094969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192946 n + A070549 (A364437 n).toNat

end

end A346547.P1628342411152094969

/-!
# A346548: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^exp(-x).

The programs for A346548, there is no canonical definition to state claims against.
-/

/-! ## A346548.P5505263969516376938

`A352272(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=42`
-/

namespace A346548.P5505263969516376938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 42] fun n a =>
  A352272 (a (n - 1) + a (n - 2)).toNat

end

end A346548.P5505263969516376938

/-! ## A346548.P4917936511442966591

`A284384(A151396(n))`
-/

namespace A346548.P4917936511442966591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284384 (A151396 n).toNat

end

end A346548.P4917936511442966591

/-!
# A346549: Runs (of length > 1) of consecutive squarefree semiprimes.

The programs for A346549, there is no canonical definition to state claims against.
-/

/-! ## A346549.P3353900251727125061

`A038456(gcd(3, C(13, n²))+n)`
-/

namespace A346549.P3353900251727125061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (Nat.gcd 3 (Nat.choose 13 (n ^ 2)) + n)

end

end A346549.P3353900251727125061

/-! ## A346549.P18339767767069142019

`A038456(A290858(n)+n)`
-/

namespace A346549.P18339767767069142019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (A290858 n + (n : ℤ)).toNat

end

end A346549.P18339767767069142019

/-! ## A346549.P4294135177140845317

`filter[A260143(n+1), A064911(#)]`
-/

namespace A346549.P4294135177140845317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A346549.P4294135177140845317

/-! ## A346549.P5988932505813545296

`filter[A260143(n+1), A280710(#)]`
-/

namespace A346549.P5988932505813545296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A346549.P5988932505813545296

/-! ## A346549.P3124501006451414692

`filter[A260143(n+1), A353629(#)]`
-/

namespace A346549.P3124501006451414692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A346549.P3124501006451414692

/-! ## A346549.P11626091320632901249

`filter[A260143(n+1), A354927(#)]`
-/

namespace A346549.P11626091320632901249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A346549.P11626091320632901249

/-! ## A346549.P8910541547012039602

`filter[A260143(n+1), A369255(#)]`
-/

namespace A346549.P8910541547012039602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A346549.P8910541547012039602

/-! ## A346549.P12050426016459329442

`filter[A260143(n+1), A373481(#)]`
-/

namespace A346549.P12050426016459329442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A346549.P12050426016459329442

/-! ## A346549.P969091424702711349

`filter[A260143(n+1), A374471(#)]`
-/

namespace A346549.P969091424702711349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A346549.P969091424702711349

/-! ## A346549.P2340196657298274781

`filter[A260143(n+1), A378215(#)]`
-/

namespace A346549.P2340196657298274781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378215 (f1 j).toNat = 1) n)

end

end A346549.P2340196657298274781

/-!
# A346550: Expansion of Sum_{k>=0} k! * x^k * (1 + x)^(k+1).

The programs for A346550, the canonical program `A346550.P5147773896100909588` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346550 has offset 0).

The definition of A346550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346550.P5147773896100909588

`(n-2)*a(n-1)+2*(n-1)*a(n-2)+(n-2)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346550

/-- `(n-2)*a(n-1)+2*(n-1)*a(n-2)+(n-2)*a(n-3)` -/
def P5147773896100909588.Spec : Prop :=
  ∀ n, P5147773896100909588.a n = A346550 n

theorem P5147773896100909588.correct : P5147773896100909588.Spec := by
  intro n
  simp only [A346550]

end A346550

/-! ## A346550.P10233420343436604434

`ceil(sqrt(A229161(2*(n+1))))`
-/

namespace A346550.P10233420343436604434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A229161 (2 * (n + 1)) : ℝ)⌉

end

end A346550.P10233420343436604434

namespace A346550

/-- `ceil(sqrt(A229161(2*(n+1))))` -/
def P10233420343436604434.Spec : Prop :=
  ∀ n, P10233420343436604434.a n = A346550 n

end A346550

/-!
# A346551: 3-Sondow numbers: numbers k such that p^s divides k/p + 3 for every prime power divisor p^s of k.

The programs for A346551, there is no canonical definition to state claims against.
-/

/-! ## A346551.P11158703931156280215

`floor(A226964(n+2)/2)`
-/

namespace A346551.P11158703931156280215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226964 (n + 2) : ℚ) / 2⌋

end

end A346551.P11158703931156280215

/-! ## A346551.P16265258007155378593

`A000010(xor(2, A226964(n+2)))`
-/

namespace A346551.P16265258007155378593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor 2 (A226964 (n + 2))).toNat

end

end A346551.P16265258007155378593

/-!
# A346552: 4-Sondow numbers: numbers k such that p^s divides k/p + 4 for every prime power divisor p^s of k.

The programs for A346552, there is no canonical definition to state claims against.
-/

/-! ## A346552.P10502496240233496000

`A000010(C(a(n-1)+5, 2))` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A346552.P10502496240233496000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  A000010 (Nat.choose (a (n - 1) + 5).toNat 2)

end

end A346552.P10502496240233496000

/-! ## A346552.P4395295503451132644

`A042948(A330068(n+1))`
-/

namespace A346552.P4395295503451132644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A330068 (n + 1)).toNat

end

end A346552.P4395295503451132644

/-!
# A346553: 5-Sondow numbers: numbers k such that p^s divides k/p + 5 for every prime power divisor p^s of k.

The programs for A346553, there is no canonical definition to state claims against.
-/

/-! ## A346553.P280945594584548856

`A004277(A046691((n-2)*a(n-2))+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A346553.P280945594584548856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A004277 (A046691 (((n : ℤ) - 2) * a (n - 2)).toNat + 1).toNat

end

end A346553.P280945594584548856

/-!
# A346555: 7-Sondow numbers: numbers k such that p^s divides k/p + 7 for every prime power divisor p^s of k.

The programs for A346555, there is no canonical definition to state claims against.
-/

/-! ## A346555.P16606462155497322742

`A328052(or(1, A070960(n+2)))`
-/

namespace A346555.P16606462155497322742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328052 (Int.lor 1 (A070960 (n + 2))).toNat

end

end A346555.P16606462155497322742

/-! ## A346555.P4860813056064280564

`floor(sqrt(2*π)^n)*A359508(A291422(n+1))`
-/

namespace A346555.P4860813056064280564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * Real.pi) ^ n⌋ * A359508 (A291422 (n + 1)).toNat

end

end A346555.P4860813056064280564

/-!
# A346556: 8-Sondow numbers: numbers k such that p^s divides k/p + 8 for every prime power divisor p^s of k.

The programs for A346556, there is no canonical definition to state claims against.
-/

/-! ## A346556.P12530446527290748105

`A058318(n+1)²*A330068(n+1)`
-/

namespace A346556.P12530446527290748105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (n + 1) ^ 2 * A330068 (n + 1)

end

end A346556.P12530446527290748105

/-! ## A346556.P14453837744881985036

`gcd(2, A154638(n))²*A330068(n+1)`
-/

namespace A346556.P14453837744881985036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A154638 n) ^ 2 : ℤ) * A330068 (n + 1)

end

end A346556.P14453837744881985036

/-! ## A346556.P2479389048237474389

`gcd(4, A199767(n+1))*A330068(n+1)`
-/

namespace A346556.P2479389048237474389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A199767 (n + 1)) : ℤ) * A330068 (n + 1)

end

end A346556.P2479389048237474389

/-! ## A346556.P17105934720342241596

`A211669(2*(n+2))²*A330068(n+1)`
-/

namespace A346556.P17105934720342241596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211669 (2 * (n + 2)) ^ 2 * A330068 (n + 1)

end

end A346556.P17105934720342241596

/-! ## A346556.P15563320128768477547

`A058318(n+1)²*ceil(A346552(n+1)/2)`
-/

namespace A346556.P15563320128768477547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (n + 1) ^ 2 * ⌈(A346552 (n + 1) : ℚ) / 2⌉

end

end A346556.P15563320128768477547

/-!
# A346557: 9-Sondow numbers: numbers k such that p^s divides k/p + 9 for every prime power divisor p^s of k.

The programs for A346557, there is no canonical definition to state claims against.
-/

/-! ## A346557.P2421320891836254181

`A276043(A261240(n))`
-/

namespace A346557.P2421320891836254181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276043 (A261240 n).toNat

end

end A346557.P2421320891836254181

/-! ## A346557.P2470359746317957596

`A320912(A261006(n))+A039943(n)`
-/

namespace A346557.P2470359746317957596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (A261006 n).toNat + A039943 n

end

end A346557.P2470359746317957596

/-!
# A346558: a(n) = Sum_{d|n} phi(n/d) * (2^d - 1).

The programs for A346558, the canonical program `A346558.P2572161938550450521` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346558 has offset 1).

The definition of A346558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008965, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346558.P2572161938550450521

`(n+1)*A008965(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346558

/-- `(n+1)*A008965(n+1)` -/
def P2572161938550450521.Spec : Prop :=
  ∀ n, P2572161938550450521.a n = A346558 (n + 1)

theorem P2572161938550450521.correct : P2572161938550450521.Spec := by
  intro n
  simp only [A346558, Nat.add_sub_cancel]

end A346558

/-! ## A346558.P6024607659455201990

`(n+1)*(A000031(n+1)-1)`
-/

namespace A346558.P6024607659455201990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000031 (n + 1) - 1)

end

end A346558.P6024607659455201990

namespace A346558

/-- `(n+1)*(A000031(n+1)-1)` -/
def P6024607659455201990.Spec : Prop :=
  ∀ n, P6024607659455201990.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P11364400153008348912

`∑[Δ[A053635(n)]-1]`
-/

namespace A346558.P11364400153008348912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346558.P11364400153008348912

namespace A346558

/-- `∑[Δ[A053635(n)]-1]` -/
def P11364400153008348912.Spec : Prop :=
  ∀ n, P11364400153008348912.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P4453826665775950301

`A053635(n+1)-(n+1)`
-/

namespace A346558.P4453826665775950301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 (n + 1) - (n + 1 : ℤ)

end

end A346558.P4453826665775950301

namespace A346558

/-- `A053635(n+1)-(n+1)` -/
def P4453826665775950301.Spec : Prop :=
  ∀ n, P4453826665775950301.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P11357571872339540323

`∑[Δ[n*A000031(n)]-1]`
-/

namespace A346558.P11357571872339540323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346558.P11357571872339540323

namespace A346558

/-- `∑[Δ[n*A000031(n)]-1]` -/
def P11357571872339540323.Spec : Prop :=
  ∀ n, P11357571872339540323.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P957481125611716107

`(n+1)*Δ[A052825(n+1)]`
-/

namespace A346558.P957481125611716107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A346558.P957481125611716107

namespace A346558

/-- `(n+1)*Δ[A052825(n+1)]` -/
def P957481125611716107.Spec : Prop :=
  ∀ n, P957481125611716107.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P2501049166619098495

`(n+1)*(A052823(n+1)+1)`
-/

namespace A346558.P2501049166619098495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A052823 (n + 1) + 1)

end

end A346558.P2501049166619098495

namespace A346558

/-- `(n+1)*(A052823(n+1)+1)` -/
def P2501049166619098495.Spec : Prop :=
  ∀ n, P2501049166619098495.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P4046901257516319656

`2*A034738(n+1)-(n+1)`
-/

namespace A346558.P4046901257516319656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034738 (n + 1) - (n + 1 : ℤ)

end

end A346558.P4046901257516319656

namespace A346558

/-- `2*A034738(n+1)-(n+1)` -/
def P4046901257516319656.Spec : Prop :=
  ∀ n, P4046901257516319656.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P1871080711005050041

`∑{d}[n+1, #*A038199((n+1)/#)]`
-/

namespace A346558.P1871080711005050041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038199 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346558.P1871080711005050041

namespace A346558

/-- `∑{d}[n+1, #*A038199((n+1)/#)]` -/
def P1871080711005050041.Spec : Prop :=
  ∀ n, P1871080711005050041.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P1018364305970512867

`(n+1)*(A262232(n+1)+A004526(n+3))`
-/

namespace A346558.P1018364305970512867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A262232 (n + 1) + A004526 (n + 3))

end

end A346558.P1018364305970512867

namespace A346558

/-- `(n+1)*(A262232(n+1)+A004526(n+3))` -/
def P1018364305970512867.Spec : Prop :=
  ∀ n, P1018364305970512867.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P10721166599876255812

`∑{d}[n+1, A085903(#)*A162728((n+1)/#)]`
-/

namespace A346558.P10721166599876255812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085903 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346558.P10721166599876255812

namespace A346558

/-- `∑{d}[n+1, A085903(#)*A162728((n+1)/#)]` -/
def P10721166599876255812.Spec : Prop :=
  ∀ n, P10721166599876255812.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P3422310323114797490

`∑{d}[n+1, A000010(#)*A126646((n+1)/#-1)]`
-/

namespace A346558.P3422310323114797490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A126646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A346558.P3422310323114797490

namespace A346558

/-- `∑{d}[n+1, A000010(#)*A126646((n+1)/#-1)]` -/
def P3422310323114797490.Spec : Prop :=
  ∀ n, P3422310323114797490.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P4149068453967634936

`∑{d}[n+1, A062570(#)*A290234((n+1)/#-1)]`
-/

namespace A346558.P4149068453967634936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A290234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A346558.P4149068453967634936

namespace A346558

/-- `∑{d}[n+1, A062570(#)*A290234((n+1)/#-1)]` -/
def P4149068453967634936.Spec : Prop :=
  ∀ n, P4149068453967634936.a n = A346558 (n + 1)

end A346558

/-! ## A346558.P6383962442888262044

`A160619(n+1)/2-(n+1)`
-/

namespace A346558.P6383962442888262044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160619 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A346558.P6383962442888262044

namespace A346558

/-- `A160619(n+1)/2-(n+1)` -/
def P6383962442888262044.Spec : Prop :=
  ∀ n, P6383962442888262044.a n = (A346558 (n + 1) : ℚ)

end A346558

/-! ## A346558.P15383061152535824206

`(n+1)*A055376(∑[n+1])`
-/

namespace A346558.P15383061152535824206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346558.P15383061152535824206

namespace A346558

/-- `(n+1)*A055376(∑[n+1])` -/
def P15383061152535824206.Spec : Prop :=
  ∀ n, P15383061152535824206.a n = A346558 (n + 1)

end A346558

/-!
# A346559: Reversible primes with k digits, of the form concat(a,b), such that, with all the possible k-1 concatenation of two numbers a and b, we get k-1 primes (a mod b) and the sum of these k-1 primes is a reversible prime itself.

The programs for A346559, there is no canonical definition to state claims against.
-/

/-! ## A346559.P120701829647142874

`A373406(∑[A327745(n)+A027760(n+1)]+3)`
-/

namespace A346559.P120701829647142874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327745 n + A027760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373406 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A346559.P120701829647142874

/-!
# A346561: Numbers m such that in base m no number k > 1 exists such that the sum of the digits of its divisors equals k.

The programs for A346561, there is no canonical definition to state claims against.
-/

/-! ## A346561.P18001528394399395471

`eq[1, A045885(n+2)]+2`
-/

namespace A346561.P18001528394399395471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045885 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A346561.P18001528394399395471

/-! ## A346561.P17725989356765014419

`lt[A045885(round(acot(n)+n)), 2]`
-/

namespace A346561.P17725989356765014419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045885 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A346561.P17725989356765014419

/-! ## A346561.P15595442857850674930

`record[n+14-A045885(n+13)]`
-/

namespace A346561.P15595442857850674930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 14 : ℤ) - A045885 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346561.P15595442857850674930

/-! ## A346561.P7418204037061816559

`eq[1, A045885(A233583(n+1))]`
-/

namespace A346561.P7418204037061816559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045885 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346561.P7418204037061816559

/-! ## A346561.P10392236420098385134

`A009056(eq[1, A045885(n+2)])`
-/

namespace A346561.P10392236420098385134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346561.P10392236420098385134

/-!
# A346562: Irregular triangle read by rows in which row n lists the first n - 2 terms of A000005 together with the sum of A000005(n-1) and A000005(n), with a(1) = 1.

The programs for A346562, there is no canonical definition to state claims against.
-/

/-! ## A346562.P10882168489460012154

`gcd(dr(A099957(n+1)), A059048(3*n+2))`
-/

namespace A346562.P10882168489460012154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A099957 (n + 1)) : ℤ) (A059048 (3 * n + 2))

end

end A346562.P10882168489460012154

/-! ## A346562.P11593824353032214155

`A335037(gcd(A002262(n), A038308(n)))`
-/

namespace A346562.P11593824353032214155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335037 (Int.gcd (A002262 n) (A038308 n))

end

end A346562.P11593824353032214155

/-! ## A346562.P16757325902662421031

`A130296(n+1)+A004593(A006884(n+1)+2)`
-/

namespace A346562.P16757325902662421031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + A004593 (A006884 (n + 1) + 2).toNat

end

end A346562.P16757325902662421031

/-! ## A346562.P1283440368964297357

`A336737(A005153(2*(n+2))-A351641(n))`
-/

namespace A346562.P1283440368964297357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (A005153 (2 * (n + 2)) - A351641 n).toNat

end

end A346562.P1283440368964297357

/-!
# A346563: a(n) = n + A007978(n).

The programs for A346563, there is no canonical definition to state claims against.
-/

/-! ## A346563.P1598927173413109711

`n+1+A007978(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346563.P1598927173413109711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007978 (n + 1)

end

end A346563.P1598927173413109711

/-! ## A346563.P5914031744093693337

`A055874(n+1)+2+n`
-/

namespace A346563.P5914031744093693337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1) + 2 + (n : ℤ)

end

end A346563.P5914031744093693337

/-! ## A346563.P4666521843163406645

`(n+1)/A350509(n+1)+n+2`
-/

namespace A346563.P4666521843163406645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350509 (n + 1) : ℚ) + (n + 2 : ℚ)

end

end A346563.P4666521843163406645

/-! ## A346563.P7894076264279497151

`A079578(n+1)-A061853(n+1)`
-/

namespace A346563.P7894076264279497151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (n + 1) - A061853 (n + 1)

end

end A346563.P7894076264279497151

/-! ## A346563.P4203560170588690153

`A020725(A007978(n+1)+n)`
-/

namespace A346563.P4203560170588690153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A007978 (n + 1) + (n : ℤ)).toNat

end

end A346563.P4203560170588690153

/-! ## A346563.P1825021432998424425

`A009056(A055874(n+1)+n)`
-/

namespace A346563.P1825021432998424425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A055874 (n + 1) + (n : ℤ)).toNat

end

end A346563.P1825021432998424425

/-! ## A346563.P5960526346921977923

`A065475(A007978(n+1)+n)`
-/

namespace A346563.P5960526346921977923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A007978 (n + 1) + (n : ℤ)).toNat

end

end A346563.P5960526346921977923

/-! ## A346563.P13877350006940398225

`A085230(A007978(n+1)+n)`
-/

namespace A346563.P13877350006940398225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085230 (A007978 (n + 1) + (n : ℤ)).toNat

end

end A346563.P13877350006940398225

/-! ## A346563.P8963312714081448459

`A061395(A328166(n+1))+2+n`
-/

namespace A346563.P8963312714081448459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A328166 (n + 1)).toNat + 2 + (n : ℤ)

end

end A346563.P8963312714081448459

/-! ## A346563.P7312673689055063620

`A055881(A342768(n+1))+2+n`
-/

namespace A346563.P7312673689055063620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A342768 (n + 1)).toNat + 2 + (n : ℤ)

end

end A346563.P7312673689055063620

/-! ## A346563.P5904061439317607075

`A398062(∑[n+1])+n+1`
-/

namespace A346563.P5904061439317607075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398062 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A346563.P5904061439317607075

/-! ## A346563.P8761775970037310262

`A055881(A326578(n+1))+2+n`
-/

namespace A346563.P8761775970037310262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A326578 (n + 1)).toNat + 2 + (n : ℤ)

end

end A346563.P8761775970037310262

/-! ## A346563.P7697553519233356620

`A055881((n+1)²)+2+n`
-/

namespace A346563.P7697553519233356620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 ((n + 1) ^ 2) + 2 + (n : ℤ)

end

end A346563.P7697553519233356620

/-! ## A346563.P744961677804605055

`A230403((n+1)²)+n+3`
-/

namespace A346563.P744961677804605055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 ((n + 1) ^ 2) + (n + 3 : ℤ)

end

end A346563.P744961677804605055

/-! ## A346563.P4049265187349565741

`A055881(∑[2*n+1])+n+2`
-/

namespace A346563.P4049265187349565741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 2 : ℤ)

end

end A346563.P4049265187349565741

/-!
# A346564: Number of compositions (ordered partitions) of 3^n into powers of 3.

The programs for A346564, there is no canonical definition to state claims against.
-/

/-! ## A346564.P13274199819491774392

`A078932(A000244(n))`
-/

namespace A346564.P13274199819491774392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (A000244 n).toNat

end

end A346564.P13274199819491774392

/-!
# A346565: 

The programs for A346565, there is no canonical definition to state claims against.
-/

/-! ## A346565.P2980276422106666151

`A087221(4^n)`
-/

namespace A346565.P2980276422106666151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (4 ^ n)

end

end A346565.P2980276422106666151

/-!
# A346566: Number of compositions (ordered partitions) of n^4 into fourth powers.

The programs for A346566, there is no canonical definition to state claims against.
-/

/-! ## A346566.P15534663674451407087

`A363748(n^4)`
-/

namespace A346566.P15534663674451407087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363748 (n ^ 4)

end

end A346566.P15534663674451407087

/-!
# A346567: Fermat pseudoprimes to base 2 that are palindromic in base 2.

The programs for A346567, there is no canonical definition to state claims against.
-/

/-! ## A346567.P16568813810715591937

`∩[A001567(n+1), A006995(n+1)]`
-/

namespace A346567.P16568813810715591937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346567.P16568813810715591937

/-! ## A346567.P9304372800761641340

`∩[A001567(n+1), A124334(n+1)]`
-/

namespace A346567.P9304372800761641340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346567.P9304372800761641340

/-! ## A346567.P194755880316113057

`∩[A001567(n+1), A163170(n+1)]`
-/

namespace A346567.P194755880316113057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346567.P194755880316113057

/-! ## A346567.P1054105749623151876

`∩[A001567(n+1), A180204(n+1)]`
-/

namespace A346567.P1054105749623151876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346567.P1054105749623151876

/-! ## A346567.P9212916347371314124

`∩[A001567(n+1), A044918(n+1)]`
-/

namespace A346567.P9212916347371314124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346567.P9212916347371314124

/-!
# A346570: Decimal expansion of 2 - 33367 * Pi^7 / 100776960.

The programs for A346570, there is no canonical definition to state claims against.
-/

/-! ## A346570.P3323967501810499842

`9-A384425(n+1)`
-/

namespace A346570.P3323967501810499842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A384425 (n + 1 + 1)

end

end A346570.P3323967501810499842

/-!
# A346573: Decimal expansion of 2 - Pi/3.

The programs for A346573, there is no canonical definition to state claims against.
-/

/-! ## A346573.P7048246152796045585

`9-A019670(n+1)`
-/

namespace A346573.P7048246152796045585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019670 (n + 1 + 1)

end

end A346573.P7048246152796045585

/-!
# A346574: Numbers k at which phi(tau(k))/tau(phi(k)) reaches a record high.

The programs for A346574, there is no canonical definition to state claims against.
-/

/-! ## A346574.P4667740545711243943

`A328859(lcm(A320498(n), A329900(n+1)))`
-/

namespace A346574.P4667740545711243943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328859 (Int.lcm (A320498 n) (A329900 (n + 1)))

end

end A346574.P4667740545711243943

/-!
# A346576: Let x run through the list of numbers with no zeros (A052382); replace each digit d of x by the digit (x mod d).

The programs for A346576, there is no canonical definition to state claims against.
-/

/-! ## A346576.P8687335534076963450

`A347323(A052382(n+1))`
-/

namespace A346576.P8687335534076963450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (A052382 (n + 1)).toNat

end

end A346576.P8687335534076963450

/-! ## A346576.P5487292567003474812

`A347323(eq[0, A055641(n)])`
-/

namespace A346576.P5487292567003474812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346576.P5487292567003474812

/-! ## A346576.P5934606180181881491

`A347323(eq[0, A067898(n)])`
-/

namespace A346576.P5934606180181881491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346576.P5934606180181881491

/-! ## A346576.P191481912457783369

`A347323(record[A004719(n+1)])`
-/

namespace A346576.P191481912457783369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346576.P191481912457783369

/-! ## A346576.P1237983658862623677

`A347323(eq[A045503(n), A045512(n)])`
-/

namespace A346576.P1237983658862623677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346576.P1237983658862623677

/-! ## A346576.P1788848211969507599

`A347323(record[A004151(n+1)]%A335478(n+1))`
-/

namespace A346576.P1788848211969507599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A335478 (n + 1))).toNat

end

end A346576.P1788848211969507599

/-!
# A346577: a(n) = (1/(3*n)) * Sum_{d|n} mu(n/d) * binomial(3*d,d).

The programs for A346577, there is no canonical definition to state claims against.
-/

/-! ## A346577.P16693806200206435892

`A060170(n+1)/3`
-/

namespace A346577.P16693806200206435892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060170 (n + 1) : ℚ) / 3

end

end A346577.P16693806200206435892

/-! ## A346577.P1310140919815054197

`(n+1)/3*A268617(n+1)`
-/

namespace A346577.P1310140919815054197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A268617 (n + 1) : ℚ)

end

end A346577.P1310140919815054197

/-! ## A346577.P11529015194483737402

`A060165(n+1)/A268592(n+1)*A268618(n+1)`
-/

namespace A346577.P11529015194483737402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060165 (n + 1) : ℚ) / (A268592 (n + 1) : ℚ) * (A268618 (n + 1) : ℚ)

end

end A346577.P11529015194483737402

/-! ## A346577.P18219655396551094155

`(n+1)²/2*A268618(n+1)/3`
-/

namespace A346577.P18219655396551094155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 2 * (A268618 (n + 1) : ℚ) / 3

end

end A346577.P18219655396551094155

/-! ## A346577.P2963861211298420647

`A051168(∑[A017257(n)])`
-/

namespace A346577.P2963861211298420647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346577.P2963861211298420647

/-!
# A346578: a(n) = (1/(4*n)) * Sum_{d|n} mu(n/d) * binomial(4*d,d).

The programs for A346578, there is no canonical definition to state claims against.
-/

/-! ## A346578.P17032343410195245373

`A051168(∑[A082285(n)])`
-/

namespace A346578.P17032343410195245373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346578.P17032343410195245373

/-! ## A346578.P4370621064783590480

`A051168(∑[A106839(n)])`
-/

namespace A346578.P4370621064783590480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346578.P4370621064783590480

/-! ## A346578.P2101223940200516823

`A051168(A139276(n+1))`
-/

namespace A346578.P2101223940200516823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A139276 (n + 1)).toNat

end

end A346578.P2101223940200516823

/-! ## A346578.P9308689340062282323

`A051168(A139277(n+1))`
-/

namespace A346578.P9308689340062282323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A139277 (n + 1)).toNat

end

end A346578.P9308689340062282323

/-! ## A346578.P12707535506195154888

`A051168(∑[A125169(n)-2])`
-/

namespace A346578.P12707535506195154888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346578.P12707535506195154888

/-!
# A346579: a(n) = (1/(5*n)) * Sum_{d|n} mu(n/d) * binomial(5*d,d).

The programs for A346579, there is no canonical definition to state claims against.
-/

/-! ## A346579.P13049439491837584646

`A051168(∑[50*n+27]-∑[25*n+11])`
-/

namespace A346579.P13049439491837584646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n + 27

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A346579.P13049439491837584646

/-! ## A346579.P14768613671129398333

`A185158(A178572(n+1)+2)`
-/

namespace A346579.P14768613671129398333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (A178572 (n + 1) + 2).toNat

end

end A346579.P14768613671129398333

/-! ## A346579.P8325779450392252607

`A185158(A081587(n+1)+n+2)`
-/

namespace A346579.P8325779450392252607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (A081587 (n + 1) + (n : ℤ) + 2).toNat

end

end A346579.P8325779450392252607

/-! ## A346579.P7207936366202333901

`A185158(A268351(n+1)-(n+1)²+2)`
-/

namespace A346579.P7207936366202333901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (A268351 (n + 1) - ((n + 1) ^ 2 : ℤ) + 2).toNat

end

end A346579.P7207936366202333901

/-! ## A346579.P15871061812153738212

`A185158(A135453(n+1)+∑[n-1]+2)`
-/

namespace A346579.P15871061812153738212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (A135453 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A346579.P15871061812153738212

/-!
# A346580: a(n) = (1/(6*n)) * Sum_{d|n} mu(n/d) * binomial(6*d,d).

The programs for A346580, there is no canonical definition to state claims against.
-/

/-! ## A346580.P10379749150786942888

`A051168(A014132(∑[36*n+16]))`
-/

namespace A346580.P10379749150786942888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346580.P10379749150786942888

/-! ## A346580.P2346784992860387929

`A051168((n+1)*A017209(2*(n+1)))`
-/

namespace A346580.P2346784992860387929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 ((n + 1 : ℤ) * A017209 (2 * (n + 1))).toNat

end

end A346580.P2346784992860387929

/-! ## A346580.P18397699756003905869

`A051168(A051890(3*n+4)+n+n)`
-/

namespace A346580.P18397699756003905869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A051890 (3 * n + 4) + (n : ℤ) + (n : ℤ)).toNat

end

end A346580.P18397699756003905869

/-! ## A346580.P3369491555273527781

`A051168(2*n+1+A001844(3*(n+1)))`
-/

namespace A346580.P3369491555273527781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 ((2 * n + 1 : ℤ) + A001844 (3 * (n + 1))).toNat

end

end A346580.P3369491555273527781

/-! ## A346580.P8047991627281612785

`A051168(A178574(n+1)+A008588(n+1))`
-/

namespace A346580.P8047991627281612785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A178574 (n + 1) + A008588 (n + 1)).toNat

end

end A346580.P8047991627281612785

/-!
# A346581: a(n) = (1/(7*n)) * Sum_{d|n} mu(n/d) * binomial(7*d,d).

The programs for A346581, there is no canonical definition to state claims against.
-/

/-! ## A346581.P7671393471935696015

`A004151(A006359(n)*A006372(n))`
-/

namespace A346581.P7671393471935696015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A006359 n * A006372 n).toNat

end

end A346581.P7671393471935696015

/-!
# A346582: a(n) = (1/(8*n)) * Sum_{d|n} mu(n/d) * binomial(8*d,d).

The programs for A346582, there is no canonical definition to state claims against.
-/

/-! ## A346582.P6737600650453401599

`A051168(3*(n+1)+A033586(2*(n+1)))`
-/

namespace A346582.P6737600650453401599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 ((3 * (n + 1) : ℤ) + A033586 (2 * (n + 1))).toNat

end

end A346582.P6737600650453401599

/-!
# A346587: Value of k for incrementally largest value of k/A002322(k), where A002322 is the Carmichael function.

The programs for A346587, there is no canonical definition to state claims against.
-/

/-! ## A346587.P7473407786149060691

`A000041(A162351(n))*A018261(n+1)`
-/

namespace A346587.P7473407786149060691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A162351 n).toNat * A018261 (n + 1)

end

end A346587.P7473407786149060691

/-! ## A346587.P8386494747449730312

`A018261(n+1)*A281367(A148310(n))`
-/

namespace A346587.P8386494747449730312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) * A281367 (A148310 n).toNat

end

end A346587.P8386494747449730312

/-! ## A346587.P4350735163399906773

`A018261(n+1)*A281367(A148311(n))`
-/

namespace A346587.P4350735163399906773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) * A281367 (A148311 n).toNat

end

end A346587.P4350735163399906773

/-! ## A346587.P9870234538815756919

`record[gcd(A130561(n+1), A357577(n+1))]`
-/

namespace A346587.P9870234538815756919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130561 (n + 1)) (A357577 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346587.P9870234538815756919

/-! ## A346587.P15146675811892279298

`A000005(A169636(n+1)/A000188(n+4))`
-/

namespace A346587.P15146675811892279298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A169636 (n + 1) : ℚ) / (A000188 (n + 4) : ℚ))).toNat

end

end A346587.P15146675811892279298

/-!
# A346595: Successive numbers arising from the Moessner construction of the sequence A010790 (n!*(n+1)!) on pages 64, 65 of Conway-Guy's "Book of Numbers".

The programs for A346595, there is no canonical definition to state claims against.
-/

/-! ## A346595.P15083750080884743585

`A254881(lt[n, A254881(n)²²])`
-/

namespace A346595.P15083750080884743585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254881 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A346595.P15083750080884743585

/-! ## A346595.P16357528512937117442

`A254881(lt[A032741(n), A254881(n)])`
-/

namespace A346595.P16357528512937117442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346595.P16357528512937117442

/-! ## A346595.P14511879382381108202

`A254881(lt[A055640(n), A254881(n)])`
-/

namespace A346595.P14511879382381108202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346595.P14511879382381108202

/-! ## A346595.P7752605377689927759

`A254881(lt[A057427(n), A254881(n)])`
-/

namespace A346595.P7752605377689927759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346595.P7752605377689927759

/-! ## A346595.P10456059993293351510

`A254881(lt[A071028(n), A254881(n)])`
-/

namespace A346595.P10456059993293351510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346595.P10456059993293351510

/-!
# A346596: Let m = A344005(n) = smallest m such that n divides m*(m+1); a(n) = max(gcd(n,m), gcd(n,m+1)).

The programs for A346596, there is no canonical definition to state claims against.
-/

/-! ## A346596.P7173586071608531127

`(n+1)/A345994(n+1)`
-/

namespace A346596.P7173586071608531127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345994 (n + 1) : ℚ)

end

end A346596.P7173586071608531127

/-! ## A346596.P3679239962075296240

`A345994(n+1)+abs(A354988(n+1))`
-/

namespace A346596.P3679239962075296240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (n + 1) + |A354988 (n + 1)|

end

end A346596.P3679239962075296240

/-! ## A346596.P5799034872449634477

`A345994(n+1)^(-1)*A000027(n+1)`
-/

namespace A346596.P5799034872449634477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345994 (n + 1) : ℚ) ^ (-1 : ℤ) * (A000027 (n + 1) : ℚ)

end

end A346596.P5799034872449634477

/-! ## A346596.P2245911581522450634

`A345992(n+1)+A345993(n+1)-A345994(n+1)`
-/

namespace A346596.P2245911581522450634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (n + 1) + (A345993 (n + 1) - A345994 (n + 1))

end

end A346596.P2245911581522450634

/-! ## A346596.P3339803532799672678

`A219158(A345994(n+1)+∑[n])`
-/

namespace A346596.P3339803532799672678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A345994 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346596.P3339803532799672678

/-! ## A346596.P17285247831006856126

`A234575(A345994(n+1)+A000217(n))`
-/

namespace A346596.P17285247831006856126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A345994 (n + 1) + A000217 n).toNat

end

end A346596.P17285247831006856126

/-! ## A346596.P6862095639930131755

`A010766(A345994(n+1)+A000217(n))`
-/

namespace A346596.P6862095639930131755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A345994 (n + 1) + A000217 n).toNat

end

end A346596.P6862095639930131755

/-! ## A346596.P14350986434179868659

`A049834(A345994(n+1)+A000217(n))`
-/

namespace A346596.P14350986434179868659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A345994 (n + 1) + A000217 n).toNat

end

end A346596.P14350986434179868659

/-! ## A346596.P4109455222508478897

`A051537(A345994(n+1)+A000217(n))`
-/

namespace A346596.P4109455222508478897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A345994 (n + 1) + A000217 n).toNat

end

end A346596.P4109455222508478897

/-! ## A346596.P14754317501734139004

`A054531(A345994(n+1)+A000217(n))`
-/

namespace A346596.P14754317501734139004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A345994 (n + 1) + A000217 n).toNat

end

end A346596.P14754317501734139004

/-! ## A346596.P14080925688185776120

`A126988(A345994(n+1)+A000217(n))`
-/

namespace A346596.P14080925688185776120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A345994 (n + 1) + A000217 n).toNat

end

end A346596.P14080925688185776120

/-!
# A346597: Partial sums of A019554.

The programs for A346597, the canonical program `A346597.P17401246650234246717` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346597 has offset 1).

The definition of A346597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346597.P8594985167697836538

`∑[A019554(n+1)]`
-/

namespace A346597.P8594985167697836538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P8594985167697836538

namespace A346597

/-- `∑[A019554(n+1)]` -/
def P8594985167697836538.Spec : Prop :=
  ∀ n, P8594985167697836538.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P13983403505360985405

`∑[sqrt(A053143(n+1))]`
-/

namespace A346597.P13983403505360985405
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P13983403505360985405

namespace A346597

/-- `∑[sqrt(A053143(n+1))]` -/
def P13983403505360985405.Spec : Prop :=
  ∀ n, P13983403505360985405.a n = (A346597 (n + 1) : ℝ)

end A346597

/-! ## A346597.P14251326027395423930

`∑[A254732(n+1)-(n+1)]`
-/

namespace A346597.P14251326027395423930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254732 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P14251326027395423930

namespace A346597

/-- `∑[A254732(n+1)-(n+1)]` -/
def P14251326027395423930.Spec : Prop :=
  ∀ n, P14251326027395423930.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P12040551290186361099

`∑[(n+1)/A000188(n+1)]`
-/

namespace A346597.P12040551290186361099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P12040551290186361099

namespace A346597

/-- `∑[(n+1)/A000188(n+1)]` -/
def P12040551290186361099.Spec : Prop :=
  ∀ n, P12040551290186361099.a n = (A346597 (n + 1) : ℚ)

end A346597

/-! ## A346597.P10447960842958692335

`∑[A083482(n)/a(n-1)]` with `a(0)=1`
-/

namespace A346597.P10447960842958692335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A083482 n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P10447960842958692335

namespace A346597

/-- `∑[A083482(n)/a(n-1)]` -/
def P10447960842958692335.Spec : Prop :=
  ∀ n, P10447960842958692335.a n = (A346597 (n + 1) : ℚ)

end A346597

/-! ## A346597.P17401246650234246717

`∑[(n+1)²/A355264(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A346597

/-- `∑[(n+1)²/A355264(n+1)]` -/
def P17401246650234246717.Spec : Prop :=
  ∀ n, P17401246650234246717.a n = (A346597 (n + 1) : ℚ)

end A346597

/-! ## A346597.P4425753153281420753

`∑[(n+1)/sqrt(A008833(n+1))]`
-/

namespace A346597.P4425753153281420753
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P4425753153281420753

namespace A346597

/-- `∑[(n+1)/sqrt(A008833(n+1))]` -/
def P4425753153281420753.Spec : Prop :=
  ∀ n, P4425753153281420753.a n = (A346597 (n + 1) : ℝ)

end A346597

/-! ## A346597.P246103870692327871

`∑[A000188(n+1)*A007913(n+1)]`
-/

namespace A346597.P246103870692327871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P246103870692327871

namespace A346597

/-- `∑[A000188(n+1)*A007913(n+1)]` -/
def P246103870692327871.Spec : Prop :=
  ∀ n, P246103870692327871.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P15908086348543250963

`∑[A038388(2*(n+1))/2]`
-/

namespace A346597.P15908086348543250963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038388 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P15908086348543250963

namespace A346597

/-- `∑[A038388(2*(n+1))/2]` -/
def P15908086348543250963.Spec : Prop :=
  ∀ n, P15908086348543250963.a n = (A346597 (n + 1) : ℚ)

end A346597

/-! ## A346597.P8060830145478201206

`∑[sqrt(A145109(2*(n+1)))/2]`
-/

namespace A346597.P8060830145478201206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145109 (2 * (n + 1)) : ℝ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P8060830145478201206

namespace A346597

/-- `∑[sqrt(A145109(2*(n+1)))/2]` -/
def P8060830145478201206.Spec : Prop :=
  ∀ n, P8060830145478201206.a n = (A346597 (n + 1) : ℝ)

end A346597

/-! ## A346597.P8611925359010187757

`∑[A117811(2*n+1)*A117811(2*(n+1))]`
-/

namespace A346597.P8611925359010187757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1) * A117811 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P8611925359010187757

namespace A346597

/-- `∑[A117811(2*n+1)*A117811(2*(n+1))]` -/
def P8611925359010187757.Spec : Prop :=
  ∀ n, P8611925359010187757.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P8899732899184007096

`∑[A327172(A327171(n+1))]`
-/

namespace A346597.P8899732899184007096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327172 (A327171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P8899732899184007096

namespace A346597

/-- `∑[A327172(A327171(n+1))]` -/
def P8899732899184007096.Spec : Prop :=
  ∀ n, P8899732899184007096.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P1651909778260367879

`∑[A053166((n+1)²)]`
-/

namespace A346597.P1651909778260367879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P1651909778260367879

namespace A346597

/-- `∑[A053166((n+1)²)]` -/
def P1651909778260367879.Spec : Prop :=
  ∀ n, P1651909778260367879.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P15374953945375322899

`∑[(n+1)/A053164((n+1)²)]`
-/

namespace A346597.P15374953945375322899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053164 ((n + 1) ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P15374953945375322899

namespace A346597

/-- `∑[(n+1)/A053164((n+1)²)]` -/
def P15374953945375322899.Spec : Prop :=
  ∀ n, P15374953945375322899.a n = (A346597 (n + 1) : ℚ)

end A346597

/-! ## A346597.P14308627370719031443

`∑[A000188(A064549(n+1))]`
-/

namespace A346597.P14308627370719031443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A064549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P14308627370719031443

namespace A346597

/-- `∑[A000188(A064549(n+1))]` -/
def P14308627370719031443.Spec : Prop :=
  ∀ n, P14308627370719031443.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P1096469796969017160

`∑[A019555(A000190((n+1)²))]`
-/

namespace A346597.P1096469796969017160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A000190 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P1096469796969017160

namespace A346597

/-- `∑[A019555(A000190((n+1)²))]` -/
def P1096469796969017160.Spec : Prop :=
  ∀ n, P1096469796969017160.a n = A346597 (n + 1)

end A346597

/-! ## A346597.P12698394456621834784

`∑[A053165(A053166(∑[2*n+1]))]`
-/

namespace A346597.P12698394456621834784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A053166 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P12698394456621834784

namespace A346597

/-- `∑[A053165(A053166(∑[2*n+1]))]` -/
def P12698394456621834784.Spec : Prop :=
  ∀ n, P12698394456621834784.a n = A346597 (n + 1)

end A346597

/-!
# A346598: a(n) is the number of terms in A344005 that are equal to n.

The programs for A346598, there is no canonical definition to state claims against.
-/

/-! ## A346598.P5210564280811571602

`A354990(∑[2*(n+1)])`
-/

namespace A346598.P5210564280811571602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346598.P5210564280811571602

/-! ## A346598.P998680810040958026

`A354991(∑[2*(n+1)])`
-/

namespace A346598.P998680810040958026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346598.P998680810040958026

/-! ## A346598.P10145816282137525689

`A354990(A002378(n+1))%42`
-/

namespace A346598.P10145816282137525689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354990 (A002378 (n + 1)).toNat) 42

end

end A346598.P10145816282137525689

/-! ## A346598.P16050428663090695965

`A254667(A354990(∑[n+2+n]))`
-/

namespace A346598.P16050428663090695965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A354990 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346598.P16050428663090695965

/-! ## A346598.P12253978958014278664

`A354990(∑[n+2+n])/A033999(n)²`
-/

namespace A346598.P12253978958014278664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354990 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A346598.P12253978958014278664

/-! ## A346598.P4617394024126122207

`A354991(A002378(n+1))%A017308(n)`
-/

namespace A346598.P4617394024126122207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354991 (A002378 (n + 1)).toNat) (A017308 n)

end

end A346598.P4617394024126122207

/-!
# A346599: Smallest k such that A344005(k) = n.

The programs for A346599, there is no canonical definition to state claims against.
-/

/-! ## A346599.P315320972652713090

`A257942(n)/A354999(A257942(n))`
-/

namespace A346599.P315320972652713090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257942 n : ℚ) / (A354999 (A257942 n).toNat : ℚ)

end

end A346599.P315320972652713090

/-! ## A346599.P11516847771480653876

`A002378(n+1)/A354999(A002378(n+1))`
-/

namespace A346599.P11516847771480653876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A354999 (A002378 (n + 1)).toNat : ℚ)

end

end A346599.P11516847771480653876

/-! ## A346599.P11946668378281506553

`A354998(A257942(n))`
-/

namespace A346599.P11946668378281506553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354998 (A257942 n).toNat

end

end A346599.P11946668378281506553

/-! ## A346599.P2111560299727947943

`A354998(∑[2*(n+1)])`
-/

namespace A346599.P2111560299727947943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346599.P2111560299727947943

/-! ## A346599.P8257789529349208096

`A354998(A002378(n+1))%A017308(n)`
-/

namespace A346599.P8257789529349208096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354998 (A002378 (n + 1)).toNat) (A017308 n)

end

end A346599.P8257789529349208096

