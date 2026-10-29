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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A127700: Numbers n such that partition number of n^2 is even.

The programs for A127700, there is no canonical definition to state claims against.
-/

/-! ## A127700.P14575071592209023533

`lt[0, A278478(n²)]`
-/

namespace A127700.P14575071592209023533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127700.P14575071592209023533

/-! ## A127700.P9887329991146515230

`lt[0, A355676(n²)]`
-/

namespace A127700.P9887329991146515230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127700.P9887329991146515230

/-! ## A127700.P7377772252034180866

`lt[1, A069935(n²)]`
-/

namespace A127700.P7377772252034180866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127700.P7377772252034180866

/-! ## A127700.P10296593011725957440

`eq[A000007(A278478(n²)), A000038(n)]`
-/

namespace A127700.P10296593011725957440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A278478 (n ^ 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127700.P10296593011725957440

/-! ## A127700.P15233377584036185749

`eq[A000007(n+1), A000007(A278478(n²))]`
-/

namespace A127700.P15233377584036185749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A278478 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127700.P15233377584036185749

/-!
# A127701: Infinite lower triangular matrix with (1, 2, 3, ...) in the main diagonal, (1, 1, 1, ...) in the subdiagonal and the rest zeros.

The programs for A127701, the canonical program `A127701.P9981327961202796931` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127701 has offset 1).

The definition of A127701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127701.P15656316937145168969

`T(n-1,k-1)+T(n,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A127701.P15656316937145168969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triLeft a n

end

end A127701.P15656316937145168969

namespace A127701

/-- `T(n-1,k-1)+T(n,k-1)` -/
def P15656316937145168969.Spec : Prop :=
  ∀ n, (P15656316937145168969.a n : ℤ) = A127701 (n + 1)

end A127701

/-! ## A127701.P1114216916756173767

`C(col(n)+1, row(n))`
-/

namespace A127701.P1114216916756173767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 1) (SequenceMachineLib.triRow n)

end

end A127701.P1114216916756173767

namespace A127701

/-- `C(col(n)+1, row(n))` -/
def P1114216916756173767.Spec : Prop :=
  ∀ n, (P1114216916756173767.a n : ℤ) = A127701 (n + 1)

end A127701

/-! ## A127701.P7517012345195069313

`T(n-1,k-1)-(T(n-1,k+1)-1)*T(n,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A127701.P7517012345195069313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpRight a n - 1) * SequenceMachineLib.triLeft a n

end

end A127701.P7517012345195069313

namespace A127701

/-- `T(n-1,k-1)-(T(n-1,k+1)-1)*T(n,k-1)` -/
def P7517012345195069313.Spec : Prop :=
  ∀ n, P7517012345195069313.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P5993666721537495156

`T(n-1,k-1)-(T(n,k-1)-2)*T(n,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A127701.P5993666721537495156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triLeft a n - 2) * SequenceMachineLib.triLeft a n

end

end A127701.P5993666721537495156

namespace A127701

/-- `T(n-1,k-1)-(T(n,k-1)-2)*T(n,k-1)` -/
def P5993666721537495156.Spec : Prop :=
  ∀ n, P5993666721537495156.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P13509385729883549915

`abs(A128132(n+1))`
-/

namespace A127701.P13509385729883549915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128132 (n + 1)|

end

end A127701.P13509385729883549915

namespace A127701

/-- `abs(A128132(n+1))` -/
def P13509385729883549915.Spec : Prop :=
  ∀ n, P13509385729883549915.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P2648464737229776578

`C(comp[C(n, 2)]-(n+1), A294317(n))`
-/

namespace A127701.P2648464737229776578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)).toNat (A294317 n).toNat

end

end A127701.P2648464737229776578

namespace A127701

/-- `C(comp[C(n, 2)]-(n+1), A294317(n))` -/
def P2648464737229776578.Spec : Prop :=
  ∀ n, (P2648464737229776578.a n : ℤ) = A127701 (n + 1)

end A127701

/-! ## A127701.P12352802121697185438

`C(A002260(n+1), comp[∑[n]]%(n+2))`
-/

namespace A127701.P12352802121697185438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2))

end

end A127701.P12352802121697185438

namespace A127701

/-- `C(A002260(n+1), comp[∑[n]]%(n+2))` -/
def P12352802121697185438.Spec : Prop :=
  ∀ n, (P12352802121697185438.a n : ℤ) = A127701 (n + 1)

end A127701

/-! ## A127701.P4127348960949726181

`char[∑[∑[n]%(n+1)-1]]*A051340(n)`
-/

namespace A127701.P4127348960949726181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051340 n

end

end A127701.P4127348960949726181

namespace A127701

/-- `char[∑[∑[n]%(n+1)-1]]*A051340(n)` -/
def P4127348960949726181.Spec : Prop :=
  ∀ n, P4127348960949726181.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P9981327961202796931

`A051340(n)*A097806(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127701

/-- `A051340(n)*A097806(n)` -/
def P9981327961202796931.Spec : Prop :=
  ∀ n, P9981327961202796931.a n = A127701 (n + 1)

theorem P9981327961202796931.correct : P9981327961202796931.Spec := by
  intro n
  simp only [A127701, Nat.add_sub_cancel]

end A127701

/-! ## A127701.P7389450784849796553

`A097806(n)*A130266(n)`
-/

namespace A127701.P7389450784849796553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A130266 n

end

end A127701.P7389450784849796553

namespace A127701

/-- `A097806(n)*A130266(n)` -/
def P7389450784849796553.Spec : Prop :=
  ∀ n, P7389450784849796553.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P17769946497213337907

`lcm(A051340(n), A167374(n))`
-/

namespace A127701.P17769946497213337907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051340 n) (A167374 n)

end

end A127701.P17769946497213337907

namespace A127701

/-- `lcm(A051340(n), A167374(n))` -/
def P17769946497213337907.Spec : Prop :=
  ∀ n, (P17769946497213337907.a n : ℤ) = A127701 (n + 1)

end A127701

/-! ## A127701.P9306469852005550095

`and(A051340(n), A152568(n))`
-/

namespace A127701.P9306469852005550095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051340 n) (A152568 n)

end

end A127701.P9306469852005550095

namespace A127701

/-- `and(A051340(n), A152568(n))` -/
def P9306469852005550095.Spec : Prop :=
  ∀ n, P9306469852005550095.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P14517072608728029512

`and(A051340(n), A152571(n))`
-/

namespace A127701.P14517072608728029512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051340 n) (A152571 n)

end

end A127701.P14517072608728029512

namespace A127701

/-- `and(A051340(n), A152571(n))` -/
def P14517072608728029512.Spec : Prop :=
  ∀ n, P14517072608728029512.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P7026912999607871786

`A127648(abs(n*A117568(n)))`
-/

namespace A127701.P7026912999607871786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 |(n : ℤ) * A117568 n|.toNat

end

end A127701.P7026912999607871786

namespace A127701

/-- `A127648(abs(n*A117568(n)))` -/
def P7026912999607871786.Spec : Prop :=
  ∀ n, P7026912999607871786.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P11586177039357869962

`A127648(n*A117568(n)²)`
-/

namespace A127701.P11586177039357869962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 ((n : ℤ) * A117568 n ^ 2).toNat

end

end A127701.P11586177039357869962

namespace A127701

/-- `A127648(n*A117568(n)²)` -/
def P11586177039357869962.Spec : Prop :=
  ∀ n, P11586177039357869962.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P2117167424072841251

`A167374(n)²*A130266(n)`
-/

namespace A127701.P2117167424072841251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n ^ 2 * A130266 n

end

end A127701.P2117167424072841251

namespace A127701

/-- `A167374(n)²*A130266(n)` -/
def P2117167424072841251.Spec : Prop :=
  ∀ n, P2117167424072841251.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P4868347934142913466

`A127648(n)+A023531(n+1)`
-/

namespace A127701.P4868347934142913466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n + A023531 (n + 1)

end

end A127701.P4868347934142913466

namespace A127701

/-- `A127648(n)+A023531(n+1)` -/
def P4868347934142913466.Spec : Prop :=
  ∀ n, P4868347934142913466.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P10704516944935389392

`A129184(n+1)+A127648(n)`
-/

namespace A127701.P10704516944935389392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1) + A127648 n

end

end A127701.P10704516944935389392

namespace A127701

/-- `A129184(n+1)+A127648(n)` -/
def P10704516944935389392.Spec : Prop :=
  ∀ n, P10704516944935389392.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P6432311943483401839

`A132681(n)+A128064(n+1)`
-/

namespace A127701.P6432311943483401839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132681 n + A128064 (n + 1)

end

end A127701.P6432311943483401839

namespace A127701

/-- `A132681(n)+A128064(n+1)` -/
def P6432311943483401839.Spec : Prop :=
  ∀ n, P6432311943483401839.a n = A127701 (n + 1)

end A127701

/-! ## A127701.P3135787481137909520

`A050873(n+1)*A097806(n)`
-/

namespace A127701.P3135787481137909520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A097806 n

end

end A127701.P3135787481137909520

namespace A127701

/-- `A050873(n+1)*A097806(n)` -/
def P3135787481137909520.Spec : Prop :=
  ∀ n, P3135787481137909520.a n = A127701 (n + 1)

end A127701

/-!
# A127702: Least value of x*y giving Max ( sigma(x*y) : 1<=x<=n, 1<=y<=n ).

The programs for A127702, there is no canonical definition to state claims against.
-/

/-! ## A127702.P616336857971524606

`A051444(A074963(n+1))`
-/

namespace A127702.P616336857971524606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A074963 (n + 1)).toNat

end

end A127702.P616336857971524606

/-! ## A127702.P8614738019032588543

`A233929(A074963(n+1)+1)`
-/

namespace A127702.P8614738019032588543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A074963 (n + 1) + 1).toNat

end

end A127702.P8614738019032588543

/-! ## A127702.P5297416294305563277

`(n+1)*A024936(A104310(n+1))`
-/

namespace A127702.P5297416294305563277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A024936 (A104310 (n + 1)).toNat

end

end A127702.P5297416294305563277

/-! ## A127702.P16081443748560477079

`(n+1)*A201052(A329730(n+1))`
-/

namespace A127702.P16081443748560477079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201052 (A329730 (n + 1)).toNat

end

end A127702.P16081443748560477079

/-! ## A127702.P723131163942158885

`(A307243(A107466(n+1))+n)*(n+1)`
-/

namespace A127702.P723131163942158885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A307243 (A107466 (n + 1)).toNat + (n : ℤ)) * (n + 1 : ℤ)

end

end A127702.P723131163942158885

/-!
# A127703: Primes of the form 7*2^k-3 or 7*2^k+3.

The programs for A127703, there is no canonical definition to state claims against.
-/

/-! ## A127703.P9452501906460133386

`p?[∪[7*2^n-3, A164285(n)]]`
-/

namespace A127703.P9452501906460133386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 2 ^ n : ℤ) - 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127703.P9452501906460133386

/-! ## A127703.P9688066273934767867

`p?[∪[A164285(n), A156127(n)]]`
-/

namespace A127703.P9688066273934767867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156127 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127703.P9688066273934767867

/-! ## A127703.P784560379005202225

`p?[∪[A164285(n), A220753(n)]]`
-/

namespace A127703.P784560379005202225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220753 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127703.P784560379005202225

/-! ## A127703.P7577956518764842399

`p?[∪[A164285(n), A133257(2*n)]]`
-/

namespace A127703.P7577956518764842399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127703.P7577956518764842399

/-! ## A127703.P6977512882054918608

`p?[∪[7*2^n-3, A099944(n+3)%A304387(n)]]`
-/

namespace A127703.P6977512882054918608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 2 ^ n : ℤ) - 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099944 (n + 3)) (A304387 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127703.P6977512882054918608

/-!
# A127705: a(n) = mu(n) + Sum_{k|n, k>1} (k+1)*mu(n/k), where mu = A008683.

The programs for A127705, the canonical program `A127705.P9735207919828446703` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127705 has offset 1).

The definition of A127705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127705.P16369916007193532296

`A028310(A053139(n+1))`
-/

namespace A127705.P16369916007193532296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053139 (n + 1)).toNat

end

end A127705.P16369916007193532296

namespace A127705

/-- `A028310(A053139(n+1))` -/
def P16369916007193532296.Spec : Prop :=
  ∀ n, P16369916007193532296.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P14985296150324411537

`A053139(n+1)+A000007(n)`
-/

namespace A127705.P14985296150324411537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 1) + A000007 n

end

end A127705.P14985296150324411537

namespace A127705

/-- `A053139(n+1)+A000007(n)` -/
def P14985296150324411537.Spec : Prop :=
  ∀ n, P14985296150324411537.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P2582430204597352562

`A157658(n+1)+A000010(n+1)`
-/

namespace A127705.P2582430204597352562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) + A000010 (n + 1)

end

end A127705.P2582430204597352562

namespace A127705

/-- `A157658(n+1)+A000010(n+1)` -/
def P2582430204597352562.Spec : Prop :=
  ∀ n, P2582430204597352562.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P12264997552919918930

`A053139(n+1)+A010051(2*(n+1))`
-/

namespace A127705.P12264997552919918930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 1) + A010051 (2 * (n + 1))

end

end A127705.P12264997552919918930

namespace A127705

/-- `A053139(n+1)+A010051(2*(n+1))` -/
def P12264997552919918930.Spec : Prop :=
  ∀ n, P12264997552919918930.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P9746284397673914278

`∑{d}[n+1, A008683(#)*A065475((n+1)/#)]`
-/

namespace A127705.P9746284397673914278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A065475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127705.P9746284397673914278

namespace A127705

/-- `∑{d}[n+1, A008683(#)*A065475((n+1)/#)]` -/
def P9746284397673914278.Spec : Prop :=
  ∀ n, P9746284397673914278.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P8795746708397460142

`C(2, n+2)+A000010(n+1)-A008683(n+1)`
-/

namespace A127705.P8795746708397460142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A000010 (n + 1) - A008683 (n + 1))

end

end A127705.P8795746708397460142

namespace A127705

/-- `C(2, n+2)+A000010(n+1)-A008683(n+1)` -/
def P8795746708397460142.Spec : Prop :=
  ∀ n, P8795746708397460142.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P11902051297750283725

`A000010(n+1)+A000007(n)-A008683(n+1)`
-/

namespace A127705.P11902051297750283725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A000007 n - A008683 (n + 1))

end

end A127705.P11902051297750283725

namespace A127705

/-- `A000010(n+1)+A000007(n)-A008683(n+1)` -/
def P11902051297750283725.Spec : Prop :=
  ∀ n, P11902051297750283725.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P10311830798001724012

`A000010(n+1)+A100995(n+1)-A193056(n+1)`
-/

namespace A127705.P10311830798001724012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A100995 (n + 1) - A193056 (n + 1))

end

end A127705.P10311830798001724012

namespace A127705

/-- `A000010(n+1)+A100995(n+1)-A193056(n+1)` -/
def P10311830798001724012.Spec : Prop :=
  ∀ n, P10311830798001724012.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P5593480198679591928

`A055034(n+1)+A349136(n+1)-A008683(n+1)`
-/

namespace A127705.P5593480198679591928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) + (A349136 (n + 1) - A008683 (n + 1))

end

end A127705.P5593480198679591928

namespace A127705

/-- `A055034(n+1)+A349136(n+1)-A008683(n+1)` -/
def P5593480198679591928.Spec : Prop :=
  ∀ n, P5593480198679591928.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P11910381598117015938

`A000010(n+1)-A008683(n+1)*A070238(n+1)`
-/

namespace A127705.P11910381598117015938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A008683 (n + 1) * A070238 (n + 1)

end

end A127705.P11910381598117015938

namespace A127705

/-- `A000010(n+1)-A008683(n+1)*A070238(n+1)` -/
def P11910381598117015938.Spec : Prop :=
  ∀ n, P11910381598117015938.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P9570614859549228399

`A000010(n+1)-A008683(n+1)*A300719(n+1)`
-/

namespace A127705.P9570614859549228399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A008683 (n + 1) * A300719 (n + 1)

end

end A127705.P9570614859549228399

namespace A127705

/-- `A000010(n+1)-A008683(n+1)*A300719(n+1)` -/
def P9570614859549228399.Spec : Prop :=
  ∀ n, P9570614859549228399.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P15753004276270793920

`Δ[A049643(n)]-A008683(n+1)`
-/

namespace A127705.P15753004276270793920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (n + 1)

end

end A127705.P15753004276270793920

namespace A127705

/-- `Δ[A049643(n)]-A008683(n+1)` -/
def P15753004276270793920.Spec : Prop :=
  ∀ n, P15753004276270793920.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P5615048345403502353

`A384710(n+1)-A008683(n+1)`
-/

namespace A127705.P5615048345403502353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 (n + 1) - A008683 (n + 1)

end

end A127705.P5615048345403502353

namespace A127705

/-- `A384710(n+1)-A008683(n+1)` -/
def P5615048345403502353.Spec : Prop :=
  ∀ n, P5615048345403502353.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P9735207919828446703

`Δ[A049643(n)]-A162512(n+1)%2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127705

/-- `Δ[A049643(n)]-A162512(n+1)%2` -/
def P9735207919828446703.Spec : Prop :=
  ∀ n, P9735207919828446703.a n = A127705 (n + 1)

theorem P9735207919828446703.correct : P9735207919828446703.Spec := by
  intro n
  simp only [A127705, Nat.add_sub_cancel]

end A127705

/-! ## A127705.P10445134501696778081

`Δ[A049643(n)]-A346254(n+1)%2`
-/

namespace A127705.P10445134501696778081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A346254 (n + 1)) 2

end

end A127705.P10445134501696778081

namespace A127705

/-- `Δ[A049643(n)]-A346254(n+1)%2` -/
def P10445134501696778081.Spec : Prop :=
  ∀ n, P10445134501696778081.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P1790870965192046078

`A000034(n+1)*A055034(n+1)-A008683(n+1)`
-/

namespace A127705.P1790870965192046078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A055034 (n + 1) - A008683 (n + 1)

end

end A127705.P1790870965192046078

namespace A127705

/-- `A000034(n+1)*A055034(n+1)-A008683(n+1)` -/
def P1790870965192046078.Spec : Prop :=
  ∀ n, P1790870965192046078.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P4450188842560077227

`A000010(n+1)-A008683(n+1)*A157928(n+1)`
-/

namespace A127705.P4450188842560077227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A008683 (n + 1) * A157928 (n + 1)

end

end A127705.P4450188842560077227

namespace A127705

/-- `A000010(n+1)-A008683(n+1)*A157928(n+1)` -/
def P4450188842560077227.Spec : Prop :=
  ∀ n, P4450188842560077227.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P654246138459130077

`Δ[A049643(n)]-((A007814(n+1)+1)*A092673(n+1))%3`
-/

namespace A127705.P654246138459130077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod ((A007814 (n + 1) + 1) * A092673 (n + 1)) 3

end

end A127705.P654246138459130077

namespace A127705

/-- `Δ[A049643(n)]-((A007814(n+1)+1)*A092673(n+1))%3` -/
def P654246138459130077.Spec : Prop :=
  ∀ n, P654246138459130077.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P12528420433946317530

`A008578(n+1)+A053139(n+1)-A053139(A008578(n+1))`
-/

namespace A127705.P12528420433946317530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A053139 (n + 1) - A053139 (A008578 (n + 1)).toNat)

end

end A127705.P12528420433946317530

namespace A127705

/-- `A008578(n+1)+A053139(n+1)-A053139(A008578(n+1))` -/
def P12528420433946317530.Spec : Prop :=
  ∀ n, P12528420433946317530.a n = A127705 (n + 1)

end A127705

/-! ## A127705.P3921011090492234999

`Δ[A049643(n)]-(4*A181435(n+1))%3`
-/

namespace A127705.P3921011090492234999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (4 * A181435 (n + 1)) 3

end

end A127705.P3921011090492234999

namespace A127705

/-- `Δ[A049643(n)]-(4*A181435(n+1))%3` -/
def P3921011090492234999.Spec : Prop :=
  ∀ n, P3921011090492234999.a n = A127705 (n + 1)

end A127705

/-!
# A127707: Number of commutative rings with 1 containing n elements.

The programs for A127707, there is no canonical definition to state claims against.
-/

/-! ## A127707.P6191107332260427121

`A037291(n+1)-A127708(n+1)`
-/

namespace A127707.P6191107332260427121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 1) - A127708 (n + 1)

end

end A127707.P6191107332260427121

/-! ## A127707.P2761251255252085897

`A037291(n+1)+A127708(n+1)*A316441(A007491(n+1))`
-/

namespace A127707.P2761251255252085897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 1) + A127708 (n + 1) * A316441 (A007491 (n + 1)).toNat

end

end A127707.P2761251255252085897

/-! ## A127707.P769870592222517289

`A337769(A037291(n+1))`
-/

namespace A127707.P769870592222517289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A037291 (n + 1)).toNat

end

end A127707.P769870592222517289

/-! ## A127707.P9703234205173065832

`A083375(A037291(n+1)²)`
-/

namespace A127707.P9703234205173065832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A037291 (n + 1) ^ 2).toNat

end

end A127707.P9703234205173065832

/-! ## A127707.P7387098109309385110

`A083375(A037291(n+1)^2)`
-/

namespace A127707.P7387098109309385110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A037291 (n + 1) ^ 2).toNat

end

end A127707.P7387098109309385110

/-!
# A127708: Number of non-commutative rings with 1 containing n elements.

The programs for A127708, there is no canonical definition to state claims against.
-/

/-! ## A127708.P4792058087600986290

`A037291(n+1)-A127707(n+1)`
-/

namespace A127708.P4792058087600986290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 1) - A127707 (n + 1)

end

end A127708.P4792058087600986290

/-! ## A127708.P17040666657211543149

`∏{e}[n+1, #!]-A071521(∏{e}[n+1, #!])`
-/

namespace A127708.P17040666657211543149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ) - A071521 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

end

end A127708.P17040666657211543149

/-! ## A127708.P7258956913973153326

`A034270(A380399(n+1))`
-/

namespace A127708.P7258956913973153326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034270 (A380399 (n + 1)).toNat

end

end A127708.P7258956913973153326

/-! ## A127708.P9317037995502792226

`A034270(A396548(n+1))`
-/

namespace A127708.P9317037995502792226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034270 (A396548 (n + 1)).toNat

end

end A127708.P9317037995502792226

/-! ## A127708.P4070685545678718872

`A037291(n%(n+1)+1)%A127707(n+1)`
-/

namespace A127708.P4070685545678718872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037291 (n % (n + 1) + 1)) (A127707 (n + 1))

end

end A127708.P4070685545678718872

/-! ## A127708.P4870772612121885499

`A112624(n+1)-A071521(A112624(n+1))`
-/

namespace A127708.P4870772612121885499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1) - A071521 (A112624 (n + 1)).toNat

end

end A127708.P4870772612121885499

/-! ## A127708.P17584501791509577690

`A037291(A000027(n+1))%A127707(n+1)`
-/

namespace A127708.P17584501791509577690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037291 (A000027 (n + 1)).toNat) (A127707 (n + 1))

end

end A127708.P17584501791509577690

/-! ## A127708.P3118288772912646693

`A106609(A037291(n+1)%A127707(n+1))`
-/

namespace A127708.P3118288772912646693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (Int.tmod (A037291 (n + 1)) (A127707 (n + 1))).toNat

end

end A127708.P3118288772912646693

/-!
# A127709: Triangle T(n, d) = the number of isomorphism classes of smooth Fano d-polytopes with n vertices, read by rows (n >= 2, 1 <= d < n).

The programs for A127709, there is no canonical definition to state claims against.
-/

/-! ## A127709.P18045441215430742462

`and(A116035(A154337(n)), A116089(n))`
-/

namespace A127709.P18045441215430742462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116035 (A154337 n).toNat) (A116089 n)

end

end A127709.P18045441215430742462

/-! ## A127709.P1121037687375957593

`A308686(A172288(n))`
-/

namespace A127709.P1121037687375957593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308686 (A172288 n).toNat

end

end A127709.P1121037687375957593

/-! ## A127709.P167192304681484394

`A086016(A064230(n))+A048993(n)`
-/

namespace A127709.P167192304681484394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A064230 n).toNat + A048993 n

end

end A127709.P167192304681484394

/-! ## A127709.P5195992059131702547

`A005939(A000079(n))%A375577(n)`
-/

namespace A127709.P5195992059131702547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005939 (A000079 n).toNat) (A375577 n)

end

end A127709.P5195992059131702547

/-! ## A127709.P3068607293243860464

`A078082(A350256(n))`
-/

namespace A127709.P3068607293243860464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078082 (A350256 n).toNat

end

end A127709.P3068607293243860464

/-!
# A127710: Inverse of the triangle A(n,k)=if(k<=n,if(n<=2k,1/(n+1),0),0).

The programs for A127710, there is no canonical definition to state claims against.
-/

/-! ## A127710.P607361808783217560

`round(A127749(n)/2)`
-/

namespace A127710.P607361808783217560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127749 n : ℚ) / 2)

end

end A127710.P607361808783217560

/-! ## A127710.P15609451251085526888

`round(round(log(2)*A127751(n))/2)`
-/

namespace A127710.P15609451251085526888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.log (2 : ℝ) * (A127751 n : ℝ)) : ℚ) / 2)

end

end A127710.P15609451251085526888

/-! ## A127710.P16856023545226978718

`(1-C(∑[char[∑[n]]], 2)+n)*A111967(n)`
-/

namespace A127710.P16856023545226978718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A111967 n

end

end A127710.P16856023545226978718

/-! ## A127710.P4831042535913484159

`A002260(n+1)*A111967(n)`
-/

namespace A127710.P4831042535913484159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A111967 n

end

end A127710.P4831042535913484159

/-! ## A127710.P16648015982967770744

`(A002262(n)+1)*A111967(n)`
-/

namespace A127710.P16648015982967770744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A111967 n

end

end A127710.P16648015982967770744

/-! ## A127710.P16273768216051871322

`A111967(n)*A131818(n+1)`
-/

namespace A127710.P16273768216051871322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A131818 (n + 1)

end

end A127710.P16273768216051871322

/-! ## A127710.P11304093154456760889

`A111967(n)*A134868(n+1)`
-/

namespace A127710.P11304093154456760889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A134868 (n + 1)

end

end A127710.P11304093154456760889

/-! ## A127710.P7230049154507854961

`A111967(n)*A135223(n+1)`
-/

namespace A127710.P7230049154507854961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A135223 (n + 1)

end

end A127710.P7230049154507854961

/-! ## A127710.P18111283291926992869

`(A163351(n)+1)*A111967(n)`
-/

namespace A127710.P18111283291926992869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163351 n + 1) * A111967 n

end

end A127710.P18111283291926992869

/-! ## A127710.P5270289994635649551

`(A166352(n)+1)*A111967(n)`
-/

namespace A127710.P5270289994635649551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166352 n + 1) * A111967 n

end

end A127710.P5270289994635649551

/-!
# A127711: Inverse of the triangle A(n,k) = 1/F(n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127711, there is no canonical definition to state claims against.
-/

/-! ## A127711.P8116039851134943473

`A104763(n+1)*A111967(n)`
-/

namespace A127711.P8116039851134943473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A111967 n

end

end A127711.P8116039851134943473

/-! ## A127711.P7694753133392057556

`A111967(n)*A141169(comp[∑[n]])`
-/

namespace A127711.P7694753133392057556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A141169 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A127711.P7694753133392057556

/-! ## A127711.P5976565089303017615

`A111967(n)*A245327(A059268(n))`
-/

namespace A127711.P5976565089303017615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A245327 (A059268 n).toNat

end

end A127711.P5976565089303017615

/-! ## A127711.P6273036579864224304

`A000045(A002260(n+1))*A111967(n)`
-/

namespace A127711.P6273036579864224304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A111967 n

end

end A127711.P6273036579864224304

/-! ## A127711.P12332206146852249521

`A000045(A002262(n)+1)*A111967(n)`
-/

namespace A127711.P12332206146852249521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 1).toNat * A111967 n

end

end A127711.P12332206146852249521

/-! ## A127711.P10058369217535023039

`A000045(A131818(n+1))*A111967(n)`
-/

namespace A127711.P10058369217535023039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131818 (n + 1)).toNat * A111967 n

end

end A127711.P10058369217535023039

/-! ## A127711.P182090642853836348

`A000045(A135223(n+1))*A111967(n)`
-/

namespace A127711.P182090642853836348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A135223 (n + 1)).toNat * A111967 n

end

end A127711.P182090642853836348

/-!
# A127712: Row sums of the inverse of the triangle A(n,k) = 1/F(n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127712, there is no canonical definition to state claims against.
-/

/-! ## A127712.P3760531444563003323

`Δ[A000045(n)+a(floor(n/2))]` with `a(0)=0`
-/

namespace A127712.P3760531444563003323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000045 n + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127712.P3760531444563003323

/-! ## A127712.P12103916814209859138

`Δ[A324969(n+1)+a(floor(n/2))]` with `a(0)=0`
-/

namespace A127712.P12103916814209859138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A324969 (n + 1) + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127712.P12103916814209859138

/-! ## A127712.P1169383266444194742

`Δ[a(floor(n/2))+A001611(n)-1]` with `a(0)=1`
-/

namespace A127712.P1169383266444194742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (A001611 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127712.P1169383266444194742

/-! ## A127712.P2981889042597009194

`Δ[a(floor(n/2))-A152163(n+2)]` with `a(0)=0`
-/

namespace A127712.P2981889042597009194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - A152163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127712.P2981889042597009194

/-! ## A127712.P2900714421119301083

`Δ[A103609(2*n)+a(floor(n/2))]` with `a(0)=0`
-/

namespace A127712.P2900714421119301083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A103609 (2 * n) + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127712.P2900714421119301083

/-!
# A127713: A bisection of the row sums of the inverse of the triangle A(n,k) = 1/F(n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127713, there is no canonical definition to state claims against.
-/

/-! ## A127713.P5262284638911682805

`A127712(2*n+1)`
-/

namespace A127713.P5262284638911682805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127712 (2 * n + 1)

end

end A127713.P5262284638911682805

/-! ## A127713.P2518447389843280032

`A127712(n)+A001906(n)`
-/

namespace A127713.P2518447389843280032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127712 n + A001906 n

end

end A127713.P2518447389843280032

/-!
# A127715: Rightmost border of triangle A127714: a(n) = A127714(n, (n+1)*(n+2)/2 - 1).

The programs for A127715, there is no canonical definition to state claims against.
-/

/-! ## A127715.P10998853655518169443

`A152400(∑[n])`
-/

namespace A127715.P10998853655518169443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127715.P10998853655518169443

/-! ## A127715.P18396966232318657901

`A152405(∑[n])`
-/

namespace A127715.P18396966232318657901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127715.P18396966232318657901

/-! ## A127715.P9518714920591508805

`or(floor(1/(n+1)), A152400(n*(n+1)/2))`
-/

namespace A127715.P9518714920591508805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A152400 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A127715.P9518714920591508805

/-! ## A127715.P6275566059196644872

`and(-1, A152400(A000217(n)))`
-/

namespace A127715.P6275566059196644872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A152400 (A000217 n).toNat)

end

end A127715.P6275566059196644872

/-! ## A127715.P16695105350787163157

`and(-1, A152400(A179865(n+1)))`
-/

namespace A127715.P16695105350787163157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A152400 (A179865 (n + 1)).toNat)

end

end A127715.P16695105350787163157

/-!
# A127716: a(n) = A127714(n, n*(n+1)/2).

The programs for A127716, there is no canonical definition to state claims against.
-/

/-! ## A127716.P2123580983489438131

`A127714(∑[∑[n]+n])`
-/

namespace A127716.P2123580983489438131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127716.P2123580983489438131

/-! ## A127716.P4272757542537640713

`A302478(A363209(n+1))`
-/

namespace A127716.P4272757542537640713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A363209 (n + 1)).toNat

end

end A127716.P4272757542537640713

/-!
# A127717: Triangle read by rows. T(n, k) = k * binomial(n + 1, k + 1), for 1 <= k <= n.

The programs for A127717, the canonical program `A127717.P7518086546506875317` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127717 has offset 1).

The definition of A127717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*C(row(n)+2, col(n)+2)` (program `A127717.P7518086546506875317`, by `A127717.P7518086546506875317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127717.P7518086546506875317

`(col(n)+1)*C(row(n)+2, col(n)+2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127717

/-- `(col(n)+1)*C(row(n)+2, col(n)+2)` -/
def P7518086546506875317.Spec : Prop :=
  ∀ n, (P7518086546506875317.a n : ℤ) = A127717 (n + 1)

theorem P7518086546506875317.correct : P7518086546506875317.Spec := by
  intro n
  simp only [A127717, Nat.add_sub_cancel]

end A127717

/-! ## A127717.P10685872295685165747

`T(n-1,k)+T(n-1,k-1)+C(row(n)+1, col(n)+1)` with `a(0)=1`
-/

namespace A127717.P10685872295685165747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1)

end

end A127717.P10685872295685165747

namespace A127717

/-- `T(n-1,k)+T(n-1,k-1)+C(row(n)+1, col(n)+1)` -/
def P10685872295685165747.Spec : Prop :=
  ∀ n, (P10685872295685165747.a n : ℤ) = A127717 (n + 1)

end A127717

/-! ## A127717.P15162108361528212798

`(1-C(∑[char[∑[n]]], 2)+n)*A104712(n+2)`
-/

namespace A127717.P15162108361528212798
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A104712 (n + 2)

end

end A127717.P15162108361528212798

namespace A127717

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A104712(n+2)` -/
def P15162108361528212798.Spec : Prop :=
  ∀ n, P15162108361528212798.a n = A127717 (n + 1)

end A127717

/-! ## A127717.P7695093500598814241

`A002260(n+1)*A104712(n+2)`
-/

namespace A127717.P7695093500598814241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A104712 (n + 2)

end

end A127717.P7695093500598814241

namespace A127717

/-- `A002260(n+1)*A104712(n+2)` -/
def P7695093500598814241.Spec : Prop :=
  ∀ n, P7695093500598814241.a n = A127717 (n + 1)

end A127717

/-! ## A127717.P699467279185585053

`(A002262(n)+1)*A104712(n+2)`
-/

namespace A127717.P699467279185585053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A104712 (n + 2)

end

end A127717.P699467279185585053

namespace A127717

/-- `(A002262(n)+1)*A104712(n+2)` -/
def P699467279185585053.Spec : Prop :=
  ∀ n, P699467279185585053.a n = A127717 (n + 1)

end A127717

/-! ## A127717.P3765988775488815350

`(A002024(n+2)-A193592(n+1))*A104712(n+2)`
-/

namespace A127717.P3765988775488815350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 2) - A193592 (n + 1)) * A104712 (n + 2)

end

end A127717.P3765988775488815350

namespace A127717

/-- `(A002024(n+2)-A193592(n+1))*A104712(n+2)` -/
def P3765988775488815350.Spec : Prop :=
  ∀ n, P3765988775488815350.a n = A127717 (n + 1)

end A127717

/-! ## A127717.P11475878926429089125

`A002260(n+1)*A209518(A061579(n))`
-/

namespace A127717.P11475878926429089125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A209518 (A061579 n).toNat

end

end A127717.P11475878926429089125

namespace A127717

/-- `A002260(n+1)*A209518(A061579(n))` -/
def P11475878926429089125.Spec : Prop :=
  ∀ n, P11475878926429089125.a n = A127717 (n + 1)

end A127717

/-! ## A127717.P12564923795774276033

`(1-C(∑[char[∑[n]]], 2)+n)*A135278(comp[∑[n]])`
-/

namespace A127717.P12564923795774276033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A135278 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A127717.P12564923795774276033

namespace A127717

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A135278(comp[∑[n]])` -/
def P12564923795774276033.Spec : Prop :=
  ∀ n, P12564923795774276033.a n = A127717 (n + 1)

end A127717

/-! ## A127717.P7542473726974781441

`(1-C(∑[char[∑[n]]], 2)+n)*A153861(comp[∑[n]])`
-/

namespace A127717.P7542473726974781441
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A153861 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A127717.P7542473726974781441

namespace A127717

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A153861(comp[∑[n]])` -/
def P7542473726974781441.Spec : Prop :=
  ∀ n, P7542473726974781441.a n = A127717 (n + 1)

end A127717

/-! ## A127717.P13822976589206389564

`A000005(A059268(n))*A104712(n+2)`
-/

namespace A127717.P13822976589206389564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A104712 (n + 2)

end

end A127717.P13822976589206389564

namespace A127717

/-- `A000005(A059268(n))*A104712(n+2)` -/
def P13822976589206389564.Spec : Prop :=
  ∀ n, P13822976589206389564.a n = A127717 (n + 1)

end A127717

/-!
# A127718: A007318 * A002260 as infinite lower triangular matrices; A002260 = [1; 1,2; 1,2,3; ...].

The programs for A127718, the canonical program `A127718.P10724454338439117394` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127718 has offset 1).

The definition of A127718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127718.P17060396387518321671

`(1-C(∑[char[∑[n]]], 2)+n)*A055248(n)`
-/

namespace A127718.P17060396387518321671
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A055248 n

end

end A127718.P17060396387518321671

namespace A127718

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A055248(n)` -/
def P17060396387518321671.Spec : Prop :=
  ∀ n, P17060396387518321671.a n = A127718 (n + 1)

end A127718

/-! ## A127718.P10724454338439117394

`A002260(n+1)*A055248(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127718

/-- `A002260(n+1)*A055248(n)` -/
def P10724454338439117394.Spec : Prop :=
  ∀ n, P10724454338439117394.a n = A127718 (n + 1)

theorem P10724454338439117394.correct : P10724454338439117394.Spec := by
  intro n
  simp only [A127718, Nat.add_sub_cancel]

end A127718

/-! ## A127718.P15522342231421632734

`(A002262(n)+1)*A055248(n)`
-/

namespace A127718.P15522342231421632734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A055248 n

end

end A127718.P15522342231421632734

namespace A127718

/-- `(A002262(n)+1)*A055248(n)` -/
def P15522342231421632734.Spec : Prop :=
  ∀ n, P15522342231421632734.a n = A127718 (n + 1)

theorem P15522342231421632734.correct : P15522342231421632734.Spec := by
  intro n
  simp only [A127718, Nat.add_sub_cancel, A127718.P15522342231421632734.a, A127718.P10724454338439117394.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A055248, A055248.P3086643025084055619.a, A102363, A102363.P15098294147514921799.a, A140513, A140513.P13579608035938851890.a, A007318, A007318.P11755526479805562006.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127718

/-! ## A127718.P9704282465817707168

`A103316(n)*A140756(n+1)`
-/

namespace A127718.P9704282465817707168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103316 n * A140756 (n + 1)

end

end A127718.P9704282465817707168

namespace A127718

/-- `A103316(n)*A140756(n+1)` -/
def P9704282465817707168.Spec : Prop :=
  ∀ n, P9704282465817707168.a n = A127718 (n + 1)

end A127718

/-! ## A127718.P1453225843135107624

`abs(A002260(n+1)*A103316(n))`
-/

namespace A127718.P1453225843135107624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) * A103316 n|

end

end A127718.P1453225843135107624

namespace A127718

/-- `abs(A002260(n+1)*A103316(n))` -/
def P1453225843135107624.Spec : Prop :=
  ∀ n, P1453225843135107624.a n = A127718 (n + 1)

end A127718

/-! ## A127718.P4104654762105627873

`sqrt(A133819(n+1))*A055248(n)`
-/

namespace A127718.P4104654762105627873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A055248 n : ℝ)

end

end A127718.P4104654762105627873

namespace A127718

/-- `sqrt(A133819(n+1))*A055248(n)` -/
def P4104654762105627873.Spec : Prop :=
  ∀ n, P4104654762105627873.a n = (A127718 (n + 1) : ℝ)

end A127718

/-! ## A127718.P17101788262857101387

`A055248(n)/A007318(n)*A103406(n)`
-/

namespace A127718.P17101788262857101387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055248 n : ℚ) / (A007318 n : ℚ) * (A103406 n : ℚ)

end

end A127718.P17101788262857101387

namespace A127718

/-- `A055248(n)/A007318(n)*A103406(n)` -/
def P17101788262857101387.Spec : Prop :=
  ∀ n, P17101788262857101387.a n = (A127718 (n + 1) : ℚ)

end A127718

/-! ## A127718.P11705757228589695999

`A002260(n+1)/A144328(n+1)*A144333(n+1)`
-/

namespace A127718.P11705757228589695999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A144328 (n + 1) : ℚ) * (A144333 (n + 1) : ℚ)

end

end A127718.P11705757228589695999

namespace A127718

/-- `A002260(n+1)/A144328(n+1)*A144333(n+1)` -/
def P11705757228589695999.Spec : Prop :=
  ∀ n, P11705757228589695999.a n = (A127718 (n + 1) : ℚ)

end A127718

/-! ## A127718.P9903288032818045407

`A002262(comp[∑[n]])*A055248(n)`
-/

namespace A127718.P9903288032818045407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A055248 n

end

end A127718.P9903288032818045407

namespace A127718

/-- `A002262(comp[∑[n]])*A055248(n)` -/
def P9903288032818045407.Spec : Prop :=
  ∀ n, P9903288032818045407.a n = A127718 (n + 1)

end A127718

/-! ## A127718.P2563447969612449413

`A000005(2^(n-C(∑[char[∑[n]]], 2)))*A055248(n)`
-/

namespace A127718.P2563447969612449413
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat * A055248 n

end

end A127718.P2563447969612449413

namespace A127718

/-- `A000005(2^(n-C(∑[char[∑[n]]], 2)))*A055248(n)` -/
def P2563447969612449413.Spec : Prop :=
  ∀ n, P2563447969612449413.a n = A127718 (n + 1)

end A127718

/-! ## A127718.P6808123609994453275

`A000005(A059268(n))*A055248(n)`
-/

namespace A127718.P6808123609994453275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A055248 n

end

end A127718.P6808123609994453275

namespace A127718

/-- `A000005(A059268(n))*A055248(n)` -/
def P6808123609994453275.Spec : Prop :=
  ∀ n, P6808123609994453275.a n = A127718 (n + 1)

end A127718

/-! ## A127718.P14403899114756169813

`abs(A000005(A059268(n))*A103316(n))`
-/

namespace A127718.P14403899114756169813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (A059268 n).toNat * A103316 n|

end

end A127718.P14403899114756169813

namespace A127718

/-- `abs(A000005(A059268(n))*A103316(n))` -/
def P14403899114756169813.Spec : Prop :=
  ∀ n, P14403899114756169813.a n = A127718 (n + 1)

end A127718

/-!
# A127719: Floor of square root of sum of squares of n consecutive primes.

The programs for A127719, the canonical program `A127719.P13941545238741058609` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127719 has offset 1).

The definition of A127719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127719.P13941545238741058609

`A000196(A024450(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127719

/-- `A000196(A024450(n+1))` -/
def P13941545238741058609.Spec : Prop :=
  ∀ n, P13941545238741058609.a n = A127719 (n + 1)

theorem P13941545238741058609.correct : P13941545238741058609.Spec := by
  intro n
  simp only [A127719, Nat.add_sub_cancel]

end A127719

/-! ## A127719.P6370302518242071743

`floor(sqrt(∑[p?[round(8*n/7)]²]))`
-/

namespace A127719.P6370302518242071743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P6370302518242071743

namespace A127719

/-- `floor(sqrt(∑[p?[round(8*n/7)]²]))` -/
def P6370302518242071743.Spec : Prop :=
  ∀ n, P6370302518242071743.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P9247545983623813638

`floor(sqrt(A024450(n+1)))`
-/

namespace A127719.P9247545983623813638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024450 (n + 1))

end

end A127719.P9247545983623813638

namespace A127719

/-- `floor(sqrt(A024450(n+1)))` -/
def P9247545983623813638.Spec : Prop :=
  ∀ n, P9247545983623813638.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P16239169244839690841

`floor(sqrt(∑[A001248(n+1)]))`
-/

namespace A127719.P16239169244839690841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P16239169244839690841

namespace A127719

/-- `floor(sqrt(∑[A001248(n+1)]))` -/
def P16239169244839690841.Spec : Prop :=
  ∀ n, P16239169244839690841.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P16670347716344210149

`floor(sqrt(∑[A000040(n+1)²]))`
-/

namespace A127719.P16670347716344210149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P16670347716344210149

namespace A127719

/-- `floor(sqrt(∑[A000040(n+1)²]))` -/
def P16670347716344210149.Spec : Prop :=
  ∀ n, P16670347716344210149.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P15715027385426173711

`floor(sqrt(∑[(A006093(n+1)+1)²]))`
-/

namespace A127719.P15715027385426173711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P15715027385426173711

namespace A127719

/-- `floor(sqrt(∑[(A006093(n+1)+1)²]))` -/
def P15715027385426173711.Spec : Prop :=
  ∀ n, P15715027385426173711.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P4372944287081593874

`floor(sqrt(∑[(A040976(n+1)+2)²]))`
-/

namespace A127719.P4372944287081593874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P4372944287081593874

namespace A127719

/-- `floor(sqrt(∑[(A040976(n+1)+2)²]))` -/
def P4372944287081593874.Spec : Prop :=
  ∀ n, P4372944287081593874.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P3620434024700326059

`floor(sqrt(∑[(A001748(n+1)/3)²]))`
-/

namespace A127719.P3620434024700326059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌋

end

end A127719.P3620434024700326059

namespace A127719

/-- `floor(sqrt(∑[(A001748(n+1)/3)²]))` -/
def P3620434024700326059.Spec : Prop :=
  ∀ n, P3620434024700326059.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P10832030819764370228

`floor(sqrt(∑[A000040(2*n+1-n)^2]))`
-/

namespace A127719.P10832030819764370228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1 - n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P10832030819764370228

namespace A127719

/-- `floor(sqrt(∑[A000040(2*n+1-n)^2]))` -/
def P10832030819764370228.Spec : Prop :=
  ∀ n, P10832030819764370228.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P10494267448939778705

`floor(sqrt(A024525(n+1)))`
-/

namespace A127719.P10494267448939778705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024525 (n + 1))

end

end A127719.P10494267448939778705

namespace A127719

/-- `floor(sqrt(A024525(n+1)))` -/
def P10494267448939778705.Spec : Prop :=
  ∀ n, P10494267448939778705.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P5019262759005161662

`floor(sqrt(∑[A280076(n+2)]))`
-/

namespace A127719.P5019262759005161662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P5019262759005161662

namespace A127719

/-- `floor(sqrt(∑[A280076(n+2)]))` -/
def P5019262759005161662.Spec : Prop :=
  ∀ n, P5019262759005161662.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P9861968261090658606

`floor(sqrt(∑[A008578(n+2)²]))`
-/

namespace A127719.P9861968261090658606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P9861968261090658606

namespace A127719

/-- `floor(sqrt(∑[A008578(n+2)²]))` -/
def P9861968261090658606.Spec : Prop :=
  ∀ n, P9861968261090658606.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P549693518830738688

`floor(sqrt(∑[record[A006530(n+2)²]]))`
-/

namespace A127719.P549693518830738688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P549693518830738688

namespace A127719

/-- `floor(sqrt(∑[record[A006530(n+2)²]]))` -/
def P549693518830738688.Spec : Prop :=
  ∀ n, P549693518830738688.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P4846744878230042584

`floor(sqrt(∑[record[A020639(n+2)²]]))`
-/

namespace A127719.P4846744878230042584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P4846744878230042584

namespace A127719

/-- `floor(sqrt(∑[record[A020639(n+2)²]]))` -/
def P4846744878230042584.Spec : Prop :=
  ∀ n, P4846744878230042584.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P2090772113869204477

`floor(sqrt(∑[A067747(2*n+1)²]))`
-/

namespace A127719.P2090772113869204477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P2090772113869204477

namespace A127719

/-- `floor(sqrt(∑[A067747(2*n+1)²]))` -/
def P2090772113869204477.Spec : Prop :=
  ∀ n, P2090772113869204477.a n = A127719 (n + 1)

end A127719

/-! ## A127719.P962320942171461444

`floor(sqrt(∑[record[A014963(n+2)²]]))`
-/

namespace A127719.P962320942171461444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127719.P962320942171461444

namespace A127719

/-- `floor(sqrt(∑[record[A014963(n+2)²]]))` -/
def P962320942171461444.Spec : Prop :=
  ∀ n, P962320942171461444.a n = A127719 (n + 1)

end A127719

/-!
# A127720: Floor of square root of sum of squares of n odd consecutive primes.

The programs for A127720, the canonical program `A127720.P7407208501453972689` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127720 has offset 1).

The definition of A127720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127720.P7407208501453972689

`A000196(A024450(n+2)-4)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127720

/-- `A000196(A024450(n+2)-4)` -/
def P7407208501453972689.Spec : Prop :=
  ∀ n, P7407208501453972689.a n = A127720 (n + 1)

theorem P7407208501453972689.correct : P7407208501453972689.Spec := by
  intro n
  simp only [A127720, Nat.add_sub_cancel]

end A127720

/-! ## A127720.P17771749173323936555

`floor(sqrt(∑[p?[2*n+1]²]))`
-/

namespace A127720.P17771749173323936555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127720.P17771749173323936555

namespace A127720

/-- `floor(sqrt(∑[p?[2*n+1]²]))` -/
def P17771749173323936555.Spec : Prop :=
  ∀ n, (P17771749173323936555.a n : ℤ) = A127720 (n + 1)

end A127720

/-! ## A127720.P13141193407128808027

`floor(sqrt(A133547(n+1)))`
-/

namespace A127720.P13141193407128808027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A133547 (n + 1))

end

end A127720.P13141193407128808027

namespace A127720

/-- `floor(sqrt(A133547(n+1)))` -/
def P13141193407128808027.Spec : Prop :=
  ∀ n, P13141193407128808027.a n = A127720 (n + 1)

end A127720

/-! ## A127720.P15994412625989814913

`floor(sqrt(∑[A065091(n+1)²]))`
-/

namespace A127720.P15994412625989814913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127720.P15994412625989814913

namespace A127720

/-- `floor(sqrt(∑[A065091(n+1)²]))` -/
def P15994412625989814913.Spec : Prop :=
  ∀ n, P15994412625989814913.a n = A127720 (n + 1)

end A127720

/-! ## A127720.P11953185082425868194

`floor(sqrt(∑[A001248(n+2)]))`
-/

namespace A127720.P11953185082425868194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127720.P11953185082425868194

namespace A127720

/-- `floor(sqrt(∑[A001248(n+2)]))` -/
def P11953185082425868194.Spec : Prop :=
  ∀ n, P11953185082425868194.a n = A127720 (n + 1)

end A127720

/-! ## A127720.P1961915066368571818

`floor(sqrt(∑[A280076(n+3)]))`
-/

namespace A127720.P1961915066368571818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127720.P1961915066368571818

namespace A127720

/-- `floor(sqrt(∑[A280076(n+3)]))` -/
def P1961915066368571818.Spec : Prop :=
  ∀ n, P1961915066368571818.a n = A127720 (n + 1)

end A127720

/-!
# A127721: Floor of square root of sum of squares of n consecutive numbers.

The programs for A127721, the canonical program `A127721.P12872554968319410745` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127721 has offset 1).

The definition of A127721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127721.P12872554968319410745

`A000196(A000330(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127721

/-- `A000196(A000330(n+1))` -/
def P12872554968319410745.Spec : Prop :=
  ∀ n, P12872554968319410745.a n = A127721 (n + 1)

theorem P12872554968319410745.correct : P12872554968319410745.Spec := by
  intro n
  simp only [A127721, Nat.add_sub_cancel]

end A127721

/-! ## A127721.P2563103816583196602

`floor(sqrt(∑[(n+1)²]))`
-/

namespace A127721.P2563103816583196602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127721.P2563103816583196602

namespace A127721

/-- `floor(sqrt(∑[(n+1)²]))` -/
def P2563103816583196602.Spec : Prop :=
  ∀ n, (P2563103816583196602.a n : ℤ) = A127721 (n + 1)

end A127721

/-! ## A127721.P200113618134966505

`sqrt(A065739(n+1))`
-/

namespace A127721.P200113618134966505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065739 (n + 1) : ℝ)

end

end A127721.P200113618134966505

namespace A127721

/-- `sqrt(A065739(n+1))` -/
def P200113618134966505.Spec : Prop :=
  ∀ n, P200113618134966505.a n = (A127721 (n + 1) : ℝ)

end A127721

/-! ## A127721.P2127136295683888059

`floor(sqrt(A000330(n+1)))%A020744(n)²`
-/

namespace A127721.P2127136295683888059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000330 (n + 1))) (A020744 n ^ 2)

end

end A127721.P2127136295683888059

namespace A127721

/-- `floor(sqrt(A000330(n+1)))%A020744(n)²` -/
def P2127136295683888059.Spec : Prop :=
  ∀ n, P2127136295683888059.a n = A127721 (n + 1)

end A127721

/-! ## A127721.P16704124064342463504

`A000007(n+1)+floor(sqrt(A000330(n+1)))`
-/

namespace A127721.P16704124064342463504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A000330 (n + 1))

end

end A127721.P16704124064342463504

namespace A127721

/-- `A000007(n+1)+floor(sqrt(A000330(n+1)))` -/
def P16704124064342463504.Spec : Prop :=
  ∀ n, P16704124064342463504.a n = A127721 (n + 1)

end A127721

/-! ## A127721.P13627581021043549117

`A000027(floor(sqrt(A000330(n+1))))`
-/

namespace A127721.P13627581021043549117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.sqrt (A000330 (n + 1))).toNat

end

end A127721.P13627581021043549117

namespace A127721

/-- `A000027(floor(sqrt(A000330(n+1))))` -/
def P13627581021043549117.Spec : Prop :=
  ∀ n, P13627581021043549117.a n = A127721 (n + 1)

end A127721

/-! ## A127721.P2307644548369646171

`ceil((floor(sqrt(A000292(2*(n+1))))-1)/2)`
-/

namespace A127721.P2307644548369646171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.sqrt (A000292 (2 * (n + 1))) - 1 : ℚ) / 2⌉

end

end A127721.P2307644548369646171

namespace A127721

/-- `ceil((floor(sqrt(A000292(2*(n+1))))-1)/2)` -/
def P2307644548369646171.Spec : Prop :=
  ∀ n, P2307644548369646171.a n = A127721 (n + 1)

end A127721

/-! ## A127721.P83794234054005859

`A000027(floor(sqrt(A006918(2*n+1))))`
-/

namespace A127721.P83794234054005859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.sqrt (A006918 (2 * n + 1))).toNat

end

end A127721.P83794234054005859

namespace A127721

/-- `A000027(floor(sqrt(A006918(2*n+1))))` -/
def P83794234054005859.Spec : Prop :=
  ∀ n, P83794234054005859.a n = A127721 (n + 1)

end A127721

/-! ## A127721.P8793930959950230580

`A000035(2*n)+floor(sqrt(A000330(n+1)))`
-/

namespace A127721.P8793930959950230580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + Int.sqrt (A000330 (n + 1))

end

end A127721.P8793930959950230580

namespace A127721

/-- `A000035(2*n)+floor(sqrt(A000330(n+1)))` -/
def P8793930959950230580.Spec : Prop :=
  ∀ n, P8793930959950230580.a n = A127721 (n + 1)

end A127721

/-! ## A127721.P7791737637542207093

`floor(sqrt(A000330(n+1)))*A028920(2*n)`
-/

namespace A127721.P7791737637542207093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000330 (n + 1)) * A028920 (2 * n)

end

end A127721.P7791737637542207093

namespace A127721

/-- `floor(sqrt(A000330(n+1)))*A028920(2*n)` -/
def P7791737637542207093.Spec : Prop :=
  ∀ n, P7791737637542207093.a n = A127721 (n + 1)

end A127721

/-!
# A127722: Floor of square root of sum of squares of n consecutive odd numbers.

The programs for A127722, the canonical program `A127722.P527297215727668033` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127722 has offset 1).

The definition of A127722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127722.P527297215727668033

`A000196(A000447(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127722

/-- `A000196(A000447(n+1))` -/
def P527297215727668033.Spec : Prop :=
  ∀ n, P527297215727668033.a n = A127722 (n + 1)

theorem P527297215727668033.correct : P527297215727668033.Spec := by
  intro n
  simp only [A127722, Nat.add_sub_cancel]

end A127722

/-! ## A127722.P17666519524956685815

`floor(sqrt(∑[Δ[n²]²]))`
-/

namespace A127722.P17666519524956685815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127722.P17666519524956685815

namespace A127722

/-- `floor(sqrt(∑[Δ[n²]²]))` -/
def P17666519524956685815.Spec : Prop :=
  ∀ n, P17666519524956685815.a n = A127722 (n + 1)

end A127722

/-! ## A127722.P6725978942500411549

`record[floor(sqrt(C(n, 3*n%2)))]`
-/

namespace A127722.P6725978942500411549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose n (3 * (n % 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127722.P6725978942500411549

namespace A127722

/-- `record[floor(sqrt(C(n, 3*n%2)))]` -/
def P6725978942500411549.Spec : Prop :=
  ∀ n, (P6725978942500411549.a n : ℤ) = A127722 (n + 1)

end A127722

/-! ## A127722.P1196208845054034726

`ceil(sqrt(∑[or(1, 2*n)²]+1))-1`
-/

namespace A127722.P1196208845054034726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌉ - 1

end

end A127722.P1196208845054034726

namespace A127722

/-- `ceil(sqrt(∑[or(1, 2*n)²]+1))-1` -/
def P1196208845054034726.Spec : Prop :=
  ∀ n, P1196208845054034726.a n = A127722 (n + 1)

end A127722

/-! ## A127722.P9683318305757121311

`record[floor(sqrt(C(n+3, 3)/gcd(2, n+1)))]`
-/

namespace A127722.P9683318305757121311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((Nat.choose (n + 3) 3 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127722.P9683318305757121311

namespace A127722

/-- `record[floor(sqrt(C(n+3, 3)/gcd(2, n+1)))]` -/
def P9683318305757121311.Spec : Prop :=
  ∀ n, P9683318305757121311.a n = A127722 (n + 1)

end A127722

/-! ## A127722.P882609819656999202

`floor(sqrt(∑[(2*n+1)²]))%∑[n+2]`
-/

namespace A127722.P882609819656999202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A127722.P882609819656999202

namespace A127722

/-- `floor(sqrt(∑[(2*n+1)²]))%∑[n+2]` -/
def P882609819656999202.Spec : Prop :=
  ∀ n, (P882609819656999202.a n : ℤ) = A127722 (n + 1)

end A127722

/-! ## A127722.P13576088759359056713

`ceil(sqrt(C(2*n+3, 2*n)+1))-1`
-/

namespace A127722.P13576088759359056713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (2 * n + 3) (2 * n) + 1 : ℝ)⌉ - 1

end

end A127722.P13576088759359056713

namespace A127722

/-- `ceil(sqrt(C(2*n+3, 2*n)+1))-1` -/
def P13576088759359056713.Spec : Prop :=
  ∀ n, P13576088759359056713.a n = A127722 (n + 1)

end A127722

/-! ## A127722.P6541237584749495299

`record[floor(sqrt(lcm(n+1, (n+2)*(n+3))/6))]`
-/

namespace A127722.P6541237584749495299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((Nat.lcm (n + 1) ((n + 2) * (n + 3)) : ℚ) / 6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127722.P6541237584749495299

namespace A127722

/-- `record[floor(sqrt(lcm(n+1, (n+2)*(n+3))/6))]` -/
def P6541237584749495299.Spec : Prop :=
  ∀ n, P6541237584749495299.a n = A127722 (n + 1)

end A127722

/-! ## A127722.P11347425013988971395

`record[floor(sqrt(A067046(n+1)))]`
-/

namespace A127722.P11347425013988971395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A067046 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127722.P11347425013988971395

namespace A127722

/-- `record[floor(sqrt(A067046(n+1)))]` -/
def P11347425013988971395.Spec : Prop :=
  ∀ n, P11347425013988971395.a n = A127722 (n + 1)

end A127722

/-! ## A127722.P4253910073978426914

`record[floor(sqrt(A103219(n)))]`
-/

namespace A127722.P4253910073978426914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A103219 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127722.P4253910073978426914

namespace A127722

/-- `record[floor(sqrt(A103219(n)))]` -/
def P4253910073978426914.Spec : Prop :=
  ∀ n, P4253910073978426914.a n = A127722 (n + 1)

end A127722

/-!
# A127723: Floor of square root of sum of squares of the first n consecutive even numbers.

The programs for A127723, there is no canonical definition to state claims against.
-/

/-! ## A127723.P10562705204271360443

`floor(sqrt(C(2*(n+2), 3)))`
-/

namespace A127723.P10562705204271360443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (2 * (n + 2)) 3)

end

end A127723.P10562705204271360443

/-! ## A127723.P14740086974679854629

`floor(sqrt(∑[(2*(n+1))²]))`
-/

namespace A127723.P14740086974679854629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127723.P14740086974679854629

/-! ## A127723.P17992311249853992637

`root(floor(sqrt(A002492(n+1))), 2)²`
-/

namespace A127723.P17992311249853992637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Int.sqrt (A002492 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A127723.P17992311249853992637

/-! ## A127723.P13956759406147745813

`A000027(floor(sqrt(∑[(n+2+n)²])))`
-/

namespace A127723.P13956759406147745813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A127723.P13956759406147745813

/-! ## A127723.P10629826466075662616

`ceil(sqrt(A000292(2*(n+1))+1))-1`
-/

namespace A127723.P10629826466075662616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000292 (2 * (n + 1)) + 1 : ℝ)⌉ - 1

end

end A127723.P10629826466075662616

/-! ## A127723.P1467165868039062537

`ceil(sqrt(2*A006331(n+1)+1))-1`
-/

namespace A127723.P1467165868039062537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A006331 (n + 1) + 1 : ℝ)⌉ - 1

end

end A127723.P1467165868039062537

/-! ## A127723.P7005704823918660522

`A007318(∑[n])*floor(sqrt(A002492(n+1)))`
-/

namespace A127723.P7005704823918660522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * Int.sqrt (A002492 (n + 1))

end

end A127723.P7005704823918660522

/-! ## A127723.P7290564217929837417

`floor(sqrt(A002492(n+1)))%A000045(n+4)`
-/

namespace A127723.P7290564217929837417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A002492 (n + 1))) (A000045 (n + 4))

end

end A127723.P7290564217929837417

/-! ## A127723.P15705866405067688411

`floor(sqrt(A002492(n+1)))*A014963(6*(n+1))`
-/

namespace A127723.P15705866405067688411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002492 (n + 1)) * A014963 (6 * (n + 1))

end

end A127723.P15705866405067688411

/-! ## A127723.P5654771782373652028

`A008683(12*n+8)+floor(sqrt(A002492(n+1)))`
-/

namespace A127723.P5654771782373652028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (12 * n + 8) + Int.sqrt (A002492 (n + 1))

end

end A127723.P5654771782373652028

/-!
# A127724: k-imperfect numbers for some k >= 1.

The programs for A127724, there is no canonical definition to state claims against.
-/

/-! ## A127724.P2671316412952689852

`eq[1, A294649(n+1)]+1`
-/

namespace A127724.P2671316412952689852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A127724.P2671316412952689852

/-! ## A127724.P14659454019623130968

`record[root(A000027(n+1), A294649(n+1))]`
-/

namespace A127724.P14659454019623130968
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A294649 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127724.P14659454019623130968

/-! ## A127724.P12818502681479845612

`eq[A054977(n), A294649(A028310(n))]`
-/

namespace A127724.P12818502681479845612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127724.P12818502681479845612

/-! ## A127724.P1077608622867283476

`eq[A057427(n), A294649(A028310(n))]`
-/

namespace A127724.P1077608622867283476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127724.P1077608622867283476

/-! ## A127724.P369548831080597708

`eq[1, A294649(A028310(n))%A001844(n)]`
-/

namespace A127724.P369548831080597708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294649 (A028310 n).toNat) (A001844 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127724.P369548831080597708

/-!
# A127725: 2-imperfect numbers.

The programs for A127725, there is no canonical definition to state claims against.
-/

/-! ## A127725.P5496016972350249567

`filter[A127724(n+1), A292077(#)]`
-/

namespace A127725.P5496016972350249567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A127725.P5496016972350249567

/-!
# A127726: 3-imperfect numbers.

The programs for A127726, there is no canonical definition to state claims against.
-/

/-! ## A127726.P516630226469810779

`filter[A127724(n+1), A262448(#)]`
-/

namespace A127726.P516630226469810779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262448 (f1 j).toNat = 1) n)

end

end A127726.P516630226469810779

/-!
# A127727: Primes of the form p^e - p^(e-1) + p^(e-2) - ... + (-1)^e, where p is prime.

The programs for A127727, there is no canonical definition to state claims against.
-/

/-! ## A127727.P169836547041988275

`record[p?[A345061(n+1)]]`
-/

namespace A127727.P169836547041988275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345061 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127727.P169836547041988275

/-! ## A127727.P13350499508534679332

`record[A020639(A345061(n+3))]`
-/

namespace A127727.P13350499508534679332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345061 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127727.P13350499508534679332

/-! ## A127727.P11843603845792189772

`record[p?[A206369(n+1)]]`
-/

namespace A127727.P11843603845792189772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127727.P11843603845792189772

/-! ## A127727.P14702588093443929321

`record[p?[abs(A061020(n+1))]]`
-/

namespace A127727.P14702588093443929321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061020 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127727.P14702588093443929321

/-! ## A127727.P14358726852448648795

`record[A206369(A383649(n+1))]`
-/

namespace A127727.P14358726852448648795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A383649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127727.P14358726852448648795

/-!
# A127728: Sum of squared coefficients of q in the q-factorials.

The programs for A127728, there is no canonical definition to state claims against.
-/

/-! ## A127728.P2591406681185990972

`A163241(A330804(n))`
-/

namespace A127728.P2591406681185990972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A330804 n).toNat

end

end A127728.P2591406681185990972

/-!
# A127729: Primes of the form k# + (k+1)#,..,+(k+x)#+1; where k#,(k+1)#,(k+x)# are primorials numbers, members of A002110.

The programs for A127729, there is no canonical definition to state claims against.
-/

/-! ## A127729.P6502926315546327614

`A217723(A285528(n+1))`
-/

namespace A127729.P6502926315546327614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217723 (A285528 (n + 1)).toNat

end

end A127729.P6502926315546327614

/-! ## A127729.P1546355380304856796

`A060389(A285528(n+1))-Δ[A106618(n)]`
-/

namespace A127729.P1546355380304856796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060389 (A285528 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A127729.P1546355380304856796

/-! ## A127729.P11607934512587519309

`A060389(A285528(n+1))-A340366(n+1)`
-/

namespace A127729.P11607934512587519309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060389 (A285528 (n + 1)).toNat - A340366 (n + 1)

end

end A127729.P11607934512587519309

/-! ## A127729.P10041093599122684976

`A060389(A285528(n+1))-A014963(10*(n+10))`
-/

namespace A127729.P10041093599122684976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060389 (A285528 (n + 1)).toNat - A014963 (10 * (n + 10))

end

end A127729.P10041093599122684976

/-!
# A127733: Triangle read by rows: n-th row is n^2 preceded by (n-1) zeros.

The programs for A127733, the canonical program `A127733.P16638818104099670368` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127733 has offset 1).

The definition of A127733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127733.P6562418826190435505

`(Δ[col(n)]-1)²`
-/

namespace A127733.P6562418826190435505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1) ^ 2

end

end A127733.P6562418826190435505

namespace A127733

/-- `(Δ[col(n)]-1)²` -/
def P6562418826190435505.Spec : Prop :=
  ∀ n, P6562418826190435505.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P353212437756381369

`((col(n)+1)*Δ[row(n)])²`
-/

namespace A127733.P353212437756381369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A127733.P353212437756381369

namespace A127733

/-- `((col(n)+1)*Δ[row(n)])²` -/
def P353212437756381369.Spec : Prop :=
  ∀ n, P353212437756381369.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P14978214955217389885

`((row(n)+1)*Δ[row(n)])²`
-/

namespace A127733.P14978214955217389885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A127733.P14978214955217389885

namespace A127733

/-- `((row(n)+1)*Δ[row(n)])²` -/
def P14978214955217389885.Spec : Prop :=
  ∀ n, P14978214955217389885.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P18009089991238653030

`Δ[C(round(sqrt(2*(n+1))), 2)]²`
-/

namespace A127733.P18009089991238653030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A127733.P18009089991238653030

namespace A127733

/-- `Δ[C(round(sqrt(2*(n+1))), 2)]²` -/
def P18009089991238653030.Spec : Prop :=
  ∀ n, P18009089991238653030.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P12197417572728111419

`((col(n)+1)*C(col(n), row(n)))²`
-/

namespace A127733.P12197417572728111419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)) ^ 2

end

end A127733.P12197417572728111419

namespace A127733

/-- `((col(n)+1)*C(col(n), row(n)))²` -/
def P12197417572728111419.Spec : Prop :=
  ∀ n, (P12197417572728111419.a n : ℤ) = A127733 (n + 1)

end A127733

/-! ## A127733.P11908103422590040900

`Δ[C(round(sqrt(2*(n+1))), 2)]^2`
-/

namespace A127733.P11908103422590040900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A127733.P11908103422590040900

namespace A127733

/-- `Δ[C(round(sqrt(2*(n+1))), 2)]^2` -/
def P11908103422590040900.Spec : Prop :=
  ∀ n, P11908103422590040900.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P10632862252265467361

`(col(n)+1)^2*C(col(n), row(n))`
-/

namespace A127733.P10632862252265467361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) ^ 2 * Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)

end

end A127733.P10632862252265467361

namespace A127733

/-- `(col(n)+1)^2*C(col(n), row(n))` -/
def P10632862252265467361.Spec : Prop :=
  ∀ n, (P10632862252265467361.a n : ℤ) = A127733 (n + 1)

end A127733

/-! ## A127733.P12156952312900721029

`C(col(n)+C(col(n), row(n)), row(n))²`
-/

namespace A127733.P12156952312900721029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)) (SequenceMachineLib.triRow n) ^ 2

end

end A127733.P12156952312900721029

namespace A127733

/-- `C(col(n)+C(col(n), row(n)), row(n))²` -/
def P12156952312900721029.Spec : Prop :=
  ∀ n, (P12156952312900721029.a n : ℤ) = A127733 (n + 1)

end A127733

/-! ## A127733.P13084180489875775678

`C(col(n)+C(col(n), row(n)), row(n))^2`
-/

namespace A127733.P13084180489875775678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)) (SequenceMachineLib.triRow n) ^ 2

end

end A127733.P13084180489875775678

namespace A127733

/-- `C(col(n)+C(col(n), row(n)), row(n))^2` -/
def P13084180489875775678.Spec : Prop :=
  ∀ n, (P13084180489875775678.a n : ℤ) = A127733 (n + 1)

end A127733

/-! ## A127733.P14520694829098028519

`(round(sqrt(2*(n+1)))*char[∑[n-1]])²`
-/

namespace A127733.P14520694829098028519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A127733.P14520694829098028519

namespace A127733

/-- `(round(sqrt(2*(n+1)))*char[∑[n-1]])²` -/
def P14520694829098028519.Spec : Prop :=
  ∀ n, P14520694829098028519.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P16638818104099670368

`A127648(n)^2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127733

/-- `A127648(n)^2` -/
def P16638818104099670368.Spec : Prop :=
  ∀ n, P16638818104099670368.a n = A127733 (n + 1)

theorem P16638818104099670368.correct : P16638818104099670368.Spec := by
  intro n
  simp only [A127733, Nat.add_sub_cancel]

end A127733

/-! ## A127733.P10733709078175748669

`∑[char[∑[n]]]²*A023531(n)`
-/

namespace A127733.P10733709078175748669
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A023531 n

end

end A127733.P10733709078175748669

namespace A127733

/-- `∑[char[∑[n]]]²*A023531(n)` -/
def P10733709078175748669.Spec : Prop :=
  ∀ n, P10733709078175748669.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P1508434538469046057

`A128064(n+1)²*char[∑[n-1]]`
-/

namespace A127733.P1508434538469046057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128064 (n + 1) ^ 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127733.P1508434538469046057

namespace A127733

/-- `A128064(n+1)²*char[∑[n-1]]` -/
def P1508434538469046057.Spec : Prop :=
  ∀ n, P1508434538469046057.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P3535238840564286049

`ratio[A007318(n+1)²]*char[∑[n-1]]`
-/

namespace A127733.P3535238840564286049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A127733.P3535238840564286049

namespace A127733

/-- `ratio[A007318(n+1)²]*char[∑[n-1]]` -/
def P3535238840564286049.Spec : Prop :=
  ∀ n, P3535238840564286049.a n = (A127733 (n + 1) : ℚ)

end A127733

/-! ## A127733.P14119734353785004068

`(comp[comp[∑[n]]+n]+1)*A010054(n+1)`
-/

namespace A127733.P14119734353785004068
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) * A010054 (n + 1)

end

end A127733.P14119734353785004068

namespace A127733

/-- `(comp[comp[∑[n]]+n]+1)*A010054(n+1)` -/
def P14119734353785004068.Spec : Prop :=
  ∀ n, P14119734353785004068.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P7037188151446141399

`A007318(n+2)²*Δ[round(sqrt(2*n+1))]`
-/

namespace A127733.P7037188151446141399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 2) ^ 2 * (f1 (n + 1) - f1 n)

end

end A127733.P7037188151446141399

namespace A127733

/-- `A007318(n+2)²*Δ[round(sqrt(2*n+1))]` -/
def P7037188151446141399.Spec : Prop :=
  ∀ n, P7037188151446141399.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P199869318196400096

`A000290(A127648(n))`
-/

namespace A127733.P199869318196400096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A127648 n).toNat

end

end A127733.P199869318196400096

namespace A127733

/-- `A000290(A127648(n))` -/
def P199869318196400096.Spec : Prop :=
  ∀ n, P199869318196400096.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P12930090594998642489

`A087278(A131431(n))`
-/

namespace A127733.P12930090594998642489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 (A131431 n).toNat

end

end A127733.P12930090594998642489

namespace A127733

/-- `A087278(A131431(n))` -/
def P12930090594998642489.Spec : Prop :=
  ∀ n, P12930090594998642489.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P9731881910373647921

`A048147(A127773(n+1))`
-/

namespace A127733.P9731881910373647921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A127773 (n + 1)).toNat

end

end A127733.P9731881910373647921

namespace A127733

/-- `A048147(A127773(n+1))` -/
def P9731881910373647921.Spec : Prop :=
  ∀ n, P9731881910373647921.a n = A127733 (n + 1)

end A127733

/-! ## A127733.P5763489100655410856

`A008794(A198954(n+1))`
-/

namespace A127733.P5763489100655410856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A198954 (n + 1)).toNat

end

end A127733.P5763489100655410856

namespace A127733

/-- `A008794(A198954(n+1))` -/
def P5763489100655410856.Spec : Prop :=
  ∀ n, P5763489100655410856.a n = A127733 (n + 1)

end A127733

/-!
# A127734: A007376(4n).

The programs for A127734, there is no canonical definition to state claims against.
-/

/-! ## A127734.P8992670672374362696

`A007376(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127734.P8992670672374362696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (4 * (n + 1))

end

end A127734.P8992670672374362696

/-! ## A127734.P884012051707861591

`A091332(n+1)%10`
-/

namespace A127734.P884012051707861591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091332 (n + 1)) 10

end

end A127734.P884012051707861591

/-! ## A127734.P12268449340972274833

`A010879(A091332(n+1))`
-/

namespace A127734.P12268449340972274833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A091332 (n + 1)).toNat

end

end A127734.P12268449340972274833

/-! ## A127734.P1057767141430688393

`dr(A007376(Δ[A001844(n)]))`
-/

namespace A127734.P1057767141430688393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A127734.P1057767141430688393

/-! ## A127734.P17508801563689859104

`dr(A007376(A008574(n+1)))`
-/

namespace A127734.P17508801563689859104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A008574 (n + 1)).toNat)

end

end A127734.P17508801563689859104

/-! ## A127734.P13430665664754101006

`dr(A007376(A008586(n+1)))`
-/

namespace A127734.P13430665664754101006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A008586 (n + 1)).toNat)

end

end A127734.P13430665664754101006

/-! ## A127734.P3578303060742014601

`A033307(record[xor(3, n)])`
-/

namespace A127734.P3578303060742014601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A127734.P3578303060742014601

/-! ## A127734.P13561453393326696255

`A127353(2*(n+1))`
-/

namespace A127734.P13561453393326696255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127353 (2 * (n + 1))

end

end A127734.P13561453393326696255

/-! ## A127734.P2513105878154941961

`A033307(4*n+3)`
-/

namespace A127734.P2513105878154941961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (4 * n + 3)

end

end A127734.P2513105878154941961

/-! ## A127734.P12344316637529983023

`A059805(2*(n+1))%10`
-/

namespace A127734.P12344316637529983023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059805 (2 * (n + 1))) 10

end

end A127734.P12344316637529983023

/-! ## A127734.P14977828277585553177

`dr(A007376(A103517(Δ[n²])))`
-/

namespace A127734.P14977828277585553177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A103517 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A127734.P14977828277585553177

/-! ## A127734.P18407954646685230996

`A010879(A059805(2*(n+1)))`
-/

namespace A127734.P18407954646685230996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A059805 (2 * (n + 1))).toNat

end

end A127734.P18407954646685230996

/-! ## A127734.P2697112404788369173

`9-A031310(4*(n+1))`
-/

namespace A127734.P2697112404788369173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 (4 * (n + 1))

end

end A127734.P2697112404788369173

/-! ## A127734.P15050887697808874475

`A065649(4*(n+1))%10`
-/

namespace A127734.P15050887697808874475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (4 * (n + 1))) 10

end

end A127734.P15050887697808874475

/-! ## A127734.P8529852647058776544

`A098727(4*(n+1))-4*(n+1)`
-/

namespace A127734.P8529852647058776544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (4 * (n + 1)) - (4 * (n + 1) : ℤ)

end

end A127734.P8529852647058776544

/-! ## A127734.P10592433745559067072

`A108712(A004771(n))`
-/

namespace A127734.P10592433745559067072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A004771 n).toNat

end

end A127734.P10592433745559067072

/-! ## A127734.P11233668451170978925

`A108712(A133655(n+1))`
-/

namespace A127734.P11233668451170978925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A133655 (n + 1)).toNat

end

end A127734.P11233668451170978925

/-! ## A127734.P12914378603430699572

`A108712(A004770(n+1)+2)`
-/

namespace A127734.P12914378603430699572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A004770 (n + 1) + 2).toNat

end

end A127734.P12914378603430699572

/-! ## A127734.P11073538484666411196

`A108202(8*(n+1))`
-/

namespace A127734.P11073538484666411196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (8 * (n + 1))

end

end A127734.P11073538484666411196

/-! ## A127734.P822012997913974222

`A108712(A082285(n)+1)`
-/

namespace A127734.P822012997913974222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A082285 n + 1).toNat

end

end A127734.P822012997913974222

/-!
# A127735: Triangle read by rows: A127701 * A002260 as infinite lower triangular matrices.

The programs for A127735, the canonical program `A127735.P18142021980138976550` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127735 has offset 1).

The definition of A127735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127735.P18142021980138976550

`A075362(n+1)+A048151(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127735

/-- `A075362(n+1)+A048151(n+1)` -/
def P18142021980138976550.Spec : Prop :=
  ∀ n, P18142021980138976550.a n = A127735 (n + 1)

theorem P18142021980138976550.correct : P18142021980138976550.Spec := by
  intro n
  simp only [A127735, Nat.add_sub_cancel]

end A127735

/-! ## A127735.P5123265171060928885

`A223544(n+1)+A002260(n+2)`
-/

namespace A127735.P5123265171060928885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + A002260 (n + 2)

end

end A127735.P5123265171060928885

namespace A127735

/-- `A223544(n+1)+A002260(n+2)` -/
def P5123265171060928885.Spec : Prop :=
  ∀ n, P5123265171060928885.a n = A127735 (n + 1)

end A127735

/-! ## A127735.P7538752620688782073

`A105020(n)-A004247(n+1)`
-/

namespace A127735.P7538752620688782073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A004247 (n + 1)

end

end A127735.P7538752620688782073

namespace A127735

/-- `A105020(n)-A004247(n+1)` -/
def P7538752620688782073.Spec : Prop :=
  ∀ n, P7538752620688782073.a n = A127735 (n + 1)

end A127735

/-! ## A127735.P7698138513357785699

`A075362(n+1)+A002262(n+1)`
-/

namespace A127735.P7698138513357785699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + A002262 (n + 1)

end

end A127735.P7698138513357785699

namespace A127735

/-- `A075362(n+1)+A002262(n+1)` -/
def P7698138513357785699.Spec : Prop :=
  ∀ n, P7698138513357785699.a n = A127735 (n + 1)

end A127735

/-! ## A127735.P14191104949712968224

`A002262(n+1)+A002024(n+1)*A002260(n+1)`
-/

namespace A127735.P14191104949712968224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) + A002024 (n + 1) * A002260 (n + 1)

end

end A127735.P14191104949712968224

namespace A127735

/-- `A002262(n+1)+A002024(n+1)*A002260(n+1)` -/
def P14191104949712968224.Spec : Prop :=
  ∀ n, P14191104949712968224.a n = A127735 (n + 1)

end A127735

/-!
# A127736: a(n) = n*(n^2 + 2*n - 1)/2.

The programs for A127736, the canonical program `A127736.P1544195889050059924` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127736 has offset 1).

The definition of A127736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*((n+1)²+2*(n+1)-1)/2` (program `A127736.P9095693772670745424`, by `A127736.P9095693772670745424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127736.P16340085718152309640

`ogf((1+3x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A127736.P16340085718152309640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -4, 6, -4, 1] n

end

end A127736.P16340085718152309640

namespace A127736

/-- `ogf((1+3x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16340085718152309640.Spec : Prop :=
  ∀ n, P16340085718152309640.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P9095693772670745424

`(n+1)*((n+1)²+2*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127736.P9095693772670745424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((n + 1) ^ 2 + 2 * (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A127736.P9095693772670745424

namespace A127736

/-- `(n+1)*((n+1)²+2*(n+1)-1)/2` -/
def P9095693772670745424.Spec : Prop :=
  ∀ n, P9095693772670745424.a n = (A127736 (n + 1) : ℚ)

theorem P9095693772670745424.correct : P9095693772670745424.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A127736, Nat.add_sub_cancel, A127736.P9095693772670745424.a, A127736.P1544195889050059924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A127736, Nat.add_sub_cancel, A127736.P9095693772670745424.a, A127736.P1544195889050059924.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A127736

/-! ## A127736.P1544195889050059924

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=21, a(3)=46`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127736

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1544195889050059924.Spec : Prop :=
  ∀ n, P1544195889050059924.a n = A127736 (n + 1)

theorem P1544195889050059924.correct : P1544195889050059924.Spec := by
  intro n
  simp only [A127736, Nat.add_sub_cancel]

end A127736

/-! ## A127736.P16854508761941508016

`(n+2)*A000217(n+1)-(n+1)`
-/

namespace A127736.P16854508761941508016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000217 (n + 1) - (n + 1 : ℤ)

end

end A127736.P16854508761941508016

namespace A127736

/-- `(n+2)*A000217(n+1)-(n+1)` -/
def P16854508761941508016.Spec : Prop :=
  ∀ n, P16854508761941508016.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P9847917608198823002

`A006002(n+1)-(n+1)`
-/

namespace A127736.P9847917608198823002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1) - (n + 1 : ℤ)

end

end A127736.P9847917608198823002

namespace A127736

/-- `A006002(n+1)-(n+1)` -/
def P9847917608198823002.Spec : Prop :=
  ∀ n, P9847917608198823002.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P12813558228809080647

`n*C(n+3, 2)+1`
-/

namespace A127736.P12813558228809080647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 3) 2 + 1

end

end A127736.P12813558228809080647

namespace A127736

/-- `n*C(n+3, 2)+1` -/
def P12813558228809080647.Spec : Prop :=
  ∀ n, (P12813558228809080647.a n : ℤ) = A127736 (n + 1)

end A127736

/-! ## A127736.P8064255274769719639

`record[n*C(n, 2)-(n-1)]`
-/

namespace A127736.P8064255274769719639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose n 2 : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127736.P8064255274769719639

namespace A127736

/-- `record[n*C(n, 2)-(n-1)]` -/
def P8064255274769719639.Spec : Prop :=
  ∀ n, P8064255274769719639.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P11538173985542990798

`∑[∑[ogf((1+3x-x^2)/(1-2x+x^2))]]`
-/

namespace A127736.P11538173985542990798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127736.P11538173985542990798

namespace A127736

/-- `∑[∑[ogf((1+3x-x^2)/(1-2x+x^2))]]` -/
def P11538173985542990798.Spec : Prop :=
  ∀ n, P11538173985542990798.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P15888049371547279092

`∑[∑[a(n-1)+3]-1]` with `a(0)=2`
-/

namespace A127736.P15888049371547279092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127736.P15888049371547279092

namespace A127736

/-- `∑[∑[a(n-1)+3]-1]` -/
def P15888049371547279092.Spec : Prop :=
  ∀ n, P15888049371547279092.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P11693406032393412235

`∑[n-∑[a(n-1)-3]]` with `a(0)=-1`
-/

namespace A127736.P11693406032393412235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127736.P11693406032393412235

namespace A127736

/-- `∑[n-∑[a(n-1)-3]]` -/
def P11693406032393412235.Spec : Prop :=
  ∀ n, P11693406032393412235.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P3849740540733071333

`lcm(n+1, (n+2)²-2)/2`
-/

namespace A127736.P3849740540733071333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (((n + 2) ^ 2 : ℤ) - 2) : ℚ) / 2

end

end A127736.P3849740540733071333

namespace A127736

/-- `lcm(n+1, (n+2)²-2)/2` -/
def P3849740540733071333.Spec : Prop :=
  ∀ n, P3849740540733071333.a n = (A127736 (n + 1) : ℚ)

end A127736

/-! ## A127736.P8338583980228918414

`C((n+2)²-1, 2)/(n+3)`
-/

namespace A127736.P8338583980228918414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((n + 2) ^ 2 : ℤ) - 1).toNat 2 : ℚ) / (n + 3 : ℚ)

end

end A127736.P8338583980228918414

namespace A127736

/-- `C((n+2)²-1, 2)/(n+3)` -/
def P8338583980228918414.Spec : Prop :=
  ∀ n, P8338583980228918414.a n = (A127736 (n + 1) : ℚ)

end A127736

/-! ## A127736.P14069106076369149074

`(sinh(log(n+1))+1)*(n+1)²`
-/

namespace A127736.P14069106076369149074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sinh (Real.log (n + 1 : ℝ)) + 1) * ((n + 1) ^ 2 : ℝ)

end

end A127736.P14069106076369149074

namespace A127736

/-- `(sinh(log(n+1))+1)*(n+1)²` -/
def P14069106076369149074.Spec : Prop :=
  ∀ n, P14069106076369149074.a n = (A127736 (n + 1) : ℝ)

end A127736

/-! ## A127736.P9418428968358626221

`∑[∑[record[xor(1, n+1)]+n+1]]`
-/

namespace A127736.P9418428968358626221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127736.P9418428968358626221

namespace A127736

/-- `∑[∑[record[xor(1, n+1)]+n+1]]` -/
def P9418428968358626221.Spec : Prop :=
  ∀ n, (P9418428968358626221.a n : ℤ) = A127736 (n + 1)

end A127736

/-! ## A127736.P4332444945227117693

`(n*lcm(n+2, n+3)+2)/2`
-/

namespace A127736.P4332444945227117693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.lcm (n + 2) (n + 3) + 2 : ℚ) / 2

end

end A127736.P4332444945227117693

namespace A127736

/-- `(n*lcm(n+2, n+3)+2)/2` -/
def P4332444945227117693.Spec : Prop :=
  ∀ n, P4332444945227117693.a n = (A127736 (n + 1) : ℚ)

end A127736

/-! ## A127736.P7147179173252117120

`∑[(n+1)²+C(n+2, 2)-1]`
-/

namespace A127736.P7147179173252117120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((Nat.choose (n + 2) 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127736.P7147179173252117120

namespace A127736

/-- `∑[(n+1)²+C(n+2, 2)-1]` -/
def P7147179173252117120.Spec : Prop :=
  ∀ n, P7147179173252117120.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P10875832809027341710

`∑[C(n+1, 2)+(n+1)²+n]`
-/

namespace A127736.P10875832809027341710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + ((n + 1) ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127736.P10875832809027341710

namespace A127736

/-- `∑[C(n+1, 2)+(n+1)²+n]` -/
def P10875832809027341710.Spec : Prop :=
  ∀ n, (P10875832809027341710.a n : ℤ) = A127736 (n + 1)

end A127736

/-! ## A127736.P7128180557630540677

`floor(C(∑[n+3+n], 2)/(n+3))`
-/

namespace A127736.P7128180557630540677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / (n + 3 : ℚ)⌋

end

end A127736.P7128180557630540677

namespace A127736

/-- `floor(C(∑[n+3+n], 2)/(n+3))` -/
def P7128180557630540677.Spec : Prop :=
  ∀ n, P7128180557630540677.a n = A127736 (n + 1)

end A127736

/-! ## A127736.P800945843130359017

`n*∑[n%(n+1)+2]+n+1`
-/

namespace A127736.P800945843130359017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A127736.P800945843130359017

namespace A127736

/-- `n*∑[n%(n+1)+2]+n+1` -/
def P800945843130359017.Spec : Prop :=
  ∀ n, (P800945843130359017.a n : ℤ) = A127736 (n + 1)

end A127736

/-!
# A127737: A002260 * A127701.

The programs for A127737, the canonical program `A127737.P11986191195381923134` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127737 has offset 1).

The definition of A127737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127737.P11986191195381923134

`A128151(n+1)+2*A112367(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127737

/-- `A128151(n+1)+2*A112367(n)` -/
def P11986191195381923134.Spec : Prop :=
  ∀ n, P11986191195381923134.a n = A127737 (n + 1)

theorem P11986191195381923134.correct : P11986191195381923134.Spec := by
  intro n
  simp only [A127737, Nat.add_sub_cancel]

end A127737

/-! ## A127737.P1607342815229376844

`A128219(n+1)²-A048151(n+1)`
-/

namespace A127737.P1607342815229376844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (n + 1) ^ 2 - A048151 (n + 1)

end

end A127737.P1607342815229376844

namespace A127737

/-- `A128219(n+1)²-A048151(n+1)` -/
def P1607342815229376844.Spec : Prop :=
  ∀ n, P1607342815229376844.a n = A127737 (n + 1)

end A127737

/-! ## A127737.P11575855362474453842

`2*A002260(n+1)²-A128137(n+1)`
-/

namespace A127737.P11575855362474453842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) ^ 2 - A128137 (n + 1)

end

end A127737.P11575855362474453842

namespace A127737

/-- `2*A002260(n+1)²-A128137(n+1)` -/
def P11575855362474453842.Spec : Prop :=
  ∀ n, P11575855362474453842.a n = A127737 (n + 1)

end A127737

/-! ## A127737.P13672321015808720633

`A092283(n+1)-A025581(n+1)`
-/

namespace A127737.P13672321015808720633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) - A025581 (n + 1)

end

end A127737.P13672321015808720633

namespace A127737

/-- `A092283(n+1)-A025581(n+1)` -/
def P13672321015808720633.Spec : Prop :=
  ∀ n, P13672321015808720633.a n = A127737 (n + 1)

end A127737

/-! ## A127737.P18129189817698968395

`A128219(n+1)²-A002262(n+1)`
-/

namespace A127737.P18129189817698968395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (n + 1) ^ 2 - A002262 (n + 1)

end

end A127737.P18129189817698968395

namespace A127737

/-- `A128219(n+1)²-A002262(n+1)` -/
def P18129189817698968395.Spec : Prop :=
  ∀ n, P18129189817698968395.a n = A127737 (n + 1)

end A127737

/-! ## A127737.P7220782232815119917

`A002378(A002260(n+1))-Δ[A025581(n)]`
-/

namespace A127737.P7220782232815119917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002260 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A127737.P7220782232815119917

namespace A127737

/-- `A002378(A002260(n+1))-Δ[A025581(n)]` -/
def P7220782232815119917.Spec : Prop :=
  ∀ n, P7220782232815119917.a n = A127737 (n + 1)

end A127737

/-! ## A127737.P2159690743377523435

`A092283(n+1)-∑[A127949(n+1)]`
-/

namespace A127737.P2159690743377523435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127737.P2159690743377523435

namespace A127737

/-- `A092283(n+1)-∑[A127949(n+1)]` -/
def P2159690743377523435.Spec : Prop :=
  ∀ n, P2159690743377523435.a n = A127737 (n + 1)

end A127737

/-! ## A127737.P3115831769136637551

`A126615(comp[∑[n]])-A127949(n+1)`
-/

namespace A127737.P3115831769136637551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126615 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A127949 (n + 1)

end

end A127737.P3115831769136637551

namespace A127737

/-- `A126615(comp[∑[n]])-A127949(n+1)` -/
def P3115831769136637551.Spec : Prop :=
  ∀ n, P3115831769136637551.a n = A127737 (n + 1)

end A127737

/-!
# A127738: Triangle read by rows: the matrix product A004736 * A127701 of two triangular matrices.

The programs for A127738, the canonical program `A127738.P13771444761042262108` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127738 has offset 1).

The definition of A127738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127738.P13771444761042262108

`col(n)+1+(col(n)+2)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127738

/-- `col(n)+1+(col(n)+2)*(row(n)-col(n))` -/
def P13771444761042262108.Spec : Prop :=
  ∀ n, P13771444761042262108.a n = A127738 (n + 1)

theorem P13771444761042262108.correct : P13771444761042262108.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel]

end A127738

/-! ## A127738.P5727520836842672652

`T(n-2,k)+T(n-1,k)+row(n)+1-T(n-1,k+1)` with `a(0)=1`
-/

namespace A127738.P5727520836842672652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n : ℤ) + 1 - SequenceMachineLib.triUpRight a n

end

end A127738.P5727520836842672652

namespace A127738

/-- `T(n-2,k)+T(n-1,k)+row(n)+1-T(n-1,k+1)` -/
def P5727520836842672652.Spec : Prop :=
  ∀ n, P5727520836842672652.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P9827332163201757081

`(col(n)+2)*(row(n)-col(n)+1)-1`
-/

namespace A127738.P9827332163201757081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1

end

end A127738.P9827332163201757081

namespace A127738

/-- `(col(n)+2)*(row(n)-col(n)+1)-1` -/
def P9827332163201757081.Spec : Prop :=
  ∀ n, P9827332163201757081.a n = A127738 (n + 1)

theorem P9827332163201757081.correct : P9827332163201757081.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P9827332163201757081.a, A127738.P13771444761042262108.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127738

/-! ## A127738.P582716739743018017

`∑[char[∑[n]]+∑[2*n]%comp[∑[n]]-n]`
-/

namespace A127738.P582716739743018017
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127738.P582716739743018017

namespace A127738

/-- `∑[char[∑[n]]+∑[2*n]%comp[∑[n]]-n]` -/
def P582716739743018017.Spec : Prop :=
  ∀ n, P582716739743018017.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P3894834414620198408

`∑[char[∑[n]]]+∑[∑[char[∑[n]]]²]%(n+1)`
-/

namespace A127738.P3894834414620198408
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1)

end

end A127738.P3894834414620198408

namespace A127738

/-- `∑[char[∑[n]]]+∑[∑[char[∑[n]]]²]%(n+1)` -/
def P3894834414620198408.Spec : Prop :=
  ∀ n, (P3894834414620198408.a n : ℤ) = A127738 (n + 1)

end A127738

/-! ## A127738.P12647903176656064713

`A141429(n+1)-1`
-/

namespace A127738.P12647903176656064713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) - 1

end

end A127738.P12647903176656064713

namespace A127738

/-- `A141429(n+1)-1` -/
def P12647903176656064713.Spec : Prop :=
  ∀ n, P12647903176656064713.a n = A127738 (n + 1)

theorem P12647903176656064713.correct : P12647903176656064713.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P12647903176656064713.a, A127738.P13771444761042262108.a, A141429, A141429.P3778980955938111992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-! ## A127738.P6814442275325579853

`∑[A114327(n)+char[∑[n]]]`
-/

namespace A127738.P6814442275325579853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127738.P6814442275325579853

namespace A127738

/-- `∑[A114327(n)+char[∑[n]]]` -/
def P6814442275325579853.Spec : Prop :=
  ∀ n, P6814442275325579853.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P948597605949463015

`A294317(n)+A077028(n)`
-/

namespace A127738.P948597605949463015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + A077028 n

end

end A127738.P948597605949463015

namespace A127738

/-- `A294317(n)+A077028(n)` -/
def P948597605949463015.Spec : Prop :=
  ∀ n, P948597605949463015.a n = A127738 (n + 1)

theorem P948597605949463015.correct : P948597605949463015.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P948597605949463015.a, A127738.P13771444761042262108.a, A077028, A077028.P18404356772921913843.a, A294317, A294317.P6597418737474744620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-! ## A127738.P16094205199050842462

`A025581(n)+A003991(n+1)`
-/

namespace A127738.P16094205199050842462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A003991 (n + 1)

end

end A127738.P16094205199050842462

namespace A127738

/-- `A025581(n)+A003991(n+1)` -/
def P16094205199050842462.Spec : Prop :=
  ∀ n, P16094205199050842462.a n = A127738 (n + 1)

theorem P16094205199050842462.correct : P16094205199050842462.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P16094205199050842462.a, A127738.P13771444761042262108.a, A003991, A003991.P6365127437582401781.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-! ## A127738.P650791854896095762

`A059036(n)+A004736(n+1)`
-/

namespace A127738.P650791854896095762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A004736 (n + 1)

end

end A127738.P650791854896095762

namespace A127738

/-- `A059036(n)+A004736(n+1)` -/
def P650791854896095762.Spec : Prop :=
  ∀ n, P650791854896095762.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P3588228877911754807

`A025581(n)+A059036(n)+1`
-/

namespace A127738.P3588228877911754807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A059036 n + 1)

end

end A127738.P3588228877911754807

namespace A127738

/-- `A025581(n)+A059036(n)+1` -/
def P3588228877911754807.Spec : Prop :=
  ∀ n, P3588228877911754807.a n = A127738 (n + 1)

theorem P3588228877911754807.correct : P3588228877911754807.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P3588228877911754807.a, A127738.P13771444761042262108.a, A025581, A025581.P16112744757063613497.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-! ## A127738.P1000911535158761889

`A128076(n+1)+A004247(n)`
-/

namespace A127738.P1000911535158761889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + A004247 n

end

end A127738.P1000911535158761889

namespace A127738

/-- `A128076(n+1)+A004247(n)` -/
def P1000911535158761889.Spec : Prop :=
  ∀ n, P1000911535158761889.a n = A127738 (n + 1)

theorem P1000911535158761889.correct : P1000911535158761889.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P1000911535158761889.a, A127738.P13771444761042262108.a, A004247, A004247.P2751605162508615148.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-! ## A127738.P5068475773327434582

`A204250(n+1)-A002262(n)`
-/

namespace A127738.P5068475773327434582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) - A002262 n

end

end A127738.P5068475773327434582

namespace A127738

/-- `A204250(n+1)-A002262(n)` -/
def P5068475773327434582.Spec : Prop :=
  ∀ n, P5068475773327434582.a n = A127738 (n + 1)

theorem P5068475773327434582.correct : P5068475773327434582.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P5068475773327434582.a, A127738.P13771444761042262108.a, A002262, A002262.P17823619022233514403.a, A204250, A204250.P2607520245277091701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-! ## A127738.P9822471321821220899

`A099375(n)+A128139(n)-1`
-/

namespace A127738.P9822471321821220899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + (A128139 n - 1)

end

end A127738.P9822471321821220899

namespace A127738

/-- `A099375(n)+A128139(n)-1` -/
def P9822471321821220899.Spec : Prop :=
  ∀ n, P9822471321821220899.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P16810671585008877458

`A180858(n+1)-A048147(n)`
-/

namespace A127738.P16810671585008877458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180858 (n + 1) - A048147 n

end

end A127738.P16810671585008877458

namespace A127738

/-- `A180858(n+1)-A048147(n)` -/
def P16810671585008877458.Spec : Prop :=
  ∀ n, P16810671585008877458.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P4838199778592918035

`A096038(n+1)-A134480(n)`
-/

namespace A127738.P4838199778592918035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) - A134480 n

end

end A127738.P4838199778592918035

namespace A127738

/-- `A096038(n+1)-A134480(n)` -/
def P4838199778592918035.Spec : Prop :=
  ∀ n, P4838199778592918035.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P1796831719967899752

`A008867(n+2)-A083920(n)`
-/

namespace A127738.P1796831719967899752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2) - A083920 n

end

end A127738.P1796831719967899752

namespace A127738

/-- `A008867(n+2)-A083920(n)` -/
def P1796831719967899752.Spec : Prop :=
  ∀ n, P1796831719967899752.a n = A127738 (n + 1)

end A127738

/-! ## A127738.P12520463709631561444

`A128139(n)+2*A025581(n)`
-/

namespace A127738.P12520463709631561444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + 2 * A025581 n

end

end A127738.P12520463709631561444

namespace A127738

/-- `A128139(n)+2*A025581(n)` -/
def P12520463709631561444.Spec : Prop :=
  ∀ n, P12520463709631561444.a n = A127738 (n + 1)

theorem P12520463709631561444.correct : P12520463709631561444.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P12520463709631561444.a, A127738.P13771444761042262108.a, A025581, A025581.P16112744757063613497.a, A128139, A128139.P11791759487030447530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-! ## A127738.P5117048221712454988

`A059036(n)+sqrt(A055461(n+1))`
-/

namespace A127738.P5117048221712454988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059036 n : ℝ) + Real.sqrt (A055461 (n + 1) : ℝ)

end

end A127738.P5117048221712454988

namespace A127738

/-- `A059036(n)+sqrt(A055461(n+1))` -/
def P5117048221712454988.Spec : Prop :=
  ∀ n, P5117048221712454988.a n = (A127738 (n + 1) : ℝ)

end A127738

/-! ## A127738.P3584661156818046574

`A095833(n+1)-A025581(n)²`
-/

namespace A127738.P3584661156818046574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - A025581 n ^ 2

end

end A127738.P3584661156818046574

namespace A127738

/-- `A095833(n+1)-A025581(n)²` -/
def P3584661156818046574.Spec : Prop :=
  ∀ n, P3584661156818046574.a n = A127738 (n + 1)

theorem P3584661156818046574.correct : P3584661156818046574.Spec := by
  intro n
  simp only [A127738, Nat.add_sub_cancel, A127738.P3584661156818046574.a, A127738.P13771444761042262108.a, A025581, A025581.P16112744757063613497.a, A095833, A095833.P14663800684524425914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127738

/-!
# A127739: Triangle read by rows, in which row n contains the triangular number T(n) = A000217(n) repeated n times; smallest triangular number greater than or equal to n.

The programs for A127739, the canonical program `A127739.P6291269565293973198` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127739 has offset 1).

The definition of A127739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127739.P6291269565293973198

`A003057(n+2)*A002024(n+1)/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127739

/-- `A003057(n+2)*A002024(n+1)/2` -/
def P6291269565293973198.Spec : Prop :=
  ∀ n, P6291269565293973198.a n = (A127739 (n + 1) : ℚ)

end A127739

/-! ## A127739.P10210342270476972481

`A000217(A123578(n+1))`
-/

namespace A127739.P10210342270476972481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A123578 (n + 1)).toNat

end

end A127739.P10210342270476972481

namespace A127739

/-- `A000217(A123578(n+1))` -/
def P10210342270476972481.Spec : Prop :=
  ∀ n, P10210342270476972481.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P1287286218284764583

`C(row(n)+2, 2)`
-/

namespace A127739.P1287286218284764583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 2) 2

end

end A127739.P1287286218284764583

namespace A127739

/-- `C(row(n)+2, 2)` -/
def P1287286218284764583.Spec : Prop :=
  ∀ n, (P1287286218284764583.a n : ℤ) = A127739 (n + 1)

end A127739

/-! ## A127739.P12249896376493119545

`C(comp[∑[n]]-n, 2)`
-/

namespace A127739.P12249896376493119545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

end

end A127739.P12249896376493119545

namespace A127739

/-- `C(comp[∑[n]]-n, 2)` -/
def P12249896376493119545.Spec : Prop :=
  ∀ n, (P12249896376493119545.a n : ℤ) = A127739 (n + 1)

end A127739

/-! ## A127739.P13567898530720693104

`n+row(n)-col(n)+1`
-/

namespace A127739.P13567898530720693104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A127739.P13567898530720693104

namespace A127739

/-- `n+row(n)-col(n)+1` -/
def P13567898530720693104.Spec : Prop :=
  ∀ n, P13567898530720693104.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P2412492115864263583

`(row(n)+1)*(row(n)+2)/2`
-/

namespace A127739.P2412492115864263583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + 2) : ℚ) / 2

end

end A127739.P2412492115864263583

namespace A127739

/-- `(row(n)+1)*(row(n)+2)/2` -/
def P2412492115864263583.Spec : Prop :=
  ∀ n, P2412492115864263583.a n = (A127739 (n + 1) : ℚ)

end A127739

/-! ## A127739.P13787108583330509021

`lt[0, n-round(sqrt(n))²]-(n+1)`
-/

namespace A127739.P13787108583330509021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A127739.P13787108583330509021

namespace A127739

/-- `lt[0, n-round(sqrt(n))²]-(n+1)` -/
def P13787108583330509021.Spec : Prop :=
  ∀ n, P13787108583330509021.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P6654449775603891793

`(floor(sqrt(2*(n+1))+1/2)²+floor(sqrt(2*(n+1))+1/2))/2`
-/

namespace A127739.P6654449775603891793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (2 * (n + 1) : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ ^ 2 + ⌊Real.sqrt (2 * (n + 1) : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ : ℚ) / 2

end

end A127739.P6654449775603891793

namespace A127739

/-- `(floor(sqrt(2*(n+1))+1/2)²+floor(sqrt(2*(n+1))+1/2))/2` -/
def P6654449775603891793.Spec : Prop :=
  ∀ n, P6654449775603891793.a n = (A127739 (n + 1) : ℚ)

end A127739

/-! ## A127739.P5400115720987016205

`∑[1-A167407(n)]`
-/

namespace A127739.P5400115720987016205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127739.P5400115720987016205

namespace A127739

/-- `∑[1-A167407(n)]` -/
def P5400115720987016205.Spec : Prop :=
  ∀ n, P5400115720987016205.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P5657619782863486860

`∑[2-A155124(n)]`
-/

namespace A127739.P5657619782863486860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A155124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127739.P5657619782863486860

namespace A127739

/-- `∑[2-A155124(n)]` -/
def P5657619782863486860.Spec : Prop :=
  ∀ n, P5657619782863486860.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P5341163590377885247

`A000217(∑[char[∑[n]]])`
-/

namespace A127739.P5341163590377885247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127739.P5341163590377885247

namespace A127739

/-- `A000217(∑[char[∑[n]]])` -/
def P5341163590377885247.Spec : Prop :=
  ∀ n, P5341163590377885247.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P10080920562968884846

`A004736(n+1)+n`
-/

namespace A127739.P10080920562968884846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (n : ℤ)

end

end A127739.P10080920562968884846

namespace A127739

/-- `A004736(n+1)+n` -/
def P10080920562968884846.Spec : Prop :=
  ∀ n, P10080920562968884846.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P11811098494415948504

`A025581(n)+1+n`
-/

namespace A127739.P11811098494415948504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1 + (n : ℤ)

end

end A127739.P11811098494415948504

namespace A127739

/-- `A025581(n)+1+n` -/
def P11811098494415948504.Spec : Prop :=
  ∀ n, P11811098494415948504.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P15241923171145457742

`A064801(n+1)-n`
-/

namespace A127739.P15241923171145457742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - (n : ℤ)

end

end A127739.P15241923171145457742

namespace A127739

/-- `A064801(n+1)-n` -/
def P15241923171145457742.Spec : Prop :=
  ∀ n, P15241923171145457742.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P14476695556571458277

`∑[ceil(A198954(n)/2)]`
-/

namespace A127739.P14476695556571458277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198954 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127739.P14476695556571458277

namespace A127739

/-- `∑[ceil(A198954(n)/2)]` -/
def P14476695556571458277.Spec : Prop :=
  ∀ n, P14476695556571458277.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P7559104816204674512

`sqrt(A055461(n+1))+n`
-/

namespace A127739.P7559104816204674512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) + (n : ℝ)

end

end A127739.P7559104816204674512

namespace A127739

/-- `sqrt(A055461(n+1))+n` -/
def P7559104816204674512.Spec : Prop :=
  ∀ n, P7559104816204674512.a n = (A127739 (n + 1) : ℝ)

end A127739

/-! ## A127739.P16605977780341839865

`log2(A090988(n+1))+n`
-/

namespace A127739.P16605977780341839865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) + (n : ℝ)

end

end A127739.P16605977780341839865

namespace A127739

/-- `log2(A090988(n+1))+n` -/
def P16605977780341839865.Spec : Prop :=
  ∀ n, P16605977780341839865.a n = (A127739 (n + 1) : ℝ)

end A127739

/-! ## A127739.P3836343950437659467

`∑[A066182(n+1)-n]`
-/

namespace A127739.P3836343950437659467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127739.P3836343950437659467

namespace A127739

/-- `∑[A066182(n+1)-n]` -/
def P3836343950437659467.Spec : Prop :=
  ∀ n, P3836343950437659467.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P4647447423878639363

`A004202(n+1)-(n+1)`
-/

namespace A127739.P4647447423878639363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - (n + 1 : ℤ)

end

end A127739.P4647447423878639363

namespace A127739

/-- `A004202(n+1)-(n+1)` -/
def P4647447423878639363.Spec : Prop :=
  ∀ n, P4647447423878639363.a n = A127739 (n + 1)

end A127739

/-! ## A127739.P13085232999660333367

`A212012(n+1)/2+n`
-/

namespace A127739.P13085232999660333367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A127739.P13085232999660333367

namespace A127739

/-- `A212012(n+1)/2+n` -/
def P13085232999660333367.Spec : Prop :=
  ∀ n, P13085232999660333367.a n = (A127739 (n + 1) : ℚ)

end A127739

/-!
# A127740: Natural number transform of Aitken's triangle.

The programs for A127740, there is no canonical definition to state claims against.
-/

/-! ## A127740.P13933367474199950064

`∑[char[∑[n]]]*A011971(n)`
-/

namespace A127740.P13933367474199950064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011971 n

end

end A127740.P13933367474199950064

/-! ## A127740.P2238628489505106073

`∑[char[∑[n]]]*Δ[A011972(n)]`
-/

namespace A127740.P2238628489505106073
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f4 (n + 1) - f4 n)

end

end A127740.P2238628489505106073

/-! ## A127740.P3986445883635522651

`∑[char[∑[n]]]*A095149(comp[∑[n]])`
-/

namespace A127740.P3986445883635522651
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A095149 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A127740.P3986445883635522651

/-! ## A127740.P16368676712402803413

`(A046936(n)+A046934(n))*A002024(n+1)`
-/

namespace A127740.P16368676712402803413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046936 n + A046934 n) * A002024 (n + 1)

end

end A127740.P16368676712402803413

/-! ## A127740.P2289924423926860079

`(A046937(n)-A046936(n))*A002024(n+1)`
-/

namespace A127740.P2289924423926860079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046937 n - A046936 n) * A002024 (n + 1)

end

end A127740.P2289924423926860079

/-!
# A127741: a(n) = (n+1) * A005493(n).

The programs for A127741, the canonical program `A127741.P12199676706950505178` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127741 has offset 0).

The definition of A127741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127741.P12199676706950505178

`(n+1)*A005493(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127741

/-- `(n+1)*A005493(n)` -/
def P12199676706950505178.Spec : Prop :=
  ∀ n, P12199676706950505178.a n = A127741 n

theorem P12199676706950505178.correct : P12199676706950505178.Spec := by
  intro n
  simp only [A127741]

end A127741

/-! ## A127741.P11345111302956064838

`(n+1)*∑[A011965(n)]`
-/

namespace A127741.P11345111302956064838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127741.P11345111302956064838

namespace A127741

/-- `(n+1)*∑[A011965(n)]` -/
def P11345111302956064838.Spec : Prop :=
  ∀ n, P11345111302956064838.a n = A127741 n

end A127741

/-! ## A127741.P16414275801861775946

`(n+1)*Δ[A011972(∑[n])]`
-/

namespace A127741.P16414275801861775946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A127741.P16414275801861775946

namespace A127741

/-- `(n+1)*Δ[A011972(∑[n])]` -/
def P16414275801861775946.Spec : Prop :=
  ∀ n, P16414275801861775946.a n = A127741 n

end A127741

/-! ## A127741.P15904195680341475807

`(n+1)*Δ[record[A095149(n)]]`
-/

namespace A127741.P15904195680341475807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A127741.P15904195680341475807

namespace A127741

/-- `(n+1)*Δ[record[A095149(n)]]` -/
def P15904195680341475807.Spec : Prop :=
  ∀ n, P15904195680341475807.a n = A127741 n

end A127741

/-! ## A127741.P17877639784489301858

`(n+1)*Δ[record[A108087(n)]]`
-/

namespace A127741.P17877639784489301858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A127741.P17877639784489301858

namespace A127741

/-- `(n+1)*Δ[record[A108087(n)]]` -/
def P17877639784489301858.Spec : Prop :=
  ∀ n, P17877639784489301858.a n = A127741 n

end A127741

/-! ## A127741.P1346180177724175226

`(n+1)*Δ[record[A274835(n)]]`
-/

namespace A127741.P1346180177724175226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A127741.P1346180177724175226

namespace A127741

/-- `(n+1)*Δ[record[A274835(n)]]` -/
def P1346180177724175226.Spec : Prop :=
  ∀ n, P1346180177724175226.a n = A127741 n

end A127741

/-! ## A127741.P4277765344529300943

`(n+1)*Δ[A000110(n+1)]`
-/

namespace A127741.P4277765344529300943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A127741.P4277765344529300943

namespace A127741

/-- `(n+1)*Δ[A000110(n+1)]` -/
def P4277765344529300943.Spec : Prop :=
  ∀ n, P4277765344529300943.a n = A127741 n

end A127741

/-! ## A127741.P5870291839950489565

`(n+1)*A056861(∑[n]+2)`
-/

namespace A127741.P5870291839950489565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056861 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A127741.P5870291839950489565

namespace A127741

/-- `(n+1)*A056861(∑[n]+2)` -/
def P5870291839950489565.Spec : Prop :=
  ∀ n, P5870291839950489565.a n = A127741 n

end A127741

/-! ## A127741.P15658047744141544838

`(n+1)*record[A056861(n+2)]`
-/

namespace A127741.P15658047744141544838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127741.P15658047744141544838

namespace A127741

/-- `(n+1)*record[A056861(n+2)]` -/
def P15658047744141544838.Spec : Prop :=
  ∀ n, P15658047744141544838.a n = A127741 n

end A127741

/-! ## A127741.P1879601123475255581

`(n+1)*Δ[A011971(∑[n+1])]`
-/

namespace A127741.P1879601123475255581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A127741.P1879601123475255581

namespace A127741

/-- `(n+1)*Δ[A011971(∑[n+1])]` -/
def P1879601123475255581.Spec : Prop :=
  ∀ n, P1879601123475255581.a n = A127741 n

end A127741

/-!
# A127742: Triangle T(n,k) read by rows which refines the Catalan triangle A033184 using sequence A048996, 1 <= k <= A000041(n).

The programs for A127742, there is no canonical definition to state claims against.
-/

/-! ## A127742.P1777098490523027325

`A048996(n)*A179318(n)`
-/

namespace A127742.P1777098490523027325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A179318 n

end

end A127742.P1777098490523027325

/-!
# A127743: Triangular array where T(n,k) is the number of set partitions of n with k atomic parts.

The programs for A127743, there is no canonical definition to state claims against.
-/

/-! ## A127743.P9452701064191185644

`A130167(comp[∑[n]])`
-/

namespace A127743.P9452701064191185644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A127743.P9452701064191185644

/-! ## A127743.P10514765287555531960

`and(-1, A130167(A014132(n+1)))`
-/

namespace A127743.P10514765287555531960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A130167 (A014132 (n + 1)).toNat)

end

end A127743.P10514765287555531960

/-! ## A127743.P7581978037131110388

`gcd(A000038(n), A130167(A014132(n+1)))`
-/

namespace A127743.P7581978037131110388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A130167 (A014132 (n + 1)).toNat)

end

end A127743.P7581978037131110388

/-! ## A127743.P15698806535295809486

`A000040(n+2)%2*A130167(A014132(n+1))`
-/

namespace A127743.P15698806535295809486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A130167 (A014132 (n + 1)).toNat

end

end A127743.P15698806535295809486

/-! ## A127743.P14289079547736286351

`A130167(∑[A035214(n)])%A000032(n+2)`
-/

namespace A127743.P14289079547736286351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000032 (n + 2))

end

end A127743.P14289079547736286351

/-!
# A127744: a(n) = A121265(n) - A121295(n).

The programs for A127744, there is no canonical definition to state claims against.
-/

/-! ## A127744.P12165308043666588104

`A121265(n)-A121295(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127744.P12165308043666588104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121265 (n + 10) - A121295 (n + 10)

end

end A127744.P12165308043666588104

/-! ## A127744.P6589584443856603631

`A122734(n)-A131011(n)`
-/

namespace A127744.P6589584443856603631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122734 (n + 10) - A131011 (n + 10)

end

end A127744.P6589584443856603631

/-! ## A127744.P7142501968387280780

`A121263(n)+A122734(n)-A121295(n)`
-/

namespace A127744.P7142501968387280780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121263 (n + 10) + (A122734 (n + 10) - A121295 (n + 10))

end

end A127744.P7142501968387280780

/-! ## A127744.P9113012361590098540

`A121265(n)-(A131011(n)+A121263(n))`
-/

namespace A127744.P9113012361590098540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121265 (n + 10) - (A131011 (n + 10) + A121263 (n + 10))

end

end A127744.P9113012361590098540

/-! ## A127744.P18178451770801050908

`A122734(n)+A121266(∑[n]+n)-A121295(n)`
-/

namespace A127744.P18178451770801050908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122734 (n + 10) + A121266 (∑ j ∈ Finset.range (n + 1), f1 j + n + 10) - A121295 (n + 10)

end

end A127744.P18178451770801050908

/-!
# A127745: a(n) = A074664(n) - A000108(n-1).

The programs for A127745, there is no canonical definition to state claims against.
-/

/-! ## A127745.P8807736360141647911

`A074664(n+1)-A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127745.P8807736360141647911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1) - A000108 n

end

end A127745.P8807736360141647911

/-! ## A127745.P7988111225710235897

`A127743(∑[n]+1)-A000108(n)`
-/

namespace A127745.P7988111225710235897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127743 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000108 n

end

end A127745.P7988111225710235897

/-! ## A127745.P1506108458982681949

`A074664(n+1)-A028364(A000217(n))`
-/

namespace A127745.P1506108458982681949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1) - A028364 (A000217 n).toNat

end

end A127745.P1506108458982681949

/-! ## A127745.P9227713060625047324

`A074664(n+1)-A033184(A000124(n))`
-/

namespace A127745.P9227713060625047324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1) - A033184 (A000124 n).toNat

end

end A127745.P9227713060625047324

/-! ## A127745.P649696315237841869

`A074664(n+1)-A089408(A005408(n))`
-/

namespace A127745.P649696315237841869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1) - A089408 (A005408 n).toNat

end

end A127745.P649696315237841869

/-!
# A127746: Smallest n-digit prime whose reversal is also prime.

The programs for A127746, there is no canonical definition to state claims against.
-/

/-! ## A127746.P3629556182160869893

`A000040(A238878(n+1)+A006880(n))`
-/

namespace A127746.P3629556182160869893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A238878 (n + 1) + A006880 n).toNat

end

end A127746.P3629556182160869893

/-! ## A127746.P16606473634766171755

`A000040(A353248(n+1)+A006880(n))`
-/

namespace A127746.P16606473634766171755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A353248 (n + 1) + A006880 n).toNat

end

end A127746.P16606473634766171755

/-!
# A127749: Inverse of number triangle A(n,k) = 1/(2n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127749, there is no canonical definition to state claims against.
-/

/-! ## A127749.P11919861510672205344

`round(log(2)*A127751(n))`
-/

namespace A127749.P11919861510672205344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (2 : ℝ) * (A127751 n : ℝ))

end

end A127749.P11919861510672205344

/-! ## A127749.P15284685698726862105

`(2*(n-C(∑[char[∑[n]]], 2))+1)*A111967(n)`
-/

namespace A127749.P15284685698726862105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) * A111967 n

end

end A127749.P15284685698726862105

/-! ## A127749.P16882724761019460164

`Δ[A341736(n)]*A111967(n)`
-/

namespace A127749.P16882724761019460164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A111967 n

end

end A127749.P16882724761019460164

/-! ## A127749.P17233500015784200588

`A111967(n)*A158405(n+1)`
-/

namespace A127749.P17233500015784200588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A158405 (n + 1)

end

end A127749.P17233500015784200588

/-! ## A127749.P2305225074359771282

`(2*A002262(n)+1)*A111967(n)`
-/

namespace A127749.P2305225074359771282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002262 n + 1) * A111967 n

end

end A127749.P2305225074359771282

/-! ## A127749.P4973880686801678737

`A127751(n)%3*A158405(n+1)`
-/

namespace A127749.P4973880686801678737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127751 n) 3 * A158405 (n + 1)

end

end A127749.P4973880686801678737

/-! ## A127749.P7961639803922913921

`(comp[∑[n]]-A038722(n+1))*A111967(n)`
-/

namespace A127749.P7961639803922913921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A038722 (n + 1)) * A111967 n

end

end A127749.P7961639803922913921

/-! ## A127749.P17145123320437592212

`∑[-A115236(abs(1-n))]*A158405(n+1)`
-/

namespace A127749.P17145123320437592212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A115236 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A158405 (n + 1)

end

end A127749.P17145123320437592212

/-! ## A127749.P7606012065823799931

`A005408(A002262(n))*A111967(n)`
-/

namespace A127749.P7606012065823799931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A111967 n

end

end A127749.P7606012065823799931

/-! ## A127749.P12810230609477180697

`A000265(A054582(n))*A111967(n)`
-/

namespace A127749.P12810230609477180697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A054582 n).toNat * A111967 n

end

end A127749.P12810230609477180697

/-!
# A127750: Row sums of inverse of number triangle A(n,k) = 1/(2n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127750, the canonical program `A127750.P15468024638986670483` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127750 has offset 0).

The definition of A127750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127750.P15468024638986670483

`n%2*a(floor(n/2))+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127750

/-- `n%2*a(floor(n/2))+2` -/
def P15468024638986670483.Spec : Prop :=
  ∀ n, (P15468024638986670483.a n : ℤ) = A127750 n

theorem P15468024638986670483.correct : P15468024638986670483.Spec := by
  intro n
  simp only [A127750]

end A127750

/-! ## A127750.P17216030891937428548

`Δ[n-1+a(floor(n/2))+n]` with `a(0)=5`
-/

namespace A127750.P17216030891937428548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  (n : ℤ) - 1 + (f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127750.P17216030891937428548

namespace A127750

/-- `Δ[n-1+a(floor(n/2))+n]` -/
def P17216030891937428548.Spec : Prop :=
  ∀ n, P17216030891937428548.a n = A127750 n

end A127750

/-! ## A127750.P12459381419372493857

`4-(a(n-1)-a(floor((n-1)/2)))` with `a(0)=1, a(1)=3`
-/

namespace A127750.P12459381419372493857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A127750.P12459381419372493857

namespace A127750

/-- `4-(a(n-1)-a(floor((n-1)/2)))` -/
def P12459381419372493857.Spec : Prop :=
  ∀ n, P12459381419372493857.a n = A127750 n

end A127750

/-! ## A127750.P2629090458717045241

`val(A343072(2*n), 2)`
-/

namespace A127750.P2629090458717045241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A343072 (2 * n)).toNat 2

end

end A127750.P2629090458717045241

namespace A127750

/-- `val(A343072(2*n), 2)` -/
def P2629090458717045241.Spec : Prop :=
  ∀ n, (P2629090458717045241.a n : ℤ) = A127750 n

end A127750

/-! ## A127750.P10988599361928463337

`val(A129597(n+1), 2)+1`
-/

namespace A127750.P10988599361928463337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A129597 (n + 1)).toNat 2 + 1

end

end A127750.P10988599361928463337

namespace A127750

/-- `val(A129597(n+1), 2)+1` -/
def P10988599361928463337.Spec : Prop :=
  ∀ n, (P10988599361928463337.a n : ℤ) = A127750 n

end A127750

/-! ## A127750.P14278186089662531371

`val(A342768(2*(n+1)), 2)`
-/

namespace A127750.P14278186089662531371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A342768 (2 * (n + 1))).toNat 2

end

end A127750.P14278186089662531371

namespace A127750

/-- `val(A342768(2*(n+1)), 2)` -/
def P14278186089662531371.Spec : Prop :=
  ∀ n, (P14278186089662531371.a n : ℤ) = A127750 n

end A127750

/-! ## A127750.P9953099578454147904

`val(A165825(n+1)+2*(n+1)², 2)+1`
-/

namespace A127750.P9953099578454147904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165825 (n + 1) + (2 * (n + 1) ^ 2 : ℤ)).toNat 2 + 1

end

end A127750.P9953099578454147904

namespace A127750

/-- `val(A165825(n+1)+2*(n+1)², 2)+1` -/
def P9953099578454147904.Spec : Prop :=
  ∀ n, (P9953099578454147904.a n : ℤ) = A127750 n

end A127750

/-! ## A127750.P7576640782356265953

`A004396(A127752(n))`
-/

namespace A127750.P7576640782356265953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A127752 n).toNat

end

end A127750.P7576640782356265953

namespace A127750

/-- `A004396(A127752(n))` -/
def P7576640782356265953.Spec : Prop :=
  ∀ n, P7576640782356265953.a n = A127750 n

end A127750

/-! ## A127750.P7656066098406251861

`A178493(A361145(n+1))`
-/

namespace A127750.P7656066098406251861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178493 (A361145 (n + 1)).toNat

end

end A127750.P7656066098406251861

namespace A127750

/-- `A178493(A361145(n+1))` -/
def P7656066098406251861.Spec : Prop :=
  ∀ n, P7656066098406251861.a n = A127750 n

end A127750

/-! ## A127750.P13991811488390428768

`A087508(2*A127752(n)-1)`
-/

namespace A127750.P13991811488390428768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (2 * A127752 n - 1).toNat

end

end A127750.P13991811488390428768

namespace A127750

/-- `A087508(2*A127752(n)-1)` -/
def P13991811488390428768.Spec : Prop :=
  ∀ n, P13991811488390428768.a n = A127750 n

end A127750

/-! ## A127750.P11119159987656612056

`A043545(n)+A037227(n+1)`
-/

namespace A127750.P11119159987656612056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A037227 (n + 1)

end

end A127750.P11119159987656612056

namespace A127750

/-- `A043545(n)+A037227(n+1)` -/
def P11119159987656612056.Spec : Prop :=
  ∀ n, P11119159987656612056.a n = A127750 n

end A127750

/-! ## A127750.P3567771977838582509

`A366839(n+1)-A036987(n)`
-/

namespace A127750.P3567771977838582509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) - A036987 n

end

end A127750.P3567771977838582509

namespace A127750

/-- `A366839(n+1)-A036987(n)` -/
def P3567771977838582509.Spec : Prop :=
  ∀ n, P3567771977838582509.a n = A127750 n

end A127750

/-! ## A127750.P2652572555696290548

`A135560(n+1)-A378218(n+1)`
-/

namespace A127750.P2652572555696290548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) - A378218 (n + 1)

end

end A127750.P2652572555696290548

namespace A127750

/-- `A135560(n+1)-A378218(n+1)` -/
def P2652572555696290548.Spec : Prop :=
  ∀ n, P2652572555696290548.a n = A127750 n

end A127750

/-! ## A127750.P2983033931301178010

`2*A001511(n+1)-A036987(n)`
-/

namespace A127750.P2983033931301178010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001511 (n + 1) - A036987 n

end

end A127750.P2983033931301178010

namespace A127750

/-- `2*A001511(n+1)-A036987(n)` -/
def P2983033931301178010.Spec : Prop :=
  ∀ n, P2983033931301178010.a n = A127750 n

end A127750

/-! ## A127750.P18255030596625182213

`A091090(2*n+1)+A007814(n+1)`
-/

namespace A127750.P18255030596625182213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (2 * n + 1) + A007814 (n + 1)

end

end A127750.P18255030596625182213

namespace A127750

/-- `A091090(2*n+1)+A007814(n+1)` -/
def P18255030596625182213.Spec : Prop :=
  ∀ n, P18255030596625182213.a n = A127750 n

end A127750

/-! ## A127750.P285222956641299136

`2*(A007814(n+1)+1)-A036987(n)`
-/

namespace A127750.P285222956641299136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007814 (n + 1) + 1) - A036987 n

end

end A127750.P285222956641299136

namespace A127750

/-- `2*(A007814(n+1)+1)-A036987(n)` -/
def P285222956641299136.Spec : Prop :=
  ∀ n, P285222956641299136.a n = A127750 n

end A127750

/-! ## A127750.P6679175287194034763

`∑{d}[n+1, A001511(#)*A157657((n+1)/#)]`
-/

namespace A127750.P6679175287194034763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A157657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127750.P6679175287194034763

namespace A127750

/-- `∑{d}[n+1, A001511(#)*A157657((n+1)/#)]` -/
def P6679175287194034763.Spec : Prop :=
  ∀ n, P6679175287194034763.a n = A127750 n

end A127750

/-! ## A127750.P6498127112684155175

`∑{d}[n+1, A087003(#)*A114003((n+1)/#)]`
-/

namespace A127750.P6498127112684155175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A114003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127750.P6498127112684155175

namespace A127750

/-- `∑{d}[n+1, A087003(#)*A114003((n+1)/#)]` -/
def P6498127112684155175.Spec : Prop :=
  ∀ n, P6498127112684155175.a n = A127750 n

end A127750

/-! ## A127750.P3747198415846652772

`∑{d}[n+1, A086374(#)*A209635((n+1)/#)]`
-/

namespace A127750.P3747198415846652772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086374 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127750.P3747198415846652772

namespace A127750

/-- `∑{d}[n+1, A086374(#)*A209635((n+1)/#)]` -/
def P3747198415846652772.Spec : Prop :=
  ∀ n, P3747198415846652772.a n = A127750 n

end A127750

/-! ## A127750.P17913644081771615579

`A001511(n+1)+A001511(n+1)-A209229(n+1)`
-/

namespace A127750.P17913644081771615579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A001511 (n + 1) - A209229 (n + 1))

end

end A127750.P17913644081771615579

namespace A127750

/-- `A001511(n+1)+A001511(n+1)-A209229(n+1)` -/
def P17913644081771615579.Spec : Prop :=
  ∀ n, P17913644081771615579.a n = A127750 n

end A127750

/-!
# A127751: Inverse of number triangle A(n,k)=if(k<=n,if(n<=2k,1/(3n+1),0),0).

The programs for A127751, there is no canonical definition to state claims against.
-/

/-! ## A127751.P6168265868222393243

`A016777(A002262(n))*A111967(n)`
-/

namespace A127751.P6168265868222393243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A002262 n).toNat * A111967 n

end

end A127751.P6168265868222393243

/-! ## A127751.P9766524925776417614

`A048785(A059268(n))*A111967(n)`
-/

namespace A127751.P9766524925776417614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A059268 n).toNat * A111967 n

end

end A127751.P9766524925776417614

/-! ## A127751.P887409516263164896

`A016777(A329221(n))*A111967(n)`
-/

namespace A127751.P887409516263164896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A329221 n).toNat * A111967 n

end

end A127751.P887409516263164896

/-! ## A127751.P18210857743016335376

`A016777(log2(A059268(n)))*A111967(n)`
-/

namespace A127751.P18210857743016335376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A111967 n

end

end A127751.P18210857743016335376

/-! ## A127751.P7769497395895603782

`A016777(A025668(n+1))*A111967(n)`
-/

namespace A127751.P7769497395895603782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A025668 (n + 1)).toNat * A111967 n

end

end A127751.P7769497395895603782

/-! ## A127751.P6998332103166794460

`A001651(A158405(n+1))*A111967(n)`
-/

namespace A127751.P6998332103166794460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A158405 (n + 1)).toNat * A111967 n

end

end A127751.P6998332103166794460

/-! ## A127751.P11943537413700431896

`∑{d}[A059268(n), A048250(#)*A111967(n)]`
-/

namespace A127751.P11943537413700431896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048250 d * A111967 n

end

end A127751.P11943537413700431896

/-! ## A127751.P10594643602858286461

`(A329221(n)+A158405(n+1))*A111967(n)`
-/

namespace A127751.P10594643602858286461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329221 n + A158405 (n + 1)) * A111967 n

end

end A127751.P10594643602858286461

/-! ## A127751.P3919497846699666800

`(A158405(n+1)+A025668(n+1))*A111967(n)`
-/

namespace A127751.P3919497846699666800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158405 (n + 1) + A025668 (n + 1)) * A111967 n

end

end A127751.P3919497846699666800

/-! ## A127751.P3321393952908427360

`A127749(n)+A002262(n)*A111967(n)`
-/

namespace A127751.P3321393952908427360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127749 n + A002262 n * A111967 n

end

end A127751.P3321393952908427360

/-!
# A127752: Row sums of inverse of number triangle A(n,k) = 1/(3n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127752, the canonical program `A127752.P367866847869341572` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127752 has offset 0).

The definition of A127752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127752.P367866847869341572

`abs(n%2*a(floor(n/2))+2)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127752

/-- `abs(n%2*a(floor(n/2))+2)+1` -/
def P367866847869341572.Spec : Prop :=
  ∀ n, (P367866847869341572.a n : ℤ) = A127752 n

theorem P367866847869341572.correct : P367866847869341572.Spec := by
  intro n
  simp only [A127752]

end A127752

/-! ## A127752.P1699592016291042398

`6-(a(n-1)-a(floor((n-1)/2)))` with `a(0)=1, a(1)=4`
-/

namespace A127752.P1699592016291042398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A127752.P1699592016291042398

namespace A127752

/-- `6-(a(n-1)-a(floor((n-1)/2)))` -/
def P1699592016291042398.Spec : Prop :=
  ∀ n, P1699592016291042398.a n = A127752 n

end A127752

/-! ## A127752.P9130840533325135985

`A032766(A127750(n))`
-/

namespace A127752.P9130840533325135985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A127750 n).toNat

end

end A127752.P9130840533325135985

namespace A127752

/-- `A032766(A127750(n))` -/
def P9130840533325135985.Spec : Prop :=
  ∀ n, P9130840533325135985.a n = A127752 n

end A127752

/-! ## A127752.P1446199000442146749

`A366839(n+1)-A378218(n+1)`
-/

namespace A127752.P1446199000442146749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) - A378218 (n + 1)

end

end A127752.P1446199000442146749

namespace A127752

/-- `A366839(n+1)-A378218(n+1)` -/
def P1446199000442146749.Spec : Prop :=
  ∀ n, P1446199000442146749.a n = A127752 n

end A127752

/-! ## A127752.P3579606766826449261

`2*A127750(n)-A001511(n+1)`
-/

namespace A127752.P3579606766826449261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127750 n - A001511 (n + 1)

end

end A127752.P3579606766826449261

namespace A127752

/-- `2*A127750(n)-A001511(n+1)` -/
def P3579606766826449261.Spec : Prop :=
  ∀ n, P3579606766826449261.a n = A127752 n

end A127752

/-! ## A127752.P17032262899774128731

`A359508(2*n+1)+A336126(2*n+1)`
-/

namespace A127752.P17032262899774128731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359508 (2 * n + 1) + A336126 (2 * n + 1)

end

end A127752.P17032262899774128731

namespace A127752

/-- `A359508(2*n+1)+A336126(2*n+1)` -/
def P17032262899774128731.Spec : Prop :=
  ∀ n, P17032262899774128731.a n = A127752 n

end A127752

/-! ## A127752.P17734418577471361628

`∑{d}[n+1, A036987(#-1)*A122553((n+1)/#-1)]`
-/

namespace A127752.P17734418577471361628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A122553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A127752.P17734418577471361628

namespace A127752

/-- `∑{d}[n+1, A036987(#-1)*A122553((n+1)/#-1)]` -/
def P17734418577471361628.Spec : Prop :=
  ∀ n, P17734418577471361628.a n = A127752 n

end A127752

/-! ## A127752.P8548650722330539705

`A127750(n)+A110654(A127750(n)-1)`
-/

namespace A127752.P8548650722330539705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127750 n + A110654 (A127750 n - 1).toNat

end

end A127752.P8548650722330539705

namespace A127752

/-- `A127750(n)+A110654(A127750(n)-1)` -/
def P8548650722330539705.Spec : Prop :=
  ∀ n, P8548650722330539705.a n = A127752 n

end A127752

/-! ## A127752.P13668328781916936367

`A001511(n+1)+A127750(n)-A036987(n)`
-/

namespace A127752.P13668328781916936367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A127750 n - A036987 n)

end

end A127752.P13668328781916936367

namespace A127752

/-- `A001511(n+1)+A127750(n)-A036987(n)` -/
def P13668328781916936367.Spec : Prop :=
  ∀ n, P13668328781916936367.a n = A127752 n

end A127752

/-! ## A127752.P16260255314028715072

`A004526(A008486(n+1)/(n+1)*A127750(n))`
-/

namespace A127752.P16260255314028715072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A008486 (n + 1) : ℚ) / (n + 1 : ℚ) * (A127750 n : ℚ))).toNat

end

end A127752.P16260255314028715072

namespace A127752

/-- `A004526(A008486(n+1)/(n+1)*A127750(n))` -/
def P16260255314028715072.Spec : Prop :=
  ∀ n, P16260255314028715072.a n = A127752 n

end A127752

/-! ## A127752.P7818577926152647522

`A001511(n+1)+2*A055396(A252755(n))`
-/

namespace A127752.P7818577926152647522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + 2 * A055396 (A252755 n).toNat

end

end A127752.P7818577926152647522

namespace A127752

/-- `A001511(n+1)+2*A055396(A252755(n))` -/
def P7818577926152647522.Spec : Prop :=
  ∀ n, P7818577926152647522.a n = A127752 n

end A127752

/-! ## A127752.P9756323058538384693

`2*A001511(A129597(n+1))-A001511(n+1)`
-/

namespace A127752.P9756323058538384693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001511 (A129597 (n + 1)).toNat - A001511 (n + 1)

end

end A127752.P9756323058538384693

namespace A127752

/-- `2*A001511(A129597(n+1))-A001511(n+1)` -/
def P9756323058538384693.Spec : Prop :=
  ∀ n, P9756323058538384693.a n = A127752 n

end A127752

/-! ## A127752.P6566862185310115151

`A007814(n+1)+1+A007814(A009195(2*(n+1))²)`
-/

namespace A127752.P6566862185310115151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1 + A007814 (A009195 (2 * (n + 1)) ^ 2).toNat

end

end A127752.P6566862185310115151

namespace A127752

/-- `A007814(n+1)+1+A007814(A009195(2*(n+1))²)` -/
def P6566862185310115151.Spec : Prop :=
  ∀ n, P6566862185310115151.a n = A127752 n

end A127752

/-! ## A127752.P7387910704557794033

`A007814(n+1)+1+A007814(A052126(2*(n+1))²)`
-/

namespace A127752.P7387910704557794033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1 + A007814 (A052126 (2 * (n + 1)) ^ 2).toNat

end

end A127752.P7387910704557794033

namespace A127752

/-- `A007814(n+1)+1+A007814(A052126(2*(n+1))²)` -/
def P7387910704557794033.Spec : Prop :=
  ∀ n, P7387910704557794033.a n = A127752 n

end A127752

/-! ## A127752.P6013000499276224178

`A007814(A135517(2*n+1)²)+A007814(n+1)+1`
-/

namespace A127752.P6013000499276224178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A135517 (2 * n + 1) ^ 2).toNat + (A007814 (n + 1) + 1)

end

end A127752.P6013000499276224178

namespace A127752

/-- `A007814(A135517(2*n+1)²)+A007814(n+1)+1` -/
def P6013000499276224178.Spec : Prop :=
  ∀ n, P6013000499276224178.a n = A127752 n

end A127752

/-! ## A127752.P8879424644917896473

`A067029(A052126(2*(n+1))²)+A067029(2*(n+1))`
-/

namespace A127752.P8879424644917896473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A052126 (2 * (n + 1)) ^ 2).toNat + A067029 (2 * (n + 1))

end

end A127752.P8879424644917896473

namespace A127752

/-- `A067029(A052126(2*(n+1))²)+A067029(2*(n+1))` -/
def P8879424644917896473.Spec : Prop :=
  ∀ n, P8879424644917896473.a n = A127752 n

end A127752

/-!
# A127753: Inverse of number triangle A(n,k) = 1/L(n+1) if k <= n <= 2k, 0 otherwise, where L(n) = A000032(n).

The programs for A127753, there is no canonical definition to state claims against.
-/

/-! ## A127753.P4295765017535637385

`A104765(n+1)*A111967(n)`
-/

namespace A127753.P4295765017535637385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (n + 1) * A111967 n

end

end A127753.P4295765017535637385

/-! ## A127753.P15365135339134954219

`A027960(A063656(n))*A111967(n)`
-/

namespace A127753.P15365135339134954219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A063656 n).toNat * A111967 n

end

end A127753.P15365135339134954219

/-! ## A127753.P12667053070847091737

`A000032(A002260(n+1))*A111967(n)`
-/

namespace A127753.P12667053070847091737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002260 (n + 1)).toNat * A111967 n

end

end A127753.P12667053070847091737

/-! ## A127753.P7295924852443748569

`A000032(A131818(n+1))*A111967(n)`
-/

namespace A127753.P7295924852443748569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A131818 (n + 1)).toNat * A111967 n

end

end A127753.P7295924852443748569

/-! ## A127753.P10763517062655023584

`A000032(A134868(n+1))*A111967(n)`
-/

namespace A127753.P10763517062655023584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A134868 (n + 1)).toNat * A111967 n

end

end A127753.P10763517062655023584

/-! ## A127753.P2197834508578551614

`A000032(A135223(n+1))*A111967(n)`
-/

namespace A127753.P2197834508578551614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A135223 (n + 1)).toNat * A111967 n

end

end A127753.P2197834508578551614

/-! ## A127753.P13326259732519812544

`A000032(sqrt(A133819(n+1)))*A111967(n)`
-/

namespace A127753.P13326259732519812544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A111967 n

end

end A127753.P13326259732519812544

/-! ## A127753.P4574444037903779822

`A000032(A097285(2*n+1))*A111967(n)`
-/

namespace A127753.P4574444037903779822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A097285 (2 * n + 1)).toNat * A111967 n

end

end A127753.P4574444037903779822

/-!
# A127754: Row sums of inverse of number triangle A(n,k) = 1/L(n+1) if k <= n <= 2k, 0 otherwise, where L(n) = A000032(n).

The programs for A127754, there is no canonical definition to state claims against.
-/

/-! ## A127754.P7965892270286665562

`Δ[a(floor(n/2))+round(ϕ^n)]` with `a(0)=0, a(1)=1`
-/

namespace A127754.P7965892270286665562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127754.P7965892270286665562

/-! ## A127754.P10674906686857568422

`Δ[A000032(n)+a(floor(n/2))]` with `a(0)=0`
-/

namespace A127754.P10674906686857568422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000032 n + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127754.P10674906686857568422

/-! ## A127754.P17594680239509506839

`∑{d}[A006519(n+1), A329723((n+1)/#)]`
-/

namespace A127754.P17594680239509506839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127754.P17594680239509506839

/-!
# A127755: Inverse of number triangle A(n,k) = 1/n! if k <= n <= 2k, 0 otherwise.

The programs for A127755, there is no canonical definition to state claims against.
-/

/-! ## A127755.P12820056521710282989

`(n-C(∑[char[∑[n]]], 2))!*A111967(n)`
-/

namespace A127755.P12820056521710282989
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A111967 n

end

end A127755.P12820056521710282989

/-! ## A127755.P11641350222498799667

`A111967(n)*A233543(n)`
-/

namespace A127755.P11641350222498799667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A233543 n

end

end A127755.P11641350222498799667

/-! ## A127755.P1725443159382324017

`A002262(n)!*A111967(n)`
-/

namespace A127755.P1725443159382324017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A111967 n

end

end A127755.P1725443159382324017

/-! ## A127755.P1745534176465661456

`A163351(n)!*A111967(n)`
-/

namespace A127755.P1745534176465661456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163351 n).toNat : ℤ) * A111967 n

end

end A127755.P1745534176465661456

/-! ## A127755.P15216870193528576939

`A166352(n)!*A111967(n)`
-/

namespace A127755.P15216870193528576939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A166352 n).toNat : ℤ) * A111967 n

end

end A127755.P15216870193528576939

/-! ## A127755.P13223078012564908356

`A298486(n)!*A111967(n)`
-/

namespace A127755.P13223078012564908356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A298486 n).toNat : ℤ) * A111967 n

end

end A127755.P13223078012564908356

/-! ## A127755.P10563534331801921530

`A329221(n)!*A111967(n)`
-/

namespace A127755.P10563534331801921530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A329221 n).toNat : ℤ) * A111967 n

end

end A127755.P10563534331801921530

/-! ## A127755.P7908619689132706735

`log2(A059268(n))!*A111967(n)`
-/

namespace A127755.P7908619689132706735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℤ) * A111967 n

end

end A127755.P7908619689132706735

/-! ## A127755.P7441329282053514268

`A025668(n+1)!*A111967(n)`
-/

namespace A127755.P7441329282053514268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025668 (n + 1)).toNat : ℤ) * A111967 n

end

end A127755.P7441329282053514268

/-! ## A127755.P6795810262716688720

`A025690(n+1)!*A111967(n)`
-/

namespace A127755.P6795810262716688720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025690 (n + 1)).toNat : ℤ) * A111967 n

end

end A127755.P6795810262716688720

/-!
# A127756: Row sums of the inverse of number triangle A(n,k) = 1/n! if k <= n <= 2k, 0 otherwise.

The programs for A127756, there is no canonical definition to state claims against.
-/

/-! ## A127756.P3101864729833413982

`Δ[a(floor(n/2))+(n-1)!]` with `a(0)=10`
-/

namespace A127756.P3101864729833413982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + Nat.factorial ((n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127756.P3101864729833413982

/-! ## A127756.P6732392920287183019

`∑{d}[n+1, A036987(#-1)*A094304((n+1)/#)]`
-/

namespace A127756.P6732392920287183019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A094304 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127756.P6732392920287183019

/-! ## A127756.P9998194277231758120

`A376702(A127768(n))`
-/

namespace A127756.P9998194277231758120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376702 (A127768 n).toNat

end

end A127756.P9998194277231758120

/-!
# A127757: Integer part of Gauss' Arithmetic-Geometric Mean M(1,n).

The programs for A127757, there is no canonical definition to state claims against.
-/

/-! ## A127757.P2852740673808744856

`∑[char[A090852(n+1)-1]]`
-/

namespace A127757.P2852740673808744856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127757.P2852740673808744856

/-! ## A127757.P12782331353217376215

`floor(A076145(n+1)/(n+1))`
-/

namespace A127757.P12782331353217376215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076145 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A127757.P12782331353217376215

/-! ## A127757.P9024282031779998277

`floor(A234362(n+1)/(n+1)²)`
-/

namespace A127757.P9024282031779998277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A234362 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A127757.P9024282031779998277

/-! ## A127757.P6179866237125029599

`∑[char[A023443(A090852(n+1))]]`
-/

namespace A127757.P6179866237125029599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A090852 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127757.P6179866237125029599

/-! ## A127757.P16130563782239992592

`floor(A127763(2*(n+1))/2)`
-/

namespace A127757.P16130563782239992592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127763 (2 * (n + 1)) : ℚ) / 2⌋

end

end A127757.P16130563782239992592

/-! ## A127757.P8770976405118833574

`A004526(A127763(2*(n+1)))`
-/

namespace A127757.P8770976405118833574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A127763 (2 * (n + 1))).toNat

end

end A127757.P8770976405118833574

/-! ## A127757.P15673687298970965622

`A110654(A127763(2*(n+1))-1)`
-/

namespace A127757.P15673687298970965622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A127763 (2 * (n + 1)) - 1).toNat

end

end A127757.P15673687298970965622

/-! ## A127757.P14576560627223527576

`A103221(A081874(n+1))%A102821(n)`
-/

namespace A127757.P14576560627223527576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103221 (A081874 (n + 1)).toNat) (A102821 n)

end

end A127757.P14576560627223527576

/-! ## A127757.P17796574679162267902

`A051953(A141933(n+1))*A103221(A081874(n+1))`
-/

namespace A127757.P17796574679162267902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A141933 (n + 1)).toNat * A103221 (A081874 (n + 1)).toNat

end

end A127757.P17796574679162267902

/-! ## A127757.P14975102388695767975

`A103221(A081874(n+1))*A203640(A032917(n+1))`
-/

namespace A127757.P14975102388695767975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A081874 (n + 1)).toNat * A203640 (A032917 (n + 1)).toNat

end

end A127757.P14975102388695767975

/-!
# A127758: Integer part of Gauss's Arithmetic-Geometric Mean M(1,n^2).

The programs for A127758, there is no canonical definition to state claims against.
-/

/-! ## A127758.P4049494261033755358

`A127757((n+1)²)`
-/

namespace A127758.P4049494261033755358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 ((n + 1) ^ 2)

end

end A127758.P4049494261033755358

/-! ## A127758.P10587465009487652612

`or(char[2], A127757(∑[2*n+1]))`
-/

namespace A127758.P10587465009487652612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A127757 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A127758.P10587465009487652612

/-! ## A127758.P1644701773812118350

`record[A127757(A106466(n)²)]`
-/

namespace A127758.P1644701773812118350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127758.P1644701773812118350

/-! ## A127758.P9248479294189243292

`record[A127757(A117910(n)²)]`
-/

namespace A127758.P9248479294189243292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127758.P9248479294189243292

/-! ## A127758.P3045716840632750670

`record[A127757(A126759(n)²)]`
-/

namespace A127758.P3045716840632750670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127758.P3045716840632750670

/-! ## A127758.P2441500736445987114

`record[A127757(A134478(n)²)]`
-/

namespace A127758.P2441500736445987114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127758.P2441500736445987114

/-! ## A127758.P12570660944680351374

`A028310(A127757(∑[2*n+1]))`
-/

namespace A127758.P12570660944680351374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127757 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A127758.P12570660944680351374

/-! ## A127758.P14629172394125518452

`A029578(2*A127757((n+1)^2))`
-/

namespace A127758.P14629172394125518452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * A127757 ((n + 1) ^ 2)).toNat

end

end A127758.P14629172394125518452

/-! ## A127758.P9162975398594269575

`A127757((n+1)^2)%A000041(n+2)`
-/

namespace A127758.P9162975398594269575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127757 ((n + 1) ^ 2)) (A000041 (n + 2))

end

end A127758.P9162975398594269575

/-! ## A127758.P10960136732974329096

`A007318(C(2, n))*A127757((n+1)^2)`
-/

namespace A127758.P10960136732974329096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A127757 ((n + 1) ^ 2)

end

end A127758.P10960136732974329096

/-! ## A127758.P3747486037286167434

`A127757((n+1)^2)+A008683(4*(n+1))`
-/

namespace A127758.P3747486037286167434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 ((n + 1) ^ 2) + A008683 (4 * (n + 1))

end

end A127758.P3747486037286167434

/-! ## A127758.P1318042616992386437

`A127757((n+1)^2)^A014963(4*n+2)`
-/

namespace A127758.P1318042616992386437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127757 ((n + 1) ^ 2) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A127758.P1318042616992386437

/-! ## A127758.P2237815467965978713

`A000108(C(2, n+2))*A127757((n+1)^2)`
-/

namespace A127758.P2237815467965978713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A127757 ((n + 1) ^ 2)

end

end A127758.P2237815467965978713

/-! ## A127758.P18385339988116671549

`A007318(C(2, n)!)*A127757(∑[2*n+1])`
-/

namespace A127758.P18385339988116671549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Nat.choose 2 n)) * A127757 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127758.P18385339988116671549

/-! ## A127758.P14288242356268301369

`A007318((-1)^n+1)*A127757((n+1)^2)`
-/

namespace A127758.P14288242356268301369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((-1) ^ n + 1).toNat * A127757 ((n + 1) ^ 2)

end

end A127758.P14288242356268301369

/-! ## A127758.P8041906206394286123

`A001221(4-(-1)^n)*A127757((n+1)^2)`
-/

namespace A127758.P8041906206394286123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (4 - (-1) ^ n).toNat * A127757 ((n + 1) ^ 2)

end

end A127758.P8041906206394286123

/-! ## A127758.P10002160393294525048

`A000041(floor(1/(n+1)))*A127757((n+1)^2)`
-/

namespace A127758.P10002160393294525048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat * A127757 ((n + 1) ^ 2)

end

end A127758.P10002160393294525048

/-! ## A127758.P2866568362960148223

`A127757((n+1)^2)+A001222(A007318(C(3, n)))`
-/

namespace A127758.P2866568362960148223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 ((n + 1) ^ 2) + A001222 (A007318 (Nat.choose 3 n)).toNat

end

end A127758.P2866568362960148223

/-! ## A127758.P5978116370397592051

`A127757((n+1)^2)^A007318(A000032(C(2, n+2)))`
-/

namespace A127758.P5978116370397592051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127757 ((n + 1) ^ 2) : ℚ) ^ (A007318 (A000032 (Nat.choose 2 (n + 2))).toNat : ℤ)

end

end A127758.P5978116370397592051

/-!
# A127759: Integer part of Gauss's Arithmetic-Geometric Mean M(1,n^3).

The programs for A127759, there is no canonical definition to state claims against.
-/

/-! ## A127759.P4982520668833628948

`A127757(Δ[∑[n]²])`
-/

namespace A127759.P4982520668833628948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127759.P4982520668833628948

/-! ## A127759.P12449546225310986078

`A127757(floor(sqrt((n+1)^6+3)))%((n+1)*(n+3)²)`
-/

namespace A127759.P12449546225310986078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127757 (Nat.sqrt ((n + 1) ^ 6 + 3))) ((n + 1) * (n + 3) ^ 2 : ℤ)

end

end A127759.P12449546225310986078

/-! ## A127759.P1319180186448730038

`record[A127757(A133823(n))]`
-/

namespace A127759.P1319180186448730038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A133823 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127759.P1319180186448730038

/-! ## A127759.P17629268866090553041

`record[A127757(A117910(n)^3)]`
-/

namespace A127759.P17629268866090553041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A117910 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127759.P17629268866090553041

/-!
# A127760: Integer part of Gauss's Arithmetic-Geometric Mean M(1,n^4).

The programs for A127760, there is no canonical definition to state claims against.
-/

/-! ## A127760.P2730745146043842964

`A127758((n+1)²)`
-/

namespace A127760.P2730745146043842964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 ((n + 1) ^ 2)

end

end A127760.P2730745146043842964

/-! ## A127760.P9072665510642899192

`record[A127758(ceil(C(or(1, n), n)/2)²)]`
-/

namespace A127760.P9072665510642899192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P9072665510642899192

/-! ## A127760.P669221457747374635

`record[A127758(ceil(n/(2*a(n-1)))²)]` with `a(0)=1`
-/

namespace A127760.P669221457747374635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A127758 (⌈(n : ℚ) / (2 * f1 (n - 1) : ℚ)⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P669221457747374635

/-! ## A127760.P8456345103505541825

`record[A127758(A028920(n)²)]`
-/

namespace A127760.P8456345103505541825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A028920 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P8456345103505541825

/-! ## A127760.P14176063612982916717

`record[A127758(A065648(n)²)]`
-/

namespace A127760.P14176063612982916717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P14176063612982916717

/-! ## A127760.P9734054709520369139

`record[A127758(A106466(n)²)]`
-/

namespace A127760.P9734054709520369139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P9734054709520369139

/-! ## A127760.P4122373554506126709

`record[A127758(A117910(n)²)]`
-/

namespace A127760.P4122373554506126709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P4122373554506126709

/-! ## A127760.P2055622434356460864

`record[A127758(A126759(n)²)]`
-/

namespace A127760.P2055622434356460864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P2055622434356460864

/-! ## A127760.P3241788557973704694

`record[A127758(A128227(n)²)]`
-/

namespace A127760.P3241788557973704694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A128227 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P3241788557973704694

/-! ## A127760.P13890639617395489455

`record[A127758(A134478(n)²)]`
-/

namespace A127760.P13890639617395489455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P13890639617395489455

/-! ## A127760.P17645524007147943708

`record[A127758(A274640(n)²)]`
-/

namespace A127760.P17645524007147943708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A274640 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P17645524007147943708

/-! ## A127760.P17050902040731096966

`record[A127758(A286552(n)²)]`
-/

namespace A127760.P17050902040731096966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A286552 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P17050902040731096966

/-! ## A127760.P14543011886335974567

`record[A127758(A291769(n)²)]`
-/

namespace A127760.P14543011886335974567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A291769 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P14543011886335974567

/-! ## A127760.P17376665896342720401

`record[A127758(A328399(n)²)]`
-/

namespace A127760.P17376665896342720401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A328399 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P17376665896342720401

/-! ## A127760.P15684469369678564922

`record[A127758(A344180(n)²)]`
-/

namespace A127760.P15684469369678564922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A344180 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P15684469369678564922

/-! ## A127760.P9406963104352296092

`record[A127758(A008833(n+1))]`
-/

namespace A127760.P9406963104352296092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127760.P9406963104352296092

/-!
# A127761: Integer part of Gauss's Arithmetic-Geometric Mean M(1,n^5).

The programs for A127761, there is no canonical definition to state claims against.
-/

/-! ## A127761.P11508793569850165781

`A127757((n+1)^5)`
-/

namespace A127761.P11508793569850165781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 ((n + 1) ^ 5)

end

end A127761.P11508793569850165781

/-! ## A127761.P10091473842832176886

`∑[A080684(A079583(n)²)]`
-/

namespace A127761.P10091473842832176886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080684 (A079583 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127761.P10091473842832176886

/-!
# A127762: Integer part of Gauss's Arithmetic-Geometric Mean M(2,n^2).

The programs for A127762, there is no canonical definition to state claims against.
-/

/-! ## A127762.P4612404822043717388

`A127763((n+1)²)`
-/

namespace A127762.P4612404822043717388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 ((n + 1) ^ 2)

end

end A127762.P4612404822043717388

/-! ## A127762.P3798784545971951226

`or(char[3], A127763(∑[2*n+1]))`
-/

namespace A127762.P3798784545971951226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A127763 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A127762.P3798784545971951226

/-! ## A127762.P15516976449967628762

`record[A127763(A134478(n)²)]`
-/

namespace A127762.P15516976449967628762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127762.P15516976449967628762

/-! ## A127762.P14604567881036930718

`record[A127763(A274640(n)²)]`
-/

namespace A127762.P14604567881036930718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A274640 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127762.P14604567881036930718

/-! ## A127762.P10535919074542981212

`record[A127763(A286552(n)²)]`
-/

namespace A127762.P10535919074542981212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A286552 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127762.P10535919074542981212

/-! ## A127762.P12373054599454303385

`record[A127763(A328399(n)²)]`
-/

namespace A127762.P12373054599454303385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A328399 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127762.P12373054599454303385

/-! ## A127762.P12683936583527904889

`record[A127763(A344180(n)²)]`
-/

namespace A127762.P12683936583527904889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A344180 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127762.P12683936583527904889

/-! ## A127762.P6322004851868954474

`A001281(2*A127763(∑[2*n+1]))`
-/

namespace A127762.P6322004851868954474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A127763 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A127762.P6322004851868954474

/-! ## A127762.P7557868838170579918

`A000027(A127763((2*n-(n-1))²))`
-/

namespace A127762.P7557868838170579918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A127763 (((2 * n : ℤ) - ((n : ℤ) - 1)) ^ 2).toNat).toNat

end

end A127762.P7557868838170579918

/-! ## A127762.P3165847107486116770

`A127763(∑[2*n+1])%A139607(n)`
-/

namespace A127762.P3165847107486116770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127763 (∑ j ∈ Finset.range (n + 1), f1 j)) (A139607 n)

end

end A127762.P3165847107486116770

/-! ## A127762.P13880397592759405391

`gcd(A000038(n), A127763(∑[2*n+1]))`
-/

namespace A127762.P13880397592759405391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127763 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A127762.P13880397592759405391

/-! ## A127762.P5785673839846664380

`A007318(C(2, n))*A127763(∑[2*n+1])`
-/

namespace A127762.P5785673839846664380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A127763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127762.P5785673839846664380

/-! ## A127762.P10055477473932079245

`A014963(6*(n+1))*A127763(∑[2*n+1])`
-/

namespace A127762.P10055477473932079245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A127763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127762.P10055477473932079245

/-! ## A127762.P11384094202735331382

`A127763(∑[2*n+1])+A001222(gcd(n, n+1))`
-/

namespace A127762.P11384094202735331382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (∑ j ∈ Finset.range (n + 1), f1 j) + A001222 (Nat.gcd n (n + 1))

end

end A127762.P11384094202735331382

/-! ## A127762.P4046713647791258222

`A007318((n%2)^n)*A127763(∑[2*n+1])`
-/

namespace A127762.P4046713647791258222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n % 2) ^ n) * A127763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127762.P4046713647791258222

/-!
# A127763: Integer part of Gauss's Arithmetic-Geometric Mean M(2,n).

The programs for A127763, there is no canonical definition to state claims against.
-/

/-! ## A127763.P14683584539121787372

`floor(A231603(n+1)/(n+1))`
-/

namespace A127763.P14683584539121787372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231603 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A127763.P14683584539121787372

/-! ## A127763.P1925757983381509232

`A138194(A110882(n)+2+n)`
-/

namespace A127763.P1925757983381509232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A110882 n + 2 + (n : ℤ)).toNat

end

end A127763.P1925757983381509232

/-! ## A127763.P5257908664314369282

`A048766(A007504(n)+A005886(n))`
-/

namespace A127763.P5257908664314369282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A007504 n + A005886 n).toNat

end

end A127763.P5257908664314369282

/-! ## A127763.P11902683219996379822

`A048766(A315503(n)+A175965(n+1))`
-/

namespace A127763.P11902683219996379822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A315503 n + A175965 (n + 1)).toNat

end

end A127763.P11902683219996379822

/-! ## A127763.P5437189403596390391

`A048766(A315748(n)+A175965(n+1))`
-/

namespace A127763.P5437189403596390391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A315748 n + A175965 (n + 1)).toNat

end

end A127763.P5437189403596390391

/-! ## A127763.P9139786840216355537

`A048766(A005886(n)-(1-A007504(n)))`
-/

namespace A127763.P9139786840216355537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A005886 n - (1 - A007504 n)).toNat

end

end A127763.P9139786840216355537

/-! ## A127763.P3586335922655822066

`A048766(A016789(A285762(n+1))+A007504(n))`
-/

namespace A127763.P3586335922655822066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A016789 (A285762 (n + 1)).toNat + A007504 n).toNat

end

end A127763.P3586335922655822066

/-! ## A127763.P8737163273206423971

`A048766(∑[A005408(A320324(n+1))])`
-/

namespace A127763.P8737163273206423971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A320324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127763.P8737163273206423971

/-! ## A127763.P10588920523807437309

`A048766(A135673(n+1)+∑[A186148(n+1)])`
-/

namespace A127763.P10588920523807437309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A135673 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127763.P10588920523807437309

/-!
# A127764: Integer part of Gauss's Arithmetic-Geometric Mean M(2,n^3).

The programs for A127764, there is no canonical definition to state claims against.
-/

/-! ## A127764.P17985454520342816814

`A127763(Δ[∑[n]²])`
-/

namespace A127764.P17985454520342816814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127764.P17985454520342816814

/-! ## A127764.P2694276618218769859

`A127763(floor(sqrt((n+1)^6+3)))-C(2, n+2)`
-/

namespace A127764.P2694276618218769859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (Nat.sqrt ((n + 1) ^ 6 + 3)) - (Nat.choose 2 (n + 2) : ℤ)

end

end A127764.P2694276618218769859

/-! ## A127764.P14861792211478185062

`record[A127763(A133823(n))]`
-/

namespace A127764.P14861792211478185062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A133823 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127764.P14861792211478185062

/-! ## A127764.P9446707776197875407

`A000027(A127763(sqrt((n+1)²^3)))`
-/

namespace A127764.P9446707776197875407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A127763 (SequenceMachineLib.roundAway (Real.sqrt (((n + 1) ^ 2) ^ 3 : ℝ))).toNat).toNat

end

end A127764.P9446707776197875407

/-! ## A127764.P9614976933850944961

`A027642(2*n+3)*A127763(A000578(n+1))`
-/

namespace A127764.P9614976933850944961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 3) * A127763 (A000578 (n + 1)).toNat

end

end A127764.P9614976933850944961

/-!
# A127765: Integer part of Gauss's Arithmetic-Geometric Mean M(2,n^4).

The programs for A127765, there is no canonical definition to state claims against.
-/

/-! ## A127765.P5352219479097462780

`A127762((n+1)²)`
-/

namespace A127765.P5352219479097462780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 ((n + 1) ^ 2)

end

end A127765.P5352219479097462780

/-! ## A127765.P10162260030959551103

`or(char[1], A127762(∑[2*n+1]))`
-/

namespace A127765.P10162260030959551103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A127762 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A127765.P10162260030959551103

/-! ## A127765.P14588574412418562211

`record[A127762(A106466(n)²)]`
-/

namespace A127765.P14588574412418562211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127765.P14588574412418562211

/-! ## A127765.P8323551249633872834

`record[A127762(A117910(n)²)]`
-/

namespace A127765.P8323551249633872834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127765.P8323551249633872834

/-! ## A127765.P4125536316422375558

`record[A127762(A126759(n)²)]`
-/

namespace A127765.P4125536316422375558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127765.P4125536316422375558

/-! ## A127765.P1241763231772021407

`record[A127762(A134478(n)²)]`
-/

namespace A127765.P1241763231772021407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127765.P1241763231772021407

/-! ## A127765.P8711781610483762475

`A127762(∑[2*n+1])%A016901(n)`
-/

namespace A127765.P8711781610483762475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127762 (∑ j ∈ Finset.range (n + 1), f1 j)) (A016901 n)

end

end A127765.P8711781610483762475

/-! ## A127765.P15633161414157025583

`A127762(∑[2*n+1])+A000007(n+1)`
-/

namespace A127765.P15633161414157025583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A127765.P15633161414157025583

/-! ## A127765.P18246855006422364897

`A127762(∑[2*n+1])+A000038(n+1)`
-/

namespace A127765.P18246855006422364897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (∑ j ∈ Finset.range (n + 1), f1 j) + A000038 (n + 1)

end

end A127765.P18246855006422364897

/-! ## A127765.P16941416395126531583

`A000034(2*n)*A127762(∑[2*n+1])`
-/

namespace A127765.P16941416395126531583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A127762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127765.P16941416395126531583

/-! ## A127765.P4278141341702297564

`A007318(C(2, n))*A127762(∑[2*n+1])`
-/

namespace A127765.P4278141341702297564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A127762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127765.P4278141341702297564

/-! ## A127765.P13799276652149048452

`A127762(∑[2*n+1])+A036987(2*(n+1))`
-/

namespace A127765.P13799276652149048452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (∑ j ∈ Finset.range (n + 1), f1 j) + A036987 (2 * (n + 1))

end

end A127765.P13799276652149048452

/-! ## A127765.P9801623280587891499

`A127762(∑[2*n+1])+A008683(4*(n+1))`
-/

namespace A127765.P9801623280587891499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (4 * (n + 1))

end

end A127765.P9801623280587891499

/-! ## A127765.P7307836179563441011

`A040001(2*n+1)*A127762(∑[2*n+1])`
-/

namespace A127765.P7307836179563441011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A127762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127765.P7307836179563441011

/-! ## A127765.P17653773403114576655

`A127762(∑[2*n+1])^A014963(4*n+2)`
-/

namespace A127765.P17653773403114576655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127762 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A127765.P17653773403114576655

/-! ## A127765.P7775977407462807778

`A000108(C(2, n+2))*A127762(∑[2*n+1])`
-/

namespace A127765.P7775977407462807778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A127762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127765.P7775977407462807778

/-! ## A127765.P996026564944290362

`A000010(ceil(2/(n+1)))*A127762(∑[2*n+1])`
-/

namespace A127765.P996026564944290362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat * A127762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127765.P996026564944290362

/-! ## A127765.P11957909328528463938

`A127762(∑[2*n+1])/A007318(floor(2/(n+1)))`
-/

namespace A127765.P11957909328528463938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127762 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A007318 ⌊2 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A127765.P11957909328528463938

/-! ## A127765.P9989492210244270139

`record[A127762(A000290(((n+1)/2^val(n+1, 2)+1)/2))]`
-/

namespace A127765.P9989492210244270139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127762 (A000290 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127765.P9989492210244270139

/-!
# A127766: Integer part of Gauss's Arithmetic-Geometric Mean M(2,n^5).

The programs for A127766, there is no canonical definition to state claims against.
-/

/-! ## A127766.P8823567309729291565

`A127763((n+1)^5)`
-/

namespace A127766.P8823567309729291565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 ((n + 1) ^ 5)

end

end A127766.P8823567309729291565

/-!
# A127767: Inverse of number triangle A(n,k) = 1/C(n) if k <= n <= 2k, 0 otherwise, where C(n) = A000108(n).

The programs for A127767, there is no canonical definition to state claims against.
-/

/-! ## A127767.P3899978794274379641

`A000108(A002262(n))*A111967(n)`
-/

namespace A127767.P3899978794274379641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A111967 n

end

end A127767.P3899978794274379641

/-! ## A127767.P10897561486406841739

`A028364(A112367(n))*A111967(n)`
-/

namespace A127767.P10897561486406841739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A112367 n).toNat * A111967 n

end

end A127767.P10897561486406841739

/-! ## A127767.P1227442868777736791

`A000108(A329221(n))*A111967(n)`
-/

namespace A127767.P1227442868777736791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A329221 n).toNat * A111967 n

end

end A127767.P1227442868777736791

/-! ## A127767.P18376654579114515804

`A000108(log2(A059268(n)))*A111967(n)`
-/

namespace A127767.P18376654579114515804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A111967 n

end

end A127767.P18376654579114515804

/-! ## A127767.P16424293839359449619

`A000108(A025668(n+1))*A111967(n)`
-/

namespace A127767.P16424293839359449619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025668 (n + 1)).toNat * A111967 n

end

end A127767.P16424293839359449619

/-! ## A127767.P1139479973364947695

`A111967(n)*A120588(A002260(n+1))`
-/

namespace A127767.P1139479973364947695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A120588 (A002260 (n + 1)).toNat

end

end A127767.P1139479973364947695

/-! ## A127767.P15953171776401851753

`A000108(A144328(n+1))*A111967(n)`
-/

namespace A127767.P15953171776401851753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A144328 (n + 1)).toNat * A111967 n

end

end A127767.P15953171776401851753

/-! ## A127767.P5927667083230147492

`A000108(val(A036561(n), 3))*A111967(n)`
-/

namespace A127767.P5927667083230147492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (A036561 n).toNat 3) * A111967 n

end

end A127767.P5927667083230147492

/-!
# A127768: Row sums of the inverse of number triangle A(n,k) = 1/C(n) if k <= n <= 2k, 0 otherwise, where C(n) = A000108(n).

The programs for A127768, there is no canonical definition to state claims against.
-/

/-! ## A127768.P11164939752173554272

`Δ[a(floor(n/2))-A115140(n)]` with `a(0)=0`
-/

namespace A127768.P11164939752173554272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127768.P11164939752173554272

/-! ## A127768.P9272978750430847381

`Δ[a(floor(n/2))-A115141(n)]` with `a(0)=0, a(1)=1`
-/

namespace A127768.P9272978750430847381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - A115141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127768.P9272978750430847381

/-! ## A127768.P8596266599747669642

`Δ[a(floor(n/2))+A000108(n-1)]` with `a(0)=0`
-/

namespace A127768.P8596266599747669642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + A000108 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127768.P8596266599747669642

/-! ## A127768.P4474453101948710200

`A127770(n)-A000245(2*n)`
-/

namespace A127768.P4474453101948710200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127770 n - A000245 (2 * n)

end

end A127768.P4474453101948710200

/-!
# A127769: a(n) = 3*C(4*n-2,2*n)/(2*n+1) - 2*0^n.

The programs for A127769, there is no canonical definition to state claims against.
-/

/-! ## A127769.P5936555344405460396

`A127768(2*n)`
-/

namespace A127769.P5936555344405460396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127768 (2 * n)

end

end A127769.P5936555344405460396

/-! ## A127769.P14692784666129228904

`Δ[record[∑[A090192(n)]]]`
-/

namespace A127769.P14692784666129228904
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127769.P14692784666129228904

/-! ## A127769.P10452130855656153065

`A000245(abs(1-2*n))`
-/

namespace A127769.P10452130855656153065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - (2 * n : ℤ)|.toNat

end

end A127769.P10452130855656153065

/-! ## A127769.P17355779857135959828

`Δ[record[∑[A182492(n+2)]]]`
-/

namespace A127769.P17355779857135959828
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127769.P17355779857135959828

/-! ## A127769.P16384011582465818256

`A000245(comp[2*(n+1)])+floor(acot(n))`
-/

namespace A127769.P16384011582465818256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A127769.P16384011582465818256

/-! ## A127769.P5230696356402052279

`A071724(A004273(n))`
-/

namespace A127769.P5230696356402052279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A004273 n).toNat

end

end A127769.P5230696356402052279

/-! ## A127769.P9497283598091037008

`A071724(A055086(n²))`
-/

namespace A127769.P9497283598091037008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A055086 (n ^ 2)).toNat

end

end A127769.P9497283598091037008

/-! ## A127769.P13200224005953719777

`A071724(A316355(n²))`
-/

namespace A127769.P13200224005953719777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A316355 (n ^ 2)).toNat

end

end A127769.P13200224005953719777

/-! ## A127769.P11162505690657270577

`A071724(record[A006257(n)])`
-/

namespace A127769.P11162505690657270577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127769.P11162505690657270577

/-! ## A127769.P16322717489215739899

`A071724(record[A026741(n)])`
-/

namespace A127769.P16322717489215739899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127769.P16322717489215739899

/-!
# A127770: a(n) = A127768(2n+1). A bisection of the row sums of the inverse of number triangle A(n,k) = 1/C(n) if k <= n <= 2k, 0 otherwise, where C(n) = A000108(n).

The programs for A127770, there is no canonical definition to state claims against.
-/

/-! ## A127770.P10045747385401038701

`A127768(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127770.P10045747385401038701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127768 (2 * n + 1)

end

end A127770.P10045747385401038701

/-! ## A127770.P6799554651860715293

`A127768(record[xor(1, n)])`
-/

namespace A127770.P6799554651860715293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127768 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A127770.P6799554651860715293

/-! ## A127770.P8631533728402405993

`record[A127768(gcd(n, ∑[n]))]`
-/

namespace A127770.P8631533728402405993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127768 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127770.P8631533728402405993

/-! ## A127770.P16824067802924138718

`record[A127768(lcm(8, n)/8)]`
-/

namespace A127770.P16824067802924138718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127768 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127770.P16824067802924138718

/-! ## A127770.P18069266570484506291

`record[A127768(A127775(n+1))]`
-/

namespace A127770.P18069266570484506291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127768 (A127775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127770.P18069266570484506291

/-!
# A127771: Inverse of number triangle A(n,k) = 1/Euler_phi(n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127771, there is no canonical definition to state claims against.
-/

/-! ## A127771.P9607495548637089360

`A054526(n+1)*A111967(n)`
-/

namespace A127771.P9607495548637089360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A111967 n

end

end A127771.P9607495548637089360

/-! ## A127771.P7696192401383175050

`A111967(n)*A349137(A054582(n))`
-/

namespace A127771.P7696192401383175050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A349137 (A054582 n).toNat

end

end A127771.P7696192401383175050

/-! ## A127771.P7904292913504608326

`A000010(A002260(n+1))*A111967(n)`
-/

namespace A127771.P7904292913504608326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A111967 n

end

end A127771.P7904292913504608326

/-! ## A127771.P3036376565253268379

`A000010(A002262(n)+1)*A111967(n)`
-/

namespace A127771.P3036376565253268379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * A111967 n

end

end A127771.P3036376565253268379

/-! ## A127771.P12560285988037748889

`A000010(A131818(n+1))*A111967(n)`
-/

namespace A127771.P12560285988037748889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A131818 (n + 1)).toNat * A111967 n

end

end A127771.P12560285988037748889

/-! ## A127771.P1907182109848771136

`A000010(A134868(n+1))*A111967(n)`
-/

namespace A127771.P1907182109848771136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134868 (n + 1)).toNat * A111967 n

end

end A127771.P1907182109848771136

/-! ## A127771.P618518067996809831

`A000010(A097285(Δ[n²]))*A111967(n)`
-/

namespace A127771.P618518067996809831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A111967 n

end

end A127771.P618518067996809831

/-!
# A127772: Row sums of inverse of number triangle A(n,k) = 1/Euler_phi(n+1) if k <= n <= 2k, 0 otherwise.

The programs for A127772, there is no canonical definition to state claims against.
-/

/-! ## A127772.P96699009465929209

`Δ[A000010(n)+a(floor(n/2))]` with `a(0)=0`
-/

namespace A127772.P96699009465929209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 n + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127772.P96699009465929209

/-! ## A127772.P5631185432762598833

`Δ[A225530(n)+a(A004526(n))]` with `a(0)=0, a(1)=1`
-/

namespace A127772.P5631185432762598833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A225530 n + f1 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127772.P5631185432762598833

/-!
# A127773: Triangle read by rows: row n consists of n-1 zeros followed by n(n+1)/2.

The programs for A127773, the canonical program `A127773.P3035698408442550692` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127773 has offset 1).

The definition of A127773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127773.P13805261087048277859

`(n+1)*char[∑[n-1]]`
-/

namespace A127773.P13805261087048277859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A127773.P13805261087048277859

namespace A127773

/-- `(n+1)*char[∑[n-1]]` -/
def P13805261087048277859.Spec : Prop :=
  ∀ n, (P13805261087048277859.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P16393786745926072768

`ceil(char[∑[n-1]]/acot(n))`
-/

namespace A127773.P16393786745926072768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

end

end A127773.P16393786745926072768

namespace A127773

/-- `ceil(char[∑[n-1]]/acot(n))` -/
def P16393786745926072768.Spec : Prop :=
  ∀ n, P16393786745926072768.a n = A127773 (n + 1)

end A127773

/-! ## A127773.P3229438013155874996

`and(n+1, -char[∑[n-1]])`
-/

namespace A127773.P3229438013155874996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A127773.P3229438013155874996

namespace A127773

/-- `and(n+1, -char[∑[n-1]])` -/
def P3229438013155874996.Spec : Prop :=
  ∀ n, P3229438013155874996.a n = A127773 (n + 1)

end A127773

/-! ## A127773.P2185245711489814040

`-(xor(n, -1)*char[∑[n-1]])`
-/

namespace A127773.P2185245711489814040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A127773.P2185245711489814040

namespace A127773

/-- `-(xor(n, -1)*char[∑[n-1]])` -/
def P2185245711489814040.Spec : Prop :=
  ∀ n, P2185245711489814040.a n = A127773 (n + 1)

end A127773

/-! ## A127773.P9482791480180168278

`C(C(col(n)+2, row(n)+1), 2)`
-/

namespace A127773.P9482791480180168278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (SequenceMachineLib.triCol n + 2) (SequenceMachineLib.triRow n + 1)) 2

end

end A127773.P9482791480180168278

namespace A127773

/-- `C(C(col(n)+2, row(n)+1), 2)` -/
def P9482791480180168278.Spec : Prop :=
  ∀ n, (P9482791480180168278.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P7691318774228444931

`lcm(n+1, Δ[round(sqrt(2*n+1))])`
-/

namespace A127773.P7691318774228444931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A127773.P7691318774228444931

namespace A127773

/-- `lcm(n+1, Δ[round(sqrt(2*n+1))])` -/
def P7691318774228444931.Spec : Prop :=
  ∀ n, (P7691318774228444931.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P3035698408442550692

`C(Δ[A061885(n)], 2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127773

/-- `C(Δ[A061885(n)], 2)` -/
def P3035698408442550692.Spec : Prop :=
  ∀ n, (P3035698408442550692.a n : ℤ) = A127773 (n + 1)

theorem P3035698408442550692.correct : P3035698408442550692.Spec := by
  intro n
  simp only [A127773, Nat.add_sub_cancel]

end A127773

/-! ## A127773.P1195833174721634503

`C(A127648(n)+1, 2)`
-/

namespace A127773.P1195833174721634503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127648 n + 1).toNat 2

end

end A127773.P1195833174721634503

namespace A127773

/-- `C(A127648(n)+1, 2)` -/
def P1195833174721634503.Spec : Prop :=
  ∀ n, (P1195833174721634503.a n : ℤ) = A127773 (n + 1)

theorem P1195833174721634503.correct : P1195833174721634503.Spec := by
  intro n
  simp only [A127773, Nat.add_sub_cancel, A127773.P1195833174721634503.a, A127773.P3035698408442550692.f1, A127773.P3035698408442550692.a, A061885, A061885.P4567764245783084005.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127773

/-! ## A127773.P13162084955276090345

`C(n+1, A060923(n))`
-/

namespace A127773.P13162084955276090345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A060923 n).toNat

end

end A127773.P13162084955276090345

namespace A127773

/-- `C(n+1, A060923(n))` -/
def P13162084955276090345.Spec : Prop :=
  ∀ n, (P13162084955276090345.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P7009164205982698554

`C(n+1, A117207(n))`
-/

namespace A127773.P7009164205982698554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A117207 n).toNat

end

end A127773.P7009164205982698554

namespace A127773

/-- `C(n+1, A117207(n))` -/
def P7009164205982698554.Spec : Prop :=
  ∀ n, (P7009164205982698554.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P13132523752169078633

`C(n+1, A047858(n)²)`
-/

namespace A127773.P13132523752169078633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A047858 n ^ 2).toNat

end

end A127773.P13132523752169078633

namespace A127773

/-- `C(n+1, A047858(n)²)` -/
def P13132523752169078633.Spec : Prop :=
  ∀ n, (P13132523752169078633.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P4793333501142870594

`C(n+1, A048472(n)²)`
-/

namespace A127773.P4793333501142870594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A048472 n ^ 2).toNat

end

end A127773.P4793333501142870594

namespace A127773

/-- `C(n+1, A048472(n)²)` -/
def P4793333501142870594.Spec : Prop :=
  ∀ n, (P4793333501142870594.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P1346037928848149825

`C(n+1, A048483(n)²)`
-/

namespace A127773.P1346037928848149825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A048483 n ^ 2).toNat

end

end A127773.P1346037928848149825

namespace A127773

/-- `C(n+1, A048483(n)²)` -/
def P1346037928848149825.Spec : Prop :=
  ∀ n, (P1346037928848149825.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P14536178836732908915

`C(n+1, A090850(n)²)`
-/

namespace A127773.P14536178836732908915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A090850 n ^ 2).toNat

end

end A127773.P14536178836732908915

namespace A127773

/-- `C(n+1, A090850(n)²)` -/
def P14536178836732908915.Spec : Prop :=
  ∀ n, (P14536178836732908915.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P16094659301886103211

`C(n+1, A103316(n)²)`
-/

namespace A127773.P16094659301886103211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A103316 n ^ 2).toNat

end

end A127773.P16094659301886103211

namespace A127773

/-- `C(n+1, A103316(n)²)` -/
def P16094659301886103211.Spec : Prop :=
  ∀ n, (P16094659301886103211.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P7860823846769145135

`C(A136521(n)-1+n, n)`
-/

namespace A127773.P7860823846769145135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A136521 n - 1 + (n : ℤ)).toNat n

end

end A127773.P7860823846769145135

namespace A127773

/-- `C(A136521(n)-1+n, n)` -/
def P7860823846769145135.Spec : Prop :=
  ∀ n, (P7860823846769145135.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P17605097198855072953

`C(n+1, A086270(n+1)²)`
-/

namespace A127773.P17605097198855072953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A086270 (n + 1) ^ 2).toNat

end

end A127773.P17605097198855072953

namespace A127773

/-- `C(n+1, A086270(n+1)²)` -/
def P17605097198855072953.Spec : Prop :=
  ∀ n, (P17605097198855072953.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P3801753928685155296

`C(n+1, A007318(comp[∑[n]])²)`
-/

namespace A127773.P3801753928685155296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A127773.P3801753928685155296

namespace A127773

/-- `C(n+1, A007318(comp[∑[n]])²)` -/
def P3801753928685155296.Spec : Prop :=
  ∀ n, (P3801753928685155296.a n : ℤ) = A127773 (n + 1)

end A127773

/-! ## A127773.P1228589198517089725

`A000217(A127648(n))`
-/

namespace A127773.P1228589198517089725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A127648 n).toNat

end

end A127773.P1228589198517089725

namespace A127773

/-- `A000217(A127648(n))` -/
def P1228589198517089725.Spec : Prop :=
  ∀ n, P1228589198517089725.a n = A127773 (n + 1)

end A127773

/-! ## A127773.P1930535061089995844

`A001971(A198954(n+1))`
-/

namespace A127773.P1930535061089995844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A198954 (n + 1)).toNat

end

end A127773.P1930535061089995844

namespace A127773

/-- `A001971(A198954(n+1))` -/
def P1930535061089995844.Spec : Prop :=
  ∀ n, P1930535061089995844.a n = A127773 (n + 1)

end A127773

/-!
# A127774: Triangle read by rows: row n consists of n-1 zeros followed by A000292(n).

The programs for A127774, the canonical program `A127774.P7439703218120216971` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127774 has offset 1).

The definition of A127774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127774.P12873547006908126420

`C(col(n)+3, 3)*C(col(n), row(n))`
-/

namespace A127774.P12873547006908126420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 3) 3 * Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)

end

end A127774.P12873547006908126420

namespace A127774

/-- `C(col(n)+3, 3)*C(col(n), row(n))` -/
def P12873547006908126420.Spec : Prop :=
  ∀ n, (P12873547006908126420.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P8426421653576404267

`∑[(n+1)*char[∑[n-1]]]*char[∑[n-1]]`
-/

namespace A127774.P8426421653576404267
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f4 j = (n : ℤ) then 1 else 0)

end

end A127774.P8426421653576404267

namespace A127774

/-- `∑[(n+1)*char[∑[n-1]]]*char[∑[n-1]]` -/
def P8426421653576404267.Spec : Prop :=
  ∀ n, (P8426421653576404267.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P7439703218120216971

`C(A127648(n)+2, 3)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127774

/-- `C(A127648(n)+2, 3)` -/
def P7439703218120216971.Spec : Prop :=
  ∀ n, (P7439703218120216971.a n : ℤ) = A127774 (n + 1)

theorem P7439703218120216971.correct : P7439703218120216971.Spec := by
  intro n
  simp only [A127774, Nat.add_sub_cancel]

end A127774

/-! ## A127774.P12281890100872597058

`C(Δ[A061885(n)]+1, 3)`
-/

namespace A127774.P12281890100872597058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 3

end

end A127774.P12281890100872597058

namespace A127774

/-- `C(Δ[A061885(n)]+1, 3)` -/
def P12281890100872597058.Spec : Prop :=
  ∀ n, (P12281890100872597058.a n : ℤ) = A127774 (n + 1)

theorem P12281890100872597058.correct : P12281890100872597058.Spec := by
  intro n
  simp only [A127774, Nat.add_sub_cancel, A127774.P12281890100872597058.f1, A127774.P12281890100872597058.a, A127774.P7439703218120216971.a, A061885, A061885.P4567764245783084005.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127774

/-! ## A127774.P18208534220499073816

`A000292(A127648(n))`
-/

namespace A127774.P18208534220499073816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A127648 n).toNat

end

end A127774.P18208534220499073816

namespace A127774

/-- `A000292(A127648(n))` -/
def P18208534220499073816.Spec : Prop :=
  ∀ n, P18208534220499073816.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P9341249489399735060

`Δ[A145126(A003056(n))]`
-/

namespace A127774.P9341249489399735060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127774.P9341249489399735060

namespace A127774

/-- `Δ[A145126(A003056(n))]` -/
def P9341249489399735060.Spec : Prop :=
  ∀ n, P9341249489399735060.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P4636492516854872992

`A160790(A127775(n+1))`
-/

namespace A127774.P4636492516854872992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 (A127775 (n + 1)).toNat

end

end A127774.P4636492516854872992

namespace A127774

/-- `A160790(A127775(n+1))` -/
def P4636492516854872992.Spec : Prop :=
  ∀ n, P4636492516854872992.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P7629760856782710370

`A000292(1-Δ[A002260(n+1)])`
-/

namespace A127774.P7629760856782710370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A127774.P7629760856782710370

namespace A127774

/-- `A000292(1-Δ[A002260(n+1)])` -/
def P7629760856782710370.Spec : Prop :=
  ∀ n, P7629760856782710370.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P9839789793633361771

`A000292(char[∑[n-1]]*A053219(n+1))`
-/

namespace A127774.P9839789793633361771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A053219 (n + 1)).toNat

end

end A127774.P9839789793633361771

namespace A127774

/-- `A000292(char[∑[n-1]]*A053219(n+1))` -/
def P9839789793633361771.Spec : Prop :=
  ∀ n, P9839789793633361771.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P11265884046512876897

`C(A131033(n+2), 3)`
-/

namespace A127774.P11265884046512876897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131033 (n + 2)).toNat 3

end

end A127774.P11265884046512876897

namespace A127774

/-- `C(A131033(n+2), 3)` -/
def P11265884046512876897.Spec : Prop :=
  ∀ n, (P11265884046512876897.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P9170954205844680138

`C(Δ[A004202(n+1)], 3)`
-/

namespace A127774.P9170954205844680138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 3

end

end A127774.P9170954205844680138

namespace A127774

/-- `C(Δ[A004202(n+1)], 3)` -/
def P9170954205844680138.Spec : Prop :=
  ∀ n, (P9170954205844680138.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P4317990274778903675

`C(Δ[A064801(n+1)], 3)`
-/

namespace A127774.P4317990274778903675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 3

end

end A127774.P4317990274778903675

namespace A127774

/-- `C(Δ[A064801(n+1)], 3)` -/
def P4317990274778903675.Spec : Prop :=
  ∀ n, (P4317990274778903675.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P7155625742978558744

`C(Δ[A025581(n)]+2, 3)`
-/

namespace A127774.P7155625742978558744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 2).toNat 3

end

end A127774.P7155625742978558744

namespace A127774

/-- `C(Δ[A025581(n)]+2, 3)` -/
def P7155625742978558744.Spec : Prop :=
  ∀ n, (P7155625742978558744.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P18043474125010385195

`C(3-Δ[A002262(n)], 3)`
-/

namespace A127774.P18043474125010385195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 - (f1 (n + 1) - f1 n)).toNat 3

end

end A127774.P18043474125010385195

namespace A127774

/-- `C(3-Δ[A002262(n)], 3)` -/
def P18043474125010385195.Spec : Prop :=
  ∀ n, (P18043474125010385195.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P16346450461302154650

`C(Δ[A004736(n+1)]+2, 3)`
-/

namespace A127774.P16346450461302154650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 2).toNat 3

end

end A127774.P16346450461302154650

namespace A127774

/-- `C(Δ[A004736(n+1)]+2, 3)` -/
def P16346450461302154650.Spec : Prop :=
  ∀ n, (P16346450461302154650.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P7809056848121891124

`C(Δ[val(A043569(n+1), 2)]+2, 3)`
-/

namespace A127774.P7809056848121891124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat 3

end

end A127774.P7809056848121891124

namespace A127774

/-- `C(Δ[val(A043569(n+1), 2)]+2, 3)` -/
def P7809056848121891124.Spec : Prop :=
  ∀ n, (P7809056848121891124.a n : ℤ) = A127774 (n + 1)

end A127774

/-! ## A127774.P12890736827745278225

`A000292(Δ[A057944(n)])`
-/

namespace A127774.P12890736827745278225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (f1 (n + 1) - f1 n).toNat

end

end A127774.P12890736827745278225

namespace A127774

/-- `A000292(Δ[A057944(n)])` -/
def P12890736827745278225.Spec : Prop :=
  ∀ n, P12890736827745278225.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P4618561653173839084

`A000292(1-Δ[A002262(n)])`
-/

namespace A127774.P4618561653173839084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A127774.P4618561653173839084

namespace A127774

/-- `A000292(1-Δ[A002262(n)])` -/
def P4618561653173839084.Spec : Prop :=
  ∀ n, P4618561653173839084.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P3613088187194447815

`Δ[A000332(A003057(n+2)+1)]`
-/

namespace A127774.P3613088187194447815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A003057 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127774.P3613088187194447815

namespace A127774

/-- `Δ[A000332(A003057(n+2)+1)]` -/
def P3613088187194447815.Spec : Prop :=
  ∀ n, P3613088187194447815.a n = A127774 (n + 1)

end A127774

/-! ## A127774.P12174965063737817962

`A000292(A057944(n+1)-A057944(n))`
-/

namespace A127774.P12174965063737817962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057944 (n + 1) - A057944 n).toNat

end

end A127774.P12174965063737817962

namespace A127774

/-- `A000292(A057944(n+1)-A057944(n))` -/
def P12174965063737817962.Spec : Prop :=
  ∀ n, P12174965063737817962.a n = A127774 (n + 1)

end A127774

/-!
# A127775: Triangle read by rows: row n consists of n-1 zeros followed by 2n-1.

The programs for A127775, the canonical program `A127775.P8714129053454180162` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127775 has offset 1).

The definition of A127775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127775.P5970660926795443114

`Δ[row(n)²]`
-/

namespace A127775.P5970660926795443114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127775.P5970660926795443114

namespace A127775

/-- `Δ[row(n)²]` -/
def P5970660926795443114.Spec : Prop :=
  ∀ n, P5970660926795443114.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P14412679469009286149

`Δ[floor(sqrt(∪[2*n, n²]))²]`
-/

namespace A127775.P14412679469009286149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127775.P14412679469009286149

namespace A127775

/-- `Δ[floor(sqrt(∪[2*n, n²]))²]` -/
def P14412679469009286149.Spec : Prop :=
  ∀ n, P14412679469009286149.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P18361761660725407861

`Δ[(1-round(sqrt(2*n+1)))²]`
-/

namespace A127775.P18361761660725407861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127775.P18361761660725407861

namespace A127775

/-- `Δ[(1-round(sqrt(2*n+1)))²]` -/
def P18361761660725407861.Spec : Prop :=
  ∀ n, P18361761660725407861.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P11152081816391420963

`C(2*col(n)+1, 2*row(n))`
-/

namespace A127775.P11152081816391420963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triCol n + 1) (2 * SequenceMachineLib.triRow n)

end

end A127775.P11152081816391420963

namespace A127775

/-- `C(2*col(n)+1, 2*row(n))` -/
def P11152081816391420963.Spec : Prop :=
  ∀ n, (P11152081816391420963.a n : ℤ) = A127775 (n + 1)

end A127775

/-! ## A127775.P8714129053454180162

`abs(Δ[A003056(n)²])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127775

/-- `abs(Δ[A003056(n)²])` -/
def P8714129053454180162.Spec : Prop :=
  ∀ n, P8714129053454180162.a n = A127775 (n + 1)

theorem P8714129053454180162.correct : P8714129053454180162.Spec := by
  intro n
  simp only [A127775, Nat.add_sub_cancel]

end A127775

/-! ## A127775.P6722085228702436602

`xor(1, A198954(n+1))-1`
-/

namespace A127775.P6722085228702436602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198954 (n + 1)) - 1

end

end A127775.P6722085228702436602

namespace A127775

/-- `xor(1, A198954(n+1))-1` -/
def P6722085228702436602.Spec : Prop :=
  ∀ n, P6722085228702436602.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P8129968253808761903

`∑[A103451(n)]*char[∑[n-1]]`
-/

namespace A127775.P8129968253808761903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127775.P8129968253808761903

namespace A127775

/-- `∑[A103451(n)]*char[∑[n-1]]` -/
def P8129968253808761903.Spec : Prop :=
  ∀ n, P8129968253808761903.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P409017433349602729

`char[∑[n-1]]*A094728(n+1)`
-/

namespace A127775.P409017433349602729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A094728 (n + 1)

end

end A127775.P409017433349602729

namespace A127775

/-- `char[∑[n-1]]*A094728(n+1)` -/
def P409017433349602729.Spec : Prop :=
  ∀ n, P409017433349602729.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P16989542294409766032

`(4*n+3)%Δ[A038722(n+1)]`
-/

namespace A127775.P16989542294409766032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * n + 3 : ℤ) (f1 (n + 1) - f1 n)

end

end A127775.P16989542294409766032

namespace A127775

/-- `(4*n+3)%Δ[A038722(n+1)]` -/
def P16989542294409766032.Spec : Prop :=
  ∀ n, P16989542294409766032.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P5056716812076428563

`A004273(A127648(n))`
-/

namespace A127775.P5056716812076428563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A127648 n).toNat

end

end A127775.P5056716812076428563

namespace A127775

/-- `A004273(A127648(n))` -/
def P5056716812076428563.Spec : Prop :=
  ∀ n, P5056716812076428563.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P533474907904475200

`A004396(A131431(n))`
-/

namespace A127775.P533474907904475200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131431 n).toNat

end

end A127775.P533474907904475200

namespace A127775

/-- `A004396(A131431(n))` -/
def P533474907904475200.Spec : Prop :=
  ∀ n, P533474907904475200.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P8585214055046857073

`A198954(A061579(n))`
-/

namespace A127775.P8585214055046857073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A061579 n).toNat

end

end A127775.P8585214055046857073

namespace A127775

/-- `A198954(A061579(n))` -/
def P8585214055046857073.Spec : Prop :=
  ∀ n, P8585214055046857073.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P13175390696981190111

`A053207(A127773(n+1))`
-/

namespace A127775.P13175390696981190111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 (A127773 (n + 1)).toNat

end

end A127775.P13175390696981190111

namespace A127775

/-- `A053207(A127773(n+1))` -/
def P13175390696981190111.Spec : Prop :=
  ∀ n, P13175390696981190111.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P10629901530876549167

`A289207(A198954(n+1))`
-/

namespace A127775.P10629901530876549167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A198954 (n + 1)).toNat

end

end A127775.P10629901530876549167

namespace A127775

/-- `A289207(A198954(n+1))` -/
def P10629901530876549167.Spec : Prop :=
  ∀ n, P10629901530876549167.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P18401293930961069352

`A087508(2*A131431(n))`
-/

namespace A127775.P18401293930961069352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (2 * A131431 n).toNat

end

end A127775.P18401293930961069352

namespace A127775

/-- `A087508(2*A131431(n))` -/
def P18401293930961069352.Spec : Prop :=
  ∀ n, P18401293930961069352.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P14250824804752478785

`A023531(n)*A027170(n)`
-/

namespace A127775.P14250824804752478785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A027170 n

end

end A127775.P14250824804752478785

namespace A127775

/-- `A023531(n)*A027170(n)` -/
def P14250824804752478785.Spec : Prop :=
  ∀ n, P14250824804752478785.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P16712543601632831576

`A023531(n)*A051598(n)`
-/

namespace A127775.P16712543601632831576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A051598 n

end

end A127775.P16712543601632831576

namespace A127775

/-- `A023531(n)*A051598(n)` -/
def P16712543601632831576.Spec : Prop :=
  ∀ n, P16712543601632831576.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P14964145831578587537

`A023531(n)*A054582(n)`
-/

namespace A127775.P14964145831578587537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054582 n

end

end A127775.P14964145831578587537

namespace A127775

/-- `A023531(n)*A054582(n)` -/
def P14964145831578587537.Spec : Prop :=
  ∀ n, P14964145831578587537.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P989981528702508825

`A023531(n)*A082985(n)`
-/

namespace A127775.P989981528702508825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A082985 n

end

end A127775.P989981528702508825

namespace A127775

/-- `A023531(n)*A082985(n)` -/
def P989981528702508825.Spec : Prop :=
  ∀ n, P989981528702508825.a n = A127775 (n + 1)

end A127775

/-! ## A127775.P7396180976237316740

`A023531(n)*A091042(n)`
-/

namespace A127775.P7396180976237316740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A091042 n

end

end A127775.P7396180976237316740

namespace A127775

/-- `A023531(n)*A091042(n)` -/
def P7396180976237316740.Spec : Prop :=
  ∀ n, P7396180976237316740.a n = A127775 (n + 1)

end A127775

/-!
# A127776: a(n) = ( (2^n / n!) * Product_{k=0..n-1} (4*k + 1) )^2.

The programs for A127776, the canonical program `A127776.P1131441047555844161` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127776 has offset 0).

The definition of A127776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127776.P126237103992698803

`A004981(n)²`
-/

namespace A127776.P126237103992698803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 n ^ 2

end

end A127776.P126237103992698803

namespace A127776

/-- `A004981(n)²` -/
def P126237103992698803.Spec : Prop :=
  ∀ n, P126237103992698803.a n = A127776 n

end A127776

/-! ## A127776.P1131441047555844161

`4*(4*n-3)²*a(n-1)/n²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127776

/-- `4*(4*n-3)²*a(n-1)/n²` -/
def P1131441047555844161.Spec : Prop :=
  ∀ n, P1131441047555844161.a n = (A127776 n : ℚ)

end A127776

/-! ## A127776.P16015672566308147286

`(6/n-8)²*a(n-1)` with `a(0)=1`
-/

namespace A127776.P16015672566308147286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 / (n : ℚ) - 8) ^ 2 * a (n - 1)

end

end A127776.P16015672566308147286

namespace A127776

/-- `(6/n-8)²*a(n-1)` -/
def P16015672566308147286.Spec : Prop :=
  ∀ n, P16015672566308147286.a n = (A127776 n : ℚ)

end A127776

/-! ## A127776.P18219014166153540523

`(A034385(n)/2^n)²`
-/

namespace A127776.P18219014166153540523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034385 n : ℚ) / (2 ^ n : ℚ)) ^ 2

end

end A127776.P18219014166153540523

namespace A127776

/-- `(A034385(n)/2^n)²` -/
def P18219014166153540523.Spec : Prop :=
  ∀ n, P18219014166153540523.a n = (A127776 n : ℚ)

end A127776

/-! ## A127776.P8505278688437333805

`(A004985(n)/(4*n+1))²`
-/

namespace A127776.P8505278688437333805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004985 n : ℚ) / (4 * n + 1 : ℚ)) ^ 2

end

end A127776.P8505278688437333805

namespace A127776

/-- `(A004985(n)/(4*n+1))²` -/
def P8505278688437333805.Spec : Prop :=
  ∀ n, P8505278688437333805.a n = (A127776 n : ℚ)

end A127776

/-! ## A127776.P10449720860074265029

`(A001316(n)*A004130(n))²`
-/

namespace A127776.P10449720860074265029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001316 n * A004130 n) ^ 2

end

end A127776.P10449720860074265029

namespace A127776

/-- `(A001316(n)*A004130(n))²` -/
def P10449720860074265029.Spec : Prop :=
  ∀ n, P10449720860074265029.a n = A127776 n

end A127776

/-! ## A127776.P2407558297631874238

`(A208890(n)/A000984(n))²`
-/

namespace A127776.P2407558297631874238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208890 n : ℚ) / (A000984 n : ℚ)) ^ 2

end

end A127776.P2407558297631874238

namespace A127776

/-- `(A208890(n)/A000984(n))²` -/
def P2407558297631874238.Spec : Prop :=
  ∀ n, P2407558297631874238.a n = (A127776 n : ℚ)

end A127776

/-! ## A127776.P12985335224490807895

`gcd(A004985(n), A034385(n))²`
-/

namespace A127776.P12985335224490807895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004985 n) (A034385 n) ^ 2

end

end A127776.P12985335224490807895

namespace A127776

/-- `gcd(A004985(n), A034385(n))²` -/
def P12985335224490807895.Spec : Prop :=
  ∀ n, (P12985335224490807895.a n : ℤ) = A127776 n

end A127776

/-! ## A127776.P7641750743318109751

`A004981(n)^A020639(A000118(n))`
-/

namespace A127776.P7641750743318109751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004981 n : ℚ) ^ (A020639 (A000118 n).toNat : ℤ)

end

end A127776.P7641750743318109751

namespace A127776

/-- `A004981(n)^A020639(A000118(n))` -/
def P7641750743318109751.Spec : Prop :=
  ∀ n, P7641750743318109751.a n = (A127776 n : ℚ)

end A127776

/-! ## A127776.P9358736483242409119

`A004981(n)^A020639(A004277(n))`
-/

namespace A127776.P9358736483242409119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004981 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A127776.P9358736483242409119

namespace A127776

/-- `A004981(n)^A020639(A004277(n))` -/
def P9358736483242409119.Spec : Prop :=
  ∀ n, P9358736483242409119.a n = (A127776 n : ℚ)

end A127776

/-!
# A127777: A127773 * A002260 as infinite lower triangular matrices.

The programs for A127777, the canonical program `A127777.P16788472378457998886` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127777 has offset 1).

The definition of A127777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127777.P16788472378457998886

`(col(n)+1)*C(row(n)+2, row(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127777

/-- `(col(n)+1)*C(row(n)+2, row(n))` -/
def P16788472378457998886.Spec : Prop :=
  ∀ n, (P16788472378457998886.a n : ℤ) = A127777 (n + 1)

theorem P16788472378457998886.correct : P16788472378457998886.Spec := by
  intro n
  simp only [A127777, Nat.add_sub_cancel]

end A127777

/-! ## A127777.P17015120649472237127

`(col(n)+1)*C(row(n)+2, 2)`
-/

namespace A127777.P17015120649472237127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n + 2) 2

end

end A127777.P17015120649472237127

namespace A127777

/-- `(col(n)+1)*C(row(n)+2, 2)` -/
def P17015120649472237127.Spec : Prop :=
  ∀ n, (P17015120649472237127.a n : ℤ) = A127777 (n + 1)

end A127777

/-! ## A127777.P18129145876078218816

`C(comp[∑[n]]-n, 2)*A002260(n+1)`
-/

namespace A127777.P18129145876078218816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A002260 (n + 1)

end

end A127777.P18129145876078218816

namespace A127777

/-- `C(comp[∑[n]]-n, 2)*A002260(n+1)` -/
def P18129145876078218816.Spec : Prop :=
  ∀ n, P18129145876078218816.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P17460686741439267516

`(A002262(n)+1)*C(comp[∑[n]]-n, 2)`
-/

namespace A127777.P17460686741439267516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A127777.P17460686741439267516

namespace A127777

/-- `(A002262(n)+1)*C(comp[∑[n]]-n, 2)` -/
def P17460686741439267516.Spec : Prop :=
  ∀ n, P17460686741439267516.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P8172009707106496070

`A002260(n+1)*A127739(n+1)`
-/

namespace A127777.P8172009707106496070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127739 (n + 1)

end

end A127777.P8172009707106496070

namespace A127777

/-- `A002260(n+1)*A127739(n+1)` -/
def P8172009707106496070.Spec : Prop :=
  ∀ n, P8172009707106496070.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P16971539553995024077

`(A002262(n)+1)*A127739(n+1)`
-/

namespace A127777.P16971539553995024077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A127739 (n + 1)

end

end A127777.P16971539553995024077

namespace A127777

/-- `(A002262(n)+1)*A127739(n+1)` -/
def P16971539553995024077.Spec : Prop :=
  ∀ n, P16971539553995024077.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P9399342800797517683

`abs(A127739(n+1)*A140756(n+1))`
-/

namespace A127777.P9399342800797517683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127739 (n + 1) * A140756 (n + 1)|

end

end A127777.P9399342800797517683

namespace A127777

/-- `abs(A127739(n+1)*A140756(n+1))` -/
def P9399342800797517683.Spec : Prop :=
  ∀ n, P9399342800797517683.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P16025176032662363520

`(log2(A059268(n))+1)*A127739(n+1)`
-/

namespace A127777.P16025176032662363520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A059268 n : ℝ) + 1) * (A127739 (n + 1) : ℝ)

end

end A127777.P16025176032662363520

namespace A127777

/-- `(log2(A059268(n))+1)*A127739(n+1)` -/
def P16025176032662363520.Spec : Prop :=
  ∀ n, P16025176032662363520.a n = (A127777 (n + 1) : ℝ)

end A127777

/-! ## A127777.P9016299218528284499

`∑[1-A167407(n)]*A002260(n+1)`
-/

namespace A127777.P9016299218528284499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1)

end

end A127777.P9016299218528284499

namespace A127777

/-- `∑[1-A167407(n)]*A002260(n+1)` -/
def P9016299218528284499.Spec : Prop :=
  ∀ n, P9016299218528284499.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P12096705653247899050

`A075362(n+1)/2*A003057(n+2)`
-/

namespace A127777.P12096705653247899050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / 2 * (A003057 (n + 2) : ℚ)

end

end A127777.P12096705653247899050

namespace A127777

/-- `A075362(n+1)/2*A003057(n+2)` -/
def P12096705653247899050.Spec : Prop :=
  ∀ n, P12096705653247899050.a n = (A127777 (n + 1) : ℚ)

end A127777

/-! ## A127777.P17602107865304640736

`A003991(n+1)+n*A002260(n+1)`
-/

namespace A127777.P17602107865304640736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (n : ℤ) * A002260 (n + 1)

end

end A127777.P17602107865304640736

namespace A127777

/-- `A003991(n+1)+n*A002260(n+1)` -/
def P17602107865304640736.Spec : Prop :=
  ∀ n, P17602107865304640736.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P2102350474092872927

`(A004736(n+1)+n)*A002260(n+1)`
-/

namespace A127777.P2102350474092872927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * A002260 (n + 1)

end

end A127777.P2102350474092872927

namespace A127777

/-- `(A004736(n+1)+n)*A002260(n+1)` -/
def P2102350474092872927.Spec : Prop :=
  ∀ n, P2102350474092872927.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P12790041212744145039

`(A004736(n+1)+n)*(A002262(n)+1)`
-/

namespace A127777.P12790041212744145039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * (A002262 n + 1)

end

end A127777.P12790041212744145039

namespace A127777

/-- `(A004736(n+1)+n)*(A002262(n)+1)` -/
def P12790041212744145039.Spec : Prop :=
  ∀ n, P12790041212744145039.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P5097490658756409435

`(A025581(n)+1+n)*A002260(n+1)`
-/

namespace A127777.P5097490658756409435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1 + (n : ℤ)) * A002260 (n + 1)

end

end A127777.P5097490658756409435

namespace A127777

/-- `(A025581(n)+1+n)*A002260(n+1)` -/
def P5097490658756409435.Spec : Prop :=
  ∀ n, P5097490658756409435.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P4387296757034123455

`(A064801(n+1)-n)*A002260(n+1)`
-/

namespace A127777.P4387296757034123455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064801 (n + 1) - (n : ℤ)) * A002260 (n + 1)

end

end A127777.P4387296757034123455

namespace A127777

/-- `(A064801(n+1)-n)*A002260(n+1)` -/
def P4387296757034123455.Spec : Prop :=
  ∀ n, P4387296757034123455.a n = A127777 (n + 1)

end A127777

/-! ## A127777.P12560282193192836996

`(sqrt(A055461(n+1))+n)*A002260(n+1)`
-/

namespace A127777.P12560282193192836996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A055461 (n + 1) : ℝ) + (n : ℝ)) * (A002260 (n + 1) : ℝ)

end

end A127777.P12560282193192836996

namespace A127777

/-- `(sqrt(A055461(n+1))+n)*A002260(n+1)` -/
def P12560282193192836996.Spec : Prop :=
  ∀ n, P12560282193192836996.a n = (A127777 (n + 1) : ℝ)

end A127777

/-! ## A127777.P16494628519817904096

`A003991(n+1)+n*sqrt(A133819(n+1))`
-/

namespace A127777.P16494628519817904096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℝ) + (n : ℝ) * Real.sqrt (A133819 (n + 1) : ℝ)

end

end A127777.P16494628519817904096

namespace A127777

/-- `A003991(n+1)+n*sqrt(A133819(n+1))` -/
def P16494628519817904096.Spec : Prop :=
  ∀ n, P16494628519817904096.a n = (A127777 (n + 1) : ℝ)

end A127777

/-! ## A127777.P15175247169540888548

`(A004736(n+1)+n)*sqrt(A133819(n+1))`
-/

namespace A127777.P15175247169540888548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ) : ℝ) * Real.sqrt (A133819 (n + 1) : ℝ)

end

end A127777.P15175247169540888548

namespace A127777

/-- `(A004736(n+1)+n)*sqrt(A133819(n+1))` -/
def P15175247169540888548.Spec : Prop :=
  ∀ n, P15175247169540888548.a n = (A127777 (n + 1) : ℝ)

end A127777

/-! ## A127777.P17507832680474114097

`(log2(A090988(n+1))+n)*A002260(n+1)`
-/

namespace A127777.P17507832680474114097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A090988 (n + 1) : ℝ) + (n : ℝ)) * (A002260 (n + 1) : ℝ)

end

end A127777.P17507832680474114097

namespace A127777

/-- `(log2(A090988(n+1))+n)*A002260(n+1)` -/
def P17507832680474114097.Spec : Prop :=
  ∀ n, P17507832680474114097.a n = (A127777 (n + 1) : ℝ)

end A127777

/-! ## A127777.P8939057684717642563

`∑[A066182(n+1)-n]*A002260(n+1)`
-/

namespace A127777.P8939057684717642563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1)

end

end A127777.P8939057684717642563

namespace A127777

/-- `∑[A066182(n+1)-n]*A002260(n+1)` -/
def P8939057684717642563.Spec : Prop :=
  ∀ n, P8939057684717642563.a n = A127777 (n + 1)

end A127777

/-!
# A127778: Triangle T(n,k) = A002411(k) read by rows.

The programs for A127778, the canonical program `A127778.P9407848764221578187` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127778 has offset 1).

The definition of A127778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002411(col(n)+1)` (program `A127778.P9407848764221578187`, by `A127778.P9407848764221578187.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127778.P9407848764221578187

`A002411(col(n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127778

/-- `A002411(col(n)+1)` -/
def P9407848764221578187.Spec : Prop :=
  ∀ n, P9407848764221578187.a n = A127778 (n + 1)

theorem P9407848764221578187.correct : P9407848764221578187.Spec := by
  intro n
  simp only [A127778, Nat.add_sub_cancel]

end A127778

/-! ## A127778.P1080382272344310465

`(col(n)+1)*C(col(n)+2, 2)`
-/

namespace A127778.P1080382272344310465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triCol n + 2) 2

end

end A127778.P1080382272344310465

namespace A127778

/-- `(col(n)+1)*C(col(n)+2, 2)` -/
def P1080382272344310465.Spec : Prop :=
  ∀ n, (P1080382272344310465.a n : ℤ) = A127778 (n + 1)

end A127778

/-! ## A127778.P12433493688326122963

`A002411(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A127778.P12433493688326122963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A127778.P12433493688326122963

namespace A127778

/-- `A002411(1-C(∑[char[∑[n]]], 2)+n)` -/
def P12433493688326122963.Spec : Prop :=
  ∀ n, P12433493688326122963.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P5623874907922617771

`A002411(1-(C(∑[char[∑[n]]], 2)-n))`
-/

namespace A127778.P5623874907922617771
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))).toNat

end

end A127778.P5623874907922617771

namespace A127778

/-- `A002411(1-(C(∑[char[∑[n]]], 2)-n))` -/
def P5623874907922617771.Spec : Prop :=
  ∀ n, P5623874907922617771.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P17006894051164543919

`A144677(3*(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A127778.P17006894051164543919
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (3 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A127778.P17006894051164543919

namespace A127778

/-- `A144677(3*(n-C(∑[char[∑[n]]], 2)))` -/
def P17006894051164543919.Spec : Prop :=
  ∀ n, P17006894051164543919.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P1874406280287816328

`A029186(12*(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A127778.P1874406280287816328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 (12 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A127778.P1874406280287816328

namespace A127778

/-- `A029186(12*(n-C(∑[char[∑[n]]], 2)))` -/
def P1874406280287816328.Spec : Prop :=
  ∀ n, P1874406280287816328.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P18054339017732748884

`A002411(comp[∑[n]]-C(comp[∑[n]]-n, 2))`
-/

namespace A127778.P18054339017732748884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2)

end

end A127778.P18054339017732748884

namespace A127778

/-- `A002411(comp[∑[n]]-C(comp[∑[n]]-n, 2))` -/
def P18054339017732748884.Spec : Prop :=
  ∀ n, P18054339017732748884.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P8168830121262314916

`A002411(A002260(n+1))`
-/

namespace A127778.P8168830121262314916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A002260 (n + 1)).toNat

end

end A127778.P8168830121262314916

namespace A127778

/-- `A002411(A002260(n+1))` -/
def P8168830121262314916.Spec : Prop :=
  ∀ n, P8168830121262314916.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P16728708512471084581

`A002411(A002262(n)+1)`
-/

namespace A127778.P16728708512471084581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A002262 n + 1).toNat

end

end A127778.P16728708512471084581

namespace A127778

/-- `A002411(A002262(n)+1)` -/
def P16728708512471084581.Spec : Prop :=
  ∀ n, P16728708512471084581.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P3221646961632890995

`A002411(1-A057944(n)+n)`
-/

namespace A127778.P3221646961632890995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (1 - A057944 n + (n : ℤ)).toNat

end

end A127778.P3221646961632890995

namespace A127778

/-- `A002411(1-A057944(n)+n)` -/
def P3221646961632890995.Spec : Prop :=
  ∀ n, P3221646961632890995.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P3268115169981057488

`A002411(A132118(n+1)-n)`
-/

namespace A127778.P3268115169981057488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A132118 (n + 1) - (n : ℤ)).toNat

end

end A127778.P3268115169981057488

namespace A127778

/-- `A002411(A132118(n+1)-n)` -/
def P3268115169981057488.Spec : Prop :=
  ∀ n, P3268115169981057488.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P5526607814360277890

`(A133820(n+1)+A133819(n+1))/2`
-/

namespace A127778.P5526607814360277890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133820 (n + 1) + A133819 (n + 1) : ℚ) / 2

end

end A127778.P5526607814360277890

namespace A127778

/-- `(A133820(n+1)+A133819(n+1))/2` -/
def P5526607814360277890.Spec : Prop :=
  ∀ n, P5526607814360277890.a n = (A127778 (n + 1) : ℚ)

end A127778

/-! ## A127778.P8110085765365875673

`A002411(A132813(n)/A001263(n+1))`
-/

namespace A127778.P8110085765365875673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (SequenceMachineLib.roundAway ((A132813 n : ℚ) / (A001263 (n + 1) : ℚ))).toNat

end

end A127778.P8110085765365875673

namespace A127778

/-- `A002411(A132813(n)/A001263(n+1))` -/
def P8110085765365875673.Spec : Prop :=
  ∀ n, P8110085765365875673.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P8076642848194561291

`(A002262(n)+1)*A000217(A002262(n)+1)`
-/

namespace A127778.P8076642848194561291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000217 (A002262 n + 1).toNat

end

end A127778.P8076642848194561291

namespace A127778

/-- `(A002262(n)+1)*A000217(A002262(n)+1)` -/
def P8076642848194561291.Spec : Prop :=
  ∀ n, P8076642848194561291.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P16474195544933035020

`A127777(A132819(n+1)/A001263(n+1))`
-/

namespace A127778.P16474195544933035020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127777 (SequenceMachineLib.roundAway ((A132819 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ))).toNat

end

end A127778.P16474195544933035020

namespace A127778

/-- `A127777(A132819(n+1)/A001263(n+1))` -/
def P16474195544933035020.Spec : Prop :=
  ∀ n, P16474195544933035020.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P12680652975566016749

`A143219(A132819(n+1)/A001263(n+1))`
-/

namespace A127778.P12680652975566016749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143219 (SequenceMachineLib.roundAway ((A132819 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ))).toNat

end

end A127778.P12680652975566016749

namespace A127778

/-- `A143219(A132819(n+1)/A001263(n+1))` -/
def P12680652975566016749.Spec : Prop :=
  ∀ n, P12680652975566016749.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P16652861098190770894

`A143219(A143219(n+1)/A002024(n+1))`
-/

namespace A127778.P16652861098190770894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143219 (SequenceMachineLib.roundAway ((A143219 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ))).toNat

end

end A127778.P16652861098190770894

namespace A127778

/-- `A143219(A143219(n+1)/A002024(n+1))` -/
def P16652861098190770894.Spec : Prop :=
  ∀ n, P16652861098190770894.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P6278359208337568612

`(A112367(n)+A002260(n+1))*A002260(n+1)`
-/

namespace A127778.P6278359208337568612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112367 n + A002260 (n + 1)) * A002260 (n + 1)

end

end A127778.P6278359208337568612

namespace A127778

/-- `(A112367(n)+A002260(n+1))*A002260(n+1)` -/
def P6278359208337568612.Spec : Prop :=
  ∀ n, P6278359208337568612.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P4892029086179923550

`(1-A057944(n)+n)*A000217(abs(A140756(n+1)))`
-/

namespace A127778.P4892029086179923550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A000217 |A140756 (n + 1)|.toNat

end

end A127778.P4892029086179923550

namespace A127778

/-- `(1-A057944(n)+n)*A000217(abs(A140756(n+1)))` -/
def P4892029086179923550.Spec : Prop :=
  ∀ n, P4892029086179923550.a n = A127778 (n + 1)

end A127778

/-! ## A127778.P15914584055365927789

`(A132118(n+1)-n)*A000217(abs(A140756(n+1)))`
-/

namespace A127778.P15914584055365927789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) * A000217 |A140756 (n + 1)|.toNat

end

end A127778.P15914584055365927789

namespace A127778

/-- `(A132118(n+1)-n)*A000217(abs(A140756(n+1)))` -/
def P15914584055365927789.Spec : Prop :=
  ∀ n, P15914584055365927789.a n = A127778 (n + 1)

end A127778

/-!
# A127779: Triangle read by rows: A004736 * A127773.

The programs for A127779, the canonical program `A127779.P6962824600330842233` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127779 has offset 1).

The definition of A127779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127779.P15342444429477314663

`T(n,k-1)+T(n-1,k)+col(n)+1-T(n-1,k-1)` with `a(0)=1`
-/

namespace A127779.P15342444429477314663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n : ℤ) + 1 - SequenceMachineLib.triUpLeft a n

end

end A127779.P15342444429477314663

namespace A127779

/-- `T(n,k-1)+T(n-1,k)+col(n)+1-T(n-1,k-1)` -/
def P15342444429477314663.Spec : Prop :=
  ∀ n, P15342444429477314663.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P3777528245360498678

`T(n-1,k-1)+T(n-1,k)+col(n)+1-T(n-2,k-1)` with `a(0)=1`
-/

namespace A127779.P3777528245360498678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n : ℤ) + 1 - SequenceMachineLib.triUp2Left a n

end

end A127779.P3777528245360498678

namespace A127779

/-- `T(n-1,k-1)+T(n-1,k)+col(n)+1-T(n-2,k-1)` -/
def P3777528245360498678.Spec : Prop :=
  ∀ n, P3777528245360498678.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P5516742913089722253

`C(col(n)+2, 2)*(row(n)-col(n)+1)`
-/

namespace A127779.P5516742913089722253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n + 2) 2 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A127779.P5516742913089722253

namespace A127779

/-- `C(col(n)+2, 2)*(row(n)-col(n)+1)` -/
def P5516742913089722253.Spec : Prop :=
  ∀ n, P5516742913089722253.a n = A127779 (n + 1)

theorem P5516742913089722253.correct : P5516742913089722253.Spec := by
  intro n
  simp only [A127779, Nat.add_sub_cancel, A127779.P5516742913089722253.a, A127779.P6962824600330842233.a, A086271, A086271.P16008910328647451104.a, A094053, A094053.P7632435431613033853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127779

/-! ## A127779.P14587531457465900452

`(col(n)+1)*(row(n)-col(n)+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A127779.P14587531457465900452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) + SequenceMachineLib.triUpLeft a n

end

end A127779.P14587531457465900452

namespace A127779

/-- `(col(n)+1)*(row(n)-col(n)+1)+T(n-1,k-1)` -/
def P14587531457465900452.Spec : Prop :=
  ∀ n, P14587531457465900452.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P9107318285293768618

`A000217(col(n)+1)*(row(n)-col(n)+1)`
-/

namespace A127779.P9107318285293768618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol n + 1) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A127779.P9107318285293768618

namespace A127779

/-- `A000217(col(n)+1)*(row(n)-col(n)+1)` -/
def P9107318285293768618.Spec : Prop :=
  ∀ n, P9107318285293768618.a n = A127779 (n + 1)

theorem P9107318285293768618.correct : P9107318285293768618.Spec := by
  intro n
  simp only [A127779, Nat.add_sub_cancel, A127779.P9107318285293768618.a, A127779.P6962824600330842233.a, A000217, A000217.P10269402890581615239.a, A086271, A086271.P16008910328647451104.a, A094053, A094053.P7632435431613033853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127779

/-! ## A127779.P4420345455697702078

`A086271(n+1)+∑[∑[char[∑[n]]]²]%(n+1)`
-/

namespace A127779.P4420345455697702078
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A127779.P4420345455697702078

namespace A127779

/-- `A086271(n+1)+∑[∑[char[∑[n]]]²]%(n+1)` -/
def P4420345455697702078.Spec : Prop :=
  ∀ n, P4420345455697702078.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P1540450219730438505

`A139601(n)+A129312(n+1)`
-/

namespace A127779.P1540450219730438505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n + A129312 (n + 1)

end

end A127779.P1540450219730438505

namespace A127779

/-- `A139601(n)+A129312(n+1)` -/
def P1540450219730438505.Spec : Prop :=
  ∀ n, P1540450219730438505.a n = A127779 (n + 1)

theorem P1540450219730438505.correct : P1540450219730438505.Spec := by
  intro n
  simp only [A127779, Nat.add_sub_cancel, A127779.P1540450219730438505.a, A127779.P6962824600330842233.a, A086271, A086271.P16008910328647451104.a, A094053, A094053.P7632435431613033853.a, A129312, A129312.P198002191961826283.a, A139601, A139601.P14717086239868575484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127779

/-! ## A127779.P6962824600330842233

`A094053(n+1)+A086271(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127779

/-- `A094053(n+1)+A086271(n+1)` -/
def P6962824600330842233.Spec : Prop :=
  ∀ n, P6962824600330842233.a n = A127779 (n + 1)

theorem P6962824600330842233.correct : P6962824600330842233.Spec := by
  intro n
  simp only [A127779, Nat.add_sub_cancel]

end A127779

/-! ## A127779.P8169353253268010003

`A141418(n+1)+A057145(n+2)`
-/

namespace A127779.P8169353253268010003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + A057145 (n + 2)

end

end A127779.P8169353253268010003

namespace A127779

/-- `A141418(n+1)+A057145(n+2)` -/
def P8169353253268010003.Spec : Prop :=
  ∀ n, P8169353253268010003.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P14719507440744870801

`A057145(n+2)+A309559(n)-1`
-/

namespace A127779.P14719507440744870801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + (A309559 n - 1)

end

end A127779.P14719507440744870801

namespace A127779

/-- `A057145(n+2)+A309559(n)-1` -/
def P14719507440744870801.Spec : Prop :=
  ∀ n, P14719507440744870801.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P15610903309063608906

`A002260(n+1)/2*A141429(n+1)`
-/

namespace A127779.P15610903309063608906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2 * (A141429 (n + 1) : ℚ)

end

end A127779.P15610903309063608906

namespace A127779

/-- `A002260(n+1)/2*A141429(n+1)` -/
def P15610903309063608906.Spec : Prop :=
  ∀ n, P15610903309063608906.a n = (A127779 (n + 1) : ℚ)

theorem P15610903309063608906.correct : P15610903309063608906.Spec := by
  intro n
  simp only [A127779, Nat.add_sub_cancel, A127779.P15610903309063608906.a, A127779.P6962824600330842233.a, A002260, A002260.P9170571874073898642.a, A086271, A086271.P16008910328647451104.a, A094053, A094053.P7632435431613033853.a, A141429, A141429.P3778980955938111992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127779

/-! ## A127779.P10642539507323313127

`(A025581(n)+1)*C(A002262(n)+2, 2)`
-/

namespace A127779.P10642539507323313127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * (Nat.choose (A002262 n + 2).toNat 2 : ℤ)

end

end A127779.P10642539507323313127

namespace A127779

/-- `(A025581(n)+1)*C(A002262(n)+2, 2)` -/
def P10642539507323313127.Spec : Prop :=
  ∀ n, P10642539507323313127.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P18242540921027926108

`A057145(n+2)+A023443(A309559(n))`
-/

namespace A127779.P18242540921027926108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + A023443 (A309559 n).toNat

end

end A127779.P18242540921027926108

namespace A127779

/-- `A057145(n+2)+A023443(A309559(n))` -/
def P18242540921027926108.Spec : Prop :=
  ∀ n, P18242540921027926108.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P8342413504602049591

`A000217(A002260(n+1))*A004736(n+1)`
-/

namespace A127779.P8342413504602049591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A004736 (n + 1)

end

end A127779.P8342413504602049591

namespace A127779

/-- `A000217(A002260(n+1))*A004736(n+1)` -/
def P8342413504602049591.Spec : Prop :=
  ∀ n, P8342413504602049591.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P16366712856657690193

`A000217(A002262(n)+1)*A004736(n+1)`
-/

namespace A127779.P16366712856657690193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n + 1).toNat * A004736 (n + 1)

end

end A127779.P16366712856657690193

namespace A127779

/-- `A000217(A002262(n)+1)*A004736(n+1)` -/
def P16366712856657690193.Spec : Prop :=
  ∀ n, P16366712856657690193.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P985685135632081698

`A000217(abs(A140756(n+1)))*A004736(n+1)`
-/

namespace A127779.P985685135632081698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 |A140756 (n + 1)|.toNat * A004736 (n + 1)

end

end A127779.P985685135632081698

namespace A127779

/-- `A000217(abs(A140756(n+1)))*A004736(n+1)` -/
def P985685135632081698.Spec : Prop :=
  ∀ n, P985685135632081698.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P17641961501064709555

`ceil(A099375(n)/2)*A000217(A002260(n+1))`
-/

namespace A127779.P17641961501064709555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A000217 (A002260 (n + 1)).toNat

end

end A127779.P17641961501064709555

namespace A127779

/-- `ceil(A099375(n)/2)*A000217(A002260(n+1))` -/
def P17641961501064709555.Spec : Prop :=
  ∀ n, P17641961501064709555.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P3713217423560337997

`ceil(A099375(n)/2)*A000217(A002262(n)+1)`
-/

namespace A127779.P3713217423560337997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A000217 (A002262 n + 1).toNat

end

end A127779.P3713217423560337997

namespace A127779

/-- `ceil(A099375(n)/2)*A000217(A002262(n)+1)` -/
def P3713217423560337997.Spec : Prop :=
  ∀ n, P3713217423560337997.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P9220646593268774633

`val(A043569(n+1), 2)*A000217(A002260(n+1))`
-/

namespace A127779.P9220646593268774633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℤ) * A000217 (A002260 (n + 1)).toNat

end

end A127779.P9220646593268774633

namespace A127779

/-- `val(A043569(n+1), 2)*A000217(A002260(n+1))` -/
def P9220646593268774633.Spec : Prop :=
  ∀ n, P9220646593268774633.a n = A127779 (n + 1)

end A127779

/-! ## A127779.P1058055141952827302

`val(A043569(n+1), 2)*A000217(A002262(n)+1)`
-/

namespace A127779.P1058055141952827302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℤ) * A000217 (A002262 n + 1).toNat

end

end A127779.P1058055141952827302

namespace A127779

/-- `val(A043569(n+1), 2)*A000217(A002262(n)+1)` -/
def P1058055141952827302.Spec : Prop :=
  ∀ n, P1058055141952827302.a n = A127779 (n + 1)

end A127779

/-!
# A127780: A127775 * A002260 as infinite lower triangular matrices.

The programs for A127780, the canonical program `A127780.P839879575945640267` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127780 has offset 1).

The definition of A127780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127780.P8733272902249513003

`T(n,k-1)+2*row(n)+1` with `a(0)=1`
-/

namespace A127780.P8733272902249513003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + 2 * SequenceMachineLib.triRow n + 1

end

end A127780.P8733272902249513003

namespace A127780

/-- `T(n,k-1)+2*row(n)+1` -/
def P8733272902249513003.Spec : Prop :=
  ∀ n, (P8733272902249513003.a n : ℤ) = A127780 (n + 1)

end A127780

/-! ## A127780.P3605740426068173111

`(1+2*row(n))*(col(n)+1)`
-/

namespace A127780.P3605740426068173111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 2 * SequenceMachineLib.triRow n) * (SequenceMachineLib.triCol n + 1)

end

end A127780.P3605740426068173111

namespace A127780

/-- `(1+2*row(n))*(col(n)+1)` -/
def P3605740426068173111.Spec : Prop :=
  ∀ n, (P3605740426068173111.a n : ℤ) = A127780 (n + 1)

end A127780

/-! ## A127780.P12638848737696486179

`(1-C(∑[char[∑[n]]], 2)+n)*(∑[2*char[∑[n]]]-1)`
-/

namespace A127780.P12638848737696486179
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f5 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 1)

end

end A127780.P12638848737696486179

namespace A127780

/-- `(1-C(∑[char[∑[n]]], 2)+n)*(∑[2*char[∑[n]]]-1)` -/
def P12638848737696486179.Spec : Prop :=
  ∀ n, P12638848737696486179.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P14942347254335946750

`A151890(n)+∑[char[∑[n]]]`
-/

namespace A127780.P14942347254335946750
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A127780.P14942347254335946750

namespace A127780

/-- `A151890(n)+∑[char[∑[n]]]` -/
def P14942347254335946750.Spec : Prop :=
  ∀ n, P14942347254335946750.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P13715548550342306073

`A244418(n+1)+∑[char[∑[n+1]]]`
-/

namespace A127780.P13715548550342306073
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A127780.P13715548550342306073

namespace A127780

/-- `A244418(n+1)+∑[char[∑[n+1]]]` -/
def P13715548550342306073.Spec : Prop :=
  ∀ n, P13715548550342306073.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P6940206633837516809

`(∑[2*char[∑[n]]]-1)*A002260(n+1)`
-/

namespace A127780.P6940206633837516809
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A002260 (n + 1)

end

end A127780.P6940206633837516809

namespace A127780

/-- `(∑[2*char[∑[n]]]-1)*A002260(n+1)` -/
def P6940206633837516809.Spec : Prop :=
  ∀ n, P6940206633837516809.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P13000665378368778251

`A079297(n+1)+A025581(n)`
-/

namespace A127780.P13000665378368778251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079297 (n + 1) + A025581 n

end

end A127780.P13000665378368778251

namespace A127780

/-- `A079297(n+1)+A025581(n)` -/
def P13000665378368778251.Spec : Prop :=
  ∀ n, P13000665378368778251.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P839879575945640267

`A002260(n+1)*A131507(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127780

/-- `A002260(n+1)*A131507(n)` -/
def P839879575945640267.Spec : Prop :=
  ∀ n, P839879575945640267.a n = A127780 (n + 1)

theorem P839879575945640267.correct : P839879575945640267.Spec := by
  intro n
  simp only [A127780, Nat.add_sub_cancel]

end A127780

/-! ## A127780.P797580022337288213

`(A002262(n)+1)*A131507(n)`
-/

namespace A127780.P797580022337288213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A131507 n

end

end A127780.P797580022337288213

namespace A127780

/-- `(A002262(n)+1)*A131507(n)` -/
def P797580022337288213.Spec : Prop :=
  ∀ n, P797580022337288213.a n = A127780 (n + 1)

theorem P797580022337288213.correct : P797580022337288213.Spec := by
  intro n
  simp only [A127780, Nat.add_sub_cancel, A127780.P797580022337288213.a, A127780.P839879575945640267.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A131507, A131507.P15949945766004013839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127780

/-! ## A127780.P10790236959003461328

`A105020(n)+2*A112367(n)`
-/

namespace A127780.P10790236959003461328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n + 2 * A112367 n

end

end A127780.P10790236959003461328

namespace A127780

/-- `A105020(n)+2*A112367(n)` -/
def P10790236959003461328.Spec : Prop :=
  ∀ n, P10790236959003461328.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P14460634161422335155

`abs(A140756(n+1))*A131507(n)`
-/

namespace A127780.P14460634161422335155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * A131507 n

end

end A127780.P14460634161422335155

namespace A127780

/-- `abs(A140756(n+1))*A131507(n)` -/
def P14460634161422335155.Spec : Prop :=
  ∀ n, P14460634161422335155.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P10339229200170481579

`(log2(A059268(n))+1)*A131507(n)`
-/

namespace A127780.P10339229200170481579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A059268 n : ℝ) + 1) * (A131507 n : ℝ)

end

end A127780.P10339229200170481579

namespace A127780

/-- `(log2(A059268(n))+1)*A131507(n)` -/
def P10339229200170481579.Spec : Prop :=
  ∀ n, P10339229200170481579.a n = (A127780 (n + 1) : ℝ)

end A127780

/-! ## A127780.P13982964488229191558

`A223544(n+1)+A081493(n+1)`
-/

namespace A127780.P13982964488229191558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + A081493 (n + 1)

end

end A127780.P13982964488229191558

namespace A127780

/-- `A223544(n+1)+A081493(n+1)` -/
def P13982964488229191558.Spec : Prop :=
  ∀ n, P13982964488229191558.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P8719473087506918608

`(val(A130328(n), 2)+1)*A131507(n)`
-/

namespace A127780.P8719473087506918608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A130328 n).toNat 2 + 1 : ℤ) * A131507 n

end

end A127780.P8719473087506918608

namespace A127780

/-- `(val(A130328(n), 2)+1)*A131507(n)` -/
def P8719473087506918608.Spec : Prop :=
  ∀ n, P8719473087506918608.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P1214500719947926321

`(val(A175840(n), 2)+1)*A131507(n)`
-/

namespace A127780.P1214500719947926321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A175840 n).toNat 2 + 1 : ℤ) * A131507 n

end

end A127780.P1214500719947926321

namespace A127780

/-- `(val(A175840(n), 2)+1)*A131507(n)` -/
def P1214500719947926321.Spec : Prop :=
  ∀ n, P1214500719947926321.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P9545270594593686198

`(1-A057944(n)+n)*A131507(n)`
-/

namespace A127780.P9545270594593686198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A131507 n

end

end A127780.P9545270594593686198

namespace A127780

/-- `(1-A057944(n)+n)*A131507(n)` -/
def P9545270594593686198.Spec : Prop :=
  ∀ n, P9545270594593686198.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P5211785158292574141

`(A132118(n+1)-n)*A131507(n)`
-/

namespace A127780.P5211785158292574141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) * A131507 n

end

end A127780.P5211785158292574141

namespace A127780

/-- `(A132118(n+1)-n)*A131507(n)` -/
def P5211785158292574141.Spec : Prop :=
  ∀ n, P5211785158292574141.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P5504609776817935962

`∑[2-A130296(n+1)]*A131507(n)`
-/

namespace A127780.P5504609776817935962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A131507 n

end

end A127780.P5504609776817935962

namespace A127780

/-- `∑[2-A130296(n+1)]*A131507(n)` -/
def P5504609776817935962.Spec : Prop :=
  ∀ n, P5504609776817935962.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P6351017643965744676

`2*A075362(n+1)-A002260(n+1)`
-/

namespace A127780.P6351017643965744676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075362 (n + 1) - A002260 (n + 1)

end

end A127780.P6351017643965744676

namespace A127780

/-- `2*A075362(n+1)-A002260(n+1)` -/
def P6351017643965744676.Spec : Prop :=
  ∀ n, P6351017643965744676.a n = A127780 (n + 1)

end A127780

/-! ## A127780.P9363499397577216527

`(2*n+1-A061885(n))*A131507(n)`
-/

namespace A127780.P9363499397577216527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A061885 n) * A131507 n

end

end A127780.P9363499397577216527

namespace A127780

/-- `(2*n+1-A061885(n))*A131507(n)` -/
def P9363499397577216527.Spec : Prop :=
  ∀ n, P9363499397577216527.a n = A127780 (n + 1)

end A127780

/-!
# A127781: Last term of arithmetic progression of numbers with same prime signature described in A113460.

The programs for A127781, there is no canonical definition to state claims against.
-/

/-! ## A127781.P4089830236194963169

`A113460(∑[n+1])`
-/

namespace A127781.P4089830236194963169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127781.P4089830236194963169

/-! ## A127781.P843303481389756739

`lcm(2, A120302(n+1))/2`
-/

namespace A127781.P843303481389756739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A120302 (n + 1)) : ℚ) / 2

end

end A127781.P843303481389756739

/-! ## A127781.P13896544233933511660

`A130791(∑[n+1])^(1-floor(acot(n)))`
-/

namespace A127781.P13896544233933511660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130791 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

end

end A127781.P13896544233933511660

/-! ## A127781.P8311856279490345228

`or(1, A113460(A025747(n)))`
-/

namespace A127781.P8311856279490345228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113460 (A025747 n).toNat)

end

end A127781.P8311856279490345228

/-! ## A127781.P1548126782245194375

`record[A113460(abs(A122432(n)))]`
-/

namespace A127781.P1548126782245194375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113460 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127781.P1548126782245194375

/-!
# A127782: G.f. satisfies A(x) = 1 + x*A(x+x^2).

The programs for A127782, there is no canonical definition to state claims against.
-/

/-! ## A127782.P2079769271827196752

`A130521(∑[n])`
-/

namespace A127782.P2079769271827196752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127782.P2079769271827196752

/-! ## A127782.P17378140494683383657

`A130521(A000124(n))+char[11]`
-/

namespace A127782.P17378140494683383657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130521 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A127782.P17378140494683383657

/-! ## A127782.P15437233753121898722

`A130521(A000217(n))+char[11]`
-/

namespace A127782.P15437233753121898722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130521 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A127782.P15437233753121898722

/-! ## A127782.P6955438828839092191

`A130521(A130490(n))^ceil(sin(n)²)`
-/

namespace A127782.P6955438828839092191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130521 (A130490 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A127782.P6955438828839092191

/-! ## A127782.P6725846159986454464

`A225099(n)+A130521(A000124(n))`
-/

namespace A127782.P6725846159986454464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 n + A130521 (A000124 n).toNat

end

end A127782.P6725846159986454464

/-!
# A127783: G.f. satisfies: A(x) = 1 + x*A(x+x^2)^2.

The programs for A127783, there is no canonical definition to state claims against.
-/

/-! ## A127783.P5627168363407578924

`A296021(A162326(n)+A011862(n))`
-/

namespace A127783.P5627168363407578924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (A162326 n + A011862 n).toNat

end

end A127783.P5627168363407578924

/-! ## A127783.P5751796508666924050

`A296021(A297185(n)+A162326(n))`
-/

namespace A127783.P5751796508666924050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (A297185 n + A162326 n).toNat

end

end A127783.P5751796508666924050

/-!
# A127784: G.f. satisfies: A(x) = 1 + (x+x^2)*A(x+x^2)^2.

The programs for A127784, there is no canonical definition to state claims against.
-/

/-! ## A127784.P13704419312979471180

`A004396(floor(sqrt(A334242(n))))`
-/

namespace A127784.P13704419312979471180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.sqrt (A334242 n)).toNat

end

end A127784.P13704419312979471180

/-! ## A127784.P10563237885768256050

`A004396(round(sqrt(A334242(n))))`
-/

namespace A127784.P10563237885768256050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway (Real.sqrt (A334242 n : ℝ))).toNat

end

end A127784.P10563237885768256050

/-! ## A127784.P12926758021304242080

`A008619(A137547(n+1)-n)`
-/

namespace A127784.P12926758021304242080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A137547 (n + 1) - (n : ℤ)).toNat

end

end A127784.P12926758021304242080

/-!
# A127785: G.f. satisfies: A(x) = 1 + x*A(x+x^2)^3.

The programs for A127785, there is no canonical definition to state claims against.
-/

/-! ## A127785.P1145486301331657143

`A153763(n*a(n-1))+1` with `a(0)=1`
-/

namespace A127785.P1145486301331657143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153763 ((n : ℤ) * a (n - 1)).toNat + 1

end

end A127785.P1145486301331657143

/-! ## A127785.P11048289392129424637

`A049706(A291142(n))`
-/

namespace A127785.P11048289392129424637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049706 (A291142 n).toNat

end

end A127785.P11048289392129424637

/-!
# A127786: Expansion of phi(q) * phi(q^2) * phi(-q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A127786, there is no canonical definition to state claims against.
-/

/-! ## A127786.P10806931308782642084

`A080963(2*n)`
-/

namespace A127786.P10806931308782642084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 (2 * n)

end

end A127786.P10806931308782642084

/-! ## A127786.P4465240801803942083

`A057077(n)*A246816(n)`
-/

namespace A127786.P4465240801803942083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A246816 n

end

end A127786.P4465240801803942083

/-! ## A127786.P4796397670366379065

`A045828(n)*A246816(n)/A246836(n)`
-/

namespace A127786.P4796397670366379065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n * A246816 n : ℚ) / (A246836 n : ℚ)

end

end A127786.P4796397670366379065

/-! ## A127786.P17558773991471411035

`2*A080918(2*n)-A080917(2*n)`
-/

namespace A127786.P17558773991471411035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 (2 * n) - A080917 (2 * n)

end

end A127786.P17558773991471411035

/-! ## A127786.P2882934077280961593

`A005843(A080918(2*n))-A080917(2*n)`
-/

namespace A127786.P2882934077280961593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A080918 (2 * n)).toNat - A080917 (2 * n)

end

end A127786.P2882934077280961593

/-! ## A127786.P9336622441325367088

`A080963(n+n)%A198436(n+1)`
-/

namespace A127786.P9336622441325367088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080963 (n + n)) (A198436 (n + 1))

end

end A127786.P9336622441325367088

/-! ## A127786.P10636693373807509078

`A118917(A064269(n+1))+A080963(n+n)`
-/

namespace A127786.P10636693373807509078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A064269 (n + 1)).toNat + A080963 (n + n)

end

end A127786.P10636693373807509078

/-! ## A127786.P8558267606004362673

`A118917(∑[n])+A080963(n+n)`
-/

namespace A127786.P8558267606004362673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (∑ j ∈ Finset.range (n + 1), f1 j) + A080963 (n + n)

end

end A127786.P8558267606004362673

/-! ## A127786.P9562546380311854352

`A080963(n+n)/A007318(A161680(n))`
-/

namespace A127786.P9562546380311854352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 (n + n) : ℚ) / (A007318 (A161680 n).toNat : ℚ)

end

end A127786.P9562546380311854352

/-!
# A127787: Numbers n such that F(n) divides F(F(n)), where F(n) is a Fibonacci number.

The programs for A127787, there is no canonical definition to state claims against.
-/

/-! ## A127787.P7675129002752888473

`lt[(n-A104714(n))², n]`
-/

namespace A127787.P7675129002752888473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A104714 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A127787.P7675129002752888473

/-! ## A127787.P11363100201875274716

`A023172(round(sqrt(n²+1)))+char[1]`
-/

namespace A127787.P11363100201875274716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A127787.P11363100201875274716

/-! ## A127787.P13823308089471875598

`record[A104714(A002808(n+1))]`
-/

namespace A127787.P13823308089471875598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127787.P13823308089471875598

/-! ## A127787.P16307257033826310076

`record[A104714(A014684(n+1))]`
-/

namespace A127787.P16307257033826310076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A014684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127787.P16307257033826310076

/-! ## A127787.P12687650240968760657

`record[A104714(A018252(n+1))]`
-/

namespace A127787.P12687650240968760657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127787.P12687650240968760657

/-! ## A127787.P335537058088379346

`record[A104714(A114112(n+1))]`
-/

namespace A127787.P335537058088379346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A114112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127787.P335537058088379346

/-! ## A127787.P15558608324092955556

`record[A104714(A129674(n+1))]`
-/

namespace A127787.P15558608324092955556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A129674 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127787.P15558608324092955556

/-! ## A127787.P2724526090789577035

`record[A104714(A129677(n+1))]`
-/

namespace A127787.P2724526090789577035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A129677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127787.P2724526090789577035

/-! ## A127787.P9316348945799750240

`record[A104714(A181569(n+1))]`
-/

namespace A127787.P9316348945799750240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A181569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127787.P9316348945799750240

/-! ## A127787.P6090508000081866028

`∪[A023172(n+1), A109119(n)]`
-/

namespace A127787.P6090508000081866028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127787.P6090508000081866028

/-!
# A127788: Dimension of the space of newforms of weight 2 and level n.

The programs for A127788, the canonical program `A127788.P5184033610480325738` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127788 has offset 1).

The definition of A127788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127788.P5184033610480325738

`∑{d}[n+1, A001617(#)*A007427((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A127788

/-- `∑{d}[n+1, A001617(#)*A007427((n+1)/#)]` -/
def P5184033610480325738.Spec : Prop :=
  ∀ n, P5184033610480325738.a n = A127788 (n + 1)

theorem P5184033610480325738.correct : P5184033610480325738.Spec := by
  intro n
  simp only [A127788, Nat.add_sub_cancel]

end A127788

/-! ## A127788.P6678756439129690025

`and(A112056(n+1), A391911(n+1))`
-/

namespace A127788.P6678756439129690025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112056 (n + 1)) (A391911 (n + 1))

end

end A127788.P6678756439129690025

namespace A127788

/-- `and(A112056(n+1), A391911(n+1))` -/
def P6678756439129690025.Spec : Prop :=
  ∀ n, P6678756439129690025.a n = A127788 (n + 1)

end A127788

/-! ## A127788.P3565066027591188375

`and(A139559(n+1), A391911(n+1))`
-/

namespace A127788.P3565066027591188375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139559 (n + 1)) (A391911 (n + 1))

end

end A127788.P3565066027591188375

namespace A127788

/-- `and(A139559(n+1), A391911(n+1))` -/
def P3565066027591188375.Spec : Prop :=
  ∀ n, P3565066027591188375.a n = A127788 (n + 1)

end A127788

/-! ## A127788.P5987361943179253010

`and(A182474(n+1), A391911(n+1))`
-/

namespace A127788.P5987361943179253010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182474 (n + 1)) (A391911 (n + 1))

end

end A127788.P5987361943179253010

namespace A127788

/-- `and(A182474(n+1), A391911(n+1))` -/
def P5987361943179253010.Spec : Prop :=
  ∀ n, P5987361943179253010.a n = A127788 (n + 1)

end A127788

/-! ## A127788.P18434441612989401651

`and(A192528(n+1), A391911(n+1))`
-/

namespace A127788.P18434441612989401651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192528 (n + 1)) (A391911 (n + 1))

end

end A127788.P18434441612989401651

namespace A127788

/-- `and(A192528(n+1), A391911(n+1))` -/
def P18434441612989401651.Spec : Prop :=
  ∀ n, P18434441612989401651.a n = A127788 (n + 1)

end A127788

/-!
# A127789: Record indices of 2^h(n)/(3^t(n)*n), where h and t are the number of halving resp. tripling steps in the '3x + 1' problem.

The programs for A127789, there is no canonical definition to state claims against.
-/

/-! ## A127789.P11789970958068586308

`2^a(n-1)-7` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9`
-/

namespace A127789.P11789970958068586308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 7, 9] fun n a =>
  (2 : ℝ) ^ (a (n - 1)) - 7

end

end A127789.P11789970958068586308

/-!
# A127790: G.f.: (2*x+4*x^2+4*x^3+4*x^4+2*x^5)/((1-x)^2*(1-x^2)^3*(1-x^3)^4*(1-x^4)).

The programs for A127790, the canonical program `A127790.P5792481007171978486` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127790 has offset 0).

The definition of A127790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127790.P5792481007171978486

`ogf(2x/(1-4x+4x^2+6x^4-12x^5-6x^6+12x^7+9x^8+4x^9-28x^10+4x^11+9x^12+12x^13-6x^14-12x^15+6x^16+4x^18-4x^19+x^20))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127790

/-- `ogf(2x/(1-4x+4x^2+6x^4-12x^5-6x^6+12x^7+9x^8+4x^9-28x^10+4x^11+9x^12+12x^13-6x^14-12x^15+6x^16+4x^18-4x^19+x^20))` -/
def P5792481007171978486.Spec : Prop :=
  ∀ n, P5792481007171978486.a n = A127790 n

theorem P5792481007171978486.correct : P5792481007171978486.Spec := by
  intro n
  simp only [A127790]

end A127790

/-! ## A127790.P11152879785645874691

`2*A127811(n)`
-/

namespace A127790.P11152879785645874691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127811 n

end

end A127790.P11152879785645874691

namespace A127790

/-- `2*A127811(n)` -/
def P11152879785645874691.Spec : Prop :=
  ∀ n, P11152879785645874691.a n = A127790 n

end A127790

/-! ## A127790.P9910677580396148387

`A124615(n)-A123991(n)`
-/

namespace A127790.P9910677580396148387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124615 n - A123991 n

end

end A127790.P9910677580396148387

namespace A127790

/-- `A124615(n)-A123991(n)` -/
def P9910677580396148387.Spec : Prop :=
  ∀ n, P9910677580396148387.a n = A127790 n

end A127790

/-! ## A127790.P12049874456826614586

`A127811(A005843(n)/2)+A127811(n)`
-/

namespace A127790.P12049874456826614586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127811 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A127811 n

end

end A127790.P12049874456826614586

namespace A127790

/-- `A127811(A005843(n)/2)+A127811(n)` -/
def P12049874456826614586.Spec : Prop :=
  ∀ n, P12049874456826614586.a n = A127790 n

end A127790

/-! ## A127790.P9664605228848148280

`A127811(A005843(n)-n)+A127811(n)`
-/

namespace A127790.P9664605228848148280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127811 (A005843 n - (n : ℤ)).toNat + A127811 n

end

end A127790.P9664605228848148280

namespace A127790

/-- `A127811(A005843(n)-n)+A127811(n)` -/
def P9664605228848148280.Spec : Prop :=
  ∀ n, P9664605228848148280.a n = A127790 n

end A127790

/-! ## A127790.P9645379142465874506

`A127811(lcm(n, A020985(n)))+A127811(n)`
-/

namespace A127790.P9645379142465874506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127811 (Int.lcm (n : ℤ) (A020985 n)) + A127811 n

end

end A127790.P9645379142465874506

namespace A127790

/-- `A127811(lcm(n, A020985(n)))+A127811(n)` -/
def P9645379142465874506.Spec : Prop :=
  ∀ n, P9645379142465874506.a n = A127790 n

end A127790

/-!
# A127793: Inverse of number triangle t(n,k) = 1/floor((n+2)/2) if k <= n <= 2*k, 0 otherwise.

The programs for A127793, the canonical program `A127793.P12461716665671031307` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127793 has offset 0).

The definition of A127793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127793.P12461716665671031307

`ceil(A002260(n+1)/2)*A111967(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127793

/-- `ceil(A002260(n+1)/2)*A111967(n)` -/
def P12461716665671031307.Spec : Prop :=
  ∀ n, P12461716665671031307.a n = A127793 n

theorem P12461716665671031307.correct : P12461716665671031307.Spec := by
  intro n
  simp only [A127793]

end A127793

/-! ## A127793.P5552496122241594307

`round((A002262(n)+1)*A111967(n)/2)`
-/

namespace A127793.P5552496122241594307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A002262 n + 1) * A111967 n : ℚ) / 2)

end

end A127793.P5552496122241594307

namespace A127793

/-- `round((A002262(n)+1)*A111967(n)/2)` -/
def P5552496122241594307.Spec : Prop :=
  ∀ n, P5552496122241594307.a n = A127793 n

end A127793

/-! ## A127793.P12819169839864889758

`round(A131818(n+1)/2*A111967(n))`
-/

namespace A127793.P12819169839864889758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131818 (n + 1) : ℚ) / 2 * (A111967 n : ℚ))

end

end A127793.P12819169839864889758

namespace A127793

/-- `round(A131818(n+1)/2*A111967(n))` -/
def P12819169839864889758.Spec : Prop :=
  ∀ n, P12819169839864889758.a n = A127793 n

end A127793

/-! ## A127793.P2131121938594597949

`round(A134868(n+1)/2*A111967(n))`
-/

namespace A127793.P2131121938594597949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134868 (n + 1) : ℚ) / 2 * (A111967 n : ℚ))

end

end A127793.P2131121938594597949

namespace A127793

/-- `round(A134868(n+1)/2*A111967(n))` -/
def P2131121938594597949.Spec : Prop :=
  ∀ n, P2131121938594597949.a n = A127793 n

end A127793

/-! ## A127793.P8673051498398263130

`round(A135223(n+1)/2*A111967(n))`
-/

namespace A127793.P8673051498398263130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135223 (n + 1) : ℚ) / 2 * (A111967 n : ℚ))

end

end A127793.P8673051498398263130

namespace A127793

/-- `round(A135223(n+1)/2*A111967(n))` -/
def P8673051498398263130.Spec : Prop :=
  ∀ n, P8673051498398263130.a n = A127793 n

end A127793

/-! ## A127793.P4791009892406954113

`round(sqrt(A133819(n+1))*A111967(n)/2)`
-/

namespace A127793.P4791009892406954113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ) * (A111967 n : ℝ) / 2)

end

end A127793.P4791009892406954113

namespace A127793

/-- `round(sqrt(A133819(n+1))*A111967(n)/2)` -/
def P4791009892406954113.Spec : Prop :=
  ∀ n, P4791009892406954113.a n = A127793 n

end A127793

/-! ## A127793.P4062265026237630083

`A008619(A002262(n))*A111967(n)`
-/

namespace A127793.P4062265026237630083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002262 n).toNat * A111967 n

end

end A127793.P4062265026237630083

namespace A127793

/-- `A008619(A002262(n))*A111967(n)` -/
def P4062265026237630083.Spec : Prop :=
  ∀ n, P4062265026237630083.a n = A127793 n

end A127793

/-! ## A127793.P6543780991510687469

`round(A000005(A059268(n))*A111967(n)/2)`
-/

namespace A127793.P6543780991510687469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (A059268 n).toNat * A111967 n : ℚ) / 2)

end

end A127793.P6543780991510687469

namespace A127793

/-- `round(A000005(A059268(n))*A111967(n)/2)` -/
def P6543780991510687469.Spec : Prop :=
  ∀ n, P6543780991510687469.a n = A127793 n

end A127793

/-! ## A127793.P13068699692055840943

`round(round(A127749(n)/2)/2)`
-/

namespace A127793.P13068699692055840943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A127749 n : ℚ) / 2) : ℚ) / 2)

end

end A127793.P13068699692055840943

namespace A127793

/-- `round(round(A127749(n)/2)/2)` -/
def P13068699692055840943.Spec : Prop :=
  ∀ n, P13068699692055840943.a n = A127793 n

end A127793

/-!
# A127794: A007376(8n+1).

The programs for A127794, there is no canonical definition to state claims against.
-/

/-! ## A127794.P8304688087275060743

`A007376(8*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127794.P8304688087275060743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * n + 1)

end

end A127794.P8304688087275060743

/-! ## A127794.P15327347629953617962

`A007376(xor(1, 8*n))%10`
-/

namespace A127794.P15327347629953617962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (Nat.xor 1 (8 * n))) 10

end

end A127794.P15327347629953617962

/-! ## A127794.P12549255170967349943

`dr(A007376(A017077(n)))`
-/

namespace A127794.P12549255170967349943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A017077 n).toNat)

end

end A127794.P12549255170967349943

/-! ## A127794.P5349396060344019803

`A000108(floor(n^(2-∏{p}[n, #])))*A007376(xor(1, 8*n))`
-/

namespace A127794.P5349396060344019803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n : ℚ) ^ (2 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ)⌋.toNat * A007376 (Nat.xor 1 (8 * n))

end

end A127794.P5349396060344019803

/-! ## A127794.P3303854819867923446

`A000108(round(n^(2-∑{p}[n, #])))*A007376(xor(1, 8*n))`
-/

namespace A127794.P3303854819867923446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((n : ℚ) ^ (2 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ))).toNat * A007376 (Nat.xor 1 (8 * n))

end

end A127794.P3303854819867923446

/-! ## A127794.P850460447660799574

`dr(A007376(Δ[A001107(n)]))`
-/

namespace A127794.P850460447660799574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A127794.P850460447660799574

/-! ## A127794.P2100526228140525030

`A127414(2*n)`
-/

namespace A127794.P2100526228140525030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127414 (2 * n)

end

end A127794.P2100526228140525030

/-! ## A127794.P13872823503506404351

`dr(A007376(A016813(2*n)))`
-/

namespace A127794.P13872823503506404351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A016813 (2 * n)).toNat)

end

end A127794.P13872823503506404351

/-! ## A127794.P11026412686772540836

`A033307(8*n)`
-/

namespace A127794.P11026412686772540836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n)

end

end A127794.P11026412686772540836

/-! ## A127794.P8271591126295686167

`dr(A007376(A005408(4*n)))`
-/

namespace A127794.P8271591126295686167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A005408 (4 * n)).toNat)

end

end A127794.P8271591126295686167

/-! ## A127794.P9230968388722399583

`dr(A033307((A077591(n+1)-2)/(n+1)))`
-/

namespace A127794.P9230968388722399583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (SequenceMachineLib.roundAway ((A077591 (n + 1) - 2 : ℚ) / (n + 1 : ℚ))).toNat)

end

end A127794.P9230968388722399583

/-! ## A127794.P13881447817431662403

`A127050(4*n)`
-/

namespace A127794.P13881447817431662403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (4 * n)

end

end A127794.P13881447817431662403

/-! ## A127794.P14885636846424913774

`A261333(8*n)%10`
-/

namespace A127794.P14885636846424913774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261333 (8 * n)) 10

end

end A127794.P14885636846424913774

/-! ## A127794.P535694843146648497

`A108202(16*n+2)`
-/

namespace A127794.P535694843146648497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (16 * n + 2)

end

end A127794.P535694843146648497

/-! ## A127794.P5603905953785335838

`A108712(A158057(n))`
-/

namespace A127794.P5603905953785335838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A158057 n).toNat

end

end A127794.P5603905953785335838

/-! ## A127794.P1747944511543502566

`A108712(A017077(2*n))`
-/

namespace A127794.P1747944511543502566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017077 (2 * n)).toNat

end

end A127794.P1747944511543502566

/-! ## A127794.P10873156711573429071

`A108712(A017101(2*n)-2)`
-/

namespace A127794.P10873156711573429071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017101 (2 * n) - 2).toNat

end

end A127794.P10873156711573429071

/-! ## A127794.P4713593617821125865

`gcd(A033307(A022144(n)), A151878(n))`
-/

namespace A127794.P4713593617821125865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033307 (A022144 n).toNat) (A151878 n)

end

end A127794.P4713593617821125865

/-!
# A127795: Nextprime(8^n)-8^n.

The programs for A127795, the canonical program `A127795.P18243367526818959236` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127795 has offset 0).

The definition of A127795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127795.P18243367526818959236

`A013597(3*n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127795

/-- `A013597(3*n)` -/
def P18243367526818959236.Spec : Prop :=
  ∀ n, P18243367526818959236.a n = A127795 n

theorem P18243367526818959236.correct : P18243367526818959236.Spec := by
  intro n
  simp only [A127795]

end A127795

/-! ## A127795.P13250808112097542852

`A092131(abs(2-3*n)+2)`
-/

namespace A127795.P13250808112097542852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (|2 - (3 * n : ℤ)| + 2).toNat

end

end A127795.P13250808112097542852

namespace A127795

/-- `A092131(abs(2-3*n)+2)` -/
def P13250808112097542852.Spec : Prop :=
  ∀ n, P13250808112097542852.a n = A127795 n

end A127795

/-! ## A127795.P6565617503926495294

`A264050(a(2%n)/n^-1)` with `a(0)=1`
-/

namespace A127795.P6565617503926495294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A264050 (SequenceMachineLib.roundAway ((a (2 % n) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

end

end A127795.P6565617503926495294

namespace A127795

/-- `A264050(a(2%n)/n^-1)` -/
def P6565617503926495294.Spec : Prop :=
  ∀ n, P6565617503926495294.a n = A127795 n

end A127795

/-! ## A127795.P13185295400489967529

`or(1, A013597(A008486(n)))`
-/

namespace A127795.P13185295400489967529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013597 (A008486 n).toNat)

end

end A127795.P13185295400489967529

namespace A127795

/-- `or(1, A013597(A008486(n)))` -/
def P13185295400489967529.Spec : Prop :=
  ∀ n, P13185295400489967529.a n = A127795 n

end A127795

/-! ## A127795.P1390270109026401587

`or(1, A013597(A008585(n)))`
-/

namespace A127795.P1390270109026401587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013597 (A008585 n).toNat)

end

end A127795.P1390270109026401587

namespace A127795

/-- `or(1, A013597(A008585(n)))` -/
def P1390270109026401587.Spec : Prop :=
  ∀ n, P1390270109026401587.a n = A127795 n

end A127795

/-! ## A127795.P6345005417963646923

`or(1, A013597(record[A071045(n)]))`
-/

namespace A127795.P6345005417963646923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A127795.P6345005417963646923

namespace A127795

/-- `or(1, A013597(record[A071045(n)]))` -/
def P6345005417963646923.Spec : Prop :=
  ∀ n, P6345005417963646923.a n = A127795 n

end A127795

/-! ## A127795.P1909152695873847315

`or(1, A013597(A016789(n)-2))`
-/

namespace A127795.P1909152695873847315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013597 (A016789 n - 2).toNat)

end

end A127795.P1909152695873847315

namespace A127795

/-- `or(1, A013597(A016789(n)-2))` -/
def P1909152695873847315.Spec : Prop :=
  ∀ n, P1909152695873847315.a n = A127795 n

end A127795

/-! ## A127795.P7935431221411175101

`A037035(3*n)+1`
-/

namespace A127795.P7935431221411175101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 (3 * n) + 1

end

end A127795.P7935431221411175101

namespace A127795

/-- `A037035(3*n)+1` -/
def P7935431221411175101.Spec : Prop :=
  ∀ n, P7935431221411175101.a n = A127795 n

theorem P7935431221411175101.correct : P7935431221411175101.Spec := by
  intro n
  simp only [A127795, Nat.add_sub_cancel, A127795.P7935431221411175101.a, A127795.P18243367526818959236.a, A013597, A013597.P2064454081418839404.a, A037035, A037035.P15953228204083907658.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127795

/-! ## A127795.P16205101773034597891

`A004442(A037035(3*n))`
-/

namespace A127795.P16205101773034597891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A037035 (3 * n)).toNat

end

end A127795.P16205101773034597891

namespace A127795

/-- `A004442(A037035(3*n))` -/
def P16205101773034597891.Spec : Prop :=
  ∀ n, P16205101773034597891.a n = A127795 n

end A127795

/-! ## A127795.P17510075530037494926

`A063768(n)-A001018(n)`
-/

namespace A127795.P17510075530037494926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063768 n - A001018 n

end

end A127795.P17510075530037494926

namespace A127795

/-- `A063768(n)-A001018(n)` -/
def P17510075530037494926.Spec : Prop :=
  ∀ n, P17510075530037494926.a n = A127795 n

end A127795

/-! ## A127795.P4849143750324759851

`A063768(n)-A379530(2*n)`
-/

namespace A127795.P4849143750324759851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063768 n - A379530 (2 * n)

end

end A127795.P4849143750324759851

namespace A127795

/-- `A063768(n)-A379530(2*n)` -/
def P4849143750324759851.Spec : Prop :=
  ∀ n, P4849143750324759851.a n = A127795 n

end A127795

/-! ## A127795.P17594171422881935496

`A063768(n)-A164703(2*n+1)`
-/

namespace A127795.P17594171422881935496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063768 n - A164703 (2 * n + 1)

end

end A127795.P17594171422881935496

namespace A127795

/-- `A063768(n)-A164703(2*n+1)` -/
def P17594171422881935496.Spec : Prop :=
  ∀ n, P17594171422881935496.a n = A127795 n

end A127795

/-! ## A127795.P13201247665398943245

`A063768(n)-(A015565(n+1)+A015565(n))`
-/

namespace A127795.P13201247665398943245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063768 n - (A015565 (n + 1) + A015565 n)

end

end A127795.P13201247665398943245

namespace A127795

/-- `A063768(n)-(A015565(n+1)+A015565(n))` -/
def P13201247665398943245.Spec : Prop :=
  ∀ n, P13201247665398943245.a n = A127795 n

end A127795

/-!
# A127796: a(n) = nextprime(9^n) - 9^n.

The programs for A127796, the canonical program `A127796.P12118606658700443075` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127796 has offset 0).

The definition of A127796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127796.P12118606658700443075

`A013598(2*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127796

/-- `A013598(2*n)` -/
def P12118606658700443075.Spec : Prop :=
  ∀ n, P12118606658700443075.a n = A127796 n

theorem P12118606658700443075.correct : P12118606658700443075.Spec := by
  intro n
  simp only [A127796]

end A127796

/-! ## A127796.P3433769359752558229

`A114752(A013598(n+n))`
-/

namespace A127796.P3433769359752558229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (A013598 (n + n)).toNat

end

end A127796.P3433769359752558229

namespace A127796

/-- `A114752(A013598(n+n))` -/
def P3433769359752558229.Spec : Prop :=
  ∀ n, P3433769359752558229.a n = A127796 n

end A127796

/-! ## A127796.P9198754240073643636

`A000027(A013598(record[A014681(n)]))`
-/

namespace A127796.P9198754240073643636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A013598 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A127796.P9198754240073643636

namespace A127796

/-- `A000027(A013598(record[A014681(n)]))` -/
def P9198754240073643636.Spec : Prop :=
  ∀ n, P9198754240073643636.a n = A127796 n

end A127796

/-! ## A127796.P5781136082338692741

`gcd(A000038(n), A013598(A005843(n)))`
-/

namespace A127796.P5781136082338692741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A013598 (A005843 n).toNat)

end

end A127796.P5781136082338692741

namespace A127796

/-- `gcd(A000038(n), A013598(A005843(n)))` -/
def P5781136082338692741.Spec : Prop :=
  ∀ n, (P5781136082338692741.a n : ℤ) = A127796 n

end A127796

/-! ## A127796.P7018735713631287561

`or(A000007(n), A013598(A005843(n)))`
-/

namespace A127796.P7018735713631287561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A013598 (A005843 n).toNat)

end

end A127796.P7018735713631287561

namespace A127796

/-- `or(A000007(n), A013598(A005843(n)))` -/
def P7018735713631287561.Spec : Prop :=
  ∀ n, P7018735713631287561.a n = A127796 n

end A127796

/-! ## A127796.P7752204050805440969

`A013598(n+n)%A008574(A008574(n))`
-/

namespace A127796.P7752204050805440969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013598 (n + n)) (A008574 (A008574 n).toNat)

end

end A127796.P7752204050805440969

namespace A127796

/-- `A013598(n+n)%A008574(A008574(n))` -/
def P7752204050805440969.Spec : Prop :=
  ∀ n, P7752204050805440969.a n = A127796 n

end A127796

/-! ## A127796.P17646327452688224275

`A339012(A013598(n+1))+A013598(n+n)`
-/

namespace A127796.P17646327452688224275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (A013598 (n + 1)).toNat + A013598 (n + n)

end

end A127796.P17646327452688224275

namespace A127796

/-- `A339012(A013598(n+1))+A013598(n+n)` -/
def P17646327452688224275.Spec : Prop :=
  ∀ n, P17646327452688224275.a n = A127796 n

end A127796

/-! ## A127796.P1004556487047828090

`A014211(2*n)-A000244(n)²`
-/

namespace A127796.P1004556487047828090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 (2 * n) - A000244 n ^ 2

end

end A127796.P1004556487047828090

namespace A127796

/-- `A014211(2*n)-A000244(n)²` -/
def P1004556487047828090.Spec : Prop :=
  ∀ n, P1004556487047828090.a n = A127796 n

theorem P1004556487047828090.correct : P1004556487047828090.Spec := by
  intro n
  simp only [A127796, Nat.add_sub_cancel, A127796.P1004556487047828090.a, A127796.P12118606658700443075.a, A000244, A000244.P17162167222172810417.a, A013598, A013598.P2424592840134159747.a, A014211, A014211.P17006346503809986776.a, A000038, A000038.P13734959004655594922.a, A008611, A008611.P13529448793166959438.a, A104081, A104081.P13360857715571968060.a, A000007, A000007.P6599383543502402472.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127796

/-! ## A127796.P4177016730367700202

`A104081(2*n)-A000244(n)²`
-/

namespace A127796.P4177016730367700202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 (2 * n) - A000244 n ^ 2

end

end A127796.P4177016730367700202

namespace A127796

/-- `A104081(2*n)-A000244(n)²` -/
def P4177016730367700202.Spec : Prop :=
  ∀ n, P4177016730367700202.a n = A127796 n

end A127796

/-! ## A127796.P100981056841847457

`A014211(2*n)-A000244(2*n)`
-/

namespace A127796.P100981056841847457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 (2 * n) - A000244 (2 * n)

end

end A127796.P100981056841847457

namespace A127796

/-- `A014211(2*n)-A000244(2*n)` -/
def P100981056841847457.Spec : Prop :=
  ∀ n, P100981056841847457.a n = A127796 n

theorem P100981056841847457.correct : P100981056841847457.Spec := by
  intro n
  simp only [A127796, Nat.add_sub_cancel, A127796.P100981056841847457.a, A127796.P12118606658700443075.a, A000244, A000244.P17162167222172810417.a, A013598, A013598.P2424592840134159747.a, A014211, A014211.P17006346503809986776.a, A000038, A000038.P13734959004655594922.a, A008611, A008611.P13529448793166959438.a, A104081, A104081.P13360857715571968060.a, A000007, A000007.P6599383543502402472.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127796

/-! ## A127796.P4634958381427247972

`A037127(2*n)-A001047(2*n)`
-/

namespace A127796.P4634958381427247972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 (2 * n) - A001047 (2 * n)

end

end A127796.P4634958381427247972

namespace A127796

/-- `A037127(2*n)-A001047(2*n)` -/
def P4634958381427247972.Spec : Prop :=
  ∀ n, P4634958381427247972.a n = A127796 n

end A127796

/-! ## A127796.P17914021353841158900

`A104081(2*n)-A000244(2*n)`
-/

namespace A127796.P17914021353841158900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 (2 * n) - A000244 (2 * n)

end

end A127796.P17914021353841158900

namespace A127796

/-- `A104081(2*n)-A000244(2*n)` -/
def P17914021353841158900.Spec : Prop :=
  ∀ n, P17914021353841158900.a n = A127796 n

end A127796

/-! ## A127796.P16134147877301543996

`A014211(2*n)+1-A034472(2*n)`
-/

namespace A127796.P16134147877301543996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 (2 * n) + (1 - A034472 (2 * n))

end

end A127796.P16134147877301543996

namespace A127796

/-- `A014211(2*n)+1-A034472(2*n)` -/
def P16134147877301543996.Spec : Prop :=
  ∀ n, P16134147877301543996.a n = A127796 n

theorem P16134147877301543996.correct : P16134147877301543996.Spec := by
  intro n
  simp only [A127796, Nat.add_sub_cancel, A127796.P16134147877301543996.a, A127796.P12118606658700443075.a, A013598, A013598.P2424592840134159747.a, A014211, A014211.P17006346503809986776.a, A034472, A034472.P6935477064191477456.a, A000038, A000038.P13734959004655594922.a, A008611, A008611.P13529448793166959438.a, A104081, A104081.P13360857715571968060.a, A000007, A000007.P6599383543502402472.a, A000244, A000244.P17162167222172810417.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127796

/-! ## A127796.P25046411700702311

`A000079(n)²+A037127(2*n)-A000244(n)²`
-/

namespace A127796.P25046411700702311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (A037127 (2 * n) - A000244 n ^ 2)

end

end A127796.P25046411700702311

namespace A127796

/-- `A000079(n)²+A037127(2*n)-A000244(n)²` -/
def P25046411700702311.Spec : Prop :=
  ∀ n, P25046411700702311.a n = A127796 n

end A127796

/-! ## A127796.P1215638018982422990

`A014210(2*n)+A037128(2*n)-A000244(n)²`
-/

namespace A127796.P1215638018982422990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n) + (A037128 (2 * n) - A000244 n ^ 2)

end

end A127796.P1215638018982422990

namespace A127796

/-- `A014210(2*n)+A037128(2*n)-A000244(n)²` -/
def P1215638018982422990.Spec : Prop :=
  ∀ n, P1215638018982422990.a n = A127796 n

theorem P1215638018982422990.correct : P1215638018982422990.Spec := by
  intro n
  simp only [A127796, Nat.add_sub_cancel, A127796.P1215638018982422990.a, A127796.P12118606658700443075.a, A000244, A000244.P17162167222172810417.a, A013598, A013598.P2424592840134159747.a, A014210, A014210.P8900791388522812635.a, A037128, A037128.P2879077099965106880.a, A013597, A013597.P2064454081418839404.a, A014211, A014211.P17006346503809986776.a, A000038, A000038.P13734959004655594922.a, A008611, A008611.P13529448793166959438.a, A013632, A013632.P6559946879985956067.a, A104081, A104081.P13360857715571968060.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127796

/-! ## A127796.P7282829841815288119

`A000079(2*n)+A037127(2*n)-A000244(2*n)`
-/

namespace A127796.P7282829841815288119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (A037127 (2 * n) - A000244 (2 * n))

end

end A127796.P7282829841815288119

namespace A127796

/-- `A000079(2*n)+A037127(2*n)-A000244(2*n)` -/
def P7282829841815288119.Spec : Prop :=
  ∀ n, P7282829841815288119.a n = A127796 n

end A127796

/-! ## A127796.P13973150428763902951

`A014210(2*n)+A037128(2*n)-A000244(2*n)`
-/

namespace A127796.P13973150428763902951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n) + (A037128 (2 * n) - A000244 (2 * n))

end

end A127796.P13973150428763902951

namespace A127796

/-- `A014210(2*n)+A037128(2*n)-A000244(2*n)` -/
def P13973150428763902951.Spec : Prop :=
  ∀ n, P13973150428763902951.a n = A127796 n

theorem P13973150428763902951.correct : P13973150428763902951.Spec := by
  intro n
  simp only [A127796, Nat.add_sub_cancel, A127796.P13973150428763902951.a, A127796.P12118606658700443075.a, A000244, A000244.P17162167222172810417.a, A013598, A013598.P2424592840134159747.a, A014210, A014210.P8900791388522812635.a, A037128, A037128.P2879077099965106880.a, A013597, A013597.P2064454081418839404.a, A014211, A014211.P17006346503809986776.a, A000038, A000038.P13734959004655594922.a, A008611, A008611.P13529448793166959438.a, A013632, A013632.P6559946879985956067.a, A104081, A104081.P13360857715571968060.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127796

/-! ## A127796.P767716105845219571

`A007051(2*n)+A014211(2*n)-A007051(2*n+1)`
-/

namespace A127796.P767716105845219571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n) + (A014211 (2 * n) - A007051 (2 * n + 1))

end

end A127796.P767716105845219571

namespace A127796

/-- `A007051(2*n)+A014211(2*n)-A007051(2*n+1)` -/
def P767716105845219571.Spec : Prop :=
  ∀ n, P767716105845219571.a n = A127796 n

end A127796

/-! ## A127796.P10449124961484579077

`A037127(2*n)+A134063(2*n)-A134063(2*n+1)`
-/

namespace A127796.P10449124961484579077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 (2 * n) + (A134063 (2 * n) - A134063 (2 * n + 1))

end

end A127796.P10449124961484579077

namespace A127796

/-- `A037127(2*n)+A134063(2*n)-A134063(2*n+1)` -/
def P10449124961484579077.Spec : Prop :=
  ∀ n, P10449124961484579077.a n = A127796 n

end A127796

