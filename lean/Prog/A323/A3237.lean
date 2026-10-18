import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

/-!
# A323700: Number of rooted uncrossed knight's walks on an infinite chessboard trapped after n moves with first move specified.

The programs for A323700, there is no canonical definition to state claims against.
-/

/-! ## A323700.P6767838351798312620

`A325178(A000162(n+1))+A323699(n+4)`
-/

namespace A323700.P6767838351798312620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (A000162 (n + 1)).toNat + A323699 (n + 4)

end

end A323700.P6767838351798312620

/-!
# A323701: a(n) is the number of primes p such that A007504(n) <= p < A007504(n+1).

The programs for A323701, the canonical program `A323701.P14769873866229796665` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323701 has offset 1).

The definition of A323701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323701.P983756921327511094

`Δ[A000720(A076873(n+1))]`
-/

namespace A323701.P983756921327511094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P983756921327511094

namespace A323701

/-- `Δ[A000720(A076873(n+1))]` -/
def P983756921327511094.Spec : Prop :=
  ∀ n, P983756921327511094.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P12136425663466959076

`Δ[A000720(A237589(n+1))]`
-/

namespace A323701.P12136425663466959076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A237589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P12136425663466959076

namespace A323701

/-- `Δ[A000720(A237589(n+1))]` -/
def P12136425663466959076.Spec : Prop :=
  ∀ n, P12136425663466959076.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P241204388236076824

`Δ[A000720(A007504(n+1)-1)]`
-/

namespace A323701.P241204388236076824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007504 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P241204388236076824

namespace A323701

/-- `Δ[A000720(A007504(n+1)-1)]` -/
def P241204388236076824.Spec : Prop :=
  ∀ n, P241204388236076824.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P7025599703751413059

`Δ[A000720(A014284(n+2)-2)]`
-/

namespace A323701.P7025599703751413059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014284 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P7025599703751413059

namespace A323701

/-- `Δ[A000720(A014284(n+2)-2)]` -/
def P7025599703751413059.Spec : Prop :=
  ∀ n, P7025599703751413059.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P2536773074822583940

`Δ[A000720(A101301(n+1)+n)]`
-/

namespace A323701.P2536773074822583940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A101301 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P2536773074822583940

namespace A323701

/-- `Δ[A000720(A101301(n+1)+n)]` -/
def P2536773074822583940.Spec : Prop :=
  ∀ n, P2536773074822583940.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P1051278068164493155

`Δ[A000720(∑[A000040(n+1)]-1)]`
-/

namespace A323701.P1051278068164493155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P1051278068164493155

namespace A323701

/-- `Δ[A000720(∑[A000040(n+1)]-1)]` -/
def P1051278068164493155.Spec : Prop :=
  ∀ n, P1051278068164493155.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P2154540443794801998

`Δ[A000720(∑[A008578(n+2)]-1)]`
-/

namespace A323701.P2154540443794801998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P2154540443794801998

namespace A323701

/-- `Δ[A000720(∑[A008578(n+2)]-1)]` -/
def P2154540443794801998.Spec : Prop :=
  ∀ n, P2154540443794801998.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P7124161822671438366

`Δ[A000720(A160793(2*(n+1))-1)]`
-/

namespace A323701.P7124161822671438366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A160793 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P7124161822671438366

namespace A323701

/-- `Δ[A000720(A160793(2*(n+1))-1)]` -/
def P7124161822671438366.Spec : Prop :=
  ∀ n, P7124161822671438366.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P11555786080157565527

`Δ[A000720(∑[A000040(n+1)%(n+1)²]+1)]`
-/

namespace A323701.P11555786080157565527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) ((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P11555786080157565527

namespace A323701

/-- `Δ[A000720(∑[A000040(n+1)%(n+1)²]+1)]` -/
def P11555786080157565527.Spec : Prop :=
  ∀ n, P11555786080157565527.a n = A323701 (n + 1)

end A323701

/-! ## A323701.P14769873866229796665

`Δ[A061395(2*A076873(n+1))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323701

/-- `Δ[A061395(2*A076873(n+1))]` -/
def P14769873866229796665.Spec : Prop :=
  ∀ n, P14769873866229796665.a n = A323701 (n + 1)

theorem P14769873866229796665.correct : P14769873866229796665.Spec := by
  intro n
  simp only [A323701, Nat.add_sub_cancel]

end A323701

/-!
# A323703: Number of values of (X^3 + X) mod prime(n).

The programs for A323703, the canonical program `A323703.P15034803060139666769` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323703 has offset 1).

The definition of A323703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323703.P15034803060139666769

`2*A144769(n+1)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A323703

/-- `2*A144769(n+1)+1` -/
def P15034803060139666769.Spec : Prop :=
  ∀ n, P15034803060139666769.a n = A323703 (n + 1)

theorem P15034803060139666769.correct : P15034803060139666769.Spec := by
  intro n
  simp only [A323703, Nat.add_sub_cancel]

end A323703

/-! ## A323703.P12547874658532453897

`2*floor(A000040(n+1)/3)+1`
-/

namespace A323703.P12547874658532453897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A000040 (n + 1) : ℚ) / 3⌋ + 1

end

end A323703.P12547874658532453897

namespace A323703

/-- `2*floor(A000040(n+1)/3)+1` -/
def P12547874658532453897.Spec : Prop :=
  ∀ n, P12547874658532453897.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P7596955000463084567

`2*ceil(A040976(n+1)/3)+1`
-/

namespace A323703.P7596955000463084567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A040976 (n + 1) : ℚ) / 3⌉ + 1

end

end A323703.P7596955000463084567

namespace A323703

/-- `2*ceil(A040976(n+1)/3)+1` -/
def P7596955000463084567.Spec : Prop :=
  ∀ n, P7596955000463084567.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P4974676690908904028

`2*floor(record[A006530(n+2)]/3)+1`
-/

namespace A323703.P4974676690908904028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌋ + 1

end

end A323703.P4974676690908904028

namespace A323703

/-- `2*floor(record[A006530(n+2)]/3)+1` -/
def P4974676690908904028.Spec : Prop :=
  ∀ n, P4974676690908904028.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P8125515220154212943

`A000027(2*floor((record[A000010(n+1)]+1)/3)+1)`
-/

namespace A323703.P8125515220154212943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 3⌋ + 1).toNat

end

end A323703.P8125515220154212943

namespace A323703

/-- `A000027(2*floor((record[A000010(n+1)]+1)/3)+1)` -/
def P8125515220154212943.Spec : Prop :=
  ∀ n, P8125515220154212943.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P531737666991683480

`2-A165747(A144769(n+1))`
-/

namespace A323703.P531737666991683480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A165747 (A144769 (n + 1)).toNat

end

end A323703.P531737666991683480

namespace A323703

/-- `2-A165747(A144769(n+1))` -/
def P531737666991683480.Spec : Prop :=
  ∀ n, P531737666991683480.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P11189000102518474881

`A222657(A102781(n+1))`
-/

namespace A323703.P11189000102518474881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222657 (A102781 (n + 1)).toNat

end

end A323703.P11189000102518474881

namespace A323703

/-- `A222657(A102781(n+1))` -/
def P11189000102518474881.Spec : Prop :=
  ∀ n, P11189000102518474881.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P14770736192500107990

`A130823(A008864(n+1))`
-/

namespace A323703.P14770736192500107990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A008864 (n + 1)).toNat

end

end A323703.P14770736192500107990

namespace A323703

/-- `A130823(A008864(n+1))` -/
def P14770736192500107990.Spec : Prop :=
  ∀ n, P14770736192500107990.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P10647062079946407317

`A130823(A028815(n+1))`
-/

namespace A323703.P10647062079946407317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A028815 (n + 1)).toNat

end

end A323703.P10647062079946407317

namespace A323703

/-- `A130823(A028815(n+1))` -/
def P10647062079946407317.Spec : Prop :=
  ∀ n, P10647062079946407317.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P575890167858100563

`A130823(A055670(n+1))`
-/

namespace A323703.P575890167858100563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A055670 (n + 1)).toNat

end

end A323703.P575890167858100563

namespace A323703

/-- `A130823(A055670(n+1))` -/
def P575890167858100563.Spec : Prop :=
  ∀ n, P575890167858100563.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P1160910133591873185

`A285872(A006005(n+1))`
-/

namespace A323703.P1160910133591873185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (A006005 (n + 1)).toNat

end

end A323703.P1160910133591873185

namespace A323703

/-- `A285872(A006005(n+1))` -/
def P1160910133591873185.Spec : Prop :=
  ∀ n, P1160910133591873185.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P16909609942918965362

`A130823(A116974(n+2))`
-/

namespace A323703.P16909609942918965362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A116974 (n + 2)).toNat

end

end A323703.P16909609942918965362

namespace A323703

/-- `A130823(A116974(n+2))` -/
def P16909609942918965362.Spec : Prop :=
  ∀ n, P16909609942918965362.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P6651270223888800077

`A130823(A175787(n+2))`
-/

namespace A323703.P6651270223888800077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A175787 (n + 2)).toNat

end

end A323703.P6651270223888800077

namespace A323703

/-- `A130823(A175787(n+2))` -/
def P6651270223888800077.Spec : Prop :=
  ∀ n, P6651270223888800077.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P7284440771588014600

`A285872(A075643(n+2))`
-/

namespace A323703.P7284440771588014600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (A075643 (n + 2)).toNat

end

end A323703.P7284440771588014600

namespace A323703

/-- `A285872(A075643(n+2))` -/
def P7284440771588014600.Spec : Prop :=
  ∀ n, P7284440771588014600.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P17296777835513602155

`A130823(A000040(n+1)+1)`
-/

namespace A323703.P17296777835513602155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A000040 (n + 1) + 1).toNat

end

end A323703.P17296777835513602155

namespace A323703

/-- `A130823(A000040(n+1)+1)` -/
def P17296777835513602155.Spec : Prop :=
  ∀ n, P17296777835513602155.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P10723032221850661324

`A130823(record[A006530(n+2)+1])`
-/

namespace A323703.P10723032221850661324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323703.P10723032221850661324

namespace A323703

/-- `A130823(record[A006530(n+2)+1])` -/
def P10723032221850661324.Spec : Prop :=
  ∀ n, P10723032221850661324.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P49677636639178286

`A285872(record[A006530(2*n+1)])`
-/

namespace A323703.P49677636639178286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323703.P49677636639178286

namespace A323703

/-- `A285872(record[A006530(2*n+1)])` -/
def P49677636639178286.Spec : Prop :=
  ∀ n, P49677636639178286.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P8829199151811729452

`A285872(record[A020639(2*n+1)])`
-/

namespace A323703.P8829199151811729452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323703.P8829199151811729452

namespace A323703

/-- `A285872(record[A020639(2*n+1)])` -/
def P8829199151811729452.Spec : Prop :=
  ∀ n, P8829199151811729452.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P11837275050401564758

`A018838(A000040(n+1)+1)-1`
-/

namespace A323703.P11837275050401564758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018838 (A000040 (n + 1) + 1).toNat - 1

end

end A323703.P11837275050401564758

namespace A323703

/-- `A018838(A000040(n+1)+1)-1` -/
def P11837275050401564758.Spec : Prop :=
  ∀ n, P11837275050401564758.a n = A323703 (n + 1)

end A323703

/-! ## A323703.P6240570422363763128

`A302402(A000040(n+1)+1)-1`
-/

namespace A323703.P6240570422363763128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 (A000040 (n + 1) + 1).toNat - 1

end

end A323703.P6240570422363763128

namespace A323703

/-- `A302402(A000040(n+1)+1)-1` -/
def P6240570422363763128.Spec : Prop :=
  ∀ n, P6240570422363763128.a n = A323703 (n + 1)

end A323703

/-!
# A323704: Number of cubic residues (including 0) modulo the n-th prime.

The programs for A323704, the canonical program `A323704.P18318986639112400400` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323704 has offset 1).

The definition of A323704 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323704.P18318986639112400400

`A236959(n+1)+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323704

/-- `A236959(n+1)+1` -/
def P18318986639112400400.Spec : Prop :=
  ∀ n, P18318986639112400400.a n = A323704 (n + 1)

theorem P18318986639112400400.correct : P18318986639112400400.Spec := by
  intro n
  simp only [A323704, Nat.add_sub_cancel]

end A323704

/-! ## A323704.P13251222817967283879

`A046530(A000040(n+1))`
-/

namespace A323704.P13251222817967283879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A000040 (n + 1)).toNat

end

end A323704.P13251222817967283879

namespace A323704

/-- `A046530(A000040(n+1))` -/
def P13251222817967283879.Spec : Prop :=
  ∀ n, P13251222817967283879.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P11359637517296129796

`gcd(A006093(n+1), A127919(n+1))+1`
-/

namespace A323704.P11359637517296129796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A127919 (n + 1)) + 1

end

end A323704.P11359637517296129796

namespace A323704

/-- `gcd(A006093(n+1), A127919(n+1))+1` -/
def P11359637517296129796.Spec : Prop :=
  ∀ n, (P11359637517296129796.a n : ℤ) = A323704 (n + 1)

end A323704

/-! ## A323704.P102263016714614521

`gcd(A037167(n+1), A127920(n+1))+1`
-/

namespace A323704.P102263016714614521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037167 (n + 1)) (A127920 (n + 1)) + 1

end

end A323704.P102263016714614521

namespace A323704

/-- `gcd(A037167(n+1), A127920(n+1))+1` -/
def P102263016714614521.Spec : Prop :=
  ∀ n, (P102263016714614521.a n : ℤ) = A323704 (n + 1)

end A323704

/-! ## A323704.P5031510783421213509

`lcm(3, record[A000010(n+1)])/3+1`
-/

namespace A323704.P5031510783421213509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 3 + 1

end

end A323704.P5031510783421213509

namespace A323704

/-- `lcm(3, record[A000010(n+1)])/3+1` -/
def P5031510783421213509.Spec : Prop :=
  ∀ n, P5031510783421213509.a n = (A323704 (n + 1) : ℚ)

end A323704

/-! ## A323704.P10511582027526299379

`p?[n-(-1)^n]%A160595(4*p?[round(8*n/7)])`
-/

namespace A323704.P10511582027526299379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A160595 (4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat)

end

end A323704.P10511582027526299379

namespace A323704

/-- `p?[n-(-1)^n]%A160595(4*p?[round(8*n/7)])` -/
def P10511582027526299379.Spec : Prop :=
  ∀ n, P10511582027526299379.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P3897985683498067734

`A046530(p?[comp[n²]])`
-/

namespace A323704.P3897985683498067734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A323704.P3897985683498067734

namespace A323704

/-- `A046530(p?[comp[n²]])` -/
def P3897985683498067734.Spec : Prop :=
  ∀ n, P3897985683498067734.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P2199375830244547345

`A087692(p?[xor(1, n)+1])+1`
-/

namespace A323704.P2199375830244547345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A323704.P2199375830244547345

namespace A323704

/-- `A087692(p?[xor(1, n)+1])+1` -/
def P2199375830244547345.Spec : Prop :=
  ∀ n, P2199375830244547345.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P15744783682219737550

`A046530(∏{d}[p?[xor(1, n)+1], #])`
-/

namespace A323704.P15744783682219737550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A323704.P15744783682219737550

namespace A323704

/-- `A046530(∏{d}[p?[xor(1, n)+1], #])` -/
def P15744783682219737550.Spec : Prop :=
  ∀ n, P15744783682219737550.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P3960270659181200443

`A046530(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A323704.P3960270659181200443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A323704.P3960270659181200443

namespace A323704

/-- `A046530(∏{p}[p?[xor(1, n)+1], #])` -/
def P3960270659181200443.Spec : Prop :=
  ∀ n, P3960270659181200443.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P8664799973064349042

`A046530(and(p?[xor(1, n)+1], -1))`
-/

namespace A323704.P8664799973064349042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)).toNat

end

end A323704.P8664799973064349042

namespace A323704

/-- `A046530(and(p?[xor(1, n)+1], -1))` -/
def P8664799973064349042.Spec : Prop :=
  ∀ n, P8664799973064349042.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P7460050590959836316

`A046530(lcm((-1)^∑[n], p?[n-(-1)^n]))`
-/

namespace A323704.P7460050590959836316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (Int.lcm ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)))

end

end A323704.P7460050590959836316

namespace A323704

/-- `A046530(lcm((-1)^∑[n], p?[n-(-1)^n]))` -/
def P7460050590959836316.Spec : Prop :=
  ∀ n, P7460050590959836316.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P3809965028270177851

`A020725(A236959(n+1))`
-/

namespace A323704.P3809965028270177851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A236959 (n + 1)).toNat

end

end A323704.P3809965028270177851

namespace A323704

/-- `A020725(A236959(n+1))` -/
def P3809965028270177851.Spec : Prop :=
  ∀ n, P3809965028270177851.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P5345143196580833464

`A046530(A008578(n+2))`
-/

namespace A323704.P5345143196580833464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A008578 (n + 2)).toNat

end

end A323704.P5345143196580833464

namespace A323704

/-- `A046530(A008578(n+2))` -/
def P5345143196580833464.Spec : Prop :=
  ∀ n, P5345143196580833464.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P4625959907991672089

`A046530(A182986(n+2))`
-/

namespace A323704.P4625959907991672089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A182986 (n + 2)).toNat

end

end A323704.P4625959907991672089

namespace A323704

/-- `A046530(A182986(n+2))` -/
def P4625959907991672089.Spec : Prop :=
  ∀ n, P4625959907991672089.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P1471570491904075657

`A046530(A006093(n+1)+1)`
-/

namespace A323704.P1471570491904075657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A006093 (n + 1) + 1).toNat

end

end A323704.P1471570491904075657

namespace A323704

/-- `A046530(A006093(n+1)+1)` -/
def P1471570491904075657.Spec : Prop :=
  ∀ n, P1471570491904075657.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P15820278822391105712

`A051176(A039915(n+1))+1`
-/

namespace A323704.P15820278822391105712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A039915 (n + 1)).toNat + 1

end

end A323704.P15820278822391105712

namespace A323704

/-- `A051176(A039915(n+1))+1` -/
def P15820278822391105712.Spec : Prop :=
  ∀ n, P15820278822391105712.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P16389591757011775288

`A087692(A006005(n+1))+1`
-/

namespace A323704.P16389591757011775288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A006005 (n + 1)).toNat + 1

end

end A323704.P16389591757011775288

namespace A323704

/-- `A087692(A006005(n+1))+1` -/
def P16389591757011775288.Spec : Prop :=
  ∀ n, P16389591757011775288.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P1311094540622097214

`A342415(A100484(n+1))+1`
-/

namespace A323704.P1311094540622097214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342415 (A100484 (n + 1)).toNat + 1

end

end A323704.P1311094540622097214

namespace A323704

/-- `A342415(A100484(n+1))+1` -/
def P1311094540622097214.Spec : Prop :=
  ∀ n, P1311094540622097214.a n = A323704 (n + 1)

end A323704

/-! ## A323704.P8713353752406599993

`A060789(A037168(n+1))+1`
-/

namespace A323704.P8713353752406599993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A037168 (n + 1)).toNat + 1

end

end A323704.P8713353752406599993

namespace A323704

/-- `A060789(A037168(n+1))+1` -/
def P8713353752406599993.Spec : Prop :=
  ∀ n, P8713353752406599993.a n = A323704 (n + 1)

end A323704

/-!
# A323707: a(n) = denominator of Sum_{d|n} tau(d)/pod(d) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

The programs for A323707, there is no canonical definition to state claims against.
-/

/-! ## A323707.P2113555096494420678

`A344758(A291186(n+1))`
-/

namespace A323707.P2113555096494420678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344758 (A291186 (n + 1)).toNat

end

end A323707.P2113555096494420678

/-! ## A323707.P4071252441711468456

`A291186(n+1)%A054582(A344479(3*(n+1)))`
-/

namespace A323707.P4071252441711468456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291186 (n + 1)) (A054582 (A344479 (3 * (n + 1))).toNat)

end

end A323707.P4071252441711468456

/-!
# A323708: a(n) is the smallest positive number not yet in the sequence that contains both the smallest and largest digits from a(n-1); a(1)=1.

The programs for A323708, there is no canonical definition to state claims against.
-/

/-! ## A323708.P12028934903971475302

`A341692(∑[A304975(n)!])`
-/

namespace A323708.P12028934903971475302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A304975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323708.P12028934903971475302

/-! ## A323708.P645868916600163399

`A341692(A304975(n)!+n)`
-/

namespace A323708.P645868916600163399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341692 (Nat.factorial (A304975 n).toNat + n)

end

end A323708.P645868916600163399

/-!
# A323709: a(n) is the number of perfect matchings in the circulant graph on 2*n vertices with jumps 1, 2, and 3.

The programs for A323709, the canonical program `A323709.P10887426177752263811` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323709 has offset 1).

The definition of A323709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323709.P10887426177752263811

`2*a(n-1)+a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=15, a(3)=60, a(4)=144, a(5)=336, a(6)=788`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A323709

/-- `2*a(n-1)+a(n-2)-a(n-4)` -/
def P10887426177752263811.Spec : Prop :=
  ∀ n, P10887426177752263811.a n = A323709 (n + 1)

theorem P10887426177752263811.correct : P10887426177752263811.Spec := by
  intro n
  simp only [A323709, Nat.add_sub_cancel]

end A323709

/-! ## A323709.P18221433397471135485

`a(A203034(n+1))` with `a(0)=2, a(1)=3, a(2)=15, a(3)=60, a(4)=144, a(5)=336, a(6)=788`
-/

namespace A323709.P18221433397471135485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 15, 60, 144, 336, 788] fun n a =>
  a (A203034 (n + 1)).toNat

end

end A323709.P18221433397471135485

namespace A323709

/-- `a(A203034(n+1))` -/
def P18221433397471135485.Spec : Prop :=
  ∀ n, (P18221433397471135485.a n : ℤ) = A323709 (n + 1)

end A323709

/-! ## A323709.P7241788228107060891

`a(A203036(n+1))` with `a(0)=2, a(1)=3, a(2)=15, a(3)=60, a(4)=144, a(5)=336, a(6)=788`
-/

namespace A323709.P7241788228107060891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 15, 60, 144, 336, 788] fun n a =>
  a (A203036 (n + 1)).toNat

end

end A323709.P7241788228107060891

namespace A323709

/-- `a(A203036(n+1))` -/
def P7241788228107060891.Spec : Prop :=
  ∀ n, (P7241788228107060891.a n : ℤ) = A323709 (n + 1)

end A323709

/-!
# A323710: a(n) is the symmetrical of n via transport of structure from binary trees, where the binary tree of n is built as follows: create a root with value n and recursively apply the rule {write node's value as (2^c)*(2*k+1); if c>0, create a left child with value c; if k>0, create a right child with value k}.

The programs for A323710, there is no canonical definition to state claims against.
-/

/-! ## A323710.P15895321897780712722

`A207954(A154451(n+1))%A154501(n+2)`
-/

namespace A323710.P15895321897780712722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207954 (A154451 (n + 1)).toNat) (A154501 (n + 2))

end

end A323710.P15895321897780712722

/-!
# A323711: Numbers k such that k, 2*k, and 3*k are anagrams of each other.

The programs for A323711, there is no canonical definition to state claims against.
-/

/-! ## A323711.P15136636203777473069

`∩[A023086(n+1), A023087(n+2)]`
-/

namespace A323711.P15136636203777473069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023087 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323711.P15136636203777473069

/-!
# A323714: Squares where knight moving to a lowest unvisited square on a spirally numbered board will have no available moves.

The programs for A323714, there is no canonical definition to state claims against.
-/

/-! ## A323714.P4215742964047600938

`A323813(n+1)+1`
-/

namespace A323714.P4215742964047600938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323813 (n + 1) + 1

end

end A323714.P4215742964047600938

/-! ## A323714.P1095881280916629240

`A004830(A323813(n+1))`
-/

namespace A323714.P1095881280916629240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A323813 (n + 1)).toNat

end

end A323714.P1095881280916629240

/-!
# A323715: a(n) = Product_{k=0..n} (2^k + 3^k).

The programs for A323715, there is no canonical definition to state claims against.
-/

/-! ## A323715.P15617388713873134178

`∏[2^n+3^n]`
-/

namespace A323715.P15617388713873134178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A323715.P15617388713873134178

/-! ## A323715.P8908313451643416193

`(2^n+3^n)*a(n-1)` with `a(0)=2`
-/

namespace A323715.P8908313451643416193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (2 ^ n + 3 ^ n) * a (n - 1)

end

end A323715.P8908313451643416193

/-! ## A323715.P9644901009022628021

`lcm(2, ∏[A007689(n)])`
-/

namespace A323715.P9644901009022628021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A323715.P9644901009022628021

/-! ## A323715.P7184216189850499957

`abs(∏[Δ[A094374(n)]])`
-/

namespace A323715.P7184216189850499957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A323715.P7184216189850499957

/-! ## A323715.P16372271748147076714

`abs(∏[Δ[A099754(n)]])`
-/

namespace A323715.P16372271748147076714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A323715.P16372271748147076714

/-!
# A323716: a(n) = Product_{k=0..n} (3^k + 1).

The programs for A323716, there is no canonical definition to state claims against.
-/

/-! ## A323716.P5146505459209440808

`∏[1+3^n]`
-/

namespace A323716.P5146505459209440808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A323716.P5146505459209440808

/-! ## A323716.P2089711170405185292

`(3^n+1)*a(n-1)` with `a(0)=2`
-/

namespace A323716.P2089711170405185292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (3 ^ n + 1) * a (n - 1)

end

end A323716.P2089711170405185292

/-! ## A323716.P12315875652629036120

`(3^n+1)/a(n-1)^(-1)` with `a(0)=2`
-/

namespace A323716.P12315875652629036120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (3 ^ n + 1 : ℚ) / a (n - 1) ^ (-1 : ℤ)

end

end A323716.P12315875652629036120

/-! ## A323716.P4281080674201786504

`a(n-1)+lcm(3^n, a(n-1))` with `a(0)=2`
-/

namespace A323716.P4281080674201786504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.lcm (3 ^ n) (a (n - 1))

end

end A323716.P4281080674201786504

/-! ## A323716.P7212843387665065978

`2*a(n-1)*∑[ceil(3^(n-1))]` with `a(0)=2`
-/

namespace A323716.P7212843387665065978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323716.P7212843387665065978

/-!
# A323717: a(n) = Product_{k=0..n} (n! + k!).

The programs for A323717, there is no canonical definition to state claims against.
-/

/-! ## A323717.P412066864647340009

`A000178(n)*A306193(n)`
-/

namespace A323717.P412066864647340009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A306193 n

end

end A323717.P412066864647340009

/-!
# A323718: Array read by antidiagonals upwards where A(n,k) is the number of k-times partitions of n.

The programs for A323718, there is no canonical definition to state claims against.
-/

/-! ## A323718.P1989096977600855527

`A352104(A262809(n))`
-/

namespace A323718.P1989096977600855527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 (A262809 n).toNat

end

end A323718.P1989096977600855527

/-! ## A323718.P2883343573494574187

`A117806(A181196(n+1))`
-/

namespace A323718.P2883343573494574187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117806 (A181196 (n + 1)).toNat

end

end A323718.P2883343573494574187

/-! ## A323718.P12684542927948372589

`A115727(A187783(n+1))`
-/

namespace A323718.P12684542927948372589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (A187783 (n + 1)).toNat

end

end A323718.P12684542927948372589

/-! ## A323718.P3805981950322096306

`A117806(A227578(n+1))`
-/

namespace A323718.P3805981950322096306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117806 (A227578 (n + 1)).toNat

end

end A323718.P3805981950322096306

/-! ## A323718.P14898634324983282922

`A134021(A229243(n+1))`
-/

namespace A323718.P14898634324983282922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A229243 (n + 1)).toNat

end

end A323718.P14898634324983282922

/-!
# A323719: Array read by antidiagonals upwards where A(n, k) is the number of orderless factorizations of n with k - 1 levels of parentheses.

The programs for A323719, there is no canonical definition to state claims against.
-/

/-! ## A323719.P18406539369023306267

`A355735(gcd(A055208(n+2), A257895(n+1)))`
-/

namespace A323719.P18406539369023306267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (Int.gcd (A055208 (n + 2)) (A257895 (n + 1)))

end

end A323719.P18406539369023306267

/-! ## A323719.P5101010952526189094

`gcd(A131818(n+1), A359893(A057728(n+1)))`
-/

namespace A323719.P5101010952526189094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131818 (n + 1)) (A359893 (A057728 (n + 1)).toNat)

end

end A323719.P5101010952526189094

/-! ## A323719.P13939737405216757912

`gcd(A144457(n+1), A213211(n))`
-/

namespace A323719.P13939737405216757912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144457 (n + 1)) (A213211 n)

end

end A323719.P13939737405216757912

/-! ## A323719.P16702313117625963585

`gcd(A060096(A140996(n+1)²), A211700(n+1))`
-/

namespace A323719.P16702313117625963585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060096 (A140996 (n + 1) ^ 2).toNat) (A211700 (n + 1))

end

end A323719.P16702313117625963585

/-! ## A323719.P12934454197688330987

`A139549(A082154(n+1))`
-/

namespace A323719.P12934454197688330987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139549 (A082154 (n + 1)).toNat

end

end A323719.P12934454197688330987

/-!
# A323723: a(n) = (-2 - (-1)^n*(-2 + n) + n + 2*n^3)/4.

The programs for A323723, the canonical program `A323723.P10463574231425585088` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323723 has offset 0).

The definition of A323723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323723.P10463574231425585088

`2*A004526(n*A000982(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323723

/-- `2*A004526(n*A000982(n))` -/
def P10463574231425585088.Spec : Prop :=
  ∀ n, P10463574231425585088.a n = A323723 n

theorem P10463574231425585088.correct : P10463574231425585088.Spec := by
  intro n
  simp only [A323723]

end A323723

/-! ## A323723.P3788851713982475591

`n²+(n-2)*ceil(n²/2)`
-/

namespace A323723.P3788851713982475591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ((n : ℤ) - 2) * ⌈(n ^ 2 : ℚ) / 2⌉

end

end A323723.P3788851713982475591

namespace A323723

/-- `n²+(n-2)*ceil(n²/2)` -/
def P3788851713982475591.Spec : Prop :=
  ∀ n, P3788851713982475591.a n = A323723 n

end A323723

/-! ## A323723.P14583810720140700524

`2*(A212561(n)+A002620(n))`
-/

namespace A323723.P14583810720140700524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212561 n + A002620 n)

end

end A323723.P14583810720140700524

namespace A323723

/-- `2*(A212561(n)+A002620(n))` -/
def P14583810720140700524.Spec : Prop :=
  ∀ n, P14583810720140700524.a n = A323723 n

end A323723

/-! ## A323723.P5086509049842966899

`(A092530(n)-A052928(n))*A052928(n)`
-/

namespace A323723.P5086509049842966899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092530 n - A052928 n) * A052928 n

end

end A323723.P5086509049842966899

namespace A323723

/-- `(A092530(n)-A052928(n))*A052928(n)` -/
def P5086509049842966899.Spec : Prop :=
  ∀ n, P5086509049842966899.a n = A323723 n

end A323723

/-! ## A323723.P39105271260185083

`(A266883(n)-A028242(n))*A004526(n)`
-/

namespace A323723.P39105271260185083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266883 n - A028242 n) * A004526 n

end

end A323723.P39105271260185083

namespace A323723

/-- `(A266883(n)-A028242(n))*A004526(n)` -/
def P39105271260185083.Spec : Prop :=
  ∀ n, P39105271260185083.a n = A323723 n

end A323723

/-! ## A323723.P4272000671583093151

`(A031940(n+1)-A123684(n+1))*A052928(n)`
-/

namespace A323723.P4272000671583093151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031940 (n + 1) - A123684 (n + 1)) * A052928 n

end

end A323723.P4272000671583093151

namespace A323723

/-- `(A031940(n+1)-A123684(n+1))*A052928(n)` -/
def P4272000671583093151.Spec : Prop :=
  ∀ n, P4272000671583093151.a n = A323723 n

end A323723

/-!
# A323724: a(n) = n*(2*(n - 2)*n + (-1)^n + 3)/4.

The programs for A323724, the canonical program `A323724.P2656284033242620266` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323724 has offset 0).

The definition of A323724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323724.P2656284033242620266

`n*(2*(n-2)*n+(-1)^n+3)/4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A323724

/-- `n*(2*(n-2)*n+(-1)^n+3)/4` -/
def P2656284033242620266.Spec : Prop :=
  ∀ n, P2656284033242620266.a n = (A323724 n : ℚ)

end A323724

/-! ## A323724.P15929237495974853859

`lcm(n, ceil((1-n)²/2))`
-/

namespace A323724.P15929237495974853859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌉

end

end A323724.P15929237495974853859

namespace A323724

/-- `lcm(n, ceil((1-n)²/2))` -/
def P15929237495974853859.Spec : Prop :=
  ∀ n, (P15929237495974853859.a n : ℤ) = A323724 n

end A323724

/-! ## A323724.P3509653108701542122

`2*n+n*∑[or(1, n-2)]`
-/

namespace A323724.P3509653108701542122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323724.P3509653108701542122

namespace A323724

/-- `2*n+n*∑[or(1, n-2)]` -/
def P3509653108701542122.Spec : Prop :=
  ∀ n, P3509653108701542122.a n = A323724 n

end A323724

/-! ## A323724.P17629514690665871192

`n*∑[a(n-2)+2]-n` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A323724.P17629514690665871192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A323724.P17629514690665871192

namespace A323724

/-- `n*∑[a(n-2)+2]-n` -/
def P17629514690665871192.Spec : Prop :=
  ∀ n, P17629514690665871192.a n = A323724 n

end A323724

/-! ## A323724.P12836790248656323491

`n*∑[n]-A191967(n)`
-/

namespace A323724.P12836790248656323491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A191967 n

end

end A323724.P12836790248656323491

namespace A323724

/-- `n*∑[n]-A191967(n)` -/
def P12836790248656323491.Spec : Prop :=
  ∀ n, P12836790248656323491.a n = A323724 n

end A323724

/-! ## A323724.P4179585961953493144

`abs(2-abs(n*A099392(n+1)+2-n²))`
-/

namespace A323724.P4179585961953493144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |(n : ℤ) * A099392 (n + 1) + 2 - (n ^ 2 : ℤ)|)|

end

end A323724.P4179585961953493144

namespace A323724

/-- `abs(2-abs(n*A099392(n+1)+2-n²))` -/
def P4179585961953493144.Spec : Prop :=
  ∀ n, P4179585961953493144.a n = A323724 n

end A323724

/-! ## A323724.P4719589272156600144

`A059722(n)-A212679(n)`
-/

namespace A323724.P4719589272156600144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - A212679 n

end

end A323724.P4719589272156600144

namespace A323724

/-- `A059722(n)-A212679(n)` -/
def P4719589272156600144.Spec : Prop :=
  ∀ n, P4719589272156600144.a n = A323724 n

end A323724

/-! ## A323724.P11678887068353884091

`A135503(n)-A181995(n)`
-/

namespace A323724.P11678887068353884091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n - A181995 n

end

end A323724.P11678887068353884091

namespace A323724

/-- `A135503(n)-A181995(n)` -/
def P11678887068353884091.Spec : Prop :=
  ∀ n, P11678887068353884091.a n = A323724 n

end A323724

/-! ## A323724.P799462707580556594

`A218152(n)-A075855(n+1)`
-/

namespace A323724.P799462707580556594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218152 n - A075855 (n + 1)

end

end A323724.P799462707580556594

namespace A323724

/-- `A218152(n)-A075855(n+1)` -/
def P799462707580556594.Spec : Prop :=
  ∀ n, P799462707580556594.a n = A323724 n

end A323724

/-! ## A323724.P6740573757269952501

`A246697(n)-A134238(n+1)`
-/

namespace A323724.P6740573757269952501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246697 n - A134238 (n + 1)

end

end A323724.P6740573757269952501

namespace A323724

/-- `A246697(n)-A134238(n+1)` -/
def P6740573757269952501.Spec : Prop :=
  ∀ n, P6740573757269952501.a n = A323724 n

end A323724

/-! ## A323724.P11260890534229161701

`A203552(n)-A289179(n+1)`
-/

namespace A323724.P11260890534229161701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n - A289179 (n + 1)

end

end A323724.P11260890534229161701

namespace A323724

/-- `A203552(n)-A289179(n+1)` -/
def P11260890534229161701.Spec : Prop :=
  ∀ n, P11260890534229161701.a n = A323724 n

end A323724

/-! ## A323724.P17500042673984177218

`n*A161680(n)-A050187(n)`
-/

namespace A323724.P17500042673984177218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A161680 n - A050187 n

end

end A323724.P17500042673984177218

namespace A323724

/-- `n*A161680(n)-A050187(n)` -/
def P17500042673984177218.Spec : Prop :=
  ∀ n, P17500042673984177218.a n = A323724 n

end A323724

/-! ## A323724.P2668937733237232519

`A006003(n)+A142150(n)-n²`
-/

namespace A323724.P2668937733237232519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (A142150 n - (n ^ 2 : ℤ))

end

end A323724.P2668937733237232519

namespace A323724

/-- `A006003(n)+A142150(n)-n²` -/
def P2668937733237232519.Spec : Prop :=
  ∀ n, P2668937733237232519.a n = A323724 n

end A323724

/-! ## A323724.P1290235812106993585

`A201243(n+1)%A184632(n+1)`
-/

namespace A323724.P1290235812106993585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201243 (n + 1)) (A184632 (n + 1))

end

end A323724.P1290235812106993585

namespace A323724

/-- `A201243(n+1)%A184632(n+1)` -/
def P1290235812106993585.Spec : Prop :=
  ∀ n, P1290235812106993585.a n = A323724 n

end A323724

/-! ## A323724.P2273649603302587815

`∑[A000326(n)]+A142150(n)-A000326(n)`
-/

namespace A323724.P2273649603302587815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A142150 n - A000326 n)

end

end A323724.P2273649603302587815

namespace A323724

/-- `∑[A000326(n)]+A142150(n)-A000326(n)` -/
def P2273649603302587815.Spec : Prop :=
  ∀ n, P2273649603302587815.a n = A323724 n

end A323724

/-! ## A323724.P2941920232871282523

`n*A000982(n+1)-2*n²`
-/

namespace A323724.P2941920232871282523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000982 (n + 1) - (2 * n ^ 2 : ℤ)

end

end A323724.P2941920232871282523

namespace A323724

/-- `n*A000982(n+1)-2*n²` -/
def P2941920232871282523.Spec : Prop :=
  ∀ n, P2941920232871282523.a n = A323724 n

end A323724

/-! ## A323724.P9054147838464423099

`A280186(2*n)-2*A280186(n+1)`
-/

namespace A323724.P9054147838464423099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 (2 * n) - 2 * A280186 (n + 1)

end

end A323724.P9054147838464423099

namespace A323724

/-- `A280186(2*n)-2*A280186(n+1)` -/
def P9054147838464423099.Spec : Prop :=
  ∀ n, P9054147838464423099.a n = A323724 n

end A323724

/-! ## A323724.P4317925428427281194

`n*A030978(n+1)-A030978(2*n)`
-/

namespace A323724.P4317925428427281194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030978 (n + 1) - A030978 (2 * n)

end

end A323724.P4317925428427281194

namespace A323724

/-- `n*A030978(n+1)-A030978(2*n)` -/
def P4317925428427281194.Spec : Prop :=
  ∀ n, P4317925428427281194.a n = A323724 n

end A323724

/-! ## A323724.P16033883524290948996

`n*A008619(n²)-n²`
-/

namespace A323724.P16033883524290948996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008619 (n ^ 2) - (n ^ 2 : ℤ)

end

end A323724.P16033883524290948996

namespace A323724

/-- `n*A008619(n²)-n²` -/
def P16033883524290948996.Spec : Prop :=
  ∀ n, P16033883524290948996.a n = A323724 n

end A323724

/-! ## A323724.P2804525172573607230

`n*(A004526(n²)-n)+n`
-/

namespace A323724.P2804525172573607230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A004526 (n ^ 2) - (n : ℤ)) + (n : ℤ)

end

end A323724.P2804525172573607230

namespace A323724

/-- `n*(A004526(n²)-n)+n` -/
def P2804525172573607230.Spec : Prop :=
  ∀ n, P2804525172573607230.a n = A323724 n

end A323724

/-!
# A323726: Odd numbers k such that sigma(k-1) < sigma(k) < sigma(k+1), sigma(n) = A000203.

The programs for A323726, there is no canonical definition to state claims against.
-/

/-! ## A323726.P15518423323764666762

`∩[A067825(n+1), A364659(n+1)]+1`
-/

namespace A323726.P15518423323764666762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A323726.P15518423323764666762

/-! ## A323726.P17913815953789448063

`∩[A053224(n+1), A333041(n+1)]`
-/

namespace A323726.P17913815953789448063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323726.P17913815953789448063

/-! ## A323726.P12384230769600751195

`∩[A053224(n+1), A067825(n+1)+1]`
-/

namespace A323726.P12384230769600751195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067825 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323726.P12384230769600751195

/-! ## A323726.P1204567637940040941

`A364662(n+1)+A037445(A007522(n+1))`
-/

namespace A323726.P1204567637940040941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364662 (n + 1) + A037445 (A007522 (n + 1)).toNat

end

end A323726.P1204567637940040941

/-! ## A323726.P12275265393587794963

`∩[A047252(n+1), A364659(n+1)+1]`
-/

namespace A323726.P12275265393587794963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364659 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323726.P12275265393587794963

/-! ## A323726.P7908736339114589614

`A020725(∩[A067825(n+1), A364659(n+1)])`
-/

namespace A323726.P7908736339114589614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A323726.P7908736339114589614

/-! ## A323726.P13895254101013100684

`A020725(∩[A020725(2*n+1), A364659(n+2)])`
-/

namespace A323726.P13895254101013100684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364659 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A323726.P13895254101013100684

/-! ## A323726.P9945657575045099553

`A364662(n+1)+A000005(A111488(n+1))`
-/

namespace A323726.P9945657575045099553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364662 (n + 1) + A000005 (A111488 (n + 1)).toNat

end

end A323726.P9945657575045099553

/-!
# A323727: Number of 1's required to build n using +, -, *, ^ and tetration.

The programs for A323727, there is no canonical definition to state claims against.
-/

/-! ## A323727.P12623559345355996262

`A091334(n+1)-A103675(A208355(n+2))`
-/

namespace A323727.P12623559345355996262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091334 (n + 1) - A103675 (A208355 (n + 2)).toNat

end

end A323727.P12623559345355996262

/-!
# A323728: a(n) is the smallest number k such that both k-2*n and k+2*n are squares.

The programs for A323728, there is no canonical definition to state claims against.
-/

/-! ## A323728.P10207912127337992529

`A056737(n+1)²+2*(n+1)`
-/

namespace A323728.P10207912127337992529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1) ^ 2 + (2 * (n + 1) : ℤ)

end

end A323728.P10207912127337992529

/-! ## A323728.P18143369967408178419

`A063655(n+1)²-2*(n+1)`
-/

namespace A323728.P18143369967408178419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A323728.P18143369967408178419

/-! ## A323728.P16140183232567942363

`A002522(A056737(n+1))+Δ[n²]`
-/

namespace A323728.P16140183232567942363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A056737 (n + 1)).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A323728.P16140183232567942363

/-! ## A323728.P11784976464861058281

`A033676(n+1)²+A033677(n+1)²`
-/

namespace A323728.P11784976464861058281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) ^ 2 + A033677 (n + 1) ^ 2

end

end A323728.P11784976464861058281

/-! ## A323728.P6663453730382658442

`A162348(2*n+1)²+A162348(2*(n+1))²`
-/

namespace A323728.P6663453730382658442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * n + 1) ^ 2 + A162348 (2 * (n + 1)) ^ 2

end

end A323728.P6663453730382658442

/-! ## A323728.P14525424083645437288

`A139717(n+1)+A033676(n+1)*A063655(n+1)`
-/

namespace A323728.P14525424083645437288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139717 (n + 1) + A033676 (n + 1) * A063655 (n + 1)

end

end A323728.P14525424083645437288

/-! ## A323728.P12107817902512529299

`A138219(2*(n+1))+A000290(A056737(n+1))`
-/

namespace A323728.P12107817902512529299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138219 (2 * (n + 1)) + A000290 (A056737 (n + 1)).toNat

end

end A323728.P12107817902512529299

/-! ## A323728.P2195499816777470066

`A033677(n+1)*A063655(n+1)-A139716(n+1)`
-/

namespace A323728.P2195499816777470066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A063655 (n + 1) - A139716 (n + 1)

end

end A323728.P2195499816777470066

/-!
# A323729: Non-prime-powers k at which the variance of the first differences of the logarithms of the divisors of k, scaled by log(k), reaches a new minimum.

The programs for A323729, there is no canonical definition to state claims against.
-/

/-! ## A323729.P10766345487847332009

`A276982((n+2)^n+n+1)`
-/

namespace A323729.P10766345487847332009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276982 ((n + 2) ^ n + (n + 1))

end

end A323729.P10766345487847332009

/-!
# A323731: a(n) is the number of numbers k whose n-th power has exactly k divisors.

The programs for A323731, there is no canonical definition to state claims against.
-/

/-! ## A323731.P16037526149788193096

`Δ[eq[1, A323730(n)]]`
-/

namespace A323731.P16037526149788193096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A323731.P16037526149788193096

/-! ## A323731.P14592233321049176316

`A000027(Δ[record[n-A323730(n)]])`
-/

namespace A323731.P14592233321049176316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A323730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A323731.P14592233321049176316

/-! ## A323731.P2796957788189812223

`Δ[record[A023443(n)-A323730(n)]]`
-/

namespace A323731.P2796957788189812223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A323730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323731.P2796957788189812223

/-! ## A323731.P17930659543699934728

`Δ[record[n-A323730(A028310(n))]]`
-/

namespace A323731.P17930659543699934728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A323730 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323731.P17930659543699934728

/-! ## A323731.P2158581064586697860

`A000027(Δ[record[n/A323730(n)]])`
-/

namespace A323731.P2158581064586697860
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A323730 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A323731.P2158581064586697860

/-! ## A323731.P3240935040695697068

`Δ[A023443(record[n/A323730(n)])]`
-/

namespace A323731.P3240935040695697068
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A323730 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323731.P3240935040695697068

/-! ## A323731.P9295181199620140489

`Δ[record[A020725(n+1)-A323730(n)]]`
-/

namespace A323731.P9295181199620140489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A323730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323731.P9295181199620140489

/-! ## A323731.P10451122220459291001

`Δ[lt[A323730(n), A001227(2*n+3)]]`
-/

namespace A323731.P10451122220459291001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A323731.P10451122220459291001

/-!
# A323732: Numbers k for which there exists no j > 1 such that j^k has exactly j divisors.

The programs for A323732, there is no canonical definition to state claims against.
-/

/-! ## A323732.P16026443978344772725

`lt[A323731(n), atan(n)]`
-/

namespace A323732.P16026443978344772725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A323732.P16026443978344772725

/-! ## A323732.P7765268428584614698

`eq[1, A323731(n+1)]+1`
-/

namespace A323732.P7765268428584614698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323732.P7765268428584614698

/-! ## A323732.P2444145226415728528

`lt[A323731(n+3), 2]+3`
-/

namespace A323732.P2444145226415728528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A323732.P2444145226415728528

/-! ## A323732.P9025619417663786404

`eq[1, A323731(A028310(n))]`
-/

namespace A323732.P9025619417663786404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323732.P9025619417663786404

/-! ## A323732.P2376657686848349187

`eq[A010194(n), A323731(n)]`
-/

namespace A323732.P2376657686848349187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323732.P2376657686848349187

/-!
# A323733: Numbers k for which there exists at least one number j > 1 such that j^k has exactly j divisors.

The programs for A323733, there is no canonical definition to state claims against.
-/

/-! ## A323733.P5701858726960941085

`lt[n, A323734(n)]`
-/

namespace A323733.P5701858726960941085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323733.P5701858726960941085

/-! ## A323733.P5169459429247946733

`comp[A323732(n+1)]`
-/

namespace A323733.P5169459429247946733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A323733.P5169459429247946733

/-! ## A323733.P14970778990353802824

`lt[atan(n), A323731(n)]`
-/

namespace A323733.P14970778990353802824
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A323733.P14970778990353802824

/-! ## A323733.P9282093998868565816

`comp[eq[1, A323731(n+1)]+1]`
-/

namespace A323733.P9282093998868565816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A323733.P9282093998868565816

/-! ## A323733.P7062953701802014833

`comp[lt[A323731(n+3), 2]+3]`
-/

namespace A323733.P7062953701802014833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A323733.P7062953701802014833

/-! ## A323733.P9674556979895703680

`comp[1-A073049(n+1)+n]`
-/

namespace A323733.P9674556979895703680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073049 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A323733.P9674556979895703680

/-! ## A323733.P2253110298968952723

`lt[1, A323731(round(sqrt(n²+1)))]`
-/

namespace A323733.P2253110298968952723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323733.P2253110298968952723

/-! ## A323733.P10992217944068905171

`lt[0, A073049(A028310(n))]`
-/

namespace A323733.P10992217944068905171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073049 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323733.P10992217944068905171

/-! ## A323733.P11391570637724983714

`lt[0, A073049(A233583(n+1))]`
-/

namespace A323733.P11391570637724983714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073049 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323733.P11391570637724983714

/-! ## A323733.P3724930817419522762

`eq[n, A028310(n)%A323734(n)]`
-/

namespace A323733.P3724930817419522762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A323734 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323733.P3724930817419522762

/-!
# A323734: a(n) is the largest number j whose n-th power has exactly j divisors.

The programs for A323734, there is no canonical definition to state claims against.
-/

/-! ## A323734.P3974165133334125308

`A323730(∑[A323731(n)]-1)`
-/

namespace A323734.P3974165133334125308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A323734.P3974165133334125308

/-! ## A323734.P15493911836208571754

`A323730(∑[A178334(n)*A323731(n)])`
-/

namespace A323734.P15493911836208571754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A323731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323734.P15493911836208571754

/-! ## A323734.P11449537242901716339

`A323730(lt[Δ[A323730(n)], 1])`
-/

namespace A323734.P11449537242901716339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A323734.P11449537242901716339

/-! ## A323734.P5300407367348219140

`A323730(eq[1, A323730(n+1)])`
-/

namespace A323734.P5300407367348219140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323734.P5300407367348219140

/-! ## A323734.P14829751364470920158

`A323730(lt[A323730(n+1), 2])`
-/

namespace A323734.P14829751364470920158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A323734.P14829751364470920158

/-! ## A323734.P6696977680296393019

`A323730(record[1-A323730(n+1)+n])`
-/

namespace A323734.P6696977680296393019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323730 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323734.P6696977680296393019

/-! ## A323734.P9538214451911289657

`A323730(record[A028310(n)-A323730(n)])`
-/

namespace A323734.P9538214451911289657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A323730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323734.P9538214451911289657

/-! ## A323734.P9328265267646003353

`A323730(record[A233583(n+1)-A323730(n)])`
-/

namespace A323734.P9328265267646003353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A323730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323734.P9328265267646003353

/-!
# A323735: a(n) is the largest minimal distance of a binary LCD [n,2] code.

The programs for A323735, the canonical program `A323735.P8252569139895007606` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323735 has offset 2).

The definition of A323735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323735.P8252569139895007606

`4+a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=3, a(5)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A323735

/-- `4+a(n-6)` -/
def P8252569139895007606.Spec : Prop :=
  ∀ n, (P8252569139895007606.a n : ℤ) = A323735 (n + 2)

theorem P8252569139895007606.correct : P8252569139895007606.Spec := by
  intro n
  simp only [A323735, Nat.add_sub_cancel]

end A323735

/-! ## A323735.P1779682795165159287

`∑[or(1, n)²%3]`
-/

namespace A323735.P1779682795165159287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P1779682795165159287

namespace A323735

/-- `∑[or(1, n)²%3]` -/
def P1779682795165159287.Spec : Prop :=
  ∀ n, (P1779682795165159287.a n : ℤ) = A323735 (n + 2)

end A323735

/-! ## A323735.P11330329497401216340

`∑[xor(1, n-1)²%3]`
-/

namespace A323735.P11330329497401216340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 ((n : ℤ) - 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P11330329497401216340

namespace A323735

/-- `∑[xor(1, n-1)²%3]` -/
def P11330329497401216340.Spec : Prop :=
  ∀ n, P11330329497401216340.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P9736681695909295510

`∑[abs(1-∑[lcm(2, n)]%3)]`
-/

namespace A323735.P9736681695909295510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P9736681695909295510

namespace A323735

/-- `∑[abs(1-∑[lcm(2, n)]%3)]` -/
def P9736681695909295510.Spec : Prop :=
  ∀ n, P9736681695909295510.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P13826005302213222203

`∑[∑[(1-n)%2]²%3]`
-/

namespace A323735.P13826005302213222203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P13826005302213222203

namespace A323735

/-- `∑[∑[(1-n)%2]²%3]` -/
def P13826005302213222203.Spec : Prop :=
  ∀ n, P13826005302213222203.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P17362891945800296258

`∑[and(1, dr(∑[and(3, n+1)]))]`
-/

namespace A323735.P17362891945800296258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P17362891945800296258

namespace A323735

/-- `∑[and(1, dr(∑[and(3, n+1)]))]` -/
def P17362891945800296258.Spec : Prop :=
  ∀ n, (P17362891945800296258.a n : ℤ) = A323735 (n + 2)

end A323735

/-! ## A323735.P6304386066690120278

`∑[char[comp[a(n-2)+6]]]` with `a(0)=2, a(1)=3`
-/

namespace A323735.P6304386066690120278
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f3 =>
  f3 (n - 2) + 6

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P6304386066690120278

namespace A323735

/-- `∑[char[comp[a(n-2)+6]]]` -/
def P6304386066690120278.Spec : Prop :=
  ∀ n, (P6304386066690120278.a n : ℤ) = A323735 (n + 2)

end A323735

/-! ## A323735.P17783003193167711720

`∑[((n+1)%2+n)²%3]`
-/

namespace A323735.P17783003193167711720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 2 + n) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P17783003193167711720

namespace A323735

/-- `∑[((n+1)%2+n)²%3]` -/
def P17783003193167711720.Spec : Prop :=
  ∀ n, (P17783003193167711720.a n : ℤ) = A323735 (n + 2)

end A323735

/-! ## A323735.P908939168139927079

`∑[gcd(3, n+1-n%2)%3]`
-/

namespace A323735.P908939168139927079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 ((n + 1 : ℤ) - ((n % 2 : ℕ) : ℤ)) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P908939168139927079

namespace A323735

/-- `∑[gcd(3, n+1-n%2)%3]` -/
def P908939168139927079.Spec : Prop :=
  ∀ n, (P908939168139927079.a n : ℤ) = A323735 (n + 2)

end A323735

/-! ## A323735.P9020714281989739094

`floor(∑[4-a(n-3)]/3)` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A323735.P9020714281989739094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f1 =>
  4 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A323735.P9020714281989739094

namespace A323735

/-- `floor(∑[4-a(n-3)]/3)` -/
def P9020714281989739094.Spec : Prop :=
  ∀ n, P9020714281989739094.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P5275373128378421424

`∑[(∑[n]%3)^a(n-3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A323735.P5275373128378421424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) % 3) ^ f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P5275373128378421424

namespace A323735

/-- `∑[(∑[n]%3)^a(n-3)]` -/
def P5275373128378421424.Spec : Prop :=
  ∀ n, (P5275373128378421424.a n : ℤ) = A323735 (n + 2)

end A323735

/-! ## A323735.P1673583705191237108

`∑[(a(n-2)-a(n-4))²]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A323735.P1673583705191237108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  (f1 (n - 2) - f1 (n - 4)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P1673583705191237108

namespace A323735

/-- `∑[(a(n-2)-a(n-4))²]` -/
def P1673583705191237108.Spec : Prop :=
  ∀ n, P1673583705191237108.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P5099799248074836974

`2*n+1-lt[or(5, n-2), n+3]`
-/

namespace A323735.P5099799248074836974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A323735.P5099799248074836974

namespace A323735

/-- `2*n+1-lt[or(5, n-2), n+3]` -/
def P5099799248074836974.Spec : Prop :=
  ∀ n, P5099799248074836974.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P11712163378482595428

`2*n+1-lt[xor(5, n-2), n+2]`
-/

namespace A323735.P11712163378482595428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A323735.P11712163378482595428

namespace A323735

/-- `2*n+1-lt[xor(5, n-2), n+2]` -/
def P11712163378482595428.Spec : Prop :=
  ∀ n, P11712163378482595428.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P4501397704665301716

`∑[1-a(n-2)*a(n-4)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A323735.P4501397704665301716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  1 - f1 (n - 2) * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P4501397704665301716

namespace A323735

/-- `∑[1-a(n-2)*a(n-4)]` -/
def P4501397704665301716.Spec : Prop :=
  ∀ n, P4501397704665301716.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P6956801185574548577

`∑[2-a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A323735.P6956801185574548577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  2 - f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P6956801185574548577

namespace A323735

/-- `∑[2-a(n-2)-a(n-4)]` -/
def P6956801185574548577.Spec : Prop :=
  ∀ n, P6956801185574548577.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P3196648360568099976

`∑[abs(A134668(n))]`
-/

namespace A323735.P3196648360568099976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134668 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P3196648360568099976

namespace A323735

/-- `∑[abs(A134668(n))]` -/
def P3196648360568099976.Spec : Prop :=
  ∀ n, P3196648360568099976.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P10701653171092863697

`∑[abs(A309970(n))]`
-/

namespace A323735.P10701653171092863697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A309970 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P10701653171092863697

namespace A323735

/-- `∑[abs(A309970(n))]` -/
def P10701653171092863697.Spec : Prop :=
  ∀ n, P10701653171092863697.a n = A323735 (n + 2)

end A323735

/-! ## A323735.P3765190716940043080

`∑[char[A396772(n)]]`
-/

namespace A323735.P3765190716940043080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396772 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P3765190716940043080

namespace A323735

/-- `∑[char[A396772(n)]]` -/
def P3765190716940043080.Spec : Prop :=
  ∀ n, (P3765190716940043080.a n : ℤ) = A323735 (n + 2)

end A323735

/-! ## A323735.P18083615259432925534

`∑[(1-A131555(n))²]`
-/

namespace A323735.P18083615259432925534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A131555 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323735.P18083615259432925534

namespace A323735

/-- `∑[(1-A131555(n))²]` -/
def P18083615259432925534.Spec : Prop :=
  ∀ n, P18083615259432925534.a n = A323735 (n + 2)

end A323735

/-!
# A323739: a(n) is the number of residues modulo (4*primorial(n)) of the squares of primes greater than or equal to prime(n+1).

The programs for A323739, there is no canonical definition to state claims against.
-/

/-! ## A323739.P12811515576502974616

`a(n-1)*A102781(n)` with `a(0)=2, a(1)=1`
-/

namespace A323739.P12811515576502974616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) * A102781 n

end

end A323739.P12811515576502974616

/-! ## A323739.P11962190509632334649

`a(n-1)*A130290(n)` with `a(0)=2, a(1)=1`
-/

namespace A323739.P11962190509632334649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) * A130290 n

end

end A323739.P11962190509632334649

/-! ## A323739.P12554815302497186883

`A006093(n)/2*a(n-1)` with `a(0)=2`
-/

namespace A323739.P12554815302497186883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A006093 n : ℚ) / 2 * a (n - 1)

end

end A323739.P12554815302497186883

/-! ## A323739.P10458354526244750874

`a(n-1)*A005097(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A323739.P10458354526244750874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) * A005097 (n - 1)

end

end A323739.P10458354526244750874

/-! ## A323739.P385278096474015615

`(A000040(n)-1)/2*a(n-1)` with `a(0)=2`
-/

namespace A323739.P385278096474015615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A000040 n - 1 : ℚ) / 2 * a (n - 1)

end

end A323739.P385278096474015615

/-! ## A323739.P3563945444566581027

`a(n-1)*record[n/A000005(n+1)]` with `a(0)=2`
-/

namespace A323739.P3563945444566581027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323739.P3563945444566581027

/-! ## A323739.P8277798139420413386

`a(n-1)/2*lt[n, A006530(n+1)]` with `a(0)=2`
-/

namespace A323739.P8277798139420413386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / 2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ)

end

end A323739.P8277798139420413386

/-! ## A323739.P10768951846125269997

`a(n-1)*record[A020639(n+1)-1]/2` with `a(0)=2`
-/

namespace A323739.P10768951846125269997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A323739.P10768951846125269997

/-! ## A323739.P15336690143549658591

`lt[n-1, A000010(n+1)]/2*a(n-1)` with `a(0)=2`
-/

namespace A323739.P15336690143549658591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2 * a (n - 1)

end

end A323739.P15336690143549658591

/-! ## A323739.P10593193105751878654

`a(n-1)*A000010(comp[A018252(n+1)])/2` with `a(0)=2`
-/

namespace A323739.P10593193105751878654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A323739.P10593193105751878654

/-!
# A323741: a(n) = m-p where m = (2n+1)^2 and p is the largest prime < m.

The programs for A323741, the canonical program `A323741.P16006173371429215656` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323741 has offset 1).

The definition of A323741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323741.P16006173371429215656

`A049711(A016754(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323741

/-- `A049711(A016754(n+1))` -/
def P16006173371429215656.Spec : Prop :=
  ∀ n, P16006173371429215656.a n = A323741 (n + 1)

theorem P16006173371429215656.correct : P16006173371429215656.Spec := by
  intro n
  simp only [A323741, Nat.add_sub_cancel]

end A323741

/-! ## A323741.P12492569299844945003

`A056927(2*n+3)`
-/

namespace A323741.P12492569299844945003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (2 * n + 3)

end

end A323741.P12492569299844945003

namespace A323741

/-- `A056927(2*n+3)` -/
def P12492569299844945003.Spec : Prop :=
  ∀ n, P12492569299844945003.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P16875767282825177572

`(2*n+3)²-A053001(2*n+3)`
-/

namespace A323741.P16875767282825177572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A053001 (2 * n + 3)

end

end A323741.P16875767282825177572

namespace A323741

/-- `(2*n+3)²-A053001(2*n+3)` -/
def P16875767282825177572.Spec : Prop :=
  ∀ n, P16875767282825177572.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P1879660175522969400

`filter[A056927(n+2), A059841(#)]`
-/

namespace A323741.P1879660175522969400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A323741.P1879660175522969400

namespace A323741

/-- `filter[A056927(n+2), A059841(#)]` -/
def P1879660175522969400.Spec : Prop :=
  ∀ n, P1879660175522969400.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P4461983568269943536

`filter[A056927(n+3), A135528(#)]`
-/

namespace A323741.P4461983568269943536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A323741.P4461983568269943536

namespace A323741

/-- `filter[A056927(n+3), A135528(#)]` -/
def P4461983568269943536.Spec : Prop :=
  ∀ n, P4461983568269943536.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P13165858375371656205

`filter[A056927(n+3), A266591(#)]`
-/

namespace A323741.P13165858375371656205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A323741.P13165858375371656205

namespace A323741

/-- `filter[A056927(n+3), A266591(#)]` -/
def P13165858375371656205.Spec : Prop :=
  ∀ n, P13165858375371656205.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P10610029813923051051

`filter[A056927(n+3), A354034(#)]`
-/

namespace A323741.P10610029813923051051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A323741.P10610029813923051051

namespace A323741

/-- `filter[A056927(n+3), A354034(#)]` -/
def P10610029813923051051.Spec : Prop :=
  ∀ n, P10610029813923051051.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P16279415961350332518

`A180724(2*n+3)-2*A053001(2*n+3)`
-/

namespace A323741.P16279415961350332518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180724 (2 * n + 3) - 2 * A053001 (2 * n + 3)

end

end A323741.P16279415961350332518

namespace A323741

/-- `A180724(2*n+3)-2*A053001(2*n+3)` -/
def P16279415961350332518.Spec : Prop :=
  ∀ n, P16279415961350332518.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P1491534041343929603

`A056927(A144396(n+1))/A106400(n)²`
-/

namespace A323741.P1491534041343929603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056927 (A144396 (n + 1)).toNat : ℚ) / (A106400 n ^ 2 : ℚ)

end

end A323741.P1491534041343929603

namespace A323741

/-- `A056927(A144396(n+1))/A106400(n)²` -/
def P1491534041343929603.Spec : Prop :=
  ∀ n, P1491534041343929603.a n = (A323741 (n + 1) : ℚ)

end A323741

/-! ## A323741.P772779433255537238

`A007491(2*(n+1))+A144831(2*(n+1))-A053001(2*n+3)`
-/

namespace A323741.P772779433255537238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (2 * (n + 1)) + (A144831 (2 * (n + 1)) - A053001 (2 * n + 3))

end

end A323741.P772779433255537238

namespace A323741

/-- `A007491(2*(n+1))+A144831(2*(n+1))-A053001(2*n+3)` -/
def P772779433255537238.Spec : Prop :=
  ∀ n, P772779433255537238.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P687472430504108799

`A056928(2*n+3)+A056929(2*n+3)-A053001(2*n+3)`
-/

namespace A323741.P687472430504108799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (2 * n + 3) + (A056929 (2 * n + 3) - A053001 (2 * n + 3))

end

end A323741.P687472430504108799

namespace A323741

/-- `A056928(2*n+3)+A056929(2*n+3)-A053001(2*n+3)` -/
def P687472430504108799.Spec : Prop :=
  ∀ n, P687472430504108799.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P11411672568889152768

`A056927(A144396(n+1))%A023057(n+1)`
-/

namespace A323741.P11411672568889152768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056927 (A144396 (n + 1)).toNat) (A023057 (n + 1))

end

end A323741.P11411672568889152768

namespace A323741

/-- `A056927(A144396(n+1))%A023057(n+1)` -/
def P11411672568889152768.Spec : Prop :=
  ∀ n, P11411672568889152768.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P10418763908718006460

`A175851(∑[8*(n+1)])`
-/

namespace A323741.P10418763908718006460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323741.P10418763908718006460

namespace A323741

/-- `A175851(∑[8*(n+1)])` -/
def P10418763908718006460.Spec : Prop :=
  ∀ n, P10418763908718006460.a n = A323741 (n + 1)

end A323741

/-! ## A323741.P14574636402197902123

`A023443(A175851((2*n+3)*(2*n+3)))`
-/

namespace A323741.P14574636402197902123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175851 ((2 * n + 3) * (2 * n + 3))).toNat

end

end A323741.P14574636402197902123

namespace A323741

/-- `A023443(A175851((2*n+3)*(2*n+3)))` -/
def P14574636402197902123.Spec : Prop :=
  ∀ n, P14574636402197902123.a n = A323741 (n + 1)

end A323741

/-!
# A323746: a(n) is the smallest positive number that is as far as possible from the nearest multiple of each of the first n primes.

The programs for A323746, there is no canonical definition to state claims against.
-/

/-! ## A323746.P17463109452342173730

`A056687(a(n-3))` with `a(0)=1, a(1)=1, a(2)=7, a(3)=17, a(4)=17`
-/

namespace A323746.P17463109452342173730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 17, 17] fun n a =>
  A056687 (a (n - 3)).toNat

end

end A323746.P17463109452342173730

/-! ## A323746.P17479893359025611535

`A151573(A067370(n+1))`
-/

namespace A323746.P17479893359025611535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 (A067370 (n + 1)).toNat

end

end A323746.P17479893359025611535

/-!
# A323747: Smallest triangular number whose number of divisors is the n-th triangular number, or 0 if no such number exists.

The programs for A323747, there is no canonical definition to state claims against.
-/

/-! ## A323747.P7561912830952664786

`A081978(∑[n+1])`
-/

namespace A323747.P7561912830952664786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323747.P7561912830952664786

/-! ## A323747.P4540000564674130850

`A081978(A000217(n+1))%A276542(n+1)!`
-/

namespace A323747.P4540000564674130850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081978 (A000217 (n + 1)).toNat) (Nat.factorial (A276542 (n + 1)).toNat : ℤ)

end

end A323747.P4540000564674130850

/-!
# A323752: Fixed points of A323710.

The programs for A323752, there is no canonical definition to state claims against.
-/

/-! ## A323752.P3958787005512382547

`2^n*A323710(2^n)`
-/

namespace A323752.P3958787005512382547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A323710 (2 ^ n)

end

end A323752.P3958787005512382547

/-! ## A323752.P2072492302067948868

`A290674(eq[1, A344257(n)])`
-/

namespace A323752.P2072492302067948868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323752.P2072492302067948868

/-!
# A323756: a(1) = 2; for n >= 2, if a(n-1) has not yet been assigned, then a(n-1) = 1 and a(2*n-1) = 2, otherwise a(2*n) = 3.

The programs for A323756, the canonical program `A323756.P17761962567917672659` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323756 has offset 1).

The definition of A323756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323756.P11611440588888002109

`or(n%2, A122497(n+2))`
-/

namespace A323756.P11611440588888002109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A122497 (n + 2))

end

end A323756.P11611440588888002109

namespace A323756

/-- `or(n%2, A122497(n+2))` -/
def P11611440588888002109.Spec : Prop :=
  ∀ n, P11611440588888002109.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P17761962567917672659

`3-(A091830(n+2)+1)%3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323756

/-- `3-(A091830(n+2)+1)%3` -/
def P17761962567917672659.Spec : Prop :=
  ∀ n, P17761962567917672659.a n = A323756 (n + 1)

theorem P17761962567917672659.correct : P17761962567917672659.Spec := by
  intro n
  simp only [A323756, Nat.add_sub_cancel]

end A323756

/-! ## A323756.P9728773086049916685

`A175307(A032924(n+1))`
-/

namespace A323756.P9728773086049916685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (A032924 (n + 1)).toNat

end

end A323756.P9728773086049916685

namespace A323756

/-- `A175307(A032924(n+1))` -/
def P9728773086049916685.Spec : Prop :=
  ∀ n, P9728773086049916685.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P14185267077590924333

`A277822(A115637(n)+2)`
-/

namespace A323756.P14185267077590924333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A115637 n + 2).toNat

end

end A323756.P14185267077590924333

namespace A323756

/-- `A277822(A115637(n)+2)` -/
def P14185267077590924333.Spec : Prop :=
  ∀ n, P14185267077590924333.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P8276465905445230662

`A277822(or(2, A115637(n)))`
-/

namespace A323756.P8276465905445230662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (Int.lor 2 (A115637 n)).toNat

end

end A323756.P8276465905445230662

namespace A323756

/-- `A277822(or(2, A115637(n)))` -/
def P8276465905445230662.Spec : Prop :=
  ∀ n, P8276465905445230662.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P7747775706465918395

`A277822(xor(2, A115637(n)))`
-/

namespace A323756.P7747775706465918395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (Int.xor 2 (A115637 n)).toNat

end

end A323756.P7747775706465918395

namespace A323756

/-- `A277822(xor(2, A115637(n)))` -/
def P7747775706465918395.Spec : Prop :=
  ∀ n, P7747775706465918395.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P8424368132409840541

`A175307(eq[0, A077267(n)])`
-/

namespace A323756.P8424368132409840541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323756.P8424368132409840541

namespace A323756

/-- `A175307(eq[0, A077267(n)])` -/
def P8424368132409840541.Spec : Prop :=
  ∀ n, P8424368132409840541.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P15186098528498771531

`A175307(record[A348706(n+1)])`
-/

namespace A323756.P15186098528498771531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323756.P15186098528498771531

namespace A323756

/-- `A175307(record[A348706(n+1)])` -/
def P15186098528498771531.Spec : Prop :=
  ∀ n, P15186098528498771531.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P2614337845150919524

`A277822(xor(1, A032804(n+1)))`
-/

namespace A323756.P2614337845150919524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (Int.xor 1 (A032804 (n + 1))).toNat

end

end A323756.P2614337845150919524

namespace A323756

/-- `A277822(xor(1, A032804(n+1)))` -/
def P2614337845150919524.Spec : Prop :=
  ∀ n, P2614337845150919524.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P1612070802434127704

`or(A000035(n), A122497(n+2))`
-/

namespace A323756.P1612070802434127704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A122497 (n + 2))

end

end A323756.P1612070802434127704

namespace A323756

/-- `or(A000035(n), A122497(n+2))` -/
def P1612070802434127704.Spec : Prop :=
  ∀ n, P1612070802434127704.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P9688756550437034999

`∏{p}[A242179(n+1)-∑[A242179(n)], #]`
-/

namespace A323756.P9688756550437034999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A323756.P9688756550437034999

namespace A323756

/-- `∏{p}[A242179(n+1)-∑[A242179(n)], #]` -/
def P9688756550437034999.Spec : Prop :=
  ∀ n, (P9688756550437034999.a n : ℤ) = A323756 (n + 1)

end A323756

/-! ## A323756.P11643361261930837017

`or(A000035(n), A001285(A115637(n)))`
-/

namespace A323756.P11643361261930837017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A001285 (A115637 n).toNat)

end

end A323756.P11643361261930837017

namespace A323756

/-- `or(A000035(n), A001285(A115637(n)))` -/
def P11643361261930837017.Spec : Prop :=
  ∀ n, P11643361261930837017.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P10534365608215729507

`or(A000034(A032924(n+1)), A000035(n))`
-/

namespace A323756.P10534365608215729507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 (A032924 (n + 1)).toNat) (A000035 n)

end

end A323756.P10534365608215729507

namespace A323756

/-- `or(A000034(A032924(n+1)), A000035(n))` -/
def P10534365608215729507.Spec : Prop :=
  ∀ n, P10534365608215729507.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P10067035946268494078

`A000034(n)*A000035(A032924(n+1))+1`
-/

namespace A323756.P10067035946268494078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000035 (A032924 (n + 1)).toNat + 1

end

end A323756.P10067035946268494078

namespace A323756

/-- `A000034(n)*A000035(A032924(n+1))+1` -/
def P10067035946268494078.Spec : Prop :=
  ∀ n, P10067035946268494078.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P10975689576164756686

`A091830(A091830(n+2)^A020639(n+1)+1)+1`
-/

namespace A323756.P10975689576164756686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091830 (SequenceMachineLib.roundAway ((A091830 (n + 2) : ℚ) ^ (A020639 (n + 1) : ℤ) + 1)).toNat + 1

end

end A323756.P10975689576164756686

namespace A323756

/-- `A091830(A091830(n+2)^A020639(n+1)+1)+1` -/
def P10975689576164756686.Spec : Prop :=
  ∀ n, P10975689576164756686.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P9876141712033940224

`or(A000035(n), A001285(A032911(n+1)))`
-/

namespace A323756.P9876141712033940224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A001285 (A032911 (n + 1)).toNat)

end

end A323756.P9876141712033940224

namespace A323756

/-- `or(A000035(n), A001285(A032911(n+1)))` -/
def P9876141712033940224.Spec : Prop :=
  ∀ n, P9876141712033940224.a n = A323756 (n + 1)

end A323756

/-! ## A323756.P8683025157701868573

`A010190(A032926(n+1))`
-/

namespace A323756.P8683025157701868573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010190 (A032926 (n + 1)).toNat

end

end A323756.P8683025157701868573

namespace A323756

/-- `A010190(A032926(n+1))` -/
def P8683025157701868573.Spec : Prop :=
  ∀ n, P8683025157701868573.a n = A323756 (n + 1)

end A323756

/-!
# A323757: Modified exponential perfect numbers: numbers k such that A241405(k) = 2*k.

The programs for A323757, there is no canonical definition to state claims against.
-/

/-! ## A323757.P2635564372287168721

`A322486(∑[A322276(n)])`
-/

namespace A323757.P2635564372287168721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323757.P2635564372287168721

/-! ## A323757.P5919467484488453781

`A322486(A270831(n+1))`
-/

namespace A323757.P5919467484488453781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322486 (A270831 (n + 1)).toNat

end

end A323757.P5919467484488453781

/-!
# A323758: Lesser of modified exponential amicable pairs.

The programs for A323758, there is no canonical definition to state claims against.
-/

/-! ## A323758.P8082934776833055114

`A322541(∑[A003108(∏{d}[n+1, #]/(n+1))])`
-/

namespace A323758.P8082934776833055114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323758.P8082934776833055114

/-! ## A323758.P18354102259189389686

`A322541(lt[A241315(n), A224748(2*n+1)])`
-/

namespace A323758.P18354102259189389686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224748 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322541 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323758.P18354102259189389686

/-! ## A323758.P4935241265247387066

`A322541(∑[A058498(n+1)!])`
-/

namespace A323758.P4935241265247387066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058498 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323758.P4935241265247387066

/-! ## A323758.P9419568274052489125

`A322541(A078213(n+1)+A015743(n+1))`
-/

namespace A323758.P9419568274052489125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322541 (A078213 (n + 1) + A015743 (n + 1)).toNat

end

end A323758.P9419568274052489125

/-! ## A323758.P13953793588434136254

`A322541(A243507(n+1)+A015743(n+1))`
-/

namespace A323758.P13953793588434136254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322541 (A243507 (n + 1) + A015743 (n + 1)).toNat

end

end A323758.P13953793588434136254

/-!
# A323759: Larger of modified exponential amicable pairs.

The programs for A323759, there is no canonical definition to state claims against.
-/

/-! ## A323759.P5041632297600533057

`A322542(lt[A277042(n+1), A000108(n)])`
-/

namespace A323759.P5041632297600533057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322542 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323759.P5041632297600533057

/-! ## A323759.P16784410590142420086

`A322542(lt[A277042(n+1), A001519(n)])`
-/

namespace A323759.P16784410590142420086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322542 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323759.P16784410590142420086

/-! ## A323759.P2725577052418270336

`A322542(lt[A277042(n+1), A069097(n+1)])`
-/

namespace A323759.P2725577052418270336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322542 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323759.P2725577052418270336

/-! ## A323759.P8384380489072244770

`A322542(lt[A277042(n+1), A075165(n+1)])`
-/

namespace A323759.P8384380489072244770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322542 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323759.P8384380489072244770

/-! ## A323759.P3513908997006249957

`A322542(lt[A277042(n+1), A119141(n+1)])`
-/

namespace A323759.P3513908997006249957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322542 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323759.P3513908997006249957

/-!
# A323760: Numerator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

The programs for A323760, the canonical program `A323760.P7258766165293403016` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323760 has offset 1).

The definition of A323760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323760.P14666329253375502394

`A266265(n+1)/A211776(n+1)*A323761(n+1)`
-/

namespace A323760.P14666329253375502394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ) * (A323761 (n + 1) : ℚ)

end

end A323760.P14666329253375502394

namespace A323760

/-- `A266265(n+1)/A211776(n+1)*A323761(n+1)` -/
def P14666329253375502394.Spec : Prop :=
  ∀ n, P14666329253375502394.a n = (A323760 (n + 1) : ℚ)

end A323760

/-! ## A323760.P7258766165293403016

`A325030(n+1)/gcd(A324987(n+1), A325030(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323760

/-- `A325030(n+1)/gcd(A324987(n+1), A325030(n+1))` -/
def P7258766165293403016.Spec : Prop :=
  ∀ n, P7258766165293403016.a n = (A323760 (n + 1) : ℚ)

end A323760

/-! ## A323760.P17951874422065470860

`A102631(A079097(n)+A061127(n+1))`
-/

namespace A323760.P17951874422065470860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A079097 n + A061127 (n + 1)).toNat

end

end A323760.P17951874422065470860

namespace A323760

/-- `A102631(A079097(n)+A061127(n+1))` -/
def P17951874422065470860.Spec : Prop :=
  ∀ n, P17951874422065470860.a n = A323760 (n + 1)

end A323760

/-! ## A323760.P3202956275058844141

`A102631(A079097(n)%A183431(n+1))`
-/

namespace A323760.P3202956275058844141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (Int.tmod (A079097 n) (A183431 (n + 1))).toNat

end

end A323760.P3202956275058844141

namespace A323760

/-- `A102631(A079097(n)%A183431(n+1))` -/
def P3202956275058844141.Spec : Prop :=
  ∀ n, P3202956275058844141.a n = A323760 (n + 1)

end A323760

/-!
# A323761: Denominator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

The programs for A323761, the canonical program `A323761.P17464288942560498770` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323761 has offset 1).

The definition of A323761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323761.P17464288942560498770

`A211776(n+1)/A266265(n+1)*A323760(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A323761

/-- `A211776(n+1)/A266265(n+1)*A323760(n+1)` -/
def P17464288942560498770.Spec : Prop :=
  ∀ n, P17464288942560498770.a n = (A323761 (n + 1) : ℚ)

end A323761

/-! ## A323761.P3183995807179558749

`A324987(n+1)/gcd(A324987(n+1), A325030(n+1))`
-/

namespace A323761.P3183995807179558749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (Int.gcd (A324987 (n + 1)) (A325030 (n + 1)) : ℚ)

end

end A323761.P3183995807179558749

namespace A323761

/-- `A324987(n+1)/gcd(A324987(n+1), A325030(n+1))` -/
def P3183995807179558749.Spec : Prop :=
  ∀ n, P3183995807179558749.a n = (A323761 (n + 1) : ℚ)

end A323761

/-! ## A323761.P12214855050494258580

`gcd(A307101(n+1), A324507(A291186(n+1)))`
-/

namespace A323761.P12214855050494258580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307101 (n + 1)) (A324507 (A291186 (n + 1)).toNat)

end

end A323761.P12214855050494258580

namespace A323761

/-- `gcd(A307101(n+1), A324507(A291186(n+1)))` -/
def P12214855050494258580.Spec : Prop :=
  ∀ n, (P12214855050494258580.a n : ℤ) = A323761 (n + 1)

end A323761

/-! ## A323761.P3611247879392368555

`ceil(A324507(n+1)/A204988(A181883(n+2)))`
-/

namespace A323761.P3611247879392368555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324507 (n + 1) : ℚ) / (A204988 (A181883 (n + 2)).toNat : ℚ)⌉

end

end A323761.P3611247879392368555

namespace A323761

/-- `ceil(A324507(n+1)/A204988(A181883(n+2)))` -/
def P3611247879392368555.Spec : Prop :=
  ∀ n, P3611247879392368555.a n = A323761 (n + 1)

end A323761

/-! ## A323761.P8315635413269914604

`ceil(A324507(n+1)/A068108(A081148(n)+3))`
-/

namespace A323761.P8315635413269914604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324507 (n + 1) : ℚ) / (A068108 (A081148 n + 3).toNat : ℚ)⌉

end

end A323761.P8315635413269914604

namespace A323761

/-- `ceil(A324507(n+1)/A068108(A081148(n)+3))` -/
def P8315635413269914604.Spec : Prop :=
  ∀ n, P8315635413269914604.a n = A323761 (n + 1)

end A323761

/-!
# A323762: Numbers m such that Product_{d|m} (pod(d)/tau(d)) is an integer h where pod(k) = the product of the divisors of k (A007955) and tau(k) = the number of the divisors of k (A000005).

The programs for A323762, the canonical program `A323762.P10953275565980288274` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323762 has offset 1).

The definition of A323762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323762.P10953275565980288274

`eq[1, A323761(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A323762

/-- `eq[1, A323761(n+1)]+1` -/
def P10953275565980288274.Spec : Prop :=
  ∀ n, (P10953275565980288274.a n : ℤ) = A323762 (n + 1)

theorem P10953275565980288274.correct : P10953275565980288274.Spec := by
  intro n
  simp only [A323762, Nat.add_sub_cancel]

end A323762

/-! ## A323762.P17955493035238298322

`record[(2-A323761(n+1))*A000027(n+1)]`
-/

namespace A323762.P17955493035238298322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A323761 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323762.P17955493035238298322

namespace A323762

/-- `record[(2-A323761(n+1))*A000027(n+1)]` -/
def P17955493035238298322.Spec : Prop :=
  ∀ n, P17955493035238298322.a n = A323762 (n + 1)

end A323762

/-! ## A323762.P4356380251407430809

`A015906(eq[1, A323761(n+1)])`
-/

namespace A323762.P4356380251407430809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323762.P4356380251407430809

namespace A323762

/-- `A015906(eq[1, A323761(n+1)])` -/
def P4356380251407430809.Spec : Prop :=
  ∀ n, P4356380251407430809.a n = A323762 (n + 1)

end A323762

/-! ## A323762.P2375029347104489972

`eq[A054977(n), A323761(A028310(n))]`
-/

namespace A323762.P2375029347104489972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323762.P2375029347104489972

namespace A323762

/-- `eq[A054977(n), A323761(A028310(n))]` -/
def P2375029347104489972.Spec : Prop :=
  ∀ n, (P2375029347104489972.a n : ℤ) = A323762 (n + 1)

end A323762

/-! ## A323762.P14086517651396784503

`eq[A057427(n), A323761(A028310(n))]`
-/

namespace A323762.P14086517651396784503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323762.P14086517651396784503

namespace A323762

/-- `eq[A057427(n), A323761(A028310(n))]` -/
def P14086517651396784503.Spec : Prop :=
  ∀ n, (P14086517651396784503.a n : ℤ) = A323762 (n + 1)

end A323762

/-! ## A323762.P2566750403133436108

`eq[-A057428(n), A323761(A028310(n))]`
-/

namespace A323762.P2566750403133436108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323762.P2566750403133436108

namespace A323762

/-- `eq[-A057428(n), A323761(A028310(n))]` -/
def P2566750403133436108.Spec : Prop :=
  ∀ n, (P2566750403133436108.a n : ℤ) = A323762 (n + 1)

end A323762

/-!
# A323766: Dirichlet convolution of the integer partition numbers A000041 with the number of divisors function A000005.

The programs for A323766, there is no canonical definition to state claims against.
-/

/-! ## A323766.P9858124907756123810

`∑{d}[A028310(n), A047968(#)]`
-/

namespace A323766.P9858124907756123810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P9858124907756123810

/-! ## A323766.P5330425398055504307

`∑{d}[A274922(n), A047968(#)]`
-/

namespace A323766.P5330425398055504307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P5330425398055504307

/-! ## A323766.P4397853100662371431

`∑{d}[A008619(A004273(n)), A047968(#)]`
-/

namespace A323766.P4397853100662371431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P4397853100662371431

/-! ## A323766.P15157885854133352487

`∑{d}[A065033(2*n), A047968(#)]`
-/

namespace A323766.P15157885854133352487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P15157885854133352487

/-! ## A323766.P8965633565682664809

`∑{d}[A123108(2*n), A047968(#)]`
-/

namespace A323766.P8965633565682664809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P8965633565682664809

/-! ## A323766.P16827154106857618732

`∑{d}[A038566(A002088(n+1)), A047968(#)]`
-/

namespace A323766.P16827154106857618732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A002088 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P16827154106857618732

/-! ## A323766.P16499149486551226014

`∑{d}[A007318(A000124(n)), A047968(#)]`
-/

namespace A323766.P16499149486551226014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P16499149486551226014

/-! ## A323766.P4443710851888540390

`∑{d}[A002024(A179865(n+1)), A047968(#)]`
-/

namespace A323766.P4443710851888540390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P4443710851888540390

/-! ## A323766.P2146490746788735675

`∑{d}[A137735(n²), A047968(#)]`
-/

namespace A323766.P2146490746788735675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047968 d

end

end A323766.P2146490746788735675

/-!
# A323767: A(n,k) = Sum_{j=0..floor(n/2)} binomial(n-j,j)^k, square array A(n,k) read by antidiagonals, for n >= 0, k >= 0.

The programs for A323767, there is no canonical definition to state claims against.
-/

/-! ## A323767.P8556371544185685962

`A347643(A335545(n))`
-/

namespace A323767.P8556371544185685962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A335545 n).toNat

end

end A323767.P8556371544185685962

/-! ## A323767.P13596479505478847298

`A006530(A357824(n)!)`
-/

namespace A323767.P13596479505478847298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A357824 n).toNat)

end

end A323767.P13596479505478847298

/-! ## A323767.P1500227239744573928

`A053585(A357824(n)!)`
-/

namespace A323767.P1500227239744573928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (Nat.factorial (A357824 n).toNat)

end

end A323767.P1500227239744573928

/-! ## A323767.P16426133542614331164

`A132173(3*A335545(n))`
-/

namespace A323767.P16426133542614331164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132173 (3 * A335545 n).toNat

end

end A323767.P16426133542614331164

/-! ## A323767.P6205904735176523969

`A071049(A131481(n+1)%A259799(n+1))`
-/

namespace A323767.P6205904735176523969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 (Int.tmod (A131481 (n + 1)) (A259799 (n + 1))).toNat

end

end A323767.P6205904735176523969

/-!
# A323768: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k)^k.

The programs for A323768, there is no canonical definition to state claims against.
-/

/-! ## A323768.P329176257138322413

`A304707(A304710(n)+A000096(n))`
-/

namespace A323768.P329176257138322413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 (A304710 n + A000096 n).toNat

end

end A323768.P329176257138322413

/-! ## A323768.P12000536828026932951

`A302497(A320964(n))+A237253(n+1)`
-/

namespace A323768.P12000536828026932951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (A320964 n).toNat + A237253 (n + 1)

end

end A323768.P12000536828026932951

/-! ## A323768.P9980469940123772908

`A316355(or(A007146(n+1), A131588(n)))`
-/

namespace A323768.P9980469940123772908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (Int.lor (A007146 (n + 1)) (A131588 n)).toNat

end

end A323768.P9980469940123772908

/-! ## A323768.P3751381554120006772

`A024417(A243565(n+1)+A201922(n+1))`
-/

namespace A323768.P3751381554120006772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A243565 (n + 1) + A201922 (n + 1)).toNat

end

end A323768.P3751381554120006772

/-!
# A323769: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k)^n.

The programs for A323769, there is no canonical definition to state claims against.
-/

/-! ## A323769.P10612354252177221291

`A323767(∑[4*n])`
-/

namespace A323769.P10612354252177221291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323769.P10612354252177221291

/-! ## A323769.P13552839916797222544

`A323767(A046092(n))+A178798(n)`
-/

namespace A323769.P13552839916797222544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (A046092 n).toNat + A178798 n

end

end A323769.P13552839916797222544

/-! ## A323769.P10051936095713602464

`or(A000007(n), A323767(A046092(n)))`
-/

namespace A323769.P10051936095713602464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A323767 (A046092 n).toNat)

end

end A323769.P10051936095713602464

/-! ## A323769.P4542430732757244144

`or(A286691(n+1), A323767(A046092(n)))`
-/

namespace A323769.P4542430732757244144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286691 (n + 1)) (A323767 (A046092 n).toNat)

end

end A323769.P4542430732757244144

/-! ## A323769.P8503770750136149245

`A007318(floor(n/11))*A323767(A046092(n))`
-/

namespace A323769.P8503770750136149245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 11⌋.toNat * A323767 (A046092 n).toNat

end

end A323769.P8503770750136149245

/-!
# A323770: Expansion of e.g.f. x*(2 - x)*exp(x/(1 - x))/(2*(1 - x)^2).

The programs for A323770, there is no canonical definition to state claims against.
-/

/-! ## A323770.P2715336112771313070

`Δ[A000262(n)/2]`
-/

namespace A323770.P2715336112771313070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P2715336112771313070

/-! ## A323770.P6618572553983164196

`Δ[abs(A293125(n)/2)]`
-/

namespace A323770.P6618572553983164196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A293125 n : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P6618572553983164196

/-! ## A323770.P18310758448999224686

`Δ[A129652(∑[n])/2]`
-/

namespace A323770.P18310758448999224686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129652 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P18310758448999224686

/-! ## A323770.P7280576193484105596

`Δ[A253286(∑[n+1]+1)/2]`
-/

namespace A323770.P7280576193484105596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253286 (∑ j ∈ Finset.range (n + 1), f2 j + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P7280576193484105596

/-! ## A323770.P279126769051957

`Δ[A056953(A004273(n))/2]`
-/

namespace A323770.P279126769051957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056953 (A004273 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P279126769051957

/-! ## A323770.P1523953934091324610

`Δ[A206703(A000217(n))/2]`
-/

namespace A323770.P1523953934091324610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206703 (A000217 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P1523953934091324610

/-! ## A323770.P9518096172177055631

`Δ[A293053(A000096(n))/2]`
-/

namespace A323770.P9518096172177055631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293053 (A000096 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P9518096172177055631

/-! ## A323770.P5780251856466334541

`(A103194(n)+A052852(n))/2`
-/

namespace A323770.P5780251856466334541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103194 n + A052852 n : ℚ) / 2

end

end A323770.P5780251856466334541

/-! ## A323770.P888441475276884384

`Δ[A059110(A161680(n+1))/2]`
-/

namespace A323770.P888441475276884384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 (A161680 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323770.P888441475276884384

/-! ## A323770.P17021574712394795973

`(record[A129652(n)]-A000262(n))/2`
-/

namespace A323770.P17021574712394795973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000262 n : ℚ) / 2

end

end A323770.P17021574712394795973

/-!
# A323771: Expansion of e.g.f. 2*exp(x/(2 - 2*x))*sinh(sqrt(5)*x/(2 - 2*x))/sqrt(5).

The programs for A323771, there is no canonical definition to state claims against.
-/

/-! ## A323771.P2787292069755795313

`A286107(∑[A111529(n)])`
-/

namespace A323771.P2787292069755795313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286107 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323771.P2787292069755795313

/-! ## A323771.P13027687479973639103

`A294242(A135882(n)+n)`
-/

namespace A323771.P13027687479973639103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294242 (A135882 n + (n : ℤ)).toNat

end

end A323771.P13027687479973639103

/-!
# A323772: Expansion of e.g.f. 1 - LambertW(-x/(1 - x))*(2 + LambertW(-x/(1 - x)))/2.

The programs for A323772, there is no canonical definition to state claims against.
-/

/-! ## A323772.P13751626709185295385

`A331726(A028310(n))/A028310(n)`
-/

namespace A323772.P13751626709185295385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331726 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A323772.P13751626709185295385

/-! ## A323772.P2201773008714926900

`A331726(A123108(2*n))/A123108(2*n)`
-/

namespace A323772.P2201773008714926900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331726 (A123108 (2 * n)).toNat : ℚ) / (A123108 (2 * n) : ℚ)

end

end A323772.P2201773008714926900

/-!
# A323774: Number of multiset partitions, whose parts are constant and all have the same sum, of integer partitions of n.

The programs for A323774, there is no canonical definition to state claims against.
-/

/-! ## A323774.P5014556469394083467

`A028310(∑{d}[n, A383093(#)])`
-/

namespace A323774.P5014556469394083467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A383093 d).toNat

end

end A323774.P5014556469394083467

/-!
# A323775: a(n) = Sum_{k = 1...n} k^(2^(n - k)).

The programs for A323775, there is no canonical definition to state claims against.
-/

/-! ## A323775.P11139004318549838691

`A279789(2^n)`
-/

namespace A323775.P11139004318549838691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (2 ^ n)

end

end A323775.P11139004318549838691

/-! ## A323775.P8896737994818237812

`record[A279789(A001316(n))]`
-/

namespace A323775.P8896737994818237812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323775.P8896737994818237812

/-! ## A323775.P5520703900905329367

`record[A279789(A059268(n))]`
-/

namespace A323775.P5520703900905329367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323775.P5520703900905329367

/-! ## A323775.P17269687298898998289

`record[A279789(A329605(n+1))]`
-/

namespace A323775.P17269687298898998289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (A329605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323775.P17269687298898998289

/-! ## A323775.P14983326125842829986

`A279789(A000079(n))*A280865(n)`
-/

namespace A323775.P14983326125842829986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (A000079 n).toNat * A280865 n

end

end A323775.P14983326125842829986

/-!
# A323776: a(n) = Sum_{k = 1...n} binomial(k + 2^(n - k) - 1, k - 1).

The programs for A323776, there is no canonical definition to state claims against.
-/

/-! ## A323776.P14346869917131270250

`∑[A137154(n)]`
-/

namespace A323776.P14346869917131270250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323776.P14346869917131270250

/-! ## A323776.P14270315967256825830

`A137154(n)-(A000035(2*(n+2))-a(n-1))` with `a(0)=1`
-/

namespace A323776.P14270315967256825830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137154 n - (A000035 (2 * (n + 2)) - a (n - 1))

end

end A323776.P14270315967256825830

/-! ## A323776.P10811879378862989450

`A323774(2^n)`
-/

namespace A323776.P10811879378862989450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 (2 ^ n)

end

end A323776.P10811879378862989450

/-! ## A323776.P1598807250662032818

`A323774(A000079(n))+A243835(n)`
-/

namespace A323776.P1598807250662032818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 (A000079 n).toNat + A243835 n

end

end A323776.P1598807250662032818

/-! ## A323776.P14462837537520473497

`A323774(A000079(n))+A000007(n+2)`
-/

namespace A323776.P14462837537520473497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 (A000079 n).toNat + A000007 (n + 2)

end

end A323776.P14462837537520473497

/-!
# A323782: Prime numbers such that the reverse of the balanced ternary representation is a prime or a negated prime.

The programs for A323782, there is no canonical definition to state claims against.
-/

/-! ## A323782.P2546110555116184035

`p?[comp[A323784(n+1)]]`
-/

namespace A323782.P2546110555116184035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A323782.P2546110555116184035

/-! ## A323782.P9243230933923624845

`∩[A000040(n+1), comp[A323784(n+1)]]`
-/

namespace A323782.P9243230933923624845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323784 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A323782.P9243230933923624845

/-! ## A323782.P1059014750587675622

`abs(A134028(abs(A323783(n+1))))`
-/

namespace A323782.P1059014750587675622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A134028 |A323783 (n + 1)|.toNat)|

end

end A323782.P1059014750587675622

/-! ## A323782.P16680818511662671295

`A160902(A090937(n+2))`
-/

namespace A323782.P16680818511662671295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160902 (A090937 (n + 2)).toNat

end

end A323782.P16680818511662671295

/-!
# A323783: a(n) = A134028(A323782(n)): Primes and negated primes such that the reverse of the balanced ternary representation is a prime.

The programs for A323783, there is no canonical definition to state claims against.
-/

/-! ## A323783.P5784397659047605572

`A134028(A323782(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323783.P5784397659047605572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A323782 (n + 1)).toNat

end

end A323783.P5784397659047605572

/-! ## A323783.P74214636093992848

`A160652(p?[A323782(n+1)])`
-/

namespace A323783.P74214636093992848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A323783.P74214636093992848

/-! ## A323783.P5754370120861492154

`A160652(∏{d}[A323782(n+1), #])`
-/

namespace A323783.P5754370120861492154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A323783.P5754370120861492154

/-! ## A323783.P12300860771262130881

`A160652(∑{p}[A323782(n+1), #])`
-/

namespace A323783.P12300860771262130881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A323783.P12300860771262130881

/-! ## A323783.P13252876762337199177

`A160652(∏{p}[A323782(n+1), #])`
-/

namespace A323783.P13252876762337199177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A323783.P13252876762337199177

/-! ## A323783.P16591477174576296729

`A134028(p?[comp[A323784(n+1)]])`
-/

namespace A323783.P16591477174576296729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A323783.P16591477174576296729

/-! ## A323783.P7610226170833193193

`A160652(p?[comp[A323784(n+1)]])`
-/

namespace A323783.P7610226170833193193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A323783.P7610226170833193193

/-! ## A323783.P16222025448461453021

`A160652(A323782(2*n+1-n))`
-/

namespace A323783.P16222025448461453021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A323782 (2 * n + 1 - n)).toNat

end

end A323783.P16222025448461453021

/-! ## A323783.P5718076154444836290

`A160652(or(A000038(n), A323782(n+1)))`
-/

namespace A323783.P5718076154444836290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (Int.lor (A000038 n) (A323782 (n + 1))).toNat

end

end A323783.P5718076154444836290

/-!
# A323787: Number of non-isomorphic multiset partitions of strict multiset partitions of weight n.

The programs for A323787, there is no canonical definition to state claims against.
-/

/-! ## A323787.P3308460739845806985

`A008647((4^n-2^n)/2+(2^(n+1)+3)*2^n-1)`
-/

namespace A323787.P3308460739845806985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 + (((2 ^ (n + 1) + 3) * 2 ^ n : ℤ) - 1 : ℚ))).toNat

end

end A323787.P3308460739845806985

/-!
# A323788: Number of non-isomorphic weight-n sets of multisets of multisets.

The programs for A323788, there is no canonical definition to state claims against.
-/

/-! ## A323788.P12010695161895667287

`A066508(A150433(n))`
-/

namespace A323788.P12010695161895667287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A150433 n).toNat

end

end A323788.P12010695161895667287

/-! ## A323788.P975964757177920848

`A194513(A099454(n)+4)`
-/

namespace A323788.P975964757177920848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (A099454 n + 4).toNat

end

end A323788.P975964757177920848

/-!
# A323789: Number of non-isomorphic weight-n sets of sets of multisets.

The programs for A323789, there is no canonical definition to state claims against.
-/

/-! ## A323789.P6357460330993610717

`A157271(A150747(n))`
-/

namespace A323789.P6357460330993610717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150747 n).toNat

end

end A323789.P6357460330993610717

/-! ## A323789.P1521121221600833908

`A162340(A307496(n))-1`
-/

namespace A323789.P1521121221600833908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162340 (A307496 n).toNat - 1

end

end A323789.P1521121221600833908

/-!
# A323790: Number of non-isomorphic weight-n sets of sets of sets.

The programs for A323790, there is no canonical definition to state claims against.
-/

/-! ## A323790.P1136056026160297963

`A382717(A151440(n))`
-/

namespace A323790.P1136056026160297963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A151440 n).toNat

end

end A323790.P1136056026160297963

/-! ## A323790.P55083777828933737

`A148911(n)+A001221(A303056(n))`
-/

namespace A323790.P55083777828933737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148911 n + A001221 (A303056 n).toNat

end

end A323790.P55083777828933737

/-! ## A323790.P18090242343201951480

`A148911(n)+A001222(A330677(n))`
-/

namespace A323790.P18090242343201951480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148911 n + A001222 (A330677 n).toNat

end

end A323790.P18090242343201951480

/-!
# A323791: Number of non-isomorphic weight-n sets of multisets of sets.

The programs for A323791, there is no canonical definition to state claims against.
-/

/-! ## A323791.P14017402164717410207

`A026819(A027307(n))`
-/

namespace A323791.P14017402164717410207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A027307 n).toNat

end

end A323791.P14017402164717410207

/-! ## A323791.P3873702337850419943

`A006984(A150053(n))`
-/

namespace A323791.P3873702337850419943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A150053 n).toNat

end

end A323791.P3873702337850419943

/-!
# A323792: Number of non-isomorphic weight-n multisets of sets of sets.

The programs for A323792, there is no canonical definition to state claims against.
-/

/-! ## A323792.P14122006525803586346

`A120750(A149219(n))`
-/

namespace A323792.P14122006525803586346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A149219 n).toNat

end

end A323792.P14122006525803586346

/-! ## A323792.P3752180830950906697

`A074075(A149366(n))`
-/

namespace A323792.P3752180830950906697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074075 (A149366 n).toNat

end

end A323792.P3752180830950906697

/-!
# A323793: Number of non-isomorphic weight-n multisets of multisets of sets.

The programs for A323793, there is no canonical definition to state claims against.
-/

/-! ## A323793.P7045815409713712974

`A050349(A100747(n))`
-/

namespace A323793.P7045815409713712974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (A100747 n).toNat

end

end A323793.P7045815409713712974

/-! ## A323793.P7174092203601869943

`A302176(A240868(n²))`
-/

namespace A323793.P7174092203601869943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302176 (A240868 (n ^ 2)).toNat

end

end A323793.P7174092203601869943

/-!
# A323794: Number of non-isomorphic weight-n multisets of sets of multisets.

The programs for A323794, there is no canonical definition to state claims against.
-/

/-! ## A323794.P16163266965840294252

`A050296(A151301(n))`
-/

namespace A323794.P16163266965840294252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A151301 n).toNat

end

end A323794.P16163266965840294252

/-! ## A323794.P16904131700240317756

`A243841(3*n+1)+∏{p}[A149743(n)², #]`
-/

namespace A323794.P16904131700240317756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149743 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243841 (3 * n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A323794.P16904131700240317756

/-!
# A323795: Number of non-isomorphic weight-n sets of non-overlapping sets of sets.

The programs for A323795, there is no canonical definition to state claims against.
-/

/-! ## A323795.P14649121892346689397

`and(A148840(n), A365113(n))`
-/

namespace A323795.P14649121892346689397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148840 n) (A365113 n)

end

end A323795.P14649121892346689397

/-! ## A323795.P4545555602070854946

`A124292(n+1)+A106452(A000065(n))`
-/

namespace A323795.P4545555602070854946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) + A106452 (A000065 n).toNat

end

end A323795.P4545555602070854946

/-!
# A323797: a(n)..a(n+1)-1 are the indices in A323796 pointing to A006960(n) in the Reverse and Add! graph with 196 seed.

The programs for A323797, there is no canonical definition to state claims against.
-/

/-! ## A323797.P784051433894472958

`A199340(A264598(3*n+5))%A038474(n+1)`
-/

namespace A323797.P784051433894472958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199340 (A264598 (3 * n + 5)).toNat) (A038474 (n + 1))

end

end A323797.P784051433894472958

/-!
# A323798: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 2.

The programs for A323798, the canonical program `A323798.P1669454172771369333` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323798 has offset 2).

The definition of A323798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323798.P1669454172771369333

`A002524(n+2)-A020695(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A323798

/-- `A002524(n+2)-A020695(n)` -/
def P1669454172771369333.Spec : Prop :=
  ∀ n, P1669454172771369333.a n = A323798 (n + 2)

theorem P1669454172771369333.correct : P1669454172771369333.Spec := by
  intro n
  simp only [A323798, Nat.add_sub_cancel]

end A323798

/-! ## A323798.P4571857950086974105

`A002524(n+2)+1-A048577(n)`
-/

namespace A323798.P4571857950086974105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 2) + (1 - A048577 n)

end

end A323798.P4571857950086974105

namespace A323798

/-- `A002524(n+2)+1-A048577(n)` -/
def P4571857950086974105.Spec : Prop :=
  ∀ n, P4571857950086974105.a n = A323798 (n + 2)

end A323798

/-! ## A323798.P11878143968378422417

`A002524(n+2)-A000045(n+3)`
-/

namespace A323798.P11878143968378422417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 2) - A000045 (n + 3)

end

end A323798.P11878143968378422417

namespace A323798

/-- `A002524(n+2)-A000045(n+3)` -/
def P11878143968378422417.Spec : Prop :=
  ∀ n, P11878143968378422417.a n = A323798 (n + 2)

end A323798

/-! ## A323798.P17052130279372167837

`A002524(n+2)-Δ[A000071(n+4)]`
-/

namespace A323798.P17052130279372167837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 2) - (f1 (n + 1) - f1 n)

end

end A323798.P17052130279372167837

namespace A323798

/-- `A002524(n+2)-Δ[A000071(n+4)]` -/
def P17052130279372167837.Spec : Prop :=
  ∀ n, P17052130279372167837.a n = A323798 (n + 2)

end A323798

/-! ## A323798.P2657290929232218097

`A002524(n+2)-A163227(A267873(n+2))`
-/

namespace A323798.P2657290929232218097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 2) - A163227 (A267873 (n + 2)).toNat

end

end A323798.P2657290929232218097

namespace A323798

/-- `A002524(n+2)-A163227(A267873(n+2))` -/
def P2657290929232218097.Spec : Prop :=
  ∀ n, P2657290929232218097.a n = A323798 (n + 2)

end A323798

/-!
# A323799: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 3.

The programs for A323799, there is no canonical definition to state claims against.
-/

/-! ## A323799.P9825825779617932644

`A002526(n+3)-A002524(n+3)`
-/

namespace A323799.P9825825779617932644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 (n + 3) - A002524 (n + 3)

end

end A323799.P9825825779617932644

/-! ## A323799.P9183100117425845476

`A002526(n+3)-Δ[A002525(n+3)]`
-/

namespace A323799.P9183100117425845476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 (n + 3) - (f1 (n + 1) - f1 n)

end

end A323799.P9183100117425845476

